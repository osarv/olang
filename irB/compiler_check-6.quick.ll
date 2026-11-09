source_filename = "compiler_check-6.quick.ll"
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
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/cond:Value" = type { i32, i64, double, i64, i64, i1, i1 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:litBuilder" = type { i64, i32 }
%"compiler/check:setAt" = type { ptr, i64, { i64, ptr }, { i64, ptr }, %"compiler/source:Span", i32 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/check:weakPlace" = type { { i64, [3 x i64] }, { i64, ptr }, i64 }
%"compiler/check:tailAsk" = type { i64, i64, %"compiler/source:Span", i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCheckMain(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l35 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca { i64, [3 x i64] }
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %l48 = alloca ptr
  %l52 = alloca i32
  %l57 = alloca i1
  %l63 = alloca i1
  %l69 = alloca i1
  %l73 = alloca i1
  %l78 = alloca i32
  %l84 = alloca ptr
  %l86 = alloca { i64, [3 x i64] }
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t87 = alloca { i64, [3 x i64] }, align 8
  %t187 = alloca { i64, [3 x i64] }, align 8
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 12
  %t10 = load i64, ptr %t9, !tbaa !24
  store i64 %t10, ptr %l1, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 10
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t20, i64 %t21)
  store ptr %t24, ptr %l15
  br label %bb1
bb1:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t27 = getelementptr %"compiler/load:Module", ptr %t25, i32 0, i32 4
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l19, !tbaa !29
  %t34 = load i64, ptr %l1, !tbaa !24
  store i64 %t34, ptr %l20, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t46, ptr %l25
  br label %bb2
bb2:
  %t47 = load ptr, ptr %l19, !tbaa !29
  %t48 = load i64, ptr %l20, !tbaa !24
  %t49 = load i32, ptr %l25, !tbaa !23
  %t50 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t47, i64 %t48, i32 %t49)
  store i64 %t50, ptr %l26
  br label %bb3
bb3:
  %t51 = load i64, ptr %l26, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = icmp slt i64 %t52, 0
  br i1 %t54, label %bb4, label %bb5
bb4:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 4
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 104
  %t69 = load i64, ptr %t68, !tbaa !24
  %t72 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBefore(ptr %v0, ptr %t65, i64 %t69)
  store i1 %t72, ptr %l35
  br label %bb6
bb5:
  br label %bb12
bb6:
  %t73 = load i1, ptr %l35, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/load:Loader", ptr %t82, i32 0, i32 4
  %t85 = load ptr, ptr %t84, !tbaa !29
  store ptr %t85, ptr %l40, !tbaa !29
  %t86 = load i64, ptr %l2, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 0
  store i64 1, ptr %t88
  %t90 = insertvalue { i64 } undef, i64 %t86, 0
  %t91 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 1
  store { i64 } %t90, ptr %t91
  %t92 = load { i64, [3 x i64] }, ptr %t87
  store { i64, [3 x i64] } %t92, ptr %l42
  %t93 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoMain(ptr %s2)
  store %"compiler/diagmsg:Msg" %t93, ptr %l43
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t94 = load ptr, ptr %l40, !tbaa !29
  %t95 = load { i64, [3 x i64] }, ptr %l42
  %t96 = load %"compiler/diagmsg:Msg", ptr %l43
  %t97 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s2, ptr %t94, { i64, [3 x i64] } %t95, %"compiler/diagmsg:Msg" %t96)
  store i64 %t97, ptr %l44
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load i64, ptr %l3, !tbaa !24
  %t105 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store ptr %t105, ptr %l48
  br label %bb13
bb13:
  %t106 = load ptr, ptr %l48, !tbaa !29
  store ptr %t106, ptr %l4, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t111 = load i64, ptr %l3, !tbaa !24
  %t114 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t110, i64 %t111)
  store i32 %t114, ptr %l52
  br label %bb14
bb14:
  %t115 = load i32, ptr %l52, !tbaa !23
  store i32 %t115, ptr %l5, !tbaa !23
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t118 = getelementptr %"compiler/ast:Func", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb17
bb16:
  %t125 = load ptr, ptr %l4, !tbaa !29
  %t127 = getelementptr %"compiler/ast:Func", ptr %t125, i32 0, i32 3
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/ast:Sig", ptr %t128, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t135 = icmp sgt i64 %t133, 0
  store i1 %t135, ptr %l57, !tbaa !21
  br label %bb17
bb17:
  %t137 = load i1, ptr %l57, !tbaa !21
  br i1 %t137, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb20
bb19:
  %t138 = load ptr, ptr %l4, !tbaa !29
  %t140 = getelementptr %"compiler/ast:Func", ptr %t138, i32 0, i32 3
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/ast:Sig", ptr %t141, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t148 = icmp sgt i64 %t146, 0
  store i1 %t148, ptr %l63, !tbaa !21
  br label %bb20
bb20:
  %t150 = load i1, ptr %l63, !tbaa !21
  br i1 %t150, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb23
bb22:
  %t151 = load ptr, ptr %l4, !tbaa !29
  %t153 = getelementptr %"compiler/ast:Func", ptr %t151, i32 0, i32 3
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/ast:Sig", ptr %t154, i32 0, i32 4
  %t157 = load i1, ptr %t156, !tbaa !21
  store i1 %t157, ptr %l69, !tbaa !21
  br label %bb23
bb23:
  %t159 = load i1, ptr %l69, !tbaa !21
  br i1 %t159, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb27
bb25:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  %t166 = load i32, ptr %l5, !tbaa !23
  %t169 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l78
  br label %bb26
bb26:
  %t170 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t171 = load i32, ptr %l78, !tbaa !23
  %t173 = icmp ne i32 %t171, %t170
  store i1 %t173, ptr %l73, !tbaa !21
  br label %bb27
bb27:
  %t175 = load i1, ptr %l73, !tbaa !21
  br i1 %t175, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s3
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/check:Checker", ptr %t176, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = getelementptr %"compiler/generic:Program", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/load:Loader", ptr %t182, i32 0, i32 4
  %t185 = load ptr, ptr %t184, !tbaa !29
  store ptr %t185, ptr %l84, !tbaa !29
  %t186 = load i64, ptr %l2, !tbaa !24
  store { i64, [3 x i64] } zeroinitializer, ptr %t187
  %t188 = getelementptr { i64, [3 x i64] }, ptr %t187, i32 0, i32 0
  store i64 1, ptr %t188
  %t190 = insertvalue { i64 } undef, i64 %t186, 0
  %t191 = getelementptr { i64, [3 x i64] }, ptr %t187, i32 0, i32 1
  store { i64 } %t190, ptr %t191
  %t192 = load { i64, [3 x i64] }, ptr %t187
  store { i64, [3 x i64] } %t192, ptr %l86
  %t193 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMainSignature(ptr %s3)
  store %"compiler/diagmsg:Msg" %t193, ptr %l87
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t194 = load ptr, ptr %l84, !tbaa !29
  %t195 = load { i64, [3 x i64] }, ptr %l86
  %t196 = load %"compiler/diagmsg:Msg", ptr %l87
  %t197 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t194, { i64, [3 x i64] } %t195, %"compiler/diagmsg:Msg" %t196)
  store i64 %t197, ptr %l88
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca ptr
  %rv = alloca ptr
  %t10 = alloca { i64, [4 x i64] }, align 8
  %t43 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l4
  %t2 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2, ptr %l5
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t3)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l2, !tbaa !24
  %t8 = trunc i64 %t6 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 0
  store i64 0, ptr %t11
  %t12 = load %"compiler/source:Span", ptr %l5
  %t13 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t12, 0
  %t14 = load i32, ptr %l7, !tbaa !23
  %t15 = insertvalue { %"compiler/source:Span", i32, i32 } %t13, i32 %t14, 1
  %t17 = insertvalue { %"compiler/source:Span", i32, i32 } %t15, i32 %t8, 2
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t17, ptr %t18
  %t19 = load { i64, [4 x i64] }, ptr %t10
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t19, ptr %t21
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t23, ptr %l14
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l16
  br label %bb2
bb2:
  store i32 3, ptr %l17
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  %t29 = load i64, ptr %l2, !tbaa !24
  %t33 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t27, %"compiler/source:Span" %t28, i64 %t29)
  store ptr %t33, ptr %l21
  br label %bb3
bb3:
  %t36 = load ptr, ptr %l13, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l14
  %t38 = load i32, ptr %l16, !tbaa !23
  %t39 = load i32, ptr %l17, !range !{i32 0, i32 52}
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v1, ptr %v2, ptr %t36, %"compiler/source:Span" %t37, i32 %t38, i32 %t39, ptr %t40, ptr %a3)
  store ptr %t42, ptr %l24
  br label %bb4
bb4:
  store { i64, [3 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 0
  store i64 1, ptr %t44
  %t45 = load %"compiler/source:Span", ptr %l4
  %t46 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t45, 0
  %t47 = load ptr, ptr %l12, !tbaa !29
  %t48 = insertvalue { %"compiler/source:Span", ptr, ptr } %t46, ptr %t47, 1
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = insertvalue { %"compiler/source:Span", ptr, ptr } %t48, ptr %t49, 2
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t50, ptr %t51
  %t52 = load { i64, [3 x i64] }, ptr %t43
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t52, ptr %t54
  store ptr %t54, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyTable(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca %"compiler/generic:AnySlot"
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"compiler/generic:AnySlot"
  %l30 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca i64
  %l41 = alloca i1
  %l42 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca i32
  %l49 = alloca ptr
  %l53 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca i32
  %l71 = alloca i64
  %l74 = alloca i64
  %l92 = alloca { i64, ptr }
  %l99 = alloca i64
  %l107 = alloca i32
  %l109 = alloca ptr
  %l111 = alloca i64
  %l112 = alloca i64
  %l117 = alloca i32
  %l124 = alloca i32
  %l128 = alloca i1
  %l132 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l148 = alloca %"compiler/diagmsg:Msg"
  %l149 = alloca i64
  %l152 = alloca ptr
  %l153 = alloca i64
  %l154 = alloca i64
  %l157 = alloca { i64, ptr }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca ptr
  %l172 = alloca ptr
  %l180 = alloca i64
  %l183 = alloca i64
  %l201 = alloca { i64, ptr }
  %l206 = alloca ptr
  %l211 = alloca i32
  %l212 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l218 = alloca i64
  %l221 = alloca ptr
  %l222 = alloca i32
  %l228 = alloca i32
  %l229 = alloca i32
  %l231 = alloca ptr
  %l239 = alloca i64
  %l242 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i64
  %t446 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr %l2, !tbaa !23
  %t10 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyTableOf(ptr %v0, ptr %t4, i32 %t5, i32 %t6)
  store i64 %t10, ptr %l35
  br label %bb1
bb1:
  %t11 = load i64, ptr %l35, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 146
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t18, i64 %t19)
  store i1 %t22, ptr %l41
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t23 = load i1, ptr %l41, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb7
bb6:
  %t24 = load i64, ptr %l4, !tbaa !24
  store i64 %t24, ptr %l42, !tbaa !24
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i64, ptr %l42, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l45, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  store i32 %t31, ptr %l46, !tbaa !23
  %t32 = load i32, ptr %l2, !tbaa !23
  store i32 %t32, ptr %l47, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t33)
  store ptr %t35, ptr %l49
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l49, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 2
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load %"compiler/source:Span", ptr %l3
  %t41 = load ptr, ptr %l45, !tbaa !29
  %t42 = load i32, ptr %l46, !tbaa !23
  %t43 = load i32, ptr %l47, !tbaa !23
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eNewAnyTable(ptr %v0, ptr %t41, i32 %t42, i32 %t43, i64 %t39, %"compiler/source:Span" %t40)
  store i64 %t46, ptr %l53
  br label %bb10
bb10:
  %t47 = load i64, ptr %l53, !tbaa !24
  store i64 %t47, ptr %l5, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t51, i32 %t52)
  store { i64, ptr } %t55, ptr %l57
  br label %bb11
bb11:
  %t56 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  store ptr %t60, ptr %l59, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  %t67 = load i32, ptr %l1, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t70, ptr %l64
  br label %bb12
bb12:
  %t71 = load ptr, ptr %l59, !tbaa !29
  %t72 = load i32, ptr %l64, !tbaa !23
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t73, ptr %l65
  br label %bb13
bb13:
  %t74 = load i32, ptr %l65, !tbaa !23
  store i32 %t74, ptr %l7, !tbaa !23
  store i64 0, ptr %l8, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = icmp sgt i64 %t79, %t80
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = load i64, ptr %l10, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb19
bb16:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t94 = load i64, ptr %l10, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = sub i64 %t97, 1
  %t100 = load i64, ptr %l10, !tbaa !24
  %t103 = sdiv i64 %t99, %t100
  store i64 %t103, ptr %l74, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb18
bb18:
  %t105 = load i64, ptr %l74, !tbaa !24
  store i64 %t105, ptr %l71, !tbaa !24
  br label %bb19
bb19:
  %t106 = load i64, ptr %l71, !tbaa !24
  store i64 %t106, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb20
bb20:
  %t107 = load i64, ptr %l12, !tbaa !24
  %t108 = load i64, ptr %l11, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb21, label %bb22
bb21:
  br label %bb59
bb22:
  br label %bb23
bb23:
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l10, !tbaa !24
  %t120 = mul i64 %t116, %t117
  %t123 = add i64 %t115, %t120
  %t125 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t125, ptr %l92, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr %"compiler/generic:AnySlot", ptr %t129, i64 %t123
  %t131 = load %"compiler/generic:AnySlot", ptr %t130
  store %"compiler/generic:AnySlot" %t131, ptr %l14
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i32, ptr %l1, !tbaa !23
  %t138 = getelementptr %"compiler/generic:AnySlot", ptr %l14, i32 0, i32 0
  %t139 = load i32, ptr %t138, !tbaa !23
  %t143 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t136, i32 %t137, i32 %t139)
  store i64 %t143, ptr %l99
  br label %bb24
bb24:
  %t144 = load i64, ptr %l99, !tbaa !24
  store i64 %t144, ptr %l15, !tbaa !24
  %t145 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t145, ptr %l16, !tbaa !23
  %t147 = load i64, ptr %l15, !tbaa !24
  %t149 = icmp sge i64 %t147, 0
  br i1 %t149, label %bb25, label %bb26
bb25:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t155 = load i64, ptr %l15, !tbaa !24
  %t156 = load i32, ptr %l1, !tbaa !23
  %t160 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t154, i64 %t155, i32 %t156)
  store i32 %t160, ptr %l107
  br label %bb27
bb26:
  %t161 = getelementptr %"compiler/generic:AnySlot", ptr %l14, i32 0, i32 3
  %t162 = load i64, ptr %t161, !tbaa !24
  %t164 = icmp sge i64 %t162, 0
  br i1 %t164, label %bb34, label %bb35
bb27:
  %t166 = load i32, ptr %l107, !tbaa !23
  store i32 %t166, ptr %l16, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  store ptr %t170, ptr %l109, !tbaa !29
  %t171 = load i64, ptr %l15, !tbaa !24
  %t173 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t171)
  store i64 %t173, ptr %l111
  br label %bb28
bb28:
  %t174 = load ptr, ptr %l109, !tbaa !29
  %t175 = load i64, ptr %l111, !tbaa !24
  %t176 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t174, i64 %t175)
  store i64 %t176, ptr %l112
  br label %bb29
bb29:
  %t177 = load i64, ptr %l112, !tbaa !24
  %t178 = icmp sgt i64 %t177, 0
  br i1 %t178, label %bb30, label %bb31
bb30:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l15, !tbaa !24
  %t182 = load i32, ptr %l1, !tbaa !23
  %t186 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimplSig(ptr %v0, ptr %t180, i64 %t181, i32 %t182)
  store i32 %t186, ptr %l117
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t187 = load i32, ptr %l117, !tbaa !23
  store i32 %t187, ptr %l16, !tbaa !23
  br label %bb33
bb33:
  br label %bb38
bb34:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t192 = getelementptr %"compiler/generic:AnySlot", ptr %l14, i32 0, i32 3
  %t193 = load i64, ptr %t192, !tbaa !24
  %t194 = load i32, ptr %l1, !tbaa !23
  %t198 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultAt(ptr %v0, ptr %t191, i64 %t193, i32 %t194)
  store i32 %t198, ptr %l124
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t199 = load i32, ptr %l124, !tbaa !23
  store i32 %t199, ptr %l16, !tbaa !23
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t200 = load i32, ptr %l16, !tbaa !23
  %t201 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t204 = icmp ne i32 %t200, %t201
  br i1 %t204, label %bb39, label %bb40
bb39:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i32, ptr %l16, !tbaa !23
  %t208 = getelementptr %"compiler/generic:AnySlot", ptr %l14, i32 0, i32 5
  %t209 = load i32, ptr %t208, !tbaa !23
  %t213 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyScopesAgree(ptr %v0, ptr %t206, i32 %t207, i32 %t209)
  store i1 %t213, ptr %l132
  br label %bb41
bb40:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb42
bb41:
  %t214 = load i1, ptr %l132, !tbaa !21
  %t215 = xor i1 %t214, true
  store i1 %t215, ptr %l128, !tbaa !21
  br label %bb42
bb42:
  %t217 = load i1, ptr %l128, !tbaa !21
  br i1 %t217, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s8
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l134, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t219, ptr %l135
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l1, !tbaa !23
  %t224 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t220, i32 %t221)
  store { i64, ptr } %t224, ptr %l138
  br label %bb45
bb44:
  br label %bb57
bb45:
  %t225 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  %t227 = extractvalue { i64, ptr } %t225, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l139, !tbaa !27
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/generic:AnySlot", ptr %l14, i32 0, i32 0
  %t234 = load i32, ptr %t233, !tbaa !23
  %t237 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s8, ptr %t232, i32 %t234)
  store { i64, ptr } %t237, ptr %l142
  br label %bb46
bb46:
  %t238 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 0
  %t240 = extractvalue { i64, ptr } %t238, 1
  %t241 = mul i64 %t239, 1
  %t242 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t241)
  call void @llvm.memcpy.p0.p0.i64(ptr %t242, ptr %t240, i64 %t241, i1 false)
  %t243 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  store { i64, ptr } %t244, ptr %l143, !tbaa !27
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load i32, ptr %l2, !tbaa !23
  %t249 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t245, i32 %t246)
  store { i64, ptr } %t249, ptr %l146
  br label %bb47
bb47:
  %t250 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 0
  %t252 = extractvalue { i64, ptr } %t250, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  %t257 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t258 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t260 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodScopes(ptr %s8, ptr %s8, ptr %s8, ptr %s8, { i64, ptr } %t257, { i64, ptr } %t258, { i64, ptr } %t256)
  store %"compiler/diagmsg:Msg" %t260, ptr %l148
  br label %bb48
bb48:
  %t261 = load ptr, ptr %l134, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l135
  %t263 = load %"compiler/diagmsg:Msg", ptr %l148
  %t264 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t261, %"compiler/source:Span" %t262, %"compiler/diagmsg:Msg" %t263)
  store i64 %t264, ptr %l149
  br label %bb49
bb49:
  %t265 = load i64, ptr %l149, !tbaa !24
  store i64 %t265, ptr %l17, !tbaa !24
  %t266 = load i64, ptr %l15, !tbaa !24
  %t268 = icmp sge i64 %t266, 0
  br i1 %t268, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s9
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l152, !tbaa !29
  %t271 = load i64, ptr %l17, !tbaa !24
  store i64 %t271, ptr %l153, !tbaa !24
  %t272 = load i64, ptr %l15, !tbaa !24
  store i64 %t272, ptr %l154, !tbaa !24
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/generic:AnySlot", ptr %l14, i32 0, i32 0
  %t275 = load i32, ptr %t274, !tbaa !23
  %t278 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s9, ptr %t273, i32 %t275)
  store { i64, ptr } %t278, ptr %l157
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t279 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 0
  %t281 = extractvalue { i64, ptr } %t279, 1
  %t282 = mul i64 %t280, 1
  %t283 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t283, ptr %t281, i64 %t282, i1 false)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  %t287 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAnyMethod(ptr %s9, ptr %s9, { i64, ptr } %t285)
  store %"compiler/diagmsg:Msg" %t287, ptr %l159
  br label %bb53
bb53:
  %t288 = load ptr, ptr %l152, !tbaa !29
  %t289 = load i64, ptr %l153, !tbaa !24
  %t290 = load i64, ptr %l154, !tbaa !24
  %t291 = load %"compiler/diagmsg:Msg", ptr %l159
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %s9, ptr %t288, i64 %t289, i64 %t290, %"compiler/diagmsg:Msg" %t291)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s9)
  br label %bb55
bb55:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 146
  %t295 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t294, i64 %t295, i1 true)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t299 = load i64, ptr %l12, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l12, !tbaa !24
  br label %bb20
bb59:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"compiler/check:Checker", ptr %t303, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !29
  %t308 = getelementptr %"compiler/generic:Program", ptr %t306, i32 0, i32 61
  %t309 = load i64, ptr %l5, !tbaa !24
  %t312 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H0986089bcad3c266fbd2f46fa03b07d1(ptr %v0, ptr %v0, ptr %t308, i64 %t309)
  store ptr %t312, ptr %l170
  br label %bb60
bb60:
  %t313 = load ptr, ptr %l170, !tbaa !29
  store ptr %t313, ptr %l18, !tbaa !29
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t314)
  store ptr %t316, ptr %l172
  br label %bb61
bb61:
  %t317 = load ptr, ptr %l172, !tbaa !29
  %t319 = getelementptr %"compiler/check:frame", ptr %t317, i32 0, i32 1
  %t320 = load i64, ptr %t319, !tbaa !24
  store i64 %t320, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  %t322 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t322, 0
  store i64 %t324, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t326 = load i64, ptr %l21, !tbaa !24
  %t327 = load i64, ptr %l20, !tbaa !24
  %t330 = icmp sgt i64 %t326, %t327
  br i1 %t330, label %bb62, label %bb63
bb62:
  %t332 = load i64, ptr %l22, !tbaa !24
  %t334 = icmp sgt i64 %t332, 0
  br i1 %t334, label %bb64, label %bb65
bb63:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb67
bb64:
  %t336 = load i64, ptr %l21, !tbaa !24
  %t337 = load i64, ptr %l20, !tbaa !24
  %t340 = sub i64 %t336, %t337
  %t341 = load i64, ptr %l22, !tbaa !24
  %t344 = add i64 %t340, %t341
  %t346 = sub i64 %t344, 1
  %t347 = load i64, ptr %l22, !tbaa !24
  %t350 = sdiv i64 %t346, %t347
  store i64 %t350, ptr %l183, !tbaa !24
  br label %bb66
bb65:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb66
bb66:
  %t352 = load i64, ptr %l183, !tbaa !24
  store i64 %t352, ptr %l180, !tbaa !24
  br label %bb67
bb67:
  %t353 = load i64, ptr %l180, !tbaa !24
  store i64 %t353, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb68
bb68:
  %t354 = load i64, ptr %l24, !tbaa !24
  %t355 = load i64, ptr %l23, !tbaa !24
  %t358 = icmp slt i64 %t354, %t355
  %t360 = xor i1 %t358, true
  br i1 %t360, label %bb69, label %bb70
bb69:
  br label %bb80
bb70:
  br label %bb71
bb71:
  %t362 = load i64, ptr %l20, !tbaa !24
  %t363 = load i64, ptr %l24, !tbaa !24
  %t364 = load i64, ptr %l22, !tbaa !24
  %t367 = mul i64 %t363, %t364
  %t370 = add i64 %t362, %t367
  store i64 %t370, ptr %l25, !tbaa !24
  %t372 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t372, ptr %l201, !tbaa !27
  %t373 = load i64, ptr %l25, !tbaa !24
  %t375 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr %"compiler/generic:AnySlot", ptr %t376, i64 %t373
  %t378 = load %"compiler/generic:AnySlot", ptr %t377
  store %"compiler/generic:AnySlot" %t378, ptr %l26
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 2
  store ptr %t385, ptr %l206, !tbaa !29
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/check:Checker", ptr %t386, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !29
  %t391 = getelementptr %"compiler/generic:Program", ptr %t389, i32 0, i32 2
  %t392 = getelementptr %"compiler/generic:AnySlot", ptr %l26, i32 0, i32 5
  %t393 = load i32, ptr %t392, !tbaa !23
  %t396 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t391, i32 %t393)
  store i32 %t396, ptr %l211
  br label %bb72
bb72:
  %t397 = load ptr, ptr %l206, !tbaa !29
  %t398 = load i32, ptr %l211, !tbaa !23
  %t399 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t397, i32 %t398)
  store { i64, ptr } %t399, ptr %l212
  br label %bb73
bb73:
  %t400 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t403 = getelementptr %"compiler/check:Checker", ptr %t401, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !29
  %t406 = getelementptr %"compiler/generic:Program", ptr %t404, i32 0, i32 2
  store { i64, ptr } %t400, ptr %l216, !tbaa !27
  %t408 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr i32, ptr %t409, i64 0
  %t411 = load i32, ptr %t410, !tbaa !33
  %t414 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t406, i32 %t411)
  store i64 %t414, ptr %l218
  br label %bb74
bb74:
  %t415 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t416 = load i64, ptr %l218, !tbaa !24
  %t418 = and i64 %t416, %t415
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l221, !tbaa !29
  %t421 = getelementptr %"compiler/generic:AnySlot", ptr %l26, i32 0, i32 5
  %t422 = load i32, ptr %t421, !tbaa !23
  store i32 %t422, ptr %l222, !tbaa !23
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/check:Checker", ptr %t423, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !29
  %t428 = getelementptr %"compiler/generic:Program", ptr %t426, i32 0, i32 2
  %t429 = load i32, ptr %l7, !tbaa !23
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t428, i32 %t429, i64 %t418)
  store i32 %t434, ptr %l228
  br label %bb75
bb75:
  %t435 = load ptr, ptr %l221, !tbaa !29
  %t436 = load i32, ptr %l222, !tbaa !23
  %t437 = load i32, ptr %l228, !tbaa !23
  %t438 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erecvReplaced(ptr %v0, ptr %t435, i32 %t436, i32 %t437)
  store i32 %t438, ptr %l229
  br label %bb76
bb76:
  %t439 = load i32, ptr %l229, !tbaa !23
  %t440 = load ptr, ptr %l18, !tbaa !29
  %t442 = getelementptr %"compiler/generic:AnyTable", ptr %t440, i32 0, i32 5
  store ptr %t442, ptr %l231, !tbaa !29
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load i64, ptr %l5, !tbaa !24
  %t445 = load i64, ptr %l25, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t446
  %t447 = getelementptr { i64, [2 x i64] }, ptr %t446, i32 0, i32 0
  store i64 9, ptr %t447
  %t449 = insertvalue { i64, i64 } undef, i64 %t444, 0
  %t451 = insertvalue { i64, i64 } %t449, i64 %t445, 1
  %t452 = getelementptr { i64, [2 x i64] }, ptr %t446, i32 0, i32 1
  store { i64, i64 } %t451, ptr %t452
  %t453 = load { i64, [2 x i64] }, ptr %t446
  %t455 = load i64, ptr %l19, !tbaa !24
  %t456 = load %"compiler/source:Span", ptr %l3
  %t462 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t443, { i64, [2 x i64] } %t453, i32 %t439, i64 %t455, %"compiler/source:Span" %t456)
  store i64 %t462, ptr %l239
  br label %bb77
bb77:
  %t463 = load ptr, ptr %l231, !tbaa !29
  %t464 = load i64, ptr %l239, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t463, i64 %t464)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t465 = load i64, ptr %l24, !tbaa !24
  %t467 = add i64 %t465, 1
  store i64 %t467, ptr %l24, !tbaa !24
  br label %bb68
bb80:
  %t469 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t469, ptr %l242
  br label %bb81
bb81:
  %t470 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l242
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t470, ptr %l30
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t472 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %s0, ptr %t471, i32 %t472, ptr %l30, i64 0)
  br label %bb82
bb82:
  %t476 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t476, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l19 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l49 = alloca i64
  %l51 = alloca { i64, ptr }
  %l56 = alloca i32
  %l58 = alloca { i64, ptr }
  %l68 = alloca i32
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l75 = alloca i32
  %l77 = alloca i64
  %l82 = alloca i32
  %l83 = alloca i32
  %l88 = alloca i1
  %l93 = alloca i1
  %l98 = alloca i32
  %l101 = alloca i1
  %l102 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i1
  %l112 = alloca i1
  %l118 = alloca i1
  %l122 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t7 = icmp sge i64 %t1, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Binding", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  store i64 %t14, ptr %l19, !tbaa !24
  %t15 = load i64, ptr %l19, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = icmp sle i64 %t18, 2305843009213693951
  br i1 %t19, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f6613c7e75250c33_3760568a21e1f80f)
  unreachable
bb6:
  %t21 = load i64, ptr %l19, !tbaa !24
  %t22 = mul i64 %t21, 4
  %t23 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Binding", ptr %t27, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f6613c7e75250c33_3760568a21e1f80f)
  unreachable
bb8:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb13
bb10:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l31, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l31, !tbaa !24
  store i64 %t58, ptr %l28, !tbaa !24
  br label %bb13
bb13:
  %t59 = load i64, ptr %l28, !tbaa !24
  store i64 %t59, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  store i64 %t78, ptr %l49, !tbaa !24
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Binding", ptr %t79, i32 0, i32 2
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l51, !tbaa !27
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t89 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t92 = icmp ne i32 %t88, %t89
  br i1 %t92, label %bb18, label %bb19
bb18:
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Binding", ptr %t94, i32 0, i32 2
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l58, !tbaa !27
  %t98 = load i64, ptr %l10, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i32, ptr %t101, i64 %t98
  %t103 = load i32, ptr %t102, !tbaa !33
  store i32 %t103, ptr %l56, !tbaa !23
  br label %bb21
bb19:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Binding", ptr %t111, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t110, i64 %t114, i64 %t115, i64 %t116)
  store i32 %t121, ptr %l68
  br label %bb20
bb20:
  %t122 = load i32, ptr %l68, !tbaa !23
  store i32 %t122, ptr %l56, !tbaa !23
  br label %bb21
bb21:
  %t123 = load i32, ptr %l56, !tbaa !23
  %t124 = load i64, ptr %l49, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr i32, ptr %t126, i64 %t124
  store i32 %t123, ptr %t127, !tbaa !33
  br label %bb22
bb22:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l9, !tbaa !24
  br label %bb14
bb23:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  store ptr %t135, ptr %l72, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t136, ptr %l73, !tbaa !27
  %t137 = load i64, ptr %l2, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 %t137
  %t142 = load i32, ptr %t141, !tbaa !33
  store i32 %t142, ptr %l75, !tbaa !23
  %t143 = load ptr, ptr %l3, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Binding", ptr %t143, i32 0, i32 0
  %t146 = load i64, ptr %t145, !tbaa !24
  store i64 %t146, ptr %l77, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/check:Checker", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/generic:Program", ptr %t150, i32 0, i32 2
  %t153 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t152, { i64, ptr } %t153)
  store i32 %t156, ptr %l82
  br label %bb24
bb24:
  %t157 = load ptr, ptr %l72, !tbaa !29
  %t158 = load i32, ptr %l75, !tbaa !23
  %t159 = load i64, ptr %l77, !tbaa !24
  %t160 = load i32, ptr %l82, !tbaa !23
  %t161 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t157, i32 %t158, i64 %t159, i32 %t160)
  store i32 %t161, ptr %l83
  br label %bb25
bb25:
  %t162 = load i32, ptr %l83, !tbaa !23
  store i32 %t162, ptr %l11, !tbaa !23
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 2
  %t169 = load i32, ptr %l11, !tbaa !23
  %t172 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t168, i32 %t169)
  store i1 %t172, ptr %l88
  br label %bb26
bb26:
  %t173 = load i1, ptr %l88, !tbaa !21
  %t174 = xor i1 %t173, true
  br i1 %t174, label %bb27, label %bb28
bb27:
  %t176 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t176, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l11, !tbaa !23
  %t182 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t178, i32 %t179)
  store i1 %t182, ptr %l93
  br label %bb30
bb30:
  %t183 = load i1, ptr %l93, !tbaa !21
  br i1 %t183, label %bb31, label %bb32
bb31:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 2
  %t190 = load i32, ptr %l11, !tbaa !23
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t189, i32 %t190)
  store i32 %t193, ptr %l98
  br label %bb33
bb32:
  br label %bb50
bb33:
  %t194 = load i32, ptr %l98, !tbaa !23
  store i32 %t194, ptr %l12, !tbaa !23
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l12, !tbaa !23
  %t199 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t195, i32 %t196)
  store i1 %t199, ptr %l101
  br label %bb34
bb34:
  %t200 = load i1, ptr %l101, !tbaa !21
  br i1 %t200, label %bb35, label %bb36
bb35:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/check:Checker", ptr %t201, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t205 = load i32, ptr %l12, !tbaa !23
  %t208 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t204, i32 %t205)
  store i1 %t208, ptr %l106
  br label %bb37
bb36:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb38
bb37:
  %t209 = load i1, ptr %l106, !tbaa !21
  store i1 %t209, ptr %l102, !tbaa !21
  br label %bb38
bb38:
  %t210 = load i1, ptr %l102, !tbaa !21
  br i1 %t210, label %bb39, label %bb40
bb39:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l12, !tbaa !23
  %t220 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t216, i32 %t217)
  store i1 %t220, ptr %l112
  br label %bb41
bb40:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb42
bb41:
  %t221 = load i1, ptr %l112, !tbaa !21
  store i1 %t221, ptr %l107, !tbaa !21
  br label %bb42
bb42:
  %t222 = load i1, ptr %l107, !tbaa !21
  br i1 %t222, label %bb43, label %bb44
bb43:
  %t223 = load i32, ptr %l11, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t223, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/check:Checker", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = load i32, ptr %l11, !tbaa !23
  %t234 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t230, i32 %t231)
  store i1 %t234, ptr %l118
  br label %bb46
bb46:
  %t235 = load i1, ptr %l118, !tbaa !21
  br i1 %t235, label %bb47, label %bb48
bb47:
  %t236 = load i32, ptr %l11, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t236, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i32, ptr %l11, !tbaa !23
  %t242 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t238, i32 %t239)
  store i32 %t242, ptr %l122
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t243 = load i32, ptr %l122, !tbaa !23
  store i32 %t243, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l18 = alloca ptr
  %l63 = alloca ptr
  %l74 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 19
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4, i64 1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 14
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store ptr %t13, ptr %l18
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l18, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 1
  %t17 = load { i64, [2 x i64] }, ptr %t16
  store { i64, [2 x i64] } %t17, ptr %l2
  %t19 = load { i64, [2 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 0
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckFn(ptr %v0, ptr %t28, i64 %t29, i64 %t30)
  br label %bb6
bb6:
  br label %bb32
bb7:
  %t34 = load { i64, [2 x i64] }, ptr %l2
  %t36 = extractvalue { i64, [2 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 1
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t40 = getelementptr { i32, i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l4, !tbaa !23
  %t43 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t44 = getelementptr { i32, i32 }, ptr %t43, i32 0, i32 1
  %t45 = load i32, ptr %t44
  store i32 %t45, ptr %l5, !tbaa !23
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load i32, ptr %l4, !tbaa !23
  %t50 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckCtor(ptr %v0, ptr %t47, i64 %t48, i32 %t49, i32 %t50)
  br label %bb11
bb11:
  br label %bb32
bb12:
  %t55 = load { i64, [2 x i64] }, ptr %l2
  %t57 = extractvalue { i64, [2 x i64] } %t55, 0
  %t58 = icmp eq i64 %t57, 6
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t61 = getelementptr { i64, i32 }, ptr %t60, i32 0, i32 0
  %t62 = load i64, ptr %t61
  store i64 %t62, ptr %l6, !tbaa !24
  %t64 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t65 = getelementptr { i64, i32 }, ptr %t64, i32 0, i32 1
  %t66 = load i32, ptr %t65
  store i32 %t66, ptr %l7, !tbaa !23
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckGlobal(ptr %v0, ptr %t68, i64 %t69, i64 %t70, i32 %t71)
  br label %bb16
bb16:
  br label %bb32
bb17:
  %t76 = load { i64, [2 x i64] }, ptr %l2
  %t78 = extractvalue { i64, [2 x i64] } %t76, 0
  %t79 = icmp eq i64 %t78, 3
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t82 = getelementptr { i32 }, ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82
  store i32 %t83, ptr %l8, !tbaa !23
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckDtor(ptr %v0, ptr %t85, i64 %t86, i32 %t87)
  br label %bb21
bb21:
  br label %bb32
bb22:
  %t91 = load { i64, [2 x i64] }, ptr %l2
  %t93 = extractvalue { i64, [2 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 9
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t97 = getelementptr { i64, i64 }, ptr %t96, i32 0, i32 0
  %t98 = load i64, ptr %t97
  store i64 %t98, ptr %l9, !tbaa !24
  %t100 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t101 = getelementptr { i64, i64 }, ptr %t100, i32 0, i32 1
  %t102 = load i64, ptr %t101
  store i64 %t102, ptr %l10, !tbaa !24
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i64, ptr %l1, !tbaa !24
  %t106 = load i64, ptr %l9, !tbaa !24
  %t107 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckThunk(ptr %v0, ptr %t104, i64 %t105, i64 %t106, i64 %t107)
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
  call void @__olang_check_failed(ptr @olang_loc_902a17d6016e7481_f3e75797ce7ecebd)
  unreachable
bb32:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 19
  %t115 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t114, i64 %t115, i64 2)
  br label %bb33
bb33:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 14
  %t121 = load i64, ptr %l1, !tbaa !24
  %t124 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t120, i64 %t121)
  store ptr %t124, ptr %l63
  br label %bb34
bb34:
  %t125 = load ptr, ptr %l63, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Body", ptr %t125, i32 0, i32 1
  %t128 = load { i64, [2 x i64] }, ptr %t127
  store { i64, [2 x i64] } %t128, ptr %l11
  %t130 = load { i64, [2 x i64] }, ptr %l11
  %t132 = extractvalue { i64, [2 x i64] } %t130, 0
  %t133 = icmp eq i64 %t132, 0
  br i1 %t133, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  %t135 = load { i64, [2 x i64] }, ptr %l11
  %t137 = extractvalue { i64, [2 x i64] } %t135, 0
  %t138 = icmp eq i64 %t137, 1
  br i1 %t138, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecked(ptr %v0, ptr %t140, i64 %t141)
  br label %bb40
bb40:
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_92175a3a56c2d0f0_3e341b7cdb5c178c)
  unreachable
bb46:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l1, !tbaa !24
  %t148 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t144, i64 %t145)
  store i1 %t148, ptr %l74
  br label %bb47
bb47:
  %t149 = load i1, ptr %l74, !tbaa !21
  br i1 %t149, label %bb48, label %bb49
bb48:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleResults(ptr %v0, ptr %t150, i64 %t151)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echosenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l17 = alloca i1
  %l23 = alloca %"compiler/source:Span"
  %l27 = alloca i1
  %l33 = alloca %"compiler/source:Span"
  %l37 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca ptr
  %l46 = alloca i1
  %l54 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 11
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Cond", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Cond", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb12
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d9d408bf8806a5b7_73d051fbfd3f3593)
  unreachable
bb9:
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Cond", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t41)
  store %"compiler/source:Span" %t43, ptr %l23
  br label %bb11
bb11:
  %t44 = getelementptr %"compiler/source:Span", ptr %l23, i32 0, i32 1
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t47 = load i32, ptr %t46, !tbaa !23
  %t50 = icmp sle i32 %t45, %t47
  store i1 %t50, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l17, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Cond", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb19
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d9d408bf8806a5b7_73d051fbfd3f3593)
  unreachable
bb16:
  br label %bb17
bb17:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Cond", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t63)
  store %"compiler/source:Span" %t65, ptr %l33
  br label %bb18
bb18:
  %t66 = getelementptr %"compiler/source:Span", ptr %l33, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  %t68 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t72 = icmp eq i32 %t67, %t69
  store i1 %t72, ptr %l27, !tbaa !21
  br label %bb19
bb19:
  %t74 = load i1, ptr %l27, !tbaa !21
  br i1 %t74, label %bb20, label %bb21
bb20:
  store ptr %a0, ptr %l37, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Cond", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = icmp eq ptr %t79, null
  br i1 %t81, label %bb22, label %bb23
bb21:
  br label %bb27
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d9d408bf8806a5b7_73d051fbfd3f3593)
  unreachable
bb23:
  br label %bb24
bb24:
  %t83 = load ptr, ptr %l3, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Cond", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t86)
  store %"compiler/source:Span" %t88, ptr %l43
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l37, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l43
  %t91 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t89, %"compiler/source:Span" %t90, i64 2)
  store %"compiler/source:Span" %t91, ptr %l44
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t92 = load %"compiler/source:Span", ptr %l44
  store %"compiler/source:Span" %t92, ptr %rv
  br label %ret
bb27:
  br label %bb40
bb28:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t97 = load ptr, ptr %l45, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 18}
  %t100 = icmp eq i64 %t98, 13
  store i1 %t100, ptr %l46, !tbaa !21
  br label %bb30
bb30:
  %t101 = load i1, ptr %l46, !tbaa !21
  br i1 %t101, label %bb31, label %bb32
bb31:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [5 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l4
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s3
  %t108 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t109 = load i32, ptr %t108, !tbaa !23
  %t110 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t111 = load i32, ptr %t110, !tbaa !23
  %t113 = add i32 %t111, 5
  %t116 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t109, i32 %t113)
  store %"compiler/source:Span" %t116, ptr %l54
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t117 = load %"compiler/source:Span", ptr %l54
  store %"compiler/source:Span" %t117, ptr %rv
  br label %ret
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_c9813818497de78f_1a6747489dcf36eb)
  unreachable
bb40:
  %t118 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t118, ptr %l55
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t119 = load %"compiler/source:Span", ptr %l55
  store %"compiler/source:Span" %t119, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/check:reflList"
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca i1
  %lp42 = alloca ptr
  %l46 = alloca %"compiler/check:reflList"
  %l53 = alloca ptr
  %l59 = alloca i32
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca %"compiler/diagmsg:Msg"
  %l83 = alloca i64
  %l86 = alloca ptr
  %l93 = alloca i32
  %l95 = alloca i32
  %l97 = alloca i32
  %l99 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l106 = alloca %"compiler/ast:ForIn"
  %l109 = alloca i64
  %l111 = alloca ptr
  %l144 = alloca ptr
  %l187 = alloca ptr
  %l192 = alloca i1
  %l194 = alloca ptr
  %l198 = alloca i64
  %l201 = alloca { i64, ptr }
  %l202 = alloca i64
  %l203 = alloca i32
  %l204 = alloca ptr
  %l207 = alloca %"compiler/source:Span"
  %l218 = alloca %"compiler/source:Span"
  %l220 = alloca %"compiler/diagmsg:Msg"
  %l221 = alloca i64
  %l223 = alloca ptr
  %l231 = alloca ptr
  %l232 = alloca %"compiler/source:Span"
  %l235 = alloca i32
  %l239 = alloca { i64, ptr }
  %l242 = alloca %"compiler/typed:Seq"
  %l253 = alloca ptr
  %l257 = alloca i1
  %l261 = alloca %"compiler/source:Span"
  %l262 = alloca i32
  %l263 = alloca ptr
  %l264 = alloca ptr
  %l268 = alloca i32
  %l271 = alloca %"compiler/typed:Collect"
  %l280 = alloca %"compiler/source:Span"
  %l281 = alloca i32
  %l285 = alloca { i64, ptr }
  %l287 = alloca %"compiler/typed:Seq"
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca ptr
  %t439 = alloca { i64, [5 x i64] }, align 8
  %t502 = alloca { i64, [5 x i64] }, align 8
  %t543 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Compr", ptr %t2, i32 0, i32 4
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store %"compiler/check:reflList" %t8, ptr %l46
  br label %bb1
bb1:
  %t9 = load %"compiler/check:reflList", ptr %l46
  store %"compiler/check:reflList" %t9, ptr %l4
  %t10 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 0
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load %"compiler/check:reflList", ptr %l4
  %t17 = load i32, ptr %l3, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrolledCompr(ptr %v0, ptr %v1, ptr %v2, ptr %t13, %"compiler/source:Span" %t14, ptr %t15, %"compiler/check:reflList" %t16, i32 %t17)
  store ptr %t23, ptr %l53
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t24 = load ptr, ptr %l53, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 125
  %t28 = load i1, ptr %t27, !tbaa !21
  store i1 %t28, ptr %l5, !tbaa !21
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 125
  store i1 false, ptr %t32, !tbaa !21
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValueType(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l59
  br label %bb6
bb6:
  %t38 = load i32, ptr %l59, !tbaa !23
  store i32 %t38, ptr %l6, !tbaa !23
  %t39 = load i32, ptr %l6, !tbaa !23
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t43 = icmp ne i32 %t39, %t40
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l66
  br label %bb9
bb8:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb14
bb9:
  %t50 = load i1, ptr %l66, !tbaa !21
  br i1 %t50, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb13
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l72
  br label %bb12
bb12:
  %t61 = load i1, ptr %l72, !tbaa !21
  store i1 %t61, ptr %l67, !tbaa !21
  br label %bb13
bb13:
  %t62 = load i1, ptr %l67, !tbaa !21
  store i1 %t62, ptr %l63, !tbaa !21
  br label %bb14
bb14:
  %t63 = load i1, ptr %l63, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l73, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l74, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Compr", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb17, label %bb18
bb16:
  br label %bb25
bb17:
  call void @__olang_check_failed(ptr @olang_loc_cdb7af735b0e96fc_7d1f1dd52d37eb88)
  unreachable
bb18:
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Compr", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l80
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l74, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l80
  %t81 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t79, %"compiler/source:Span" %t80, i64 1)
  store %"compiler/source:Span" %t81, ptr %l81
  br label %bb21
bb21:
  %t82 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprehensionReferences(ptr %s2)
  store %"compiler/diagmsg:Msg" %t82, ptr %l82
  br label %bb22
bb22:
  %t83 = load ptr, ptr %l73, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l81
  %t85 = load %"compiler/diagmsg:Msg", ptr %l82
  %t86 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t83, %"compiler/source:Span" %t84, %"compiler/diagmsg:Msg" %t85)
  store i64 %t86, ptr %l83
  br label %bb23
bb23:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t87, %"compiler/source:Span" %t88)
  store ptr %t91, ptr %l86
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i1, ptr %l5, !tbaa !21
  %t96 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 125
  store i1 %t93, ptr %t96, !tbaa !21
  %t97 = load ptr, ptr %l86, !tbaa !29
  store ptr %t97, ptr %rv
  br label %ret
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  %t104 = load i32, ptr %l6, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t103, i32 %t104, i32 0)
  store i32 %t107, ptr %l93
  br label %bb26
bb26:
  %t108 = load i32, ptr %l93, !tbaa !23
  store i32 %t108, ptr %l7, !tbaa !23
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr %"compiler/ast:Compr", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %t111, !tbaa !23
  store i32 %t112, ptr %l95, !tbaa !23
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t115 = getelementptr %"compiler/ast:Compr", ptr %t113, i32 0, i32 3
  %t116 = load i32, ptr %t115, !tbaa !23
  store i32 %t116, ptr %l97, !tbaa !23
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/ast:Compr", ptr %t117, i32 0, i32 4
  %t120 = load ptr, ptr %t119, !tbaa !29
  store ptr %t120, ptr %l99, !tbaa !29
  %t121 = icmp sge i64 0, 0
  br i1 %t121, label %bb27, label %bb28
bb27:
  %t123 = icmp sle i64 0, 1152921504606846975
  br i1 %t123, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_e6a78b702db91f09_a31c62fb59cc1eed)
  unreachable
bb29:
  %t125 = mul i64 0, 8
  %t126 = insertvalue { i64, ptr } undef, i64 0, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t127, ptr %l102, !tbaa !27
  %t128 = icmp sge i64 0, 0
  br i1 %t128, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_e6a78b702db91f09_a31c62fb59cc1eed)
  unreachable
bb31:
  %t130 = icmp sle i64 0, 1152921504606846975
  br i1 %t130, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e6a78b702db91f09_a31c62fb59cc1eed)
  unreachable
bb33:
  %t132 = mul i64 0, 8
  %t133 = insertvalue { i64, ptr } undef, i64 0, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t135 = load i32, ptr %l95, !tbaa !23
  %t136 = load i32, ptr %l97, !tbaa !23
  %t137 = load ptr, ptr %l99, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t140 = call %"compiler/ast:ForIn" @compiler_2fast_3aForIn_2ector(ptr %v1, ptr %v2, ptr %v2, ptr %v2, i32 %t135, i32 %t136, ptr %t137, i1 false, { i64, ptr } %t138, { i64, ptr } %t134, i1 false)
  store %"compiler/ast:ForIn" %t140, ptr %l106
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e6a78b702db91f09_a31c62fb59cc1eed)
  unreachable
bb35:
  %t141 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 64, i64 8)
  store ptr %t141, ptr %lp8
  %t142 = load %"compiler/ast:ForIn", ptr %l106
  %t143 = load ptr, ptr %lp8
  store %"compiler/ast:ForIn" %t142, ptr %t143
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 37
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t146)
  store i64 %t148, ptr %l109
  br label %bb36
bb36:
  %t149 = load i64, ptr %l109, !tbaa !24
  store i64 %t149, ptr %l9, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t150)
  store ptr %t152, ptr %l111
  br label %bb37
bb37:
  %t153 = load ptr, ptr %l111, !tbaa !29
  %t155 = getelementptr %"compiler/check:frame", ptr %t153, i32 0, i32 17
  %t156 = load i64, ptr %t155, !tbaa !24
  store i64 %t156, ptr %l10, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/check:Checker", ptr %t158, i32 0, i32 117
  %t161 = load i64, ptr %t160, !tbaa !24
  store i64 %t161, ptr %l11, !tbaa !24
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 118
  %t166 = load i64, ptr %t165, !tbaa !24
  store i64 %t166, ptr %l12, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 119
  %t171 = load i64, ptr %t170, !tbaa !24
  store i64 %t171, ptr %l13, !tbaa !24
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/check:Checker", ptr %t173, i32 0, i32 120
  %t176 = load i64, ptr %t175, !tbaa !24
  store i64 %t176, ptr %l14, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 121
  %t181 = load i64, ptr %t180, !tbaa !24
  store i64 %t181, ptr %l15, !tbaa !24
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 122
  %t186 = load i64, ptr %t185, !tbaa !24
  store i64 %t186, ptr %l16, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 123
  %t191 = load i64, ptr %t190, !tbaa !24
  store i64 %t191, ptr %l17, !tbaa !24
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/check:Checker", ptr %t193, i32 0, i32 124
  %t196 = load i64, ptr %t195, !tbaa !24
  store i64 %t196, ptr %l18, !tbaa !24
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/check:Checker", ptr %t198, i32 0, i32 117
  store i64 1, ptr %t202, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 122
  store i64 -1, ptr %t207, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 123
  store i64 -1, ptr %t212, !tbaa !24
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 124
  store i64 -1, ptr %t217, !tbaa !24
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l1
  %t220 = load ptr, ptr %lp8
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t223 = load i32, ptr %l6, !tbaa !23
  %t229 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalk(ptr %v0, ptr %v2, ptr %v1, ptr %v2, ptr %t218, %"compiler/source:Span" %t219, ptr %t220, ptr %t221, i32 %t223)
  store ptr %t229, ptr %l144
  br label %bb38
bb38:
  %t230 = load ptr, ptr %l144, !tbaa !29
  store ptr %t230, ptr %l23, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/check:Checker", ptr %t231, i32 0, i32 117
  %t234 = load i64, ptr %t233, !tbaa !24
  %t236 = icmp eq i64 %t234, 1
  br i1 %t236, label %bb39, label %bb40
bb39:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %t238, %"compiler/source:Span" %t239)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/check:Checker", ptr %t242, i32 0, i32 117
  %t245 = load i64, ptr %t244, !tbaa !24
  store i64 %t245, ptr %l24, !tbaa !24
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 118
  %t250 = load i64, ptr %t249, !tbaa !24
  store i64 %t250, ptr %l25, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 119
  %t255 = load i64, ptr %t254, !tbaa !24
  store i64 %t255, ptr %l26, !tbaa !24
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 120
  %t260 = load i64, ptr %t259, !tbaa !24
  store i64 %t260, ptr %l27, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/check:Checker", ptr %t262, i32 0, i32 121
  %t265 = load i64, ptr %t264, !tbaa !24
  store i64 %t265, ptr %l28, !tbaa !24
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 122
  %t270 = load i64, ptr %t269, !tbaa !24
  store i64 %t270, ptr %l29, !tbaa !24
  %t272 = load i64, ptr %l11, !tbaa !24
  %t274 = load i64, ptr %l12, !tbaa !24
  %t276 = load i64, ptr %l13, !tbaa !24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t280 = load i64, ptr %l15, !tbaa !24
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t282, i32 0, i32 117
  store i64 %t272, ptr %t286, !tbaa !24
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 118
  store i64 %t274, ptr %t291, !tbaa !24
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 119
  store i64 %t276, ptr %t296, !tbaa !24
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t297, i32 0, i32 120
  store i64 %t278, ptr %t301, !tbaa !24
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 121
  store i64 %t280, ptr %t306, !tbaa !24
  %t307 = load i64, ptr %l16, !tbaa !24
  %t309 = load i64, ptr %l17, !tbaa !24
  %t311 = load i64, ptr %l18, !tbaa !24
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/check:Checker", ptr %t313, i32 0, i32 122
  store i64 %t307, ptr %t317, !tbaa !24
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 123
  store i64 %t309, ptr %t322, !tbaa !24
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/check:Checker", ptr %t323, i32 0, i32 124
  store i64 %t311, ptr %t327, !tbaa !24
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t328)
  store ptr %t330, ptr %l187
  br label %bb43
bb43:
  %t331 = load ptr, ptr %l187, !tbaa !29
  %t333 = getelementptr %"compiler/check:frame", ptr %t331, i32 0, i32 17
  %t334 = load i64, ptr %t333, !tbaa !24
  %t335 = load i64, ptr %l10, !tbaa !24
  %t338 = icmp sgt i64 %t334, %t335
  br i1 %t338, label %bb44, label %bb45
bb44:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t340)
  store ptr %t342, ptr %l194
  br label %bb46
bb45:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb47
bb46:
  %t343 = load ptr, ptr %l194, !tbaa !29
  %t345 = getelementptr %"compiler/check:frame", ptr %t343, i32 0, i32 15
  %t346 = load i64, ptr %t345, !tbaa !24
  %t348 = icmp eq i64 %t346, 0
  store i1 %t348, ptr %l192, !tbaa !21
  br label %bb47
bb47:
  %t350 = load i1, ptr %l192, !tbaa !21
  br i1 %t350, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s6
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load %"compiler/source:Span", ptr %l1
  %t355 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t351, %"compiler/source:Span" %t352)
  store { i64, ptr } %t355, ptr %l201
  br label %bb50
bb49:
  br label %bb61
bb50:
  %t356 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t357 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s6, { i64, ptr } %t356, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) })
  %t358 = extractvalue { i32, i64 } %t357, 1
  %t359 = extractvalue { i32, i64 } %t357, 0
  store i32 %t359, ptr %l203
  %t360 = icmp ne i32 %t359, 0
  br i1 %t360, label %bb52, label %ok.361, !prof !99
ok.361:
  store i64 %t358, ptr %l202
  br label %bb51
bb51:
  %t362 = load i64, ptr %l202, !tbaa !24
  store i64 %t362, ptr %l198, !tbaa !24
  br label %bb54
bb52:
  br label %bb53
bb53:
  store i64 -1, ptr %l198, !tbaa !24
  br label %bb54
bb54:
  %t363 = load i64, ptr %l198, !tbaa !24
  store i64 %t363, ptr %l38, !tbaa !24
  %t364 = load ptr, ptr %l0, !tbaa !29
  store ptr %t364, ptr %l204, !tbaa !29
  %t365 = load i64, ptr %l38, !tbaa !24
  %t367 = icmp sge i64 %t365, 0
  br i1 %t367, label %bb55, label %bb56
bb55:
  %t369 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t370 = load i32, ptr %t369, !tbaa !23
  %t371 = load i64, ptr %l38, !tbaa !24
  %t373 = add i64 %t371, 1
  %t375 = trunc i64 %t373 to i32
  %t378 = add i32 %t370, %t375
  %t379 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t380 = load i32, ptr %t379, !tbaa !23
  %t381 = load i64, ptr %l38, !tbaa !24
  %t383 = add i64 %t381, 4
  %t385 = trunc i64 %t383 to i32
  %t388 = add i32 %t380, %t385
  %t391 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t378, i32 %t388)
  store %"compiler/source:Span" %t391, ptr %l218
  br label %bb57
bb56:
  %t392 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t392, ptr %l207
  br label %bb58
bb57:
  %t394 = load %"compiler/source:Span", ptr %l218
  store %"compiler/source:Span" %t394, ptr %l207
  br label %bb58
bb58:
  %t395 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprNeedsTry(ptr %s6)
  store %"compiler/diagmsg:Msg" %t395, ptr %l220
  br label %bb59
bb59:
  %t396 = load ptr, ptr %l204, !tbaa !29
  %t397 = load %"compiler/source:Span", ptr %l207
  %t398 = load %"compiler/diagmsg:Msg", ptr %l220
  %t399 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t396, %"compiler/source:Span" %t397, %"compiler/diagmsg:Msg" %t398)
  store i64 %t399, ptr %l221
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s6)
  br label %bb61
bb61:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t400)
  store ptr %t402, ptr %l223
  br label %bb62
bb62:
  %t403 = load ptr, ptr %l223, !tbaa !29
  %t404 = load i64, ptr %l10, !tbaa !24
  %t407 = getelementptr %"compiler/check:frame", ptr %t403, i32 0, i32 17
  store i64 %t404, ptr %t407, !tbaa !24
  %t408 = load i64, ptr %l24, !tbaa !24
  %t410 = icmp eq i64 %t408, 3
  br i1 %t410, label %bb63, label %bb64
bb63:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load %"compiler/source:Span", ptr %l1
  %t414 = load i64, ptr %l29, !tbaa !24
  %t418 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t412, %"compiler/source:Span" %t413, i64 %t414)
  store ptr %t418, ptr %l231
  br label %bb65
bb64:
  br label %bb69
bb65:
  %t419 = load ptr, ptr %l231, !tbaa !29
  store ptr %t419, ptr %l39, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t420, ptr %l232
  %t421 = load ptr, ptr %l39, !tbaa !29
  %t424 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t421)
  store i32 %t424, ptr %l235
  br label %bb66
bb66:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/check:Checker", ptr %t425, i32 0, i32 37
  %t428 = load i64, ptr %l9, !tbaa !24
  %t431 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t427, i64 %t428)
  store { i64, ptr } %t431, ptr %l239
  br label %bb67
bb67:
  %t432 = load ptr, ptr %l39, !tbaa !29
  %t434 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t436 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t434, ptr %t432, i1 false)
  store %"compiler/typed:Seq" %t436, ptr %l242
  br label %bb68
bb68:
  %t437 = load %"compiler/typed:Seq", ptr %l242
  %t438 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t437, ptr %t438
  store { i64, [5 x i64] } zeroinitializer, ptr %t439
  %t440 = getelementptr { i64, [5 x i64] }, ptr %t439, i32 0, i32 0
  store i64 12, ptr %t440
  %t441 = load %"compiler/source:Span", ptr %l232
  %t442 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t441, 0
  %t443 = load i32, ptr %l235, !tbaa !23
  %t444 = insertvalue { %"compiler/source:Span", i32, ptr } %t442, i32 %t443, 1
  %t446 = insertvalue { %"compiler/source:Span", i32, ptr } %t444, ptr %t438, 2
  %t447 = getelementptr { i64, [5 x i64] }, ptr %t439, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t446, ptr %t447
  %t448 = load { i64, [5 x i64] }, ptr %t439
  %t450 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t448, ptr %t450
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t452 = load i1, ptr %l5, !tbaa !21
  %t455 = getelementptr %"compiler/check:Checker", ptr %t451, i32 0, i32 125
  store i1 %t452, ptr %t455, !tbaa !21
  store ptr %t450, ptr %rv
  br label %ret
bb69:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load i64, ptr %l25, !tbaa !24
  %t459 = load i64, ptr %l26, !tbaa !24
  %t460 = load i64, ptr %l27, !tbaa !24
  %t461 = load i64, ptr %l28, !tbaa !24
  %t467 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t457, i64 %t458, i64 %t459, i64 %t460, i64 %t461)
  store ptr %t467, ptr %l253
  br label %bb70
bb70:
  %t468 = load ptr, ptr %l253, !tbaa !29
  store ptr %t468, ptr %l40, !tbaa !29
  %t469 = load ptr, ptr %l23, !tbaa !29
  %t471 = icmp eq ptr %t469, null
  %t473 = xor i1 %t471, true
  br i1 %t473, label %bb71, label %bb72
bb71:
  %t475 = load ptr, ptr %l2, !tbaa !29
  %t477 = getelementptr %"compiler/ast:Compr", ptr %t475, i32 0, i32 5
  %t478 = load ptr, ptr %t477, !tbaa !29
  %t480 = icmp eq ptr %t478, null
  store i1 %t480, ptr %l257, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l257, !tbaa !21
  br label %bb73
bb73:
  %t482 = load i1, ptr %l257, !tbaa !21
  store i1 %t482, ptr %l41, !tbaa !21
  %t483 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t483, ptr %l261
  %t484 = load i32, ptr %l7, !tbaa !23
  store i32 %t484, ptr %l262, !tbaa !23
  %t485 = load ptr, ptr %l23, !tbaa !29
  store ptr %t485, ptr %l263, !tbaa !29
  %t486 = load ptr, ptr %l40, !tbaa !29
  store ptr %t486, ptr %l264, !tbaa !29
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load %"compiler/source:Span", ptr %l1
  %t492 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t487, i32 3, %"compiler/source:Span" %t488)
  store i32 %t492, ptr %l268
  br label %bb74
bb74:
  %t493 = load i1, ptr %l41, !tbaa !21
  %t494 = load ptr, ptr %l263, !tbaa !29
  %t495 = load ptr, ptr %l264, !tbaa !29
  %t496 = load i32, ptr %l268, !tbaa !23
  %t499 = call %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t494, ptr %t495, i32 %t496, i32 0, i1 %t493)
  store %"compiler/typed:Collect" %t499, ptr %l271
  br label %bb75
bb75:
  %t500 = load %"compiler/typed:Collect", ptr %l271
  %t501 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Collect" %t500, ptr %t501
  store { i64, [5 x i64] } zeroinitializer, ptr %t502
  %t503 = getelementptr { i64, [5 x i64] }, ptr %t502, i32 0, i32 0
  store i64 8, ptr %t503
  %t504 = load %"compiler/source:Span", ptr %l261
  %t505 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t504, 0
  %t506 = load i32, ptr %l262, !tbaa !23
  %t507 = insertvalue { %"compiler/source:Span", i32, ptr } %t505, i32 %t506, 1
  %t509 = insertvalue { %"compiler/source:Span", i32, ptr } %t507, ptr %t501, 2
  %t510 = getelementptr { i64, [5 x i64] }, ptr %t502, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t509, ptr %t510
  %t511 = load { i64, [5 x i64] }, ptr %t502
  %t512 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t512, ptr %lp42
  %t514 = load ptr, ptr %lp42
  store { i64, [5 x i64] } %t511, ptr %t514
  %t515 = load i64, ptr %l28, !tbaa !24
  %t516 = load i64, ptr %l9, !tbaa !24
  %t519 = icmp eq i64 %t515, %t516
  br i1 %t519, label %bb76, label %bb77
bb76:
  %t521 = load ptr, ptr %lp42
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t523 = load i1, ptr %l5, !tbaa !21
  %t526 = getelementptr %"compiler/check:Checker", ptr %t522, i32 0, i32 125
  store i1 %t523, ptr %t526, !tbaa !21
  store ptr %t521, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t528 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t528, ptr %l280
  %t529 = load i32, ptr %l7, !tbaa !23
  store i32 %t529, ptr %l281, !tbaa !23
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t532 = getelementptr %"compiler/check:Checker", ptr %t530, i32 0, i32 37
  %t533 = load i64, ptr %l9, !tbaa !24
  %t536 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t532, i64 %t533)
  store { i64, ptr } %t536, ptr %l285
  br label %bb79
bb79:
  %t537 = load ptr, ptr %lp42
  %t538 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t540 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t538, ptr %t537, i1 false)
  store %"compiler/typed:Seq" %t540, ptr %l287
  br label %bb80
bb80:
  %t541 = load %"compiler/typed:Seq", ptr %l287
  %t542 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t541, ptr %t542
  store { i64, [5 x i64] } zeroinitializer, ptr %t543
  %t544 = getelementptr { i64, [5 x i64] }, ptr %t543, i32 0, i32 0
  store i64 12, ptr %t544
  %t545 = load %"compiler/source:Span", ptr %l280
  %t546 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t545, 0
  %t547 = load i32, ptr %l281, !tbaa !23
  %t548 = insertvalue { %"compiler/source:Span", i32, ptr } %t546, i32 %t547, 1
  %t550 = insertvalue { %"compiler/source:Span", i32, ptr } %t548, ptr %t542, 2
  %t551 = getelementptr { i64, [5 x i64] }, ptr %t543, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t550, ptr %t551
  %t552 = load { i64, [5 x i64] }, ptr %t543
  %t554 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t552, ptr %t554
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t556 = load i1, ptr %l5, !tbaa !21
  %t559 = getelementptr %"compiler/check:Checker", ptr %t555, i32 0, i32 125
  store i1 %t556, ptr %t559, !tbaa !21
  store ptr %t554, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeBody(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i64 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca i64
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l15 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l16 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca ptr
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca i32
  %l40 = alloca i1
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca ptr
  %l47 = alloca { i64, [2 x i64] }
  %l52 = alloca i32
  %l55 = alloca i64
  %l59 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca i64
  %l80 = alloca %"compiler/generic:Context"
  %l82 = alloca %"compiler/generic:Context"
  %l86 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l87 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l89 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l90 = alloca i32
  %l92 = alloca i1
  %l99 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l100 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l102 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l103 = alloca i32
  %l105 = alloca i1
  %l111 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l112 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l114 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l115 = alloca i32
  %l117 = alloca i1
  %l125 = alloca ptr
  %l128 = alloca i32
  %l131 = alloca i64
  %l132 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca ptr
  %l145 = alloca i32
  %l150 = alloca i32
  %l151 = alloca i32
  %l153 = alloca i32
  %l155 = alloca i1
  %l156 = alloca ptr
  %l159 = alloca i32
  %l160 = alloca i1
  %l168 = alloca ptr
  %l189 = alloca ptr
  %l190 = alloca ptr
  %l194 = alloca { i64, ptr }
  %l195 = alloca %"compiler/typed:Block"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t48 = alloca { i64, [2 x i64] }, align 8
  %t124 = alloca %"compiler/generic:Context", align 8
  %t394 = alloca { i64, [4 x i64] }, align 8
  %t433 = alloca { i64, [4 x i64] }, align 8
  %t448 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l23
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l23, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l7, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSynthGlobal(ptr %v0, ptr %v1, ptr %t13, i64 %t14, i32 %t15, ptr %t16)
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 143
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t23)
  br label %bb3
bb3:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t30 = call { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v1, ptr %s0, ptr %t25, ptr %t26)
  %t31 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t30, 1
  %t32 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t30, 0
  store i32 %t32, ptr %l38
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb5, label %ok.34, !prof !99
ok.34:
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t31, ptr %l37
  br label %bb4
bb4:
  %t36 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %s0, ptr %l37)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, ptr %l42
  br label %bb7
bb5:
  %t37 = load i32, ptr %l38, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  store i1 %t40, ptr %l40, !tbaa !21
  br label %bb6
bb6:
  %t41 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t41, ptr %l43
  br label %bb8
bb7:
  %t42 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l33
  br label %bb9
bb8:
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %l33
  br label %bb9
bb9:
  %t44 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l8
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l44, !tbaa !29
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load i32, ptr %l5, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 0
  store i64 6, ptr %t49
  %t51 = insertvalue { i64, i32 } undef, i64 %t46, 0
  %t53 = insertvalue { i64, i32 } %t51, i32 %t47, 1
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  store { i64, i32 } %t53, ptr %t54
  %t55 = load { i64, [2 x i64] }, ptr %t48
  store { i64, [2 x i64] } %t55, ptr %l47
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t61, i32 0, i32 %t62, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t65, ptr %l52
  br label %bb10
bb10:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load %"compiler/source:Span", ptr %l1
  %t68 = load ptr, ptr %l44, !tbaa !29
  %t69 = load { i64, [2 x i64] }, ptr %l47
  %t70 = load i32, ptr %l52, !tbaa !23
  %t73 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t68, { i64, [2 x i64] } %t69, i32 %t70, i64 %t66, %"compiler/source:Span" %t67)
  store i64 %t73, ptr %l55
  br label %bb11
bb11:
  %t74 = load i64, ptr %l55, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load i32, ptr %l5, !tbaa !23
  %t78 = sext i32 %t76 to i64
  %t81 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t75, i64 %t78)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t81, ptr %l59
  br label %bb12
bb12:
  %t82 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l59
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t82, ptr %l10
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 27
  %t86 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  %t87 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t85, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t86, i64 %t87)
  br label %bb13
bb13:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 19
  %t94 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t93, i64 %t94, i64 1)
  br label %bb14
bb14:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr %"compiler/check:frame", ptr %t97, i32 0, i32 0
  %t100 = load i64, ptr %t99, !tbaa !24
  store i64 %t100, ptr %l11, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t105 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t110 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t102, i64 %t103, i64 %t104, i32 %t105, i32 0)
  store ptr %t110, ptr %l73
  br label %bb15
bb15:
  %t111 = load ptr, ptr %l73, !tbaa !29
  store ptr %t111, ptr %l12, !tbaa !29
  %t112 = load ptr, ptr %l12, !tbaa !29
  store ptr %t112, ptr %l74, !tbaa !29
  %t113 = ptrtoint ptr %v0 to i64
  store i64 %t113, ptr %l75, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t114, label %bb16, label %bb17
bb16:
  %t116 = call ptr @__olang_region_make(ptr %v0)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l75, !tbaa !24
  br label %bb17
bb17:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t119 = load ptr, ptr %l6, !tbaa !29
  %t121 = getelementptr %"compiler/check:frame", ptr %t119, i32 0, i32 4
  %t122 = getelementptr %"compiler/generic:Context", ptr %t121, i32 0, i32 1
  %t123 = load i64, ptr %t122, !tbaa !24
  %t125 = load i64, ptr %l75
  %t126 = inttoptr i64 %t125 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t124, ptr %t126, i64 %t118, i64 %t123)
  call void @llvm.memmove.p0.p0.i64(ptr %l80, ptr %t124, i64 160, i1 false)
  br label %bb18
bb18:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t129, label %bb19, label %bb20
bb19:
  %t131 = load i64, ptr %l75
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"compiler/generic:Context", ptr %l80, i32 0, i32 3
  %t134 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t133, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = icmp ne ptr %t137, null
  %t139 = select i1 %t138, ptr %t137, ptr null
  %t140 = getelementptr %"compiler/generic:Context", ptr %l80, i32 0, i32 3
  %t141 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t140, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr %t139
  %t147 = getelementptr %"compiler/generic:Context", ptr %l80, i32 0, i32 3
  %t148 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t147, i32 0, i32 0
  %t149 = load { i64, ptr }, ptr %t148
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = call ptr @__olang_region_or(ptr %t150, ptr null)
  %t152 = icmp ne ptr %t151, null
  %t153 = select i1 %t152, ptr %t151, ptr %t146
  %t154 = getelementptr %"compiler/generic:Context", ptr %l80, i32 0, i32 2
  %t155 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t154, i32 0, i32 2
  %t156 = load { i64, ptr }, ptr %t155
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = call ptr @__olang_region_or(ptr %t157, ptr null)
  %t159 = icmp ne ptr %t158, null
  %t160 = select i1 %t159, ptr %t158, ptr %t153
  %t161 = getelementptr %"compiler/generic:Context", ptr %l80, i32 0, i32 2
  %t162 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t161, i32 0, i32 1
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = icmp ne ptr %t165, null
  %t167 = select i1 %t166, ptr %t165, ptr %t160
  %t168 = getelementptr %"compiler/generic:Context", ptr %l80, i32 0, i32 2
  %t169 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t168, i32 0, i32 0
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr %t167
  %t175 = icmp eq ptr %t174, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t175)
  br label %bb20
bb20:
  %t176 = load ptr, ptr %l74, !tbaa !29
  %t177 = getelementptr %"compiler/check:frame", ptr %t176, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l82, ptr %t177, i64 160, i1 false)
  %t178 = load ptr, ptr %l74, !tbaa !29
  %t179 = getelementptr %"compiler/check:frame", ptr %t178, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t179, ptr %l80, i64 160, i1 false)
  %t180 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t180, label %bb21, label %bb22
bb21:
  %t182 = getelementptr %"compiler/generic:Context", ptr %l82, i32 0, i32 3
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t182, i32 0, i32 2
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr null
  %t189 = getelementptr %"compiler/generic:Context", ptr %l82, i32 0, i32 3
  %t190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t189, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr %t188
  %t196 = getelementptr %"compiler/generic:Context", ptr %l82, i32 0, i32 3
  %t197 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t196, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = icmp ne ptr %t200, null
  %t202 = select i1 %t201, ptr %t200, ptr %t195
  %t203 = getelementptr %"compiler/generic:Context", ptr %l82, i32 0, i32 2
  %t204 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t203, i32 0, i32 2
  %t205 = load { i64, ptr }, ptr %t204
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = call ptr @__olang_region_or(ptr %t206, ptr null)
  %t208 = icmp ne ptr %t207, null
  %t209 = select i1 %t208, ptr %t207, ptr %t202
  %t210 = getelementptr %"compiler/generic:Context", ptr %l82, i32 0, i32 2
  %t211 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t210, i32 0, i32 1
  %t212 = load { i64, ptr }, ptr %t211
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = call ptr @__olang_region_or(ptr %t213, ptr null)
  %t215 = icmp ne ptr %t214, null
  %t216 = select i1 %t215, ptr %t214, ptr %t209
  %t217 = getelementptr %"compiler/generic:Context", ptr %l82, i32 0, i32 2
  %t218 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t217, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = call ptr @__olang_region_or(ptr %t220, ptr null)
  %t222 = icmp ne ptr %t221, null
  %t223 = select i1 %t222, ptr %t221, ptr %t216
  call void @__olang_region_drop(ptr %t223)
  store %"compiler/generic:Context" zeroinitializer, ptr %l82
  br label %bb22
bb22:
  %t224 = load ptr, ptr %l6, !tbaa !29
  %t226 = getelementptr %"compiler/check:frame", ptr %t224, i32 0, i32 4
  %t227 = getelementptr %"compiler/generic:Context", ptr %t226, i32 0, i32 2
  %t229 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t227)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t229, ptr %l86
  br label %bb23
bb23:
  %t230 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l86
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t230, ptr %l13
  br label %bb24
bb24:
  %t232 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l13)
  %t233 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t232, 1
  %t234 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t232, 0
  store i32 %t234, ptr %l90
  %t235 = icmp ne i32 %t234, 0
  br i1 %t235, label %bb26, label %ok.236, !prof !99
ok.236:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t233, ptr %l89
  br label %bb25
bb25:
  %t237 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l89
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t237, ptr %l87
  br label %bb28
bb26:
  %t238 = load i32, ptr %l90, !tbaa !23
  %t239 = ashr i32 %t238, 16
  %t241 = icmp eq i32 %t239, 1
  store i1 %t241, ptr %l92, !tbaa !21
  br label %bb27
bb27:
  br label %bb31
bb28:
  %t242 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l87
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t242, ptr %l14
  %t243 = load ptr, ptr %l12, !tbaa !29
  %t245 = getelementptr %"compiler/check:frame", ptr %t243, i32 0, i32 4
  %t246 = getelementptr %"compiler/generic:Context", ptr %t245, i32 0, i32 2
  %t247 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l14, i32 0, i32 0
  %t248 = load i32, ptr %t247, !tbaa !23
  %t249 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l14, i32 0, i32 1
  %t250 = load i32, ptr %t249, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t246, i32 %t248, i32 %t250)
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb24
bb31:
  %t254 = load ptr, ptr %l6, !tbaa !29
  %t256 = getelementptr %"compiler/check:frame", ptr %t254, i32 0, i32 4
  %t257 = getelementptr %"compiler/generic:Context", ptr %t256, i32 0, i32 3
  %t259 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t257)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t259, ptr %l99
  br label %bb32
bb32:
  %t260 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l99
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t260, ptr %l15
  br label %bb33
bb33:
  %t262 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l15)
  %t263 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t262, 1
  %t264 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t262, 0
  store i32 %t264, ptr %l103
  %t265 = icmp ne i32 %t264, 0
  br i1 %t265, label %bb35, label %ok.266, !prof !99
ok.266:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t263, ptr %l102
  br label %bb34
bb34:
  %t267 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l102
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t267, ptr %l100
  br label %bb37
bb35:
  %t268 = load i32, ptr %l103, !tbaa !23
  %t269 = ashr i32 %t268, 16
  %t271 = icmp eq i32 %t269, 1
  store i1 %t271, ptr %l105, !tbaa !21
  br label %bb36
bb36:
  br label %bb40
bb37:
  %t272 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l100
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t272, ptr %l16
  %t273 = load ptr, ptr %l12, !tbaa !29
  %t275 = getelementptr %"compiler/check:frame", ptr %t273, i32 0, i32 4
  %t276 = getelementptr %"compiler/generic:Context", ptr %t275, i32 0, i32 3
  %t277 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l16, i32 0, i32 0
  %t278 = load i32, ptr %t277, !tbaa !23
  %t279 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l16, i32 0, i32 1
  %t280 = load i32, ptr %t279, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t276, i32 %t278, i32 %t280)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb33
bb40:
  %t285 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %s0, ptr %s0, ptr %l8)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t285, ptr %l111
  br label %bb41
bb41:
  %t286 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l111
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t286, ptr %l17
  br label %bb42
bb42:
  %t288 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %s0, ptr %l17)
  %t289 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t288, 1
  %t290 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t288, 0
  store i32 %t290, ptr %l115
  %t291 = icmp ne i32 %t290, 0
  br i1 %t291, label %bb44, label %ok.292, !prof !99
ok.292:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t289, ptr %l114
  br label %bb43
bb43:
  %t293 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l114
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t293, ptr %l112
  br label %bb46
bb44:
  %t294 = load i32, ptr %l115, !tbaa !23
  %t295 = ashr i32 %t294, 16
  %t297 = icmp eq i32 %t295, 1
  store i1 %t297, ptr %l117, !tbaa !21
  br label %bb45
bb45:
  br label %bb49
bb46:
  %t298 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l112
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t298, ptr %l18
  %t299 = load ptr, ptr %l12, !tbaa !29
  %t301 = getelementptr %"compiler/check:frame", ptr %t299, i32 0, i32 44
  %t302 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18, i32 0, i32 0
  %t303 = load i32, ptr %t302, !tbaa !23
  %t304 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18, i32 0, i32 1
  %t305 = load i64, ptr %t304, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t301, i32 %t303, i64 %t305)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb42
bb49:
  %t309 = load ptr, ptr %l12, !tbaa !29
  %t310 = load i64, ptr %l11, !tbaa !24
  %t313 = getelementptr %"compiler/check:frame", ptr %t309, i32 0, i32 45
  store i64 %t310, ptr %t313, !tbaa !24
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t314)
  store ptr %t316, ptr %l125
  br label %bb50
bb50:
  %t317 = load %"compiler/source:Span", ptr %l1
  %t318 = load ptr, ptr %l125, !tbaa !29
  %t321 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t318, i32 -1, i32 0, %"compiler/source:Span" %t317)
  store i32 %t321, ptr %l128
  br label %bb51
bb51:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/check:Checker", ptr %t322, i32 0, i32 37
  %t326 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t324)
  store i64 %t326, ptr %l131
  br label %bb52
bb52:
  %t327 = load i64, ptr %l131, !tbaa !24
  store i64 %t327, ptr %l19, !tbaa !24
  %t328 = load ptr, ptr %l0, !tbaa !29
  store ptr %t328, ptr %l132, !tbaa !29
  %t329 = load ptr, ptr %l132, !tbaa !29
  %t330 = getelementptr %"compiler/check:Checker", ptr %t329, i32 0, i32 135
  %t331 = load i64, ptr %t330, !tbaa !24
  %t333 = add i64 %t331, 1
  %t335 = load ptr, ptr %l132, !tbaa !29
  %t336 = getelementptr %"compiler/check:Checker", ptr %t335, i32 0, i32 135
  store i64 %t333, ptr %t336, !tbaa !24
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l2, !tbaa !29
  %t339 = load i32, ptr %l3, !tbaa !23
  %t343 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t337, ptr %t338, i32 %t339)
  store ptr %t343, ptr %l138
  br label %bb53
bb53:
  %t344 = load ptr, ptr %l138, !tbaa !29
  store ptr %t344, ptr %l20, !tbaa !29
  %t345 = load ptr, ptr %l0, !tbaa !29
  store ptr %t345, ptr %l139, !tbaa !29
  %t346 = load ptr, ptr %l139, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 135
  %t348 = load i64, ptr %t347, !tbaa !24
  %t350 = sub i64 %t348, 1
  %t352 = load ptr, ptr %l139, !tbaa !29
  %t353 = getelementptr %"compiler/check:Checker", ptr %t352, i32 0, i32 135
  store i64 %t350, ptr %t353, !tbaa !24
  %t354 = load i32, ptr %l3, !tbaa !23
  %t355 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t358 = icmp ne i32 %t354, %t355
  br i1 %t358, label %bb54, label %bb55
bb54:
  %t360 = load i32, ptr %l3, !tbaa !23
  store i32 %t360, ptr %l145, !tbaa !23
  br label %bb57
bb55:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load ptr, ptr %l2, !tbaa !29
  %t364 = load ptr, ptr %l20, !tbaa !29
  %t368 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v0, ptr %t362, ptr %t363, ptr %t364, i1 true)
  store i32 %t368, ptr %l150
  br label %bb56
bb56:
  %t369 = load i32, ptr %l150, !tbaa !23
  store i32 %t369, ptr %l145, !tbaa !23
  br label %bb57
bb57:
  %t370 = load i32, ptr %l145, !tbaa !23
  store i32 %t370, ptr %l21, !tbaa !23
  %t371 = load i32, ptr %l21, !tbaa !23
  store i32 %t371, ptr %l151, !tbaa !23
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t372)
  store i32 %t374, ptr %l153
  br label %bb58
bb58:
  %t375 = load i32, ptr %l151, !tbaa !23
  %t376 = load i32, ptr %l153, !tbaa !23
  %t377 = icmp eq i32 %t375, %t376
  br i1 %t377, label %bb59, label %bb60
bb59:
  %t379 = load ptr, ptr %l0, !tbaa !29
  store ptr %t379, ptr %l156, !tbaa !29
  %t380 = load ptr, ptr %l20, !tbaa !29
  %t383 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t380)
  store i32 %t383, ptr %l159
  br label %bb61
bb60:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb63
bb61:
  %t384 = load ptr, ptr %l156, !tbaa !29
  %t385 = load i32, ptr %l159, !tbaa !23
  %t386 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t384, i32 %t385)
  store i1 %t386, ptr %l160
  br label %bb62
bb62:
  %t387 = load i1, ptr %l160, !tbaa !21
  store i1 %t387, ptr %l155, !tbaa !21
  br label %bb63
bb63:
  %t388 = load i1, ptr %l155, !tbaa !21
  br i1 %t388, label %bb64, label %bb65
bb64:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load %"compiler/source:Span", ptr %l1
  %t391 = load %"compiler/source:Span", ptr %l1
  %t392 = load i32, ptr %l21, !tbaa !23
  %t393 = load ptr, ptr %l20, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t394
  %t395 = getelementptr { i64, [4 x i64] }, ptr %t394, i32 0, i32 0
  store i64 2, ptr %t395
  %t397 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t391, 0
  %t399 = insertvalue { %"compiler/source:Span", i32, ptr } %t397, i32 %t392, 1
  %t401 = insertvalue { %"compiler/source:Span", i32, ptr } %t399, ptr %t393, 2
  %t402 = getelementptr { i64, [4 x i64] }, ptr %t394, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t401, ptr %t402
  %t403 = load { i64, [4 x i64] }, ptr %t394
  %t405 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t403, ptr %t405
  %t409 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t389, %"compiler/source:Span" %t390, ptr %t405)
  store ptr %t409, ptr %l168
  br label %bb66
bb65:
  br label %bb67
bb66:
  %t410 = load ptr, ptr %l168, !tbaa !29
  store ptr %t410, ptr %l20, !tbaa !29
  br label %bb67
bb67:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/check:Checker", ptr %t411, i32 0, i32 28
  %t414 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  %t415 = load i32, ptr %l21, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %t413, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t414, i32 %t415)
  br label %bb68
bb68:
  %t419 = load i32, ptr %l21, !tbaa !23
  %t420 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t423 = icmp ne i32 %t419, %t420
  br i1 %t423, label %bb69, label %bb70
bb69:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/check:Checker", ptr %t425, i32 0, i32 37
  %t428 = load %"compiler/source:Span", ptr %l1
  %t429 = load %"compiler/source:Span", ptr %l1
  %t430 = load i32, ptr %l21, !tbaa !23
  %t431 = load i64, ptr %l4, !tbaa !24
  %t432 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t433
  %t434 = getelementptr { i64, [4 x i64] }, ptr %t433, i32 0, i32 0
  store i64 1, ptr %t434
  %t436 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t429, 0
  %t438 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t436, i32 %t430, 1
  %t440 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t438, i64 %t431, 2
  %t442 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t440, i32 %t432, 3
  %t443 = getelementptr { i64, [4 x i64] }, ptr %t433, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t442, ptr %t443
  %t444 = load { i64, [4 x i64] }, ptr %t433
  %t446 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t444, ptr %t446
  %t447 = load ptr, ptr %l20, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t448
  %t449 = getelementptr { i64, [3 x i64] }, ptr %t448, i32 0, i32 0
  store i64 1, ptr %t449
  %t451 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t428, 0
  %t453 = insertvalue { %"compiler/source:Span", ptr, ptr } %t451, ptr %t446, 1
  %t455 = insertvalue { %"compiler/source:Span", ptr, ptr } %t453, ptr %t447, 2
  %t456 = getelementptr { i64, [3 x i64] }, ptr %t448, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t455, ptr %t456
  %t457 = load { i64, [3 x i64] }, ptr %t448
  %t459 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t457, ptr %t459
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t427, ptr %t459)
  br label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb72
bb72:
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t462)
  store ptr %t464, ptr %l189
  br label %bb73
bb73:
  %t465 = load ptr, ptr %l189, !tbaa !29
  store ptr %t465, ptr %l190, !tbaa !29
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = getelementptr %"compiler/check:Checker", ptr %t466, i32 0, i32 37
  %t469 = load i64, ptr %l19, !tbaa !24
  %t472 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t468, i64 %t469)
  store { i64, ptr } %t472, ptr %l194
  br label %bb74
bb74:
  %t473 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t474 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t473)
  store %"compiler/typed:Block" %t474, ptr %l195
  br label %bb75
bb75:
  %t475 = load %"compiler/typed:Block", ptr %l195
  %t476 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t475, ptr %t476
  %t478 = load ptr, ptr %l190, !tbaa !29
  %t479 = getelementptr %"compiler/typed:Body", ptr %t478, i32 0, i32 11
  store ptr %t476, ptr %t479, !tbaa !29
  %t480 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t480)
  br label %bb76
bb76:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/check:Checker", ptr %t482, i32 0, i32 19
  %t485 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t484, i64 %t485, i64 2)
  br label %bb77
bb77:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/check:Checker", ptr %t488, i32 0, i32 136
  %t491 = load i64, ptr %l9, !tbaa !24
  %t492 = load %"compiler/source:Span", ptr %l1
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_H19fded22be32a91ca4084130356a325d(ptr %v0, ptr %t490, i64 %t491, %"compiler/source:Span" %t492)
  br label %bb78
bb78:
  %t496 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t496, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyShape(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i32
  %l14 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca { i64, ptr }
  %l37 = alloca i32
  %l42 = alloca i32
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %l54 = alloca i64
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l64 = alloca { i64, ptr }
  %l66 = alloca %"compiler/diagmsg:Msg"
  %l67 = alloca i64
  %l70 = alloca i1
  %l72 = alloca i1
  %l75 = alloca i1
  %l76 = alloca i1
  %l79 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l85 = alloca { i64, ptr }
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca i1
  %l94 = alloca i1
  %l96 = alloca { i64, ptr }
  %l98 = alloca i1
  %l99 = alloca i1
  %l102 = alloca i1
  %l103 = alloca i1
  %l106 = alloca ptr
  %l111 = alloca i32
  %l116 = alloca i32
  %l117 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l123 = alloca { i64, ptr }
  %l125 = alloca %"compiler/diagmsg:Msg"
  %l126 = alloca i64
  %l130 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l137 = alloca ptr
  %l142 = alloca i32
  %l143 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l150 = alloca { i64, ptr }
  %l152 = alloca %"compiler/diagmsg:Msg"
  %l153 = alloca i64
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t4, i64 %t5)
  store i32 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i32, ptr %l11, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  store ptr %t15, ptr %l14, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l19
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i32, ptr %l19, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l20
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t29, ptr %l4, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t34 = icmp ne i64 %t32, 1
  br i1 %t34, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t40, i64 %t41)
  store i64 %t44, ptr %l28
  br label %bb7
bb7:
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = load i64, ptr %l28, !tbaa !24
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t46, i64 -1, i64 %t47, i32 %t45, i32 0)
  store ptr %t49, ptr %l30
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t54 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %t50, ptr %t51)
  store %"compiler/source:Span" %t54, ptr %l33
  br label %bb9
bb9:
  %t55 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t55, ptr %l5
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t57, ptr %l35, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 0
  %t61 = load i32, ptr %t60, !tbaa !33
  %t64 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t56, i32 %t61)
  store i32 %t64, ptr %l37
  br label %bb10
bb10:
  %t65 = load i32, ptr %l37, !tbaa !23
  store i32 %t65, ptr %l6, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l3, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l42
  br label %bb11
bb11:
  %t76 = load i32, ptr %l42, !tbaa !23
  store i32 %t76, ptr %l7, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load i32, ptr %l6, !tbaa !23
  %t84 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l46
  br label %bb12
bb12:
  %t85 = load i1, ptr %l46, !tbaa !21
  br i1 %t85, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l47, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t87, ptr %l48
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l6, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l51
  br label %bb15
bb14:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l6, !tbaa !23
  %t102 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l59
  br label %bb18
bb15:
  %t103 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  %t105 = extractvalue { i64, ptr } %t103, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t111 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutCopy(ptr %s2, ptr %s2, { i64, ptr } %t109)
  store %"compiler/diagmsg:Msg" %t111, ptr %l53
  br label %bb16
bb16:
  %t112 = load ptr, ptr %l47, !tbaa !29
  %t113 = load %"compiler/source:Span", ptr %l48
  %t114 = load %"compiler/diagmsg:Msg", ptr %l53
  %t115 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t112, %"compiler/source:Span" %t113, %"compiler/diagmsg:Msg" %t114)
  store i64 %t115, ptr %l54
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb76
bb18:
  %t116 = load i1, ptr %l59, !tbaa !21
  br i1 %t116, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l60, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t118, ptr %l61
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l6, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s4, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l64
  br label %bb21
bb20:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i32, ptr %l6, !tbaa !23
  %t128 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t124, i32 %t125)
  store i1 %t128, ptr %l70
  br label %bb24
bb21:
  %t129 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t137 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueCopy(ptr %s4, ptr %s4, { i64, ptr } %t135)
  store %"compiler/diagmsg:Msg" %t137, ptr %l66
  br label %bb22
bb22:
  %t138 = load ptr, ptr %l60, !tbaa !29
  %t139 = load %"compiler/source:Span", ptr %l61
  %t140 = load %"compiler/diagmsg:Msg", ptr %l66
  %t141 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t138, %"compiler/source:Span" %t139, %"compiler/diagmsg:Msg" %t140)
  store i64 %t141, ptr %l67
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb75
bb24:
  %t142 = load i1, ptr %l70, !tbaa !21
  %t143 = xor i1 %t142, true
  br i1 %t143, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb32
bb26:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load i32, ptr %l6, !tbaa !23
  %t149 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t145, i32 %t146)
  store i1 %t149, ptr %l75
  br label %bb27
bb27:
  %t150 = load i1, ptr %l75, !tbaa !21
  br i1 %t150, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb31
bb29:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l6, !tbaa !23
  %t155 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t151, i32 %t152)
  store i1 %t155, ptr %l79
  br label %bb30
bb30:
  %t156 = load i1, ptr %l79, !tbaa !21
  store i1 %t156, ptr %l76, !tbaa !21
  br label %bb31
bb31:
  %t157 = load i1, ptr %l76, !tbaa !21
  %t158 = xor i1 %t157, true
  store i1 %t158, ptr %l72, !tbaa !21
  br label %bb32
bb32:
  %t160 = load i1, ptr %l72, !tbaa !21
  br i1 %t160, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l81, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t162, ptr %l82
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l6, !tbaa !23
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s6, ptr %t163, i32 %t164)
  store { i64, ptr } %t167, ptr %l85
  br label %bb35
bb34:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t169, ptr %l90, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i32, ptr %t171, i64 0
  %t173 = load i32, ptr %t172, !tbaa !33
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t168, i32 %t173)
  store i1 %t176, ptr %l92
  br label %bb38
bb35:
  %t177 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  %t179 = extractvalue { i64, ptr } %t177, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t185 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyOnWhat(ptr %s6, ptr %s6, { i64, ptr } %t183)
  store %"compiler/diagmsg:Msg" %t185, ptr %l87
  br label %bb36
bb36:
  %t186 = load ptr, ptr %l81, !tbaa !29
  %t187 = load %"compiler/source:Span", ptr %l82
  %t188 = load %"compiler/diagmsg:Msg", ptr %l87
  %t189 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s6, ptr %t186, %"compiler/source:Span" %t187, %"compiler/diagmsg:Msg" %t188)
  store i64 %t189, ptr %l88
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb74
bb38:
  %t190 = load i1, ptr %l92, !tbaa !21
  %t191 = xor i1 %t190, true
  br i1 %t191, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb42
bb40:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t194, ptr %l96, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i32, ptr %t196, i64 0
  %t198 = load i32, ptr %t197, !tbaa !33
  %t201 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t193, i32 %t198)
  store i1 %t201, ptr %l98
  br label %bb41
bb41:
  %t202 = load i1, ptr %l98, !tbaa !21
  store i1 %t202, ptr %l94, !tbaa !21
  br label %bb42
bb42:
  %t203 = load i1, ptr %l94, !tbaa !21
  br i1 %t203, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb46
bb44:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i32, ptr %l7, !tbaa !23
  %t208 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t204, i32 %t205)
  store i1 %t208, ptr %l102
  br label %bb45
bb45:
  %t209 = load i1, ptr %l102, !tbaa !21
  store i1 %t209, ptr %l99, !tbaa !21
  br label %bb46
bb46:
  %t210 = load i1, ptr %l99, !tbaa !21
  br i1 %t210, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb52
bb48:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  store ptr %t216, ptr %l106, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/check:Checker", ptr %t217, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/generic:Program", ptr %t220, i32 0, i32 2
  %t223 = load i32, ptr %l7, !tbaa !23
  %t226 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t222, i32 %t223)
  store i32 %t226, ptr %l111
  br label %bb49
bb49:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 2
  %t233 = load i32, ptr %l6, !tbaa !23
  %t236 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t232, i32 %t233)
  store i32 %t236, ptr %l116
  br label %bb50
bb50:
  %t237 = load ptr, ptr %l106, !tbaa !29
  %t238 = load i32, ptr %l111, !tbaa !23
  %t239 = load i32, ptr %l116, !tbaa !23
  %t240 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t237, i32 %t238, i32 %t239)
  store i1 %t240, ptr %l117
  br label %bb51
bb51:
  %t241 = load i1, ptr %l117, !tbaa !21
  %t242 = xor i1 %t241, true
  store i1 %t242, ptr %l103, !tbaa !21
  br label %bb52
bb52:
  %t244 = load i1, ptr %l103, !tbaa !21
  br i1 %t244, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s8
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l119, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t246, ptr %l120
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i32, ptr %l6, !tbaa !23
  %t251 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t247, i32 %t248)
  store { i64, ptr } %t251, ptr %l123
  br label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s9
  %t252 = load ptr, ptr %l2, !tbaa !29
  %t254 = getelementptr %"compiler/ast:Func", ptr %t252, i32 0, i32 3
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t257 = getelementptr %"compiler/ast:Sig", ptr %t255, i32 0, i32 4
  %t258 = load i1, ptr %t257, !tbaa !21
  br i1 %t258, label %bb58, label %bb59
bb55:
  %t260 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  %t262 = extractvalue { i64, ptr } %t260, 1
  %t263 = mul i64 %t261, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t263)
  call void @llvm.memcpy.p0.p0.i64(ptr %t264, ptr %t262, i64 %t263, i1 false)
  %t265 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  %t268 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyShape(ptr %s8, ptr %s8, { i64, ptr } %t266)
  store %"compiler/diagmsg:Msg" %t268, ptr %l125
  br label %bb56
bb56:
  %t269 = load ptr, ptr %l119, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l120
  %t271 = load %"compiler/diagmsg:Msg", ptr %l125
  %t272 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t269, %"compiler/source:Span" %t270, %"compiler/diagmsg:Msg" %t271)
  store i64 %t272, ptr %l126
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s8)
  br label %bb73
bb58:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb61
bb59:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i32, ptr %l3, !tbaa !23
  %t277 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t273, i32 %t274)
  store i1 %t277, ptr %l133
  br label %bb60
bb60:
  %t278 = load i1, ptr %l133, !tbaa !21
  store i1 %t278, ptr %l130, !tbaa !21
  br label %bb61
bb61:
  %t279 = load i1, ptr %l130, !tbaa !21
  br i1 %t279, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb66
bb63:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  store ptr %t285, ptr %l137, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/check:Checker", ptr %t286, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !29
  %t291 = getelementptr %"compiler/generic:Program", ptr %t289, i32 0, i32 2
  %t292 = load i32, ptr %l3, !tbaa !23
  %t295 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t291, i32 %t292)
  store i32 %t295, ptr %l142
  br label %bb64
bb64:
  %t296 = load ptr, ptr %l137, !tbaa !29
  %t297 = load i32, ptr %l142, !tbaa !23
  %t298 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s9, ptr %t296, i32 %t297)
  store { i64, ptr } %t298, ptr %l143
  br label %bb65
bb65:
  %t299 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t299, 0
  %t302 = icmp sgt i64 %t300, 0
  store i1 %t302, ptr %l134, !tbaa !21
  br label %bb66
bb66:
  %t304 = load i1, ptr %l134, !tbaa !21
  br i1 %t304, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s10
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l146, !tbaa !29
  %t306 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t306, ptr %l147
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i32, ptr %l6, !tbaa !23
  %t311 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t307, i32 %t308)
  store { i64, ptr } %t311, ptr %l150
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t312 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  %t314 = extractvalue { i64, ptr } %t312, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  %t320 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyShape(ptr %s10, ptr %s10, { i64, ptr } %t318)
  store %"compiler/diagmsg:Msg" %t320, ptr %l152
  br label %bb70
bb70:
  %t321 = load ptr, ptr %l146, !tbaa !29
  %t322 = load %"compiler/source:Span", ptr %l147
  %t323 = load %"compiler/diagmsg:Msg", ptr %l152
  %t324 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t321, %"compiler/source:Span" %t322, %"compiler/diagmsg:Msg" %t323)
  store i64 %t324, ptr %l153
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s10)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s9)
  br label %bb73
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t325 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t325)
  br label %bb77
bb77:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountPost(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, i64, i64 }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l17 = alloca { i64, i64, i64 }
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l36 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 37
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l13
  br label %bb4
bb4:
  %t11 = load i64, ptr %l13, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l1
  %t17 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t12, i32 3, %"compiler/source:Span" %t13)
  store { i64, i64, i64 } %t17, ptr %l17
  br label %bb5
bb5:
  %t18 = load { i64, i64, i64 }, ptr %l17
  store { i64, i64, i64 } %t18, ptr %l4
  %t19 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t22 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l6, !tbaa !24
  %t25 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %l7, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l21, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t30, ptr %l23
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l24, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l25, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t33, ptr %l26
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t34)
  store i32 %t36, ptr %l28
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l26
  %t39 = load i32, ptr %l28, !tbaa !23
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t37, %"compiler/source:Span" %t38, i32 %t39, i64 1)
  store ptr %t40, ptr %l29
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l23
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = load ptr, ptr %l29, !tbaa !29
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaddTo(ptr %v0, ptr %v0, ptr %v0, ptr %t41, %"compiler/source:Span" %t42, i64 %t43, ptr %t44)
  store ptr %t45, ptr %l30
  br label %bb8
bb8:
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t46, ptr %t47)
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l3, !tbaa !24
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %t48, i64 %t49, i64 %t50, i64 %t51, i64 %t52)
  store ptr %t58, ptr %l36
  br label %bb10
bb10:
  %t59 = load ptr, ptr %l36, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecover(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca i1
  %l41 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i32
  %l59 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca i32
  %l67 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca { i64, ptr }
  %l83 = alloca i64
  %l86 = alloca i64
  %l104 = alloca i64
  %l106 = alloca i64
  %l108 = alloca i1
  %l112 = alloca { i64, ptr }
  %l116 = alloca i1
  %l119 = alloca i1
  %l120 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l126 = alloca { i64, ptr }
  %l128 = alloca %"compiler/diagmsg:Msg"
  %l129 = alloca i64
  %l134 = alloca ptr
  %l135 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l149 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca i1
  %l169 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l173 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca i1
  %l185 = alloca i64
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t1)
  store i64 %t3, ptr %l27
  br label %bb1
bb1:
  %t4 = load i64, ptr %l27, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t8 = load ptr, ptr %l29, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l29, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 9}
  %t14 = icmp eq i64 %t12, 5
  store i1 %t14, ptr %l30, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l30, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l5
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t24, i32 0, i32 1
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb67
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l41
  br label %bb10
bb10:
  %t38 = load i32, ptr %l41, !range !{i32 0, i32 33}
  %t40 = trunc i64 29 to i32
  %t41 = icmp eq i32 %t38, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l6, !tbaa !29
  store ptr %t45, ptr %l7, !tbaa !29
  %t47 = load ptr, ptr %l6, !tbaa !29
  store ptr %t47, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t48 = load ptr, ptr %l46, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load ptr, ptr %l46, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 8}
  %t54 = icmp eq i64 %t52, 3
  store i1 %t54, ptr %l47, !tbaa !21
  br label %bb15
bb15:
  %t55 = load i1, ptr %l47, !tbaa !21
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t56 = load ptr, ptr %l6, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l8, !tbaa !29
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t62 = load ptr, ptr %l8, !tbaa !29
  store ptr %t62, ptr %l7, !tbaa !29
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
  call void @__olang_check_failed(ptr @olang_loc_b3868a314c3ea96c_e671b5117430d1f8)
  unreachable
bb24:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l7, !tbaa !29
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %t64, ptr %t65, i1 false)
  store i1 %t68, ptr %l55
  br label %bb25
bb25:
  %t69 = load i1, ptr %l55, !tbaa !21
  br i1 %t69, label %bb26, label %bb27
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  store ptr %t75, ptr %l59, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l7, !tbaa !29
  %t81 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t76, ptr %t77)
  store i32 %t81, ptr %l63
  br label %bb28
bb27:
  %t82 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t82, ptr %l56, !tbaa !23
  br label %bb30
bb28:
  %t84 = load ptr, ptr %l59, !tbaa !29
  %t85 = load i32, ptr %l63, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t86, ptr %l64
  br label %bb29
bb29:
  %t87 = load i32, ptr %l64, !tbaa !23
  store i32 %t87, ptr %l56, !tbaa !23
  br label %bb30
bb30:
  %t88 = load i32, ptr %l56, !tbaa !23
  store i32 %t88, ptr %l9, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l67, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l2, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l72
  br label %bb31
bb31:
  %t103 = load ptr, ptr %l67, !tbaa !29
  %t104 = load i32, ptr %l72, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t103, i32 %t104)
  store { i64, ptr } %t105, ptr %l73
  br label %bb32
bb32:
  %t106 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t106, ptr %l10, !tbaa !27
  %t107 = load i32, ptr %l9, !tbaa !23
  %t108 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t111 = icmp eq i32 %t107, %t108
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 147
  store i1 true, ptr %t115, !tbaa !21
  br label %ret
bb34:
  br label %bb35
bb35:
  store i64 0, ptr %l11, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  store i64 %t118, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t120 = load i64, ptr %l12, !tbaa !24
  %t121 = load i64, ptr %l11, !tbaa !24
  %t124 = icmp sgt i64 %t120, %t121
  br i1 %t124, label %bb36, label %bb37
bb36:
  %t126 = load i64, ptr %l13, !tbaa !24
  %t128 = icmp sgt i64 %t126, 0
  br i1 %t128, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb41
bb38:
  %t130 = load i64, ptr %l12, !tbaa !24
  %t131 = load i64, ptr %l11, !tbaa !24
  %t134 = sub i64 %t130, %t131
  %t135 = load i64, ptr %l13, !tbaa !24
  %t138 = add i64 %t134, %t135
  %t140 = sub i64 %t138, 1
  %t141 = load i64, ptr %l13, !tbaa !24
  %t144 = sdiv i64 %t140, %t141
  store i64 %t144, ptr %l86, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb40
bb40:
  %t146 = load i64, ptr %l86, !tbaa !24
  store i64 %t146, ptr %l83, !tbaa !24
  br label %bb41
bb41:
  %t147 = load i64, ptr %l83, !tbaa !24
  store i64 %t147, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb42
bb42:
  %t148 = load i64, ptr %l15, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb43, label %bb44
bb43:
  br label %bb66
bb44:
  br label %bb45
bb45:
  %t156 = load i64, ptr %l11, !tbaa !24
  %t157 = load i64, ptr %l15, !tbaa !24
  %t158 = load i64, ptr %l13, !tbaa !24
  %t161 = mul i64 %t157, %t158
  %t164 = add i64 %t156, %t161
  store i64 %t164, ptr %l16, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  store i64 %t166, ptr %l104, !tbaa !24
  %t167 = load ptr, ptr %l3, !tbaa !29
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v2, ptr %t167)
  store i64 %t169, ptr %l106
  br label %bb46
bb46:
  %t170 = load i64, ptr %l104, !tbaa !24
  %t171 = load i64, ptr %l106, !tbaa !24
  %t172 = icmp slt i64 %t170, %t171
  br i1 %t172, label %bb47, label %bb48
bb47:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/generic:Program", ptr %t177, i32 0, i32 2
  %t180 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t180, ptr %l112, !tbaa !27
  %t181 = load i64, ptr %l16, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i32, ptr %t184, i64 %t181
  %t186 = load i32, ptr %t185, !tbaa !33
  %t187 = load i32, ptr %l9, !tbaa !23
  %t191 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t179, i32 %t186, i32 %t187)
  store i1 %t191, ptr %l116
  br label %bb49
bb48:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb50
bb49:
  %t192 = load i1, ptr %l116, !tbaa !21
  store i1 %t192, ptr %l108, !tbaa !21
  br label %bb50
bb50:
  %t193 = load i1, ptr %l108, !tbaa !21
  br i1 %t193, label %bb51, label %bb52
bb51:
  %t194 = load ptr, ptr %l3, !tbaa !29
  %t195 = load i64, ptr %l16, !tbaa !24
  %t198 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v2, ptr %t194, i64 %t195)
  store i1 %t198, ptr %l119
  br label %bb53
bb52:
  br label %bb64
bb53:
  %t199 = load i1, ptr %l119, !tbaa !21
  br i1 %t199, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb56
bb55:
  store i1 %a4, ptr %l120, !tbaa !21
  br label %bb56
bb56:
  %t202 = load i1, ptr %l120, !tbaa !21
  br i1 %t202, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l122, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t204, ptr %l123
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i32, ptr %l9, !tbaa !23
  %t209 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t205, i32 %t206)
  store { i64, ptr } %t209, ptr %l126
  br label %bb59
bb58:
  br label %bb62
bb59:
  %t210 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 0
  %t212 = extractvalue { i64, ptr } %t210, 1
  %t213 = mul i64 %t211, 1
  %t214 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t214, ptr %t212, i64 %t213, i1 false)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  %t218 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseTwice(ptr %s10, ptr %s10, { i64, ptr } %t216)
  store %"compiler/diagmsg:Msg" %t218, ptr %l128
  br label %bb60
bb60:
  %t219 = load ptr, ptr %l122, !tbaa !29
  %t220 = load %"compiler/source:Span", ptr %l123
  %t221 = load %"compiler/diagmsg:Msg", ptr %l128
  %t222 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s10, ptr %t219, %"compiler/source:Span" %t220, %"compiler/diagmsg:Msg" %t221)
  store i64 %t222, ptr %l129
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s10)
  br label %bb62
bb62:
  %t223 = load ptr, ptr %l3, !tbaa !29
  %t224 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v2, ptr %t223, i64 %t224, i1 true)
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t227 = load i64, ptr %l15, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l15, !tbaa !24
  br label %bb42
bb66:
  br label %bb119
bb67:
  %t231 = load ptr, ptr %l1, !tbaa !29
  store ptr %t231, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t232 = load ptr, ptr %l134, !tbaa !29
  %t233 = icmp ne ptr %t232, null
  br i1 %t233, label %bb68, label %bb69
bb68:
  %t235 = load ptr, ptr %l134, !tbaa !29
  %t236 = load i64, ptr %t235, !range !{i64 0, i64 9}
  %t238 = icmp eq i64 %t236, 1
  store i1 %t238, ptr %l135, !tbaa !21
  br label %bb69
bb69:
  %t239 = load i1, ptr %l135, !tbaa !21
  br i1 %t239, label %bb70, label %bb71
bb70:
  %t240 = load ptr, ptr %l1, !tbaa !29
  %t242 = getelementptr { i64, [4 x i64] }, ptr %t240, i32 0, i32 1
  %t243 = getelementptr { %"compiler/source:Span", ptr }, ptr %t242, i32 0, i32 1
  %t244 = load ptr, ptr %t243
  store ptr %t244, ptr %l17, !tbaa !29
  br label %bb76
bb71:
  %t246 = load ptr, ptr %l1, !tbaa !29
  store ptr %t246, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t247 = load ptr, ptr %l140, !tbaa !29
  %t248 = icmp ne ptr %t247, null
  br i1 %t248, label %bb72, label %bb73
bb72:
  %t250 = load ptr, ptr %l140, !tbaa !29
  %t251 = load i64, ptr %t250, !range !{i64 0, i64 9}
  %t253 = icmp eq i64 %t251, 4
  store i1 %t253, ptr %l141, !tbaa !21
  br label %bb73
bb73:
  %t254 = load i1, ptr %l141, !tbaa !21
  br i1 %t254, label %bb74, label %bb75
bb74:
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t255, i32 0, i32 1
  %t258 = getelementptr { %"compiler/source:Span", ptr }, ptr %t257, i32 0, i32 1
  %t259 = load ptr, ptr %t258
  store ptr %t259, ptr %l17, !tbaa !29
  br label %bb76
bb75:
  br label %bb82
bb76:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l17, !tbaa !29
  %t263 = load i32, ptr %l2, !tbaa !23
  %t267 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t261, ptr %t262, i32 %t263)
  store i64 %t267, ptr %l149
  br label %bb77
bb77:
  %t268 = load i64, ptr %l149, !tbaa !24
  store i64 %t268, ptr %l18, !tbaa !24
  %t269 = load i64, ptr %l18, !tbaa !24
  %t271 = icmp sge i64 %t269, 0
  br i1 %t271, label %bb78, label %bb79
bb78:
  %t273 = load ptr, ptr %l3, !tbaa !29
  %t274 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v2, ptr %t273, i64 %t274, i1 true)
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb81
bb81:
  br label %bb119
bb82:
  %t277 = load ptr, ptr %l1, !tbaa !29
  store ptr %t277, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t278 = load ptr, ptr %l154, !tbaa !29
  %t279 = icmp ne ptr %t278, null
  br i1 %t279, label %bb83, label %bb84
bb83:
  %t281 = load ptr, ptr %l154, !tbaa !29
  %t282 = load i64, ptr %t281, !range !{i64 0, i64 9}
  %t284 = icmp eq i64 %t282, 2
  store i1 %t284, ptr %l155, !tbaa !21
  br label %bb84
bb84:
  %t285 = load i1, ptr %l155, !tbaa !21
  br i1 %t285, label %bb85, label %bb86
bb85:
  %t286 = load ptr, ptr %l1, !tbaa !29
  %t288 = getelementptr { i64, [4 x i64] }, ptr %t286, i32 0, i32 1
  %t289 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t288, i32 0, i32 1
  %t290 = load ptr, ptr %t289
  store ptr %t290, ptr %l19, !tbaa !29
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t294 = getelementptr { i64, [4 x i64] }, ptr %t292, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t294, i32 0, i32 2
  %t296 = load { i64, ptr }, ptr %t295
  store { i64, ptr } %t296, ptr %l20, !tbaa !27
  br label %bb87
bb86:
  br label %bb114
bb87:
  %t298 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t298, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  store i64 %t302, ptr %l23, !tbaa !24
  br label %bb88
bb88:
  %t304 = load i64, ptr %l22, !tbaa !24
  %t305 = load i64, ptr %l23, !tbaa !24
  %t308 = icmp slt i64 %t304, %t305
  %t310 = xor i1 %t308, true
  br i1 %t310, label %bb89, label %bb90
bb89:
  br label %bb108
bb90:
  br label %bb91
bb91:
  %t312 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t312, ptr %l169, !tbaa !27
  %t313 = load i64, ptr %l22, !tbaa !24
  %t315 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = getelementptr ptr, ptr %t316, i64 %t313
  %t318 = load ptr, ptr %t317, !tbaa !39
  store ptr %t318, ptr %l24, !tbaa !29
  %t320 = load ptr, ptr %l24, !tbaa !29
  store ptr %t320, ptr %l172, !tbaa !29
  store i1 false, ptr %l173, !tbaa !21
  %t321 = load ptr, ptr %l172, !tbaa !29
  %t322 = icmp ne ptr %t321, null
  br i1 %t322, label %bb92, label %bb93
bb92:
  %t324 = load ptr, ptr %l172, !tbaa !29
  %t325 = load i64, ptr %t324, !range !{i64 0, i64 9}
  %t327 = icmp eq i64 %t325, 3
  store i1 %t327, ptr %l173, !tbaa !21
  br label %bb93
bb93:
  %t328 = load i1, ptr %l173, !tbaa !21
  br i1 %t328, label %bb94, label %bb95
bb94:
  br label %bb100
bb95:
  %t329 = load ptr, ptr %l24, !tbaa !29
  store ptr %t329, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t330 = load ptr, ptr %l176, !tbaa !29
  %t331 = icmp ne ptr %t330, null
  br i1 %t331, label %bb96, label %bb97
bb96:
  %t333 = load ptr, ptr %l176, !tbaa !29
  %t334 = load i64, ptr %t333, !range !{i64 0, i64 9}
  %t336 = icmp eq i64 %t334, 0
  store i1 %t336, ptr %l177, !tbaa !21
  br label %bb97
bb97:
  %t337 = load i1, ptr %l177, !tbaa !21
  br i1 %t337, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb106
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %ret
bb105:
  call void @__olang_check_failed(ptr @olang_loc_260cd67ae3bcee1d_e0eff4ddc0bf7cc9)
  unreachable
bb106:
  br label %bb107
bb107:
  %t338 = load i64, ptr %l22, !tbaa !24
  %t340 = add i64 %t338, 1
  store i64 %t340, ptr %l22, !tbaa !24
  br label %bb88
bb108:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l19, !tbaa !29
  %t344 = load i32, ptr %l2, !tbaa !23
  %t348 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t342, ptr %t343, i32 %t344)
  store i64 %t348, ptr %l185
  br label %bb109
bb109:
  %t349 = load i64, ptr %l185, !tbaa !24
  store i64 %t349, ptr %l25, !tbaa !24
  %t350 = load i64, ptr %l25, !tbaa !24
  %t352 = icmp sge i64 %t350, 0
  br i1 %t352, label %bb110, label %bb111
bb110:
  %t354 = load ptr, ptr %l3, !tbaa !29
  %t355 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v2, ptr %t354, i64 %t355, i1 true)
  br label %bb112
bb111:
  br label %bb113
bb112:
  br label %bb113
bb113:
  br label %bb119
bb114:
  br i1 true, label %bb115, label %bb116
bb115:
  br label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb119
bb118:
  call void @__olang_check_failed(ptr @olang_loc_d16ac81f8024a906_91b50ccb5db52c12)
  unreachable
bb119:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversStruct(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %l47 = alloca i32
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l74 = alloca i1
  %l83 = alloca i32
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca ptr
  %l125 = alloca { i64, ptr }
  %l128 = alloca i1
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
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  store ptr %t5, ptr %l26
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l26, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l29, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l34
  br label %bb2
bb2:
  %t23 = load ptr, ptr %l29, !tbaa !29
  %t24 = load i32, ptr %l34, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t23, i32 %t24)
  store { i64, ptr } %t25, ptr %l35
  br label %bb3
bb3:
  %t26 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t26, ptr %l6, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/check:fieldSet", ptr %t30, i32 0, i32 0
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t38 = icmp ne i64 %t29, %t35
  br i1 %t38, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l47
  br label %bb7
bb7:
  %t51 = load i32, ptr %l47, !tbaa !23
  store i32 %t51, ptr %l7, !tbaa !23
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l48
  br label %bb8
bb8:
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  %t54 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %t54
  store ptr %t54, ptr %l8, !tbaa !29
  store ptr %a1, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  %t58 = load i64, ptr %l10, !tbaa !24
  store i64 %t58, ptr %l51, !tbaa !24
  %t59 = load ptr, ptr %l9, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t59)
  store i64 %t61, ptr %l53
  br label %bb10
bb10:
  %t62 = load i64, ptr %l51, !tbaa !24
  %t63 = load i64, ptr %l53, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  br label %bb42
bb12:
  br label %bb13
bb13:
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l58
  br label %bb14
bb14:
  %t73 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t73, ptr %l11, !tbaa !27
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t75, ptr %l60, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr ptr, ptr %t77, i64 0
  %t79 = load ptr, ptr %t78, !tbaa !39
  %t82 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %t74, ptr %t79)
  store i1 %t82, ptr %l62
  br label %bb15
bb15:
  %t83 = load i1, ptr %l62, !tbaa !21
  br i1 %t83, label %bb16, label %bb17
bb16:
  %t84 = load ptr, ptr %l8, !tbaa !29
  store ptr %t84, ptr %l63, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t85, ptr %l64, !tbaa !27
  %t86 = icmp sge i64 0, 0
  br i1 %t86, label %bb18, label %bb19
bb17:
  br label %bb24
bb18:
  %t88 = icmp sle i64 0, 1152921504606846975
  br i1 %t88, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_26959ece93e3b5d7_ef6153c643f98adb)
  unreachable
bb20:
  %t90 = mul i64 0, 8
  %t91 = insertvalue { i64, ptr } undef, i64 0, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t93 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t99 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t96, { i64, ptr } %t92, i64 %t95)
  store { i64, ptr } %t99, ptr %l70
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_26959ece93e3b5d7_ef6153c643f98adb)
  unreachable
bb22:
  %t100 = load ptr, ptr %l63, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l70, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %s0, ptr %v1, ptr %t100, { i64, ptr } %t101)
  br label %bb23
bb23:
  br label %bb41
bb24:
  %t102 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t102, ptr %l71, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr ptr, ptr %t104, i64 0
  %t106 = load ptr, ptr %t105, !tbaa !39
  store ptr %t106, ptr %l12, !tbaa !29
  %t108 = load ptr, ptr %l12, !tbaa !29
  store ptr %t108, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t109 = load ptr, ptr %l73, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb25, label %bb26
bb25:
  %t112 = load ptr, ptr %l73, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 9}
  %t115 = icmp eq i64 %t113, 2
  store i1 %t115, ptr %l74, !tbaa !21
  br label %bb26
bb26:
  %t116 = load i1, ptr %l74, !tbaa !21
  br i1 %t116, label %bb27, label %bb28
bb27:
  %t117 = load ptr, ptr %l12, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l13, !tbaa !29
  %t123 = load ptr, ptr %l12, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t125, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126
  store { i64, ptr } %t127, ptr %l14, !tbaa !27
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l13, !tbaa !29
  %t133 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %t129, ptr %t130)
  store i32 %t133, ptr %l83
  br label %bb30
bb30:
  %t134 = load i32, ptr %l7, !tbaa !23
  %t135 = load i32, ptr %l83, !tbaa !23
  %t137 = icmp eq i32 %t135, %t134
  br i1 %t137, label %bb31, label %bb32
bb31:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l8, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t143 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %s0, ptr %v1, ptr %v1, ptr %s0, ptr %t139, ptr %t140, { i64, ptr } %t141, { i64, ptr } %t142, ptr %t143)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_dcaa30bcf0ceb4b1_7307533feb398e7d)
  unreachable
bb40:
  br label %bb41
bb41:
  %t149 = load i64, ptr %l10, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l10, !tbaa !24
  br label %bb9
bb42:
  %t153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l93
  br label %bb43
bb43:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l15
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t155, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t157 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  %t161 = load i64, ptr %l17, !tbaa !24
  %t162 = load i64, ptr %l18, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t169 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t169, ptr %l101, !tbaa !27
  %t170 = load i64, ptr %l17, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i32, ptr %t173, i64 %t170
  %t175 = load i32, ptr %t174, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l15, i32 %t175)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t180 = load i64, ptr %l17, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l17, !tbaa !24
  br label %bb44
bb50:
  store { i64, ptr } %a3, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  store i64 %t188, ptr %l22, !tbaa !24
  br label %bb51
bb51:
  %t190 = load i64, ptr %l21, !tbaa !24
  %t191 = load i64, ptr %l22, !tbaa !24
  %t194 = icmp slt i64 %t190, %t191
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb52, label %bb53
bb52:
  br label %bb57
bb53:
  br label %bb54
bb54:
  %t198 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t198, ptr %l115, !tbaa !27
  %t199 = load i64, ptr %l21, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i32, ptr %t202, i64 %t199
  %t204 = load i32, ptr %t203, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l15, i32 %t204)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t209 = load i64, ptr %l21, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l21, !tbaa !24
  br label %bb51
bb57:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l122, !tbaa !29
  %t214 = load ptr, ptr %l8, !tbaa !29
  store ptr %t214, ptr %l123, !tbaa !29
  %t216 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l15)
  store { i64, ptr } %t216, ptr %l125
  br label %bb58
bb58:
  %t219 = add i64 %a4, 1
  %t220 = load ptr, ptr %l122, !tbaa !29
  %t221 = load ptr, ptr %l123, !tbaa !29
  %t222 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t224 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %s0, ptr %s0, ptr %t220, ptr %t221, { i64, ptr } %t222, i64 %t219)
  store i1 %t224, ptr %l128
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t225 = load i1, ptr %l128, !tbaa !21
  store i1 %t225, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l61 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l65 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l149 = alloca ptr
  %l156 = alloca ptr
  %l157 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i64
  %l164 = alloca ptr
  %l167 = alloca ptr
  %l168 = alloca i64
  %l174 = alloca %"compiler/source:Span"
  %l176 = alloca i64
  %l177 = alloca ptr
  %l178 = alloca i1
  %l186 = alloca ptr
  %l187 = alloca i1
  %l203 = alloca ptr
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store { i64, ptr } %a2, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb94
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l36, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l7, !tbaa !29
  %t23 = load ptr, ptr %l7, !tbaa !29
  store ptr %t23, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t24 = load ptr, ptr %l39, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l39, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 3
  store i1 %t30, ptr %l40, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l40, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l7, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l8, !tbaa !29
  br label %bb9
bb8:
  br label %bb19
bb9:
  %t38 = load ptr, ptr %l8, !tbaa !29
  %t40 = getelementptr %"compiler/ast:VarDecl", ptr %t38, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s5
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l11, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t55, ptr %l53, !tbaa !27
  %t56 = load i64, ptr %l10, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 %t56
  %t61 = load i32, ptr %t60, !tbaa !33
  store i32 %t61, ptr %l12, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 29
  store ptr %t65, ptr %l57, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = load i32, ptr %l12, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t72 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t66, i64 %t69)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72, ptr %l61
  br label %bb14
bb14:
  %t73 = load ptr, ptr %l57, !tbaa !29
  %t74 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l61
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t73, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t74)
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load i32, ptr %l12, !tbaa !23
  %t81 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %t75, i64 %t76, i32 %t77)
  store i64 %t81, ptr %l65
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb17
bb17:
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l10, !tbaa !24
  br label %bb10
bb18:
  br label %bb92
bb19:
  %t86 = load ptr, ptr %l7, !tbaa !29
  store ptr %t86, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t87 = load ptr, ptr %l68, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb20, label %bb21
bb20:
  %t90 = load ptr, ptr %l68, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 11}
  %t93 = icmp eq i64 %t91, 6
  store i1 %t93, ptr %l69, !tbaa !21
  br label %bb21
bb21:
  %t94 = load i1, ptr %l69, !tbaa !21
  br i1 %t94, label %bb22, label %bb23
bb22:
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t97 = getelementptr { i64, [8 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t97, i32 0, i32 0
  %t99 = load %"compiler/source:Span", ptr %t98
  store %"compiler/source:Span" %t99, ptr %l13
  %t101 = load ptr, ptr %l7, !tbaa !29
  %t103 = getelementptr { i64, [8 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t103, i32 0, i32 1
  %t105 = load %"compiler/source:Span", ptr %t104
  store %"compiler/source:Span" %t105, ptr %l14
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t109 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load { i64, ptr }, ptr %t110
  store { i64, ptr } %t111, ptr %l15, !tbaa !27
  %t113 = load ptr, ptr %l7, !tbaa !29
  %t115 = getelementptr { i64, [8 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t115, i32 0, i32 3
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l16, !tbaa !29
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t119 = load i64, ptr %l1, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 12
  %t129 = load i64, ptr %t128, !tbaa !24
  %t132 = icmp eq i64 %t119, %t129
  br i1 %t132, label %bb25, label %bb26
bb25:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load %"compiler/source:Span", ptr %l14
  %t137 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestTarget(ptr %v0, ptr %v1, ptr %t134, i64 %t135, %"compiler/source:Span" %t136, ptr %t137)
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l1, !tbaa !24
  %t144 = load %"compiler/source:Span", ptr %l13
  %t145 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t146 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestBody(ptr %v0, ptr %v1, ptr %t142, i64 %t143, %"compiler/source:Span" %t144, { i64, ptr } %t145, i64 %t146)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t152 = load i64, ptr %l3, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l3, !tbaa !24
  br label %bb92
bb30:
  %t156 = load ptr, ptr %l7, !tbaa !29
  store ptr %t156, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t157 = load ptr, ptr %l97, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb31, label %bb32
bb31:
  %t160 = load ptr, ptr %l97, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 11}
  %t163 = icmp eq i64 %t161, 2
  store i1 %t163, ptr %l98, !tbaa !21
  br label %bb32
bb32:
  %t164 = load i1, ptr %l98, !tbaa !21
  br i1 %t164, label %bb33, label %bb34
bb33:
  %t165 = load ptr, ptr %l7, !tbaa !29
  %t167 = getelementptr { i64, [8 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", ptr }, ptr %t167, i32 0, i32 0
  %t169 = load %"compiler/source:Span", ptr %t168
  store %"compiler/source:Span" %t169, ptr %l17
  %t171 = load ptr, ptr %l7, !tbaa !29
  %t173 = getelementptr { i64, [8 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", ptr }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l18, !tbaa !29
  br label %bb35
bb34:
  br label %bb42
bb35:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i64, ptr %l1, !tbaa !24
  %t179 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %t177, i64 %t178, ptr %t179)
  br label %bb36
bb36:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i64, ptr %l1, !tbaa !24
  %t185 = load %"compiler/source:Span", ptr %l17
  %t186 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeRules(ptr %v0, ptr %v1, ptr %t183, i64 %t184, %"compiler/source:Span" %t185, ptr %t186)
  br label %bb37
bb37:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaredCtor(ptr %v0, ptr %v1, ptr %t192, i64 %t193, ptr %t194)
  br label %bb38
bb38:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load i64, ptr %l1, !tbaa !24
  %t201 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitSets(ptr %v0, ptr %v1, ptr %t199, i64 %t200, ptr %t201)
  br label %bb39
bb39:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l1, !tbaa !24
  %t208 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitHeader(ptr %v0, ptr %v1, ptr %t206, i64 %t207, ptr %t208)
  br label %bb40
bb40:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i64, ptr %l1, !tbaa !24
  %t215 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitContracts(ptr %v0, ptr %v1, ptr %t213, i64 %t214, ptr %t215)
  br label %bb41
bb41:
  br label %bb92
bb42:
  %t220 = load ptr, ptr %l7, !tbaa !29
  store ptr %t220, ptr %l129, !tbaa !29
  store i1 false, ptr %l130, !tbaa !21
  %t221 = load ptr, ptr %l129, !tbaa !29
  %t222 = icmp ne ptr %t221, null
  br i1 %t222, label %bb43, label %bb44
bb43:
  %t224 = load ptr, ptr %l129, !tbaa !29
  %t225 = load i64, ptr %t224, !range !{i64 0, i64 11}
  %t227 = icmp eq i64 %t225, 0
  store i1 %t227, ptr %l130, !tbaa !21
  br label %bb44
bb44:
  %t228 = load i1, ptr %l130, !tbaa !21
  br i1 %t228, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load i64, ptr %l1, !tbaa !24
  %t231 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %t229, i64 %t230, ptr %t231)
  br label %bb48
bb48:
  br label %bb92
bb49:
  %t235 = load ptr, ptr %l7, !tbaa !29
  store ptr %t235, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t236 = load ptr, ptr %l136, !tbaa !29
  %t237 = icmp ne ptr %t236, null
  br i1 %t237, label %bb50, label %bb51
bb50:
  %t239 = load ptr, ptr %l136, !tbaa !29
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 11}
  %t242 = icmp eq i64 %t240, 9
  store i1 %t242, ptr %l137, !tbaa !21
  br label %bb51
bb51:
  %t243 = load i1, ptr %l137, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  %t244 = load ptr, ptr %l7, !tbaa !29
  %t246 = getelementptr { i64, [8 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t246, i32 0, i32 0
  %t248 = load %"compiler/source:Span", ptr %t247
  store %"compiler/source:Span" %t248, ptr %l19
  %t250 = load ptr, ptr %l7, !tbaa !29
  %t252 = getelementptr { i64, [8 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t252, i32 0, i32 1
  %t254 = load ptr, ptr %t253
  store ptr %t254, ptr %l20, !tbaa !29
  %t256 = load ptr, ptr %l7, !tbaa !29
  %t258 = getelementptr { i64, [8 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t258, i32 0, i32 2
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l21, !tbaa !29
  br label %bb54
bb53:
  br label %bb58
bb54:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i64, ptr %l1, !tbaa !24
  %t264 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t268 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t262, i64 -1, i64 %t263, i32 %t264, i32 0)
  store ptr %t268, ptr %l149
  br label %bb55
bb55:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i64, ptr %l1, !tbaa !24
  %t271 = load %"compiler/source:Span", ptr %l19
  %t272 = load ptr, ptr %l20, !tbaa !29
  %t273 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopAssert(ptr %v0, ptr %v1, ptr %v1, ptr %t269, i64 %t270, %"compiler/source:Span" %t271, ptr %t272, ptr %t273)
  br label %bb56
bb56:
  %t279 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t279)
  br label %bb57
bb57:
  br label %bb92
bb58:
  %t281 = load ptr, ptr %l7, !tbaa !29
  store ptr %t281, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t282 = load ptr, ptr %l156, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb59, label %bb60
bb59:
  %t285 = load ptr, ptr %l156, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 11}
  %t288 = icmp eq i64 %t286, 7
  store i1 %t288, ptr %l157, !tbaa !21
  br label %bb60
bb60:
  %t289 = load i1, ptr %l157, !tbaa !21
  br i1 %t289, label %bb61, label %bb62
bb61:
  %t290 = load ptr, ptr %l7, !tbaa !29
  %t292 = getelementptr { i64, [8 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", ptr }, ptr %t292, i32 0, i32 1
  %t294 = load ptr, ptr %t293
  store ptr %t294, ptr %l22, !tbaa !29
  br label %bb63
bb62:
  br label %bb70
bb63:
  %t296 = load ptr, ptr %l0, !tbaa !29
  store ptr %t296, ptr %l162, !tbaa !29
  %t297 = load i64, ptr %l1, !tbaa !24
  store i64 %t297, ptr %l163, !tbaa !24
  %t298 = load ptr, ptr %l22, !tbaa !29
  store ptr %t298, ptr %l164, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !29
  %t304 = getelementptr %"compiler/generic:Program", ptr %t302, i32 0, i32 0
  %t305 = load ptr, ptr %t304, !tbaa !29
  store ptr %t305, ptr %l167, !tbaa !29
  %t306 = load i64, ptr %l1, !tbaa !24
  store i64 %t306, ptr %l168, !tbaa !24
  %t307 = load ptr, ptr %l22, !tbaa !29
  %t309 = getelementptr %"compiler/ast:TopIf", ptr %t307, i32 0, i32 0
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = icmp eq ptr %t310, null
  br i1 %t312, label %bb64, label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_9f7e5ad647601e13_a7b1cb3e26ad346f)
  unreachable
bb65:
  br label %bb66
bb66:
  %t314 = load ptr, ptr %l22, !tbaa !29
  %t316 = getelementptr %"compiler/ast:TopIf", ptr %t314, i32 0, i32 0
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t319 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t317)
  store %"compiler/source:Span" %t319, ptr %l174
  br label %bb67
bb67:
  %t320 = getelementptr %"compiler/source:Span", ptr %l174, i32 0, i32 0
  %t321 = load i32, ptr %t320, !tbaa !23
  %t322 = load ptr, ptr %l167, !tbaa !29
  %t323 = load i64, ptr %l168, !tbaa !24
  %t325 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t322, i64 %t323, i32 %t321)
  store i64 %t325, ptr %l176
  br label %bb68
bb68:
  %t326 = load ptr, ptr %l162, !tbaa !29
  %t327 = load i64, ptr %l163, !tbaa !24
  %t328 = load ptr, ptr %l164, !tbaa !29
  %t329 = load i64, ptr %l176, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclsIf(ptr %v0, ptr %v1, ptr %t326, i64 %t327, ptr %t328, i64 %t329, i64 0)
  br label %bb69
bb69:
  br label %bb92
bb70:
  %t330 = load ptr, ptr %l7, !tbaa !29
  store ptr %t330, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t331 = load ptr, ptr %l177, !tbaa !29
  %t332 = icmp ne ptr %t331, null
  br i1 %t332, label %bb71, label %bb72
bb71:
  %t334 = load ptr, ptr %l177, !tbaa !29
  %t335 = load i64, ptr %t334, !range !{i64 0, i64 11}
  %t337 = icmp eq i64 %t335, 10
  store i1 %t337, ptr %l178, !tbaa !21
  br label %bb72
bb72:
  %t338 = load i1, ptr %l178, !tbaa !21
  br i1 %t338, label %bb73, label %bb74
bb73:
  %t339 = load ptr, ptr %l7, !tbaa !29
  %t341 = getelementptr { i64, [8 x i64] }, ptr %t339, i32 0, i32 1
  %t342 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t341, i32 0, i32 2
  %t343 = load { i64, ptr }, ptr %t342
  store { i64, ptr } %t343, ptr %l23, !tbaa !27
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i64, ptr %l1, !tbaa !24
  %t347 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %t345, i64 %t346, { i64, ptr } %t347)
  br label %bb76
bb76:
  br label %bb92
bb77:
  %t351 = load ptr, ptr %l7, !tbaa !29
  store ptr %t351, ptr %l186, !tbaa !29
  store i1 false, ptr %l187, !tbaa !21
  %t352 = load ptr, ptr %l186, !tbaa !29
  %t353 = icmp ne ptr %t352, null
  br i1 %t353, label %bb78, label %bb79
bb78:
  %t355 = load ptr, ptr %l186, !tbaa !29
  %t356 = load i64, ptr %t355, !range !{i64 0, i64 11}
  %t358 = icmp eq i64 %t356, 5
  store i1 %t358, ptr %l187, !tbaa !21
  br label %bb79
bb79:
  %t359 = load i1, ptr %l187, !tbaa !21
  br i1 %t359, label %bb80, label %bb81
bb80:
  %t360 = load ptr, ptr %l7, !tbaa !29
  %t362 = getelementptr { i64, [8 x i64] }, ptr %t360, i32 0, i32 1
  %t363 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t362, i32 0, i32 0
  %t364 = load %"compiler/source:Span", ptr %t363
  store %"compiler/source:Span" %t364, ptr %l24
  %t366 = load ptr, ptr %l7, !tbaa !29
  %t368 = getelementptr { i64, [8 x i64] }, ptr %t366, i32 0, i32 1
  %t369 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t368, i32 0, i32 1
  %t370 = load i32, ptr %t369
  store i32 %t370, ptr %l25, !tbaa !23
  %t372 = load ptr, ptr %l7, !tbaa !29
  %t374 = getelementptr { i64, [8 x i64] }, ptr %t372, i32 0, i32 1
  %t375 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t374, i32 0, i32 2
  %t376 = load { i64, ptr }, ptr %t375
  store { i64, ptr } %t376, ptr %l26, !tbaa !27
  %t378 = load ptr, ptr %l7, !tbaa !29
  %t380 = getelementptr { i64, [8 x i64] }, ptr %t378, i32 0, i32 1
  %t381 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t380, i32 0, i32 3
  %t382 = load { i64, ptr }, ptr %t381
  store { i64, ptr } %t382, ptr %l27, !tbaa !27
  %t384 = load ptr, ptr %l7, !tbaa !29
  %t386 = getelementptr { i64, [8 x i64] }, ptr %t384, i32 0, i32 1
  %t387 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t386, i32 0, i32 4
  %t388 = load { i64, ptr }, ptr %t387
  store { i64, ptr } %t388, ptr %l28, !tbaa !27
  br label %bb82
bb81:
  br label %bb87
bb82:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load i64, ptr %l1, !tbaa !24
  %t392 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t396 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t390, i64 -1, i64 %t391, i32 %t392, i32 0)
  store ptr %t396, ptr %l203
  br label %bb83
bb83:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i64, ptr %l1, !tbaa !24
  %t399 = load %"compiler/source:Span", ptr %l24
  %t400 = load i32, ptr %l25, !tbaa !23
  %t401 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t402 = load { i64, ptr }, ptr %l27, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorDeclRules(ptr %v0, ptr %v1, ptr %v1, ptr %t397, i64 %t398, %"compiler/source:Span" %t399, i32 %t400, { i64, ptr } %t401, { i64, ptr } %t402)
  br label %bb84
bb84:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i64, ptr %l1, !tbaa !24
  %t411 = load i32, ptr %l25, !tbaa !23
  %t412 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRules(ptr %v0, ptr %v1, ptr %t409, i64 %t410, i32 %t411, { i64, ptr } %t412)
  br label %bb85
bb85:
  %t417 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t417)
  br label %bb86
bb86:
  br label %bb92
bb87:
  br i1 true, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_575e4285282f1c6b_a969c68061cd7c57)
  unreachable
bb92:
  br label %bb93
bb93:
  %t419 = load i64, ptr %l5, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l5, !tbaa !24
  br label %bb1
bb94:
  br label %ret
ret:
  ret void
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseDropped(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l26 = alloca i1
  %l27 = alloca ptr
  %l35 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t18 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 4
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l3, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/ast:If", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load ptr, ptr %l3, !tbaa !29
  store ptr %t34, ptr %l18, !tbaa !29
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:If", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb8, label %bb9
bb7:
  %t42 = load ptr, ptr %l3, !tbaa !29
  store ptr %t42, ptr %l27, !tbaa !29
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/ast:If", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb12, label %bb13
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9f409528a62be557_96e98ebb70e4ac13)
  unreachable
bb9:
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/ast:If", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Branch", ptr %t53, i32 0, i32 2
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load ptr, ptr %l18, !tbaa !29
  %t60 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsDropped(ptr %v0, ptr %t58, i64 %t57)
  store i1 %t60, ptr %l26
  br label %bb11
bb11:
  %t61 = load i1, ptr %l26, !tbaa !21
  store i1 %t61, ptr %l17, !tbaa !21
  br label %bb16
bb12:
  call void @__olang_check_failed(ptr @olang_loc_9f409528a62be557_96e98ebb70e4ac13)
  unreachable
bb13:
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/ast:If", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Branch", ptr %t65, i32 0, i32 2
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = load ptr, ptr %l27, !tbaa !29
  %t72 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsCut(ptr %v0, ptr %t70, i64 %t69)
  store i1 %t72, ptr %l35
  br label %bb15
bb15:
  %t73 = load i1, ptr %l35, !tbaa !21
  store i1 %t73, ptr %l17, !tbaa !21
  br label %bb16
bb16:
  %t74 = load i1, ptr %l17, !tbaa !21
  store i1 %t74, ptr %rv
  br label %ret
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_1bc36e5fea83eb2f_c65858cd7310966b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %s2 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
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
  call void @__olang_scope_close(ptr %s2)
  store ptr null, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l30, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t43, ptr %l31
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtComparedToCaught(ptr %s2)
  store %"compiler/diagmsg:Msg" %t44, ptr %l32
  br label %bb22
bb22:
  %t45 = load ptr, ptr %l30, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l31
  %t47 = load %"compiler/diagmsg:Msg", ptr %l32
  %t48 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s2, ptr %t45, %"compiler/source:Span" %t46, %"compiler/diagmsg:Msg" %t47)
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
  call void @__olang_scope_close(ptr %s2)
  store ptr %t56, ptr %rv
  br label %ret
bb25:
  %t58 = load i1, ptr %l5, !tbaa !21
  br i1 %t58, label %bb26, label %bb27
bb26:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l1
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 114}
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexportArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i1
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
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l9
  br label %bb5
bb5:
  %t13 = load i32, ptr %l9, !tbaa !23
  store i32 %t13, ptr %l2, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l14
  br label %bb6
bb6:
  %t24 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t26 = trunc i64 19 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l18, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb11
bb9:
  %t40 = load ptr, ptr %l18, !tbaa !29
  %t41 = load i32, ptr %l23, !tbaa !23
  %t42 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t42, ptr %l24
  br label %bb10
bb10:
  %t43 = load i1, ptr %l24, !tbaa !21
  store i1 %t43, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l17, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeWritten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l17 = alloca { i64, [3 x i64] }
  %l22 = alloca i1
  %l34 = alloca { i64, ptr }
  %l45 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t87 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/ast:VarDecl", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t19 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v2, ptr %t10, i64 %t11, ptr %t15)
  store { i64, [3 x i64] } %t19, ptr %l17
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t20 = load { i64, [3 x i64] }, ptr %l17
  store { i64, [3 x i64] } %t20, ptr %rv
  br label %ret
bb4:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:StructBody", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/ast:VarDecl", ptr %t30, i32 0, i32 4
  %t33 = load i1, ptr %t32, !tbaa !21
  %t35 = xor i1 %t33, true
  store i1 %t35, ptr %l22, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:StructBody", ptr %t38, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l7, !tbaa !24
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t55, ptr %l34, !tbaa !27
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l8, !tbaa !29
  %t63 = load ptr, ptr %l8, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Param", ptr %t63, i32 0, i32 1
  %t66 = load i32, ptr %t65, !tbaa !23
  %t70 = icmp eq i32 %t66, %a4
  br i1 %t70, label %bb14, label %bb15
bb14:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load ptr, ptr %l8, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Param", ptr %t74, i32 0, i32 2
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t81 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %t72, i64 %t73, ptr %t77)
  store { i64, [3 x i64] } %t81, ptr %l45
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t82 = load { i64, [3 x i64] }, ptr %l45
  store { i64, [3 x i64] } %t82, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb10
bb19:
  br label %bb20
bb20:
  store { i64, [3 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 0
  store i64 0, ptr %t88
  %t89 = load { i64, [3 x i64] }, ptr %t87
  store { i64, [3 x i64] } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenHeld(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l22 = alloca ptr
  %l27 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 4
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t17 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t14, ptr %t11, ptr %a1)
  store i32 %t17, ptr %l12
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t19 = load i32, ptr %l12, !tbaa !23
  %t20 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t20, ptr %l13
  br label %bb3
bb3:
  %t21 = load i32, ptr %l13, !tbaa !23
  store i32 %t21, ptr %l2, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l16
  br label %bb4
bb4:
  %t27 = load i1, ptr %l16, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l20
  br label %bb7
bb7:
  %t33 = load i1, ptr %l20, !tbaa !21
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 99
  store ptr %t37, ptr %l22, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l27
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t48 = load i32, ptr %l27, !tbaa !23
  %t49 = sext i32 %t48 to i64
  %t50 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t50, i64 %t49, i1 true)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutHoldsUnique(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %l41 = alloca i64
  %l44 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i64
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i1
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %l80 = alloca ptr
  %l83 = alloca %"compiler/source:Span"
  %l86 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca %"compiler/diagmsg:Msg"
  %l95 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l12, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l17
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = load i32, ptr %l17, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l18
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb6
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l25
  br label %bb5
bb5:
  %t33 = load i1, ptr %l25, !tbaa !21
  %t34 = xor i1 %t33, true
  store i1 %t34, ptr %l21, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l29, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l34
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l29, !tbaa !29
  %t54 = load i32, ptr %l34, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t53, i32 %t54)
  store { i64, ptr } %t55, ptr %l35
  br label %bb11
bb11:
  %t56 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t56, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t62 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp sgt i64 %t61, %t62
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb17
bb14:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  %t75 = sub i64 %t71, %t72
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t75, %t76
  %t81 = sub i64 %t79, 1
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = sdiv i64 %t81, %t82
  store i64 %t85, ptr %l44, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb16
bb16:
  %t87 = load i64, ptr %l44, !tbaa !24
  store i64 %t87, ptr %l41, !tbaa !24
  br label %bb17
bb17:
  %t88 = load i64, ptr %l41, !tbaa !24
  store i64 %t88, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l7, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb20:
  br label %bb21
bb21:
  %t97 = load i64, ptr %l4, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t99 = load i64, ptr %l6, !tbaa !24
  %t102 = mul i64 %t98, %t99
  %t105 = add i64 %t97, %t102
  store i64 %t105, ptr %l9, !tbaa !24
  %t107 = load i64, ptr %l9, !tbaa !24
  store i64 %t107, ptr %l62, !tbaa !24
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v1, ptr %t108)
  store i64 %t110, ptr %l64
  br label %bb22
bb22:
  %t111 = load i64, ptr %l62, !tbaa !24
  %t112 = load i64, ptr %l64, !tbaa !24
  %t113 = icmp sge i64 %t111, %t112
  br i1 %t113, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb26
bb24:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t116, ptr %l68, !tbaa !27
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 %t117
  %t122 = load i32, ptr %t121, !tbaa !33
  %t125 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t115, i32 %t122)
  store i1 %t125, ptr %l71
  br label %bb25
bb25:
  %t126 = load i1, ptr %l71, !tbaa !21
  store i1 %t126, ptr %l66, !tbaa !21
  br label %bb26
bb26:
  %t127 = load i1, ptr %l66, !tbaa !21
  br i1 %t127, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb30
bb28:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t132, ptr %l75, !tbaa !27
  %t133 = load i64, ptr %l9, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i32, ptr %t136, i64 %t133
  %t138 = load i32, ptr %t137, !tbaa !33
  %t141 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t131, i32 %t138)
  store i1 %t141, ptr %l78
  br label %bb29
bb29:
  %t142 = load i1, ptr %l78, !tbaa !21
  %t143 = xor i1 %t142, true
  store i1 %t143, ptr %l72, !tbaa !21
  br label %bb30
bb30:
  %t145 = load i1, ptr %l72, !tbaa !21
  br i1 %t145, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l80, !tbaa !29
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t148 = load i64, ptr %l9, !tbaa !24
  %t151 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v1, ptr %t147, i64 %t148)
  store %"compiler/source:Span" %t151, ptr %l83
  br label %bb34
bb34:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l1, !tbaa !23
  %t156 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t152, i32 %t153)
  store { i64, ptr } %t156, ptr %l86
  br label %bb35
bb35:
  %t157 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 0
  %t159 = extractvalue { i64, ptr } %t157, 1
  %t160 = mul i64 %t158, 1
  %t161 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t160)
  call void @llvm.memcpy.p0.p0.i64(ptr %t161, ptr %t159, i64 %t160, i1 false)
  %t162 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t161, 1
  store { i64, ptr } %t163, ptr %l87, !tbaa !27
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t165, ptr %l89, !tbaa !27
  %t166 = load i64, ptr %l9, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i32, ptr %t169, i64 %t166
  %t171 = load i32, ptr %t170, !tbaa !33
  %t174 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t164, i32 %t171)
  store { i64, ptr } %t174, ptr %l92
  br label %bb36
bb36:
  %t175 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t182 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t184 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmutPart(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t182, { i64, ptr } %t181)
  store %"compiler/diagmsg:Msg" %t184, ptr %l94
  br label %bb37
bb37:
  %t185 = load ptr, ptr %l80, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l83
  %t187 = load %"compiler/diagmsg:Msg", ptr %l94
  %t188 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t185, %"compiler/source:Span" %t186, %"compiler/diagmsg:Msg" %t187)
  store i64 %t188, ptr %l95
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb39:
  %t189 = load i64, ptr %l8, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l8, !tbaa !24
  br label %bb18
bb40:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceBodies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l15 = alloca i1
  %l30 = alloca i64
  %l33 = alloca i64
  %l53 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Call", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  store ptr %t10, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t11 = load ptr, ptr %l14, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l14, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 5}
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l15, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { i32 }, ptr %t21, i32 0, i32 0
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l4, !tbaa !23
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t25 = load ptr, ptr %lp2
  %t26 = load i32, ptr %l4, !tbaa !23
  %t28 = sext i32 %t26 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t25, i64 %t28)
  br label %bb7
bb7:
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t31 = load ptr, ptr %lp2
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_8803ccf5e870aa5b_cb8fe22003fe469f)
  unreachable
bb13:
  store i64 1, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Call", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb19
bb16:
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l33, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb18
bb18:
  %t67 = load i64, ptr %l33, !tbaa !24
  store i64 %t67, ptr %l30, !tbaa !24
  br label %bb19
bb19:
  %t68 = load i64, ptr %l30, !tbaa !24
  store i64 %t68, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t77 = load i64, ptr %l5, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Call", ptr %t88, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l53, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t85
  %t97 = load ptr, ptr %t96, !tbaa !39
  %t98 = load ptr, ptr %lp2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBodies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t97, ptr %t98)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t102 = load i64, ptr %l9, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l9, !tbaa !24
  br label %bb20
bb26:
  %t106 = load ptr, ptr %lp2
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:litBuilder"
  %l7 = alloca ptr
  %l15 = alloca ptr
  %l20 = alloca i32
  %l25 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l32 = alloca %"compiler/source:Span"
  %l35 = alloca { i64, ptr }
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l50 = alloca i32
  %l52 = alloca ptr
  %l56 = alloca %"compiler/check:litBuilder"
  %l63 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca ptr
  %l73 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca i32
  %l86 = alloca ptr
  %l93 = alloca ptr
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l3, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t7, { i64, ptr } %t8)
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
  %t16 = load ptr, ptr %l15, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l20
  br label %bb6
bb6:
  %t27 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t29 = trunc i64 19 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %t32, { i64, ptr } %t33)
  store i64 %t36, ptr %l25
  br label %bb9
bb8:
  br label %bb21
bb9:
  %t37 = load i64, ptr %l25, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sge i64 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l28, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t43, ptr %l29, !tbaa !27
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 %t44
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t51 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t49)
  store %"compiler/source:Span" %t51, ptr %l32
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l3, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t52, i32 %t53)
  store { i64, ptr } %t56, ptr %l35
  br label %bb13
bb13:
  %t57 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  %t59 = extractvalue { i64, ptr } %t57, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t65 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %s3, ptr %s3, { i64, ptr } %t63)
  store %"compiler/diagmsg:Msg" %t65, ptr %l37
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l28, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l32
  %t68 = load %"compiler/diagmsg:Msg", ptr %l37
  %t69 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t66, %"compiler/source:Span" %t67, %"compiler/diagmsg:Msg" %t68)
  store i64 %t69, ptr %l38
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t70, { i64, ptr } %t71)
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l1
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t74, %"compiler/source:Span" %t75)
  store ptr %t78, ptr %l43
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  %t79 = load ptr, ptr %l43, !tbaa !29
  store ptr %t79, ptr %rv
  br label %ret
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l44, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t81, ptr %l45
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l3, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l50
  br label %bb19
bb19:
  %t92 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t93 = load ptr, ptr %l44, !tbaa !29
  %t94 = load %"compiler/source:Span", ptr %l45
  %t95 = load i32, ptr %l50, !tbaa !23
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %t93, %"compiler/source:Span" %t94, i32 %t95, { i64, ptr } %t92)
  store ptr %t97, ptr %l52
  br label %bb20
bb20:
  %t98 = load ptr, ptr %l52, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
bb21:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l2
  %t101 = load i32, ptr %l3, !tbaa !23
  %t105 = call %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %t99, %"compiler/source:Span" %t100, i32 %t101)
  store %"compiler/check:litBuilder" %t105, ptr %l56
  br label %bb22
bb22:
  %t106 = load %"compiler/check:litBuilder", ptr %l56
  store %"compiler/check:litBuilder" %t106, ptr %l6
  %t107 = getelementptr %"compiler/check:litBuilder", ptr %l6, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  %t110 = icmp slt i64 %t108, 0
  br i1 %t110, label %bb23, label %bb24
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %t112, { i64, ptr } %t113)
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l1
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t116, %"compiler/source:Span" %t117)
  store ptr %t120, ptr %l63
  br label %bb26
bb26:
  %t121 = load ptr, ptr %l63, !tbaa !29
  store ptr %t121, ptr %rv
  br label %ret
bb27:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t126 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %t122, { i64, ptr } %t123)
  store i64 %t126, ptr %l66
  br label %bb28
bb28:
  %t127 = load i64, ptr %l66, !tbaa !24
  %t128 = icmp sge i64 %t127, 0
  br i1 %t128, label %bb29, label %bb30
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l1
  %t132 = getelementptr %"compiler/check:litBuilder", ptr %l6, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t139 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentriesLit(ptr %v0, ptr %v1, ptr %v2, ptr %t130, %"compiler/source:Span" %t131, i32 %t133, { i64, ptr } %t134)
  store ptr %t139, ptr %l73
  br label %bb31
bb30:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l1
  %t142 = getelementptr %"compiler/check:litBuilder", ptr %l6, i32 0, i32 1
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t149 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %t140, %"compiler/source:Span" %t141, i32 %t143, { i64, ptr } %t144)
  store ptr %t149, ptr %l78
  br label %bb32
bb31:
  %t150 = load ptr, ptr %l73, !tbaa !29
  store ptr %t150, ptr %l68, !tbaa !29
  br label %bb33
bb32:
  %t151 = load ptr, ptr %l78, !tbaa !29
  store ptr %t151, ptr %l68, !tbaa !29
  br label %bb33
bb33:
  %t152 = load ptr, ptr %l68, !tbaa !29
  store ptr %t152, ptr %l7, !tbaa !29
  %t153 = load ptr, ptr %l7, !tbaa !29
  %t156 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t153)
  store i32 %t156, ptr %l81
  br label %bb34
bb34:
  %t157 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t158 = load i32, ptr %l81, !tbaa !23
  %t160 = icmp eq i32 %t158, %t157
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l1
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t162, %"compiler/source:Span" %t163)
  store ptr %t166, ptr %l86
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t167 = load ptr, ptr %l86, !tbaa !29
  store ptr %t167, ptr %rv
  br label %ret
bb38:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load %"compiler/source:Span", ptr %l1
  %t170 = load %"compiler/source:Span", ptr %l2
  %t171 = load %"compiler/check:litBuilder", ptr %l6
  %t172 = load i32, ptr %l3, !tbaa !23
  %t173 = load ptr, ptr %l7, !tbaa !29
  %t180 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v2, ptr %v2, ptr %t168, %"compiler/source:Span" %t169, %"compiler/source:Span" %t170, %"compiler/check:litBuilder" %t171, i32 %t172, ptr %t173)
  store ptr %t180, ptr %l93
  br label %bb39
bb39:
  %t181 = load ptr, ptr %l93, !tbaa !29
  store ptr %t181, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLend(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l15 = alloca i32
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca i64
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t6 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load i1, ptr %l6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallAt(ptr %v0, ptr %v1, ptr %t9, ptr %t10, %"compiler/source:Span" %a2)
  store %"compiler/source:Span" %t15, ptr %l11
  br label %bb4
bb3:
  br label %bb10
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store i32 %t21, ptr %l15
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t25 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t22)
  store i32 %t25, ptr %l18
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load i32, ptr %l15, !tbaa !23
  %t28 = load i32, ptr %l18, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %s1, ptr %t26, i32 %t27, i32 %t28)
  store { i64, ptr } %t29, ptr %l19
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t38 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyLent(ptr %s1, ptr %s1, { i64, ptr } %t36)
  store %"compiler/diagmsg:Msg" %t38, ptr %l21
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l7, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l11
  %t41 = load %"compiler/diagmsg:Msg", ptr %l21
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t39, %"compiler/source:Span" %t40, %"compiler/diagmsg:Msg" %t41)
  store i64 %t42, ptr %l22
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l6 = alloca i64
  %l11 = alloca i64
  %l18 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %t1, i32 %t2, { i64, ptr } %t3, i64 %a3)
  store i64 %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l6, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i32, ptr %l1, !tbaa !23
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %t11, i64 %t12, i32 %t13, { i64, ptr } %t14, %"compiler/source:Span" %a4, { i64, ptr } %a5)
  store i1 %t23, ptr %l18
  br label %bb2
bb2:
  %t24 = load i64, ptr %l6, !tbaa !24
  store i64 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetAtTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i1
  %l21 = alloca i32
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i32
  %l37 = alloca i1
  %l40 = alloca i32
  %l49 = alloca i64
  %l52 = alloca i1
  %l55 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca i64
  %l61 = alloca i32
  %l62 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca %"compiler/source:Span"
  %l74 = alloca i32
  %l80 = alloca %"compiler/check:setAt"
  %l82 = alloca %"compiler/check:setAt"
  %s1 = alloca %olang.scope
  %rv = alloca ptr
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
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb38
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t32 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i32 %t32, ptr %l21
  br label %bb6
bb6:
  %t33 = load i32, ptr %l21, !tbaa !23
  %t34 = icmp sge i32 %t33, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t38)
  store ptr %t41, ptr %l26
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l26, !tbaa !29
  store ptr %t42, ptr %l5, !tbaa !29
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l30, !tbaa !29
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v2, ptr %t49)
  store i32 %t51, ptr %l32
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l30, !tbaa !29
  %t53 = load i32, ptr %l32, !tbaa !23
  %t54 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l33
  br label %bb15
bb15:
  %t55 = load i32, ptr %l33, !tbaa !23
  store i32 %t55, ptr %l6, !tbaa !23
  %t56 = load i32, ptr %l6, !tbaa !23
  %t57 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t60 = icmp eq i32 %t56, %t57
  br i1 %t60, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb19
bb17:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l6, !tbaa !23
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l40
  br label %bb18
bb18:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t68 = load i32, ptr %l40, !tbaa !23
  %t70 = icmp ne i32 %t68, %t67
  store i1 %t70, ptr %l37, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l37, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l6, !tbaa !23
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t80 = add i64 %t78, 1
  %t84 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s1, ptr %t74, i32 %t75, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) }, i64 %t80)
  store i64 %t84, ptr %l49
  br label %bb23
bb23:
  %t85 = load i64, ptr %l49, !tbaa !24
  store i64 %t85, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t88 = icmp slt i64 %t86, 0
  br i1 %t88, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb27
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t94 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v2, ptr %t90, ptr %t91)
  store i64 %t94, ptr %l55
  br label %bb26
bb26:
  %t95 = load i64, ptr %l55, !tbaa !24
  %t96 = icmp sge i64 %t95, 0
  store i1 %t96, ptr %l52, !tbaa !21
  br label %bb27
bb27:
  %t98 = load i1, ptr %l52, !tbaa !21
  br i1 %t98, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l58, !tbaa !29
  %t101 = load i64, ptr %l7, !tbaa !24
  store i64 %t101, ptr %l59, !tbaa !24
  %t102 = load ptr, ptr %l5, !tbaa !29
  %t104 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v2, ptr %t102)
  store i32 %t104, ptr %l61
  br label %bb31
bb31:
  %t105 = load ptr, ptr %l58, !tbaa !29
  %t106 = load i64, ptr %l59, !tbaa !24
  %t107 = load i32, ptr %l61, !tbaa !23
  %t108 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamsOn(ptr %v0, ptr %s1, ptr %t105, i64 %t106, i32 %t107)
  store { i64, ptr } %t108, ptr %l62
  br label %bb32
bb32:
  %t109 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t109, ptr %l8, !tbaa !27
  %t110 = load ptr, ptr %l5, !tbaa !29
  store ptr %t110, ptr %l63, !tbaa !29
  %t111 = load i64, ptr %l7, !tbaa !24
  store i64 %t111, ptr %l64, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t112, ptr %l65, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t113, ptr %l66, !tbaa !27
  %t114 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t114, ptr %l67
  %t115 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = add i64 %t117, 1
  %t120 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t125 = icmp slt i64 %t119, %t122
  br i1 %t125, label %bb33, label %bb34
bb33:
  %t127 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t131 = add i64 %t129, 1
  %t133 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i32, ptr %t134, i64 %t131
  %t136 = load i32, ptr %t135, !tbaa !33
  store i32 %t136, ptr %l74, !tbaa !23
  br label %bb35
bb34:
  %t138 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t138, ptr %l74, !tbaa !23
  br label %bb35
bb35:
  %t140 = load ptr, ptr %l63, !tbaa !29
  %t141 = load i64, ptr %l64, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t144 = load %"compiler/source:Span", ptr %l67
  %t145 = load i32, ptr %l74, !tbaa !23
  %t146 = call %"compiler/check:setAt" @compiler_2fcheck_3asetAt_2ector(ptr %v2, ptr %v1, ptr %v2, ptr %t140, i64 %t141, { i64, ptr } %t142, { i64, ptr } %t143, %"compiler/source:Span" %t144, i32 %t145)
  store %"compiler/check:setAt" %t146, ptr %l80
  br label %bb36
bb36:
  %t148 = call %"compiler/check:setAt" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3asetAt(ptr %v2, ptr %l80)
  store %"compiler/check:setAt" %t148, ptr %l82
  br label %bb37
bb37:
  %t149 = load %"compiler/check:setAt", ptr %l82
  %t150 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 64, i64 8)
  store %"compiler/check:setAt" %t149, ptr %t150
  call void @__olang_scope_close(ptr %s1)
  store ptr %t150, ptr %rv
  br label %ret
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store ptr null, ptr %rv
  br label %ret
bb42:
  call void @__olang_check_failed(ptr @olang_loc_9413809856381141_f41a02fc0683f50d)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleWeak(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/check:weakPlace"
  %l26 = alloca %"compiler/check:weakPlace"
  %l29 = alloca ptr
  %l30 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca %"compiler/check:weakPlace"
  %l35 = alloca %"compiler/check:weakPlace"
  %l36 = alloca { i64, ptr }
  %l43 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l44 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i32
  %l49 = alloca i1
  %l53 = alloca i1
  %l54 = alloca { i64, [3 x i64] }
  %l58 = alloca { i64, [3 x i64] }
  %l59 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca { i64, [3 x i64] }
  %l65 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca { i64, ptr }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l8, !tbaa !29
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l9
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l11
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l9
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l8, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 8
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l13
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t28 = load ptr, ptr %l8, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %t29
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t33 = load { i64, ptr }, ptr %t32
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = call ptr @__olang_region_or(ptr %t34, ptr null)
  %t36 = icmp ne ptr %t35, null
  %t37 = select i1 %t36, ptr %t35, ptr null
  call void @__olang_region_drop(ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l13
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 100
  store ptr %t40, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l2, !tbaa !24
  store i64 %t42, ptr %l17, !tbaa !24
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eLen__H084a2ca77c4688e46cae486f59666d3f(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l19
  br label %bb9
bb9:
  %t46 = load i64, ptr %l17, !tbaa !24
  %t47 = load i64, ptr %l19, !tbaa !24
  %t48 = icmp slt i64 %t46, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t53 = load i64, ptr %l2, !tbaa !24
  %t56 = call %"compiler/check:weakPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eAt_3ccompiler_2fcheck_3aweakPlace_3e(ptr %v0, ptr %v0, ptr %t52, i64 %t53)
  store %"compiler/check:weakPlace" %t56, ptr %l24
  br label %bb13
bb13:
  %t58 = call %"compiler/check:weakPlace" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aweakPlace(ptr %v0, ptr %l24)
  store %"compiler/check:weakPlace" %t58, ptr %l26
  br label %bb14
bb14:
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store ptr %t59, ptr %lp3
  %t60 = load %"compiler/check:weakPlace", ptr %l26
  %t61 = load ptr, ptr %lp3
  store %"compiler/check:weakPlace" %t60, ptr %t61
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 8
  store ptr %t67, ptr %l29, !tbaa !29
  %t68 = ptrtoint ptr %v0 to i64
  store i64 %t68, ptr %l30, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = call ptr @__olang_region_make(ptr %v0)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l30, !tbaa !24
  br label %bb16
bb16:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l32, !tbaa !29
  %t74 = load ptr, ptr %lp3
  %t75 = load %"compiler/check:weakPlace", ptr %t74
  store %"compiler/check:weakPlace" %t75, ptr %l33
  %t76 = load i64, ptr %l30
  %t77 = inttoptr i64 %t76 to ptr
  %t79 = call %"compiler/check:weakPlace" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3aweakPlace(ptr %t77, ptr %l33)
  store %"compiler/check:weakPlace" %t79, ptr %l35
  br label %bb17
bb17:
  %t80 = load i64, ptr %l30
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = load i64, ptr %l30
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = load ptr, ptr %l32, !tbaa !29
  %t85 = load %"compiler/check:weakPlace", ptr %l35
  %t86 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakRow(ptr %v0, ptr %t81, ptr %t83, ptr %t84, %"compiler/check:weakPlace" %t85)
  store { i64, ptr } %t86, ptr %l36
  br label %bb18
bb18:
  %t87 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t88 = load i64, ptr %l30
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = extractvalue { i64, ptr } %t87, 0
  %t91 = extractvalue { i64, ptr } %t87, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t96, { i64, ptr } %t95)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t98 = load i64, ptr %l2, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l2, !tbaa !24
  br label %bb8
bb21:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 5
  %t109 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v0, ptr %t107)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t109, ptr %l43
  br label %bb22
bb22:
  %t110 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l43
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t110, ptr %l4
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t112 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %l4)
  %t113 = extractvalue { i32, i64 } %t112, 1
  %t114 = extractvalue { i32, i64 } %t112, 0
  store i32 %t114, ptr %l47
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb25, label %ok.116, !prof !99
ok.116:
  store i64 %t113, ptr %l46
  br label %bb24
bb24:
  %t117 = load i64, ptr %l46, !tbaa !24
  store i64 %t117, ptr %l44, !tbaa !24
  br label %bb27
bb25:
  %t118 = load i32, ptr %l47, !tbaa !23
  %t119 = ashr i32 %t118, 16
  %t121 = icmp eq i32 %t119, 1
  store i1 %t121, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  br label %bb41
bb27:
  %t122 = load i64, ptr %l44, !tbaa !24
  store i64 %t122, ptr %l5, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 99
  %t126 = load i64, ptr %l5, !tbaa !24
  %t129 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t125, i64 %t126)
  store i1 %t129, ptr %l53
  br label %bb28
bb28:
  %t130 = load i1, ptr %l53, !tbaa !21
  br i1 %t130, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb30:
  br label %bb31
bb31:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 98
  %t134 = load i64, ptr %l5, !tbaa !24
  %t137 = call { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %t133, i64 %t134)
  %t138 = extractvalue { i32, { i64, [3 x i64] } } %t137, 1
  %t139 = extractvalue { i32, { i64, [3 x i64] } } %t137, 0
  store i32 %t139, ptr %l59
  %t140 = icmp ne i32 %t139, 0
  br i1 %t140, label %bb33, label %ok.141, !prof !99
ok.141:
  store { i64, [3 x i64] } %t138, ptr %l58
  br label %bb32
bb32:
  %t142 = load { i64, [3 x i64] }, ptr %l58
  store { i64, [3 x i64] } %t142, ptr %l54
  br label %bb35
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb35:
  %t143 = load { i64, [3 x i64] }, ptr %l54
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/generic:Program", ptr %t147, i32 0, i32 0
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = getelementptr %"compiler/load:Loader", ptr %t150, i32 0, i32 4
  %t153 = load ptr, ptr %t152, !tbaa !29
  store ptr %t153, ptr %l63, !tbaa !29
  store { i64, [3 x i64] } %t143, ptr %l64
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l65, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t160 = load i64, ptr %l5, !tbaa !24
  %t162 = trunc i64 %t160 to i32
  %t166 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t159, i32 %t162)
  store i32 %t166, ptr %l71
  br label %bb36
bb36:
  %t167 = load ptr, ptr %l65, !tbaa !29
  %t168 = load i32, ptr %l71, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t167, i32 %t168)
  store { i64, ptr } %t169, ptr %l72
  br label %bb37
bb37:
  %t170 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  %t172 = extractvalue { i64, ptr } %t170, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t178 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakUnheld(ptr %s5, ptr %s5, { i64, ptr } %t176)
  store %"compiler/diagmsg:Msg" %t178, ptr %l74
  br label %bb38
bb38:
  %t179 = load ptr, ptr %l63, !tbaa !29
  %t180 = load { i64, [3 x i64] }, ptr %l64
  %t181 = load %"compiler/diagmsg:Msg", ptr %l74
  %t182 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t179, { i64, [3 x i64] } %t180, %"compiler/diagmsg:Msg" %t181)
  store i64 %t182, ptr %l75
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb40:
  br label %bb23
bb41:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnTargets(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i32
  %l23 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i64
  %l28 = alloca [1 x i32]
  %l29 = alloca { i64, ptr }
  %l32 = alloca i64
  %l34 = alloca i1
  %l39 = alloca i32
  %l44 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l60 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l65 = alloca i64
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i64
  %l71 = alloca i64
  %l75 = alloca i64
  %l78 = alloca i64
  %l98 = alloca ptr
  %l101 = alloca i32
  %l104 = alloca ptr
  %l108 = alloca i32
  %l116 = alloca i1
  %l117 = alloca i1
  %l120 = alloca i1
  %l121 = alloca i1
  %l125 = alloca i1
  %l126 = alloca i1
  %l129 = alloca ptr
  %l132 = alloca i32
  %l136 = alloca i32
  %l137 = alloca i1
  %l140 = alloca ptr
  %l142 = alloca i1
  %l146 = alloca i1
  %l147 = alloca i1
  %l151 = alloca i1
  %l153 = alloca i1
  %l156 = alloca ptr
  %l159 = alloca i32
  %l162 = alloca i1
  %l163 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l168 = alloca %"compiler/source:Span"
  %l172 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l178 = alloca ptr
  %l181 = alloca %"compiler/source:Span"
  %l182 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l187 = alloca %"compiler/diagmsg:Msg"
  %l188 = alloca i64
  %l189 = alloca ptr
  %l191 = alloca { i64, ptr }
  %l194 = alloca %"compiler/source:Span"
  %l198 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l203 = alloca ptr
  %l207 = alloca i32
  %l208 = alloca { i64, ptr }
  %l210 = alloca %"compiler/diagmsg:Msg"
  %l211 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca ptr
  %l216 = alloca i1
  %l222 = alloca ptr
  %l224 = alloca ptr
  %l229 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l230 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l5, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l23, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t8)
  store %"compiler/source:Span" %t10, ptr %l25
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultVoid(ptr %s1)
  store %"compiler/diagmsg:Msg" %t11, ptr %l26
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l23, !tbaa !29
  %t13 = load %"compiler/source:Span", ptr %l25
  %t14 = load %"compiler/diagmsg:Msg", ptr %l26
  %t15 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t12, %"compiler/source:Span" %t13, %"compiler/diagmsg:Msg" %t14)
  store i64 %t15, ptr %l27
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t16 = insertvalue [1 x i32] undef, i32 0, 0
  store [1 x i32] %t16, ptr %l28
  %t17 = mul i64 1, 4
  %t18 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 1, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l29, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = mul i64 1, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l28, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t24, ptr %l6, !tbaa !27
  %t25 = load i32, ptr %l5, !tbaa !23
  %t27 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i32, ptr %t28, i64 0
  store i32 %t25, ptr %t29, !tbaa !33
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v3, ptr %t30)
  store i64 %t32, ptr %l32
  br label %bb7
bb7:
  %t33 = load i64, ptr %l32, !tbaa !24
  %t34 = icmp sgt i64 %t33, 1
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l39
  br label %bb10
bb9:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb11
bb10:
  %t46 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t48 = trunc i64 22 to i32
  %t49 = icmp eq i32 %t46, %t48
  store i1 %t49, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l34, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  store ptr %t57, ptr %l44, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l49
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t68 = load ptr, ptr %l44, !tbaa !29
  %t69 = load i32, ptr %l49, !tbaa !23
  %t70 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t68, i32 %t69)
  store { i64, ptr } %t70, ptr %l50
  br label %bb15
bb15:
  %t71 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t71, ptr %l51, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t74 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l53, !tbaa !24
  %t77 = load i64, ptr %l53, !tbaa !24
  %t78 = icmp eq i64 %t73, %t77
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t80 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l53, !tbaa !24
  %t85 = mul i64 %t84, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t81, ptr %t83, i64 %t85, i1 false)
  br label %bb18
bb17:
  %t86 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  store i64 %t87, ptr %l55, !tbaa !24
  %t88 = load i64, ptr %l55, !tbaa !24
  %t89 = mul i64 %t88, 4
  %t90 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l56, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l55, !tbaa !24
  %t98 = mul i64 %t97, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t94, ptr %t96, i64 %t98, i1 false)
  %t99 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t99, ptr %l6, !tbaa !27
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t100 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l58, !tbaa !24
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v3, ptr %t103)
  store i64 %t105, ptr %l60
  br label %bb20
bb20:
  %t106 = load i64, ptr %l58, !tbaa !24
  %t107 = load i64, ptr %l60, !tbaa !24
  %t108 = icmp ne i64 %t106, %t107
  br i1 %t108, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l62, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l63
  %t112 = load ptr, ptr %l4, !tbaa !29
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v3, ptr %t112)
  store i64 %t114, ptr %l65
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t115 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = load i64, ptr %l65, !tbaa !24
  %t120 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %s3, i64 %t118, i64 %t117)
  store %"compiler/diagmsg:Msg" %t120, ptr %l68
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l62, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l63
  %t123 = load %"compiler/diagmsg:Msg", ptr %l68
  %t124 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s3, ptr %t121, %"compiler/source:Span" %t122, %"compiler/diagmsg:Msg" %t123)
  store i64 %t124, ptr %l69
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  store i64 0, ptr %l7, !tbaa !24
  %t125 = load ptr, ptr %l4, !tbaa !29
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v3, ptr %t125)
  store i64 %t127, ptr %l71
  br label %bb27
bb27:
  %t128 = load i64, ptr %l71, !tbaa !24
  store i64 %t128, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  %t130 = load i64, ptr %l7, !tbaa !24
  %t133 = icmp sgt i64 %t129, %t130
  br i1 %t133, label %bb28, label %bb29
bb28:
  %t135 = load i64, ptr %l9, !tbaa !24
  %t137 = icmp sgt i64 %t135, 0
  br i1 %t137, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb33
bb30:
  %t139 = load i64, ptr %l8, !tbaa !24
  %t140 = load i64, ptr %l7, !tbaa !24
  %t143 = sub i64 %t139, %t140
  %t144 = load i64, ptr %l9, !tbaa !24
  %t147 = add i64 %t143, %t144
  %t149 = sub i64 %t147, 1
  %t150 = load i64, ptr %l9, !tbaa !24
  %t153 = sdiv i64 %t149, %t150
  store i64 %t153, ptr %l78, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb32
bb32:
  %t155 = load i64, ptr %l78, !tbaa !24
  store i64 %t155, ptr %l75, !tbaa !24
  br label %bb33
bb33:
  %t156 = load i64, ptr %l75, !tbaa !24
  store i64 %t156, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t157 = load i64, ptr %l11, !tbaa !24
  %t158 = load i64, ptr %l10, !tbaa !24
  %t161 = icmp slt i64 %t157, %t158
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb120
bb36:
  br label %bb37
bb37:
  %t165 = load i64, ptr %l7, !tbaa !24
  %t166 = load i64, ptr %l11, !tbaa !24
  %t167 = load i64, ptr %l9, !tbaa !24
  %t170 = mul i64 %t166, %t167
  %t173 = add i64 %t165, %t170
  store i64 %t173, ptr %l12, !tbaa !24
  %t175 = load ptr, ptr %l4, !tbaa !29
  %t176 = load i64, ptr %l12, !tbaa !24
  %t179 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v3, ptr %s5, ptr %t175, i64 %t176)
  store ptr %t179, ptr %l98
  br label %bb38
bb38:
  %t180 = load ptr, ptr %l98, !tbaa !29
  %t181 = icmp eq ptr %t180, null
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb39, label %bb40
bb39:
  %t185 = load ptr, ptr %l4, !tbaa !29
  %t186 = load i64, ptr %l12, !tbaa !24
  %t189 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v3, ptr %v3, ptr %t185, i64 %t186)
  store ptr %t189, ptr %l104
  br label %bb41
bb40:
  %t190 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t190, ptr %l101, !tbaa !23
  br label %bb46
bb41:
  %t192 = load ptr, ptr %l104, !tbaa !29
  store ptr %t192, ptr %l13, !tbaa !29
  %t193 = load ptr, ptr %l13, !tbaa !29
  %t195 = icmp eq ptr %t193, null
  br i1 %t195, label %bb42, label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_c35353a7f0d99057_ddbdada8f24db6a3)
  unreachable
bb43:
  br label %bb44
bb44:
  %t197 = load ptr, ptr %l13, !tbaa !29
  %t199 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v3, ptr %t197)
  store i32 %t199, ptr %l108
  br label %bb45
bb45:
  %t200 = load i32, ptr %l108, !tbaa !23
  store i32 %t200, ptr %l101, !tbaa !23
  br label %bb46
bb46:
  %t201 = load i32, ptr %l101, !tbaa !23
  store i32 %t201, ptr %l14, !tbaa !23
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t208 = load i32, ptr %l14, !tbaa !23
  %t209 = load i64, ptr %l12, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i32, ptr %t212, i64 %t209
  %t214 = load i32, ptr %t213, !tbaa !33
  %t218 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t207, i32 %t208, i32 %t214)
  store i1 %t218, ptr %l116
  br label %bb47
bb47:
  %t219 = load i1, ptr %l116, !tbaa !21
  br i1 %t219, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb61
bb49:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l14, !tbaa !23
  %t224 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t220, i32 %t221)
  store i1 %t224, ptr %l120
  br label %bb50
bb50:
  %t225 = load i1, ptr %l120, !tbaa !21
  br i1 %t225, label %bb51, label %bb52
bb51:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i64, ptr %l12, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i32, ptr %t230, i64 %t227
  %t232 = load i32, ptr %t231, !tbaa !33
  %t235 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t226, i32 %t232)
  store i1 %t235, ptr %l125
  br label %bb53
bb52:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb54
bb53:
  %t236 = load i1, ptr %l125, !tbaa !21
  store i1 %t236, ptr %l121, !tbaa !21
  br label %bb54
bb54:
  %t237 = load i1, ptr %l121, !tbaa !21
  br i1 %t237, label %bb55, label %bb56
bb55:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/check:Checker", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = getelementptr %"compiler/generic:Program", ptr %t241, i32 0, i32 2
  store ptr %t243, ptr %l129, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i32, ptr %l14, !tbaa !23
  %t248 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t244, i32 %t245)
  store i32 %t248, ptr %l132
  br label %bb57
bb56:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb60
bb57:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i64, ptr %l12, !tbaa !24
  %t252 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr i32, ptr %t253, i64 %t250
  %t255 = load i32, ptr %t254, !tbaa !33
  %t258 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t249, i32 %t255)
  store i32 %t258, ptr %l136
  br label %bb58
bb58:
  %t259 = load ptr, ptr %l129, !tbaa !29
  %t260 = load i32, ptr %l132, !tbaa !23
  %t261 = load i32, ptr %l136, !tbaa !23
  %t262 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t259, i32 %t260, i32 %t261)
  store i1 %t262, ptr %l137
  br label %bb59
bb59:
  %t263 = load i1, ptr %l137, !tbaa !21
  store i1 %t263, ptr %l126, !tbaa !21
  br label %bb60
bb60:
  %t264 = load i1, ptr %l126, !tbaa !21
  store i1 %t264, ptr %l117, !tbaa !21
  br label %bb61
bb61:
  %t265 = load i1, ptr %l117, !tbaa !21
  store i1 %t265, ptr %l15, !tbaa !21
  %t266 = load ptr, ptr %l4, !tbaa !29
  %t267 = load i64, ptr %l12, !tbaa !24
  %t270 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v3, ptr %s5, ptr %t266, i64 %t267)
  store ptr %t270, ptr %l140
  br label %bb62
bb62:
  %t271 = load ptr, ptr %l140, !tbaa !29
  %t272 = icmp eq ptr %t271, null
  br i1 %t272, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb65
bb64:
  %t274 = load i1, ptr %l15, !tbaa !21
  store i1 %t274, ptr %l142, !tbaa !21
  br label %bb65
bb65:
  %t276 = load i1, ptr %l142, !tbaa !21
  br i1 %t276, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s5)
  br label %bb119
bb67:
  br label %bb68
bb68:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load i32, ptr %l14, !tbaa !23
  %t281 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t277, i32 %t278)
  store i1 %t281, ptr %l146
  br label %bb69
bb69:
  %t282 = load i1, ptr %l146, !tbaa !21
  br i1 %t282, label %bb70, label %bb71
bb70:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load i64, ptr %l12, !tbaa !24
  %t286 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr i32, ptr %t287, i64 %t284
  %t289 = load i32, ptr %t288, !tbaa !33
  %t292 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t283, i32 %t289)
  store i1 %t292, ptr %l151
  br label %bb72
bb71:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb73
bb72:
  %t293 = load i1, ptr %l151, !tbaa !21
  %t294 = xor i1 %t293, true
  store i1 %t294, ptr %l147, !tbaa !21
  br label %bb73
bb73:
  %t296 = load i1, ptr %l147, !tbaa !21
  br i1 %t296, label %bb74, label %bb75
bb74:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/check:Checker", ptr %t297, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !29
  %t302 = getelementptr %"compiler/generic:Program", ptr %t300, i32 0, i32 2
  store ptr %t302, ptr %l156, !tbaa !29
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i32, ptr %l14, !tbaa !23
  %t307 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t303, i32 %t304)
  store i32 %t307, ptr %l159
  br label %bb76
bb75:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb78
bb76:
  %t308 = load i64, ptr %l12, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr i32, ptr %t311, i64 %t308
  %t313 = load i32, ptr %t312, !tbaa !33
  %t314 = load ptr, ptr %l156, !tbaa !29
  %t315 = load i32, ptr %l159, !tbaa !23
  %t317 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t314, i32 %t315, i32 %t313)
  store i1 %t317, ptr %l162
  br label %bb77
bb77:
  %t318 = load i1, ptr %l162, !tbaa !21
  store i1 %t318, ptr %l153, !tbaa !21
  br label %bb78
bb78:
  %t319 = load i1, ptr %l153, !tbaa !21
  br i1 %t319, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s7
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l163, !tbaa !29
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t322, ptr %l165, !tbaa !27
  %t323 = load i64, ptr %l12, !tbaa !24
  %t325 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr ptr, ptr %t326, i64 %t323
  %t328 = load ptr, ptr %t327, !tbaa !39
  %t331 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v2, ptr %t321, ptr %t328)
  store %"compiler/source:Span" %t331, ptr %l168
  br label %bb81
bb80:
  br label %bb89
bb81:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i64, ptr %l12, !tbaa !24
  %t335 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr i32, ptr %t336, i64 %t333
  %t338 = load i32, ptr %t337, !tbaa !33
  %t341 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t332, i32 %t338)
  store { i64, ptr } %t341, ptr %l172
  br label %bb82
bb82:
  %t342 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  %t344 = extractvalue { i64, ptr } %t342, 1
  %t345 = mul i64 %t343, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t346, ptr %t344, i64 %t345, i1 false)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  store { i64, ptr } %t348, ptr %l173, !tbaa !27
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l14, !tbaa !23
  %t353 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t349, i32 %t350)
  store { i64, ptr } %t353, ptr %l176
  br label %bb83
bb83:
  %t354 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 0
  %t356 = extractvalue { i64, ptr } %t354, 1
  %t357 = mul i64 %t355, 1
  %t358 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t357)
  call void @llvm.memcpy.p0.p0.i64(ptr %t358, ptr %t356, i64 %t357, i1 false)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t358, 1
  store { i64, ptr } %t360, ptr %l177, !tbaa !27
  %t361 = load ptr, ptr %l0, !tbaa !29
  store ptr %t361, ptr %l178, !tbaa !29
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load ptr, ptr %l2, !tbaa !29
  %t366 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %t362, ptr %t363)
  store %"compiler/source:Span" %t366, ptr %l181
  br label %bb84
bb84:
  %t367 = load ptr, ptr %l178, !tbaa !29
  %t368 = load %"compiler/source:Span", ptr %l181
  %t369 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t367, %"compiler/source:Span" %t368)
  store { i64, ptr } %t369, ptr %l182
  br label %bb85
bb85:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load i32, ptr %l14, !tbaa !23
  %t374 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s7, ptr %t370, i32 %t371)
  store { i64, ptr } %t374, ptr %l185
  br label %bb86
bb86:
  %t375 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 0
  %t377 = extractvalue { i64, ptr } %t375, 1
  %t378 = mul i64 %t376, 1
  %t379 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t378)
  call void @llvm.memcpy.p0.p0.i64(ptr %t379, ptr %t377, i64 %t378, i1 false)
  %t380 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t379, 1
  %t382 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t383 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t384 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t386 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultAsRef(ptr %s7, ptr %s7, ptr %v0, ptr %s7, ptr %s7, { i64, ptr } %t382, { i64, ptr } %t383, { i64, ptr } %t384, { i64, ptr } %t381)
  store %"compiler/diagmsg:Msg" %t386, ptr %l187
  br label %bb87
bb87:
  %t387 = load ptr, ptr %l163, !tbaa !29
  %t388 = load %"compiler/source:Span", ptr %l168
  %t389 = load %"compiler/diagmsg:Msg", ptr %l187
  %t390 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s7, ptr %t387, %"compiler/source:Span" %t388, %"compiler/diagmsg:Msg" %t389)
  store i64 %t390, ptr %l188
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  br label %bb119
bb89:
  %t391 = load ptr, ptr %l0, !tbaa !29
  store ptr %t391, ptr %l189, !tbaa !29
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t393, ptr %l191, !tbaa !27
  %t394 = load i64, ptr %l12, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr ptr, ptr %t397, i64 %t394
  %t399 = load ptr, ptr %t398, !tbaa !39
  %t402 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v2, ptr %t392, ptr %t399)
  store %"compiler/source:Span" %t402, ptr %l194
  br label %bb90
bb90:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load i64, ptr %l12, !tbaa !24
  %t406 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !27
  %t408 = getelementptr i32, ptr %t407, i64 %t404
  %t409 = load i32, ptr %t408, !tbaa !33
  %t412 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t403, i32 %t409)
  store { i64, ptr } %t412, ptr %l198
  br label %bb91
bb91:
  %t413 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t414 = extractvalue { i64, ptr } %t413, 0
  %t415 = extractvalue { i64, ptr } %t413, 1
  %t416 = mul i64 %t414, 1
  %t417 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t416)
  call void @llvm.memcpy.p0.p0.i64(ptr %t417, ptr %t415, i64 %t416, i1 false)
  %t418 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t417, 1
  store { i64, ptr } %t419, ptr %l199, !tbaa !27
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l200, !tbaa !29
  %t421 = load ptr, ptr %l4, !tbaa !29
  %t422 = load i64, ptr %l12, !tbaa !24
  %t425 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v3, ptr %v3, ptr %t421, i64 %t422)
  store ptr %t425, ptr %l203
  br label %bb92
bb92:
  %t426 = load ptr, ptr %l203, !tbaa !29
  store ptr %t426, ptr %l16, !tbaa !29
  %t427 = load ptr, ptr %l16, !tbaa !29
  %t429 = icmp eq ptr %t427, null
  br i1 %t429, label %bb93, label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_c0bfe31aa1d2e438_21c7d6b10ea56b94)
  unreachable
bb94:
  br label %bb95
bb95:
  %t431 = load ptr, ptr %l16, !tbaa !29
  %t433 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v3, ptr %t431)
  store i32 %t433, ptr %l207
  br label %bb96
bb96:
  %t434 = load ptr, ptr %l200, !tbaa !29
  %t435 = load i32, ptr %l207, !tbaa !23
  %t436 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t434, i32 %t435)
  store { i64, ptr } %t436, ptr %l208
  br label %bb97
bb97:
  %t437 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 0
  %t439 = extractvalue { i64, ptr } %t437, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t444 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t446 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultType(ptr %s5, ptr %s5, ptr %s5, { i64, ptr } %t444, { i64, ptr } %t443)
  store %"compiler/diagmsg:Msg" %t446, ptr %l210
  br label %bb98
bb98:
  %t447 = load ptr, ptr %l189, !tbaa !29
  %t448 = load %"compiler/source:Span", ptr %l194
  %t449 = load %"compiler/diagmsg:Msg", ptr %l210
  %t450 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t447, %"compiler/source:Span" %t448, %"compiler/diagmsg:Msg" %t449)
  store i64 %t450, ptr %l211
  br label %bb99
bb99:
  %t451 = load i64, ptr %l211, !tbaa !24
  store i64 %t451, ptr %l17, !tbaa !24
  %t452 = load ptr, ptr %l4, !tbaa !29
  %t453 = load i64, ptr %l12, !tbaa !24
  %t456 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v3, ptr %s5, ptr %t452, i64 %t453)
  store ptr %t456, ptr %l214
  br label %bb100
bb100:
  %t457 = load ptr, ptr %l214, !tbaa !29
  store ptr %t457, ptr %l18, !tbaa !29
  %t458 = load ptr, ptr %l18, !tbaa !29
  store ptr %t458, ptr %l215, !tbaa !29
  store i1 false, ptr %l216, !tbaa !21
  %t459 = load ptr, ptr %l215, !tbaa !29
  %t460 = icmp ne ptr %t459, null
  br i1 %t460, label %bb101, label %bb102
bb101:
  %t462 = load ptr, ptr %l215, !tbaa !29
  %t463 = load i64, ptr %t462, !range !{i64 0, i64 8}
  %t465 = icmp eq i64 %t463, 0
  store i1 %t465, ptr %l216, !tbaa !21
  br label %bb102
bb102:
  %t466 = load i1, ptr %l216, !tbaa !21
  br i1 %t466, label %bb103, label %bb104
bb103:
  %t467 = load ptr, ptr %l18, !tbaa !29
  %t469 = getelementptr { i64, [4 x i64] }, ptr %t467, i32 0, i32 1
  %t470 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t469, i32 0, i32 2
  %t471 = load i32, ptr %t470
  store i32 %t471, ptr %l19, !tbaa !23
  br label %bb105
bb104:
  br label %bb113
bb105:
  store %olang.scope zeroinitializer, ptr %s8
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/check:Checker", ptr %t473, i32 0, i32 31
  store ptr %t475, ptr %l222, !tbaa !29
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t476)
  store ptr %t478, ptr %l224
  br label %bb106
bb106:
  %t479 = load ptr, ptr %l224, !tbaa !29
  %t481 = getelementptr %"compiler/check:frame", ptr %t479, i32 0, i32 0
  %t482 = load i64, ptr %t481, !tbaa !24
  %t483 = load i32, ptr %l19, !tbaa !23
  %t485 = sext i32 %t483 to i64
  %t488 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s8, i64 %t482, i64 %t485)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t488, ptr %l229
  br label %bb107
bb107:
  %t489 = load ptr, ptr %l222, !tbaa !29
  %t490 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l229
  %t491 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t489, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t490)
  store i1 %t491, ptr %l230
  br label %bb108
bb108:
  %t492 = load i1, ptr %l230, !tbaa !21
  br i1 %t492, label %bb109, label %bb110
bb109:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load i64, ptr %l17, !tbaa !24
  %t495 = load i32, ptr %l19, !tbaa !23
  %t497 = sext i32 %t495 to i64
  %t498 = load i64, ptr %l12, !tbaa !24
  %t500 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t501 = load ptr, ptr %t500, !tbaa !27
  %t502 = getelementptr i32, ptr %t501, i64 %t498
  %t503 = load i32, ptr %t502, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalNote(ptr %v0, ptr %t493, i64 %t494, i64 %t497, i32 %t503)
  br label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s8)
  br label %bb118
bb113:
  br i1 true, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  br label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_e2bcc3535eb854f4_be0aec47518f8140)
  unreachable
bb118:
  call void @__olang_scope_close(ptr %s5)
  br label %bb119
bb119:
  %t508 = load i64, ptr %l11, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l11, !tbaa !24
  br label %bb34
bb120:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, ptr %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, [3 x i64] }
  %l13 = alloca i32
  %l16 = alloca i64
  %l19 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca i32
  %l41 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i1
  %l60 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l74 = alloca { i64, [3 x i64] }
  %l82 = alloca ptr
  %l88 = alloca i32
  %l90 = alloca i32
  %l92 = alloca i1
  %l93 = alloca ptr
  %l96 = alloca i32
  %l97 = alloca i1
  %l105 = alloca ptr
  %l108 = alloca i1
  %l110 = alloca i1
  %l114 = alloca i64
  %l116 = alloca ptr
  %l118 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l122 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l126 = alloca ptr
  %l130 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca ptr
  %l139 = alloca ptr
  %t178 = alloca { i64, [4 x i64] }, align 8
  %t237 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i32, ptr %l13, !tbaa !23
  store i32 %t4, ptr %l7, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 10
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i64, ptr %l16, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l7, !tbaa !23
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l19
  br label %bb3
bb3:
  %t16 = load i1, ptr %l19, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l7, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l26
  br label %bb6
bb5:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb7
bb6:
  %t29 = load i1, ptr %l26, !tbaa !21
  store i1 %t29, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l21, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 10
  %t34 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %t33, ptr %t34)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = load i32, ptr %l7, !tbaa !23
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t37, ptr %t38, i32 %t40)
  store ptr %t44, ptr %l34
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l34, !tbaa !29
  store ptr %t45, ptr %l9, !tbaa !29
  %t46 = load ptr, ptr %l9, !tbaa !29
  %t49 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t46)
  store i32 %t49, ptr %l37
  br label %bb13
bb13:
  %t50 = load i32, ptr %l37, !tbaa !23
  store i32 %t50, ptr %l10, !tbaa !23
  %t51 = load ptr, ptr %l5, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l7, !tbaa !23
  %t66 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t62, i32 %t63)
  store i1 %t66, ptr %l46
  br label %bb16
bb15:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb17
bb16:
  %t67 = load i1, ptr %l46, !tbaa !21
  store i1 %t67, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t69 = load i32, ptr %l10, !tbaa !23
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t73 = icmp ne i32 %t69, %t70
  store i1 %t73, ptr %l47, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l47, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t76 = load i32, ptr %l10, !tbaa !23
  %t77 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t80 = icmp ne i32 %t76, %t77
  store i1 %t80, ptr %l51, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t82 = load i1, ptr %l51, !tbaa !21
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l10, !tbaa !23
  %t92 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t88, i32 %t89)
  store i1 %t92, ptr %l60
  br label %bb26
bb25:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb27
bb26:
  %t93 = load i1, ptr %l60, !tbaa !21
  %t94 = xor i1 %t93, true
  store i1 %t94, ptr %l55, !tbaa !21
  br label %bb27
bb27:
  %t96 = load i1, ptr %l55, !tbaa !21
  br i1 %t96, label %bb28, label %bb29
bb28:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t97)
  store ptr %t99, ptr %l63
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t100 = load ptr, ptr %l63, !tbaa !29
  store ptr %t100, ptr %l64, !tbaa !29
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t103 = call { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v3, ptr %v0, ptr %t101)
  store { i64, ptr } %t103, ptr %l66
  br label %bb31
bb31:
  %t104 = load ptr, ptr %l64, !tbaa !29
  %t105 = getelementptr %"compiler/check:frame", ptr %t104, i32 0, i32 48
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l67, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t108 = load ptr, ptr %l64, !tbaa !29
  %t109 = getelementptr %"compiler/check:frame", ptr %t108, i32 0, i32 48
  store { i64, ptr } %t107, ptr %t109, !tbaa !27
  %t110 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e48
  br i1 %t110, label %bb32, label %bb33
bb32:
  %t112 = load { i64, ptr }, ptr %l67
  %t113 = extractvalue { i64, ptr } %t112, 1
  call void @__olang_region_release(ptr %t113)
  store { i64, ptr } zeroinitializer, ptr %l67
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 13
  %t117 = load { i64, [3 x i64] }, ptr %t116
  store { i64, [3 x i64] } %t117, ptr %l11
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l71, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t124 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v1, ptr %t120, ptr %t121)
  store { i64, [3 x i64] } %t124, ptr %l74
  br label %bb35
bb35:
  %t125 = load { i64, [3 x i64] }, ptr %l74
  %t126 = load ptr, ptr %l71, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 13
  store { i64, [3 x i64] } %t125, ptr %t127
  %t128 = load i32, ptr %l7, !tbaa !23
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t132 = icmp ne i32 %t128, %t129
  br i1 %t132, label %bb36, label %bb37
bb36:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l9, !tbaa !29
  %t136 = load i32, ptr %l7, !tbaa !23
  %t142 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t134, ptr %t135, i32 %t136, %"compiler/source:Span" %a4)
  store ptr %t142, ptr %l82
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t143 = load ptr, ptr %l82, !tbaa !29
  store ptr %t143, ptr %l9, !tbaa !29
  br label %bb39
bb39:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load { i64, [3 x i64] }, ptr %l11
  %t148 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 13
  store { i64, [3 x i64] } %t145, ptr %t148
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 10
  %t152 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eTrun_Haa7c8ccc08c8123d0b87c9688e5d351e(ptr %v0, ptr %t151, i64 %t152)
  br label %bb40
bb40:
  %t155 = load i32, ptr %l7, !tbaa !23
  store i32 %t155, ptr %l88, !tbaa !23
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t156)
  store i32 %t158, ptr %l90
  br label %bb41
bb41:
  %t159 = load i32, ptr %l88, !tbaa !23
  %t160 = load i32, ptr %l90, !tbaa !23
  %t161 = icmp eq i32 %t159, %t160
  br i1 %t161, label %bb42, label %bb43
bb42:
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l93, !tbaa !29
  %t164 = load ptr, ptr %l9, !tbaa !29
  %t167 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t164)
  store i32 %t167, ptr %l96
  br label %bb44
bb43:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb46
bb44:
  %t168 = load ptr, ptr %l93, !tbaa !29
  %t169 = load i32, ptr %l96, !tbaa !23
  %t170 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t168, i32 %t169)
  store i1 %t170, ptr %l97
  br label %bb45
bb45:
  %t171 = load i1, ptr %l97, !tbaa !21
  store i1 %t171, ptr %l92, !tbaa !21
  br label %bb46
bb46:
  %t172 = load i1, ptr %l92, !tbaa !21
  br i1 %t172, label %bb47, label %bb48
bb47:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load %"compiler/source:Span", ptr %l1
  %t175 = load %"compiler/source:Span", ptr %l1
  %t176 = load i32, ptr %l7, !tbaa !23
  %t177 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 0
  store i64 2, ptr %t179
  %t181 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t175, 0
  %t183 = insertvalue { %"compiler/source:Span", i32, ptr } %t181, i32 %t176, 1
  %t185 = insertvalue { %"compiler/source:Span", i32, ptr } %t183, ptr %t177, 2
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t185, ptr %t186
  %t187 = load { i64, [4 x i64] }, ptr %t178
  %t189 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t187, ptr %t189
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t173, %"compiler/source:Span" %t174, ptr %t189)
  store ptr %t193, ptr %l105
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t194 = load ptr, ptr %l105, !tbaa !29
  store ptr %t194, ptr %l9, !tbaa !29
  br label %bb50
bb50:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l7, !tbaa !23
  %t199 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t195, i32 %t196)
  store i1 %t199, ptr %l108
  br label %bb51
bb51:
  %t200 = load i1, ptr %l108, !tbaa !21
  %t201 = xor i1 %t200, true
  br i1 %t201, label %bb52, label %bb53
bb52:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l2, !tbaa !29
  %t208 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %t203, ptr %t204)
  store i64 %t208, ptr %l114
  br label %bb54
bb53:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb55
bb54:
  %t209 = load i64, ptr %l114, !tbaa !24
  %t210 = icmp slt i64 %t209, 0
  store i1 %t210, ptr %l110, !tbaa !21
  br label %bb55
bb55:
  %t212 = load i1, ptr %l110, !tbaa !21
  br i1 %t212, label %bb56, label %bb57
bb56:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l116, !tbaa !29
  %t214 = load ptr, ptr %l9, !tbaa !29
  store ptr %t214, ptr %l118, !tbaa !29
  %t216 = load ptr, ptr %l3, !tbaa !29
  %t218 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t216)
  store %"compiler/source:Span" %t218, ptr %l120
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t219 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t220 = load ptr, ptr %l116, !tbaa !29
  %t221 = load ptr, ptr %l118, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l120
  %t224 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t220, ptr %t221, %"compiler/source:Span" %t222, i64 %t219)
  store i1 %t224, ptr %l122
  br label %bb59
bb59:
  br label %bb60
bb60:
  br i1 %a6, label %bb61, label %bb62
bb61:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l124, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t228, ptr %l125
  %t229 = load ptr, ptr %l2, !tbaa !29
  store ptr %t229, ptr %l126, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load ptr, ptr %l2, !tbaa !29
  %t232 = load ptr, ptr %l9, !tbaa !29
  %t236 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %t230, ptr %t231, ptr %t232)
  store ptr %t236, ptr %l130
  br label %bb63
bb62:
  br label %bb65
bb63:
  store { i64, [3 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [3 x i64] }, ptr %t237, i32 0, i32 0
  store i64 1, ptr %t238
  %t239 = load %"compiler/source:Span", ptr %l125
  %t240 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t239, 0
  %t241 = load ptr, ptr %l126, !tbaa !29
  %t242 = insertvalue { %"compiler/source:Span", ptr, ptr } %t240, ptr %t241, 1
  %t243 = load ptr, ptr %l130, !tbaa !29
  %t244 = insertvalue { %"compiler/source:Span", ptr, ptr } %t242, ptr %t243, 2
  %t245 = getelementptr { i64, [3 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t244, ptr %t245
  %t246 = load { i64, [3 x i64] }, ptr %t237
  %t248 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t246, ptr %t248
  %t249 = load ptr, ptr %l124, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t249, ptr %t248)
  br label %bb64
bb64:
  br label %ret
bb65:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l133, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t252, ptr %l134
  %t253 = load ptr, ptr %l2, !tbaa !29
  store ptr %t253, ptr %l135, !tbaa !29
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l2, !tbaa !29
  %t256 = load ptr, ptr %l9, !tbaa !29
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %t254, ptr %t255, ptr %t256)
  store ptr %t260, ptr %l139
  br label %bb66
bb66:
  %t261 = load ptr, ptr %l133, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l134
  %t263 = load ptr, ptr %l135, !tbaa !29
  %t264 = load ptr, ptr %l139, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreOver(ptr %v0, ptr %v1, ptr %v0, ptr %t261, %"compiler/source:Span" %t262, ptr %t263, ptr %t264)
  br label %bb67
bb67:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoredName(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i1
  %rv = alloca i1
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
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t18, ptr %l10
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l10, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 43
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l14
  br label %bb7
bb7:
  %t26 = load i1, ptr %l14, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 true, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_7b4736b243041b5b_1a65dd25b2a3adef)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etailSets(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:tailAsk"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/source:Span"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"compiler/check:tailAsk"
  %l28 = alloca i32
  %l31 = alloca i32
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l66 = alloca i64
  %l69 = alloca i64
  %l90 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca i1
  %l103 = alloca %"compiler/source:Span"
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l110 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 110
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l18, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2eLen_3ccompiler_2fcheck_3atailAsk_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l20
  br label %bb2
bb2:
  %t9 = load i64, ptr %l18, !tbaa !24
  %t10 = load i64, ptr %l20, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/check:tailAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2eAt_3ccompiler_2fcheck_3atailAsk_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/check:tailAsk" %t19, ptr %l25
  br label %bb6
bb6:
  %t20 = load %"compiler/check:tailAsk", ptr %l25
  store %"compiler/check:tailAsk" %t20, ptr %l3
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:tailAsk", ptr %l3, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t21, i64 %t23)
  store i32 %t26, ptr %l28
  br label %bb7
bb7:
  %t27 = load i32, ptr %l28, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:tailAsk", ptr %l3, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t28, i64 %t30)
  store i32 %t33, ptr %l31
  br label %bb8
bb8:
  %t34 = load i32, ptr %l31, !tbaa !23
  store i32 %t34, ptr %l5, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:tailAsk", ptr %l3, i32 0, i32 3
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t35, i64 -1, i64 %t37, i32 %t38, i32 0)
  store ptr %t42, ptr %l35
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t43)
  store ptr %t45, ptr %l37
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l37, !tbaa !29
  store ptr %t46, ptr %l38, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 14
  %t50 = getelementptr %"compiler/check:tailAsk", ptr %l3, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t54 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t49, i64 %t51)
  store ptr %t54, ptr %l42
  br label %bb11
bb11:
  %t55 = load ptr, ptr %l42, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Body", ptr %t55, i32 0, i32 3
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = load ptr, ptr %l38, !tbaa !29
  %t61 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 2
  store i64 %t58, ptr %t61, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l4, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t67, i32 %t68)
  store { i64, ptr } %t71, ptr %l49
  br label %bb12
bb12:
  %t72 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t72, ptr %l6, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l5, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l54
  br label %bb13
bb13:
  %t83 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t83, ptr %l7, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t92 = icmp eq i64 %t86, %t89
  store i1 %t92, ptr %l8, !tbaa !21
  %t94 = load i1, ptr %l8, !tbaa !21
  br i1 %t94, label %bb14, label %bb15
bb14:
  store i64 0, ptr %l9, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  store i64 %t98, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t100 = load i64, ptr %l10, !tbaa !24
  %t101 = load i64, ptr %l9, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb16, label %bb17
bb15:
  br label %bb32
bb16:
  %t106 = load i64, ptr %l11, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb21
bb18:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l11, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l69, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb20
bb20:
  %t126 = load i64, ptr %l69, !tbaa !24
  store i64 %t126, ptr %l66, !tbaa !24
  br label %bb21
bb21:
  %t127 = load i64, ptr %l66, !tbaa !24
  store i64 %t127, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  %t128 = load i64, ptr %l13, !tbaa !24
  %t129 = load i64, ptr %l12, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  br label %bb25
bb25:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t138 = load i64, ptr %l11, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l14, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t152, ptr %l90, !tbaa !27
  %t153 = load i64, ptr %l14, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t159 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t159, ptr %l93, !tbaa !27
  %t160 = load i64, ptr %l14, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i32, ptr %t163, i64 %t160
  %t165 = load i32, ptr %t164, !tbaa !33
  %t169 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t151, i32 %t158, i32 %t165)
  store i1 %t169, ptr %l96
  br label %bb26
bb26:
  %t170 = load i1, ptr %l96, !tbaa !21
  %t171 = xor i1 %t170, true
  br i1 %t171, label %bb27, label %bb28
bb27:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l13, !tbaa !24
  br label %bb22
bb31:
  br label %bb32
bb32:
  %t177 = getelementptr %"compiler/check:tailAsk", ptr %l3, i32 0, i32 2
  %t178 = getelementptr %"compiler/source:Span", ptr %t177, i32 0, i32 0
  %t179 = load i32, ptr %t178, !tbaa !23
  %t180 = getelementptr %"compiler/check:tailAsk", ptr %l3, i32 0, i32 2
  %t181 = getelementptr %"compiler/source:Span", ptr %t180, i32 0, i32 0
  %t182 = load i32, ptr %t181, !tbaa !23
  %t184 = add i32 %t182, 6
  %t187 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t179, i32 %t184)
  store %"compiler/source:Span" %t187, ptr %l103
  br label %bb33
bb33:
  %t188 = load %"compiler/source:Span", ptr %l103
  store %"compiler/source:Span" %t188, ptr %l15
  %t189 = load i1, ptr %l8, !tbaa !21
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l106, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t194, ptr %l107
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l4, !tbaa !23
  %t199 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %s8, ptr %t195, i32 %t196)
  store { i64, ptr } %t199, ptr %l110
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t200 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l111, !tbaa !27
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l5, !tbaa !23
  %t211 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %s8, ptr %t207, i32 %t208)
  store { i64, ptr } %t211, ptr %l114
  br label %bb37
bb37:
  %t212 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  %t214 = extractvalue { i64, ptr } %t212, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t219 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t221 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeErrors(ptr %s8, ptr %s8, ptr %s8, { i64, ptr } %t219, { i64, ptr } %t218)
  store %"compiler/diagmsg:Msg" %t221, ptr %l116
  br label %bb38
bb38:
  %t222 = load ptr, ptr %l106, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l107
  %t224 = load %"compiler/diagmsg:Msg", ptr %l116
  %t225 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s8, ptr %t222, %"compiler/source:Span" %t223, %"compiler/diagmsg:Msg" %t224)
  store i64 %t225, ptr %l117
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s8)
  br label %bb40
bb40:
  %t226 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t226)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t228 = load i64, ptr %l2, !tbaa !24
  %t230 = add i64 %t228, 1
  store i64 %t230, ptr %l2, !tbaa !24
  br label %bb1
bb43:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i32, ptr %l5, !tbaa !23
  store i32 %t5, ptr %l2, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load i1, ptr %l8, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i32, ptr %l2, !tbaa !23
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = icmp ne i32 %t14, %t15
  store i1 %t18, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l10, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l18
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i1, ptr %l18, !tbaa !21
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v1, ptr %t31)
  store i1 %t33, ptr %l21
  br label %bb12
bb11:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb13
bb12:
  %t34 = load i1, ptr %l21, !tbaa !21
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t35 = load i1, ptr %l19, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueWalk(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l8 = alloca i1
  %l13 = alloca i64
  %l21 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i1
  %l41 = alloca i1
  %l44 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l53 = alloca i64
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyUnique(ptr %v0, ptr %t6)
  store i1 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i1, ptr %l8, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t13, i32 %t14, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, i64 1)
  store i64 %t17, ptr %l13
  br label %bb5
bb5:
  %t18 = load i64, ptr %l13, !tbaa !24
  store i64 %t18, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp slt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t27, i64 %t28, i32 %t29)
  store i32 %t33, ptr %l21
  br label %bb9
bb9:
  %t34 = load i32, ptr %l21, !tbaa !23
  store i32 %t34, ptr %l3, !tbaa !23
  %t35 = load i32, ptr %l3, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t39 = icmp eq i32 %t35, %t36
  br i1 %t39, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l3, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l30
  br label %bb13
bb13:
  %t52 = load i32, ptr %l30, !tbaa !23
  store i32 %t52, ptr %l4, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l4, !tbaa !23
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l33
  br label %bb14
bb14:
  %t58 = load i1, ptr %l33, !tbaa !21
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  store ptr %t62, ptr %l36, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l4, !tbaa !23
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l39
  br label %bb17
bb16:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb19
bb17:
  %t68 = load ptr, ptr %l36, !tbaa !29
  %t69 = load i32, ptr %l39, !tbaa !23
  %t70 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t68, i32 %t69)
  store i1 %t70, ptr %l40
  br label %bb18
bb18:
  %t71 = load i1, ptr %l40, !tbaa !21
  store i1 %t71, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l34, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  store ptr %t78, ptr %l44, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l3, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t88, ptr %l49
  br label %bb22
bb21:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb24
bb22:
  %t89 = load ptr, ptr %l44, !tbaa !29
  %t90 = load i32, ptr %l49, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t89, i32 %t90)
  store { i64, ptr } %t91, ptr %l50
  br label %bb23
bb23:
  %t92 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  %t95 = icmp eq i64 %t93, 0
  store i1 %t95, ptr %l41, !tbaa !21
  br label %bb24
bb24:
  %t97 = load i1, ptr %l41, !tbaa !21
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t98 = load i64, ptr %l2, !tbaa !24
  store i64 %t98, ptr %l53, !tbaa !24
  br label %bb27
bb26:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t100 = load i64, ptr %l53, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakRow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/check:weakPlace" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:weakPlace"
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, [3 x i64] }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i32
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l31 = alloca i1
  %l33 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/check:weakPlace" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t6 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 2
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = trunc i64 %t7 to i32
  %t13 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t5, i32 %t9)
  store i32 %t13, ptr %l15
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load i32, ptr %l15, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t14, i32 %t15)
  store { i64, ptr } %t16, ptr %l16
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 6
  %t24 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 2
  %t25 = load i64, ptr %t24, !tbaa !24
  %t28 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %s0, ptr %t23, i64 %t25)
  %t29 = extractvalue { i32, { i64, ptr } } %t28, 1
  %t30 = extractvalue { i32, { i64, ptr } } %t28, 0
  store i32 %t30, ptr %l23
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb4, label %ok.32, !prof !99
ok.32:
  store { i64, ptr } %t29, ptr %l22
  br label %bb3
bb3:
  %t33 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t46, ptr %l17, !tbaa !27
  br label %bb6
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t47, ptr %l17, !tbaa !27
  br label %bb6
bb6:
  %t49 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l28, !tbaa !24
  %t51 = load i64, ptr %l28, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l29, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l28, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t62, ptr %l3, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t65 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t63, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t65, ptr %l31
  br label %bb7
bb7:
  %t66 = load i1, ptr %l31, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb8, label %bb9
bb8:
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t73 = extractvalue { i64, ptr } %t69, 1
  %t74 = extractvalue { i64, ptr } %t69, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t70, i64 %t71)
  %t80 = getelementptr i8, ptr %t79, i64 %t71
  call void @olang_textcopy(ptr %t80, ptr %t73, i64 %t74)
  %t81 = getelementptr i8, ptr %t80, i64 %t74
  call void @olang_textcopy(ptr %t81, ptr %t76, i64 %t77)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t79, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l33, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb10
bb10:
  %t92 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t92, ptr %l4, !tbaa !27
  %t93 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 0
  %t94 = load { i64, [3 x i64] }, ptr %t93
  store { i64, [3 x i64] } %t94, ptr %l5
  %t96 = load { i64, [3 x i64] }, ptr %l5
  %t98 = extractvalue { i64, [3 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 3
  br i1 %t99, label %bb11, label %bb12
bb11:
  %t101 = getelementptr { i64, [3 x i64] }, ptr %l5, i32 0, i32 1
  %t102 = getelementptr { i64, i64, i64 }, ptr %t101, i32 0, i32 0
  %t103 = load i64, ptr %t102
  store i64 %t103, ptr %l6, !tbaa !24
  %t105 = getelementptr { i64, [3 x i64] }, ptr %l5, i32 0, i32 1
  %t106 = getelementptr { i64, i64, i64 }, ptr %t105, i32 0, i32 1
  %t107 = load i64, ptr %t106
  store i64 %t107, ptr %l7, !tbaa !24
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 4
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i64, ptr %l6, !tbaa !24
  %t120 = load i64, ptr %l7, !tbaa !24
  %t124 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s0, ptr %t118, i64 %t119, i64 %t120)
  store { i64, ptr } %t124, ptr %l49
  br label %bb14
bb14:
  %t125 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t125, ptr %l38, !tbaa !27
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t126, ptr %l38, !tbaa !27
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_e30e75934041bac1_8633653d6080ffc5)
  unreachable
bb20:
  %t128 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  store i64 %t129, ptr %l52, !tbaa !24
  %t130 = load i64, ptr %l52, !tbaa !24
  %t131 = mul i64 %t130, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t131)
  %t133 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  store { i64, ptr } %t134, ptr %l53, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = load i64, ptr %l52, !tbaa !24
  %t140 = mul i64 %t139, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t136, ptr %t138, i64 %t140, i1 false)
  %t141 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t143 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t147 = getelementptr %"compiler/check:weakPlace", ptr %l1, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t141, 1
  %t151 = extractvalue { i64, ptr } %t141, 0
  %t152 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t156 = extractvalue { i64, ptr } %t144, 1
  %t157 = extractvalue { i64, ptr } %t144, 0
  %t158 = add i64 %t154, %t157
  %t159 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t163 = extractvalue { i64, ptr } %t145, 1
  %t164 = extractvalue { i64, ptr } %t145, 0
  %t165 = add i64 %t161, %t164
  %t166 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t167 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t168 = add i64 %t165, %t167
  %t170 = extractvalue { i64, ptr } %t146, 1
  %t171 = extractvalue { i64, ptr } %t146, 0
  %t172 = add i64 %t168, %t171
  %t173 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t177 = extractvalue { i64, ptr } %t148, 1
  %t178 = extractvalue { i64, ptr } %t148, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t150, i64 %t151)
  %t184 = getelementptr i8, ptr %t183, i64 %t151
  call void @olang_textcopy(ptr %t184, ptr %t152, i64 %t153)
  %t185 = getelementptr i8, ptr %t184, i64 %t153
  call void @olang_textcopy(ptr %t185, ptr %t156, i64 %t157)
  %t186 = getelementptr i8, ptr %t185, i64 %t157
  call void @olang_textcopy(ptr %t186, ptr %t159, i64 %t160)
  %t187 = getelementptr i8, ptr %t186, i64 %t160
  call void @olang_textcopy(ptr %t187, ptr %t163, i64 %t164)
  %t188 = getelementptr i8, ptr %t187, i64 %t164
  call void @olang_textcopy(ptr %t188, ptr %t166, i64 %t167)
  %t189 = getelementptr i8, ptr %t188, i64 %t167
  call void @olang_textcopy(ptr %t189, ptr %t170, i64 %t171)
  %t190 = getelementptr i8, ptr %t189, i64 %t171
  call void @olang_textcopy(ptr %t190, ptr %t173, i64 %t174)
  %t191 = getelementptr i8, ptr %t190, i64 %t174
  call void @olang_textcopy(ptr %t191, ptr %t177, i64 %t178)
  %t192 = getelementptr i8, ptr %t191, i64 %t178
  call void @olang_textcopy(ptr %t192, ptr %t180, i64 %t181)
  %t193 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t183, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t194, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2erecordBody(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l55 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i1
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca i64
  %l84 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:StructBody", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Sig", ptr %t12, i32 0, i32 2
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb6
bb3:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb5
bb4:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Sig", ptr %t17, i32 0, i32 5
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l18, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l18, !tbaa !21
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t28, ptr %l24, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l25, !tbaa !24
  %t31 = load i64, ptr %l25, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l26, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l25, !tbaa !24
  %t41 = mul i64 %t40, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %t39, i64 %t41, i1 false)
  %t42 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t42, ptr %l24, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store i64 0, ptr %l2, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/ast:StructBody", ptr %t44, i32 0, i32 2
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb11, label %bb12
bb11:
  br label %bb32
bb12:
  br label %bb13
bb13:
  %t61 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t61, ptr %l35, !tbaa !27
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  store ptr %t67, ptr %l6, !tbaa !29
  %t69 = load ptr, ptr %l6, !tbaa !29
  store ptr %t69, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t70 = load ptr, ptr %l38, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 22}
  %t76 = icmp eq i64 %t74, 1
  store i1 %t76, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t77 = load i1, ptr %l39, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l43, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t80, ptr %l44, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  store i64 %t82, ptr %l45, !tbaa !24
  %t83 = load i64, ptr %l45, !tbaa !24
  %t84 = mul i64 %t83, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t84)
  %t86 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  store { i64, ptr } %t87, ptr %l46, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l45, !tbaa !24
  %t93 = mul i64 %t92, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t89, ptr %t91, i64 %t93, i1 false)
  %t94 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t94, ptr %l44, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t95, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t96 = load ptr, ptr %l6, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr }, ptr %t98, i32 0, i32 0
  %t100 = load %"compiler/source:Span", ptr %t99
  store %"compiler/source:Span" %t100, ptr %l7
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr }, ptr %t104, i32 0, i32 1
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l9, !tbaa !29
  %t110 = load ptr, ptr %l9, !tbaa !29
  %t112 = getelementptr %"compiler/ast:VarDecl", ptr %t110, i32 0, i32 5
  %t113 = load i1, ptr %t112, !tbaa !21
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb21
bb20:
  %t117 = load ptr, ptr %l9, !tbaa !29
  %t119 = getelementptr %"compiler/ast:VarDecl", ptr %t117, i32 0, i32 2
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = icmp eq ptr %t120, null
  %t124 = xor i1 %t122, true
  store i1 %t124, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t126 = load i1, ptr %l55, !tbaa !21
  br i1 %t126, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb24
bb23:
  %t127 = load ptr, ptr %l9, !tbaa !29
  %t129 = getelementptr %"compiler/ast:VarDecl", ptr %t127, i32 0, i32 3
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t134 = icmp sgt i64 %t132, 0
  store i1 %t134, ptr %l60, !tbaa !21
  br label %bb24
bb24:
  %t136 = load i1, ptr %l60, !tbaa !21
  br i1 %t136, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb27
bb26:
  %t137 = load ptr, ptr %l9, !tbaa !29
  %t139 = getelementptr %"compiler/ast:VarDecl", ptr %t137, i32 0, i32 4
  %t140 = load i1, ptr %t139, !tbaa !21
  store i1 %t140, ptr %l65, !tbaa !21
  br label %bb27
bb27:
  %t142 = load i1, ptr %l65, !tbaa !21
  br i1 %t142, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t143, ptr %l69, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l70, !tbaa !24
  %t146 = load i64, ptr %l70, !tbaa !24
  %t147 = mul i64 %t146, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l71, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l70, !tbaa !24
  %t156 = mul i64 %t155, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t152, ptr %t154, i64 %t156, i1 false)
  %t157 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t157, ptr %l69, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t158, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t159 = load i64, ptr %l2, !tbaa !24
  %t160 = load ptr, ptr %l9, !tbaa !29
  %t162 = getelementptr %"compiler/ast:VarDecl", ptr %t160, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t168 = add i64 %t159, %t165
  store i64 %t168, ptr %l2, !tbaa !24
  br label %bb31
bb31:
  %t170 = load i64, ptr %l4, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l4, !tbaa !24
  br label %bb10
bb32:
  %t174 = load i64, ptr %l2, !tbaa !24
  %t176 = icmp eq i64 %t174, 0
  br i1 %t176, label %bb33, label %bb34
bb33:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l81, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t178, ptr %l82, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l83, !tbaa !24
  %t181 = load i64, ptr %l83, !tbaa !24
  %t182 = mul i64 %t181, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t182)
  %t184 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  store { i64, ptr } %t185, ptr %l84, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = load i64, ptr %l83, !tbaa !24
  %t191 = mul i64 %t190, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t187, ptr %t189, i64 %t191, i1 false)
  %t192 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t192, ptr %l82, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t193, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t194 = load i64, ptr %l2, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/ast:StructBody", ptr %t195, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t203 = icmp ne i64 %t194, %t200
  br i1 %t203, label %bb36, label %bb37
bb36:
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l90, !tbaa !27
  %t205 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t205, ptr %l91, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  store i64 %t207, ptr %l92, !tbaa !24
  %t208 = load i64, ptr %l92, !tbaa !24
  %t209 = mul i64 %t208, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t209)
  %t211 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  store { i64, ptr } %t212, ptr %l93, !tbaa !27
  %t213 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = load i64, ptr %l92, !tbaa !24
  %t218 = mul i64 %t217, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t214, ptr %t216, i64 %t218, i1 false)
  %t219 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t219, ptr %l91, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t220, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t221, ptr %l95, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  store i64 %t223, ptr %l96, !tbaa !24
  %t224 = load i64, ptr %l96, !tbaa !24
  %t225 = mul i64 %t224, 1
  %t226 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t225)
  %t227 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t226, 1
  store { i64, ptr } %t228, ptr %l97, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l96, !tbaa !24
  %t234 = mul i64 %t233, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t230, ptr %t232, i64 %t234, i1 false)
  %t235 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t235, ptr %l95, !tbaa !27
  %t236 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t236, ptr %rv
  br label %ret
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
  %t3 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v0, i1 false, i64 0, i64 0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, i32 %t1)
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

define dso_local i64 @compiler_2fcheck_2ewordAt(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l57 = alloca i1
  %l58 = alloca i1
  %l59 = alloca { i64, ptr }
  %l63 = alloca i1
  %l65 = alloca i1
  %l66 = alloca { i64, ptr }
  %l70 = alloca i1
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca i1
  %l97 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l13, !tbaa !27
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp ne i8 %t17, 123
  store i1 %t19, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l12, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t24, 1
  store i64 %t26, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp slt i64 %t28, %t31
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t36, ptr %l25, !tbaa !27
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i8, ptr %t40, i64 %t37
  %t42 = load i8, ptr %t41, !tbaa !32
  %t44 = icmp ne i8 %t42, 125
  store i1 %t44, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t46 = load i1, ptr %l24, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  br label %bb68
bb15:
  br label %bb16
bb16:
  %t49 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t49, ptr %l30, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i8, ptr %t53, i64 %t50
  %t55 = load i8, ptr %t54, !tbaa !32
  %t57 = icmp eq i8 %t55, 35
  br i1 %t57, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb28
bb19:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t65 = icmp slt i64 %t59, %t62
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l39, !tbaa !27
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i8, ptr %t71, i64 %t68
  %t73 = load i8, ptr %t72, !tbaa !32
  %t75 = icmp ne i8 %t73, 10
  store i1 %t75, ptr %l38, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb22
bb22:
  %t77 = load i1, ptr %l38, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l4, !tbaa !24
  br label %bb26
bb26:
  br label %bb19
bb27:
  br label %bb67
bb28:
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t84, ptr %l46, !tbaa !27
  %t85 = load i64, ptr %l4, !tbaa !24
  store i64 %t85, ptr %l47, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t86, 0
  store i64 %t89, ptr %l50, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l51, !tbaa !24
  %t92 = load i64, ptr %l47, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t95 = load i64, ptr %l47, !tbaa !24
  %t96 = load i64, ptr %l50, !tbaa !24
  %t97 = icmp sle i64 %t95, %t96
  br i1 %t97, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_66d223ad553101b7_96dec8e341e5a1bb)
  unreachable
bb31:
  %t99 = load i64, ptr %l50, !tbaa !24
  %t100 = load i64, ptr %l51, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_66d223ad553101b7_96dec8e341e5a1bb)
  unreachable
bb33:
  %t103 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l47, !tbaa !24
  %t106 = load i64, ptr %l50, !tbaa !24
  %t107 = getelementptr i8, ptr %t104, i64 %t105
  %t108 = sub i64 %t106, %t105
  %t109 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t107, 1
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t114 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %t110, { i64, ptr } %t111)
  store i1 %t114, ptr %l57
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_66d223ad553101b7_96dec8e341e5a1bb)
  unreachable
bb35:
  %t115 = load i1, ptr %l57, !tbaa !21
  br i1 %t115, label %bb36, label %bb37
bb36:
  %t116 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t116, ptr %l59, !tbaa !27
  %t117 = load i64, ptr %l4, !tbaa !24
  %t119 = sub i64 %t117, 1
  %t121 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i8, ptr %t122, i64 %t119
  %t124 = load i8, ptr %t123, !tbaa !32
  %t126 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t124)
  store i1 %t126, ptr %l63
  br label %bb38
bb37:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb39
bb38:
  %t127 = load i1, ptr %l63, !tbaa !21
  %t128 = xor i1 %t127, true
  store i1 %t128, ptr %l58, !tbaa !21
  br label %bb39
bb39:
  %t130 = load i1, ptr %l58, !tbaa !21
  br i1 %t130, label %bb40, label %bb41
bb40:
  %t131 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t131, ptr %l66, !tbaa !27
  %t132 = load i64, ptr %l4, !tbaa !24
  %t134 = sub i64 %t132, 1
  %t136 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t139)
  store i1 %t141, ptr %l70
  br label %bb42
bb41:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb43
bb42:
  %t142 = load i1, ptr %l70, !tbaa !21
  %t143 = xor i1 %t142, true
  store i1 %t143, ptr %l65, !tbaa !21
  br label %bb43
bb43:
  %t145 = load i1, ptr %l65, !tbaa !21
  br i1 %t145, label %bb44, label %bb45
bb44:
  %t146 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t146, ptr %l73, !tbaa !27
  %t147 = load i64, ptr %l4, !tbaa !24
  %t149 = sub i64 %t147, 1
  %t151 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i8, ptr %t152, i64 %t149
  %t154 = load i8, ptr %t153, !tbaa !32
  %t156 = icmp ne i8 %t154, 95
  store i1 %t156, ptr %l72, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb46
bb46:
  %t158 = load i1, ptr %l72, !tbaa !21
  br i1 %t158, label %bb47, label %bb48
bb47:
  %t159 = load i64, ptr %l4, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t165 = add i64 %t159, %t162
  store i64 %t165, ptr %l6, !tbaa !24
  %t167 = load i64, ptr %l6, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t173 = icmp sge i64 %t167, %t170
  br i1 %t173, label %bb49, label %bb50
bb48:
  br label %bb66
bb49:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb59
bb50:
  %t175 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t175, ptr %l87, !tbaa !27
  %t176 = load i64, ptr %l6, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i8, ptr %t179, i64 %t176
  %t181 = load i8, ptr %t180, !tbaa !32
  %t183 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t181)
  store i1 %t183, ptr %l90
  br label %bb51
bb51:
  %t184 = load i1, ptr %l90, !tbaa !21
  br i1 %t184, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb55
bb53:
  %t185 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t185, ptr %l92, !tbaa !27
  %t186 = load i64, ptr %l6, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i8, ptr %t189, i64 %t186
  %t191 = load i8, ptr %t190, !tbaa !32
  %t193 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t191)
  store i1 %t193, ptr %l95
  br label %bb54
bb54:
  %t194 = load i1, ptr %l95, !tbaa !21
  store i1 %t194, ptr %l91, !tbaa !21
  br label %bb55
bb55:
  %t195 = load i1, ptr %l91, !tbaa !21
  br i1 %t195, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb58
bb57:
  %t196 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t196, ptr %l97, !tbaa !27
  %t197 = load i64, ptr %l6, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i8, ptr %t200, i64 %t197
  %t202 = load i8, ptr %t201, !tbaa !32
  %t204 = icmp eq i8 %t202, 95
  store i1 %t204, ptr %l96, !tbaa !21
  br label %bb58
bb58:
  %t206 = load i1, ptr %l96, !tbaa !21
  %t207 = xor i1 %t206, true
  store i1 %t207, ptr %l86, !tbaa !21
  br label %bb59
bb59:
  %t209 = load i1, ptr %l86, !tbaa !21
  br i1 %t209, label %bb60, label %bb61
bb60:
  %t210 = load i64, ptr %l5, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l5, !tbaa !24
  %t214 = load i64, ptr %l5, !tbaa !24
  %t218 = icmp eq i64 %t214, %a3
  br i1 %t218, label %bb62, label %bb63
bb61:
  br label %bb65
bb62:
  %t220 = load i64, ptr %l4, !tbaa !24
  store i64 %t220, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t222 = load i64, ptr %l4, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l4, !tbaa !24
  br label %bb67
bb67:
  br label %bb10
bb68:
  %t226 = load i64, ptr %l1, !tbaa !24
  store i64 %t226, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/check:tailAsk" @compiler_2fcheck_3atailAsk_2ector(ptr %v0, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:tailAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:tailAsk" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/check:tailAsk" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/check:tailAsk" %t12, %"compiler/source:Span" %a2, 2
  %t16 = insertvalue %"compiler/check:tailAsk" %t14, i64 %a3, 3
  store %"compiler/check:tailAsk" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:tailAsk", ptr %rv
  ret %"compiler/check:tailAsk" %rr
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@__olang_empty_array = external constant [16 x i64]
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
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
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
define linkonce_odr %"compiler/check:setAt" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcheck_3asetAt(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/check:setAt"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/check:setAt"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/check:setAt", ptr %a0
  store %"compiler/check:setAt" %t2, ptr %l1
  %t3 = getelementptr %"compiler/check:setAt", ptr %l1, i32 0, i32 3
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
  %t19 = getelementptr %"compiler/check:setAt", ptr %l1, i32 0, i32 3
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/check:setAt", ptr %l1
  store %"compiler/check:setAt" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:setAt", ptr %rv
  ret %"compiler/check:setAt" %rr
}

@olang_2esole_2ecompiler_2fgeneric_3aProgram_2e8 = weak hidden constant i1 false
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

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcheck_3aframe_2e48 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Ref" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" - " }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" -" }>, align 8
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
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c": memory: " }>, align 8
@.d11 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" is weak: a " }>, align 8
@.d12 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c" is held by its owning places" }>, align 8
@.d13 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c" and kept until its scope closes; " }>, align 8
@.d14 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c" reads null once none holds it\0A" }>, align 8
@.d15 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"has a constructor that checks or fails" }>, align 8
@.d16 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"has a constructor that does more than declare its fields" }>, align 8
@.d17 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"has a field its constructor computes" }>, align 8
@.d18 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"has no fields" }>, align 8
@.d19 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"has a constructor parameter that is no field" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBefore(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoMain(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMainSignature(ptr %v0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyTableOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eNewAnyTable(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimplSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyScopesAgree(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyMethodScopes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteAnyMethod(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/diagmsg:Msg" %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H0986089bcad3c266fbd2f46fa03b07d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erecvReplaced(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
@olang_loc_f6613c7e75250c33_3760568a21e1f80f = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckFn(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckCtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckGlobal(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckThunk(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_902a17d6016e7481_f3e75797ce7ecebd = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecked(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_92175a3a56c2d0f0_3e341b7cdb5c178c = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleResults(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d9d408bf8806a5b7_73d051fbfd3f3593 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_c9813818497de78f_1a6747489dcf36eb = external constant [0 x i8]
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrolledCompr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, %"compiler/check:reflList" %a3, i32 %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValueType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cdb7af735b0e96fc_7d1f1dd52d37eb88 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprehensionReferences(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_e6a78b702db91f09_a31c62fb59cc1eed = external constant [0 x i8]
declare %"compiler/ast:ForIn" @compiler_2fast_3aForIn_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, i32 %a1, ptr %a2, i1 %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewalk(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomprOpen(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComprNeedsTry(ptr %v0)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i1 %a4)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSynthGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einferred(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fsource_3aSpan_3e_2_H19fded22be32a91ca4084130356a325d(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImmutCopy(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueCopy(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyOnWhat(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyShape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b3868a314c3ea96c_e671b5117430d1f8 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCaseTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_260cd67ae3bcee1d_e0eff4ddc0bf7cc9 = external constant [0 x i8]
@olang_loc_d16ac81f8024a906_91b50ccb5db52c12 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_26959ece93e3b5d7_ef6153c643f98adb = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
@olang_loc_dcaa30bcf0ceb4b1_7307533feb398e7d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestTarget(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i64 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeRules(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaredCtor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitSets(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitHeader(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitContracts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopAssert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
@olang_loc_9f7e5ad647601e13_a7b1cb3e26ad346f = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclsIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorDeclRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRules(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_575e4285282f1c6b_a969c68061cd7c57 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eValueOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare i64 @compiler_2fcheck_2eintFloatBits(i32 %a0, %"compiler/check:litv" %a1)
declare i64 @compiler_2fcheck_2efloatBits(i32 %a0, double %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_9f409528a62be557_96e98ebb70e4ac13 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsDropped(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsCut(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1bc36e5fea83eb2f_c65858cd7310966b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrWordPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaughtComparedToCaught(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompareItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueImmutPart(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_8803ccf5e870aa5b_cb8fe22003fe469f = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBodies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralEntries(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare %"compiler/check:litBuilder" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBuilder(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentriesLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/check:litBuilder" %a3, i32 %a4, ptr %a5)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_595acbd52e732752_abc42ffc2c7a84b6 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyLent(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamsOn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/check:setAt" @compiler_2fcheck_3asetAt_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, i32 %a5)
@olang_loc_9413809856381141_f41a02fc0683f50d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eLen__H084a2ca77c4688e46cae486f59666d3f(ptr %v0, ptr %a0)
declare %"compiler/check:weakPlace" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aweakPlace_3e_2eAt_3ccompiler_2fcheck_3aweakPlace_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %a0)
declare { i32, { i64, [3 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_H38805f4eed72f99710d38d2dedaea985(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eWeakUnheld(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultVoid(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_c35353a7f0d99057_ddbdada8f24db6a3 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultAsRef(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@olang_loc_c0bfe31aa1d2e438_21c7d6b10ea56b94 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnResultType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalNote(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
@olang_loc_e2bcc3535eb854f4_be0aec47518f8140 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eTrun_Haa7c8ccc08c8123d0b87c9688e5d351e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fcheck_2eRoStored = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreOver(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7b4736b243041b5b_1a65dd25b2a3adef = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2eLen_3ccompiler_2fcheck_3atailAsk_3e(ptr %v0, ptr %a0)
declare %"compiler/check:tailAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2eAt_3ccompiler_2fcheck_3atailAsk_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeErrors(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyUnique(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_e30e75934041bac1_8633653d6080ffc5 = external constant [0 x i8]
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
@olang_loc_66d223ad553101b7_96dec8e341e5a1bb = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)

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
