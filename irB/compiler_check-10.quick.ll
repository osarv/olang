source_filename = "compiler_check-10.quick.ll"
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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:errBind" = type { i32, i64, i32, %"compiler/source:Span" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:factsCopy" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:ContractAsk" = type { i64, i64, %"compiler/source:Span", i64, %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/check:collWalk" = type { ptr, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/check:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:roOrigin" = type { ptr, i1 }
define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCaseType(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i32
  %l16 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l24 = alloca { i64, ptr }
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i64
  %l33 = alloca i32
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i1
  %l62 = alloca i1
  %l67 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l81 = alloca i1
  %l83 = alloca ptr
  %l85 = alloca %"compiler/source:Span"
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i32, ptr %l11, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l16
  br label %bb2
bb2:
  %t17 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t19 = trunc i64 29 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t26, i32 %t27)
  store { i64, ptr } %t30, ptr %l24
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t31 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t39 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseNotAny(ptr %s1, ptr %s1, { i64, ptr } %t37)
  store %"compiler/diagmsg:Msg" %t39, ptr %l26
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l21
  %t42 = load %"compiler/diagmsg:Msg", ptr %l26
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t40, %"compiler/source:Span" %t41, %"compiler/diagmsg:Msg" %t42)
  store i64 %t43, ptr %l27
  br label %bb7
bb7:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t44, ptr %rv
  br label %ret
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l4, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l33
  br label %bb9
bb9:
  %t56 = load i32, ptr %l33, !tbaa !23
  store i32 %t56, ptr %l5, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i32, ptr %l5, !tbaa !23
  %t64 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t64, ptr %l37
  br label %bb10
bb10:
  %t65 = load i1, ptr %l37, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l39, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t69, ptr %l40
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l2, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t70, i32 %t71)
  store { i64, ptr } %t74, ptr %l43
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t75 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l44, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l5, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t82, i32 %t83)
  store { i64, ptr } %t86, ptr %l47
  br label %bb14
bb14:
  %t87 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t96 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOpenInspected(ptr %s2, ptr %s2, ptr %s2, { i64, ptr } %t94, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t96, ptr %l49
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l39, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l40
  %t99 = load %"compiler/diagmsg:Msg", ptr %l49
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t97, %"compiler/source:Span" %t98, %"compiler/diagmsg:Msg" %t99)
  store i64 %t100, ptr %l50
  br label %bb16
bb16:
  %t101 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t101, ptr %rv
  br label %ret
bb17:
  %t103 = load ptr, ptr %l3, !tbaa !29
  store ptr %t103, ptr %l6, !tbaa !29
  %t105 = load ptr, ptr %l3, !tbaa !29
  store ptr %t105, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t106 = load ptr, ptr %l53, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb18, label %bb19
bb18:
  %t109 = load ptr, ptr %l53, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 8}
  %t112 = icmp eq i64 %t110, 3
  store i1 %t112, ptr %l54, !tbaa !21
  br label %bb19
bb19:
  %t113 = load i1, ptr %l54, !tbaa !21
  br i1 %t113, label %bb20, label %bb21
bb20:
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t116 = getelementptr { i64, [5 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t116, i32 0, i32 1
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t120 = load ptr, ptr %l7, !tbaa !29
  store ptr %t120, ptr %l6, !tbaa !29
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
  call void @__olang_check_failed(ptr @olang_loc_50e8912350a6e3a7_8e15953db4ede8db)
  unreachable
bb28:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t126 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %t122, ptr %t123, i1 true)
  store i1 %t126, ptr %l62
  br label %bb29
bb29:
  %t127 = load i1, ptr %l62, !tbaa !21
  %t128 = xor i1 %t127, true
  br i1 %t128, label %bb30, label %bb31
bb30:
  %t130 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t130, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l67, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l6, !tbaa !29
  %t143 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t138, ptr %t139)
  store i32 %t143, ptr %l71
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l67, !tbaa !29
  %t145 = load i32, ptr %l71, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t146, ptr %l72
  br label %bb34
bb34:
  %t147 = load i32, ptr %l72, !tbaa !23
  store i32 %t147, ptr %l8, !tbaa !23
  %t148 = load i32, ptr %l8, !tbaa !23
  %t149 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t152 = icmp eq i32 %t148, %t149
  br i1 %t152, label %bb35, label %bb36
bb35:
  %t154 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t154, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i32, ptr %l8, !tbaa !23
  %t161 = load i32, ptr %l5, !tbaa !23
  %t165 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %t159, i32 %t160, i32 %t161)
  store i1 %t165, ptr %l81
  br label %bb38
bb38:
  %t166 = load i1, ptr %l81, !tbaa !21
  %t167 = xor i1 %t166, true
  br i1 %t167, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s7
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l83, !tbaa !29
  %t170 = load ptr, ptr %l3, !tbaa !29
  %t172 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t170)
  store %"compiler/source:Span" %t172, ptr %l85
  br label %bb41
bb40:
  br label %bb46
bb41:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i32, ptr %l8, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t173, i32 %t174)
  store { i64, ptr } %t177, ptr %l88
  br label %bb42
bb42:
  %t178 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  %t180 = extractvalue { i64, ptr } %t178, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  store { i64, ptr } %t184, ptr %l89, !tbaa !27
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l5, !tbaa !23
  %t189 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t185, i32 %t186)
  store { i64, ptr } %t189, ptr %l92
  br label %bb43
bb43:
  %t190 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  %t192 = extractvalue { i64, ptr } %t190, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t197 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t199 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMemberCase(ptr %s7, ptr %s7, ptr %s7, { i64, ptr } %t197, { i64, ptr } %t196)
  store %"compiler/diagmsg:Msg" %t199, ptr %l94
  br label %bb44
bb44:
  %t200 = load ptr, ptr %l83, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l85
  %t202 = load %"compiler/diagmsg:Msg", ptr %l94
  %t203 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t200, %"compiler/source:Span" %t201, %"compiler/diagmsg:Msg" %t202)
  store i64 %t203, ptr %l95
  br label %bb45
bb45:
  %t204 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s7)
  store i32 %t204, ptr %rv
  br label %ret
bb46:
  %t206 = load i32, ptr %l8, !tbaa !23
  store i32 %t206, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l3, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_5f37bbd32b93a1e_9b7778ec6ef06ea)
  unreachable
bb11:
  %t20 = load i64, ptr %l3, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l8 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca %"compiler/typed:Block"
  %l29 = alloca %"compiler/source:Span"
  %l33 = alloca ptr
  %l35 = alloca %"compiler/typed:If"
  %rv = alloca ptr
  %t15 = alloca { i64, [3 x i64] }, align 8
  %t66 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 37
  %t10 = load %"compiler/source:Span", ptr %l1
  %t13 = trunc i64 %a3 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 0
  store i64 5, ptr %t16
  %t18 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t10, 0
  %t20 = insertvalue { %"compiler/source:Span", i32, i32 } %t18, i32 0, 1
  %t22 = insertvalue { %"compiler/source:Span", i32, i32 } %t20, i32 %t13, 2
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t22, ptr %t23
  %t24 = load { i64, [3 x i64] }, ptr %t15
  %t26 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t24, ptr %t26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t9, ptr %t26)
  br label %bb2
bb2:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l19
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 7
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = trunc i64 %t35 to i32
  store i32 %t37, ptr %l23, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 37
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t41, i64 %t42)
  store { i64, ptr } %t45, ptr %l27
  br label %bb4
bb4:
  %t46 = load i32, ptr %l23, !tbaa !23
  %t47 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t48 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t46, { i64, ptr } %t47)
  store %"compiler/typed:Block" %t48, ptr %l28
  br label %bb5
bb5:
  %t49 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t49, ptr %lp5
  %t50 = load %"compiler/typed:Block", ptr %l28
  %t51 = load ptr, ptr %lp5
  store %"compiler/typed:Block" %t50, ptr %t51
  %t52 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t52, ptr %l29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l1
  %t59 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v0, ptr %t53, %"compiler/source:Span" %t54, ptr %a2)
  store ptr %t59, ptr %l33
  br label %bb6
bb6:
  %t60 = load ptr, ptr %lp5
  %t61 = load ptr, ptr %l33, !tbaa !29
  %t63 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t61, ptr %t60, ptr null)
  store %"compiler/typed:If" %t63, ptr %l35
  br label %bb7
bb7:
  %t64 = load %"compiler/typed:If", ptr %l35
  %t65 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:If" %t64, ptr %t65
  store { i64, [3 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t66, i32 0, i32 0
  store i64 3, ptr %t67
  %t68 = load %"compiler/source:Span", ptr %l29
  %t69 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t68, 0
  %t71 = insertvalue { %"compiler/source:Span", ptr } %t69, ptr %t65, 1
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t66, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t71, ptr %t72
  %t73 = load { i64, [3 x i64] }, ptr %t66
  %t75 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t73, ptr %t75
  store ptr %t75, ptr %rv
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
  %t122 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderPrivate(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t120, { i64, ptr } %t119)
  store %"compiler/diagmsg:Msg" %t122, ptr %l58
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l47, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l48
  %t125 = load %"compiler/diagmsg:Msg", ptr %l58
  %t126 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t123, %"compiler/source:Span" %t124, %"compiler/diagmsg:Msg" %t125)
  store i64 %t126, ptr %l59
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca %"compiler/source:Span"
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca ptr
  %l29 = alloca i1
  %l36 = alloca %"compiler/source:Span"
  %l38 = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb19
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 14
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l3
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t33, i32 0, i32 2
  %t35 = load i32, ptr %t34
  store i32 %t35, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb13
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t37, ptr %l20
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l4, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t38, i32 %t39)
  store { i64, ptr } %t42, ptr %l23
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 0
  %t45 = load %"compiler/source:Span", ptr %l20
  %t47 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t45, i64 %t44)
  store %"compiler/source:Span" %t47, ptr %l25
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  %t48 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t48, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t49)
  store %"compiler/source:Span" %t51, ptr %l27
  br label %bb17
bb17:
  %t52 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t52, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fb617c2d829b7111_714329061eadcd35)
  unreachable
bb19:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t54 = load ptr, ptr %l28, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 30}
  %t60 = icmp eq i64 %t58, 2
  store i1 %t60, ptr %l29, !tbaa !21
  br label %bb21
bb21:
  %t61 = load i1, ptr %l29, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t72 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  store %"compiler/source:Span" %t72, ptr %l36
  br label %bb25
bb25:
  %t73 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t73, ptr %rv
  br label %ret
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t74)
  store %"compiler/source:Span" %t76, ptr %l38
  br label %bb30
bb30:
  %t77 = load %"compiler/source:Span", ptr %l38
  store %"compiler/source:Span" %t77, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_796a210bea009080_30d8ca3bde523e44)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i1 %a3, { i64, ptr } %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca { i64, i64, i64 }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i1
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca %"compiler/check:errBind"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i1
  %l51 = alloca i1
  %l62 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l66 = alloca i64
  %l77 = alloca i1
  %l80 = alloca ptr
  %l83 = alloca i64
  %l86 = alloca i64
  %l90 = alloca i1
  %l93 = alloca i32
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l102 = alloca %"compiler/source:Span"
  %l104 = alloca { i64, ptr }
  %l114 = alloca i32
  %l115 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca %"compiler/source:Span"
  %l119 = alloca ptr
  %l124 = alloca { i64, ptr }
  %l125 = alloca i32
  %l128 = alloca i64
  %l130 = alloca ptr
  %l135 = alloca %"compiler/check:errBind"
  %l140 = alloca i1
  %l143 = alloca ptr
  %l145 = alloca ptr
  %l149 = alloca %"compiler/typed:Local"
  %l151 = alloca i1
  %l154 = alloca i1
  %l158 = alloca { i64, ptr }
  %l167 = alloca i1
  %l172 = alloca i1
  %l175 = alloca { i64, ptr }
  %l179 = alloca ptr
  %l180 = alloca i1
  %l186 = alloca i1
  %l188 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l191 = alloca ptr
  %l193 = alloca %"compiler/source:Span"
  %l194 = alloca { i64, ptr }
  %l195 = alloca %"compiler/diagmsg:Msg"
  %l196 = alloca i64
  %l197 = alloca { i64, ptr }
  %l199 = alloca i64
  %l200 = alloca i64
  %l207 = alloca i64
  %l212 = alloca { i64, i64, i64 }
  %l228 = alloca ptr
  %l232 = alloca i64
  %l234 = alloca i1
  %l239 = alloca i1
  %l244 = alloca i32
  %l247 = alloca i1
  %l250 = alloca i64
  %l253 = alloca ptr
  %l258 = alloca i32
  %l259 = alloca { i64, ptr }
  %l266 = alloca i1
  %l269 = alloca i1
  %l271 = alloca i1
  %l282 = alloca i64
  %l285 = alloca i64
  %l308 = alloca i32
  %l311 = alloca i1
  %l318 = alloca ptr
  %l323 = alloca i32
  %l324 = alloca { i64, ptr }
  %l329 = alloca { i64, ptr }
  %l333 = alloca ptr
  %l336 = alloca { i64, ptr }
  %l340 = alloca ptr
  %l346 = alloca { i64, ptr }
  %l352 = alloca %"compiler/check:errBind"
  %l356 = alloca i1
  %l358 = alloca ptr
  %l359 = alloca %"compiler/source:Span"
  %l362 = alloca %"compiler/diagmsg:Msg"
  %l365 = alloca { i64, ptr }
  %l367 = alloca %"compiler/diagmsg:Msg"
  %l370 = alloca { i64, ptr }
  %l371 = alloca { i64, ptr }
  %l373 = alloca ptr
  %l375 = alloca ptr
  %l377 = alloca i64
  %l380 = alloca { i64, ptr }
  %l381 = alloca { i64, ptr }
  %l383 = alloca %"compiler/diagmsg:Msg"
  %l384 = alloca i64
  %l394 = alloca %"compiler/source:Span"
  %l395 = alloca i64
  %l398 = alloca { i64, ptr }
  %l404 = alloca %"compiler/typed:Clause"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  %t179 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l43
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l6
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloneBinding(ptr %v0, ptr %v1, ptr %t3, ptr %t4)
  store i1 %t7, ptr %l46
  br label %bb2
bb2:
  %t8 = load i1, ptr %l46, !tbaa !21
  store i1 %t8, ptr %l7, !tbaa !21
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Catch", ptr %t9, i32 0, i32 1
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load i1, ptr %l7, !tbaa !21
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l51, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l51, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Catch", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l10, !tbaa !24
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t32 = load i64, ptr %l9, !tbaa !24
  %t33 = load i64, ptr %l10, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb9, label %bb10
bb9:
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t40 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t40, ptr %l62, !tbaa !27
  %t41 = load i64, ptr %l9, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 %t41
  %t46 = load ptr, ptr %t45, !tbaa !39
  store ptr %t46, ptr %l11, !tbaa !29
  %t48 = load ptr, ptr %l11, !tbaa !29
  store ptr %t48, ptr %l65, !tbaa !29
  %t49 = ptrtoint ptr %v1 to i64
  store i64 %t49, ptr %l66, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l65, !tbaa !29
  %t53 = call ptr @__olang_region_or(ptr %t52, ptr %v1)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l66, !tbaa !24
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l11, !tbaa !29
  %t57 = load i64, ptr %l66
  %t58 = inttoptr i64 %t57 to ptr
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchItem(ptr %v0, ptr %t58, ptr %s0, ptr %t55, ptr %t56, ptr %l6)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l9, !tbaa !24
  br label %bb8
bb16:
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Catch", ptr %t66, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t73 = icmp eq i64 %t71, 0
  br i1 %t73, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb20
bb19:
  %t75 = load i1, ptr %l7, !tbaa !21
  store i1 %t75, ptr %l77, !tbaa !21
  br label %bb20
bb20:
  %t77 = load i1, ptr %l77, !tbaa !21
  store i1 %t77, ptr %l12, !tbaa !21
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t78)
  store ptr %t80, ptr %l80
  br label %bb21
bb21:
  %t81 = load ptr, ptr %l80, !tbaa !29
  store ptr %t81, ptr %l13, !tbaa !29
  store i64 -1, ptr %l14, !tbaa !24
  store i32 0, ptr %l15, !tbaa !23
  %t82 = load ptr, ptr %l13, !tbaa !29
  %t84 = getelementptr %"compiler/check:frame", ptr %t82, i32 0, i32 57
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t84)
  store i64 %t86, ptr %l83
  br label %bb22
bb22:
  %t87 = load i64, ptr %l83, !tbaa !24
  store i64 %t87, ptr %l16, !tbaa !24
  %t88 = load ptr, ptr %l13, !tbaa !29
  %t90 = getelementptr %"compiler/check:frame", ptr %t88, i32 0, i32 9
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t90)
  store i64 %t92, ptr %l86
  br label %bb23
bb23:
  %t93 = load i64, ptr %l86, !tbaa !24
  store i64 %t93, ptr %l17, !tbaa !24
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/ast:Catch", ptr %t94, i32 0, i32 5
  %t97 = load i32, ptr %t96, !tbaa !23
  %t99 = icmp ne i32 %t97, 0
  br i1 %t99, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb26
bb25:
  %t101 = load i1, ptr %l7, !tbaa !21
  store i1 %t101, ptr %l90, !tbaa !21
  br label %bb26
bb26:
  %t103 = load i1, ptr %l90, !tbaa !21
  br i1 %t103, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t104 = load i1, ptr %l7, !tbaa !21
  br i1 %t104, label %bb29, label %bb30
bb28:
  br label %bb42
bb29:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Catch", ptr %t106, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l95, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr ptr, ptr %t111, i64 0
  %t113 = load ptr, ptr %t112, !tbaa !39
  %t115 = getelementptr %"compiler/ast:Path", ptr %t113, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l97, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr i32, ptr %t118, i64 0
  %t120 = load i32, ptr %t119, !tbaa !33
  store i32 %t120, ptr %l93, !tbaa !23
  br label %bb31
bb30:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/ast:Catch", ptr %t122, i32 0, i32 5
  %t125 = load i32, ptr %t124, !tbaa !23
  store i32 %t125, ptr %l93, !tbaa !23
  br label %bb31
bb31:
  %t127 = load i32, ptr %l93, !tbaa !23
  store i32 %t127, ptr %l18, !tbaa !23
  %t128 = load i1, ptr %l7, !tbaa !21
  br i1 %t128, label %bb32, label %bb33
bb32:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/ast:Catch", ptr %t130, i32 0, i32 1
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l104, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr ptr, ptr %t135, i64 0
  %t137 = load ptr, ptr %t136, !tbaa !39
  %t139 = getelementptr %"compiler/ast:Path", ptr %t137, i32 0, i32 0
  %t140 = load %"compiler/source:Span", ptr %t139
  store %"compiler/source:Span" %t140, ptr %l102
  br label %bb34
bb33:
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr %"compiler/ast:Catch", ptr %t142, i32 0, i32 6
  %t145 = load %"compiler/source:Span", ptr %t144
  store %"compiler/source:Span" %t145, ptr %l102
  br label %bb34
bb34:
  %t147 = load %"compiler/source:Span", ptr %l102
  store %"compiler/source:Span" %t147, ptr %l19
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i1, ptr %l12, !tbaa !21
  %t157 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etakenSet(ptr %v0, ptr %v2, ptr %s0, ptr %v3, ptr %t148, { i64, ptr } %a4, ptr %l6, i1 %t150, ptr %a5)
  store i32 %t157, ptr %l114
  br label %bb35
bb35:
  %t158 = load i32, ptr %l114, !tbaa !23
  store i32 %t158, ptr %l15, !tbaa !23
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l115, !tbaa !29
  %t160 = load i32, ptr %l18, !tbaa !23
  store i32 %t160, ptr %l116, !tbaa !23
  %t161 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t161, ptr %l117
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  store ptr %t165, ptr %l119, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l15, !tbaa !23
  %t175 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t171, i32 %t172)
  store { i64, ptr } %t175, ptr %l124
  br label %bb36
bb36:
  %t176 = load ptr, ptr %l119, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t178 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v0, ptr %t176, { i64, ptr } %t177)
  store i32 %t178, ptr %l125
  br label %bb37
bb37:
  store { i64, [1 x i64] } zeroinitializer, ptr %t179
  %t180 = getelementptr { i64, [1 x i64] }, ptr %t179, i32 0, i32 0
  store i64 0, ptr %t180
  %t181 = load { i64, [1 x i64] }, ptr %t179
  %t182 = load ptr, ptr %l115, !tbaa !29
  %t183 = load i32, ptr %l116, !tbaa !23
  %t184 = load %"compiler/source:Span", ptr %l117
  %t185 = load i32, ptr %l125, !tbaa !23
  %t188 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t182, i32 %t183, %"compiler/source:Span" %t184, i32 %t185, i32 1, { i64, [1 x i64] } %t181)
  store i64 %t188, ptr %l128
  br label %bb38
bb38:
  %t189 = load i64, ptr %l128, !tbaa !24
  store i64 %t189, ptr %l14, !tbaa !24
  %t190 = load ptr, ptr %l13, !tbaa !29
  %t192 = getelementptr %"compiler/check:frame", ptr %t190, i32 0, i32 57
  store ptr %t192, ptr %l130, !tbaa !29
  %t193 = load i32, ptr %l18, !tbaa !23
  %t194 = load i64, ptr %l14, !tbaa !24
  %t195 = load i32, ptr %l15, !tbaa !23
  %t196 = load %"compiler/source:Span", ptr %l19
  %t201 = call %"compiler/check:errBind" @compiler_2fcheck_3aerrBind_2ector(ptr %s5, i32 %t193, i64 %t194, i32 %t195, %"compiler/source:Span" %t196)
  store %"compiler/check:errBind" %t201, ptr %l135
  br label %bb39
bb39:
  %t202 = load ptr, ptr %l130, !tbaa !29
  %t203 = load %"compiler/check:errBind", ptr %l135
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2ePush_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t202, %"compiler/check:errBind" %t203)
  br label %bb40
bb40:
  %t204 = load ptr, ptr %l13, !tbaa !29
  %t206 = getelementptr %"compiler/check:frame", ptr %t204, i32 0, i32 58
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t206, i1 false)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s5)
  br label %bb42
bb42:
  store ptr null, ptr %l20, !tbaa !29
  %t208 = load i64, ptr %l14, !tbaa !24
  %t210 = icmp sge i64 %t208, 0
  br i1 %t210, label %bb43, label %bb44
bb43:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/check:Checker", ptr %t212, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  store ptr %t217, ptr %l143, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t218)
  store ptr %t220, ptr %l145
  br label %bb45
bb44:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb48
bb45:
  %t221 = load ptr, ptr %l145, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Body", ptr %t221, i32 0, i32 7
  %t224 = load i64, ptr %l14, !tbaa !24
  %t227 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t223, i64 %t224)
  store %"compiler/typed:Local" %t227, ptr %l149
  br label %bb46
bb46:
  %t228 = getelementptr %"compiler/typed:Local", ptr %l149, i32 0, i32 2
  %t229 = load i32, ptr %t228, !tbaa !23
  %t230 = load ptr, ptr %l143, !tbaa !29
  %t232 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t230, i32 %t229)
  store i1 %t232, ptr %l151
  br label %bb47
bb47:
  %t233 = load i1, ptr %l151, !tbaa !21
  store i1 %t233, ptr %l140, !tbaa !21
  br label %bb48
bb48:
  %t234 = load i1, ptr %l140, !tbaa !21
  store i1 %t234, ptr %l21, !tbaa !21
  %t235 = load ptr, ptr %l1, !tbaa !29
  %t237 = getelementptr %"compiler/ast:Catch", ptr %t235, i32 0, i32 4
  %t238 = load i1, ptr %t237, !tbaa !21
  br i1 %t238, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb51
bb50:
  %t240 = load i1, ptr %l21, !tbaa !21
  store i1 %t240, ptr %l154, !tbaa !21
  br label %bb51
bb51:
  %t242 = load i1, ptr %l154, !tbaa !21
  br i1 %t242, label %bb52, label %bb53
bb52:
  %t243 = load ptr, ptr %l1, !tbaa !29
  %t245 = getelementptr %"compiler/ast:Catch", ptr %t243, i32 0, i32 4
  %t246 = load i1, ptr %t245, !tbaa !21
  br i1 %t246, label %bb54, label %bb55
bb53:
  br label %bb103
bb54:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = getelementptr %"compiler/ast:Catch", ptr %t248, i32 0, i32 2
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  store { i64, ptr } %t251, ptr %l158, !tbaa !27
  br label %bb60
bb55:
  %t253 = icmp sge i64 0, 0
  br i1 %t253, label %bb56, label %bb57
bb56:
  %t255 = icmp sle i64 0, 1152921504606846975
  br i1 %t255, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_e0002d39d824213_e3bfdf913f3455ef)
  unreachable
bb58:
  %t257 = mul i64 0, 8
  %t258 = insertvalue { i64, ptr } undef, i64 0, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t259, ptr %l158, !tbaa !27
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_e0002d39d824213_e3bfdf913f3455ef)
  unreachable
bb60:
  %t261 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t261, ptr %l22, !tbaa !27
  %t262 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 0
  store i64 %t264, ptr %l23, !tbaa !24
  %t266 = load i1, ptr %l3, !tbaa !21
  br i1 %t266, label %bb61, label %bb62
bb61:
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t270 = getelementptr %"compiler/ast:Catch", ptr %t268, i32 0, i32 3
  %t271 = load { i64, ptr }, ptr %t270, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t275 = icmp eq i64 %t273, 0
  store i1 %t275, ptr %l167, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb63
bb63:
  %t277 = load i1, ptr %l167, !tbaa !21
  br i1 %t277, label %bb64, label %bb65
bb64:
  %t278 = load i64, ptr %l23, !tbaa !24
  %t280 = icmp sgt i64 %t278, 0
  store i1 %t280, ptr %l172, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l172, !tbaa !21
  br label %bb66
bb66:
  %t282 = load i1, ptr %l172, !tbaa !21
  br i1 %t282, label %bb67, label %bb68
bb67:
  %t283 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t283, ptr %l175, !tbaa !27
  %t284 = load i64, ptr %l23, !tbaa !24
  %t286 = sub i64 %t284, 1
  %t288 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr ptr, ptr %t289, i64 %t286
  %t291 = load ptr, ptr %t290, !tbaa !39
  store ptr %t291, ptr %l24, !tbaa !29
  %t293 = load ptr, ptr %l24, !tbaa !29
  store ptr %t293, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t294 = load ptr, ptr %l179, !tbaa !29
  %t295 = icmp ne ptr %t294, null
  br i1 %t295, label %bb69, label %bb70
bb68:
  br label %bb94
bb69:
  %t297 = load ptr, ptr %l179, !tbaa !29
  %t298 = load i64, ptr %t297, !range !{i64 0, i64 22}
  %t300 = icmp eq i64 %t298, 0
  store i1 %t300, ptr %l180, !tbaa !21
  br label %bb70
bb70:
  %t301 = load i1, ptr %l180, !tbaa !21
  br i1 %t301, label %bb71, label %bb72
bb71:
  %t302 = load ptr, ptr %l24, !tbaa !29
  %t304 = getelementptr { i64, [4 x i64] }, ptr %t302, i32 0, i32 1
  %t305 = getelementptr { %"compiler/source:Span", ptr }, ptr %t304, i32 0, i32 1
  %t306 = load ptr, ptr %t305
  store ptr %t306, ptr %l25, !tbaa !29
  br label %bb73
bb72:
  br label %bb88
bb73:
  %t308 = load ptr, ptr %l25, !tbaa !29
  %t310 = call i1 @compiler_2fcheck_2estmtLike(ptr %v1, ptr %t308)
  store i1 %t310, ptr %l186
  br label %bb74
bb74:
  %t311 = load i1, ptr %l186, !tbaa !21
  %t312 = xor i1 %t311, true
  br i1 %t312, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s8
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l188, !tbaa !29
  %t315 = load ptr, ptr %l25, !tbaa !29
  %t317 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t315)
  store %"compiler/source:Span" %t317, ptr %l190
  br label %bb77
bb76:
  br label %bb88
bb77:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l191, !tbaa !29
  %t319 = load ptr, ptr %l25, !tbaa !29
  %t321 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t319)
  store %"compiler/source:Span" %t321, ptr %l193
  br label %bb78
bb78:
  %t322 = load ptr, ptr %l191, !tbaa !29
  %t323 = load %"compiler/source:Span", ptr %l193
  %t324 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t322, %"compiler/source:Span" %t323)
  store { i64, ptr } %t324, ptr %l194
  br label %bb79
bb79:
  %t325 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t326 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClauseLastValue(ptr %v0, ptr %s8, { i64, ptr } %t325)
  store %"compiler/diagmsg:Msg" %t326, ptr %l195
  br label %bb80
bb80:
  %t327 = load ptr, ptr %l188, !tbaa !29
  %t328 = load %"compiler/source:Span", ptr %l190
  %t329 = load %"compiler/diagmsg:Msg", ptr %l195
  %t330 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t327, %"compiler/source:Span" %t328, %"compiler/diagmsg:Msg" %t329)
  store i64 %t330, ptr %l196
  br label %bb81
bb81:
  %t331 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t331, ptr %l197, !tbaa !27
  %t332 = load i64, ptr %l23, !tbaa !24
  %t334 = sub i64 %t332, 1
  store i64 %t334, ptr %l199, !tbaa !24
  %t335 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 0
  store i64 %t336, ptr %l200, !tbaa !24
  %t337 = icmp sge i64 0, 0
  br i1 %t337, label %bb82, label %bb83
bb82:
  %t339 = load i64, ptr %l199, !tbaa !24
  %t340 = icmp sle i64 0, %t339
  br i1 %t340, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_f25f445d5459b9fe_e155a29b0e6cdb52)
  unreachable
bb84:
  %t342 = load i64, ptr %l199, !tbaa !24
  %t343 = load i64, ptr %l200, !tbaa !24
  %t344 = icmp sle i64 %t342, %t343
  br i1 %t344, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_f25f445d5459b9fe_e155a29b0e6cdb52)
  unreachable
bb86:
  %t346 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = load i64, ptr %l199, !tbaa !24
  %t349 = getelementptr ptr, ptr %t347, i64 0
  %t350 = sub i64 %t348, 0
  %t351 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t349, 1
  store { i64, ptr } %t352, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s8)
  br label %bb93
bb87:
  call void @__olang_check_failed(ptr @olang_loc_f25f445d5459b9fe_e155a29b0e6cdb52)
  unreachable
bb88:
  br i1 true, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_7a5b0973d8f0076e_d42fa20e68e1cea2)
  unreachable
bb93:
  br label %bb94
bb94:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = getelementptr %"compiler/check:Checker", ptr %t354, i32 0, i32 37
  %t358 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t356)
  store i64 %t358, ptr %l207
  br label %bb95
bb95:
  %t359 = load i64, ptr %l207, !tbaa !24
  store i64 %t359, ptr %l26, !tbaa !24
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = getelementptr %"compiler/ast:Catch", ptr %t361, i32 0, i32 0
  %t364 = load %"compiler/source:Span", ptr %t363
  %t368 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t360, i32 4, %"compiler/source:Span" %t364)
  store { i64, i64, i64 } %t368, ptr %l212
  br label %bb96
bb96:
  %t369 = load { i64, i64, i64 }, ptr %l212
  store { i64, i64, i64 } %t369, ptr %l27
  %t370 = getelementptr { i64, i64, i64 }, ptr %l27, i32 0, i32 0
  %t371 = load i64, ptr %t370, !tbaa !24
  store i64 %t371, ptr %l28, !tbaa !24
  %t373 = getelementptr { i64, i64, i64 }, ptr %l27, i32 0, i32 1
  %t374 = load i64, ptr %t373, !tbaa !24
  store i64 %t374, ptr %l29, !tbaa !24
  %t376 = getelementptr { i64, i64, i64 }, ptr %l27, i32 0, i32 2
  %t377 = load i64, ptr %t376, !tbaa !24
  store i64 %t377, ptr %l30, !tbaa !24
  %t379 = load i1, ptr %l21, !tbaa !21
  br i1 %t379, label %bb97, label %bb98
bb97:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load ptr, ptr %l1, !tbaa !29
  %t384 = getelementptr %"compiler/ast:Catch", ptr %t382, i32 0, i32 0
  %t385 = load %"compiler/source:Span", ptr %t384
  %t386 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtPayload(ptr %v0, ptr %t381, %"compiler/source:Span" %t385, i64 %t386)
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb100
bb100:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t390, { i64, ptr } %t391)
  br label %bb101
bb101:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load i64, ptr %l28, !tbaa !24
  %t396 = load i64, ptr %l29, !tbaa !24
  %t397 = load i64, ptr %l30, !tbaa !24
  %t398 = load i64, ptr %l26, !tbaa !24
  %t404 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v4, ptr %t394, i64 %t395, i64 %t396, i64 %t397, i64 %t398)
  store ptr %t404, ptr %l228
  br label %bb102
bb102:
  %t405 = load ptr, ptr %l228, !tbaa !29
  store ptr %t405, ptr %l20, !tbaa !29
  br label %bb103
bb103:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/check:Checker", ptr %t407, i32 0, i32 36
  %t411 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t409)
  store i64 %t411, ptr %l232
  br label %bb104
bb104:
  %t412 = load i64, ptr %l232, !tbaa !24
  store i64 %t412, ptr %l31, !tbaa !24
  %t413 = load i1, ptr %l3, !tbaa !21
  br i1 %t413, label %bb105, label %bb106
bb105:
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr %"compiler/ast:Catch", ptr %t415, i32 0, i32 3
  %t418 = load { i64, ptr }, ptr %t417, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t422 = icmp sgt i64 %t420, 0
  store i1 %t422, ptr %l234, !tbaa !21
  br label %bb107
bb106:
  store i1 false, ptr %l234, !tbaa !21
  br label %bb107
bb107:
  %t424 = load i1, ptr %l234, !tbaa !21
  br i1 %t424, label %bb108, label %bb109
bb108:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/check:Checker", ptr %t425, i32 0, i32 1
  %t428 = load ptr, ptr %t427, !tbaa !29
  %t430 = getelementptr %"compiler/generic:Program", ptr %t428, i32 0, i32 2
  %t431 = load i32, ptr %l2, !tbaa !23
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t430, i32 %t431)
  store i32 %t434, ptr %l244
  br label %bb110
bb109:
  store i1 false, ptr %l239, !tbaa !21
  br label %bb111
bb110:
  %t435 = load i32, ptr %l244, !range !{i32 0, i32 33}
  %t437 = trunc i64 22 to i32
  %t438 = icmp eq i32 %t435, %t437
  store i1 %t438, ptr %l239, !tbaa !21
  br label %bb111
bb111:
  %t440 = load i1, ptr %l239, !tbaa !21
  br i1 %t440, label %bb112, label %bb113
bb112:
  %t441 = load ptr, ptr %l1, !tbaa !29
  %t443 = getelementptr %"compiler/ast:Catch", ptr %t441, i32 0, i32 3
  %t444 = load { i64, ptr }, ptr %t443, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t444, 0
  store i64 %t446, ptr %l250, !tbaa !24
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !29
  %t452 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 2
  store ptr %t452, ptr %l253, !tbaa !29
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/check:Checker", ptr %t453, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !29
  %t458 = getelementptr %"compiler/generic:Program", ptr %t456, i32 0, i32 2
  %t459 = load i32, ptr %l2, !tbaa !23
  %t462 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t458, i32 %t459)
  store i32 %t462, ptr %l258
  br label %bb114
bb113:
  store i1 false, ptr %l247, !tbaa !21
  br label %bb116
bb114:
  %t463 = load ptr, ptr %l253, !tbaa !29
  %t464 = load i32, ptr %l258, !tbaa !23
  %t465 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t463, i32 %t464)
  store { i64, ptr } %t465, ptr %l259
  br label %bb115
bb115:
  %t466 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t467 = extractvalue { i64, ptr } %t466, 0
  %t468 = load i64, ptr %l250, !tbaa !24
  %t470 = icmp ne i64 %t468, %t467
  store i1 %t470, ptr %l247, !tbaa !21
  br label %bb116
bb116:
  %t472 = load i1, ptr %l247, !tbaa !21
  store i1 %t472, ptr %l32, !tbaa !21
  %t473 = load ptr, ptr %l1, !tbaa !29
  %t475 = getelementptr %"compiler/ast:Catch", ptr %t473, i32 0, i32 3
  %t476 = load { i64, ptr }, ptr %t475, !tbaa !27
  %t478 = extractvalue { i64, ptr } %t476, 0
  %t480 = icmp sgt i64 %t478, 0
  br i1 %t480, label %bb117, label %bb118
bb117:
  %t482 = load i1, ptr %l32, !tbaa !21
  %t484 = xor i1 %t482, true
  store i1 %t484, ptr %l266, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l266, !tbaa !21
  br label %bb119
bb119:
  %t486 = load i1, ptr %l266, !tbaa !21
  br i1 %t486, label %bb120, label %bb121
bb120:
  %t487 = load i1, ptr %l3, !tbaa !21
  br i1 %t487, label %bb122, label %bb123
bb121:
  store i1 false, ptr %l269, !tbaa !21
  br label %bb125
bb122:
  %t489 = load i32, ptr %l2, !tbaa !23
  %t490 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t493 = icmp eq i32 %t489, %t490
  store i1 %t493, ptr %l271, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb124
bb124:
  %t495 = load i1, ptr %l271, !tbaa !21
  %t496 = xor i1 %t495, true
  store i1 %t496, ptr %l269, !tbaa !21
  br label %bb125
bb125:
  %t498 = load i1, ptr %l269, !tbaa !21
  br i1 %t498, label %bb126, label %bb127
bb126:
  store i64 0, ptr %l33, !tbaa !24
  %t499 = load ptr, ptr %l1, !tbaa !29
  %t501 = getelementptr %"compiler/ast:Catch", ptr %t499, i32 0, i32 3
  %t502 = load { i64, ptr }, ptr %t501, !tbaa !27
  %t504 = extractvalue { i64, ptr } %t502, 0
  store i64 %t504, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t506 = load i64, ptr %l34, !tbaa !24
  %t507 = load i64, ptr %l33, !tbaa !24
  %t510 = icmp sgt i64 %t506, %t507
  br i1 %t510, label %bb128, label %bb129
bb127:
  br label %bb154
bb128:
  %t512 = load i64, ptr %l35, !tbaa !24
  %t514 = icmp sgt i64 %t512, 0
  br i1 %t514, label %bb130, label %bb131
bb129:
  store i64 0, ptr %l282, !tbaa !24
  br label %bb133
bb130:
  %t516 = load i64, ptr %l34, !tbaa !24
  %t517 = load i64, ptr %l33, !tbaa !24
  %t520 = sub i64 %t516, %t517
  %t521 = load i64, ptr %l35, !tbaa !24
  %t524 = add i64 %t520, %t521
  %t526 = sub i64 %t524, 1
  %t527 = load i64, ptr %l35, !tbaa !24
  %t530 = sdiv i64 %t526, %t527
  store i64 %t530, ptr %l285, !tbaa !24
  br label %bb132
bb131:
  store i64 0, ptr %l285, !tbaa !24
  br label %bb132
bb132:
  %t532 = load i64, ptr %l285, !tbaa !24
  store i64 %t532, ptr %l282, !tbaa !24
  br label %bb133
bb133:
  %t533 = load i64, ptr %l282, !tbaa !24
  store i64 %t533, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb134
bb134:
  %t534 = load i64, ptr %l37, !tbaa !24
  %t535 = load i64, ptr %l36, !tbaa !24
  %t538 = icmp slt i64 %t534, %t535
  %t540 = xor i1 %t538, true
  br i1 %t540, label %bb135, label %bb136
bb135:
  br label %bb153
bb136:
  br label %bb137
bb137:
  %t542 = load i64, ptr %l33, !tbaa !24
  %t543 = load i64, ptr %l37, !tbaa !24
  %t544 = load i64, ptr %l35, !tbaa !24
  %t547 = mul i64 %t543, %t544
  %t550 = add i64 %t542, %t547
  store i64 %t550, ptr %l38, !tbaa !24
  %t552 = load i32, ptr %l2, !tbaa !23
  store i32 %t552, ptr %l39, !tbaa !23
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/check:Checker", ptr %t554, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !29
  %t559 = getelementptr %"compiler/generic:Program", ptr %t557, i32 0, i32 2
  %t560 = load i32, ptr %l2, !tbaa !23
  %t563 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t559, i32 %t560)
  store i32 %t563, ptr %l308
  br label %bb138
bb138:
  %t564 = load i32, ptr %l308, !range !{i32 0, i32 33}
  %t566 = trunc i64 22 to i32
  %t567 = icmp eq i32 %t564, %t566
  br i1 %t567, label %bb139, label %bb140
bb139:
  %t569 = load ptr, ptr %l1, !tbaa !29
  %t571 = getelementptr %"compiler/ast:Catch", ptr %t569, i32 0, i32 3
  %t572 = load { i64, ptr }, ptr %t571, !tbaa !27
  %t574 = extractvalue { i64, ptr } %t572, 0
  %t576 = icmp sgt i64 %t574, 1
  store i1 %t576, ptr %l311, !tbaa !21
  br label %bb141
bb140:
  store i1 false, ptr %l311, !tbaa !21
  br label %bb141
bb141:
  %t578 = load i1, ptr %l311, !tbaa !21
  br i1 %t578, label %bb142, label %bb143
bb142:
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t581 = getelementptr %"compiler/check:Checker", ptr %t579, i32 0, i32 1
  %t582 = load ptr, ptr %t581, !tbaa !29
  %t584 = getelementptr %"compiler/generic:Program", ptr %t582, i32 0, i32 2
  store ptr %t584, ptr %l318, !tbaa !29
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t587 = getelementptr %"compiler/check:Checker", ptr %t585, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !29
  %t590 = getelementptr %"compiler/generic:Program", ptr %t588, i32 0, i32 2
  %t591 = load i32, ptr %l2, !tbaa !23
  %t594 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t590, i32 %t591)
  store i32 %t594, ptr %l323
  br label %bb144
bb143:
  br label %bb149
bb144:
  %t595 = load ptr, ptr %l318, !tbaa !29
  %t596 = load i32, ptr %l323, !tbaa !23
  %t597 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t595, i32 %t596)
  store { i64, ptr } %t597, ptr %l324
  br label %bb145
bb145:
  %t598 = load { i64, ptr }, ptr %l324, !tbaa !27
  store { i64, ptr } %t598, ptr %l40, !tbaa !27
  %t599 = load i64, ptr %l38, !tbaa !24
  %t600 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t602 = extractvalue { i64, ptr } %t600, 0
  %t605 = icmp slt i64 %t599, %t602
  br i1 %t605, label %bb146, label %bb147
bb146:
  %t607 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t607, ptr %l329, !tbaa !27
  %t608 = load i64, ptr %l38, !tbaa !24
  %t610 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = getelementptr i32, ptr %t611, i64 %t608
  %t613 = load i32, ptr %t612, !tbaa !33
  store i32 %t613, ptr %l39, !tbaa !23
  br label %bb148
bb147:
  br label %bb148
bb148:
  br label %bb149
bb149:
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = getelementptr %"compiler/check:Checker", ptr %t615, i32 0, i32 36
  store ptr %t617, ptr %l333, !tbaa !29
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t619 = load ptr, ptr %l1, !tbaa !29
  %t621 = getelementptr %"compiler/ast:Catch", ptr %t619, i32 0, i32 3
  %t622 = load { i64, ptr }, ptr %t621, !tbaa !27
  store { i64, ptr } %t622, ptr %l336, !tbaa !27
  %t623 = load i64, ptr %l38, !tbaa !24
  %t625 = getelementptr { i64, ptr }, ptr %l336, i32 0, i32 1
  %t626 = load ptr, ptr %t625, !tbaa !27
  %t627 = getelementptr ptr, ptr %t626, i64 %t623
  %t628 = load ptr, ptr %t627, !tbaa !39
  %t629 = load i32, ptr %l39, !tbaa !23
  %t633 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t618, ptr %t628, i32 %t629)
  store ptr %t633, ptr %l340
  br label %bb150
bb150:
  %t634 = load ptr, ptr %l333, !tbaa !29
  %t635 = load ptr, ptr %l340, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t634, ptr %t635)
  br label %bb151
bb151:
  br label %bb152
bb152:
  %t636 = load i64, ptr %l37, !tbaa !24
  %t638 = add i64 %t636, 1
  store i64 %t638, ptr %l37, !tbaa !24
  br label %bb134
bb153:
  br label %bb154
bb154:
  %t640 = load ptr, ptr %l0, !tbaa !29
  %t642 = getelementptr %"compiler/check:Checker", ptr %t640, i32 0, i32 36
  %t643 = load i64, ptr %l31, !tbaa !24
  %t646 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t642, i64 %t643)
  store { i64, ptr } %t646, ptr %l346
  br label %bb155
bb155:
  %t647 = load { i64, ptr }, ptr %l346, !tbaa !27
  store { i64, ptr } %t647, ptr %l41, !tbaa !27
  %t648 = load i64, ptr %l14, !tbaa !24
  %t650 = icmp sge i64 %t648, 0
  br i1 %t650, label %bb156, label %bb157
bb156:
  %t652 = load ptr, ptr %l13, !tbaa !29
  %t654 = getelementptr %"compiler/check:frame", ptr %t652, i32 0, i32 57
  %t655 = load i64, ptr %l16, !tbaa !24
  %t658 = call %"compiler/check:errBind" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eAt_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %t654, i64 %t655)
  store %"compiler/check:errBind" %t658, ptr %l352
  br label %bb158
bb157:
  br label %bb177
bb158:
  %t659 = load %"compiler/check:errBind", ptr %l352
  store %"compiler/check:errBind" %t659, ptr %l42
  %t660 = load ptr, ptr %l13, !tbaa !29
  %t662 = getelementptr %"compiler/check:frame", ptr %t660, i32 0, i32 58
  %t663 = load i64, ptr %l16, !tbaa !24
  %t666 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t662, i64 %t663)
  store i1 %t666, ptr %l356
  br label %bb159
bb159:
  %t667 = load i1, ptr %l356, !tbaa !21
  %t668 = xor i1 %t667, true
  br i1 %t668, label %bb160, label %bb161
bb160:
  store %olang.scope zeroinitializer, ptr %s18
  %t670 = load ptr, ptr %l0, !tbaa !29
  store ptr %t670, ptr %l358, !tbaa !29
  %t671 = getelementptr %"compiler/check:errBind", ptr %l42, i32 0, i32 3
  %t672 = load %"compiler/source:Span", ptr %t671
  store %"compiler/source:Span" %t672, ptr %l359
  %t673 = load i1, ptr %l7, !tbaa !21
  %t675 = xor i1 %t673, true
  br i1 %t675, label %bb162, label %bb163
bb161:
  br label %bb173
bb162:
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = getelementptr %"compiler/check:errBind", ptr %l42, i32 0, i32 0
  %t679 = load i32, ptr %t678, !tbaa !23
  %t682 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s18, ptr %t677, i32 %t679)
  store { i64, ptr } %t682, ptr %l365
  br label %bb164
bb163:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/check:errBind", ptr %l42, i32 0, i32 0
  %t685 = load i32, ptr %t684, !tbaa !23
  %t688 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s18, ptr %t683, i32 %t685)
  store { i64, ptr } %t688, ptr %l370
  br label %bb166
bb164:
  %t689 = load { i64, ptr }, ptr %l365, !tbaa !27
  %t690 = extractvalue { i64, ptr } %t689, 0
  %t691 = extractvalue { i64, ptr } %t689, 1
  %t692 = mul i64 %t690, 1
  %t693 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t692)
  call void @llvm.memcpy.p0.p0.i64(ptr %t693, ptr %t691, i64 %t692, i1 false)
  %t694 = insertvalue { i64, ptr } undef, i64 %t690, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t693, 1
  %t697 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNameUnused(ptr %s18, ptr %s18, { i64, ptr } %t695)
  store %"compiler/diagmsg:Msg" %t697, ptr %l367
  br label %bb165
bb165:
  %t698 = load %"compiler/diagmsg:Msg", ptr %l367
  store %"compiler/diagmsg:Msg" %t698, ptr %l362
  br label %bb171
bb166:
  %t699 = load { i64, ptr }, ptr %l370, !tbaa !27
  %t700 = extractvalue { i64, ptr } %t699, 0
  %t701 = extractvalue { i64, ptr } %t699, 1
  %t702 = mul i64 %t700, 1
  %t703 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t702)
  call void @llvm.memcpy.p0.p0.i64(ptr %t703, ptr %t701, i64 %t702, i1 false)
  %t704 = insertvalue { i64, ptr } undef, i64 %t700, 0
  %t705 = insertvalue { i64, ptr } %t704, ptr %t703, 1
  store { i64, ptr } %t705, ptr %l371, !tbaa !27
  %t706 = load ptr, ptr %l0, !tbaa !29
  %t708 = getelementptr %"compiler/check:Checker", ptr %t706, i32 0, i32 1
  %t709 = load ptr, ptr %t708, !tbaa !29
  store ptr %t709, ptr %l373, !tbaa !29
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t712 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t710)
  store ptr %t712, ptr %l375
  br label %bb167
bb167:
  %t713 = load ptr, ptr %l375, !tbaa !29
  %t715 = getelementptr %"compiler/check:frame", ptr %t713, i32 0, i32 1
  %t716 = load i64, ptr %t715, !tbaa !24
  store i64 %t716, ptr %l377, !tbaa !24
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t718 = getelementptr %"compiler/check:errBind", ptr %l42, i32 0, i32 0
  %t719 = load i32, ptr %t718, !tbaa !23
  %t722 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t717, i32 %t719)
  store { i64, ptr } %t722, ptr %l380
  br label %bb168
bb168:
  %t723 = load ptr, ptr %l373, !tbaa !29
  %t724 = load i64, ptr %l377, !tbaa !24
  %t725 = load { i64, ptr }, ptr %l380, !tbaa !27
  %t726 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v0, ptr %s18, ptr %t723, i64 %t724, { i64, ptr } %t725)
  store { i64, ptr } %t726, ptr %l381
  br label %bb169
bb169:
  %t727 = load { i64, ptr }, ptr %l381, !tbaa !27
  %t728 = extractvalue { i64, ptr } %t727, 0
  %t729 = extractvalue { i64, ptr } %t727, 1
  %t730 = mul i64 %t728, 1
  %t731 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t730)
  call void @llvm.memcpy.p0.p0.i64(ptr %t731, ptr %t729, i64 %t730, i1 false)
  %t732 = insertvalue { i64, ptr } undef, i64 %t728, 0
  %t733 = insertvalue { i64, ptr } %t732, ptr %t731, 1
  %t734 = load { i64, ptr }, ptr %l371, !tbaa !27
  %t736 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchLoneUnused(ptr %s18, ptr %s18, ptr %s18, { i64, ptr } %t734, { i64, ptr } %t733)
  store %"compiler/diagmsg:Msg" %t736, ptr %l383
  br label %bb170
bb170:
  %t737 = load %"compiler/diagmsg:Msg", ptr %l383
  store %"compiler/diagmsg:Msg" %t737, ptr %l362
  br label %bb171
bb171:
  %t738 = load ptr, ptr %l358, !tbaa !29
  %t739 = load %"compiler/source:Span", ptr %l359
  %t740 = load %"compiler/diagmsg:Msg", ptr %l362
  %t741 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t738, %"compiler/source:Span" %t739, %"compiler/diagmsg:Msg" %t740)
  store i64 %t741, ptr %l384
  br label %bb172
bb172:
  call void @__olang_scope_close(ptr %s18)
  br label %bb173
bb173:
  %t742 = load ptr, ptr %l13, !tbaa !29
  %t744 = getelementptr %"compiler/check:frame", ptr %t742, i32 0, i32 57
  %t745 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eTrunca_H5bf147fe04fb910fd8a08f646d33c634(ptr %v0, ptr %t744, i64 %t745)
  br label %bb174
bb174:
  %t748 = load ptr, ptr %l13, !tbaa !29
  %t750 = getelementptr %"compiler/check:frame", ptr %t748, i32 0, i32 58
  %t751 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eTruncate_3cBool_3e(ptr %v0, ptr %t750, i64 %t751)
  br label %bb175
bb175:
  %t754 = load ptr, ptr %l0, !tbaa !29
  %t755 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwind(ptr %v0, ptr %t754, i64 %t755)
  br label %bb176
bb176:
  br label %bb177
bb177:
  %t758 = load ptr, ptr %l1, !tbaa !29
  %t760 = getelementptr %"compiler/ast:Catch", ptr %t758, i32 0, i32 0
  %t761 = load %"compiler/source:Span", ptr %t760
  store %"compiler/source:Span" %t761, ptr %l394
  %t762 = ptrtoint ptr %v4 to i64
  store i64 %t762, ptr %l395, !tbaa !24
  %t763 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aClause_2e1
  br i1 %t763, label %bb178, label %bb179
bb178:
  %t765 = call ptr @__olang_region_make(ptr %v4)
  %t766 = ptrtoint ptr %t765 to i64
  store i64 %t766, ptr %l395, !tbaa !24
  br label %bb179
bb179:
  %t767 = load i64, ptr %l395
  %t768 = inttoptr i64 %t767 to ptr
  %t770 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eToArray_3ccompiler_2ftyped_3aItem_3e(ptr %s0, ptr %t768, ptr %l6)
  store { i64, ptr } %t770, ptr %l398
  br label %bb180
bb180:
  %t771 = load i1, ptr %l12, !tbaa !21
  %t772 = load ptr, ptr %l20, !tbaa !29
  %t773 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t774 = load i64, ptr %l14, !tbaa !24
  %t775 = load i32, ptr %l15, !tbaa !23
  %t776 = load %"compiler/source:Span", ptr %l394
  %t777 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t783 = call %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, %"compiler/source:Span" %t776, { i64, ptr } %t777, i1 %t771, ptr %t772, { i64, ptr } %t773, i64 %t774, i32 %t775)
  store %"compiler/typed:Clause" %t783, ptr %l404
  br label %bb181
bb181:
  %t784 = load %"compiler/typed:Clause", ptr %l404
  %t785 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 72, i64 8)
  store %"compiler/typed:Clause" %t784, ptr %t785
  call void @__olang_scope_close(ptr %s0)
  store ptr %t785, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyAll(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l26 = alloca ptr
  %l32 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %l18, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 36
  store ptr %t31, ptr %l22, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t32, ptr %t27, i64 %a2)
  store ptr %t38, ptr %l26
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load ptr, ptr %l26, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t39, ptr %t40)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l5, !tbaa !24
  br label %bb2
bb9:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 36
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t47, i64 %t48)
  store { i64, ptr } %t51, ptr %l32
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropCompr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l7 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"compiler/ast:Compr", ptr %a1, i32 0, i32 4
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %a0, ptr %t5, i32 %t7)
  store ptr %t11, ptr %l7
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropRegistered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, [3 x i64] }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/typed:Local"
  %l19 = alloca { i64, ptr }
  %l23 = alloca %"compiler/source:Span"
  %l34 = alloca i64
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca ptr
  %l48 = alloca %"compiler/typed:Local"
  %l50 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l63 = alloca i64
  %s0 = alloca %olang.scope
  %t41 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Body", ptr %t2, i32 0, i32 7
  store ptr %t4, ptr %l12, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/typed:DropHolding", ptr %t5, i32 0, i32 5
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t7, i64 %t8)
  store i64 %t11, ptr %l16
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l12, !tbaa !29
  %t13 = load i64, ptr %l16, !tbaa !24
  %t14 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t12, i64 %t13)
  store %"compiler/typed:Local" %t14, ptr %l17
  br label %bb2
bb2:
  %t15 = getelementptr %"compiler/typed:Local", ptr %l17, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t19 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t17, i32 %t16)
  store { i64, ptr } %t19, ptr %l19
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:DropHolding", ptr %t21, i32 0, i32 4
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v2, ptr %t23, i64 %t24)
  store %"compiler/source:Span" %t27, ptr %l23
  br label %bb4
bb4:
  %t28 = load %"compiler/source:Span", ptr %l23
  store %"compiler/source:Span" %t28, ptr %l5
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t37 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t38 = load i32, ptr %t37, !tbaa !23
  %t40 = sext i32 %t38 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 0
  store i64 3, ptr %t42
  %t44 = insertvalue { i64, i64, i64 } undef, i64 %t32, 0
  %t46 = insertvalue { i64, i64, i64 } %t44, i64 %t36, 1
  %t48 = insertvalue { i64, i64, i64 } %t46, i64 %t40, 2
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 1
  store { i64, i64, i64 } %t48, ptr %t49
  %t50 = load { i64, [3 x i64] }, ptr %t41
  store { i64, [3 x i64] } %t50, ptr %l6
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/typed:DropHolding", ptr %t52, i32 0, i32 3
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t54, i64 %t55)
  store i64 %t58, ptr %l34
  br label %bb5
bb5:
  %t59 = load i64, ptr %l34, !tbaa !24
  store i64 %t59, ptr %l7, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l35, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/typed:DropHolding", ptr %t61, i32 0, i32 6
  %t64 = load i64, ptr %l3, !tbaa !24
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l39
  br label %bb6
bb6:
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = load i32, ptr %l39, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t68, i32 %t69)
  store { i64, ptr } %t70, ptr %l40
  br label %bb7
bb7:
  %t71 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t71, ptr %l8, !tbaa !27
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  br i1 %t74, label %bb8, label %bb9
bb8:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l44, !tbaa !29
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Body", ptr %t77, i32 0, i32 7
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t79, i64 %t80)
  store %"compiler/typed:Local" %t83, ptr %l48
  br label %bb10
bb9:
  %t84 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t88 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropTempRegistered(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t84, { i64, ptr } %t85)
  store %"compiler/diagmsg:Msg" %t88, ptr %l56
  br label %bb13
bb10:
  %t89 = getelementptr %"compiler/typed:Local", ptr %l48, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t91 = load ptr, ptr %l44, !tbaa !29
  %t93 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t91, i32 %t90)
  store { i64, ptr } %t93, ptr %l50
  br label %bb11
bb11:
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropRegistered(ptr %v0, ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t96, { i64, ptr } %t94, { i64, ptr } %t95)
  store %"compiler/diagmsg:Msg" %t99, ptr %l53
  br label %bb12
bb12:
  %t100 = load %"compiler/diagmsg:Msg", ptr %l53
  store %"compiler/diagmsg:Msg" %t100, ptr %l43
  br label %bb14
bb13:
  %t101 = load %"compiler/diagmsg:Msg", ptr %l56
  store %"compiler/diagmsg:Msg" %t101, ptr %l43
  br label %bb14
bb14:
  %t102 = load %"compiler/diagmsg:Msg", ptr %l43
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 0
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/load:Loader", ptr %t109, i32 0, i32 4
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = load { i64, [3 x i64] }, ptr %l6
  %t118 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s0, ptr %t112, { i64, [3 x i64] } %t113, %"compiler/diagmsg:Msg" %t102)
  store i64 %t118, ptr %l63
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropsGone(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l26 = alloca ptr
  %t29 = alloca { i64, [4 x i64] }, align 8
  %t48 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
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
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 23
  %t10 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t6, i64 %a2)
  %t11 = extractvalue { i32, i64 } %t10, 1
  %t12 = extractvalue { i32, i64 } %t10, 0
  store i32 %t12, ptr %l11
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb3, label %ok.14, !prof !99
ok.14:
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t15 = load i64, ptr %l10, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t22, ptr %l15
  %t23 = load %"compiler/source:Span", ptr %l1
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = trunc i64 %t25 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 0
  store i64 0, ptr %t30
  %t32 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t23, 0
  %t34 = insertvalue { %"compiler/source:Span", i32, i32 } %t32, i32 %t24, 1
  %t36 = insertvalue { %"compiler/source:Span", i32, i32 } %t34, i32 %t27, 2
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t36, ptr %t37
  %t38 = load { i64, [4 x i64] }, ptr %t29
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t38, ptr %t40
  store ptr %t40, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l1
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t47 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t41, %"compiler/source:Span" %t42, i32 %t43, i64 0)
  store ptr %t47, ptr %l26
  br label %bb8
bb7:
  br label %bb10
bb8:
  store { i64, [3 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t48, i32 0, i32 0
  store i64 1, ptr %t49
  %t50 = load %"compiler/source:Span", ptr %l15
  %t51 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t50, 0
  %t52 = load ptr, ptr %l22, !tbaa !29
  %t53 = insertvalue { %"compiler/source:Span", ptr, ptr } %t51, ptr %t52, 1
  %t54 = load ptr, ptr %l26, !tbaa !29
  %t55 = insertvalue { %"compiler/source:Span", ptr, ptr } %t53, ptr %t54, 2
  %t56 = getelementptr { i64, [3 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t55, ptr %t56
  %t57 = load { i64, [3 x i64] }, ptr %t48
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t57, ptr %t59
  %t60 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t60, ptr %t59)
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i32
  %l14 = alloca i1
  %l20 = alloca i32
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca i1
  %l36 = alloca ptr
  %l40 = alloca i64
  %l63 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t54 = alloca { i64, [4 x i64] }, align 8
  %t89 = alloca { i64, [3 x i64] }, align 8
  %t113 = alloca { i64, [4 x i64] }, align 8
  %t125 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l9
  br label %bb1
bb1:
  %t5 = load i32, ptr %l9, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l14
  br label %bb2
bb2:
  %t16 = load i1, ptr %l14, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t19, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t26, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t28, ptr %l20
  br label %bb6
bb6:
  %t29 = load i32, ptr %l20, !tbaa !23
  store i32 %t29, ptr %l3, !tbaa !23
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t30)
  store %"compiler/source:Span" %t32, ptr %l22
  br label %bb7
bb7:
  %t33 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t33, ptr %l4
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t35 = load ptr, ptr %l23, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = load ptr, ptr %l23, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 2
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l4
  %t51 = load %"compiler/source:Span", ptr %l4
  %t52 = load i32, ptr %l3, !tbaa !23
  %t53 = load ptr, ptr %l5, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 0
  store i64 3, ptr %t55
  %t57 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t51, 0
  %t59 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t57, i32 %t52, 1
  %t61 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t59, ptr %t53, 2
  %t62 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t61, i64 0, 3
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t62, ptr %t63
  %t64 = load { i64, [4 x i64] }, ptr %t54
  %t66 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t64, ptr %t66
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t49, %"compiler/source:Span" %t50, ptr %t66)
  store ptr %t70, ptr %l36
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t71 = load ptr, ptr %l36, !tbaa !29
  store ptr %t71, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_57182574fbaa5aef_a841f6796e4dcc63)
  unreachable
bb19:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load %"compiler/source:Span", ptr %l4
  %t74 = load i32, ptr %l2, !tbaa !23
  %t78 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t72, %"compiler/source:Span" %t73, i32 %t74)
  store i64 %t78, ptr %l40
  br label %bb20
bb20:
  %t79 = load i64, ptr %l40, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 37
  %t83 = load %"compiler/source:Span", ptr %l4
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = trunc i64 %t84 to i32
  %t88 = load ptr, ptr %l1, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t92 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t83, 0
  %t94 = insertvalue { %"compiler/source:Span", i32, ptr } %t92, i32 %t86, 1
  %t96 = insertvalue { %"compiler/source:Span", i32, ptr } %t94, ptr %t88, 2
  %t97 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t96, ptr %t97
  %t98 = load { i64, [3 x i64] }, ptr %t89
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t98, ptr %t100
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t82, ptr %t100)
  br label %bb21
bb21:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l4
  %t105 = load %"compiler/source:Span", ptr %l4
  %t106 = load i32, ptr %l3, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr %l4
  %t108 = load i32, ptr %l2, !tbaa !23
  %t109 = load i64, ptr %l6, !tbaa !24
  %t111 = trunc i64 %t109 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t113
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 0
  store i64 0, ptr %t114
  %t116 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t107, 0
  %t118 = insertvalue { %"compiler/source:Span", i32, i32 } %t116, i32 %t108, 1
  %t120 = insertvalue { %"compiler/source:Span", i32, i32 } %t118, i32 %t111, 2
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t120, ptr %t121
  %t122 = load { i64, [4 x i64] }, ptr %t113
  %t124 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t122, ptr %t124
  store { i64, [4 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 0
  store i64 3, ptr %t126
  %t128 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t105, 0
  %t130 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t128, i32 %t106, 1
  %t132 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t130, ptr %t124, 2
  %t133 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t132, i64 0, 3
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t133, ptr %t134
  %t135 = load { i64, [4 x i64] }, ptr %t125
  %t137 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t135, ptr %t137
  %t141 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t103, %"compiler/source:Span" %t104, ptr %t137)
  store ptr %t141, ptr %l63
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t142 = load ptr, ptr %l63, !tbaa !29
  store ptr %t142, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eevalOnly(ptr %v0, ptr %a0) #0 {
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
  %t12 = icmp eq i64 %t11, 7
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a993cda7425ca237_a63aa9ad7bf8dd03)
  unreachable
bb10:
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:factsCopy" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsCopied(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"compiler/check:factsCopy"
  %l27 = alloca %"compiler/check:factsCopy"
  %rv = alloca %"compiler/check:factsCopy"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e0
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 50
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l7
  %t14 = load i64, ptr %l4
  %t15 = inttoptr i64 %t14 to ptr
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e(ptr %t15, ptr %l7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l9
  br label %bb4
bb4:
  %t18 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e0
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l4
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = call ptr @__olang_region_or(ptr %t24, ptr null)
  %t26 = icmp ne ptr %t25, null
  %t27 = select i1 %t26, ptr %t25, ptr null
  %t28 = icmp eq ptr %t27, %t21
  call void @__olang_region_settle(ptr %t21, i1 %t28)
  br label %bb6
bb6:
  %t29 = ptrtoint ptr %v1 to i64
  store i64 %t29, ptr %l11, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e1
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = call ptr @__olang_region_make(ptr %v1)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/check:frame", ptr %t34, i32 0, i32 46
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l14
  %t38 = load i64, ptr %l11
  %t39 = inttoptr i64 %t38 to ptr
  %t41 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e(ptr %t39, ptr %l14)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, ptr %l16
  br label %bb9
bb9:
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e1
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load i64, ptr %l11
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr null)
  %t50 = icmp ne ptr %t49, null
  %t51 = select i1 %t50, ptr %t49, ptr null
  %t52 = icmp eq ptr %t51, %t45
  call void @__olang_region_settle(ptr %t45, i1 %t52)
  br label %bb11
bb11:
  %t53 = ptrtoint ptr %v1 to i64
  store i64 %t53, ptr %l18, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e2
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call ptr @__olang_region_make(ptr %v1)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l18, !tbaa !24
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/check:frame", ptr %t58, i32 0, i32 59
  %t61 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %l21
  %t62 = load i64, ptr %l18
  %t63 = inttoptr i64 %t62 to ptr
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %t63, ptr %l21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l23
  br label %bb14
bb14:
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e2
  br i1 %t66, label %bb15, label %bb16
bb15:
  %t68 = load i64, ptr %l18
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t71 = load { i64, ptr }, ptr %t70
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = call ptr @__olang_region_or(ptr %t72, ptr null)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr null
  %t76 = icmp eq ptr %t75, %t69
  call void @__olang_region_settle(ptr %t69, i1 %t76)
  br label %bb16
bb16:
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t80 = call %"compiler/check:factsCopy" @compiler_2fcheck_3afactsCopy_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79)
  store %"compiler/check:factsCopy" %t80, ptr %l25
  br label %bb17
bb17:
  %t82 = call %"compiler/check:factsCopy" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3afactsCopy(ptr %v1, ptr %l25)
  store %"compiler/check:factsCopy" %t82, ptr %l27
  br label %bb18
bb18:
  %t83 = load %"compiler/check:factsCopy", ptr %l27
  store %"compiler/check:factsCopy" %t83, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factsCopy", ptr %rv
  ret %"compiler/check:factsCopy" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandlesContracts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i32
  %l19 = alloca i1
  %l23 = alloca i32
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l57 = alloca i64
  %l59 = alloca ptr
  %l63 = alloca i1
  %l67 = alloca %"compiler/check:ContractAsk"
  %l69 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t109 = alloca %"compiler/check:ContractAsk", align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eLen__H4e51b5ca7b68af485b8486164a690a5f(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i64, ptr %l11, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t10, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d1, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t12, ptr %l15
  br label %bb5
bb5:
  %t13 = load i32, ptr %l15, !tbaa !23
  store i32 %t13, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = icmp eq i32 %t14, %t15
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %t20, i32 %t21, ptr %t22)
  store i32 %t26, ptr %l23
  br label %bb8
bb8:
  %t27 = load i32, ptr %l3, !tbaa !23
  %t28 = load i32, ptr %l23, !tbaa !23
  %t30 = icmp eq i32 %t28, %t27
  store i1 %t30, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  store i64 %a1, ptr %l4, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 130
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %t37)
  store i64 %t39, ptr %l29
  br label %bb13
bb13:
  %t40 = load i64, ptr %l29, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb19
bb16:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l36, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb18
bb18:
  %t67 = load i64, ptr %l36, !tbaa !24
  store i64 %t67, ptr %l33, !tbaa !24
  br label %bb19
bb19:
  %t68 = load i64, ptr %l33, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb22:
  br label %bb23
bb23:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t78 = load i64, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 131
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t89, i64 %t90)
  store i64 %t93, ptr %l57
  br label %bb24
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t94)
  store ptr %t96, ptr %l59
  br label %bb25
bb25:
  %t97 = load ptr, ptr %l59, !tbaa !29
  %t99 = getelementptr %"compiler/check:frame", ptr %t97, i32 0, i32 0
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load i64, ptr %l57, !tbaa !24
  %t103 = icmp eq i64 %t101, %t100
  br i1 %t103, label %bb26, label %bb27
bb26:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 130
  %t108 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eAt_H56c1cddaee4bc4aa5c09605de1331e44(ptr %t109, ptr %v0, ptr %v0, ptr %t107, i64 %t108)
  call void @llvm.memmove.p0.p0.i64(ptr %l67, ptr %t109, i64 136, i1 false)
  br label %bb28
bb27:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb30
bb28:
  %t112 = getelementptr %"compiler/check:ContractAsk", ptr %l67, i32 0, i32 5
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  %t115 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t113, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t115, ptr %l69
  br label %bb29
bb29:
  %t116 = load i1, ptr %l69, !tbaa !21
  %t117 = xor i1 %t116, true
  store i1 %t117, ptr %l63, !tbaa !21
  br label %bb30
bb30:
  %t119 = load i1, ptr %l63, !tbaa !21
  br i1 %t119, label %bb31, label %bb32
bb31:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 132
  %t123 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t122, i64 %t123, i1 true)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l8, !tbaa !24
  br label %bb20
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/check:laneNode"
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"compiler/check:laneNode"
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l32 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i64
  %l46 = alloca %"compiler/check:laneNode"
  %l50 = alloca i1
  %l53 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l64 = alloca i32
  %l65 = alloca i32
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l77 = alloca i64
  %l84 = alloca %"compiler/source:Span"
  %l86 = alloca i32
  %l87 = alloca i32
  %l88 = alloca i32
  %l92 = alloca { i64, ptr }
  %l100 = alloca i1
  %l103 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l109 = alloca i32
  %l110 = alloca i64
  %s0 = alloca %olang.scope
  %t146 = alloca { i64, [5 x i64] }, align 8
  %t204 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %s0, ptr %t3, i64 %t4, ptr %l4)
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 39
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t10, i64 %t11)
  store %"compiler/check:laneNode" %t14, ptr %l22
  br label %bb3
bb3:
  %t15 = getelementptr %"compiler/check:laneNode", ptr %l22, i32 0, i32 9
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sge i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l27, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t23, ptr %l28
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l30
  br label %bb6
bb5:
  store ptr null, ptr %l26, !tbaa !29
  br label %bb8
bb6:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l27, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l28
  %t30 = load i32, ptr %l30, !tbaa !23
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t28, %"compiler/source:Span" %t29, i32 %t30, i64 %t27)
  store ptr %t32, ptr %l32
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l32, !tbaa !29
  store ptr %t33, ptr %l26, !tbaa !29
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l26, !tbaa !29
  store ptr %t35, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  store ptr %l4, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l9, !tbaa !24
  store i64 %t37, ptr %l35, !tbaa !24
  %t38 = load ptr, ptr %l8, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t38)
  store i64 %t40, ptr %l37
  br label %bb10
bb10:
  %t41 = load i64, ptr %l35, !tbaa !24
  %t42 = load i64, ptr %l37, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb11, label %bb12
bb11:
  br label %bb41
bb12:
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l8, !tbaa !29
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t47, i64 %t48)
  store i64 %t51, ptr %l42
  br label %bb14
bb14:
  %t52 = load i64, ptr %l42, !tbaa !24
  store i64 %t52, ptr %l10, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 39
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store %"compiler/check:laneNode" %t59, ptr %l46
  br label %bb15
bb15:
  %t60 = load %"compiler/check:laneNode", ptr %l46
  store %"compiler/check:laneNode" %t60, ptr %l11
  %t61 = getelementptr %"compiler/check:laneNode", ptr %l11, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t66 = icmp ne i64 %t62, %t63
  br i1 %t66, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb18
bb17:
  %t68 = getelementptr %"compiler/check:laneNode", ptr %l11, i32 0, i32 9
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  store i1 %t71, ptr %l50, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l50, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  br label %bb40
bb20:
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/check:laneVals", ptr %t74, i32 0, i32 1
  %t77 = load i64, ptr %l10, !tbaa !24
  %t80 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v1, ptr %t76, i64 %t77)
  %t81 = extractvalue { i32, i64 } %t80, 1
  %t82 = extractvalue { i32, i64 } %t80, 0
  store i32 %t82, ptr %l58
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb23, label %ok.84, !prof !99
ok.84:
  store i64 %t81, ptr %l57
  br label %bb22
bb22:
  %t85 = load i64, ptr %l57, !tbaa !24
  store i64 %t85, ptr %l53, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb25
bb25:
  %t86 = load i64, ptr %l53, !tbaa !24
  store i64 %t86, ptr %l12, !tbaa !24
  %t87 = load i64, ptr %l12, !tbaa !24
  %t89 = icmp slt i64 %t87, 0
  br i1 %t89, label %bb26, label %bb27
bb26:
  br label %bb40
bb27:
  br label %bb28
bb28:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l61, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t92, ptr %l62
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t93)
  store i32 %t95, ptr %l64
  br label %bb29
bb29:
  store i32 22, ptr %l65
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l1
  %t98 = load i64, ptr %l12, !tbaa !24
  %t102 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t96, %"compiler/source:Span" %t97, i64 %t98)
  store ptr %t102, ptr %l69
  br label %bb30
bb30:
  %t103 = load ptr, ptr %l61, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l62
  %t105 = load i32, ptr %l64, !tbaa !23
  %t106 = load i32, ptr %l65, !range !{i32 0, i32 52}
  %t107 = load ptr, ptr %l69, !tbaa !29
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t103, %"compiler/source:Span" %t104, i32 %t105, i32 %t106, ptr %t107, ptr null)
  store ptr %t108, ptr %l70
  br label %bb31
bb31:
  %t109 = load ptr, ptr %l70, !tbaa !29
  store ptr %t109, ptr %l13, !tbaa !29
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = load ptr, ptr %l13, !tbaa !29
  store ptr %t114, ptr %l6, !tbaa !29
  br label %bb39
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 36
  %t121 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t119)
  store i64 %t121, ptr %l77
  br label %bb34
bb34:
  %t122 = load i64, ptr %l77, !tbaa !24
  store i64 %t122, ptr %l14, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 36
  %t126 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t125, ptr %t126)
  br label %bb35
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 36
  %t132 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t131, ptr %t132)
  br label %bb36
bb36:
  %t135 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t135, ptr %l84
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t136)
  store i32 %t138, ptr %l86
  br label %bb37
bb37:
  store i32 38, ptr %l87
  store i32 1, ptr %l88
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 36
  %t142 = load i64, ptr %l14, !tbaa !24
  %t145 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t141, i64 %t142)
  store { i64, ptr } %t145, ptr %l92
  br label %bb38
bb38:
  store { i64, [5 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 0
  store i64 9, ptr %t147
  %t148 = load %"compiler/source:Span", ptr %l84
  %t149 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t148, 0
  %t150 = load i32, ptr %l86, !tbaa !23
  %t151 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t149, i32 %t150, 1
  %t152 = load i32, ptr %l87, !range !{i32 0, i32 52}
  %t153 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t151, i32 %t152, 2
  %t154 = load i32, ptr %l88, !range !{i32 0, i32 3}
  %t155 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t153, i32 %t154, 3
  %t156 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t157 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t155, { i64, ptr } %t156, 4
  %t158 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t157, ptr %t158
  %t159 = load { i64, [5 x i64] }, ptr %t146
  %t161 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t159, ptr %t161
  store ptr %t161, ptr %l6, !tbaa !29
  store i1 true, ptr %l7, !tbaa !21
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t163 = load i64, ptr %l9, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l9, !tbaa !24
  br label %bb9
bb41:
  %t167 = load ptr, ptr %l6, !tbaa !29
  %t169 = icmp eq ptr %t167, null
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb42, label %bb43
bb42:
  %t173 = load i64, ptr %l5, !tbaa !24
  %t175 = icmp slt i64 %t173, 0
  br i1 %t175, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb47
bb44:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb46
bb45:
  %t177 = load i1, ptr %l7, !tbaa !21
  store i1 %t177, ptr %l103, !tbaa !21
  br label %bb46
bb46:
  %t179 = load i1, ptr %l103, !tbaa !21
  store i1 %t179, ptr %l100, !tbaa !21
  br label %bb47
bb47:
  %t180 = load i1, ptr %l100, !tbaa !21
  br i1 %t180, label %bb48, label %bb49
bb48:
  %t181 = load ptr, ptr %l3, !tbaa !29
  store ptr %t181, ptr %l105, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l106, !tbaa !29
  %t183 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t183, ptr %l107
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t184)
  store i32 %t186, ptr %l109
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t187 = load ptr, ptr %l106, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l107
  %t189 = load i32, ptr %l109, !tbaa !23
  %t190 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t187, %"compiler/source:Span" %t188, i32 %t189)
  store i64 %t190, ptr %l110
  br label %bb51
bb51:
  %t191 = load i64, ptr %l110, !tbaa !24
  %t192 = load ptr, ptr %l105, !tbaa !29
  %t193 = getelementptr %"compiler/check:laneVals", ptr %t192, i32 0, i32 0
  store i64 %t191, ptr %t193, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load %"compiler/source:Span", ptr %l1
  %t196 = load ptr, ptr %l3, !tbaa !29
  %t198 = getelementptr %"compiler/check:laneVals", ptr %t196, i32 0, i32 0
  %t199 = load i64, ptr %t198, !tbaa !24
  %t201 = trunc i64 %t199 to i32
  %t203 = load ptr, ptr %l6, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [3 x i64] }, ptr %t204, i32 0, i32 0
  store i64 0, ptr %t205
  %t207 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t195, 0
  %t209 = insertvalue { %"compiler/source:Span", i32, ptr } %t207, i32 %t201, 1
  %t211 = insertvalue { %"compiler/source:Span", i32, ptr } %t209, ptr %t203, 2
  %t212 = getelementptr { i64, [3 x i64] }, ptr %t204, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t211, ptr %t212
  %t213 = load { i64, [3 x i64] }, ptr %t204
  %t215 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t213, ptr %t215
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t194, ptr %t215)
  br label %bb52
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l42 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l68 = alloca { i64, ptr }
  %l75 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t7 = load ptr, ptr %l16, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb34
bb8:
  %t27 = load ptr, ptr %l4, !tbaa !29
  store ptr %t27, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t28 = load ptr, ptr %l24, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l24, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 0
  store i1 %t34, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l25, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t38, i32 0, i32 2
  %t40 = load i32, ptr %t39
  store i32 %t40, ptr %l5, !tbaa !23
  br label %bb13
bb12:
  br label %bb28
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t42)
  store ptr %t44, ptr %l31
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l31, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 0
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i32, ptr %l5, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t48, i64 %t51)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t54, ptr %l36
  br label %bb15
bb15:
  %t55 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l36
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t55, ptr %l6
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l3, !tbaa !23
  %t63 = load i32, ptr %l2, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t61, i32 %t62, i32 %t63)
  store i1 %t67, ptr %l42
  br label %bb16
bb16:
  %t68 = load i1, ptr %l42, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 31
  %t72 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t75 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t71, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72)
  store i1 %t75, ptr %l47
  br label %bb19
bb18:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb24
bb19:
  %t76 = load i1, ptr %l47, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb23
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 33
  %t80 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t83 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t79, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t80)
  store i1 %t83, ptr %l52
  br label %bb22
bb22:
  %t84 = load i1, ptr %l52, !tbaa !21
  store i1 %t84, ptr %l48, !tbaa !21
  br label %bb23
bb23:
  %t85 = load i1, ptr %l48, !tbaa !21
  store i1 %t85, ptr %l43, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l43, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load i32, ptr %l5, !tbaa !23
  %t89 = sext i32 %t87 to i64
  call void @__olang_scope_close(ptr %s3)
  store i64 %t89, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_1a03149f0250e548_14220af7ccd85b74)
  unreachable
bb33:
  br label %bb55
bb34:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t92 = load ptr, ptr %l55, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb35, label %bb36
bb35:
  %t95 = load ptr, ptr %l55, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 18}
  %t98 = icmp eq i64 %t96, 9
  store i1 %t98, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t99 = load i1, ptr %l56, !tbaa !21
  br i1 %t99, label %bb37, label %bb38
bb37:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr { i64, [5 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t102, i32 0, i32 4
  %t104 = load { i64, ptr }, ptr %t103
  store { i64, ptr } %t104, ptr %l7, !tbaa !27
  br label %bb39
bb38:
  br label %bb50
bb39:
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t106, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l10, !tbaa !24
  br label %bb40
bb40:
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb41, label %bb42
bb41:
  br label %bb49
bb42:
  br label %bb43
bb43:
  %t120 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t120, ptr %l68, !tbaa !27
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l2, !tbaa !23
  %t135 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalIn(ptr %v0, ptr %v1, ptr %t128, ptr %t126, i32 %t131)
  store i64 %t135, ptr %l75
  br label %bb44
bb44:
  %t136 = load i64, ptr %l75, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = icmp sge i64 %t137, 0
  br i1 %t139, label %bb45, label %bb46
bb45:
  %t141 = load i64, ptr %l12, !tbaa !24
  store i64 %t141, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l9, !tbaa !24
  br label %bb40
bb49:
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_f003e05343083a19_c7eedaa93b775a5)
  unreachable
bb55:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
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
  %t113 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v2, ptr %t111)
  store { i64, ptr } %t113, ptr %l62
  br label %bb30
bb30:
  %t114 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  %t116 = extractvalue { i64, ptr } %t114, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  %t121 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t124 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatNoField(ptr %v1, ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t121, { i64, ptr } %t122, { i64, ptr } %t120)
  store %"compiler/diagmsg:Msg" %t124, ptr %l64
  br label %bb31
bb31:
  %t125 = load %"compiler/diagmsg:Msg", ptr %l64
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store %"compiler/diagmsg:Msg" %t125, ptr %t126
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
  %t139 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s0, ptr %v2, ptr %t137)
  store { i64, ptr } %t139, ptr %l72
  br label %bb34
bb34:
  %t140 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = mul i64 %t141, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t143)
  call void @llvm.memcpy.p0.p0.i64(ptr %t144, ptr %t142, i64 %t143, i1 false)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  %t147 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t150 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadNoField(ptr %v1, ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t147, { i64, ptr } %t148, { i64, ptr } %t146)
  store %"compiler/diagmsg:Msg" %t150, ptr %l74
  br label %bb35
bb35:
  %t151 = load %"compiler/diagmsg:Msg", ptr %l74
  %t152 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store %"compiler/diagmsg:Msg" %t151, ptr %t152
  call void @__olang_scope_close(ptr %s0)
  store ptr %t152, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l17 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s1 = alloca %olang.scope
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
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
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 142
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l12
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i32, ptr %l2, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t25, i64 %t28)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, ptr %l17
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l10, !tbaa !29
  %t33 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t33, i1 true)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_bb9360f661a84828_a83eb458d7764d44)
  unreachable
bb14:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t9, ptr %a1)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 36
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l12
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
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
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 30}
  %t41 = icmp eq i64 %t39, 15
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

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowExponent(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
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
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  store i32 %t11, ptr %l8, !tbaa !23
  %t12 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t12, ptr %l9
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load i32, ptr %l8, !tbaa !23
  %t15 = load %"compiler/source:Span", ptr %l9
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %t13, i32 %t14, %"compiler/source:Span" %t15)
  store i64 %t16, ptr %l10
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l6, !tbaa !29
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = load i32, ptr %l13, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %t22, i64 %t23, i32 %t24)
  store i32 %t25, ptr %l14
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i32, ptr %l14, !tbaa !23
  store i32 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/check:reflList"
  %l7 = alloca i32
  %lp8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca %"compiler/generic:Desc"
  %lp11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l25 = alloca %"compiler/check:reflList"
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l34 = alloca %"compiler/diagmsg:Msg"
  %l35 = alloca i64
  %l38 = alloca ptr
  %l42 = alloca i32
  %l50 = alloca ptr
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l72 = alloca { i64, ptr }
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca i1
  %l83 = alloca i1
  %l85 = alloca i1
  %l86 = alloca i1
  %l88 = alloca i1
  %l89 = alloca i1
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l97 = alloca i1
  %l101 = alloca %"compiler/check:reflVal"
  %l106 = alloca ptr
  %l109 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l114 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %l119 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l124 = alloca { i64, ptr }
  %l126 = alloca %"compiler/diagmsg:Msg"
  %l127 = alloca i64
  %l129 = alloca i1
  %l130 = alloca i1
  %l132 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l137 = alloca { i64, ptr }
  %l140 = alloca %"compiler/diagmsg:Msg"
  %l141 = alloca i64
  %l144 = alloca ptr
  %l148 = alloca i1
  %l149 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l159 = alloca i1
  %l160 = alloca i1
  %l163 = alloca i32
  %l167 = alloca ptr
  %l168 = alloca %"compiler/source:Span"
  %l171 = alloca { i64, ptr }
  %l174 = alloca %"compiler/diagmsg:Msg"
  %l175 = alloca i64
  %l178 = alloca ptr
  %l182 = alloca i32
  %l191 = alloca ptr
  %l196 = alloca %"compiler/generic:Desc"
  %l198 = alloca i1
  %l199 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca %"compiler/source:Span"
  %l207 = alloca { i64, ptr }
  %l210 = alloca %"compiler/diagmsg:Msg"
  %l211 = alloca i64
  %l214 = alloca ptr
  %l217 = alloca i1
  %l218 = alloca i1
  %l225 = alloca ptr
  %l230 = alloca %"compiler/check:reflVal"
  %l235 = alloca ptr
  %l238 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l270 = alloca %"compiler/diagmsg:Msg"
  %l271 = alloca i64
  %l274 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  %t11 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l4, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 0
  store i64 14, ptr %t12
  %t14 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t8, 0
  %t16 = insertvalue { %"compiler/source:Span", ptr, i32 } %t14, ptr %t9, 1
  %t18 = insertvalue { %"compiler/source:Span", ptr, i32 } %t16, i32 %t10, 2
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t18, ptr %t19
  %t20 = load { i64, [4 x i64] }, ptr %t11
  %t22 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store { i64, [4 x i64] } %t20, ptr %t22
  %t25 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %s0, ptr %t7, ptr %t22)
  store %"compiler/check:reflList" %t25, ptr %l25
  br label %bb2
bb2:
  %t26 = load %"compiler/check:reflList", ptr %l25
  store %"compiler/check:reflList" %t26, ptr %l6
  %t27 = getelementptr %"compiler/check:reflList", ptr %l6, i32 0, i32 0
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l27, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t31, ptr %l28
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l1
  %t36 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s1, ptr %t32, %"compiler/source:Span" %t33)
  store { i64, ptr } %t36, ptr %l31
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t37 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t38, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %s1, ptr %s1, { i64, ptr } %t49)
  store %"compiler/diagmsg:Msg" %t51, ptr %l34
  br label %bb6
bb6:
  %t52 = load ptr, ptr %l27, !tbaa !29
  %t53 = load %"compiler/source:Span", ptr %l28
  %t54 = load %"compiler/diagmsg:Msg", ptr %l34
  %t55 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t52, %"compiler/source:Span" %t53, %"compiler/diagmsg:Msg" %t54)
  store i64 %t55, ptr %l35
  br label %bb7
bb7:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l1
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t56, %"compiler/source:Span" %t57)
  store ptr %t60, ptr %l38
  br label %bb8
bb8:
  %t61 = load ptr, ptr %l38, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t61, ptr %rv
  br label %ret
bb9:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i32 %t67, ptr %l42
  br label %bb10
bb10:
  %t68 = load i32, ptr %l42, !tbaa !23
  store i32 %t68, ptr %l7, !tbaa !23
  %t69 = load i32, ptr %l7, !tbaa !23
  %t71 = icmp sge i32 %t69, 0
  br i1 %t71, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load i32, ptr %l7, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb13, label %bb14
bb12:
  br label %bb116
bb13:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l1
  %t83 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t79, %"compiler/source:Span" %t80)
  store ptr %t83, ptr %l50
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t84 = load ptr, ptr %l50, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t84, ptr %rv
  br label %ret
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l7, !tbaa !23
  %t90 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t90, ptr %l54
  br label %bb17
bb17:
  %t91 = load i1, ptr %l54, !tbaa !21
  br i1 %t91, label %bb18, label %bb19
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t96 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  store i1 %t96, ptr %l58
  br label %bb20
bb19:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb21
bb20:
  %t97 = load i1, ptr %l58, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t100 = load i1, ptr %l55, !tbaa !21
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l7, !tbaa !23
  %t103 = load i32, ptr %l4, !tbaa !23
  %t107 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t101, i32 %t102, i32 %t103)
  store i1 %t107, ptr %l64
  br label %bb24
bb23:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb25
bb24:
  %t108 = load i1, ptr %l64, !tbaa !21
  store i1 %t108, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t109 = load i1, ptr %l60, !tbaa !21
  br i1 %t109, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t111 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t113 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t111)
  store i1 %t113, ptr %l67
  br label %bb29
bb29:
  %t114 = load i1, ptr %l67, !tbaa !21
  br i1 %t114, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l68, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t116, ptr %l69
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l1
  %t121 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s6, ptr %t117, %"compiler/source:Span" %t118)
  store { i64, ptr } %t121, ptr %l72
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t122 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t123, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t130 = extractvalue { i64, ptr } %t127, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %s6, ptr %s6, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l75
  br label %bb33
bb33:
  %t137 = load ptr, ptr %l68, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l69
  %t139 = load %"compiler/diagmsg:Msg", ptr %l75
  %t140 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t137, %"compiler/source:Span" %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l76
  br label %bb34
bb34:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l1
  %t145 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t141, %"compiler/source:Span" %t142)
  store ptr %t145, ptr %l79
  br label %bb35
bb35:
  %t146 = load ptr, ptr %l79, !tbaa !29
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t146, ptr %rv
  br label %ret
bb36:
  %t148 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t150 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t148, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t150, ptr %l82
  br label %bb37
bb37:
  %t151 = load i1, ptr %l82, !tbaa !21
  br i1 %t151, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb41
bb39:
  %t152 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t152, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t154, ptr %l85
  br label %bb40
bb40:
  %t155 = load i1, ptr %l85, !tbaa !21
  store i1 %t155, ptr %l83, !tbaa !21
  br label %bb41
bb41:
  %t156 = load i1, ptr %l83, !tbaa !21
  br i1 %t156, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb45
bb43:
  %t157 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t157, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t159, ptr %l88
  br label %bb44
bb44:
  %t160 = load i1, ptr %l88, !tbaa !21
  store i1 %t160, ptr %l86, !tbaa !21
  br label %bb45
bb45:
  %t161 = load i1, ptr %l86, !tbaa !21
  br i1 %t161, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb49
bb47:
  %t162 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t162, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t164, ptr %l91
  br label %bb48
bb48:
  %t165 = load i1, ptr %l91, !tbaa !21
  store i1 %t165, ptr %l89, !tbaa !21
  br label %bb49
bb49:
  %t166 = load i1, ptr %l89, !tbaa !21
  br i1 %t166, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb53
bb51:
  %t167 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t167, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t169, ptr %l94
  br label %bb52
bb52:
  %t170 = load i1, ptr %l94, !tbaa !21
  store i1 %t170, ptr %l92, !tbaa !21
  br label %bb53
bb53:
  %t171 = load i1, ptr %l92, !tbaa !21
  br i1 %t171, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb57
bb55:
  %t172 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t172, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t174, ptr %l97
  br label %bb56
bb56:
  %t175 = load i1, ptr %l97, !tbaa !21
  store i1 %t175, ptr %l95, !tbaa !21
  br label %bb57
bb57:
  %t176 = load i1, ptr %l95, !tbaa !21
  br i1 %t176, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s8
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l3, !tbaa !29
  %t179 = load i32, ptr %l4, !tbaa !23
  %t183 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %t177, ptr %t178, i32 %t179)
  store %"compiler/check:reflVal" %t183, ptr %l101
  br label %bb60
bb59:
  br label %bb91
bb60:
  %t184 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t184, ptr %lp8
  %t185 = load %"compiler/check:reflVal", ptr %l101
  %t186 = load ptr, ptr %lp8
  store %"compiler/check:reflVal" %t185, ptr %t186
  %t187 = load ptr, ptr %lp8
  %t188 = getelementptr %"compiler/check:reflVal", ptr %t187, i32 0, i32 0
  %t189 = load i1, ptr %t188, !tbaa !21
  br i1 %t189, label %bb61, label %bb62
bb61:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l1
  %t193 = load ptr, ptr %lp8
  %t194 = load %"compiler/check:reflVal", ptr %t193
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v2, ptr %v2, ptr %t191, %"compiler/source:Span" %t192, %"compiler/check:reflVal" %t194)
  store ptr %t198, ptr %l106
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t199 = load ptr, ptr %l106, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t199, ptr %rv
  br label %ret
bb64:
  %t201 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t203 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t201, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t203, ptr %l109
  br label %bb65
bb65:
  %t204 = load i1, ptr %l109, !tbaa !21
  br i1 %t204, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s10
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l110, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t206, ptr %l111
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l7, !tbaa !23
  %t211 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t207, i32 %t208)
  store { i64, ptr } %t211, ptr %l114
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t212 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  %t214 = extractvalue { i64, ptr } %t212, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t220 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoKind(ptr %s10, ptr %s10, { i64, ptr } %t218)
  store %"compiler/diagmsg:Msg" %t220, ptr %l116
  br label %bb69
bb69:
  %t221 = load ptr, ptr %l110, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l111
  %t223 = load %"compiler/diagmsg:Msg", ptr %l116
  %t224 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t221, %"compiler/source:Span" %t222, %"compiler/diagmsg:Msg" %t223)
  store i64 %t224, ptr %l117
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb71:
  %t225 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t225, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t227, ptr %l119
  br label %bb72
bb72:
  %t228 = load i1, ptr %l119, !tbaa !21
  br i1 %t228, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s11
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l120, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t230, ptr %l121
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i32, ptr %l7, !tbaa !23
  %t235 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t231, i32 %t232)
  store { i64, ptr } %t235, ptr %l124
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t236 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t244 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLength(ptr %s11, ptr %s11, { i64, ptr } %t242)
  store %"compiler/diagmsg:Msg" %t244, ptr %l126
  br label %bb76
bb76:
  %t245 = load ptr, ptr %l120, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l121
  %t247 = load %"compiler/diagmsg:Msg", ptr %l126
  %t248 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s11, ptr %t245, %"compiler/source:Span" %t246, %"compiler/diagmsg:Msg" %t247)
  store i64 %t248, ptr %l127
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s11)
  br label %bb78
bb78:
  %t249 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t251 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t249, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t251, ptr %l129
  br label %bb79
bb79:
  %t252 = load i1, ptr %l129, !tbaa !21
  br i1 %t252, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb83
bb81:
  %t253 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t255 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t253, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t255, ptr %l132
  br label %bb82
bb82:
  %t256 = load i1, ptr %l132, !tbaa !21
  store i1 %t256, ptr %l130, !tbaa !21
  br label %bb83
bb83:
  %t257 = load i1, ptr %l130, !tbaa !21
  br i1 %t257, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s12
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l133, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t259, ptr %l134
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l7, !tbaa !23
  %t264 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t260, i32 %t261)
  store { i64, ptr } %t264, ptr %l137
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t265 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  %t267 = extractvalue { i64, ptr } %t265, 1
  %t268 = mul i64 %t266, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t269, ptr %t267, i64 %t268, i1 false)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  %t272 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t275 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLayout(ptr %s12, ptr %v0, ptr %s12, { i64, ptr } %t271, { i64, ptr } %t272)
  store %"compiler/diagmsg:Msg" %t275, ptr %l140
  br label %bb87
bb87:
  %t276 = load ptr, ptr %l133, !tbaa !29
  %t277 = load %"compiler/source:Span", ptr %l134
  %t278 = load %"compiler/diagmsg:Msg", ptr %l140
  %t279 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t276, %"compiler/source:Span" %t277, %"compiler/diagmsg:Msg" %t278)
  store i64 %t279, ptr %l141
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb89:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load %"compiler/source:Span", ptr %l1
  %t284 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t280, %"compiler/source:Span" %t281)
  store ptr %t284, ptr %l144
  br label %bb90
bb90:
  %t285 = load ptr, ptr %l144, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t285, ptr %rv
  br label %ret
bb91:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load i32, ptr %l7, !tbaa !23
  %t291 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t287, i32 %t288)
  store i1 %t291, ptr %l148
  br label %bb92
bb92:
  %t292 = load i1, ptr %l148, !tbaa !21
  br i1 %t292, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb96
bb94:
  %t293 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t295 = call i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %t293)
  store i1 %t295, ptr %l151
  br label %bb95
bb95:
  %t296 = load i1, ptr %l151, !tbaa !21
  store i1 %t296, ptr %l149, !tbaa !21
  br label %bb96
bb96:
  %t297 = load i1, ptr %l149, !tbaa !21
  br i1 %t297, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load i32, ptr %l7, !tbaa !23
  %t303 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t299, i32 %t300)
  store i1 %t303, ptr %l155
  br label %bb100
bb100:
  %t304 = load i1, ptr %l155, !tbaa !21
  br i1 %t304, label %bb101, label %bb102
bb101:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb102:
  br label %bb103
bb103:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load i32, ptr %l7, !tbaa !23
  %t310 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t306, i32 %t307)
  store i1 %t310, ptr %l159
  br label %bb104
bb104:
  %t311 = load i1, ptr %l159, !tbaa !21
  br i1 %t311, label %bb105, label %bb106
bb105:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i32, ptr %l7, !tbaa !23
  %t316 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t312, i32 %t313)
  store i32 %t316, ptr %l163
  br label %bb107
bb106:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb108
bb107:
  %t317 = load i32, ptr %l163, !range !{i32 0, i32 6}
  %t319 = trunc i64 2 to i32
  %t320 = icmp eq i32 %t317, %t319
  store i1 %t320, ptr %l160, !tbaa !21
  br label %bb108
bb108:
  %t322 = load i1, ptr %l160, !tbaa !21
  br i1 %t322, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l167, !tbaa !29
  %t325 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t325, ptr %l168
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i32, ptr %l7, !tbaa !23
  %t330 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t326, i32 %t327)
  store { i64, ptr } %t330, ptr %l171
  br label %bb112
bb112:
  %t331 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t332 = extractvalue { i64, ptr } %t331, 0
  %t333 = extractvalue { i64, ptr } %t331, 1
  %t334 = mul i64 %t332, 1
  %t335 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t334)
  call void @llvm.memcpy.p0.p0.i64(ptr %t335, ptr %t333, i64 %t334, i1 false)
  %t336 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t335, 1
  %t338 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t341 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %s3, ptr %v0, ptr %s3, { i64, ptr } %t337, { i64, ptr } %t338)
  store %"compiler/diagmsg:Msg" %t341, ptr %l174
  br label %bb113
bb113:
  %t342 = load ptr, ptr %l167, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l168
  %t344 = load %"compiler/diagmsg:Msg", ptr %l174
  %t345 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t342, %"compiler/source:Span" %t343, %"compiler/diagmsg:Msg" %t344)
  store i64 %t345, ptr %l175
  br label %bb114
bb114:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load %"compiler/source:Span", ptr %l1
  %t350 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t346, %"compiler/source:Span" %t347)
  store ptr %t350, ptr %l178
  br label %bb115
bb115:
  %t351 = load ptr, ptr %l178, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t351, ptr %rv
  br label %ret
bb116:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load ptr, ptr %l3, !tbaa !29
  %t357 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t353, ptr %t354)
  store i32 %t357, ptr %l182
  br label %bb117
bb117:
  %t358 = load i32, ptr %l182, !tbaa !23
  store i32 %t358, ptr %l9, !tbaa !23
  %t359 = load i32, ptr %l9, !tbaa !23
  %t361 = icmp slt i32 %t359, 0
  br i1 %t361, label %bb118, label %bb119
bb118:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb119:
  br label %bb120
bb120:
  %t364 = load i32, ptr %l9, !tbaa !23
  %t365 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t368 = icmp eq i32 %t364, %t365
  br i1 %t368, label %bb121, label %bb122
bb121:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l1
  %t374 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t370, %"compiler/source:Span" %t371)
  store ptr %t374, ptr %l191
  br label %bb123
bb122:
  br label %bb124
bb123:
  %t375 = load ptr, ptr %l191, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t375, ptr %rv
  br label %ret
bb124:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t381 = load i32, ptr %l9, !tbaa !23
  %t384 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t380, i32 %t381)
  store %"compiler/generic:Desc" %t384, ptr %l196
  br label %bb125
bb125:
  %t385 = load %"compiler/generic:Desc", ptr %l196
  store %"compiler/generic:Desc" %t385, ptr %l10
  %t386 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t388 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t386, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t388, ptr %l198
  br label %bb126
bb126:
  %t389 = load i1, ptr %l198, !tbaa !21
  br i1 %t389, label %bb127, label %bb128
bb127:
  %t390 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t391 = load i64, ptr %t390, !tbaa !24
  %t392 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t395 = icmp ne i64 %t391, %t392
  store i1 %t395, ptr %l199, !tbaa !21
  br label %bb129
bb128:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb129
bb129:
  %t397 = load i1, ptr %l199, !tbaa !21
  br i1 %t397, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s18
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l203, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t399, ptr %l204
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load %"compiler/source:Span", ptr %l1
  %t404 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s18, ptr %t400, %"compiler/source:Span" %t401)
  store { i64, ptr } %t404, ptr %l207
  br label %bb132
bb131:
  br label %bb136
bb132:
  %t405 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 1
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t408 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t407)
  call void @olang_textcopy(ptr %t408, ptr %t406, i64 %t407)
  %t409 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  %t412 = extractvalue { i64, ptr } %t410, 0
  %t413 = extractvalue { i64, ptr } %t410, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  %t419 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %s18, ptr %s18, { i64, ptr } %t417)
  store %"compiler/diagmsg:Msg" %t419, ptr %l210
  br label %bb133
bb133:
  %t420 = load ptr, ptr %l203, !tbaa !29
  %t421 = load %"compiler/source:Span", ptr %l204
  %t422 = load %"compiler/diagmsg:Msg", ptr %l210
  %t423 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t420, %"compiler/source:Span" %t421, %"compiler/diagmsg:Msg" %t422)
  store i64 %t423, ptr %l211
  br label %bb134
bb134:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load %"compiler/source:Span", ptr %l1
  %t428 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t424, %"compiler/source:Span" %t425)
  store ptr %t428, ptr %l214
  br label %bb135
bb135:
  %t429 = load ptr, ptr %l214, !tbaa !29
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t429, ptr %rv
  br label %ret
bb136:
  %t431 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t433 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t431, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t433, ptr %l217
  br label %bb137
bb137:
  %t434 = load i1, ptr %l217, !tbaa !21
  br i1 %t434, label %bb138, label %bb139
bb138:
  %t435 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t436 = load i64, ptr %t435, !tbaa !24
  %t437 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t440 = icmp eq i64 %t436, %t437
  store i1 %t440, ptr %l218, !tbaa !21
  br label %bb140
bb139:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb140
bb140:
  %t442 = load i1, ptr %l218, !tbaa !21
  br i1 %t442, label %bb141, label %bb142
bb141:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load %"compiler/source:Span", ptr %l1
  %t445 = load %"compiler/generic:Desc", ptr %l10
  %t449 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDefault(ptr %v0, ptr %v2, ptr %t443, %"compiler/source:Span" %t444, %"compiler/generic:Desc" %t445)
  store ptr %t449, ptr %l225
  br label %bb143
bb142:
  br label %bb144
bb143:
  %t450 = load ptr, ptr %l225, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t450, ptr %rv
  br label %ret
bb144:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load ptr, ptr %l3, !tbaa !29
  %t454 = load i32, ptr %l4, !tbaa !23
  %t458 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %t452, ptr %t453, i32 %t454)
  store %"compiler/check:reflVal" %t458, ptr %l230
  br label %bb145
bb145:
  %t459 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t459, ptr %lp11
  %t460 = load %"compiler/check:reflVal", ptr %l230
  %t461 = load ptr, ptr %lp11
  store %"compiler/check:reflVal" %t460, ptr %t461
  %t462 = load ptr, ptr %lp11
  %t463 = getelementptr %"compiler/check:reflVal", ptr %t462, i32 0, i32 0
  %t464 = load i1, ptr %t463, !tbaa !21
  br i1 %t464, label %bb146, label %bb147
bb146:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load %"compiler/source:Span", ptr %l1
  %t468 = load ptr, ptr %lp11
  %t469 = load %"compiler/check:reflVal", ptr %t468
  %t473 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v2, ptr %v2, ptr %t466, %"compiler/source:Span" %t467, %"compiler/check:reflVal" %t469)
  store ptr %t473, ptr %l235
  br label %bb148
bb147:
  br label %bb149
bb148:
  %t474 = load ptr, ptr %l235, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t474, ptr %rv
  br label %ret
bb149:
  %t476 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t477 = load i64, ptr %t476, !tbaa !24
  store i64 %t477, ptr %l12, !tbaa !24
  %t479 = load i64, ptr %l12, !tbaa !24
  %t480 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t483 = icmp eq i64 %t479, %t480
  br i1 %t483, label %bb150, label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb153
bb152:
  store { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb153:
  %t485 = load i64, ptr %l12, !tbaa !24
  %t486 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t489 = icmp eq i64 %t485, %t486
  br i1 %t489, label %bb154, label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb157
bb156:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb157:
  %t491 = load i64, ptr %l12, !tbaa !24
  %t492 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t495 = icmp eq i64 %t491, %t492
  br i1 %t495, label %bb158, label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb161
bb160:
  store { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb161:
  %t497 = load i64, ptr %l12, !tbaa !24
  %t498 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t501 = icmp eq i64 %t497, %t498
  br i1 %t501, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  store { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb165:
  br i1 true, label %bb166, label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb169
bb168:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_6fa12bf18c08968_7f63ef0109416d3c)
  unreachable
bb170:
  %t503 = load { i64, ptr }, ptr %l238, !tbaa !27
  store { i64, ptr } %t503, ptr %l13, !tbaa !27
  %t504 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t505 = load i64, ptr %t504, !tbaa !24
  store i64 %t505, ptr %l14, !tbaa !24
  %t507 = load i64, ptr %l14, !tbaa !24
  %t508 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t511 = icmp eq i64 %t507, %t508
  br i1 %t511, label %bb171, label %bb172
bb171:
  br label %bb173
bb172:
  br label %bb174
bb173:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb174:
  %t513 = load i64, ptr %l14, !tbaa !24
  %t514 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t517 = icmp eq i64 %t513, %t514
  br i1 %t517, label %bb175, label %bb176
bb175:
  br label %bb177
bb176:
  br label %bb178
bb177:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb178:
  %t519 = load i64, ptr %l14, !tbaa !24
  %t520 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t523 = icmp eq i64 %t519, %t520
  br i1 %t523, label %bb179, label %bb180
bb179:
  br label %bb181
bb180:
  br label %bb182
bb181:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb182:
  %t525 = load i64, ptr %l14, !tbaa !24
  %t526 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t529 = icmp eq i64 %t525, %t526
  br i1 %t529, label %bb183, label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb186
bb185:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb186:
  br i1 true, label %bb187, label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb190
bb189:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb190:
  call void @__olang_check_failed(ptr @olang_loc_366830190f407939_a82d5f1c611378ed)
  unreachable
bb191:
  %t531 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l265, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t533, ptr %l266
  %t535 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t536 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t537 = load ptr, ptr @__olang_prog_scope
  %t538 = load ptr, ptr @__olang_prog_scope
  %t542 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %t537, ptr %v0, ptr %t538, ptr %s0, { i64, ptr } %t531, { i64, ptr } %t535, { i64, ptr } %t536)
  store %"compiler/diagmsg:Msg" %t542, ptr %l270
  br label %bb192
bb192:
  %t543 = load ptr, ptr %l265, !tbaa !29
  %t544 = load %"compiler/source:Span", ptr %l266
  %t545 = load %"compiler/diagmsg:Msg", ptr %l270
  %t546 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s0, ptr %t543, %"compiler/source:Span" %t544, %"compiler/diagmsg:Msg" %t545)
  store i64 %t546, ptr %l271
  br label %bb193
bb193:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t548 = load %"compiler/source:Span", ptr %l1
  %t551 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t547, %"compiler/source:Span" %t548)
  store ptr %t551, ptr %l274
  br label %bb194
bb194:
  %t552 = load ptr, ptr %l274, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t552, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca { i32, { i64, ptr } }
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i1
  %l38 = alloca { i64, ptr }
  %l40 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i32
  %l52 = alloca i32
  %l64 = alloca { i32, { i64, ptr } }
  %l68 = alloca i1
  %l70 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l81 = alloca %"compiler/diagmsg:Msg"
  %l82 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca i1
  %l93 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l112 = alloca ptr
  %l114 = alloca ptr
  %l118 = alloca %"compiler/names:Ref"
  %l122 = alloca { i64, ptr }
  %l126 = alloca i1
  %l129 = alloca i1
  %l132 = alloca i32
  %l144 = alloca i32
  %l147 = alloca i32
  %l152 = alloca i1
  %l154 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca { i64, ptr }
  %l161 = alloca %"compiler/source:Span"
  %l164 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l173 = alloca i64
  %l175 = alloca i64
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l177 = alloca i64
  %l183 = alloca i32
  %l187 = alloca i1
  %l191 = alloca i1
  %l193 = alloca i1
  %l197 = alloca i1
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca i32
  %t268 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
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
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t14 = load ptr, ptr %l26, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l26, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 30}
  %t20 = icmp eq i64 %t18, 14
  store i1 %t20, ptr %l27, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l27, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t24, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  store %"compiler/source:Span" %t26, ptr %l3
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t30, i32 0, i32 1
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l4, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l5, !tbaa !23
  br label %bb9
bb8:
  br label %bb39
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l38
  br label %bb10
bb10:
  %t45 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t48 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t46)
  store i1 %t48, ptr %l40
  br label %bb11
bb11:
  %t49 = load i1, ptr %l40, !tbaa !21
  %t50 = xor i1 %t49, true
  br i1 %t50, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  store i32 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  store i32 -1, ptr %l7, !tbaa !23
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t55, ptr %l44
  br label %bb15
bb15:
  %t56 = load i1, ptr %l44, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t61 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t57, ptr %t58)
  store i32 %t61, ptr %l47
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t62 = load i32, ptr %l47, !tbaa !23
  store i32 %t62, ptr %l7, !tbaa !23
  br label %bb19
bb19:
  %t63 = load i32, ptr %l7, !tbaa !23
  %t65 = icmp slt i32 %t63, 0
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t71 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  store i32 %t71, ptr %l52
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t72 = load i32, ptr %l52, !tbaa !23
  store i32 %t72, ptr %l7, !tbaa !23
  br label %bb23
bb23:
  %t73 = load i32, ptr %l7, !tbaa !23
  %t75 = icmp slt i32 %t73, 0
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t77 = load i32, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t77, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t79 = load i32, ptr %l7, !tbaa !23
  %t80 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t83 = icmp eq i32 %t79, %t80
  br i1 %t83, label %bb27, label %bb28
bb27:
  %t85 = load i32, ptr %l7, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t85, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t91 = load i32, ptr %l7, !tbaa !23
  %t92 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t96 = call { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v0, ptr %s2, ptr %t90, i32 %t91, { i64, ptr } %t92)
  store { i32, { i64, ptr } } %t96, ptr %l64
  br label %bb30
bb30:
  %t97 = load { i32, { i64, ptr } }, ptr %l64
  store { i32, { i64, ptr } } %t97, ptr %l8
  %t98 = getelementptr { i32, { i64, ptr } }, ptr %l8, i32 0, i32 0
  %t99 = load i32, ptr %t98, !tbaa !23
  store i32 %t99, ptr %l9, !tbaa !23
  %t101 = getelementptr { i32, { i64, ptr } }, ptr %l8, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l10, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t106 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t104, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t106, ptr %l68
  br label %bb31
bb31:
  %t107 = load i1, ptr %l68, !tbaa !21
  %t108 = xor i1 %t107, true
  br i1 %t108, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l70, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l3
  %t112 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t117 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t111, i64 %t114)
  store %"compiler/source:Span" %t117, ptr %l74
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t118 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t118, ptr %l75, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l7, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l78
  br label %bb35
bb35:
  %t124 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t135 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %s8, ptr %s2, ptr %s8, { i64, ptr } %t132, { i64, ptr } %t130, { i64, ptr } %t131)
  store %"compiler/diagmsg:Msg" %t135, ptr %l81
  br label %bb36
bb36:
  %t136 = load ptr, ptr %l70, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l74
  %t138 = load %"compiler/diagmsg:Msg", ptr %l81
  %t139 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t136, %"compiler/source:Span" %t137, %"compiler/diagmsg:Msg" %t138)
  store i64 %t139, ptr %l82
  br label %bb37
bb37:
  %t140 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s2)
  store i32 %t140, ptr %rv
  br label %ret
bb38:
  %t142 = load i32, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t142, ptr %rv
  br label %ret
bb39:
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t145 = load ptr, ptr %l85, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb40, label %bb41
bb40:
  %t148 = load ptr, ptr %l85, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 30}
  %t151 = icmp eq i64 %t149, 2
  store i1 %t151, ptr %l86, !tbaa !21
  br label %bb41
bb41:
  %t152 = load i1, ptr %l86, !tbaa !21
  br i1 %t152, label %bb42, label %bb43
bb42:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { %"compiler/source:Span", ptr }, ptr %t155, i32 0, i32 1
  %t157 = load ptr, ptr %t156
  store ptr %t157, ptr %l11, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l11, !tbaa !29
  %t163 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t159, ptr %t160)
  store i32 %t163, ptr %l93
  br label %bb45
bb45:
  %t164 = load i32, ptr %l93, !tbaa !23
  store i32 %t164, ptr %rv
  br label %ret
bb46:
  %t165 = load ptr, ptr %l1, !tbaa !29
  store ptr %t165, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t166 = load ptr, ptr %l94, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb47, label %bb48
bb47:
  %t169 = load ptr, ptr %l94, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 30}
  %t172 = icmp eq i64 %t170, 13
  store i1 %t172, ptr %l95, !tbaa !21
  br label %bb48
bb48:
  %t173 = load i1, ptr %l95, !tbaa !21
  br i1 %t173, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t176, i32 0, i32 0
  %t178 = load %"compiler/source:Span", ptr %t177
  store %"compiler/source:Span" %t178, ptr %l12
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t182, i32 0, i32 1
  %t184 = load ptr, ptr %t183
  store ptr %t184, ptr %l13, !tbaa !29
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr { i64, [4 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t188, i32 0, i32 2
  %t190 = load { i64, ptr }, ptr %t189
  store { i64, ptr } %t190, ptr %l14, !tbaa !27
  br label %bb51
bb50:
  br label %bb106
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  store i1 false, ptr %l15, !tbaa !21
  %t192 = load ptr, ptr %l13, !tbaa !29
  store ptr %t192, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t193 = load ptr, ptr %l104, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb52, label %bb53
bb52:
  %t196 = load ptr, ptr %l104, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 30}
  %t199 = icmp eq i64 %t197, 0
  store i1 %t199, ptr %l105, !tbaa !21
  br label %bb53
bb53:
  %t200 = load i1, ptr %l105, !tbaa !21
  br i1 %t200, label %bb54, label %bb55
bb54:
  %t201 = load ptr, ptr %l13, !tbaa !29
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32 }, ptr %t203, i32 0, i32 0
  %t205 = load %"compiler/source:Span", ptr %t204
  store %"compiler/source:Span" %t205, ptr %l16
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/check:Checker", ptr %t207, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t212 = getelementptr %"compiler/generic:Program", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  store ptr %t213, ptr %l112, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t214)
  store ptr %t216, ptr %l114
  br label %bb57
bb57:
  %t217 = load ptr, ptr %l114, !tbaa !29
  %t219 = getelementptr %"compiler/check:frame", ptr %t217, i32 0, i32 2
  %t220 = load i64, ptr %t219, !tbaa !24
  %t221 = getelementptr %"compiler/source:Span", ptr %l16, i32 0, i32 0
  %t222 = load i32, ptr %t221, !tbaa !23
  %t223 = load ptr, ptr %l112, !tbaa !29
  %t226 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t223, i64 %t220, i32 %t222)
  store %"compiler/names:Ref" %t226, ptr %l118
  br label %bb58
bb58:
  %t227 = getelementptr %"compiler/names:Ref", ptr %l118, i32 0, i32 0
  %t228 = load i32, ptr %t227, !range !{i32 0, i32 9}
  %t230 = trunc i64 7 to i32
  %t231 = icmp eq i32 %t228, %t230
  store i1 %t231, ptr %l15, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_492feac3979049da_7a1ccb679ec95f6e)
  unreachable
bb64:
  %t233 = load ptr, ptr %l13, !tbaa !29
  %t235 = call { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v1, ptr %s10, ptr %t233)
  store { i64, ptr } %t235, ptr %l122
  br label %bb65
bb65:
  %t236 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t236, ptr %l17, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t241 = icmp eq i64 %t239, 0
  br i1 %t241, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb72
bb67:
  %t243 = load i1, ptr %l15, !tbaa !21
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb68, label %bb69
bb68:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l13, !tbaa !29
  %t251 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t247, ptr %t248)
  store i32 %t251, ptr %l132
  br label %bb70
bb69:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb71
bb70:
  %t252 = load i32, ptr %l132, !tbaa !23
  %t253 = icmp slt i32 %t252, 0
  store i1 %t253, ptr %l129, !tbaa !21
  br label %bb71
bb71:
  %t255 = load i1, ptr %l129, !tbaa !21
  store i1 %t255, ptr %l126, !tbaa !21
  br label %bb72
bb72:
  %t256 = load i1, ptr %l126, !tbaa !21
  br i1 %t256, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s10)
  store i32 -1, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  %t258 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t262 = icmp eq i64 %t260, 1
  br i1 %t262, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s14
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l12
  %t266 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t268
  %t269 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 0
  store i64 0, ptr %t269
  %t271 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t265, 0
  %t273 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t271, { i64, ptr } %t266, 1
  %t275 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t273, { i64, ptr } %t267, 2
  %t276 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t275, ptr %t276
  %t277 = load { i64, [5 x i64] }, ptr %t268
  %t279 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 48, i64 8)
  store { i64, [5 x i64] } %t277, ptr %t279
  %t282 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %s14, ptr %t264, ptr %t279)
  store i32 %t282, ptr %l144
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s10)
  %t283 = load i32, ptr %l144, !tbaa !23
  store i32 %t283, ptr %rv
  br label %ret
bb79:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l13, !tbaa !29
  %t288 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t284, ptr %t285)
  store i32 %t288, ptr %l147
  br label %bb80
bb80:
  %t289 = load i32, ptr %l147, !tbaa !23
  store i32 %t289, ptr %l18, !tbaa !23
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/check:Checker", ptr %t290, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !29
  %t294 = load i32, ptr %l18, !tbaa !23
  %t295 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t299 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %t293, i32 %t294, { i64, ptr } %t295)
  store i1 %t299, ptr %l152
  br label %bb81
bb81:
  %t300 = load i1, ptr %l152, !tbaa !21
  %t301 = xor i1 %t300, true
  br i1 %t301, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s15
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l154, !tbaa !29
  %t304 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t308 = icmp sgt i64 %t306, 0
  br i1 %t308, label %bb84, label %bb85
bb83:
  br label %bb93
bb84:
  %t310 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t310, ptr %l159, !tbaa !27
  %t311 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr ptr, ptr %t312, i64 0
  %t314 = load ptr, ptr %t313, !tbaa !39
  %t316 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t314)
  store %"compiler/source:Span" %t316, ptr %l161
  br label %bb86
bb85:
  %t317 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t317, ptr %l158
  br label %bb87
bb86:
  %t319 = load %"compiler/source:Span", ptr %l161
  store %"compiler/source:Span" %t319, ptr %l158
  br label %bb87
bb87:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t321, ptr %l164, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t326 = sub i64 %t324, 1
  %t328 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr i32, ptr %t329, i64 %t326
  %t331 = load i32, ptr %t330, !tbaa !33
  %t334 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t320, i32 %t331)
  store { i64, ptr } %t334, ptr %l169
  br label %bb88
bb88:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/check:Checker", ptr %t335, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t339 = load i32, ptr %l18, !tbaa !23
  %t342 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t338, i32 %t339)
  store i64 %t342, ptr %l173
  br label %bb89
bb89:
  %t343 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t345 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t343)
  store i64 %t345, ptr %l175
  br label %bb90
bb90:
  %t346 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t347 = load i64, ptr %l173, !tbaa !24
  %t348 = load i64, ptr %l175, !tbaa !24
  %t349 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %s15, { i64, ptr } %t346, i64 %t347, i64 %t348)
  store %"compiler/diagmsg:Msg" %t349, ptr %l176
  br label %bb91
bb91:
  %t350 = load ptr, ptr %l154, !tbaa !29
  %t351 = load %"compiler/source:Span", ptr %l158
  %t352 = load %"compiler/diagmsg:Msg", ptr %l176
  %t353 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t350, %"compiler/source:Span" %t351, %"compiler/diagmsg:Msg" %t352)
  store i64 %t353, ptr %l177
  br label %bb92
bb92:
  %t354 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s10)
  store i32 %t354, ptr %rv
  br label %ret
bb93:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l12
  %t358 = load i32, ptr %l18, !tbaa !23
  %t359 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t364 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %t356, %"compiler/source:Span" %t357, i32 %t358, { i64, ptr } %t359)
  store i32 %t364, ptr %l183
  br label %bb94
bb94:
  %t365 = load i32, ptr %l183, !tbaa !23
  store i32 %t365, ptr %l19, !tbaa !23
  %t366 = load i32, ptr %l19, !tbaa !23
  %t367 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t370 = icmp eq i32 %t366, %t367
  br i1 %t370, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l187, !tbaa !21
  br label %bb98
bb96:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l19, !tbaa !23
  %t374 = load %"compiler/source:Span", ptr %l12
  %t378 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t372, i32 %t373, %"compiler/source:Span" %t374)
  store i1 %t378, ptr %l191
  br label %bb97
bb97:
  %t379 = load i1, ptr %l191, !tbaa !21
  %t380 = xor i1 %t379, true
  store i1 %t380, ptr %l187, !tbaa !21
  br label %bb98
bb98:
  %t382 = load i1, ptr %l187, !tbaa !21
  br i1 %t382, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb102
bb100:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t387 = load i32, ptr %l19, !tbaa !23
  %t390 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t386, i32 %t387)
  store i1 %t390, ptr %l197
  br label %bb101
bb101:
  %t391 = load i1, ptr %l197, !tbaa !21
  %t392 = xor i1 %t391, true
  store i1 %t392, ptr %l193, !tbaa !21
  br label %bb102
bb102:
  %t394 = load i1, ptr %l193, !tbaa !21
  br i1 %t394, label %bb103, label %bb104
bb103:
  %t395 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t395, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  %t397 = load i32, ptr %l19, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t397, ptr %rv
  br label %ret
bb106:
  br i1 true, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb110
bb109:
  store i32 -1, ptr %rv
  br label %ret
bb110:
  call void @__olang_check_failed(ptr @olang_loc_42af232d2840e8db_efcef566740b002f)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca %"compiler/typed:Local"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca %"compiler/typed:Local"
  %l46 = alloca ptr
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l79 = alloca i32
  %l82 = alloca i1
  %l86 = alloca i1
  %l87 = alloca i1
  %l90 = alloca i1
  %l98 = alloca i1
  %l102 = alloca i1
  %l106 = alloca ptr
  %l108 = alloca ptr
  %l112 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l113 = alloca ptr
  %l114 = alloca i32
  %l116 = alloca i64
  %l118 = alloca i64
  %l123 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l177 = alloca ptr
  %l178 = alloca i1
  %l192 = alloca ptr
  %l193 = alloca i1
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
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
  store i1 true, ptr %l26, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sgt i64 %t5, 48
  store i1 %t7, ptr %l26, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l26, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t11 = load ptr, ptr %l29, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l29, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l30, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l30, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l6, !tbaa !23
  br label %bb11
bb10:
  br label %bb67
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 14
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l38
  br label %bb12
bb12:
  %t32 = load i32, ptr %l6, !tbaa !23
  %t33 = load ptr, ptr %l38, !tbaa !29
  %t35 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t33, i32 %t32)
  store %"compiler/typed:Local" %t35, ptr %l40
  br label %bb13
bb13:
  %t36 = load %"compiler/typed:Local", ptr %l40
  store %"compiler/typed:Local" %t36, ptr %l7
  %t37 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 4
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 7}
  %t40 = trunc i64 0 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 14
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t45, i64 %t46)
  store ptr %t49, ptr %l46
  br label %bb16
bb15:
  br label %bb44
bb16:
  %t50 = load ptr, ptr %l46, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 5
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l48
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s3, ptr %l48)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l50
  br label %bb17
bb17:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %s3, ptr %l8)
  store i64 %t58, ptr %l52
  br label %bb18
bb18:
  %t59 = load i64, ptr %l52, !tbaa !24
  store i64 %t59, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = icmp sgt i64 %t60, %t61
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = load i64, ptr %l11, !tbaa !24
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb24
bb21:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = sub i64 %t70, %t71
  %t75 = load i64, ptr %l11, !tbaa !24
  %t78 = add i64 %t74, %t75
  %t80 = sub i64 %t78, 1
  %t81 = load i64, ptr %l11, !tbaa !24
  %t84 = sdiv i64 %t80, %t81
  store i64 %t84, ptr %l59, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb23
bb23:
  %t86 = load i64, ptr %l59, !tbaa !24
  store i64 %t86, ptr %l56, !tbaa !24
  br label %bb24
bb24:
  %t87 = load i64, ptr %l56, !tbaa !24
  store i64 %t87, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t88 = load i64, ptr %l13, !tbaa !24
  %t89 = load i64, ptr %l12, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb26, label %bb27
bb26:
  br label %bb43
bb27:
  br label %bb28
bb28:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l13, !tbaa !24
  %t98 = load i64, ptr %l11, !tbaa !24
  %t101 = mul i64 %t97, %t98
  %t104 = add i64 %t96, %t101
  store i64 %t104, ptr %l14, !tbaa !24
  %t106 = load i64, ptr %l14, !tbaa !24
  %t109 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s3, ptr %l8, i64 %t106)
  store i32 %t109, ptr %l79
  br label %bb29
bb29:
  %t110 = load i32, ptr %l6, !tbaa !23
  %t111 = load i32, ptr %l79, !tbaa !23
  %t113 = icmp eq i32 %t111, %t110
  br i1 %t113, label %bb30, label %bb31
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i64, ptr %l1, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t121 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %t115, i64 %t116, i64 %t117)
  store i1 %t121, ptr %l86
  br label %bb32
bb31:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb33
bb32:
  %t122 = load i1, ptr %l86, !tbaa !21
  store i1 %t122, ptr %l82, !tbaa !21
  br label %bb33
bb33:
  %t123 = load i1, ptr %l82, !tbaa !21
  br i1 %t123, label %bb34, label %bb35
bb34:
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t125 = load i64, ptr %l14, !tbaa !24
  %t128 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v2, ptr %t124, i64 %t125)
  store i1 %t128, ptr %l90
  br label %bb36
bb35:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb37
bb36:
  %t129 = load i1, ptr %l90, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t132 = load i1, ptr %l87, !tbaa !21
  br i1 %t132, label %bb38, label %bb39
bb38:
  %t133 = load ptr, ptr %l3, !tbaa !29
  %t134 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t133, i64 %t134)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t137 = load i64, ptr %l13, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l13, !tbaa !24
  br label %bb25
bb43:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb44:
  %t141 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 4
  %t142 = load i32, ptr %t141, !range !{i32 0, i32 7}
  %t144 = trunc i64 5 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l98, !tbaa !21
  br label %bb48
bb46:
  %t147 = load ptr, ptr %l4, !tbaa !29
  %t148 = load i32, ptr %l6, !tbaa !23
  %t150 = sext i32 %t148 to i64
  %t153 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v3, ptr %t147, i64 %t150)
  store i1 %t153, ptr %l102
  br label %bb47
bb47:
  %t154 = load i1, ptr %l102, !tbaa !21
  store i1 %t154, ptr %l98, !tbaa !21
  br label %bb48
bb48:
  %t155 = load i1, ptr %l98, !tbaa !21
  br i1 %t155, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb50:
  br label %bb51
bb51:
  %t156 = load ptr, ptr %l4, !tbaa !29
  %t157 = load i32, ptr %l6, !tbaa !23
  %t159 = sext i32 %t157 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v3, ptr %t156, i64 %t159, i1 true)
  br label %bb52
bb52:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 87
  store ptr %t164, ptr %l108, !tbaa !29
  %t165 = load i64, ptr %l1, !tbaa !24
  %t166 = load i32, ptr %l6, !tbaa !23
  %t168 = sext i32 %t166 to i64
  %t171 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t165, i64 %t168)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t171, ptr %l112
  br label %bb53
bb53:
  %t172 = load ptr, ptr %l108, !tbaa !29
  %t173 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l112
  %t174 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9a57a0a969606bc6b56c6db08d26f577(ptr %v0, ptr %v0, ptr %t172, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t173)
  %t175 = extractvalue { i32, ptr } %t174, 1
  %t176 = extractvalue { i32, ptr } %t174, 0
  store i32 %t176, ptr %l114
  %t177 = icmp ne i32 %t176, 0
  br i1 %t177, label %bb55, label %ok.178, !prof !99
ok.178:
  store ptr %t175, ptr %l113
  br label %bb54
bb54:
  %t179 = load ptr, ptr %l113, !tbaa !29
  store ptr %t179, ptr %l106, !tbaa !29
  br label %bb57
bb55:
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb57:
  %t180 = load ptr, ptr %l106, !tbaa !29
  store ptr %t180, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb58
bb58:
  %t183 = load i64, ptr %l17, !tbaa !24
  store i64 %t183, ptr %l116, !tbaa !24
  %t184 = load ptr, ptr %l16, !tbaa !29
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l118
  br label %bb59
bb59:
  %t187 = load i64, ptr %l116, !tbaa !24
  %t188 = load i64, ptr %l118, !tbaa !24
  %t189 = icmp slt i64 %t187, %t188
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb60, label %bb61
bb60:
  br label %bb66
bb61:
  br label %bb62
bb62:
  %t193 = load ptr, ptr %l16, !tbaa !29
  %t194 = load i64, ptr %l17, !tbaa !24
  %t197 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t193, i64 %t194)
  store ptr %t197, ptr %l123
  br label %bb63
bb63:
  %t198 = load ptr, ptr %l123, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load i64, ptr %l1, !tbaa !24
  %t203 = load ptr, ptr %l3, !tbaa !29
  %t204 = load ptr, ptr %l4, !tbaa !29
  %t205 = load i64, ptr %l5, !tbaa !24
  %t207 = add i64 %t205, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v0, ptr %v2, ptr %v3, ptr %t199, i64 %t200, ptr %t198, ptr %t203, ptr %t204, i64 %t207)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t214 = load i64, ptr %l17, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l17, !tbaa !24
  br label %bb58
bb66:
  call void @__olang_scope_close(ptr %s2)
  br label %bb107
bb67:
  %t218 = load ptr, ptr %l2, !tbaa !29
  store ptr %t218, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t219 = load ptr, ptr %l134, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb68, label %bb69
bb68:
  %t222 = load ptr, ptr %l134, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 8}
  %t225 = icmp eq i64 %t223, 2
  store i1 %t225, ptr %l135, !tbaa !21
  br label %bb69
bb69:
  %t226 = load i1, ptr %l135, !tbaa !21
  br i1 %t226, label %bb70, label %bb71
bb70:
  %t227 = load ptr, ptr %l2, !tbaa !29
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t229, i32 0, i32 2
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l19, !tbaa !29
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l1, !tbaa !24
  %t235 = load ptr, ptr %l19, !tbaa !29
  %t237 = load ptr, ptr %l3, !tbaa !29
  %t238 = load ptr, ptr %l4, !tbaa !29
  %t239 = load i64, ptr %l5, !tbaa !24
  %t241 = add i64 %t239, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t233, i64 %t234, ptr %t235, ptr %t237, ptr %t238, i64 %t241)
  br label %bb73
bb73:
  br label %bb107
bb74:
  %t248 = load ptr, ptr %l2, !tbaa !29
  store ptr %t248, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t249 = load ptr, ptr %l148, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb75, label %bb76
bb75:
  %t252 = load ptr, ptr %l148, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 8}
  %t255 = icmp eq i64 %t253, 3
  store i1 %t255, ptr %l149, !tbaa !21
  br label %bb76
bb76:
  %t256 = load i1, ptr %l149, !tbaa !21
  br i1 %t256, label %bb77, label %bb78
bb77:
  %t257 = load ptr, ptr %l2, !tbaa !29
  %t259 = getelementptr { i64, [4 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t259, i32 0, i32 2
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l20, !tbaa !29
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i64, ptr %l1, !tbaa !24
  %t265 = load ptr, ptr %l20, !tbaa !29
  %t267 = load ptr, ptr %l3, !tbaa !29
  %t268 = load ptr, ptr %l4, !tbaa !29
  %t269 = load i64, ptr %l5, !tbaa !24
  %t271 = add i64 %t269, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t263, i64 %t264, ptr %t265, ptr %t267, ptr %t268, i64 %t271)
  br label %bb80
bb80:
  br label %bb107
bb81:
  %t278 = load ptr, ptr %l2, !tbaa !29
  store ptr %t278, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t279 = load ptr, ptr %l162, !tbaa !29
  %t280 = icmp ne ptr %t279, null
  br i1 %t280, label %bb82, label %bb83
bb82:
  %t282 = load ptr, ptr %l162, !tbaa !29
  %t283 = load i64, ptr %t282, !range !{i64 0, i64 8}
  %t285 = icmp eq i64 %t283, 4
  store i1 %t285, ptr %l163, !tbaa !21
  br label %bb83
bb83:
  %t286 = load i1, ptr %l163, !tbaa !21
  br i1 %t286, label %bb84, label %bb85
bb84:
  %t287 = load ptr, ptr %l2, !tbaa !29
  %t289 = getelementptr { i64, [4 x i64] }, ptr %t287, i32 0, i32 1
  %t290 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t289, i32 0, i32 2
  %t291 = load ptr, ptr %t290
  store ptr %t291, ptr %l21, !tbaa !29
  br label %bb86
bb85:
  br label %bb88
bb86:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i64, ptr %l1, !tbaa !24
  %t295 = load ptr, ptr %l21, !tbaa !29
  %t297 = getelementptr %"compiler/typed:Elem", ptr %t295, i32 0, i32 0
  %t298 = load ptr, ptr %t297, !tbaa !29
  %t300 = load ptr, ptr %l3, !tbaa !29
  %t301 = load ptr, ptr %l4, !tbaa !29
  %t302 = load i64, ptr %l5, !tbaa !24
  %t304 = add i64 %t302, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t293, i64 %t294, ptr %t298, ptr %t300, ptr %t301, i64 %t304)
  br label %bb87
bb87:
  br label %bb107
bb88:
  %t311 = load ptr, ptr %l2, !tbaa !29
  store ptr %t311, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t312 = load ptr, ptr %l177, !tbaa !29
  %t313 = icmp ne ptr %t312, null
  br i1 %t313, label %bb89, label %bb90
bb89:
  %t315 = load ptr, ptr %l177, !tbaa !29
  %t316 = load i64, ptr %t315, !range !{i64 0, i64 8}
  %t318 = icmp eq i64 %t316, 5
  store i1 %t318, ptr %l178, !tbaa !21
  br label %bb90
bb90:
  %t319 = load i1, ptr %l178, !tbaa !21
  br i1 %t319, label %bb91, label %bb92
bb91:
  %t320 = load ptr, ptr %l2, !tbaa !29
  %t322 = getelementptr { i64, [4 x i64] }, ptr %t320, i32 0, i32 1
  %t323 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t322, i32 0, i32 2
  %t324 = load ptr, ptr %t323
  store ptr %t324, ptr %l22, !tbaa !29
  br label %bb93
bb92:
  br label %bb95
bb93:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i64, ptr %l1, !tbaa !24
  %t328 = load ptr, ptr %l22, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Payload", ptr %t328, i32 0, i32 0
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t333 = load ptr, ptr %l3, !tbaa !29
  %t334 = load ptr, ptr %l4, !tbaa !29
  %t335 = load i64, ptr %l5, !tbaa !24
  %t337 = add i64 %t335, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t326, i64 %t327, ptr %t331, ptr %t333, ptr %t334, i64 %t337)
  br label %bb94
bb94:
  br label %bb107
bb95:
  %t344 = load ptr, ptr %l2, !tbaa !29
  store ptr %t344, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t345 = load ptr, ptr %l192, !tbaa !29
  %t346 = icmp ne ptr %t345, null
  br i1 %t346, label %bb96, label %bb97
bb96:
  %t348 = load ptr, ptr %l192, !tbaa !29
  %t349 = load i64, ptr %t348, !range !{i64 0, i64 8}
  %t351 = icmp eq i64 %t349, 6
  store i1 %t351, ptr %l193, !tbaa !21
  br label %bb97
bb97:
  %t352 = load i1, ptr %l193, !tbaa !21
  br i1 %t352, label %bb98, label %bb99
bb98:
  %t353 = load ptr, ptr %l2, !tbaa !29
  %t355 = getelementptr { i64, [4 x i64] }, ptr %t353, i32 0, i32 1
  %t356 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t355, i32 0, i32 2
  %t357 = load ptr, ptr %t356
  store ptr %t357, ptr %l23, !tbaa !29
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i64, ptr %l1, !tbaa !24
  %t361 = load ptr, ptr %l23, !tbaa !29
  %t363 = load ptr, ptr %l3, !tbaa !29
  %t364 = load ptr, ptr %l4, !tbaa !29
  %t365 = load i64, ptr %l5, !tbaa !24
  %t367 = add i64 %t365, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t359, i64 %t360, ptr %t361, ptr %t363, ptr %t364, i64 %t367)
  br label %bb101
bb101:
  br label %bb107
bb102:
  br i1 true, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb107
bb106:
  call void @__olang_check_failed(ptr @olang_loc_8771b1e868207559_9b4adf6aba3e467d)
  unreachable
bb107:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i64
  %l17 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca i32
  %l41 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l45 = alloca i32
  %l46 = alloca i64
  %l49 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i32
  %l61 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  store i32 %t5, ptr %l7, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 3
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t15, { i64, ptr } %t16)
  store i32 %t19, ptr %l13
  br label %bb1
bb1:
  %t20 = load ptr, ptr %l6, !tbaa !29
  %t21 = load i32, ptr %l7, !tbaa !23
  %t22 = load i32, ptr %l13, !tbaa !23
  %t23 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t20, i32 %t21, i32 %t22)
  store i64 %t23, ptr %l14
  br label %bb2
bb2:
  %t24 = load i64, ptr %l14, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sge i64 %t25, 0
  br i1 %t27, label %bb3, label %bb4
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  store ptr %t40, ptr %l23, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t44, i64 %t45)
  store i32 %t48, ptr %l27
  br label %bb5
bb4:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb5:
  %t49 = load ptr, ptr %l23, !tbaa !29
  %t50 = load i32, ptr %l27, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t51, ptr %l28
  br label %bb6
bb6:
  %t52 = load ptr, ptr %l20, !tbaa !29
  %t53 = load i32, ptr %l28, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t52, i32 %t53)
  store { i64, ptr } %t54, ptr %l29
  br label %bb7
bb7:
  %t55 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  %t57 = load i64, ptr %l3, !tbaa !24
  %t59 = add i64 %t57, 1
  %t62 = icmp eq i64 %t56, %t59
  store i1 %t62, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t64 = load i1, ptr %l17, !tbaa !21
  br i1 %t64, label %bb9, label %bb10
bb9:
  %t65 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t65, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  store ptr %t70, ptr %l36, !tbaa !29
  %t71 = load i32, ptr %l1, !tbaa !23
  store i32 %t71, ptr %l37, !tbaa !23
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/load:Loader", ptr %t78, i32 0, i32 3
  %t81 = load ptr, ptr %t80, !tbaa !29
  store ptr %t81, ptr %l41, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v1, ptr %s0, { i64, ptr } %t82)
  store { i64, ptr } %t84, ptr %l43
  br label %bb12
bb12:
  %t85 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load ptr, ptr %l41, !tbaa !29
  %t94 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t92, { i64, ptr } %t91)
  store i32 %t94, ptr %l45
  br label %bb13
bb13:
  %t95 = load ptr, ptr %l36, !tbaa !29
  %t96 = load i32, ptr %l37, !tbaa !23
  %t97 = load i32, ptr %l45, !tbaa !23
  %t98 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t95, i32 %t96, i32 %t97)
  store i64 %t98, ptr %l46
  br label %bb14
bb14:
  %t99 = load i64, ptr %l46, !tbaa !24
  store i64 %t99, ptr %l4, !tbaa !24
  %t100 = load i64, ptr %l4, !tbaa !24
  %t102 = icmp sge i64 %t100, 0
  br i1 %t102, label %bb15, label %bb16
bb15:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  store ptr %t109, ptr %l52, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  store ptr %t115, ptr %l55, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t120 = load i64, ptr %l4, !tbaa !24
  %t123 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t119, i64 %t120)
  store i32 %t123, ptr %l59
  br label %bb17
bb16:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb20
bb17:
  %t124 = load ptr, ptr %l55, !tbaa !29
  %t125 = load i32, ptr %l59, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t126, ptr %l60
  br label %bb18
bb18:
  %t127 = load ptr, ptr %l52, !tbaa !29
  %t128 = load i32, ptr %l60, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t127, i32 %t128)
  store { i64, ptr } %t129, ptr %l61
  br label %bb19
bb19:
  %t130 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  %t132 = load i64, ptr %l3, !tbaa !24
  %t134 = add i64 %t132, 1
  %t137 = icmp eq i64 %t131, %t134
  store i1 %t137, ptr %l49, !tbaa !21
  br label %bb20
bb20:
  %t139 = load i1, ptr %l49, !tbaa !21
  br i1 %t139, label %bb21, label %bb22
bb21:
  %t140 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t140, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i32
  %l18 = alloca i1
  %l23 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i1, ptr %l8, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t25 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t27 = trunc i64 19 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l10, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l2, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t41 = load i32, ptr %l23, !tbaa !23
  %t42 = icmp eq i32 %t41, 0
  store i1 %t42, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t44 = load i1, ptr %l18, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0) #0 {
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 51
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
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 51
  store i32 %t15, ptr %t17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 51
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/names:Ref"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l32 = alloca %"compiler/names:Ref"
  %l37 = alloca i32
  %l41 = alloca i32
  %l45 = alloca i1
  %l48 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i32
  %l57 = alloca i1
  %l60 = alloca i32
  %l62 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l70 = alloca i1
  %l75 = alloca i32
  %l79 = alloca i1
  %l84 = alloca i32
  %l89 = alloca ptr
  %l90 = alloca i1
  %l97 = alloca ptr
  %l99 = alloca ptr
  %l103 = alloca %"compiler/names:Ref"
  %l106 = alloca i1
  %l109 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca i32
  %l116 = alloca ptr
  %l117 = alloca i1
  %l128 = alloca i32
  %l131 = alloca i1
  %l136 = alloca i32
  %l142 = alloca { i64, ptr }
  %l156 = alloca i32
  %l160 = alloca i32
  %l166 = alloca i1
  %l168 = alloca ptr
  %l172 = alloca %"compiler/source:Span"
  %l173 = alloca { i64, ptr }
  %l175 = alloca %"compiler/source:Span"
  %l178 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l187 = alloca i64
  %l189 = alloca i64
  %l190 = alloca %"compiler/diagmsg:Msg"
  %l191 = alloca i64
  %l197 = alloca i32
  %l201 = alloca i1
  %l205 = alloca i1
  %l207 = alloca i1
  %l211 = alloca i1
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i32
  %t307 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
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
  br label %bb45
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l26, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l28
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l28, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l26, !tbaa !29
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t38, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l32
  br label %bb7
bb7:
  %t42 = load %"compiler/names:Ref", ptr %l32
  store %"compiler/names:Ref" %t42, ptr %l4
  %t43 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 9}
  %t46 = trunc i64 7 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l3, !tbaa !23
  %t53 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l37
  br label %bb10
bb9:
  br label %bb14
bb10:
  %t54 = load i32, ptr %l37, !tbaa !23
  store i32 %t54, ptr %l5, !tbaa !23
  %t55 = load i32, ptr %l5, !tbaa !23
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = icmp ne i32 %t55, %t56
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = load i32, ptr %l5, !tbaa !23
  store i32 %t61, ptr %l41, !tbaa !23
  br label %bb13
bb12:
  store i32 -1, ptr %l41, !tbaa !23
  br label %bb13
bb13:
  %t63 = load i32, ptr %l41, !tbaa !23
  store i32 %t63, ptr %rv
  br label %ret
bb14:
  %t64 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t65 = load i32, ptr %t64, !range !{i32 0, i32 9}
  %t67 = trunc i64 4 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb15, label %bb16
bb15:
  %t70 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t71 = load i64, ptr %t70, !tbaa !24
  %t73 = icmp sge i64 %t71, 0
  store i1 %t73, ptr %l45, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb17
bb17:
  %t75 = load i1, ptr %l45, !tbaa !21
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l48, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t84 = load i64, ptr %t83, !tbaa !24
  %t88 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t80, i64 %t82, i64 %t84)
  store i32 %t88, ptr %l53
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t90 = load i32, ptr %l53, !tbaa !23
  %t91 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclType(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t91, ptr %l54
  br label %bb21
bb21:
  %t92 = load i32, ptr %l54, !tbaa !23
  store i32 %t92, ptr %rv
  br label %ret
bb22:
  %t93 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t94 = load i32, ptr %t93, !range !{i32 0, i32 9}
  %t96 = trunc i64 8 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb25
bb24:
  %t99 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t100 = load i32, ptr %t99, !range !{i32 0, i32 9}
  %t102 = trunc i64 0 to i32
  %t103 = icmp eq i32 %t100, %t102
  store i1 %t103, ptr %l57, !tbaa !21
  br label %bb25
bb25:
  %t105 = load i1, ptr %l57, !tbaa !21
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t106)
  store ptr %t108, ptr %l62
  br label %bb28
bb27:
  br label %bb44
bb28:
  %t109 = load ptr, ptr %l62, !tbaa !29
  %t111 = getelementptr %"compiler/check:frame", ptr %t109, i32 0, i32 4
  %t112 = getelementptr %"compiler/generic:Context", ptr %t111, i32 0, i32 2
  %t113 = load i32, ptr %l3, !tbaa !23
  %t116 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t112, i32 %t113)
  %t117 = extractvalue { i32, i32 } %t116, 1
  %t118 = extractvalue { i32, i32 } %t116, 0
  store i32 %t118, ptr %l67
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb30, label %ok.120, !prof !99
ok.120:
  store i32 %t117, ptr %l66
  br label %bb29
bb29:
  %t121 = load i32, ptr %l66, !tbaa !23
  store i32 %t121, ptr %l60, !tbaa !23
  br label %bb32
bb30:
  br label %bb31
bb31:
  store i32 -1, ptr %l60, !tbaa !23
  br label %bb32
bb32:
  %t122 = load i32, ptr %l60, !tbaa !23
  store i32 %t122, ptr %l6, !tbaa !23
  %t123 = load i32, ptr %l6, !tbaa !23
  %t125 = icmp sge i32 %t123, 0
  br i1 %t125, label %bb33, label %bb34
bb33:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l6, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l75
  br label %bb35
bb34:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb36
bb35:
  %t137 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t139 = trunc i64 26 to i32
  %t140 = icmp eq i32 %t137, %t139
  %t142 = xor i1 %t140, true
  store i1 %t142, ptr %l70, !tbaa !21
  br label %bb36
bb36:
  %t144 = load i1, ptr %l70, !tbaa !21
  br i1 %t144, label %bb37, label %bb38
bb37:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l6, !tbaa !23
  %t154 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t150, i32 %t151)
  store i32 %t154, ptr %l84
  br label %bb39
bb38:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb40
bb39:
  %t155 = load i32, ptr %l84, !range !{i32 0, i32 33}
  %t157 = trunc i64 27 to i32
  %t158 = icmp eq i32 %t155, %t157
  %t160 = xor i1 %t158, true
  store i1 %t160, ptr %l79, !tbaa !21
  br label %bb40
bb40:
  %t162 = load i1, ptr %l79, !tbaa !21
  br i1 %t162, label %bb41, label %bb42
bb41:
  %t163 = load i32, ptr %l6, !tbaa !23
  store i32 %t163, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb116
bb45:
  %t165 = load ptr, ptr %l1, !tbaa !29
  store ptr %t165, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t166 = load ptr, ptr %l89, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb46, label %bb47
bb46:
  %t169 = load ptr, ptr %l89, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 30}
  %t172 = icmp eq i64 %t170, 14
  store i1 %t172, ptr %l90, !tbaa !21
  br label %bb47
bb47:
  %t173 = load i1, ptr %l90, !tbaa !21
  br i1 %t173, label %bb48, label %bb49
bb48:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [4 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t176, i32 0, i32 0
  %t178 = load %"compiler/source:Span", ptr %t177
  store %"compiler/source:Span" %t178, ptr %l7
  br label %bb50
bb49:
  br label %bb61
bb50:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  store ptr %t186, ptr %l97, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t187)
  store ptr %t189, ptr %l99
  br label %bb51
bb51:
  %t190 = load ptr, ptr %l99, !tbaa !29
  %t192 = getelementptr %"compiler/check:frame", ptr %t190, i32 0, i32 2
  %t193 = load i64, ptr %t192, !tbaa !24
  %t194 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t195 = load i32, ptr %t194, !tbaa !23
  %t196 = load ptr, ptr %l97, !tbaa !29
  %t199 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t196, i64 %t193, i32 %t195)
  store %"compiler/names:Ref" %t199, ptr %l103
  br label %bb52
bb52:
  %t200 = load %"compiler/names:Ref", ptr %l103
  store %"compiler/names:Ref" %t200, ptr %l8
  %t201 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t202 = load i32, ptr %t201, !range !{i32 0, i32 9}
  %t204 = trunc i64 4 to i32
  %t205 = icmp eq i32 %t202, %t204
  br i1 %t205, label %bb53, label %bb54
bb53:
  %t207 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 2
  %t208 = load i64, ptr %t207, !tbaa !24
  %t210 = icmp sge i64 %t208, 0
  store i1 %t210, ptr %l106, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb55
bb55:
  %t212 = load i1, ptr %l106, !tbaa !21
  br i1 %t212, label %bb56, label %bb57
bb56:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l109, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/check:Checker", ptr %t214, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t218 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 1
  %t219 = load i64, ptr %t218, !tbaa !24
  %t220 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 2
  %t221 = load i64, ptr %t220, !tbaa !24
  %t225 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t217, i64 %t219, i64 %t221)
  store i32 %t225, ptr %l114
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t226 = load ptr, ptr %l109, !tbaa !29
  %t227 = load i32, ptr %l114, !tbaa !23
  %t228 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclType(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t228, ptr %l115
  br label %bb59
bb59:
  %t229 = load i32, ptr %l115, !tbaa !23
  store i32 %t229, ptr %rv
  br label %ret
bb60:
  br label %bb116
bb61:
  %t230 = load ptr, ptr %l1, !tbaa !29
  store ptr %t230, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t231 = load ptr, ptr %l116, !tbaa !29
  %t232 = icmp ne ptr %t231, null
  br i1 %t232, label %bb62, label %bb63
bb62:
  %t234 = load ptr, ptr %l116, !tbaa !29
  %t235 = load i64, ptr %t234, !range !{i64 0, i64 30}
  %t237 = icmp eq i64 %t235, 13
  store i1 %t237, ptr %l117, !tbaa !21
  br label %bb63
bb63:
  %t238 = load i1, ptr %l117, !tbaa !21
  br i1 %t238, label %bb64, label %bb65
bb64:
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t241, i32 0, i32 0
  %t243 = load %"compiler/source:Span", ptr %t242
  store %"compiler/source:Span" %t243, ptr %l9
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t247, i32 0, i32 1
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l10, !tbaa !29
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t253 = getelementptr { i64, [4 x i64] }, ptr %t251, i32 0, i32 1
  %t254 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t253, i32 0, i32 2
  %t255 = load { i64, ptr }, ptr %t254
  store { i64, ptr } %t255, ptr %l11, !tbaa !27
  br label %bb66
bb65:
  br label %bb111
bb66:
  store %olang.scope zeroinitializer, ptr %s8
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l10, !tbaa !29
  %t261 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t257, ptr %t258)
  store i32 %t261, ptr %l128
  br label %bb67
bb67:
  %t262 = load i32, ptr %l128, !tbaa !23
  store i32 %t262, ptr %l12, !tbaa !23
  %t263 = load i32, ptr %l12, !tbaa !23
  %t265 = icmp slt i32 %t263, 0
  br i1 %t265, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb71
bb69:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l12, !tbaa !23
  %t276 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t272, i32 %t273)
  store i32 %t276, ptr %l136
  br label %bb70
bb70:
  %t277 = load i32, ptr %l136, !range !{i32 0, i32 6}
  %t279 = trunc i64 1 to i32
  %t280 = icmp eq i32 %t277, %t279
  %t282 = xor i1 %t280, true
  store i1 %t282, ptr %l131, !tbaa !21
  br label %bb71
bb71:
  %t284 = load i1, ptr %l131, !tbaa !21
  br i1 %t284, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s8)
  store i32 -1, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t286 = load ptr, ptr %l10, !tbaa !29
  %t288 = call { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v1, ptr %s8, ptr %t286)
  store { i64, ptr } %t288, ptr %l142
  br label %bb75
bb75:
  %t289 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t289, ptr %l13, !tbaa !27
  %t290 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t294 = icmp eq i64 %t292, 0
  br i1 %t294, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s8)
  store i32 -1, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t297 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t301 = icmp eq i64 %t299, 1
  br i1 %t301, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s11
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l9
  %t305 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t306 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t307
  %t308 = getelementptr { i64, [5 x i64] }, ptr %t307, i32 0, i32 0
  store i64 0, ptr %t308
  %t310 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t304, 0
  %t312 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t310, { i64, ptr } %t305, 1
  %t314 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t312, { i64, ptr } %t306, 2
  %t315 = getelementptr { i64, [5 x i64] }, ptr %t307, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t314, ptr %t315
  %t316 = load { i64, [5 x i64] }, ptr %t307
  %t318 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 48, i64 8)
  store { i64, [5 x i64] } %t316, ptr %t318
  %t321 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %s11, ptr %t303, ptr %t318)
  store i32 %t321, ptr %l156
  br label %bb81
bb80:
  br label %bb85
bb81:
  %t322 = load i32, ptr %l156, !tbaa !23
  store i32 %t322, ptr %l14, !tbaa !23
  %t323 = load i32, ptr %l14, !tbaa !23
  %t324 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t327 = icmp ne i32 %t323, %t324
  br i1 %t327, label %bb82, label %bb83
bb82:
  %t329 = load i32, ptr %l14, !tbaa !23
  store i32 %t329, ptr %l160, !tbaa !23
  br label %bb84
bb83:
  store i32 -1, ptr %l160, !tbaa !23
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  %t331 = load i32, ptr %l160, !tbaa !23
  store i32 %t331, ptr %rv
  br label %ret
bb85:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/check:Checker", ptr %t332, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !29
  %t336 = load i32, ptr %l12, !tbaa !23
  %t337 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t341 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %t335, i32 %t336, { i64, ptr } %t337)
  store i1 %t341, ptr %l166
  br label %bb86
bb86:
  %t342 = load i1, ptr %l166, !tbaa !21
  %t343 = xor i1 %t342, true
  br i1 %t343, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s12
  %t345 = load ptr, ptr %l0, !tbaa !29
  store ptr %t345, ptr %l168, !tbaa !29
  %t346 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t350 = icmp sgt i64 %t348, 0
  br i1 %t350, label %bb89, label %bb90
bb88:
  br label %bb98
bb89:
  %t352 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t352, ptr %l173, !tbaa !27
  %t353 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr ptr, ptr %t354, i64 0
  %t356 = load ptr, ptr %t355, !tbaa !39
  %t358 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t356)
  store %"compiler/source:Span" %t358, ptr %l175
  br label %bb91
bb90:
  %t359 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t359, ptr %l172
  br label %bb92
bb91:
  %t361 = load %"compiler/source:Span", ptr %l175
  store %"compiler/source:Span" %t361, ptr %l172
  br label %bb92
bb92:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t363, ptr %l178, !tbaa !27
  %t364 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t364, 0
  %t368 = sub i64 %t366, 1
  %t370 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr i32, ptr %t371, i64 %t368
  %t373 = load i32, ptr %t372, !tbaa !33
  %t376 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t362, i32 %t373)
  store { i64, ptr } %t376, ptr %l183
  br label %bb93
bb93:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t381 = load i32, ptr %l12, !tbaa !23
  %t384 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t380, i32 %t381)
  store i64 %t384, ptr %l187
  br label %bb94
bb94:
  %t385 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t387 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t385)
  store i64 %t387, ptr %l189
  br label %bb95
bb95:
  %t388 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t389 = load i64, ptr %l187, !tbaa !24
  %t390 = load i64, ptr %l189, !tbaa !24
  %t391 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %s12, { i64, ptr } %t388, i64 %t389, i64 %t390)
  store %"compiler/diagmsg:Msg" %t391, ptr %l190
  br label %bb96
bb96:
  %t392 = load ptr, ptr %l168, !tbaa !29
  %t393 = load %"compiler/source:Span", ptr %l172
  %t394 = load %"compiler/diagmsg:Msg", ptr %l190
  %t395 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s12, ptr %t392, %"compiler/source:Span" %t393, %"compiler/diagmsg:Msg" %t394)
  store i64 %t395, ptr %l191
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s8)
  store i32 -1, ptr %rv
  br label %ret
bb98:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load %"compiler/source:Span", ptr %l9
  %t399 = load i32, ptr %l12, !tbaa !23
  %t400 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t405 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %t397, %"compiler/source:Span" %t398, i32 %t399, { i64, ptr } %t400)
  store i32 %t405, ptr %l197
  br label %bb99
bb99:
  %t406 = load i32, ptr %l197, !tbaa !23
  store i32 %t406, ptr %l15, !tbaa !23
  %t407 = load i32, ptr %l15, !tbaa !23
  %t408 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t411 = icmp eq i32 %t407, %t408
  br i1 %t411, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l201, !tbaa !21
  br label %bb103
bb101:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load i32, ptr %l15, !tbaa !23
  %t415 = load %"compiler/source:Span", ptr %l9
  %t419 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t413, i32 %t414, %"compiler/source:Span" %t415)
  store i1 %t419, ptr %l205
  br label %bb102
bb102:
  %t420 = load i1, ptr %l205, !tbaa !21
  %t421 = xor i1 %t420, true
  store i1 %t421, ptr %l201, !tbaa !21
  br label %bb103
bb103:
  %t423 = load i1, ptr %l201, !tbaa !21
  br i1 %t423, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l207, !tbaa !21
  br label %bb107
bb105:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"compiler/check:Checker", ptr %t424, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !29
  %t428 = load i32, ptr %l15, !tbaa !23
  %t431 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t427, i32 %t428)
  store i1 %t431, ptr %l211
  br label %bb106
bb106:
  %t432 = load i1, ptr %l211, !tbaa !21
  %t433 = xor i1 %t432, true
  store i1 %t433, ptr %l207, !tbaa !21
  br label %bb107
bb107:
  %t435 = load i1, ptr %l207, !tbaa !21
  br i1 %t435, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s8)
  store i32 -1, ptr %rv
  br label %ret
bb109:
  br label %bb110
bb110:
  %t437 = load i32, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s8)
  store i32 %t437, ptr %rv
  br label %ret
bb111:
  br i1 true, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  call void @__olang_check_failed(ptr @olang_loc_8b8738bb0f25fa76_719b7d77c23398a)
  unreachable
bb116:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalk(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l44 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca ptr
  %l57 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l67 = alloca i32
  %l74 = alloca i32
  %l80 = alloca i1
  %l81 = alloca i32
  %l88 = alloca i32
  %l92 = alloca i64
  %l94 = alloca ptr
  %l97 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l100 = alloca i1
  %l101 = alloca i1
  %l105 = alloca i1
  %l106 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca ptr
  %l112 = alloca i32
  %l115 = alloca %"compiler/source:Span"
  %l116 = alloca ptr
  %l129 = alloca ptr
  %l130 = alloca %"compiler/source:Span"
  %l132 = alloca i32
  %l133 = alloca i64
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l138 = alloca i32
  %l139 = alloca ptr
  %l140 = alloca %"compiler/source:Span"
  %l142 = alloca i32
  %l143 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l149 = alloca i32
  %l150 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l155 = alloca i32
  %l156 = alloca ptr
  %l157 = alloca %"compiler/source:Span"
  %l159 = alloca i32
  %l160 = alloca i32
  %l164 = alloca ptr
  %l165 = alloca ptr
  %l171 = alloca i1
  %l176 = alloca i32
  %l178 = alloca i1
  %l181 = alloca ptr
  %l186 = alloca i32
  %l187 = alloca i32
  %l190 = alloca ptr
  %l193 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca i64
  %l212 = alloca ptr
  %l221 = alloca i32
  %l226 = alloca i32
  %l230 = alloca ptr
  %l235 = alloca i32
  %l236 = alloca { i64, ptr }
  %l242 = alloca i64
  %l245 = alloca i64
  %l264 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l268 = alloca i1
  %l269 = alloca i1
  %l272 = alloca ptr
  %l276 = alloca { i64, ptr }
  %l279 = alloca i32
  %l280 = alloca { i64, ptr }
  %l294 = alloca ptr
  %l297 = alloca %"compiler/source:Span"
  %l300 = alloca { i64, ptr }
  %l302 = alloca %"compiler/diagmsg:Msg"
  %l303 = alloca i64
  %l308 = alloca i64
  %l312 = alloca i64
  %l315 = alloca i1
  %l318 = alloca i1
  %l322 = alloca i1
  %l346 = alloca i64
  %l349 = alloca ptr
  %l350 = alloca %"compiler/source:Span"
  %l353 = alloca %"compiler/source:Span"
  %l354 = alloca i64
  %l356 = alloca ptr
  %l359 = alloca { i64, ptr }
  %l362 = alloca { i64, ptr }
  %l366 = alloca ptr
  %l367 = alloca ptr
  %l368 = alloca ptr
  %l371 = alloca i32
  %l372 = alloca i32
  %l373 = alloca i64
  %l376 = alloca ptr
  %l379 = alloca %"compiler/source:Span"
  %l392 = alloca i64
  %l395 = alloca i64
  %l398 = alloca i1
  %l401 = alloca ptr
  %l404 = alloca ptr
  %l408 = alloca i32
  %l409 = alloca i32
  %l410 = alloca { i64, ptr }
  %l414 = alloca ptr
  %l415 = alloca ptr
  %l420 = alloca i1
  %l435 = alloca i1
  %l437 = alloca ptr
  %l440 = alloca %"compiler/source:Span"
  %l441 = alloca i32
  %l444 = alloca { i64, ptr }
  %l446 = alloca %"compiler/diagmsg:Msg"
  %l447 = alloca i64
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  %t196 = alloca { i64, [3 x i64] }, align 8
  %t235 = alloca { i64, [3 x i64] }, align 8
  %t283 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:ForIn", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  store ptr %t6, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t7 = load ptr, ptr %l32, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l32, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 24
  store i1 %t13, ptr %l33, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l33, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t17, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load %"compiler/source:Span", ptr %l1
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t26 = load i32, ptr %l4, !tbaa !23
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforRange(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v3, ptr %t21, %"compiler/source:Span" %t22, ptr %t23, { i64, ptr } %t24, ptr %t25, i32 %t26)
  store ptr %t33, ptr %l44
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t34 = load ptr, ptr %l44, !tbaa !29
  store ptr %t34, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1c0ab263f2e4f7dc_3e069dbdc7ae0b68)
  unreachable
bb12:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:ForIn", ptr %t35, i32 0, i32 3
  %t38 = load i1, ptr %t37, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t40)
  store ptr %t42, ptr %l48
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t43 = load ptr, ptr %l48, !tbaa !29
  store ptr %t43, ptr %l49, !tbaa !29
  %t44 = load ptr, ptr %l49, !tbaa !29
  %t45 = getelementptr %"compiler/check:frame", ptr %t44, i32 0, i32 15
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = add i64 %t46, 1
  %t50 = load ptr, ptr %l49, !tbaa !29
  %t51 = getelementptr %"compiler/check:frame", ptr %t50, i32 0, i32 15
  store i64 %t48, ptr %t51, !tbaa !24
  br label %bb16
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:ForIn", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t62 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t52, ptr %t56, i32 %t58)
  store ptr %t62, ptr %l57
  br label %bb17
bb17:
  %t63 = load ptr, ptr %l57, !tbaa !29
  store ptr %t63, ptr %l7, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/ast:ForIn", ptr %t64, i32 0, i32 3
  %t67 = load i1, ptr %t66, !tbaa !21
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t69)
  store ptr %t71, ptr %l61
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t72 = load ptr, ptr %l61, !tbaa !29
  store ptr %t72, ptr %l62, !tbaa !29
  %t73 = load ptr, ptr %l62, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t73, i32 0, i32 15
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = sub i64 %t75, 1
  %t79 = load ptr, ptr %l62, !tbaa !29
  %t80 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 15
  store i64 %t77, ptr %t80, !tbaa !24
  br label %bb21
bb21:
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t84 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t81)
  store i32 %t84, ptr %l67
  br label %bb22
bb22:
  %t85 = load i32, ptr %l67, !tbaa !23
  store i32 %t85, ptr %l8, !tbaa !23
  %t86 = load i32, ptr %l8, !tbaa !23
  %t87 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t90 = icmp eq i32 %t86, %t87
  br i1 %t90, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l8, !tbaa !23
  %t97 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l74
  br label %bb26
bb26:
  %t98 = load i32, ptr %l74, !tbaa !23
  store i32 %t98, ptr %l9, !tbaa !23
  %t99 = load i32, ptr %l9, !tbaa !23
  %t100 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t103 = icmp ne i32 %t99, %t100
  br i1 %t103, label %bb27, label %bb28
bb27:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l8, !tbaa !23
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t105, i32 %t106)
  store i1 %t109, ptr %l80
  br label %bb29
bb28:
  br label %bb75
bb29:
  %t110 = load i1, ptr %l80, !tbaa !21
  br i1 %t110, label %bb30, label %bb31
bb30:
  %t111 = load i32, ptr %l8, !tbaa !23
  store i32 %t111, ptr %l81, !tbaa !23
  br label %bb33
bb31:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l8, !tbaa !23
  %t120 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t118, i32 %t119, i64 %t120)
  store i32 %t124, ptr %l88
  br label %bb32
bb32:
  %t125 = load i32, ptr %l88, !tbaa !23
  store i32 %t125, ptr %l81, !tbaa !23
  br label %bb33
bb33:
  %t126 = load i32, ptr %l81, !tbaa !23
  store i32 %t126, ptr %l10, !tbaa !23
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l1
  %t129 = load i32, ptr %l10, !tbaa !23
  %t133 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t127, %"compiler/source:Span" %t128, i32 %t129)
  store i64 %t133, ptr %l92
  br label %bb34
bb34:
  %t134 = load i64, ptr %l92, !tbaa !24
  store i64 %t134, ptr %l11, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 81
  store ptr %t137, ptr %l94, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t138, i64 %t139)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t142, ptr %l97
  br label %bb35
bb35:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l8, !tbaa !23
  %t147 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t143, i32 %t144)
  store i1 %t147, ptr %l100
  br label %bb36
bb36:
  %t148 = load i1, ptr %l100, !tbaa !21
  br i1 %t148, label %bb37, label %bb38
bb37:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l7, !tbaa !29
  %t154 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v0, ptr %t149, ptr %t150)
  store i1 %t154, ptr %l105
  br label %bb39
bb38:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l106, !tbaa !29
  %t156 = load ptr, ptr %l7, !tbaa !29
  %t158 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v0, ptr %t156)
  store ptr %t158, ptr %l108
  br label %bb40
bb39:
  %t159 = load i1, ptr %l105, !tbaa !21
  store i1 %t159, ptr %l101, !tbaa !21
  br label %bb42
bb40:
  %t160 = load ptr, ptr %l106, !tbaa !29
  %t161 = load ptr, ptr %l108, !tbaa !29
  %t162 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v0, ptr %t160, ptr %t161)
  store i1 %t162, ptr %l109
  br label %bb41
bb41:
  %t163 = load i1, ptr %l109, !tbaa !21
  store i1 %t163, ptr %l101, !tbaa !21
  br label %bb42
bb42:
  %t164 = load ptr, ptr %l94, !tbaa !29
  %t165 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l97
  %t166 = load i1, ptr %l101, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t164, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t165, i1 %t166)
  br label %bb43
bb43:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l110, !tbaa !29
  %t168 = load ptr, ptr %l7, !tbaa !29
  store ptr %t168, ptr %l111, !tbaa !29
  %t169 = load i32, ptr %l10, !tbaa !23
  store i32 %t169, ptr %l112, !tbaa !23
  %t170 = load ptr, ptr %l2, !tbaa !29
  %t172 = getelementptr %"compiler/ast:ForIn", ptr %t170, i32 0, i32 2
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t173)
  store %"compiler/source:Span" %t175, ptr %l115
  br label %bb44
bb44:
  %t176 = load ptr, ptr %l110, !tbaa !29
  %t177 = load ptr, ptr %l111, !tbaa !29
  %t178 = load i32, ptr %l112, !tbaa !23
  %t179 = load %"compiler/source:Span", ptr %l115
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t176, ptr %t177, i32 %t178, %"compiler/source:Span" %t179)
  store ptr %t180, ptr %l116
  br label %bb45
bb45:
  %t181 = load ptr, ptr %l116, !tbaa !29
  store ptr %t181, ptr %l12, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i64, ptr %l11, !tbaa !24
  %t184 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v0, ptr %t182, i64 %t183, ptr %t184)
  br label %bb46
bb46:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l1
  %t191 = load i64, ptr %l11, !tbaa !24
  %t193 = trunc i64 %t191 to i32
  %t195 = load ptr, ptr %l12, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [3 x i64] }, ptr %t196, i32 0, i32 0
  store i64 0, ptr %t197
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t190, 0
  %t201 = insertvalue { %"compiler/source:Span", i32, ptr } %t199, i32 %t193, 1
  %t203 = insertvalue { %"compiler/source:Span", i32, ptr } %t201, ptr %t195, 2
  %t204 = getelementptr { i64, [3 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t203, ptr %t204
  %t205 = load { i64, [3 x i64] }, ptr %t196
  %t207 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t205, ptr %t207
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t189, ptr %t207)
  br label %bb47
bb47:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l129, !tbaa !29
  %t211 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t211, ptr %l130
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t212)
  store i32 %t214, ptr %l132
  br label %bb48
bb48:
  %t215 = load ptr, ptr %l129, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l130
  %t217 = load i32, ptr %l132, !tbaa !23
  %t218 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t215, %"compiler/source:Span" %t216, i32 %t217)
  store i64 %t218, ptr %l133
  br label %bb49
bb49:
  %t219 = load i64, ptr %l133, !tbaa !24
  store i64 %t219, ptr %l13, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l134, !tbaa !29
  %t221 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t221, ptr %l135
  %t222 = load i64, ptr %l13, !tbaa !24
  %t224 = trunc i64 %t222 to i32
  store i32 %t224, ptr %l138, !tbaa !23
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l139, !tbaa !29
  %t227 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t227, ptr %l140
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t228)
  store i32 %t230, ptr %l142
  br label %bb50
bb50:
  %t231 = load ptr, ptr %l139, !tbaa !29
  %t232 = load %"compiler/source:Span", ptr %l140
  %t233 = load i32, ptr %l142, !tbaa !23
  %t234 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t231, %"compiler/source:Span" %t232, i32 %t233, i64 0)
  store ptr %t234, ptr %l143
  br label %bb51
bb51:
  store { i64, [3 x i64] } zeroinitializer, ptr %t235
  %t236 = getelementptr { i64, [3 x i64] }, ptr %t235, i32 0, i32 0
  store i64 0, ptr %t236
  %t237 = load %"compiler/source:Span", ptr %l135
  %t238 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t237, 0
  %t239 = load i32, ptr %l138, !tbaa !23
  %t240 = insertvalue { %"compiler/source:Span", i32, ptr } %t238, i32 %t239, 1
  %t241 = load ptr, ptr %l143, !tbaa !29
  %t242 = insertvalue { %"compiler/source:Span", i32, ptr } %t240, ptr %t241, 2
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t235, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t242, ptr %t243
  %t244 = load { i64, [3 x i64] }, ptr %t235
  %t246 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t244, ptr %t246
  %t247 = load ptr, ptr %l134, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t247, ptr %t246)
  br label %bb52
bb52:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l146, !tbaa !29
  %t250 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t250, ptr %l147
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t251)
  store i32 %t253, ptr %l149
  br label %bb53
bb53:
  %t254 = load ptr, ptr %l146, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l147
  %t256 = load i32, ptr %l149, !tbaa !23
  %t257 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t254, %"compiler/source:Span" %t255, i32 %t256)
  store i64 %t257, ptr %l150
  br label %bb54
bb54:
  %t258 = load i64, ptr %l150, !tbaa !24
  store i64 %t258, ptr %l14, !tbaa !24
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l151, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t260, ptr %l152
  %t261 = load i64, ptr %l14, !tbaa !24
  %t263 = trunc i64 %t261 to i32
  store i32 %t263, ptr %l155, !tbaa !23
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l156, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t266, ptr %l157
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t267)
  store i32 %t269, ptr %l159
  br label %bb55
bb55:
  store i32 22, ptr %l160
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load %"compiler/source:Span", ptr %l1
  %t272 = load i64, ptr %l11, !tbaa !24
  %t276 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t270, %"compiler/source:Span" %t271, i64 %t272)
  store ptr %t276, ptr %l164
  br label %bb56
bb56:
  %t277 = load ptr, ptr %l156, !tbaa !29
  %t278 = load %"compiler/source:Span", ptr %l157
  %t279 = load i32, ptr %l159, !tbaa !23
  %t280 = load i32, ptr %l160, !range !{i32 0, i32 52}
  %t281 = load ptr, ptr %l164, !tbaa !29
  %t282 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t277, %"compiler/source:Span" %t278, i32 %t279, i32 %t280, ptr %t281, ptr null)
  store ptr %t282, ptr %l165
  br label %bb57
bb57:
  store { i64, [3 x i64] } zeroinitializer, ptr %t283
  %t284 = getelementptr { i64, [3 x i64] }, ptr %t283, i32 0, i32 0
  store i64 0, ptr %t284
  %t285 = load %"compiler/source:Span", ptr %l152
  %t286 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t285, 0
  %t287 = load i32, ptr %l155, !tbaa !23
  %t288 = insertvalue { %"compiler/source:Span", i32, ptr } %t286, i32 %t287, 1
  %t289 = load ptr, ptr %l165, !tbaa !29
  %t290 = insertvalue { %"compiler/source:Span", i32, ptr } %t288, ptr %t289, 2
  %t291 = getelementptr { i64, [3 x i64] }, ptr %t283, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t290, ptr %t291
  %t292 = load { i64, [3 x i64] }, ptr %t283
  %t294 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t292, ptr %t294
  %t295 = load ptr, ptr %l151, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t295, ptr %t294)
  br label %bb58
bb58:
  %t297 = load ptr, ptr %l3, !tbaa !29
  %t299 = icmp eq ptr %t297, null
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb59, label %bb60
bb59:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/check:Checker", ptr %t303, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !29
  %t308 = getelementptr %"compiler/generic:Program", ptr %t306, i32 0, i32 2
  %t309 = load i32, ptr %l9, !tbaa !23
  %t312 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t308, i32 %t309)
  store i32 %t312, ptr %l176
  br label %bb61
bb60:
  store i1 false, ptr %l171, !tbaa !21
  br label %bb62
bb61:
  %t313 = load i32, ptr %l176, !tbaa !23
  %t314 = icmp ne i32 %t313, 0
  store i1 %t314, ptr %l171, !tbaa !21
  br label %bb62
bb62:
  %t316 = load i1, ptr %l171, !tbaa !21
  br i1 %t316, label %bb63, label %bb64
bb63:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/check:Checker", ptr %t317, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !29
  %t322 = getelementptr %"compiler/generic:Program", ptr %t320, i32 0, i32 2
  store ptr %t322, ptr %l181, !tbaa !29
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/check:Checker", ptr %t323, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !29
  %t328 = getelementptr %"compiler/generic:Program", ptr %t326, i32 0, i32 2
  %t329 = load i32, ptr %l9, !tbaa !23
  %t332 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t328, i32 %t329)
  store i32 %t332, ptr %l186
  br label %bb65
bb64:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb67
bb65:
  %t333 = load ptr, ptr %l181, !tbaa !29
  %t334 = load i32, ptr %l186, !tbaa !23
  %t335 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t333, i32 %t334)
  store i32 %t335, ptr %l187
  br label %bb66
bb66:
  %t336 = load i32, ptr %l187, !range !{i32 0, i32 33}
  %t338 = trunc i64 26 to i32
  %t339 = icmp eq i32 %t336, %t338
  store i1 %t339, ptr %l178, !tbaa !21
  br label %bb67
bb67:
  %t341 = load i1, ptr %l178, !tbaa !21
  br i1 %t341, label %bb68, label %bb69
bb68:
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l190, !tbaa !29
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/check:Checker", ptr %t343, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t348 = getelementptr %"compiler/generic:Program", ptr %t346, i32 0, i32 2
  store ptr %t348, ptr %l193, !tbaa !29
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/check:Checker", ptr %t349, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = getelementptr %"compiler/generic:Program", ptr %t352, i32 0, i32 2
  %t355 = load i32, ptr %l9, !tbaa !23
  %t358 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t354, i32 %t355)
  store i32 %t358, ptr %l198
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t359 = load ptr, ptr %l193, !tbaa !29
  %t360 = load i32, ptr %l198, !tbaa !23
  %t361 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t359, i32 %t360)
  store i64 %t361, ptr %l199
  br label %bb71
bb71:
  %t362 = load i64, ptr %l199, !tbaa !24
  %t363 = load ptr, ptr %l190, !tbaa !29
  %t364 = getelementptr %"compiler/check:Checker", ptr %t363, i32 0, i32 124
  store i64 %t362, ptr %t364, !tbaa !24
  br label %bb72
bb72:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load %"compiler/source:Span", ptr %l1
  %t367 = load ptr, ptr %l2, !tbaa !29
  %t368 = load i64, ptr %l13, !tbaa !24
  %t369 = load i64, ptr %l14, !tbaa !24
  %t370 = load i64, ptr %l11, !tbaa !24
  %t371 = load i32, ptr %l9, !tbaa !23
  %t372 = load ptr, ptr %l3, !tbaa !29
  %t373 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecounted(ptr %v0, ptr %v1, ptr %v2, ptr %t365, %"compiler/source:Span" %t366, ptr %t367, i64 %t368, i64 %t369, i64 %t370, i32 %t371, i64 -1, i64 -1, ptr %t372, i32 %t373)
  br label %bb73
bb73:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load %"compiler/source:Span", ptr %l1
  %t385 = load i64, ptr %l14, !tbaa !24
  %t389 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t383, %"compiler/source:Span" %t384, i64 %t385)
  store ptr %t389, ptr %l212
  br label %bb74
bb74:
  %t390 = load ptr, ptr %l212, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t390, ptr %rv
  br label %ret
bb75:
  %t392 = load ptr, ptr %l3, !tbaa !29
  %t394 = icmp eq ptr %t392, null
  %t396 = xor i1 %t394, true
  br i1 %t396, label %bb76, label %bb77
bb76:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %t398, %"compiler/source:Span" %t399)
  br label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb79
bb79:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load i32, ptr %l8, !tbaa !23
  %t406 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t402, i32 %t403)
  store i32 %t406, ptr %l221
  br label %bb80
bb80:
  %t407 = load i32, ptr %l221, !tbaa !23
  store i32 %t407, ptr %l15, !tbaa !23
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/check:Checker", ptr %t408, i32 0, i32 1
  %t411 = load ptr, ptr %t410, !tbaa !29
  %t413 = getelementptr %"compiler/generic:Program", ptr %t411, i32 0, i32 2
  %t414 = load i32, ptr %l15, !tbaa !23
  %t417 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t413, i32 %t414)
  store i32 %t417, ptr %l226
  br label %bb81
bb81:
  %t418 = load i32, ptr %l226, !range !{i32 0, i32 33}
  %t420 = trunc i64 29 to i32
  %t421 = icmp eq i32 %t418, %t420
  br i1 %t421, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s9
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/check:Checker", ptr %t423, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !29
  store ptr %t426, ptr %l230, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  %t433 = load i32, ptr %l15, !tbaa !23
  %t436 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l235
  br label %bb84
bb83:
  br label %bb113
bb84:
  %t437 = load ptr, ptr %l230, !tbaa !29
  %t438 = load i32, ptr %l235, !tbaa !23
  %t439 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t437, i32 %t438)
  store { i64, ptr } %t439, ptr %l236
  br label %bb85
bb85:
  %t440 = load { i64, ptr }, ptr %l236, !tbaa !27
  store { i64, ptr } %t440, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t441 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t441, 0
  store i64 %t443, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t445 = load i64, ptr %l18, !tbaa !24
  %t446 = load i64, ptr %l17, !tbaa !24
  %t449 = icmp sgt i64 %t445, %t446
  br i1 %t449, label %bb86, label %bb87
bb86:
  %t451 = load i64, ptr %l19, !tbaa !24
  %t453 = icmp sgt i64 %t451, 0
  br i1 %t453, label %bb88, label %bb89
bb87:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb91
bb88:
  %t455 = load i64, ptr %l18, !tbaa !24
  %t456 = load i64, ptr %l17, !tbaa !24
  %t459 = sub i64 %t455, %t456
  %t460 = load i64, ptr %l19, !tbaa !24
  %t463 = add i64 %t459, %t460
  %t465 = sub i64 %t463, 1
  %t466 = load i64, ptr %l19, !tbaa !24
  %t469 = sdiv i64 %t465, %t466
  store i64 %t469, ptr %l245, !tbaa !24
  br label %bb90
bb89:
  store i64 0, ptr %l245, !tbaa !24
  br label %bb90
bb90:
  %t471 = load i64, ptr %l245, !tbaa !24
  store i64 %t471, ptr %l242, !tbaa !24
  br label %bb91
bb91:
  %t472 = load i64, ptr %l242, !tbaa !24
  store i64 %t472, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb92
bb92:
  store %olang.scope zeroinitializer, ptr %s11
  %t473 = load i64, ptr %l21, !tbaa !24
  %t474 = load i64, ptr %l20, !tbaa !24
  %t477 = icmp slt i64 %t473, %t474
  %t479 = xor i1 %t477, true
  br i1 %t479, label %bb93, label %bb94
bb93:
  call void @__olang_scope_close(ptr %s11)
  br label %bb108
bb94:
  br label %bb95
bb95:
  %t481 = load i64, ptr %l17, !tbaa !24
  %t482 = load i64, ptr %l21, !tbaa !24
  %t483 = load i64, ptr %l19, !tbaa !24
  %t486 = mul i64 %t482, %t483
  %t489 = add i64 %t481, %t486
  store i64 %t489, ptr %l22, !tbaa !24
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t492, ptr %l264, !tbaa !27
  %t493 = load i64, ptr %l22, !tbaa !24
  %t495 = getelementptr { i64, ptr }, ptr %l264, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = getelementptr %"compiler/generic:AnySlot", ptr %t496, i64 %t493
  %t498 = getelementptr %"compiler/generic:AnySlot", ptr %t497, i32 0, i32 0
  %t499 = load i32, ptr %t498, !tbaa !23
  %t502 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t491, i32 %t499)
  store { i64, ptr } %t502, ptr %l267
  br label %bb96
bb96:
  %t503 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t504 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s11, { i64, ptr } %t503, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t504, ptr %l268
  br label %bb97
bb97:
  %t505 = load i1, ptr %l268, !tbaa !21
  br i1 %t505, label %bb98, label %bb99
bb98:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t508 = getelementptr %"compiler/check:Checker", ptr %t506, i32 0, i32 1
  %t509 = load ptr, ptr %t508, !tbaa !29
  %t511 = getelementptr %"compiler/generic:Program", ptr %t509, i32 0, i32 2
  store ptr %t511, ptr %l272, !tbaa !29
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr %"compiler/check:Checker", ptr %t512, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !29
  %t517 = getelementptr %"compiler/generic:Program", ptr %t515, i32 0, i32 2
  %t518 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t518, ptr %l276, !tbaa !27
  %t519 = load i64, ptr %l22, !tbaa !24
  %t521 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr %"compiler/generic:AnySlot", ptr %t522, i64 %t519
  %t524 = getelementptr %"compiler/generic:AnySlot", ptr %t523, i32 0, i32 5
  %t525 = load i32, ptr %t524, !tbaa !23
  %t528 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t517, i32 %t525)
  store i32 %t528, ptr %l279
  br label %bb100
bb99:
  store i1 false, ptr %l269, !tbaa !21
  br label %bb102
bb100:
  %t529 = load ptr, ptr %l272, !tbaa !29
  %t530 = load i32, ptr %l279, !tbaa !23
  %t531 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s11, ptr %t529, i32 %t530)
  store { i64, ptr } %t531, ptr %l280
  br label %bb101
bb101:
  %t532 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t532, 0
  %t535 = icmp eq i64 %t533, 1
  store i1 %t535, ptr %l269, !tbaa !21
  br label %bb102
bb102:
  %t537 = load i1, ptr %l269, !tbaa !21
  br i1 %t537, label %bb103, label %bb104
bb103:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load %"compiler/source:Span", ptr %l1
  %t540 = load ptr, ptr %l2, !tbaa !29
  %t541 = load ptr, ptr %l7, !tbaa !29
  %t542 = load i64, ptr %l22, !tbaa !24
  %t544 = sub i64 -2, %t542
  %t545 = load ptr, ptr %l3, !tbaa !29
  %t546 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIter(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t538, %"compiler/source:Span" %t539, ptr %t540, ptr %t541, i64 %t544, ptr %t545, i32 %t546)
  br label %bb105
bb104:
  br label %bb106
bb105:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb106:
  call void @__olang_scope_close(ptr %s11)
  br label %bb107
bb107:
  %t555 = load i64, ptr %l21, !tbaa !24
  %t557 = add i64 %t555, 1
  store i64 %t557, ptr %l21, !tbaa !24
  br label %bb92
bb108:
  %t559 = load ptr, ptr %l0, !tbaa !29
  store ptr %t559, ptr %l294, !tbaa !29
  %t560 = load ptr, ptr %l2, !tbaa !29
  %t562 = getelementptr %"compiler/ast:ForIn", ptr %t560, i32 0, i32 2
  %t563 = load ptr, ptr %t562, !tbaa !29
  %t565 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t563)
  store %"compiler/source:Span" %t565, ptr %l297
  br label %bb109
bb109:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load i32, ptr %l8, !tbaa !23
  %t570 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s9, ptr %t566, i32 %t567)
  store { i64, ptr } %t570, ptr %l300
  br label %bb110
bb110:
  %t571 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 0
  %t573 = extractvalue { i64, ptr } %t571, 1
  %t574 = mul i64 %t572, 1
  %t575 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t574)
  call void @llvm.memcpy.p0.p0.i64(ptr %t575, ptr %t573, i64 %t574, i1 false)
  %t576 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t575, 1
  %t579 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIterable(ptr %s9, ptr %s9, { i64, ptr } %t577)
  store %"compiler/diagmsg:Msg" %t579, ptr %l302
  br label %bb111
bb111:
  %t580 = load ptr, ptr %l294, !tbaa !29
  %t581 = load %"compiler/source:Span", ptr %l297
  %t582 = load %"compiler/diagmsg:Msg", ptr %l302
  %t583 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t580, %"compiler/source:Span" %t581, %"compiler/diagmsg:Msg" %t582)
  store i64 %t583, ptr %l303
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb113:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load i32, ptr %l15, !tbaa !23
  %t587 = load %"compiler/source:Span", ptr %l1
  %t591 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s0, ptr %s0, ptr %t585, i32 %t586, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d31, i32 0, i32 1) }, i64 1, %"compiler/source:Span" %t587, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i64 %t591, ptr %l308
  br label %bb114
bb114:
  %t592 = load i64, ptr %l308, !tbaa !24
  store i64 %t592, ptr %l23, !tbaa !24
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load i32, ptr %l15, !tbaa !23
  %t595 = load %"compiler/source:Span", ptr %l1
  %t599 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s0, ptr %s0, ptr %t593, i32 %t594, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, i64 0, %"compiler/source:Span" %t595, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i64 %t599, ptr %l312
  br label %bb115
bb115:
  %t600 = load i64, ptr %l312, !tbaa !24
  store i64 %t600, ptr %l24, !tbaa !24
  %t601 = load i64, ptr %l24, !tbaa !24
  %t603 = icmp sge i64 %t601, 0
  br i1 %t603, label %bb116, label %bb117
bb116:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t606 = load i64, ptr %l24, !tbaa !24
  %t609 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eiterShaped(ptr %v0, ptr %t605, i64 %t606)
  store i1 %t609, ptr %l318
  br label %bb118
bb117:
  store i1 false, ptr %l315, !tbaa !21
  br label %bb119
bb118:
  %t610 = load i1, ptr %l318, !tbaa !21
  %t611 = xor i1 %t610, true
  store i1 %t611, ptr %l315, !tbaa !21
  br label %bb119
bb119:
  %t613 = load i1, ptr %l315, !tbaa !21
  br i1 %t613, label %bb120, label %bb121
bb120:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb122
bb121:
  br label %bb122
bb122:
  %t614 = load i64, ptr %l23, !tbaa !24
  %t616 = icmp sge i64 %t614, 0
  br i1 %t616, label %bb123, label %bb124
bb123:
  %t618 = load i64, ptr %l24, !tbaa !24
  %t620 = icmp slt i64 %t618, 0
  store i1 %t620, ptr %l322, !tbaa !21
  br label %bb125
bb124:
  store i1 false, ptr %l322, !tbaa !21
  br label %bb125
bb125:
  %t622 = load i1, ptr %l322, !tbaa !21
  br i1 %t622, label %bb126, label %bb127
bb126:
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t624 = load %"compiler/source:Span", ptr %l1
  %t625 = load ptr, ptr %l2, !tbaa !29
  %t626 = load ptr, ptr %l7, !tbaa !29
  %t627 = load i64, ptr %l23, !tbaa !24
  %t628 = load ptr, ptr %l3, !tbaa !29
  %t629 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkRuns(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t623, %"compiler/source:Span" %t624, ptr %t625, ptr %t626, i64 %t627, ptr %t628, i32 %t629)
  br label %bb128
bb127:
  br label %bb129
bb128:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb129:
  %t638 = load i64, ptr %l24, !tbaa !24
  %t640 = icmp sge i64 %t638, 0
  br i1 %t640, label %bb130, label %bb131
bb130:
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t643 = load %"compiler/source:Span", ptr %l1
  %t644 = load ptr, ptr %l2, !tbaa !29
  %t645 = load ptr, ptr %l7, !tbaa !29
  %t646 = load i64, ptr %l24, !tbaa !24
  %t647 = load ptr, ptr %l3, !tbaa !29
  %t648 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIter(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t642, %"compiler/source:Span" %t643, ptr %t644, ptr %t645, i64 %t646, ptr %t647, i32 %t648)
  br label %bb132
bb131:
  br label %bb133
bb132:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb133:
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t658 = load i32, ptr %l15, !tbaa !23
  %t659 = load %"compiler/source:Span", ptr %l1
  %t663 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s0, ptr %s0, ptr %t657, i32 %t658, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, i64 0, %"compiler/source:Span" %t659, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i64 %t663, ptr %l346
  br label %bb134
bb134:
  %t664 = load i64, ptr %l346, !tbaa !24
  store i64 %t664, ptr %l25, !tbaa !24
  %t665 = load i64, ptr %l25, !tbaa !24
  %t667 = icmp sge i64 %t665, 0
  br i1 %t667, label %bb135, label %bb136
bb135:
  store %olang.scope zeroinitializer, ptr %s17
  %t669 = load ptr, ptr %l0, !tbaa !29
  store ptr %t669, ptr %l349, !tbaa !29
  %t670 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t670, ptr %l350
  %t671 = load ptr, ptr %l2, !tbaa !29
  %t673 = getelementptr %"compiler/ast:ForIn", ptr %t671, i32 0, i32 2
  %t674 = load ptr, ptr %t673, !tbaa !29
  %t676 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t674)
  store %"compiler/source:Span" %t676, ptr %l353
  br label %bb137
bb136:
  br label %bb160
bb137:
  %t677 = load i64, ptr %l25, !tbaa !24
  store i64 %t677, ptr %l354, !tbaa !24
  %t678 = load ptr, ptr %l7, !tbaa !29
  store ptr %t678, ptr %l356, !tbaa !29
  %t680 = icmp sge i64 0, 0
  br i1 %t680, label %bb138, label %bb139
bb138:
  %t682 = icmp sle i64 0, 1152921504606846975
  br i1 %t682, label %bb140, label %bb141
bb139:
  call void @__olang_check_failed(ptr @olang_loc_139af6e2a2dcda96_1438f6a9e620193a)
  unreachable
bb140:
  %t684 = mul i64 0, 8
  %t685 = insertvalue { i64, ptr } undef, i64 0, 0
  %t686 = insertvalue { i64, ptr } %t685, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t686, ptr %l359, !tbaa !27
  %t687 = icmp sge i64 0, 0
  br i1 %t687, label %bb142, label %bb143
bb141:
  call void @__olang_check_failed(ptr @olang_loc_139af6e2a2dcda96_1438f6a9e620193a)
  unreachable
bb142:
  %t689 = icmp sle i64 0, 1152921504606846975
  br i1 %t689, label %bb144, label %bb145
bb143:
  call void @__olang_check_failed(ptr @olang_loc_139af6e2a2dcda96_1438f6a9e620193a)
  unreachable
bb144:
  %t691 = mul i64 0, 8
  %t692 = insertvalue { i64, ptr } undef, i64 0, 0
  %t693 = insertvalue { i64, ptr } %t692, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t693, ptr %l362, !tbaa !27
  %t694 = icmp sge i64 0, 0
  br i1 %t694, label %bb146, label %bb147
bb145:
  call void @__olang_check_failed(ptr @olang_loc_139af6e2a2dcda96_1438f6a9e620193a)
  unreachable
bb146:
  %t696 = icmp sle i64 0, 2305843009213693951
  br i1 %t696, label %bb148, label %bb149
bb147:
  call void @__olang_check_failed(ptr @olang_loc_a734531b29123b5_def2307fb88201b9)
  unreachable
bb148:
  %t698 = mul i64 0, 4
  %t699 = insertvalue { i64, ptr } undef, i64 0, 0
  %t700 = insertvalue { i64, ptr } %t699, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t701 = load ptr, ptr %l349, !tbaa !29
  %t702 = load %"compiler/source:Span", ptr %l350
  %t703 = load %"compiler/source:Span", ptr %l353
  %t704 = load i64, ptr %l354, !tbaa !24
  %t705 = load ptr, ptr %l356, !tbaa !29
  %t706 = load { i64, ptr }, ptr %l359, !tbaa !27
  %t707 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t709 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t701, %"compiler/source:Span" %t702, %"compiler/source:Span" %t703, i64 %t704, ptr %t705, { i64, ptr } %t706, { i64, ptr } %t707, { i64, ptr } %t700)
  store ptr %t709, ptr %l366
  br label %bb150
bb149:
  call void @__olang_check_failed(ptr @olang_loc_a734531b29123b5_def2307fb88201b9)
  unreachable
bb150:
  %t710 = load ptr, ptr %l366, !tbaa !29
  store ptr %t710, ptr %l26, !tbaa !29
  %t711 = load ptr, ptr %l0, !tbaa !29
  store ptr %t711, ptr %l367, !tbaa !29
  %t712 = load ptr, ptr %l0, !tbaa !29
  store ptr %t712, ptr %l368, !tbaa !29
  %t713 = load ptr, ptr %l26, !tbaa !29
  %t716 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t713)
  store i32 %t716, ptr %l371
  br label %bb151
bb151:
  %t717 = load ptr, ptr %l368, !tbaa !29
  %t718 = load i32, ptr %l371, !tbaa !23
  %t719 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t717, i32 %t718)
  store i32 %t719, ptr %l372
  br label %bb152
bb152:
  %t720 = load ptr, ptr %l367, !tbaa !29
  %t721 = load i32, ptr %l372, !tbaa !23
  %t722 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s17, ptr %t720, i32 %t721, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, i64 0)
  store i64 %t722, ptr %l373
  br label %bb153
bb153:
  %t723 = load i64, ptr %l373, !tbaa !24
  store i64 %t723, ptr %l27, !tbaa !24
  %t724 = load i64, ptr %l27, !tbaa !24
  %t726 = icmp slt i64 %t724, 0
  br i1 %t726, label %bb154, label %bb155
bb154:
  store %olang.scope zeroinitializer, ptr %s18
  %t728 = load ptr, ptr %l0, !tbaa !29
  store ptr %t728, ptr %l376, !tbaa !29
  %t729 = load ptr, ptr %l2, !tbaa !29
  %t731 = getelementptr %"compiler/ast:ForIn", ptr %t729, i32 0, i32 2
  %t732 = load ptr, ptr %t731, !tbaa !29
  %t734 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t732)
  store %"compiler/source:Span" %t734, ptr %l379
  br label %bb156
bb155:
  br label %bb158
bb156:
  %t735 = load ptr, ptr %l376, !tbaa !29
  %t736 = load %"compiler/source:Span", ptr %l379
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s18, ptr %t735, %"compiler/source:Span" %t736, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb158:
  %t738 = load ptr, ptr %l0, !tbaa !29
  %t739 = load %"compiler/source:Span", ptr %l1
  %t740 = load ptr, ptr %l2, !tbaa !29
  %t741 = load ptr, ptr %l26, !tbaa !29
  %t742 = load i64, ptr %l27, !tbaa !24
  %t743 = load ptr, ptr %l3, !tbaa !29
  %t744 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIter(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t738, %"compiler/source:Span" %t739, ptr %t740, ptr %t741, i64 %t742, ptr %t743, i32 %t744)
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb160:
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t754 = load i32, ptr %l15, !tbaa !23
  %t755 = load %"compiler/source:Span", ptr %l1
  %t759 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s0, ptr %s0, ptr %t753, i32 %t754, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, i64 1, %"compiler/source:Span" %t755, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i64 %t759, ptr %l392
  br label %bb161
bb161:
  %t760 = load i64, ptr %l392, !tbaa !24
  store i64 %t760, ptr %l28, !tbaa !24
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t762 = load i32, ptr %l15, !tbaa !23
  %t765 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t761, i32 %t762, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) }, i64 0)
  store i64 %t765, ptr %l395
  br label %bb162
bb162:
  %t766 = load i64, ptr %l395, !tbaa !24
  store i64 %t766, ptr %l29, !tbaa !24
  %t767 = load i64, ptr %l28, !tbaa !24
  %t769 = icmp sge i64 %t767, 0
  br i1 %t769, label %bb163, label %bb164
bb163:
  %t771 = load ptr, ptr %l0, !tbaa !29
  %t773 = getelementptr %"compiler/check:Checker", ptr %t771, i32 0, i32 1
  %t774 = load ptr, ptr %t773, !tbaa !29
  %t776 = getelementptr %"compiler/generic:Program", ptr %t774, i32 0, i32 2
  store ptr %t776, ptr %l401, !tbaa !29
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t779 = getelementptr %"compiler/check:Checker", ptr %t777, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !29
  %t782 = getelementptr %"compiler/generic:Program", ptr %t780, i32 0, i32 2
  store ptr %t782, ptr %l404, !tbaa !29
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t785 = getelementptr %"compiler/check:Checker", ptr %t783, i32 0, i32 1
  %t786 = load ptr, ptr %t785, !tbaa !29
  %t787 = load i64, ptr %l28, !tbaa !24
  %t790 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t786, i64 %t787)
  store i32 %t790, ptr %l408
  br label %bb165
bb164:
  store i1 false, ptr %l398, !tbaa !21
  br label %bb168
bb165:
  %t791 = load ptr, ptr %l404, !tbaa !29
  %t792 = load i32, ptr %l408, !tbaa !23
  %t793 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t791, i32 %t792)
  store i32 %t793, ptr %l409
  br label %bb166
bb166:
  %t794 = load ptr, ptr %l401, !tbaa !29
  %t795 = load i32, ptr %l409, !tbaa !23
  %t796 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t794, i32 %t795)
  store { i64, ptr } %t796, ptr %l410
  br label %bb167
bb167:
  %t797 = load { i64, ptr }, ptr %l410, !tbaa !27
  %t798 = extractvalue { i64, ptr } %t797, 0
  %t800 = icmp sgt i64 %t798, 0
  store i1 %t800, ptr %l398, !tbaa !21
  br label %bb168
bb168:
  %t802 = load i1, ptr %l398, !tbaa !21
  br i1 %t802, label %bb169, label %bb170
bb169:
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t805 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t803)
  store ptr %t805, ptr %l414
  br label %bb171
bb170:
  br label %bb172
bb171:
  %t806 = load ptr, ptr %l414, !tbaa !29
  store ptr %t806, ptr %l415, !tbaa !29
  %t807 = load ptr, ptr %l415, !tbaa !29
  %t808 = getelementptr %"compiler/check:frame", ptr %t807, i32 0, i32 17
  %t809 = load i64, ptr %t808, !tbaa !24
  %t811 = add i64 %t809, 1
  %t813 = load ptr, ptr %l415, !tbaa !29
  %t814 = getelementptr %"compiler/check:frame", ptr %t813, i32 0, i32 17
  store i64 %t811, ptr %t814, !tbaa !24
  br label %bb172
bb172:
  %t815 = load i64, ptr %l28, !tbaa !24
  %t817 = icmp sge i64 %t815, 0
  br i1 %t817, label %bb173, label %bb174
bb173:
  %t819 = load i64, ptr %l29, !tbaa !24
  %t821 = icmp sge i64 %t819, 0
  store i1 %t821, ptr %l420, !tbaa !21
  br label %bb175
bb174:
  store i1 false, ptr %l420, !tbaa !21
  br label %bb175
bb175:
  %t823 = load i1, ptr %l420, !tbaa !21
  br i1 %t823, label %bb176, label %bb177
bb176:
  %t824 = load ptr, ptr %l0, !tbaa !29
  %t825 = load %"compiler/source:Span", ptr %l1
  %t826 = load ptr, ptr %l2, !tbaa !29
  %t827 = load ptr, ptr %l7, !tbaa !29
  %t828 = load i64, ptr %l28, !tbaa !24
  %t829 = load i64, ptr %l29, !tbaa !24
  %t830 = load ptr, ptr %l3, !tbaa !29
  %t831 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIndexed(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t824, %"compiler/source:Span" %t825, ptr %t826, ptr %t827, i64 %t828, i64 %t829, ptr %t830, i32 %t831)
  br label %bb178
bb177:
  br label %bb179
bb178:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb179:
  %t841 = load ptr, ptr %l0, !tbaa !29
  %t842 = load i32, ptr %l15, !tbaa !23
  %t843 = load %"compiler/source:Span", ptr %l1
  %t847 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s0, ptr %s0, ptr %t841, i32 %t842, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) }, %"compiler/source:Span" %t843, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d43, i32 0, i32 1) }, i64 0, i1 false)
  store i1 %t847, ptr %l435
  br label %bb180
bb180:
  %t848 = load i1, ptr %l435, !tbaa !21
  br i1 %t848, label %bb181, label %bb182
bb181:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb182:
  br label %bb183
bb183:
  %t850 = load ptr, ptr %l0, !tbaa !29
  store ptr %t850, ptr %l437, !tbaa !29
  %t851 = load ptr, ptr %l2, !tbaa !29
  %t853 = getelementptr %"compiler/ast:ForIn", ptr %t851, i32 0, i32 2
  %t854 = load ptr, ptr %t853, !tbaa !29
  %t856 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t854)
  store %"compiler/source:Span" %t856, ptr %l440
  br label %bb184
bb184:
  %t857 = load i32, ptr %l8, !tbaa !23
  store i32 %t857, ptr %l441, !tbaa !23
  %t858 = load ptr, ptr %l0, !tbaa !29
  %t859 = load i32, ptr %l8, !tbaa !23
  %t862 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t858, i32 %t859)
  store { i64, ptr } %t862, ptr %l444
  br label %bb185
bb185:
  %t863 = load { i64, ptr }, ptr %l444, !tbaa !27
  %t864 = extractvalue { i64, ptr } %t863, 0
  %t865 = extractvalue { i64, ptr } %t863, 1
  %t866 = mul i64 %t864, 1
  %t867 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t866)
  call void @llvm.memcpy.p0.p0.i64(ptr %t867, ptr %t865, i64 %t866, i1 false)
  %t868 = insertvalue { i64, ptr } undef, i64 %t864, 0
  %t869 = insertvalue { i64, ptr } %t868, ptr %t867, 1
  %t871 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIterable(ptr %s0, ptr %s0, { i64, ptr } %t869)
  store %"compiler/diagmsg:Msg" %t871, ptr %l446
  br label %bb186
bb186:
  %t872 = load ptr, ptr %l437, !tbaa !29
  %t873 = load %"compiler/source:Span", ptr %l440
  %t874 = load i32, ptr %l441, !tbaa !23
  %t875 = load %"compiler/diagmsg:Msg", ptr %l446
  %t876 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s0, ptr %s0, ptr %t872, %"compiler/source:Span" %t873, i32 %t874, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d44, i32 0, i32 1) }, %"compiler/diagmsg:Msg" %t875)
  store i64 %t876, ptr %l447
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2eholds(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i32
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l36 = alloca i32
  %l39 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca i32
  %l51 = alloca { i64, ptr }
  %l53 = alloca i1
  %l56 = alloca ptr
  %l59 = alloca i1
  %l60 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l68 = alloca i1
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:collWalk", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t12, ptr %t13, i32 %a1)
  store i32 %t15, ptr %l11
  br label %bb1
bb1:
  %t16 = load i32, ptr %l11, !tbaa !23
  store i32 %t16, ptr %l4, !tbaa !23
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t17, 16
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb5
bb3:
  %t21 = load i32, ptr %l4, !tbaa !23
  store i32 %t21, ptr %l15, !tbaa !23
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:collWalk", ptr %t23, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = call ptr @__olang_scope_or(ptr %v1, ptr %t27)
  %t29 = ptrtoint ptr %t28 to i64
  %t31 = inttoptr i64 %t29 to ptr
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t31, ptr %t32, i32 %t26)
  store i32 %t34, ptr %l20
  br label %bb4
bb4:
  %t35 = load i32, ptr %l15, !tbaa !23
  %t36 = load i32, ptr %l20, !tbaa !23
  %t37 = icmp eq i32 %t35, %t36
  store i1 %t37, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t39 = load i1, ptr %l14, !tbaa !21
  br i1 %t39, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l3, !tbaa !29
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load i32, ptr %l4, !tbaa !23
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t44 = call ptr @__olang_scope_or(ptr %v1, ptr %t43)
  %t45 = ptrtoint ptr %t44 to i64
  %t47 = inttoptr i64 %t45 to ptr
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t47, ptr %t48, i32 %t42)
  store i32 %t50, ptr %l26
  br label %bb9
bb9:
  %t51 = load i32, ptr %l26, !range !{i32 0, i32 33}
  store i32 %t51, ptr %l5
  %t52 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t54 = trunc i64 25 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb43
bb13:
  %t57 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t59 = trunc i64 19 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l32, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  %t64 = load i32, ptr %l4, !tbaa !23
  %t65 = load ptr, ptr %l33, !tbaa !29
  %t66 = call ptr @__olang_scope_or(ptr %v1, ptr %t65)
  %t67 = ptrtoint ptr %t66 to i64
  %t69 = inttoptr i64 %t67 to ptr
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t69, ptr %t70, i32 %t64)
  store i32 %t72, ptr %l36
  br label %bb17
bb17:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t75 = add i64 %t73, 1
  %t76 = load ptr, ptr %l32, !tbaa !29
  %t77 = load i32, ptr %l36, !tbaa !23
  %t79 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2eholds(ptr %v0, ptr %v1, ptr %t76, i32 %t77, i64 %t75)
  store i1 %t79, ptr %l39
  br label %bb18
bb18:
  %t80 = load i1, ptr %l39, !tbaa !21
  store i1 %t80, ptr %l27, !tbaa !21
  br label %bb43
bb19:
  %t81 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t83 = trunc i64 22 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  %t86 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t88 = trunc i64 23 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb28
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l44, !tbaa !29
  %t92 = load ptr, ptr %l3, !tbaa !29
  store ptr %t92, ptr %l45, !tbaa !29
  %t93 = load ptr, ptr %l3, !tbaa !29
  store ptr %t93, ptr %l46, !tbaa !29
  %t94 = load i32, ptr %l4, !tbaa !23
  %t95 = load ptr, ptr %l46, !tbaa !29
  %t96 = call ptr @__olang_scope_or(ptr %v1, ptr %t95)
  %t97 = ptrtoint ptr %t96 to i64
  %t99 = inttoptr i64 %t97 to ptr
  %t100 = load ptr, ptr %l46, !tbaa !29
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t99, ptr %t100, i32 %t94)
  store i32 %t102, ptr %l49
  br label %bb25
bb25:
  %t103 = load ptr, ptr %l45, !tbaa !29
  %t104 = call ptr @__olang_scope_or(ptr %v1, ptr %t103)
  %t105 = ptrtoint ptr %t104 to i64
  %t107 = inttoptr i64 %t105 to ptr
  %t108 = load ptr, ptr %l45, !tbaa !29
  %t109 = load i32, ptr %l49, !tbaa !23
  %t110 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t107, ptr %s4, ptr %t108, i32 %t109)
  store { i64, ptr } %t110, ptr %l51
  br label %bb26
bb26:
  %t111 = load i64, ptr %l2, !tbaa !24
  %t112 = load ptr, ptr %l44, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t115 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esomeHolds(ptr %v0, ptr %s4, ptr %v1, ptr %t112, { i64, ptr } %t113, i64 %t111)
  store i1 %t115, ptr %l53
  br label %bb27
bb27:
  %t116 = load i1, ptr %l53, !tbaa !21
  store i1 %t116, ptr %l27, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb43
bb28:
  %t117 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t119 = trunc i64 18 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb38
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t122 = load ptr, ptr %l3, !tbaa !29
  store ptr %t122, ptr %l56, !tbaa !29
  %t123 = load i32, ptr %l4, !tbaa !23
  %t124 = load ptr, ptr %l56, !tbaa !29
  %t125 = call ptr @__olang_scope_or(ptr %v1, ptr %t124)
  %t126 = ptrtoint ptr %t125 to i64
  %t128 = inttoptr i64 %t126 to ptr
  %t129 = load ptr, ptr %l56, !tbaa !29
  %t131 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %t128, ptr %t129, i32 %t123)
  store i1 %t131, ptr %l59
  br label %bb32
bb32:
  %t132 = load i1, ptr %l59, !tbaa !21
  br i1 %t132, label %bb33, label %bb34
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l61, !tbaa !29
  %t134 = load ptr, ptr %l3, !tbaa !29
  store ptr %t134, ptr %l62, !tbaa !29
  %t135 = load i32, ptr %l4, !tbaa !23
  %t136 = load ptr, ptr %l62, !tbaa !29
  %t137 = call ptr @__olang_scope_or(ptr %v1, ptr %t136)
  %t138 = ptrtoint ptr %t137 to i64
  %t140 = inttoptr i64 %t138 to ptr
  %t141 = load ptr, ptr %l62, !tbaa !29
  %t143 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %t140, ptr %s5, ptr %t141, i32 %t135)
  store { i64, ptr } %t143, ptr %l65
  br label %bb35
bb34:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb37
bb35:
  %t144 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 4
  %t148 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load i64, ptr %l2, !tbaa !24
  %t152 = load ptr, ptr %l61, !tbaa !29
  %t155 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esomeHolds(ptr %v0, ptr %s5, ptr %v1, ptr %t152, { i64, ptr } %t150, i64 %t151)
  store i1 %t155, ptr %l68
  br label %bb36
bb36:
  %t156 = load i1, ptr %l68, !tbaa !21
  store i1 %t156, ptr %l60, !tbaa !21
  br label %bb37
bb37:
  %t157 = load i1, ptr %l60, !tbaa !21
  store i1 %t157, ptr %l27, !tbaa !21
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_d5cbe87213397023_e63da241b79e21f)
  unreachable
bb43:
  %t158 = load i1, ptr %l27, !tbaa !21
  store i1 %t158, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2etempUnder(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l19 = alloca ptr
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l3, !tbaa !29
  br label %bb18
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call ptr @compiler_2fcheck_2etempUnder(ptr %v0, ptr %v1, ptr %t34)
  store ptr %t36, ptr %l19
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l19, !tbaa !29
  store ptr %t37, ptr %l3, !tbaa !29
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store ptr null, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_74af738f4d64f689_e986ed633af561bd)
  unreachable
bb18:
  %t38 = load ptr, ptr %l3, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2etestLoad(ptr %out, ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %l9 = alloca i32
  %l11 = alloca i1
  %l14 = alloca %"compiler/cond:Consts"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l29 = alloca %"compiler/fetch:Fetcher"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca %"compiler/source:Names"
  %l34 = alloca ptr
  %l35 = alloca %"compiler/diag:Diagnostics"
  %l37 = alloca %"compiler/load:Loader"
  %l42 = alloca i64
  %l43 = alloca %"compiler/load:Loader"
  %s0 = alloca %olang.scope
  %t35 = alloca %"compiler/cond:Consts", align 8
  %t108 = alloca %"compiler/fetch:Fetcher", align 8
  %t132 = alloca %"compiler/diag:Diagnostics", align 8
  %t134 = alloca %"compiler/load:Loader", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t23 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v1, { i64, ptr } %t18, { i64, ptr } %a1)
  store i32 %t23, ptr %l9
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb2, label %ok.25, !prof !99
ok.25:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t26 = load i32, ptr %l9, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l11, !tbaa !21
  %t30 = load i32, ptr %l9, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @compiler_2fcond_3aConsts_2ector(ptr %t35, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t35, i64 224, i1 false)
  br label %bb7
bb7:
  %t36 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 224, i64 8)
  store ptr %t36, ptr %lp2
  %t37 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %l14, i64 224, i1 false)
  %t38 = load ptr, ptr %lp2
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t38, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d47, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
  br label %bb8
bb8:
  %t40 = load ptr, ptr %lp2
  store ptr %t40, ptr %l16, !tbaa !29
  %t41 = ptrtoint ptr %v2 to i64
  store i64 %t41, ptr %l17, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e2
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = call ptr @__olang_region_make(ptr %v2)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l17, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l17
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l19, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load i64, ptr %l17
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_region_make(ptr %t52)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load i64, ptr %l19
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t57, i64 %t58)
  %t65 = getelementptr i8, ptr %t64, i64 %t58
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = load i64, ptr %l19
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = extractvalue { i64, ptr } %t67, 0
  %t72 = extractvalue { i64, ptr } %t67, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l23, !tbaa !27
  %t77 = load i64, ptr %l17
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l24, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1
  br i1 %t80, label %bb13, label %bb14
bb13:
  %t82 = load i64, ptr %l17
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call ptr @__olang_region_make(ptr %t83)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l24, !tbaa !24
  br label %bb14
bb14:
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = extractvalue { i64, ptr } %t86, 0
  %t90 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = load i64, ptr %l24
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t92)
  call void @olang_textcopy(ptr %t95, ptr %t88, i64 %t89)
  %t96 = getelementptr i8, ptr %t95, i64 %t89
  call void @olang_textcopy(ptr %t96, ptr %t90, i64 %t91)
  %t97 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  %t100 = load i64, ptr %l24
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = extractvalue { i64, ptr } %t98, 0
  %t103 = extractvalue { i64, ptr } %t98, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %t101, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t109 = load i64, ptr %l17
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = load i64, ptr %l17
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = load i64, ptr %l17
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t108, ptr %t110, ptr %t112, ptr %v2, ptr %t114, { i64, ptr } %t115, { i64, ptr } %t107, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d51, i32 0, i32 1) }, i1 false, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t108, i64 184, i1 false)
  br label %bb15
bb15:
  %t117 = load i64, ptr %l17
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = call ptr @__olang_scope_alloc_a(ptr %t118, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %l29, i64 184, i1 false)
  store ptr %t119, ptr %l30, !tbaa !29
  %t120 = ptrtoint ptr %v2 to i64
  store i64 %t120, ptr %l31, !tbaa !24
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t121, label %bb16, label %bb17
bb16:
  %t123 = call ptr @__olang_region_make(ptr %v2)
  %t124 = ptrtoint ptr %t123 to i64
  store i64 %t124, ptr %l31, !tbaa !24
  br label %bb17
bb17:
  %t125 = load i64, ptr %l31
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %t126)
  store %"compiler/source:Names" %t127, ptr %l33
  br label %bb18
bb18:
  %t128 = load %"compiler/source:Names", ptr %l33
  %t129 = load i64, ptr %l31
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = call ptr @__olang_scope_alloc_a(ptr %t130, i64 104, i64 8)
  store %"compiler/source:Names" %t128, ptr %t131
  store ptr %t131, ptr %l34, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t132, ptr %v2, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t132, i64 544, i1 false)
  br label %bb19
bb19:
  %t133 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %l35, i64 544, i1 false)
  %t135 = load ptr, ptr %l16, !tbaa !29
  %t136 = load ptr, ptr %l30, !tbaa !29
  %t137 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t134, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %t135, ptr %t136, ptr %t137, ptr %t133)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t134, i64 680, i1 false)
  br label %bb20
bb20:
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 680, i64 8)
  store ptr %t139, ptr %lp3
  %t140 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %l37, i64 680, i1 false)
  %t141 = load ptr, ptr %lp3
  %t142 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t144, i64 %t145)
  %t150 = getelementptr i8, ptr %t149, i64 %t145
  call void @olang_textcopy(ptr %t150, ptr %t146, i64 %t147)
  %t151 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t149, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t162 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v2, ptr %s0, ptr %t141, { i64, ptr } %t159)
  store i64 %t162, ptr %l42
  br label %bb21
bb21:
  %t163 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t163, i64 680, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l43, i64 680, i1 false)
  br label %ret
ret:
  ret void
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

define dso_local %"compiler/check:collWalk" @compiler_2fcheck_3acollWalk_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/check:collWalk"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i32 %a1, ptr %l3, !tbaa !23
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3acollWalk_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3acollWalk_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l7
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t26 = insertvalue %"compiler/check:collWalk" undef, ptr %t25, 0
  %t27 = load i32, ptr %l3, !tbaa !23
  %t28 = insertvalue %"compiler/check:collWalk" %t26, i32 %t27, 1
  %t30 = insertvalue %"compiler/check:collWalk" %t28, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, 2
  store %"compiler/check:collWalk" %t30, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:collWalk", ptr %rv
  ret %"compiler/check:collWalk" %rr
}

define dso_local %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:roOrigin"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:roOrigin" undef, ptr %a0, 0
  %t8 = insertvalue %"compiler/check:roOrigin" %t6, i1 %a1, 1
  store %"compiler/check:roOrigin" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:roOrigin", ptr %rv
  ret %"compiler/check:roOrigin" %rr
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
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler_2ftyped_3aClause_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e0 = weak hidden constant i1 false
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

declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e1 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcheck_3afactsCopy_2e2 = weak hidden constant i1 false
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

define linkonce_odr %"compiler/check:factsCopy" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3afactsCopy(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:factsCopy"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/check:factsCopy"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:factsCopy", ptr %a0
  store %"compiler/check:factsCopy" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 1
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 2
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/check:factsCopy", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/check:factsCopy", ptr %l1
  store %"compiler/check:factsCopy" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factsCopy", ptr %rv
  ret %"compiler/check:factsCopy" %rr
}

@.d1 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/argument" }>, align 8
@.d2 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ArgumentError" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d7 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Nullable" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d15 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Default" }>, align 8
@.d16 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"Name, Type, Offset, BitOffset, Bits, Of, Attr and HasAttr" }>, align 8
@.d17 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"Name, Fields, Attr and HasAttr" }>, align 8
@.d18 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"Name, Type, HasDefault, Default, Attr and HasAttr" }>, align 8
@.d19 = private constant <{ i64, [123 x i8] }> <{ i64 0, [123 x i8] c"Name, Type, Params, Results, Errors, Attr, HasAttr, NoReturn, Exported, Extern, Commutes and G42's facts - and it is called" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"field" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d23 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"parameter" }>, align 8
@.d24 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"function" }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"result" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
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

@.d28 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d31 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"RunFrom" }>, align 8
@.d32 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'for'" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d34 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'for'" }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Iter" }>, align 8
@.d36 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'for'" }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d38 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"an Iter() whose result is no iterator (S9c)" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'for'" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d43 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"'for ... in'" }>, align 8
@.d44 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a walk ('for ... in': Next, Iter, or At and Len)" }>, align 8
declare ptr @__olang_scope_or(ptr, ptr)
@.d45 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
declare void @__olang_errpay_pop()
@.d46 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d47 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d48 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0 = weak hidden constant i1 false
@.d49 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/olang.lock" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d50 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/cache" }>, align 8
@.d51 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d52 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d53 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3acollWalk_2e2 = weak hidden constant i1 false
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
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseNotAny(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOpenInspected(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_50e8912350a6e3a7_8e15953db4ede8db = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotMemberCase(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_5f37bbd32b93a1e_9b7778ec6ef06ea = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuilderPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_fb617c2d829b7111_714329061eadcd35 = external constant [0 x i8]
@olang_loc_796a210bea009080_30d8ca3bde523e44 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloneBinding(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eLen_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etakenSet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3, ptr %a4)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare %"compiler/check:errBind" @compiler_2fcheck_3aerrBind_2ector(ptr %v0, i32 %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2ePush_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0, %"compiler/check:errBind" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e0002d39d824213_e3bfdf913f3455ef = external constant [0 x i8]
declare i1 @compiler_2fcheck_2estmtLike(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eClauseLastValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f25f445d5459b9fe_e155a29b0e6cdb52 = external constant [0 x i8]
@olang_loc_7a5b0973d8f0076e_d42fa20e68e1cea2 = external constant [0 x i8]
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtPayload(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/check:errBind" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eAt_3ccompiler_2fcheck_3aerrBind_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNameUnused(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchLoneUnused(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrBind_3e_2eTrunca_H5bf147fe04fb910fd8a08f646d33c634(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eTruncate_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwind(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eToArray_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropTempRegistered(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDropRegistered(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_57182574fbaa5aef_a841f6796e4dcc63 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_a993cda7425ca237_a63aa9ad7bf8dd03 = external constant [0 x i8]
declare %"compiler/check:factsCopy" @compiler_2fcheck_3afactsCopy_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eLen__H4e51b5ca7b68af485b8486164a690a5f(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eAt_H56c1cddaee4bc4aa5c09605de1331e44(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_1a03149f0250e548_14220af7ccd85b74 = external constant [0 x i8]
@olang_loc_f003e05343083a19_c7eedaa93b775a5 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2enameIndex(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldReadable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStructPatNoField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadNoField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
@olang_loc_bb9360f661a84828_a83eb458d7764d44 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e993077ed681d47d_7cf2fdb3e0a34b99 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflVal" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoKind(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLength(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLayout(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/generic:Desc" %a2)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6fa12bf18c08968_7f63ef0109416d3c = external constant [0 x i8]
@olang_loc_366830190f407939_a82d5f1c611378ed = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_492feac3979049da_7a1ccb679ec95f6e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2etypePathOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_42af232d2840e8db_efcef566740b002f = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9a57a0a969606bc6b56c6db08d26f577(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
@olang_loc_8771b1e868207559_9b4adf6aba3e467d = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuiltinType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclType(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8b8738bb0f25fa76_719b7d77c23398a = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforRange(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5)
@olang_loc_1c0ab263f2e4f7dc_3e069dbdc7ae0b68 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecounted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, i64 %a4, i64 %a5, i32 %a6, i64 %a7, i64 %a8, ptr %a9, i32 %a10)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIter(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i64 %a4, ptr %a5, i32 %a6)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIterable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eiterShaped(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkRuns(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i64 %a4, ptr %a5, i32 %a6)
@olang_loc_139af6e2a2dcda96_1438f6a9e620193a = external constant [0 x i8]
@olang_loc_a734531b29123b5_def2307fb88201b9 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalkIndexed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i64 %a4, i64 %a5, ptr %a6, i32 %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esomeHolds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_d5cbe87213397023_e63da241b79e21f = external constant [0 x i8]
@olang_loc_74af738f4d64f689_e986ed633af561bd = external constant [0 x i8]
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)

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
