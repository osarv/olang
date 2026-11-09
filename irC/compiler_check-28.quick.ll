source_filename = "compiler_check-28.quick.ll"
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
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/typed:ContractInfo" = type { { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:ContractAsk" = type { i64, i64, %"compiler/source:Span", i64, %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/check:signMag" = type { i1, i128 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
define dso_local i1 @compiler_2fcheck_2ecaseAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Case", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t4, { i64, ptr } %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Case", ptr %t10, i32 0, i32 4
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t13, { i64, ptr } %t14)
  store i1 %t17, ptr %l10
  br label %bb4
bb4:
  %t18 = load i1, ptr %l10, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l6, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Case", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t27 = call i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %t23, { i64, ptr } %t24)
  store i1 %t27, ptr %l15
  br label %bb8
bb8:
  %t28 = load i1, ptr %l15, !tbaa !21
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l11, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca %"compiler/typed:Item"
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i64
  %l59 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l67 = alloca i1
  %l72 = alloca ptr
  %l75 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l80 = alloca i64
  %l84 = alloca i1
  %l88 = alloca i1
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i64
  %l101 = alloca i64
  %l119 = alloca ptr
  %l122 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l138 = alloca i1
  %l141 = alloca i32
  %l147 = alloca i64
  %l149 = alloca i32
  %l153 = alloca i32
  %l159 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca %"compiler/diagmsg:Msg"
  %l164 = alloca i64
  %l173 = alloca ptr
  %l176 = alloca %"compiler/source:Span"
  %l177 = alloca %"compiler/diagmsg:Msg"
  %l178 = alloca i64
  %l184 = alloca ptr
  %l187 = alloca %"compiler/source:Span"
  %l188 = alloca %"compiler/diagmsg:Msg"
  %l189 = alloca i64
  %l195 = alloca i1
  %l201 = alloca i1
  %l203 = alloca i1
  %l205 = alloca ptr
  %l208 = alloca %"compiler/source:Span"
  %l209 = alloca %"compiler/diagmsg:Msg"
  %l210 = alloca i64
  %l214 = alloca i1
  %l221 = alloca i1
  %l224 = alloca i1
  %l225 = alloca ptr
  %l228 = alloca %"compiler/source:Span"
  %l229 = alloca %"compiler/diagmsg:Msg"
  %l230 = alloca i64
  %l233 = alloca i1
  %l238 = alloca i32
  %l243 = alloca ptr
  %l248 = alloca i32
  %l249 = alloca { i64, ptr }
  %l256 = alloca ptr
  %l259 = alloca %"compiler/source:Span"
  %l264 = alloca %"compiler/diagmsg:Msg"
  %l265 = alloca i64
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l5, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load i64, ptr %l7, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb9
bb6:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l41, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l41, !tbaa !24
  store i64 %t38, ptr %l38, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l38, !tbaa !24
  store i64 %t39, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = load i64, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb138
bb12:
  br label %bb13
bb13:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l10, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t58, ptr %l59, !tbaa !27
  %t59 = load i64, ptr %l10, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr ptr, ptr %t62, i64 %t59
  %t64 = load ptr, ptr %t63, !tbaa !39
  store ptr %t64, ptr %l11, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t67 = load i64, ptr %l10, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v2, ptr %v2, ptr %t66, i64 %t67)
  store ptr %t70, ptr %l64
  br label %bb14
bb14:
  %t71 = load ptr, ptr %l64, !tbaa !29
  store ptr %t71, ptr %l12, !tbaa !29
  %t72 = load i64, ptr %l10, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = load i64, ptr %l10, !tbaa !24
  %t80 = sub i64 %t78, 1
  %t83 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v2, ptr %s3, ptr %t76, i64 %t80)
  store ptr %t83, ptr %l72
  br label %bb17
bb16:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb18
bb17:
  %t84 = load ptr, ptr %l72, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Clause", ptr %t84, i32 0, i32 2
  %t87 = load i1, ptr %t86, !tbaa !21
  store i1 %t87, ptr %l67, !tbaa !21
  br label %bb18
bb18:
  %t89 = load i1, ptr %l67, !tbaa !21
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l75, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l11, !tbaa !29
  %t95 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %t91, ptr %t92)
  store %"compiler/source:Span" %t95, ptr %l78
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t96 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchAfterCatchAll(ptr %v0)
  store %"compiler/diagmsg:Msg" %t96, ptr %l79
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l75, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l78
  %t99 = load %"compiler/diagmsg:Msg", ptr %l79
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t97, %"compiler/source:Span" %t98, %"compiler/diagmsg:Msg" %t99)
  store i64 %t100, ptr %l80
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb24:
  %t102 = load i64, ptr %l10, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t106 = load ptr, ptr %l12, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Clause", ptr %t106, i32 0, i32 2
  %t109 = load i1, ptr %t108, !tbaa !21
  %t111 = xor i1 %t109, true
  store i1 %t111, ptr %l84, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb27
bb27:
  %t113 = load i1, ptr %l84, !tbaa !21
  br i1 %t113, label %bb28, label %bb29
bb28:
  %t114 = load ptr, ptr %l12, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Clause", ptr %t114, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = icmp sgt i64 %t119, 0
  store i1 %t121, ptr %l88, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb30
bb30:
  %t123 = load i1, ptr %l88, !tbaa !21
  br i1 %t123, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t124 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l93
  br label %bb33
bb32:
  br label %bb71
bb33:
  %t125 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t126 = load i64, ptr %l10, !tbaa !24
  store i64 %t126, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t128 = load i64, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t132 = icmp sgt i64 %t128, %t129
  br i1 %t132, label %bb34, label %bb35
bb34:
  %t134 = load i64, ptr %l16, !tbaa !24
  %t136 = icmp sgt i64 %t134, 0
  br i1 %t136, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb39
bb36:
  %t138 = load i64, ptr %l15, !tbaa !24
  %t139 = load i64, ptr %l14, !tbaa !24
  %t142 = sub i64 %t138, %t139
  %t143 = load i64, ptr %l16, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sub i64 %t146, 1
  %t149 = load i64, ptr %l16, !tbaa !24
  %t152 = sdiv i64 %t148, %t149
  store i64 %t152, ptr %l101, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb38
bb38:
  %t154 = load i64, ptr %l101, !tbaa !24
  store i64 %t154, ptr %l98, !tbaa !24
  br label %bb39
bb39:
  %t155 = load i64, ptr %l98, !tbaa !24
  store i64 %t155, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb40
bb40:
  %t156 = load i64, ptr %l18, !tbaa !24
  %t157 = load i64, ptr %l17, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb41, label %bb42
bb41:
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t164 = load i64, ptr %l14, !tbaa !24
  %t165 = load i64, ptr %l18, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  %t169 = mul i64 %t165, %t166
  %t172 = add i64 %t164, %t169
  store ptr %l13, ptr %l119, !tbaa !29
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t178 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v2, ptr %v2, ptr %t174, i64 %t172)
  store ptr %t178, ptr %l122
  br label %bb44
bb44:
  %t179 = load ptr, ptr %l119, !tbaa !29
  %t180 = load ptr, ptr %l122, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %s5, ptr %v2, ptr %t179, ptr %t180)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t181 = load i64, ptr %l18, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l18, !tbaa !24
  br label %bb40
bb47:
  store i1 true, ptr %l20, !tbaa !21
  %t185 = load ptr, ptr %l12, !tbaa !29
  %t187 = getelementptr %"compiler/typed:Clause", ptr %t185, i32 0, i32 1
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t190 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  store i64 %t192, ptr %l23, !tbaa !24
  br label %bb48
bb48:
  %t194 = load i64, ptr %l22, !tbaa !24
  %t195 = load i64, ptr %l23, !tbaa !24
  %t198 = icmp slt i64 %t194, %t195
  %t200 = xor i1 %t198, true
  br i1 %t200, label %bb49, label %bb50
bb49:
  br label %bb64
bb50:
  br label %bb51
bb51:
  %t202 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t202, ptr %l133, !tbaa !27
  %t203 = load i64, ptr %l22, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr %"compiler/typed:Item", ptr %t206, i64 %t203
  %t208 = load %"compiler/typed:Item", ptr %t207
  store %"compiler/typed:Item" %t208, ptr %l24
  %t210 = getelementptr %"compiler/typed:Item", ptr %l24, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  %t213 = icmp slt i64 %t211, 0
  br i1 %t213, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l138, !tbaa !21
  br label %bb54
bb53:
  %t215 = getelementptr %"compiler/typed:Item", ptr %l24, i32 0, i32 1
  %t216 = load i64, ptr %t215, !tbaa !24
  %t218 = icmp sge i64 %t216, 64
  store i1 %t218, ptr %l138, !tbaa !21
  br label %bb54
bb54:
  %t220 = load i1, ptr %l138, !tbaa !21
  br i1 %t220, label %bb55, label %bb56
bb55:
  %t221 = getelementptr %"compiler/typed:Item", ptr %l24, i32 0, i32 0
  %t222 = load i32, ptr %t221, !tbaa !23
  store i32 %t222, ptr %l141, !tbaa !23
  br label %bb58
bb56:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  %t230 = getelementptr %"compiler/typed:Item", ptr %l24, i32 0, i32 0
  %t231 = load i32, ptr %t230, !tbaa !23
  %t232 = getelementptr %"compiler/typed:Item", ptr %l24, i32 0, i32 1
  %t233 = load i64, ptr %t232, !tbaa !24
  store i64 %t233, ptr %l147, !tbaa !24
  %t234 = load i64, ptr %l147, !tbaa !24
  %t235 = load i64, ptr %l147, !tbaa !24
  %t236 = shl i64 1, %t235
  %t240 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t229, i32 %t231, i64 %t236)
  store i32 %t240, ptr %l149
  br label %bb57
bb57:
  %t241 = load i32, ptr %l149, !tbaa !23
  store i32 %t241, ptr %l141, !tbaa !23
  br label %bb58
bb58:
  %t242 = load i32, ptr %l141, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t248 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %s5, ptr %t243, i32 %t242, ptr %l13)
  store i32 %t248, ptr %l153
  br label %bb59
bb59:
  %t249 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t250 = load i32, ptr %l153, !tbaa !23
  %t252 = icmp ne i32 %t250, %t249
  br i1 %t252, label %bb60, label %bb61
bb60:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb62
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t254 = load i64, ptr %l22, !tbaa !24
  %t256 = add i64 %t254, 1
  store i64 %t256, ptr %l22, !tbaa !24
  br label %bb48
bb64:
  %t258 = load i1, ptr %l20, !tbaa !21
  br i1 %t258, label %bb65, label %bb66
bb65:
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l159, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l11, !tbaa !29
  %t265 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %t261, ptr %t262)
  store %"compiler/source:Span" %t265, ptr %l162
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t266 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchUnreachable(ptr %v0)
  store %"compiler/diagmsg:Msg" %t266, ptr %l163
  br label %bb68
bb68:
  %t267 = load ptr, ptr %l159, !tbaa !29
  %t268 = load %"compiler/source:Span", ptr %l162
  %t269 = load %"compiler/diagmsg:Msg", ptr %l163
  %t270 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t267, %"compiler/source:Span" %t268, %"compiler/diagmsg:Msg" %t269)
  store i64 %t270, ptr %l164
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb70:
  call void @__olang_scope_close(ptr %s5)
  br label %bb71
bb71:
  %t272 = load ptr, ptr %l11, !tbaa !29
  %t274 = getelementptr %"compiler/ast:Catch", ptr %t272, i32 0, i32 3
  %t275 = load { i64, ptr }, ptr %t274, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t279 = icmp sgt i64 %t277, 0
  store i1 %t279, ptr %l26, !tbaa !21
  %t283 = xor i1 %a3, true
  br i1 %t283, label %bb72, label %bb73
bb72:
  %t285 = load i1, ptr %l26, !tbaa !21
  br i1 %t285, label %bb74, label %bb75
bb73:
  br label %bb80
bb74:
  %t287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t287, ptr %l173, !tbaa !29
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load ptr, ptr %l11, !tbaa !29
  %t292 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %t288, ptr %t289)
  store %"compiler/source:Span" %t292, ptr %l176
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t293 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultInStatement(ptr %v0)
  store %"compiler/diagmsg:Msg" %t293, ptr %l177
  br label %bb77
bb77:
  %t294 = load ptr, ptr %l173, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l176
  %t296 = load %"compiler/diagmsg:Msg", ptr %l177
  %t297 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t294, %"compiler/source:Span" %t295, %"compiler/diagmsg:Msg" %t296)
  store i64 %t297, ptr %l178
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb79:
  call void @__olang_scope_close(ptr %s3)
  br label %bb137
bb80:
  %t299 = load i32, ptr %l4, !tbaa !23
  %t300 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t303 = icmp eq i32 %t299, %t300
  br i1 %t303, label %bb81, label %bb82
bb81:
  %t305 = load i1, ptr %l26, !tbaa !21
  br i1 %t305, label %bb83, label %bb84
bb82:
  br label %bb89
bb83:
  %t307 = load ptr, ptr %l0, !tbaa !29
  store ptr %t307, ptr %l184, !tbaa !29
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load ptr, ptr %l11, !tbaa !29
  %t312 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %t308, ptr %t309)
  store %"compiler/source:Span" %t312, ptr %l187
  br label %bb85
bb84:
  br label %bb88
bb85:
  %t313 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNoValue(ptr %v0)
  store %"compiler/diagmsg:Msg" %t313, ptr %l188
  br label %bb86
bb86:
  %t314 = load ptr, ptr %l184, !tbaa !29
  %t315 = load %"compiler/source:Span", ptr %l187
  %t316 = load %"compiler/diagmsg:Msg", ptr %l188
  %t317 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t314, %"compiler/source:Span" %t315, %"compiler/diagmsg:Msg" %t316)
  store i64 %t317, ptr %l189
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb88:
  call void @__olang_scope_close(ptr %s3)
  br label %bb137
bb89:
  %t319 = load ptr, ptr %l12, !tbaa !29
  %t321 = getelementptr %"compiler/typed:Clause", ptr %t319, i32 0, i32 3
  %t322 = load ptr, ptr %t321, !tbaa !29
  %t324 = icmp eq ptr %t322, null
  %t326 = xor i1 %t324, true
  br i1 %t326, label %bb90, label %bb91
bb90:
  %t328 = load ptr, ptr %l12, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Clause", ptr %t328, i32 0, i32 3
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t333 = icmp eq ptr %t331, null
  br i1 %t333, label %bb92, label %bb93
bb91:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb96
bb92:
  call void @__olang_check_failed(ptr @olang_loc_20fb2e81a5b7d68a_7759df49ce89a9e)
  unreachable
bb93:
  br label %bb94
bb94:
  %t335 = load ptr, ptr %l12, !tbaa !29
  %t337 = getelementptr %"compiler/typed:Clause", ptr %t335, i32 0, i32 3
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t340 = call i1 @compiler_2fcheck_2eleavesValue(ptr %v2, ptr %t338)
  store i1 %t340, ptr %l201
  br label %bb95
bb95:
  %t341 = load i1, ptr %l201, !tbaa !21
  store i1 %t341, ptr %l195, !tbaa !21
  br label %bb96
bb96:
  %t342 = load i1, ptr %l195, !tbaa !21
  store i1 %t342, ptr %l27, !tbaa !21
  %t343 = load i1, ptr %l27, !tbaa !21
  br i1 %t343, label %bb97, label %bb98
bb97:
  %t345 = load i1, ptr %l26, !tbaa !21
  store i1 %t345, ptr %l203, !tbaa !21
  br label %bb99
bb98:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb99
bb99:
  %t347 = load i1, ptr %l203, !tbaa !21
  br i1 %t347, label %bb100, label %bb101
bb100:
  %t348 = load ptr, ptr %l0, !tbaa !29
  store ptr %t348, ptr %l205, !tbaa !29
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l11, !tbaa !29
  %t353 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %t349, ptr %t350)
  store %"compiler/source:Span" %t353, ptr %l208
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t354 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultDead(ptr %v0)
  store %"compiler/diagmsg:Msg" %t354, ptr %l209
  br label %bb103
bb103:
  %t355 = load ptr, ptr %l205, !tbaa !29
  %t356 = load %"compiler/source:Span", ptr %l208
  %t357 = load %"compiler/diagmsg:Msg", ptr %l209
  %t358 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t355, %"compiler/source:Span" %t356, %"compiler/diagmsg:Msg" %t357)
  store i64 %t358, ptr %l210
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb105:
  %t360 = load i1, ptr %l27, !tbaa !21
  %t362 = xor i1 %t360, true
  br i1 %t362, label %bb106, label %bb107
bb106:
  %t364 = load i1, ptr %l26, !tbaa !21
  %t366 = xor i1 %t364, true
  store i1 %t366, ptr %l214, !tbaa !21
  br label %bb108
bb107:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb108
bb108:
  %t368 = load i1, ptr %l214, !tbaa !21
  br i1 %t368, label %bb109, label %bb110
bb109:
  %t369 = load ptr, ptr %l11, !tbaa !29
  %t371 = getelementptr %"compiler/ast:Catch", ptr %t369, i32 0, i32 2
  %t372 = load { i64, ptr }, ptr %t371, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t372, 0
  %t376 = icmp sgt i64 %t374, 0
  br i1 %t376, label %bb111, label %bb112
bb110:
  br label %bb121
bb111:
  %t378 = load ptr, ptr %l11, !tbaa !29
  %t380 = getelementptr %"compiler/ast:Catch", ptr %t378, i32 0, i32 2
  %t381 = load { i64, ptr }, ptr %t380, !tbaa !27
  %t383 = call i1 @compiler_2fcheck_2elastIsValue(ptr %v1, { i64, ptr } %t381)
  store i1 %t383, ptr %l224
  br label %bb113
bb112:
  store i1 false, ptr %l221, !tbaa !21
  br label %bb114
bb113:
  %t384 = load i1, ptr %l224, !tbaa !21
  store i1 %t384, ptr %l221, !tbaa !21
  br label %bb114
bb114:
  %t385 = load i1, ptr %l221, !tbaa !21
  br i1 %t385, label %bb115, label %bb116
bb115:
  call void @__olang_scope_close(ptr %s3)
  br label %bb137
bb116:
  br label %bb117
bb117:
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l225, !tbaa !29
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l11, !tbaa !29
  %t391 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %t387, ptr %t388)
  store %"compiler/source:Span" %t391, ptr %l228
  br label %bb118
bb118:
  %t392 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchMustLeave(ptr %v0)
  store %"compiler/diagmsg:Msg" %t392, ptr %l229
  br label %bb119
bb119:
  %t393 = load ptr, ptr %l225, !tbaa !29
  %t394 = load %"compiler/source:Span", ptr %l228
  %t395 = load %"compiler/diagmsg:Msg", ptr %l229
  %t396 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t393, %"compiler/source:Span" %t394, %"compiler/diagmsg:Msg" %t395)
  store i64 %t396, ptr %l230
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb121:
  %t398 = load i1, ptr %l26, !tbaa !21
  br i1 %t398, label %bb122, label %bb123
bb122:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/check:Checker", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t405 = getelementptr %"compiler/generic:Program", ptr %t403, i32 0, i32 2
  %t406 = load i32, ptr %l4, !tbaa !23
  %t409 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t405, i32 %t406)
  store i32 %t409, ptr %l238
  br label %bb124
bb123:
  store i1 false, ptr %l233, !tbaa !21
  br label %bb125
bb124:
  %t410 = load i32, ptr %l238, !range !{i32 0, i32 33}
  %t412 = trunc i64 22 to i32
  %t413 = icmp eq i32 %t410, %t412
  store i1 %t413, ptr %l233, !tbaa !21
  br label %bb125
bb125:
  %t415 = load i1, ptr %l233, !tbaa !21
  br i1 %t415, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s21
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr %"compiler/check:Checker", ptr %t416, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !29
  %t421 = getelementptr %"compiler/generic:Program", ptr %t419, i32 0, i32 2
  store ptr %t421, ptr %l243, !tbaa !29
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr %"compiler/check:Checker", ptr %t422, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  %t428 = load i32, ptr %l4, !tbaa !23
  %t431 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t427, i32 %t428)
  store i32 %t431, ptr %l248
  br label %bb128
bb127:
  br label %bb136
bb128:
  %t432 = load ptr, ptr %l243, !tbaa !29
  %t433 = load i32, ptr %l248, !tbaa !23
  %t434 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s21, ptr %t432, i32 %t433)
  store { i64, ptr } %t434, ptr %l249
  br label %bb129
bb129:
  %t435 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t436 = extractvalue { i64, ptr } %t435, 0
  store i64 %t436, ptr %l28, !tbaa !24
  %t438 = load ptr, ptr %l11, !tbaa !29
  %t440 = getelementptr %"compiler/ast:Catch", ptr %t438, i32 0, i32 3
  %t441 = load { i64, ptr }, ptr %t440, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t441, 0
  %t444 = load i64, ptr %l28, !tbaa !24
  %t447 = icmp ne i64 %t443, %t444
  br i1 %t447, label %bb130, label %bb131
bb130:
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l256, !tbaa !29
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load ptr, ptr %l11, !tbaa !29
  %t454 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %t450, ptr %t451)
  store %"compiler/source:Span" %t454, ptr %l259
  br label %bb132
bb131:
  br label %bb135
bb132:
  %t455 = load i64, ptr %l28, !tbaa !24
  %t456 = load ptr, ptr %l11, !tbaa !29
  %t458 = getelementptr %"compiler/ast:Catch", ptr %t456, i32 0, i32 3
  %t459 = load { i64, ptr }, ptr %t458, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t464 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultCount(ptr %v0, i64 %t455, i64 %t461)
  store %"compiler/diagmsg:Msg" %t464, ptr %l264
  br label %bb133
bb133:
  %t465 = load ptr, ptr %l256, !tbaa !29
  %t466 = load %"compiler/source:Span", ptr %l259
  %t467 = load %"compiler/diagmsg:Msg", ptr %l264
  %t468 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t465, %"compiler/source:Span" %t466, %"compiler/diagmsg:Msg" %t467)
  store i64 %t468, ptr %l265
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb135:
  call void @__olang_scope_close(ptr %s21)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s3)
  br label %bb137
bb137:
  %t470 = load i64, ptr %l9, !tbaa !24
  %t472 = add i64 %t470, 1
  store i64 %t472, ptr %l9, !tbaa !24
  br label %bb10
bb138:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, { i64, ptr } %a6, i32 %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l8 = alloca i64
  %lp9 = alloca ptr
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l22 = alloca { i64, [3 x i64] }
  %lp23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca %"compiler/typed:ContractInfo"
  %l35 = alloca %"compiler/typed:ContractInfo"
  %l36 = alloca i32
  %l38 = alloca %"compiler/typed:ContractInfo"
  %l41 = alloca i64
  %l43 = alloca i1
  %l45 = alloca ptr
  %l49 = alloca i1
  %l51 = alloca i1
  %l56 = alloca ptr
  %l63 = alloca ptr
  %l67 = alloca i64
  %l68 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca i32
  %l78 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l80 = alloca i32
  %l81 = alloca %"compiler/typed:ContractInfo"
  %l83 = alloca %"compiler/typed:ContractInfo"
  %l84 = alloca ptr
  %l92 = alloca { i64, ptr }
  %l96 = alloca i1
  %l102 = alloca ptr
  %l113 = alloca { { i64, [3 x i64] }, { i64, ptr } }
  %l115 = alloca { i64, ptr }
  %l116 = alloca i64
  %l117 = alloca { i64, ptr }
  %l119 = alloca i64
  %l123 = alloca i64
  %l126 = alloca i64
  %l144 = alloca ptr
  %l145 = alloca i64
  %l146 = alloca %"compiler/source:Span"
  %l147 = alloca i64
  %l150 = alloca i64
  %l152 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca i64
  %l156 = alloca i64
  %l157 = alloca %"compiler/source:Span"
  %l158 = alloca i64
  %l161 = alloca %"compiler/source:Span"
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l168 = alloca %"compiler/check:ContractAsk"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t298 = alloca %"compiler/check:ContractAsk", align 8
  %t309 = alloca %"compiler/check:ContractAsk", align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  store i64 %a8, ptr %l8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 128
  %t4 = load i64, ptr %l8, !tbaa !24
  %t7 = call { i32, %"compiler/typed:ContractInfo" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H1fc1bd863e6a60d3e5c2aece55d841d1(ptr %v0, ptr %v4, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, %"compiler/typed:ContractInfo" } %t7, 1
  %t9 = extractvalue { i32, %"compiler/typed:ContractInfo" } %t7, 0
  store i32 %t9, ptr %l36
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store %"compiler/typed:ContractInfo" %t8, ptr %l35
  br label %bb1
bb1:
  %t13 = call %"compiler/typed:ContractInfo" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aContractInfo(ptr %v4, ptr %l35)
  store %"compiler/typed:ContractInfo" %t13, ptr %l38
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t14, ptr %rv
  br label %ret
bb4:
  %t16 = load %"compiler/typed:ContractInfo", ptr %l38
  store %"compiler/typed:ContractInfo" %t16, ptr %l31
  br label %bb5
bb5:
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 120, i64 8)
  store ptr %t17, ptr %lp9
  %t18 = load %"compiler/typed:ContractInfo", ptr %l31
  %t19 = load ptr, ptr %lp9
  store %"compiler/typed:ContractInfo" %t18, ptr %t19
  %t20 = load ptr, ptr %lp9
  %t21 = getelementptr %"compiler/typed:ContractInfo", ptr %t20, i32 0, i32 2
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v4, ptr %t21)
  store i64 %t23, ptr %l41
  br label %bb6
bb6:
  %t24 = load i64, ptr %l41, !tbaa !24
  %t25 = icmp eq i64 %t24, 0
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb10
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t27)
  store ptr %t29, ptr %l45
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l45, !tbaa !29
  %t32 = getelementptr %"compiler/check:frame", ptr %t30, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  store i1 %t35, ptr %l43, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l43, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb14
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eevalOnly(ptr %v0, ptr %t38)
  store i1 %t40, ptr %l51
  br label %bb13
bb13:
  %t41 = load i1, ptr %l51, !tbaa !21
  store i1 %t41, ptr %l49, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l49, !tbaa !21
  br i1 %t42, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t43, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 14
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t47, i64 %t48)
  store ptr %t51, ptr %l56
  br label %bb18
bb18:
  %t52 = load ptr, ptr %l56, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 1
  %t55 = load { i64, [2 x i64] }, ptr %t54
  store { i64, [2 x i64] } %t55, ptr %l10
  %t57 = load { i64, [2 x i64] }, ptr %l10
  %t59 = extractvalue { i64, [2 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 0
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t62 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  store i64 %t64, ptr %l11, !tbaa !24
  br label %bb21
bb20:
  br label %bb27
bb21:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l63, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t73, i64 %t74)
  store i64 %t77, ptr %l67
  br label %bb22
bb22:
  %t78 = load ptr, ptr %l63, !tbaa !29
  %t79 = load i64, ptr %l67, !tbaa !24
  %t80 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t78, i64 %t79)
  store i1 %t80, ptr %l68
  br label %bb23
bb23:
  %t81 = load i1, ptr %l68, !tbaa !21
  br i1 %t81, label %bb24, label %bb25
bb24:
  %t82 = load ptr, ptr %l4, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t82, ptr %rv
  br label %ret
bb25:
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
  call void @__olang_check_failed(ptr @olang_loc_cc784a1e8fddb41e_ee964d456644b6b2)
  unreachable
bb32:
  %t84 = load ptr, ptr %l4, !tbaa !29
  store ptr %t84, ptr %l12, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  store ptr %t86, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t87 = load ptr, ptr %l71, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb33, label %bb34
bb33:
  %t90 = load ptr, ptr %l71, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 5}
  %t93 = icmp eq i64 %t91, 3
  store i1 %t93, ptr %l72, !tbaa !21
  br label %bb34
bb34:
  %t94 = load i1, ptr %l72, !tbaa !21
  br i1 %t94, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l75, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t96, ptr %l76
  store i32 %a3, ptr %l77, !tbaa !23
  %t98 = load ptr, ptr %l5, !tbaa !29
  store ptr %t98, ptr %l78, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t99, ptr %l79, !tbaa !27
  store i32 %a7, ptr %l80, !tbaa !23
  %t101 = load ptr, ptr %lp9
  %t102 = load %"compiler/typed:ContractInfo", ptr %t101
  store %"compiler/typed:ContractInfo" %t102, ptr %l81
  %t104 = call %"compiler/typed:ContractInfo" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aContractInfo(ptr %v4, ptr %l81)
  store %"compiler/typed:ContractInfo" %t104, ptr %l83
  br label %bb38
bb38:
  %t105 = load ptr, ptr %l75, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l76
  %t107 = load i32, ptr %l77, !tbaa !23
  %t108 = load ptr, ptr %l78, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t110 = load i32, ptr %l80, !tbaa !23
  %t111 = load %"compiler/typed:ContractInfo", ptr %l83
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edispatchChecks(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %v4, ptr %t105, %"compiler/source:Span" %t106, i32 %t107, ptr %t108, { i64, ptr } %t109, i32 %t110, %"compiler/typed:ContractInfo" %t111)
  store ptr %t112, ptr %l84
  br label %bb39
bb39:
  %t113 = load ptr, ptr %l84, !tbaa !29
  store ptr %t113, ptr %l12, !tbaa !29
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_34d74ab5dd8a1e9f_be34dcde3b606033)
  unreachable
bb45:
  %t114 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t114, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  store i64 %t118, ptr %l15, !tbaa !24
  br label %bb46
bb46:
  %t120 = load i64, ptr %l14, !tbaa !24
  %t121 = load i64, ptr %l15, !tbaa !24
  %t124 = icmp slt i64 %t120, %t121
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb47, label %bb48
bb47:
  br label %bb55
bb48:
  br label %bb49
bb49:
  %t128 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t128, ptr %l92, !tbaa !27
  %t129 = load i64, ptr %l14, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr ptr, ptr %t132, i64 %t129
  %t134 = load ptr, ptr %t133, !tbaa !39
  %t138 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v3, ptr %t134)
  store i1 %t138, ptr %l96
  br label %bb50
bb50:
  %t139 = load i1, ptr %l96, !tbaa !21
  %t140 = xor i1 %t139, true
  br i1 %t140, label %bb51, label %bb52
bb51:
  %t142 = load ptr, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t142, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t144 = load i64, ptr %l14, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l14, !tbaa !24
  br label %bb46
bb55:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t148)
  store ptr %t150, ptr %l102
  br label %bb56
bb56:
  %t151 = load ptr, ptr %l102, !tbaa !29
  store ptr %t151, ptr %l17, !tbaa !29
  %t152 = load ptr, ptr %l17, !tbaa !29
  %t154 = getelementptr %"compiler/check:frame", ptr %t152, i32 0, i32 1
  %t155 = load i64, ptr %t154, !tbaa !24
  store i64 %t155, ptr %l18, !tbaa !24
  %t157 = load ptr, ptr %l17, !tbaa !29
  %t159 = getelementptr %"compiler/check:frame", ptr %t157, i32 0, i32 2
  %t160 = load i64, ptr %t159, !tbaa !24
  store i64 %t160, ptr %l19, !tbaa !24
  %t162 = load ptr, ptr %l17, !tbaa !29
  %t164 = getelementptr %"compiler/check:frame", ptr %t162, i32 0, i32 0
  %t165 = load i64, ptr %t164, !tbaa !24
  store i64 %t165, ptr %l20, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 0
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = getelementptr %"compiler/load:Loader", ptr %t173, i32 0, i32 4
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = call { { i64, [3 x i64] }, { i64, ptr } } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTopContext(ptr %v0, ptr %s0, ptr %t176)
  store { { i64, [3 x i64] }, { i64, ptr } } %t178, ptr %l113
  br label %bb57
bb57:
  %t179 = load { { i64, [3 x i64] }, { i64, ptr } }, ptr %l113
  store { { i64, [3 x i64] }, { i64, ptr } } %t179, ptr %l21
  %t180 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l21, i32 0, i32 0
  %t181 = load { i64, [3 x i64] }, ptr %t180
  store { i64, [3 x i64] } %t181, ptr %l22
  %t183 = getelementptr { { i64, [3 x i64] }, { i64, ptr } }, ptr %l21, i32 0, i32 1
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  store { i64, ptr } %t184, ptr %l115, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  store i64 %t186, ptr %l116, !tbaa !24
  %t187 = load i64, ptr %l116, !tbaa !24
  %t188 = mul i64 %t187, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t188)
  %t190 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  store { i64, ptr } %t191, ptr %l117, !tbaa !27
  %t192 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = load i64, ptr %l116, !tbaa !24
  %t197 = mul i64 %t196, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t193, ptr %t195, i64 %t197, i1 false)
  %t198 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t198, ptr %lp23
  %t199 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t200 = load ptr, ptr %lp23
  store { i64, ptr } %t199, ptr %t200, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t201 = load ptr, ptr %lp9
  %t202 = getelementptr %"compiler/typed:ContractInfo", ptr %t201, i32 0, i32 2
  %t204 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v4, ptr %t202)
  store i64 %t204, ptr %l119
  br label %bb58
bb58:
  %t205 = load i64, ptr %l119, !tbaa !24
  store i64 %t205, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t206 = load i64, ptr %l25, !tbaa !24
  %t207 = load i64, ptr %l24, !tbaa !24
  %t210 = icmp sgt i64 %t206, %t207
  br i1 %t210, label %bb59, label %bb60
bb59:
  %t212 = load i64, ptr %l26, !tbaa !24
  %t214 = icmp sgt i64 %t212, 0
  br i1 %t214, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb64
bb61:
  %t216 = load i64, ptr %l25, !tbaa !24
  %t217 = load i64, ptr %l24, !tbaa !24
  %t220 = sub i64 %t216, %t217
  %t221 = load i64, ptr %l26, !tbaa !24
  %t224 = add i64 %t220, %t221
  %t226 = sub i64 %t224, 1
  %t227 = load i64, ptr %l26, !tbaa !24
  %t230 = sdiv i64 %t226, %t227
  store i64 %t230, ptr %l126, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb63
bb63:
  %t232 = load i64, ptr %l126, !tbaa !24
  store i64 %t232, ptr %l123, !tbaa !24
  br label %bb64
bb64:
  %t233 = load i64, ptr %l123, !tbaa !24
  store i64 %t233, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb65
bb65:
  %t234 = load i64, ptr %l28, !tbaa !24
  %t235 = load i64, ptr %l27, !tbaa !24
  %t238 = icmp slt i64 %t234, %t235
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb66, label %bb67
bb66:
  br label %bb77
bb67:
  br label %bb68
bb68:
  %t242 = load i64, ptr %l24, !tbaa !24
  %t243 = load i64, ptr %l28, !tbaa !24
  %t244 = load i64, ptr %l26, !tbaa !24
  %t247 = mul i64 %t243, %t244
  %t250 = add i64 %t242, %t247
  store i64 %t250, ptr %l29, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l144, !tbaa !29
  %t253 = load i64, ptr %l18, !tbaa !24
  store i64 %t253, ptr %l145, !tbaa !24
  %t254 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t254, ptr %l146
  %t255 = load i64, ptr %l20, !tbaa !24
  store i64 %t255, ptr %l147, !tbaa !24
  %t256 = load ptr, ptr %lp9
  %t257 = getelementptr %"compiler/typed:ContractInfo", ptr %t256, i32 0, i32 2
  %t258 = load i64, ptr %l29, !tbaa !24
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v4, ptr %t257, i64 %t258)
  store i64 %t261, ptr %l150
  br label %bb69
bb69:
  %t262 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t263 = load ptr, ptr %l144, !tbaa !29
  %t264 = load i64, ptr %l145, !tbaa !24
  %t265 = load %"compiler/source:Span", ptr %l146
  %t266 = load i64, ptr %l147, !tbaa !24
  %t267 = load i64, ptr %l150, !tbaa !24
  %t269 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkBody(ptr %v0, ptr %v3, ptr %t263, i64 %t264, %"compiler/source:Span" %t265, i64 %t266, i64 %t267, { i64, ptr } %t262)
  store i64 %t269, ptr %l152
  br label %bb70
bb70:
  %t270 = load i64, ptr %l152, !tbaa !24
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 130
  store ptr %t273, ptr %l154, !tbaa !29
  store i64 %t270, ptr %l155, !tbaa !24
  %t275 = load i64, ptr %l19, !tbaa !24
  store i64 %t275, ptr %l156, !tbaa !24
  store %"compiler/source:Span" %a2, ptr %l157
  %t277 = load ptr, ptr %lp9
  %t278 = getelementptr %"compiler/typed:ContractInfo", ptr %t277, i32 0, i32 1
  %t279 = load i64, ptr %t278, !tbaa !24
  store i64 %t279, ptr %l158, !tbaa !24
  %t280 = load ptr, ptr %lp9
  %t281 = getelementptr %"compiler/typed:ContractInfo", ptr %t280, i32 0, i32 3
  %t282 = load i64, ptr %l29, !tbaa !24
  %t285 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v4, ptr %t281, i64 %t282)
  store %"compiler/source:Span" %t285, ptr %l161
  br label %bb71
bb71:
  %t286 = load ptr, ptr %lp9
  %t287 = getelementptr %"compiler/typed:ContractInfo", ptr %t286, i32 0, i32 0
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l162, !tbaa !27
  %t289 = load ptr, ptr %lp9
  %t290 = getelementptr %"compiler/typed:ContractInfo", ptr %t289, i32 0, i32 4
  %t291 = load i64, ptr %l29, !tbaa !24
  %t294 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t290, i64 %t291)
  store { i64, ptr } %t294, ptr %l165
  br label %bb72
bb72:
  %t295 = load { i64, [3 x i64] }, ptr %l22
  %t296 = load ptr, ptr %lp23
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t299 = load i64, ptr %l155, !tbaa !24
  %t300 = load i64, ptr %l156, !tbaa !24
  %t301 = load %"compiler/source:Span", ptr %l157
  %t302 = load i64, ptr %l158, !tbaa !24
  %t303 = load %"compiler/source:Span", ptr %l161
  %t304 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t305 = load { i64, ptr }, ptr %l165, !tbaa !27
  call void @compiler_2fcheck_3aContractAsk_2ector(ptr %t298, ptr %v4, ptr %v4, ptr %v0, ptr %v0, ptr %v0, i64 %t299, i64 %t300, %"compiler/source:Span" %t301, i64 %t302, %"compiler/source:Span" %t303, { i64, ptr } %t304, { i64, ptr } %t305, { i64, [3 x i64] } %t295, { i64, ptr } %t297, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  call void @llvm.memmove.p0.p0.i64(ptr %l168, ptr %t298, i64 136, i1 false)
  br label %bb73
bb73:
  %t308 = load ptr, ptr %l154, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t309, ptr %l168, i64 136, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2ePu_H286c5e5dcd81788bf1de6ef6fc9774a9(ptr %v0, ptr %v0, ptr %t308, ptr %t309)
  br label %bb74
bb74:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/check:Checker", ptr %t310, i32 0, i32 131
  %t313 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t312, i64 %t313)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t316 = load i64, ptr %l28, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l28, !tbaa !24
  br label %bb65
bb77:
  %t320 = load ptr, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t320, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eenumFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %lp23 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca i64
  %l36 = alloca ptr
  %lp37 = alloca ptr
  %l40 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l49 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l57 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l69 = alloca i64
  %l72 = alloca i64
  %l92 = alloca ptr
  %l95 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca i32
  %l102 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l109 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %l122 = alloca ptr
  %l128 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l133 = alloca i64
  %l138 = alloca ptr
  %l142 = alloca ptr
  %l144 = alloca i32
  %l146 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l152 = alloca i32
  %l157 = alloca ptr
  %l160 = alloca i64
  %l165 = alloca i64
  %l168 = alloca i64
  %l187 = alloca ptr
  %l192 = alloca ptr
  %l195 = alloca %"compiler/source:Span"
  %l198 = alloca ptr
  %l199 = alloca i32
  %l202 = alloca ptr
  %l204 = alloca i32
  %l206 = alloca i32
  %l207 = alloca i32
  %l208 = alloca i32
  %l212 = alloca { i64, ptr }
  %l216 = alloca i32
  %l218 = alloca %"compiler/typed:Make"
  %l223 = alloca i64
  %l224 = alloca ptr
  %l225 = alloca %"compiler/source:Span"
  %l226 = alloca %"compiler/source:Span"
  %l227 = alloca i64
  %l230 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l237 = alloca ptr
  %l240 = alloca i32
  %l245 = alloca ptr
  %l248 = alloca i64
  %l252 = alloca ptr
  %l253 = alloca %"compiler/source:Span"
  %l254 = alloca i32
  %l255 = alloca i32
  %l257 = alloca i64
  %l262 = alloca %"compiler/typed:Make"
  %l271 = alloca i64
  %l274 = alloca i64
  %l296 = alloca ptr
  %l297 = alloca %"compiler/source:Span"
  %l298 = alloca i32
  %l299 = alloca i32
  %l303 = alloca ptr
  %l304 = alloca ptr
  %l305 = alloca %"compiler/source:Span"
  %l307 = alloca i32
  %l309 = alloca ptr
  %l311 = alloca ptr
  %l312 = alloca %"compiler/source:Span"
  %l313 = alloca i32
  %l314 = alloca i32
  %l315 = alloca i64
  %l320 = alloca %"compiler/typed:Make"
  %l323 = alloca %"compiler/source:Span"
  %l324 = alloca i32
  %l328 = alloca %"compiler/typed:Cond"
  %l336 = alloca i64
  %l339 = alloca %"compiler/source:Span"
  %l340 = alloca i32
  %l344 = alloca { i64, ptr }
  %l347 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  %t371 = alloca { i64, [5 x i64] }, align 8
  %t480 = alloca { i64, [5 x i64] }, align 8
  %t598 = alloca { i64, [5 x i64] }, align 8
  %t622 = alloca { i64, [5 x i64] }, align 8
  %t665 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v2, ptr %t1, i32 %t2)
  store ptr %t5, ptr %l40
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l40, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t9 = getelementptr %"compiler/check:rawTable", ptr %t7, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l45, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t17, ptr %l46
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t18, i32 %t19)
  store { i64, ptr } %t22, ptr %l49
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t23 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t31 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoRawValues(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t29, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t31, ptr %l51
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l45, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l46
  %t34 = load %"compiler/diagmsg:Msg", ptr %l51
  %t35 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t32, %"compiler/source:Span" %t33, %"compiler/diagmsg:Msg" %t34)
  store i64 %t35, ptr %l52
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t36, { i64, ptr } %t37)
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t40, %"compiler/source:Span" %t41)
  store ptr %t44, ptr %l57
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load ptr, ptr %l57, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s0, ptr %t51, i32 %t52)
  store { i64, ptr } %t55, ptr %l62
  br label %bb10
bb10:
  %t56 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp sgt i64 %t63, %t64
  br i1 %t67, label %bb11, label %bb12
bb11:
  %t69 = load i64, ptr %l10, !tbaa !24
  %t71 = icmp sgt i64 %t69, 0
  br i1 %t71, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb16
bb13:
  %t73 = load i64, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = sub i64 %t73, %t74
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = add i64 %t77, %t78
  %t83 = sub i64 %t81, 1
  %t84 = load i64, ptr %l10, !tbaa !24
  %t87 = sdiv i64 %t83, %t84
  store i64 %t87, ptr %l72, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb15
bb15:
  %t89 = load i64, ptr %l72, !tbaa !24
  store i64 %t89, ptr %l69, !tbaa !24
  br label %bb16
bb16:
  %t90 = load i64, ptr %l69, !tbaa !24
  store i64 %t90, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t91 = load i64, ptr %l12, !tbaa !24
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = icmp slt i64 %t91, %t92
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb19:
  br label %bb20
bb20:
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = mul i64 %t100, %t101
  %t107 = add i64 %t99, %t104
  store i64 %t107, ptr %l13, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  store ptr %t114, ptr %l92, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  store ptr %t120, ptr %l95, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = load i32, ptr %l3, !tbaa !23
  %t126 = load i64, ptr %l13, !tbaa !24
  %t130 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t124, i32 %t125, i64 %t126)
  store i32 %t130, ptr %l100
  br label %bb21
bb21:
  %t131 = load ptr, ptr %l95, !tbaa !29
  %t132 = load i32, ptr %l100, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t133, ptr %l101
  br label %bb22
bb22:
  %t134 = load ptr, ptr %l92, !tbaa !29
  %t135 = load i32, ptr %l101, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t134, i32 %t135)
  store { i64, ptr } %t136, ptr %l102
  br label %bb23
bb23:
  %t137 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t140 = icmp sgt i64 %t138, 0
  br i1 %t140, label %bb24, label %bb25
bb24:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l105, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t143, ptr %l106
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l3, !tbaa !23
  %t148 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t144, i32 %t145)
  store { i64, ptr } %t148, ptr %l109
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t149 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  %t151 = extractvalue { i64, ptr } %t149, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l110, !tbaa !27
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t157, ptr %l112, !tbaa !27
  %t158 = load i64, ptr %l13, !tbaa !24
  %t160 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr i32, ptr %t161, i64 %t158
  %t163 = load i32, ptr %t162, !tbaa !33
  %t166 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t156, i32 %t163)
  store { i64, ptr } %t166, ptr %l115
  br label %bb27
bb27:
  %t167 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t169 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromPayload(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t167, { i64, ptr } %t168)
  store %"compiler/diagmsg:Msg" %t169, ptr %l116
  br label %bb28
bb28:
  %t170 = load ptr, ptr %l105, !tbaa !29
  %t171 = load %"compiler/source:Span", ptr %l106
  %t172 = load %"compiler/diagmsg:Msg", ptr %l116
  %t173 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t170, %"compiler/source:Span" %t171, %"compiler/diagmsg:Msg" %t172)
  store i64 %t173, ptr %l117
  br label %bb29
bb29:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t174, { i64, ptr } %t175)
  br label %bb30
bb30:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load %"compiler/source:Span", ptr %l1
  %t182 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t178, %"compiler/source:Span" %t179)
  store ptr %t182, ptr %l122
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t183 = load ptr, ptr %l122, !tbaa !29
  store ptr %t183, ptr %rv
  br label %ret
bb32:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb33:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l12, !tbaa !24
  br label %bb17
bb34:
  %t188 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t192 = icmp ne i64 %t190, 1
  br i1 %t192, label %bb35, label %bb36
bb35:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l128, !tbaa !29
  %t195 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t195, ptr %l129
  %t196 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t200 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, i64 %t198)
  store %"compiler/diagmsg:Msg" %t200, ptr %l132
  br label %bb37
bb36:
  br label %bb41
bb37:
  %t201 = load ptr, ptr %l128, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l129
  %t203 = load %"compiler/diagmsg:Msg", ptr %l132
  %t204 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t201, %"compiler/source:Span" %t202, %"compiler/diagmsg:Msg" %t203)
  store i64 %t204, ptr %l133
  br label %bb38
bb38:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t205, { i64, ptr } %t206)
  br label %bb39
bb39:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l1
  %t213 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t209, %"compiler/source:Span" %t210)
  store ptr %t213, ptr %l138
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t214 = load ptr, ptr %l138, !tbaa !29
  store ptr %t214, ptr %rv
  br label %ret
bb41:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l1
  %t217 = load ptr, ptr %l5, !tbaa !29
  %t221 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v2, ptr %s0, ptr %t215, %"compiler/source:Span" %t216, ptr %t217, i64 0)
  store ptr %t221, ptr %l142
  br label %bb42
bb42:
  %t222 = load ptr, ptr %l142, !tbaa !29
  %t224 = call i32 @compiler_2fcheck_2etypeOf(ptr %s0, ptr %t222)
  store i32 %t224, ptr %l144
  br label %bb43
bb43:
  %t225 = load i32, ptr %l144, !tbaa !23
  store i32 %t225, ptr %l14, !tbaa !23
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t227, ptr %l146, !tbaa !27
  %t228 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr ptr, ptr %t229, i64 0
  %t231 = load ptr, ptr %t230, !tbaa !39
  %t232 = load i32, ptr %l14, !tbaa !23
  %t236 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %t226, ptr %t231, i32 %t232)
  store ptr %t236, ptr %l149
  br label %bb44
bb44:
  %t237 = load ptr, ptr %l149, !tbaa !29
  store ptr %t237, ptr %l15, !tbaa !29
  %t238 = load ptr, ptr %l15, !tbaa !29
  %t241 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t238)
  store i32 %t241, ptr %l152
  br label %bb45
bb45:
  %t242 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t243 = load i32, ptr %l152, !tbaa !23
  %t245 = icmp eq i32 %t243, %t242
  br i1 %t245, label %bb46, label %bb47
bb46:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l1
  %t251 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t247, %"compiler/source:Span" %t248)
  store ptr %t251, ptr %l157
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t252 = load ptr, ptr %l157, !tbaa !29
  store ptr %t252, ptr %rv
  br label %ret
bb49:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/check:Checker", ptr %t253, i32 0, i32 36
  %t257 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t255)
  store i64 %t257, ptr %l160
  br label %bb50
bb50:
  %t258 = load i64, ptr %l160, !tbaa !24
  store i64 %t258, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t259 = load i64, ptr %l7, !tbaa !24
  store i64 %t259, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t261 = load i64, ptr %l18, !tbaa !24
  %t262 = load i64, ptr %l17, !tbaa !24
  %t265 = icmp sgt i64 %t261, %t262
  br i1 %t265, label %bb51, label %bb52
bb51:
  %t267 = load i64, ptr %l19, !tbaa !24
  %t269 = icmp sgt i64 %t267, 0
  br i1 %t269, label %bb53, label %bb54
bb52:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb56
bb53:
  %t271 = load i64, ptr %l18, !tbaa !24
  %t272 = load i64, ptr %l17, !tbaa !24
  %t275 = sub i64 %t271, %t272
  %t276 = load i64, ptr %l19, !tbaa !24
  %t279 = add i64 %t275, %t276
  %t281 = sub i64 %t279, 1
  %t282 = load i64, ptr %l19, !tbaa !24
  %t285 = sdiv i64 %t281, %t282
  store i64 %t285, ptr %l168, !tbaa !24
  br label %bb55
bb54:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb55
bb55:
  %t287 = load i64, ptr %l168, !tbaa !24
  store i64 %t287, ptr %l165, !tbaa !24
  br label %bb56
bb56:
  %t288 = load i64, ptr %l165, !tbaa !24
  store i64 %t288, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb57
bb57:
  %t289 = load i64, ptr %l21, !tbaa !24
  %t290 = load i64, ptr %l20, !tbaa !24
  %t293 = icmp slt i64 %t289, %t290
  %t295 = xor i1 %t293, true
  br i1 %t295, label %bb58, label %bb59
bb58:
  br label %bb64
bb59:
  br label %bb60
bb60:
  %t297 = load i64, ptr %l17, !tbaa !24
  %t298 = load i64, ptr %l21, !tbaa !24
  %t299 = load i64, ptr %l19, !tbaa !24
  %t302 = mul i64 %t298, %t299
  %t305 = add i64 %t297, %t302
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 36
  store ptr %t309, ptr %l187, !tbaa !29
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load %"compiler/source:Span", ptr %l1
  %t312 = load ptr, ptr %l5, !tbaa !29
  %t318 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v2, ptr %v2, ptr %t310, %"compiler/source:Span" %t311, ptr %t312, i64 %t305)
  store ptr %t318, ptr %l192
  br label %bb61
bb61:
  %t319 = load ptr, ptr %l187, !tbaa !29
  %t320 = load ptr, ptr %l192, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t319, ptr %t320)
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t321 = load i64, ptr %l21, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l21, !tbaa !24
  br label %bb57
bb64:
  %t325 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t325, ptr %l195
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/check:Checker", ptr %t326, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !29
  %t331 = getelementptr %"compiler/generic:Program", ptr %t329, i32 0, i32 2
  store ptr %t331, ptr %l198, !tbaa !29
  %t332 = load i32, ptr %l14, !tbaa !23
  store i32 %t332, ptr %l199, !tbaa !23
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/check:Checker", ptr %t333, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t338 = getelementptr %"compiler/generic:Program", ptr %t336, i32 0, i32 2
  store ptr %t338, ptr %l202, !tbaa !29
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t339)
  store i32 %t341, ptr %l204
  br label %bb65
bb65:
  %t342 = load i64, ptr %l7, !tbaa !24
  %t343 = load ptr, ptr %l202, !tbaa !29
  %t344 = load i32, ptr %l204, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t343, i32 %t344, i64 %t342)
  store i32 %t346, ptr %l206
  br label %bb66
bb66:
  %t347 = load ptr, ptr %l198, !tbaa !29
  %t348 = load i32, ptr %l199, !tbaa !23
  %t349 = load i32, ptr %l206, !tbaa !23
  %t350 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t347, i32 %t348, i32 %t349)
  store i32 %t350, ptr %l207
  br label %bb67
bb67:
  store i32 2, ptr %l208
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t353 = getelementptr %"compiler/check:Checker", ptr %t351, i32 0, i32 36
  %t354 = load i64, ptr %l16, !tbaa !24
  %t357 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t353, i64 %t354)
  store { i64, ptr } %t357, ptr %l212
  br label %bb68
bb68:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load %"compiler/source:Span", ptr %l1
  %t363 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t358, i32 1, %"compiler/source:Span" %t359)
  store i32 %t363, ptr %l216
  br label %bb69
bb69:
  %t364 = load i32, ptr %l208, !range !{i32 0, i32 5}
  %t365 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t366 = load i32, ptr %l216, !tbaa !23
  %t368 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t364, i64 0, { i64, ptr } %t365, ptr null, i32 %t366, i32 0, i1 false)
  store %"compiler/typed:Make" %t368, ptr %l218
  br label %bb70
bb70:
  %t369 = load %"compiler/typed:Make", ptr %l218
  %t370 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t369, ptr %t370
  store { i64, [5 x i64] } zeroinitializer, ptr %t371
  %t372 = getelementptr { i64, [5 x i64] }, ptr %t371, i32 0, i32 0
  store i64 7, ptr %t372
  %t373 = load %"compiler/source:Span", ptr %l195
  %t374 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t373, 0
  %t375 = load i32, ptr %l207, !tbaa !23
  %t376 = insertvalue { %"compiler/source:Span", i32, ptr } %t374, i32 %t375, 1
  %t378 = insertvalue { %"compiler/source:Span", i32, ptr } %t376, ptr %t370, 2
  %t379 = getelementptr { i64, [5 x i64] }, ptr %t371, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t378, ptr %t379
  %t380 = load { i64, [5 x i64] }, ptr %t371
  %t381 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t381, ptr %lp23
  %t383 = load ptr, ptr %lp23
  store { i64, [5 x i64] } %t380, ptr %t383
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/check:Checker", ptr %t384, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !29
  %t389 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %s0, ptr %s0, ptr %t387, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d3, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i64 %t389, ptr %l223
  br label %bb71
bb71:
  %t390 = load i64, ptr %l223, !tbaa !24
  %t391 = load ptr, ptr %l0, !tbaa !29
  store ptr %t391, ptr %l224, !tbaa !29
  %t392 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t392, ptr %l225
  %t393 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t393, ptr %l226
  store i64 %t390, ptr %l227, !tbaa !24
  %t395 = icmp sge i64 0, 0
  br i1 %t395, label %bb72, label %bb73
bb72:
  %t397 = icmp sle i64 0, 1152921504606846975
  br i1 %t397, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_2f076b8c12fc1f2b_72a0a04988c2c8b7)
  unreachable
bb74:
  %t399 = mul i64 0, 8
  %t400 = insertvalue { i64, ptr } undef, i64 0, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t401, ptr %l230, !tbaa !27
  %t402 = load ptr, ptr %l15, !tbaa !29
  %t403 = load ptr, ptr %lp23
  %t404 = mul i64 2, 8
  %t405 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t404)
  %t406 = insertvalue { i64, ptr } undef, i64 2, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  store { i64, ptr } %t407, ptr %l233, !tbaa !27
  %t409 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr ptr, ptr %t410, i64 0
  store ptr %t402, ptr %t411, !tbaa !39
  %t413 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = getelementptr ptr, ptr %t414, i64 1
  store ptr %t403, ptr %t415, !tbaa !39
  %t416 = icmp sge i64 0, 0
  br i1 %t416, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_2f076b8c12fc1f2b_72a0a04988c2c8b7)
  unreachable
bb76:
  %t418 = icmp sle i64 0, 2305843009213693951
  br i1 %t418, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_8ce0cb83e6566f16_6a0b4dbe19b2f402)
  unreachable
bb78:
  %t420 = mul i64 0, 4
  %t421 = insertvalue { i64, ptr } undef, i64 0, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t423 = load ptr, ptr %l224, !tbaa !29
  %t424 = load %"compiler/source:Span", ptr %l225
  %t425 = load %"compiler/source:Span", ptr %l226
  %t426 = load i64, ptr %l227, !tbaa !24
  %t427 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t428 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t430 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t423, %"compiler/source:Span" %t424, %"compiler/source:Span" %t425, i64 %t426, ptr null, { i64, ptr } %t427, { i64, ptr } %t428, { i64, ptr } %t422)
  store ptr %t430, ptr %l237
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_8ce0cb83e6566f16_6a0b4dbe19b2f402)
  unreachable
bb80:
  %t431 = load ptr, ptr %l237, !tbaa !29
  store ptr %t431, ptr %l25, !tbaa !29
  %t432 = load ptr, ptr %l25, !tbaa !29
  %t435 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t432)
  store i32 %t435, ptr %l240
  br label %bb81
bb81:
  %t436 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t437 = load i32, ptr %l240, !tbaa !23
  %t439 = icmp eq i32 %t437, %t436
  br i1 %t439, label %bb82, label %bb83
bb82:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load %"compiler/source:Span", ptr %l1
  %t445 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t441, %"compiler/source:Span" %t442)
  store ptr %t445, ptr %l245
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_scope_close(ptr %s0)
  %t446 = load ptr, ptr %l245, !tbaa !29
  store ptr %t446, ptr %rv
  br label %ret
bb85:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 37
  %t451 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t449)
  store i64 %t451, ptr %l248
  br label %bb86
bb86:
  %t452 = load i64, ptr %l248, !tbaa !24
  store i64 %t452, ptr %l26, !tbaa !24
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load %"compiler/source:Span", ptr %l1
  %t455 = load ptr, ptr %l25, !tbaa !29
  %t459 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v2, ptr %v2, ptr %t453, %"compiler/source:Span" %t454, ptr %t455)
  store ptr %t459, ptr %l252
  br label %bb87
bb87:
  %t460 = load ptr, ptr %l252, !tbaa !29
  store ptr %t460, ptr %l27, !tbaa !29
  %t461 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t461, ptr %l253
  %t462 = load i32, ptr %l3, !tbaa !23
  store i32 %t462, ptr %l254, !tbaa !23
  store i32 1, ptr %l255
  %t463 = load i64, ptr %l7, !tbaa !24
  %t465 = sub i64 %t463, 1
  store i64 %t465, ptr %l257, !tbaa !24
  %t466 = icmp sge i64 0, 0
  br i1 %t466, label %bb88, label %bb89
bb88:
  %t468 = icmp sle i64 0, 1152921504606846975
  br i1 %t468, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_83b919d2f60ab835_29fa8ffb2c40f121)
  unreachable
bb90:
  %t470 = mul i64 0, 8
  %t471 = insertvalue { i64, ptr } undef, i64 0, 0
  %t472 = insertvalue { i64, ptr } %t471, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t473 = load i32, ptr %l255, !range !{i32 0, i32 5}
  %t474 = load i64, ptr %l257, !tbaa !24
  %t477 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t473, i64 %t474, { i64, ptr } %t472, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t477, ptr %l262
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_83b919d2f60ab835_29fa8ffb2c40f121)
  unreachable
bb92:
  %t478 = load %"compiler/typed:Make", ptr %l262
  %t479 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t478, ptr %t479
  store { i64, [5 x i64] } zeroinitializer, ptr %t480
  %t481 = getelementptr { i64, [5 x i64] }, ptr %t480, i32 0, i32 0
  store i64 7, ptr %t481
  %t482 = load %"compiler/source:Span", ptr %l253
  %t483 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t482, 0
  %t484 = load i32, ptr %l254, !tbaa !23
  %t485 = insertvalue { %"compiler/source:Span", i32, ptr } %t483, i32 %t484, 1
  %t487 = insertvalue { %"compiler/source:Span", i32, ptr } %t485, ptr %t479, 2
  %t488 = getelementptr { i64, [5 x i64] }, ptr %t480, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t487, ptr %t488
  %t489 = load { i64, [5 x i64] }, ptr %t480
  %t491 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t489, ptr %t491
  store ptr %t491, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  %t493 = load i64, ptr %l7, !tbaa !24
  %t495 = sub i64 %t493, 1
  store i64 %t495, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t497 = load i64, ptr %l30, !tbaa !24
  %t498 = load i64, ptr %l29, !tbaa !24
  %t501 = icmp sgt i64 %t497, %t498
  br i1 %t501, label %bb93, label %bb94
bb93:
  %t503 = load i64, ptr %l31, !tbaa !24
  %t505 = icmp sgt i64 %t503, 0
  br i1 %t505, label %bb95, label %bb96
bb94:
  store i64 0, ptr %l271, !tbaa !24
  br label %bb98
bb95:
  %t507 = load i64, ptr %l30, !tbaa !24
  %t508 = load i64, ptr %l29, !tbaa !24
  %t511 = sub i64 %t507, %t508
  %t512 = load i64, ptr %l31, !tbaa !24
  %t515 = add i64 %t511, %t512
  %t517 = sub i64 %t515, 1
  %t518 = load i64, ptr %l31, !tbaa !24
  %t521 = sdiv i64 %t517, %t518
  store i64 %t521, ptr %l274, !tbaa !24
  br label %bb97
bb96:
  store i64 0, ptr %l274, !tbaa !24
  br label %bb97
bb97:
  %t523 = load i64, ptr %l274, !tbaa !24
  store i64 %t523, ptr %l271, !tbaa !24
  br label %bb98
bb98:
  %t524 = load i64, ptr %l271, !tbaa !24
  store i64 %t524, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb99
bb99:
  %t525 = load i64, ptr %l33, !tbaa !24
  %t526 = load i64, ptr %l32, !tbaa !24
  %t529 = icmp slt i64 %t525, %t526
  %t531 = xor i1 %t529, true
  br i1 %t531, label %bb100, label %bb101
bb100:
  br label %bb114
bb101:
  br label %bb102
bb102:
  %t533 = load i64, ptr %l29, !tbaa !24
  %t534 = load i64, ptr %l33, !tbaa !24
  %t535 = load i64, ptr %l31, !tbaa !24
  %t538 = mul i64 %t534, %t535
  %t541 = add i64 %t533, %t538
  %t543 = load i64, ptr %l7, !tbaa !24
  %t545 = sub i64 %t543, 2
  %t549 = sub i64 %t545, %t541
  store i64 %t549, ptr %l35, !tbaa !24
  %t551 = load ptr, ptr %l0, !tbaa !29
  store ptr %t551, ptr %l296, !tbaa !29
  %t552 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t552, ptr %l297
  %t553 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t553, ptr %l298, !tbaa !23
  store i32 13, ptr %l299
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t555 = load %"compiler/source:Span", ptr %l1
  %t556 = load ptr, ptr %l27, !tbaa !29
  %t560 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t554, %"compiler/source:Span" %t555, ptr %t556)
  store ptr %t560, ptr %l303
  br label %bb103
bb103:
  %t561 = load ptr, ptr %l0, !tbaa !29
  store ptr %t561, ptr %l304, !tbaa !29
  %t562 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t562, ptr %l305
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t565 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t563)
  store i32 %t565, ptr %l307
  br label %bb104
bb104:
  %t566 = load i64, ptr %l35, !tbaa !24
  %t567 = load ptr, ptr %l304, !tbaa !29
  %t568 = load %"compiler/source:Span", ptr %l305
  %t569 = load i32, ptr %l307, !tbaa !23
  %t571 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t567, %"compiler/source:Span" %t568, i32 %t569, i64 %t566)
  store ptr %t571, ptr %l309
  br label %bb105
bb105:
  %t572 = load ptr, ptr %l309, !tbaa !29
  %t573 = load ptr, ptr %l296, !tbaa !29
  %t574 = load %"compiler/source:Span", ptr %l297
  %t575 = load i32, ptr %l298, !tbaa !23
  %t576 = load i32, ptr %l299, !range !{i32 0, i32 52}
  %t577 = load ptr, ptr %l303, !tbaa !29
  %t579 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v2, ptr %t573, %"compiler/source:Span" %t574, i32 %t575, i32 %t576, ptr %t577, ptr %t572)
  store ptr %t579, ptr %l311
  br label %bb106
bb106:
  %t580 = load ptr, ptr %l311, !tbaa !29
  store ptr %t580, ptr %l36, !tbaa !29
  %t581 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t581, ptr %l312
  %t582 = load i32, ptr %l3, !tbaa !23
  store i32 %t582, ptr %l313, !tbaa !23
  store i32 1, ptr %l314
  %t583 = load i64, ptr %l35, !tbaa !24
  store i64 %t583, ptr %l315, !tbaa !24
  %t584 = icmp sge i64 0, 0
  br i1 %t584, label %bb107, label %bb108
bb107:
  %t586 = icmp sle i64 0, 1152921504606846975
  br i1 %t586, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_ace0e8d6a1b00ac8_e6e4f855bb613414)
  unreachable
bb109:
  %t588 = mul i64 0, 8
  %t589 = insertvalue { i64, ptr } undef, i64 0, 0
  %t590 = insertvalue { i64, ptr } %t589, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t591 = load i32, ptr %l314, !range !{i32 0, i32 5}
  %t592 = load i64, ptr %l315, !tbaa !24
  %t595 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t591, i64 %t592, { i64, ptr } %t590, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t595, ptr %l320
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_ace0e8d6a1b00ac8_e6e4f855bb613414)
  unreachable
bb111:
  %t596 = load %"compiler/typed:Make", ptr %l320
  %t597 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t596, ptr %t597
  store { i64, [5 x i64] } zeroinitializer, ptr %t598
  %t599 = getelementptr { i64, [5 x i64] }, ptr %t598, i32 0, i32 0
  store i64 7, ptr %t599
  %t600 = load %"compiler/source:Span", ptr %l312
  %t601 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t600, 0
  %t602 = load i32, ptr %l313, !tbaa !23
  %t603 = insertvalue { %"compiler/source:Span", i32, ptr } %t601, i32 %t602, 1
  %t605 = insertvalue { %"compiler/source:Span", i32, ptr } %t603, ptr %t597, 2
  %t606 = getelementptr { i64, [5 x i64] }, ptr %t598, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t605, ptr %t606
  %t607 = load { i64, [5 x i64] }, ptr %t598
  %t608 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t608, ptr %lp37
  %t610 = load ptr, ptr %lp37
  store { i64, [5 x i64] } %t607, ptr %t610
  %t611 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t611, ptr %l323
  %t612 = load i32, ptr %l3, !tbaa !23
  store i32 %t612, ptr %l324, !tbaa !23
  %t613 = load ptr, ptr %l36, !tbaa !29
  %t614 = load ptr, ptr %lp37
  %t615 = load ptr, ptr %l28, !tbaa !29
  %t619 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t613, ptr %t614, ptr %t615)
  store %"compiler/typed:Cond" %t619, ptr %l328
  br label %bb112
bb112:
  %t620 = load %"compiler/typed:Cond", ptr %l328
  %t621 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Cond" %t620, ptr %t621
  store { i64, [5 x i64] } zeroinitializer, ptr %t622
  %t623 = getelementptr { i64, [5 x i64] }, ptr %t622, i32 0, i32 0
  store i64 11, ptr %t623
  %t624 = load %"compiler/source:Span", ptr %l323
  %t625 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t624, 0
  %t626 = load i32, ptr %l324, !tbaa !23
  %t627 = insertvalue { %"compiler/source:Span", i32, ptr } %t625, i32 %t626, 1
  %t629 = insertvalue { %"compiler/source:Span", i32, ptr } %t627, ptr %t621, 2
  %t630 = getelementptr { i64, [5 x i64] }, ptr %t622, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t629, ptr %t630
  %t631 = load { i64, [5 x i64] }, ptr %t622
  %t633 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t631, ptr %t633
  store ptr %t633, ptr %l28, !tbaa !29
  br label %bb113
bb113:
  %t635 = load i64, ptr %l33, !tbaa !24
  %t637 = add i64 %t635, 1
  store i64 %t637, ptr %l33, !tbaa !24
  br label %bb99
bb114:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/check:Checker", ptr %t639, i32 0, i32 37
  %t643 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t641)
  store i64 %t643, ptr %l336
  br label %bb115
bb115:
  %t644 = load i64, ptr %l26, !tbaa !24
  %t645 = load i64, ptr %l336, !tbaa !24
  %t647 = icmp sgt i64 %t645, %t644
  br i1 %t647, label %bb116, label %bb117
bb116:
  %t649 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t649, ptr %l339
  %t650 = load i32, ptr %l3, !tbaa !23
  store i32 %t650, ptr %l340, !tbaa !23
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = getelementptr %"compiler/check:Checker", ptr %t651, i32 0, i32 37
  %t654 = load i64, ptr %l26, !tbaa !24
  %t657 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t653, i64 %t654)
  store { i64, ptr } %t657, ptr %l344
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t658 = load ptr, ptr %l28, !tbaa !29
  %t660 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t662 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t660, ptr %t658, i1 false)
  store %"compiler/typed:Seq" %t662, ptr %l347
  br label %bb119
bb119:
  %t663 = load %"compiler/typed:Seq", ptr %l347
  %t664 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t663, ptr %t664
  store { i64, [5 x i64] } zeroinitializer, ptr %t665
  %t666 = getelementptr { i64, [5 x i64] }, ptr %t665, i32 0, i32 0
  store i64 12, ptr %t666
  %t667 = load %"compiler/source:Span", ptr %l339
  %t668 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t667, 0
  %t669 = load i32, ptr %l340, !tbaa !23
  %t670 = insertvalue { %"compiler/source:Span", i32, ptr } %t668, i32 %t669, 1
  %t672 = insertvalue { %"compiler/source:Span", i32, ptr } %t670, ptr %t664, 2
  %t673 = getelementptr { i64, [5 x i64] }, ptr %t665, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t672, ptr %t673
  %t674 = load { i64, [5 x i64] }, ptr %t665
  %t676 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t674, ptr %t676
  call void @__olang_scope_close(ptr %s0)
  store ptr %t676, ptr %rv
  br label %ret
bb120:
  %t678 = load ptr, ptr %l28, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t678, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i64
  %l22 = alloca i32
  %l26 = alloca i64
  %l29 = alloca i64
  %l49 = alloca i1
  %l52 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l59 = alloca i32
  %l62 = alloca ptr
  %l64 = alloca ptr
  %l71 = alloca i32
  %l82 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca i64
  %l98 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca %"compiler/diagmsg:Msg"
  %l103 = alloca i64
  %l107 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l112 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l117 = alloca %"compiler/diagmsg:Msg"
  %l118 = alloca i64
  %l122 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l128 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l138 = alloca %"compiler/diagmsg:Msg"
  %l139 = alloca i64
  %l144 = alloca ptr
  %l146 = alloca ptr
  %l149 = alloca ptr
  %l155 = alloca i1
  %l156 = alloca i1
  %l159 = alloca i1
  %l163 = alloca i64
  %l168 = alloca ptr
  %l172 = alloca ptr
  %l181 = alloca i64
  %l184 = alloca ptr
  %l185 = alloca %"compiler/source:Span"
  %l186 = alloca i32
  %l189 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l204 = alloca %"compiler/diagmsg:Msg"
  %l205 = alloca i64
  %l209 = alloca ptr
  %l214 = alloca i32
  %l215 = alloca { i64, ptr }
  %l220 = alloca i1
  %l221 = alloca { i64, ptr }
  %l226 = alloca i1
  %l229 = alloca i1
  %l231 = alloca i1
  %l235 = alloca i32
  %l240 = alloca i64
  %l244 = alloca i64
  %l250 = alloca ptr
  %l255 = alloca i32
  %l256 = alloca { i64, ptr }
  %l267 = alloca i1
  %l268 = alloca i32
  %l272 = alloca i32
  %l276 = alloca ptr
  %l281 = alloca i32
  %l282 = alloca i64
  %l285 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l288 = alloca i1
  %l290 = alloca i1
  %l291 = alloca i64
  %l293 = alloca ptr
  %l297 = alloca i1
  %l298 = alloca ptr
  %l301 = alloca ptr
  %l306 = alloca i32
  %l307 = alloca i32
  %l308 = alloca { i64, ptr }
  %l309 = alloca { i64, ptr }
  %l311 = alloca i1
  %l312 = alloca i1
  %l318 = alloca ptr
  %l322 = alloca ptr
  %l323 = alloca %"compiler/source:Span"
  %l326 = alloca { i64, ptr }
  %l329 = alloca { i64, ptr }
  %l331 = alloca %"compiler/diagmsg:Msg"
  %l332 = alloca i64
  %l334 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca ptr
  %t93 = alloca { i64, [4 x i64] }, align 8
  %t703 = alloca { i64, [4 x i64] }, align 8
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
  %t1 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t5 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t3)
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l6, !tbaa !23
  store i64 0, ptr %l7, !tbaa !24
  store i64 4, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l9, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l9, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l9, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l29, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l29, !tbaa !24
  store i64 %t33, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l26, !tbaa !24
  store i64 %t34, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l11, !tbaa !24
  %t36 = load i64, ptr %l10, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l11, !tbaa !24
  %t45 = load i64, ptr %l9, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l12, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l6, !tbaa !23
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l49
  br label %bb12
bb12:
  %t58 = load i1, ptr %l49, !tbaa !21
  %t59 = xor i1 %t58, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l5, !tbaa !29
  store ptr %t62, ptr %l52, !tbaa !29
  %t63 = load ptr, ptr %l52, !tbaa !29
  %t64 = call ptr @__olang_scope_of(ptr %t63, ptr null)
  %t65 = ptrtoint ptr %t64 to i64
  %t67 = inttoptr i64 %t65 to ptr
  %t69 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %t67, ptr %t61, ptr %t69)
  br label %bb16
bb16:
  %t70 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t70, ptr %l54
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l6, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l59
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t83 = load ptr, ptr %l5, !tbaa !29
  store ptr %t83, ptr %l62, !tbaa !29
  %t84 = load ptr, ptr %l62, !tbaa !29
  %t85 = call ptr @__olang_scope_of(ptr %t84, ptr null)
  %t86 = ptrtoint ptr %t85 to i64
  %t88 = inttoptr i64 %t86 to ptr
  %t91 = load ptr, ptr %l62, !tbaa !29
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t88, ptr %v2, ptr %t81, %"compiler/source:Span" %t82, ptr %t91)
  store ptr %t92, ptr %l64
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 0
  store i64 2, ptr %t94
  %t95 = load %"compiler/source:Span", ptr %l54
  %t96 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t95, 0
  %t97 = load i32, ptr %l59, !tbaa !23
  %t98 = insertvalue { %"compiler/source:Span", i32, ptr } %t96, i32 %t97, 1
  %t99 = load ptr, ptr %l64, !tbaa !29
  %t100 = insertvalue { %"compiler/source:Span", i32, ptr } %t98, ptr %t99, 2
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t100, ptr %t101
  %t102 = load { i64, [4 x i64] }, ptr %t93
  %t104 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t102, ptr %t104
  store ptr %t104, ptr %l5, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l6, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l71
  br label %bb19
bb19:
  %t116 = load i32, ptr %l71, !tbaa !23
  store i32 %t116, ptr %l6, !tbaa !23
  br label %bb20
bb20:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l11, !tbaa !24
  br label %bb8
bb21:
  %t121 = load i32, ptr %l6, !tbaa !23
  %t122 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t125 = icmp eq i32 %t121, %t122
  br i1 %t125, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l6, !tbaa !23
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t133, i32 %t134)
  store i1 %t137, ptr %l82
  br label %bb25
bb25:
  %t138 = load i1, ptr %l82, !tbaa !21
  br i1 %t138, label %bb26, label %bb27
bb26:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l83, !tbaa !29
  %t140 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t140, ptr %l84
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l1
  %t145 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t141, %"compiler/source:Span" %t142)
  store { i64, ptr } %t145, ptr %l87
  br label %bb28
bb27:
  br label %bb38
bb28:
  %t146 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t146, ptr %l88, !tbaa !27
  %t147 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t149 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t150 = load i32, ptr %t149, !tbaa !23
  %t153 = sub i32 %t148, %t150
  %t155 = sext i32 %t153 to i64
  %t157 = sub i64 %t155, 1
  store i64 %t157, ptr %l93, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  store i64 %t159, ptr %l94, !tbaa !24
  %t160 = icmp sge i64 0, 0
  br i1 %t160, label %bb29, label %bb30
bb29:
  %t162 = load i64, ptr %l93, !tbaa !24
  %t163 = icmp sle i64 0, %t162
  br i1 %t163, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_6fc51f469184622a_dd25e01ab1dfd0e)
  unreachable
bb31:
  %t165 = load i64, ptr %l93, !tbaa !24
  %t166 = load i64, ptr %l94, !tbaa !24
  %t167 = icmp sle i64 %t165, %t166
  br i1 %t167, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_6fc51f469184622a_dd25e01ab1dfd0e)
  unreachable
bb33:
  %t169 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l93, !tbaa !24
  %t172 = getelementptr i8, ptr %t170, i64 0
  %t173 = sub i64 %t171, 0
  %t174 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t172, 1
  store { i64, ptr } %t175, ptr %l98, !tbaa !27
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l4, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t176, i32 %t177)
  store { i64, ptr } %t180, ptr %l101
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_6fc51f469184622a_dd25e01ab1dfd0e)
  unreachable
bb35:
  %t181 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t183 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadFieldUnnarrowed(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t181, { i64, ptr } %t182)
  store %"compiler/diagmsg:Msg" %t183, ptr %l102
  br label %bb36
bb36:
  %t184 = load ptr, ptr %l83, !tbaa !29
  %t185 = load %"compiler/source:Span", ptr %l84
  %t186 = load %"compiler/diagmsg:Msg", ptr %l102
  %t187 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t184, %"compiler/source:Span" %t185, %"compiler/diagmsg:Msg" %t186)
  store i64 %t187, ptr %l103
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb38:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load i32, ptr %l6, !tbaa !23
  %t193 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t189, i32 %t190)
  store i1 %t193, ptr %l107
  br label %bb39
bb39:
  %t194 = load i1, ptr %l107, !tbaa !21
  br i1 %t194, label %bb40, label %bb41
bb40:
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l108, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t196, ptr %l109
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l6, !tbaa !23
  %t201 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t197, i32 %t198)
  store { i64, ptr } %t201, ptr %l112
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t202 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  %t204 = extractvalue { i64, ptr } %t202, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  store { i64, ptr } %t208, ptr %l113, !tbaa !27
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l4, !tbaa !23
  %t213 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t209, i32 %t210)
  store { i64, ptr } %t213, ptr %l116
  br label %bb43
bb43:
  %t214 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t215 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t216 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldOfEnum(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t214, { i64, ptr } %t215)
  store %"compiler/diagmsg:Msg" %t216, ptr %l117
  br label %bb44
bb44:
  %t217 = load ptr, ptr %l108, !tbaa !29
  %t218 = load %"compiler/source:Span", ptr %l109
  %t219 = load %"compiler/diagmsg:Msg", ptr %l117
  %t220 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t217, %"compiler/source:Span" %t218, %"compiler/diagmsg:Msg" %t219)
  store i64 %t220, ptr %l118
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb46:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l6, !tbaa !23
  %t226 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t222, i32 %t223)
  store i1 %t226, ptr %l122
  br label %bb47
bb47:
  %t227 = load i1, ptr %l122, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb48, label %bb49
bb48:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l124, !tbaa !29
  %t231 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t231, ptr %l125
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l6, !tbaa !23
  %t236 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t232, i32 %t233)
  store { i64, ptr } %t236, ptr %l128
  br label %bb50
bb49:
  br label %bb55
bb50:
  %t237 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 0
  %t239 = extractvalue { i64, ptr } %t237, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  store { i64, ptr } %t243, ptr %l129, !tbaa !27
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i32, ptr %l4, !tbaa !23
  %t248 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t244, i32 %t245)
  store { i64, ptr } %t248, ptr %l132
  br label %bb51
bb51:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i32, ptr %l6, !tbaa !23
  %t251 = load i32, ptr %l4, !tbaa !23
  %t255 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v0, ptr %t249, i32 %t250, i32 %t251, i1 false)
  store { i64, ptr } %t255, ptr %l136
  br label %bb52
bb52:
  %t256 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 0
  %t258 = extractvalue { i64, ptr } %t256, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t263 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t264 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t266 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t263, { i64, ptr } %t264, { i64, ptr } %t262)
  store %"compiler/diagmsg:Msg" %t266, ptr %l138
  br label %bb53
bb53:
  %t267 = load ptr, ptr %l124, !tbaa !29
  %t268 = load %"compiler/source:Span", ptr %l125
  %t269 = load %"compiler/diagmsg:Msg", ptr %l138
  %t270 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t267, %"compiler/source:Span" %t268, %"compiler/diagmsg:Msg" %t269)
  store i64 %t270, ptr %l139
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb55:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/check:Checker", ptr %t272, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 0
  %t278 = load ptr, ptr %t277, !tbaa !29
  %t280 = getelementptr %"compiler/load:Loader", ptr %t278, i32 0, i32 10
  store ptr %t280, ptr %l144, !tbaa !29
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t281)
  store ptr %t283, ptr %l146
  br label %bb56
bb56:
  %t284 = load ptr, ptr %l146, !tbaa !29
  %t286 = getelementptr %"compiler/check:frame", ptr %t284, i32 0, i32 1
  %t287 = load i64, ptr %t286, !tbaa !24
  %t288 = load ptr, ptr %l144, !tbaa !29
  %t290 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t288, i64 %t287)
  store ptr %t290, ptr %l149
  br label %bb57
bb57:
  %t291 = load ptr, ptr %l149, !tbaa !29
  %t293 = getelementptr %"compiler/load:Module", ptr %t291, i32 0, i32 3
  %t294 = load i1, ptr %t293, !tbaa !21
  store i1 %t294, ptr %l13, !tbaa !21
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/check:Checker", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t300 = load i32, ptr %l6, !tbaa !23
  %t303 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %t299, i32 %t300)
  store i1 %t303, ptr %l155
  br label %bb58
bb58:
  %t304 = load i1, ptr %l155, !tbaa !21
  br i1 %t304, label %bb59, label %bb60
bb59:
  %t305 = load i1, ptr %l13, !tbaa !21
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb61, label %bb62
bb60:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb65
bb61:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb64
bb62:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load i32, ptr %l6, !tbaa !23
  %t311 = load i32, ptr %l4, !tbaa !23
  %t315 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldIndex(ptr %v0, ptr %t309, i32 %t310, i32 %t311)
  store i64 %t315, ptr %l163
  br label %bb63
bb63:
  %t316 = load i64, ptr %l163, !tbaa !24
  %t317 = icmp slt i64 %t316, 0
  store i1 %t317, ptr %l159, !tbaa !21
  br label %bb64
bb64:
  %t319 = load i1, ptr %l159, !tbaa !21
  store i1 %t319, ptr %l156, !tbaa !21
  br label %bb65
bb65:
  %t320 = load i1, ptr %l156, !tbaa !21
  br i1 %t320, label %bb66, label %bb67
bb66:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load %"compiler/source:Span", ptr %l1
  %t323 = load %"compiler/source:Span", ptr %l2
  %t324 = load ptr, ptr %l5, !tbaa !29
  store ptr %t324, ptr %l168, !tbaa !29
  %t325 = load i32, ptr %l6, !tbaa !23
  %t326 = load i32, ptr %l4, !tbaa !23
  %t327 = load ptr, ptr %l168, !tbaa !29
  %t328 = call ptr @__olang_scope_of(ptr %t327, ptr null)
  %t329 = ptrtoint ptr %t328 to i64
  %t331 = inttoptr i64 %t329 to ptr
  %t335 = load ptr, ptr %l168, !tbaa !29
  %t338 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnVecField(ptr %v0, ptr %t331, ptr %v2, ptr %t321, %"compiler/source:Span" %t322, %"compiler/source:Span" %t323, ptr %t335, i32 %t325, i32 %t326)
  store ptr %t338, ptr %l172
  br label %bb68
bb67:
  br label %bb72
bb68:
  %t339 = load ptr, ptr %l172, !tbaa !29
  store ptr %t339, ptr %l14, !tbaa !29
  %t340 = load ptr, ptr %l14, !tbaa !29
  %t342 = icmp eq ptr %t340, null
  %t344 = xor i1 %t342, true
  br i1 %t344, label %bb69, label %bb70
bb69:
  %t346 = load ptr, ptr %l14, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t346, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l6, !tbaa !23
  %t351 = load i32, ptr %l4, !tbaa !23
  %t355 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldIndex(ptr %v0, ptr %t349, i32 %t350, i32 %t351)
  store i64 %t355, ptr %l181
  br label %bb73
bb73:
  %t356 = load i64, ptr %l181, !tbaa !24
  store i64 %t356, ptr %l15, !tbaa !24
  %t357 = load i64, ptr %l15, !tbaa !24
  %t359 = icmp slt i64 %t357, 0
  br i1 %t359, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s11
  %t361 = load ptr, ptr %l0, !tbaa !29
  store ptr %t361, ptr %l184, !tbaa !29
  %t362 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t362, ptr %l185
  %t363 = load i32, ptr %l6, !tbaa !23
  store i32 %t363, ptr %l186, !tbaa !23
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load i32, ptr %l4, !tbaa !23
  %t368 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %s11, ptr %t364, i32 %t365)
  store { i64, ptr } %t368, ptr %l189
  br label %bb76
bb75:
  br label %bb82
bb76:
  %t369 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t371 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t372 = extractvalue { i64, ptr } %t371, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = add i64 %t370, %t373
  %t375 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t374)
  call void @olang_textcopy(ptr %t375, ptr %t369, i64 %t370)
  %t376 = getelementptr i8, ptr %t375, i64 %t370
  call void @olang_textcopy(ptr %t376, ptr %t372, i64 %t373)
  %t377 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t375, 1
  %t380 = extractvalue { i64, ptr } %t378, 0
  %t381 = extractvalue { i64, ptr } %t378, 1
  %t382 = mul i64 %t380, 1
  %t383 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t382)
  call void @llvm.memcpy.p0.p0.i64(ptr %t383, ptr %t381, i64 %t382, i1 false)
  %t384 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t383, 1
  store { i64, ptr } %t385, ptr %l191, !tbaa !27
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load i32, ptr %l6, !tbaa !23
  %t390 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t386, i32 %t387)
  store { i64, ptr } %t390, ptr %l194
  br label %bb77
bb77:
  %t391 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t391, 0
  %t393 = extractvalue { i64, ptr } %t391, 1
  %t394 = mul i64 %t392, 1
  %t395 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t394)
  call void @llvm.memcpy.p0.p0.i64(ptr %t395, ptr %t393, i64 %t394, i1 false)
  %t396 = insertvalue { i64, ptr } undef, i64 %t392, 0
  %t397 = insertvalue { i64, ptr } %t396, ptr %t395, 1
  store { i64, ptr } %t397, ptr %l195, !tbaa !27
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t399 = load i32, ptr %l4, !tbaa !23
  %t402 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t398, i32 %t399)
  store { i64, ptr } %t402, ptr %l198
  br label %bb78
bb78:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load i32, ptr %l6, !tbaa !23
  %t405 = load i32, ptr %l4, !tbaa !23
  %t409 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v0, ptr %t403, i32 %t404, i32 %t405, i1 true)
  store { i64, ptr } %t409, ptr %l202
  br label %bb79
bb79:
  %t410 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t411 = extractvalue { i64, ptr } %t410, 0
  %t412 = extractvalue { i64, ptr } %t410, 1
  %t413 = mul i64 %t411, 1
  %t414 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t413)
  call void @llvm.memcpy.p0.p0.i64(ptr %t414, ptr %t412, i64 %t413, i1 false)
  %t415 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t414, 1
  %t417 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t420 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t417, { i64, ptr } %t418, { i64, ptr } %t416)
  store %"compiler/diagmsg:Msg" %t420, ptr %l204
  br label %bb80
bb80:
  %t421 = load ptr, ptr %l184, !tbaa !29
  %t422 = load %"compiler/source:Span", ptr %l185
  %t423 = load i32, ptr %l186, !tbaa !23
  %t424 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t425 = load %"compiler/diagmsg:Msg", ptr %l204
  %t426 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s11, ptr %v0, ptr %t421, %"compiler/source:Span" %t422, i32 %t423, { i64, ptr } %t424, %"compiler/diagmsg:Msg" %t425)
  store i64 %t426, ptr %l205
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb82:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/check:Checker", ptr %t428, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !29
  %t433 = getelementptr %"compiler/generic:Program", ptr %t431, i32 0, i32 2
  store ptr %t433, ptr %l209, !tbaa !29
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/check:Checker", ptr %t434, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !29
  %t439 = getelementptr %"compiler/generic:Program", ptr %t437, i32 0, i32 2
  %t440 = load i32, ptr %l6, !tbaa !23
  %t443 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t439, i32 %t440)
  store i32 %t443, ptr %l214
  br label %bb83
bb83:
  %t444 = load ptr, ptr %l209, !tbaa !29
  %t445 = load i32, ptr %l214, !tbaa !23
  %t446 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t444, i32 %t445)
  store { i64, ptr } %t446, ptr %l215
  br label %bb84
bb84:
  %t447 = load { i64, ptr }, ptr %l215, !tbaa !27
  store { i64, ptr } %t447, ptr %l16, !tbaa !27
  %t448 = load i64, ptr %l15, !tbaa !24
  %t449 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t451 = extractvalue { i64, ptr } %t449, 0
  %t454 = icmp slt i64 %t448, %t451
  br i1 %t454, label %bb85, label %bb86
bb85:
  %t456 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t456, ptr %l221, !tbaa !27
  %t457 = load i64, ptr %l15, !tbaa !24
  %t459 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = getelementptr i32, ptr %t460, i64 %t457
  %t462 = load i32, ptr %t461, !tbaa !33
  %t463 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t466 = icmp eq i32 %t462, %t463
  store i1 %t466, ptr %l220, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb87
bb87:
  %t468 = load i1, ptr %l220, !tbaa !21
  br i1 %t468, label %bb88, label %bb89
bb88:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load i32, ptr %l6, !tbaa !23
  %t473 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t469, i32 %t470, i64 -1)
  store i1 %t473, ptr %l229
  br label %bb90
bb89:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb91
bb90:
  %t474 = load i1, ptr %l229, !tbaa !21
  %t475 = xor i1 %t474, true
  store i1 %t475, ptr %l226, !tbaa !21
  br label %bb91
bb91:
  %t477 = load i1, ptr %l226, !tbaa !21
  br i1 %t477, label %bb92, label %bb93
bb92:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t480 = getelementptr %"compiler/check:Checker", ptr %t478, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !29
  %t482 = load i32, ptr %l6, !tbaa !23
  %t485 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t481, i32 %t482)
  store i32 %t485, ptr %l235
  br label %bb94
bb93:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb95
bb94:
  %t486 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t487 = load i32, ptr %l235, !tbaa !23
  %t489 = icmp ne i32 %t487, %t486
  store i1 %t489, ptr %l231, !tbaa !21
  br label %bb95
bb95:
  %t491 = load i1, ptr %l231, !tbaa !21
  br i1 %t491, label %bb96, label %bb97
bb96:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load i32, ptr %l6, !tbaa !23
  %t496 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %t492, i32 %t493)
  store i64 %t496, ptr %l240
  br label %bb98
bb97:
  br label %bb106
bb98:
  %t497 = load i64, ptr %l240, !tbaa !24
  store i64 %t497, ptr %l17, !tbaa !24
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t500 = getelementptr %"compiler/check:Checker", ptr %t498, i32 0, i32 19
  %t501 = load i64, ptr %l17, !tbaa !24
  %t504 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t500, i64 %t501)
  store i64 %t504, ptr %l244
  br label %bb99
bb99:
  %t505 = load i64, ptr %l244, !tbaa !24
  %t506 = icmp eq i64 %t505, 0
  br i1 %t506, label %bb100, label %bb101
bb100:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %t508, i64 %t509)
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr %"compiler/check:Checker", ptr %t512, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !29
  %t517 = getelementptr %"compiler/generic:Program", ptr %t515, i32 0, i32 2
  store ptr %t517, ptr %l250, !tbaa !29
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t520 = getelementptr %"compiler/check:Checker", ptr %t518, i32 0, i32 1
  %t521 = load ptr, ptr %t520, !tbaa !29
  %t523 = getelementptr %"compiler/generic:Program", ptr %t521, i32 0, i32 2
  %t524 = load i32, ptr %l6, !tbaa !23
  %t527 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t523, i32 %t524)
  store i32 %t527, ptr %l255
  br label %bb103
bb103:
  %t528 = load ptr, ptr %l250, !tbaa !29
  %t529 = load i32, ptr %l255, !tbaa !23
  %t530 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t528, i32 %t529)
  store { i64, ptr } %t530, ptr %l256
  br label %bb104
bb104:
  %t531 = load { i64, ptr }, ptr %l256, !tbaa !27
  store { i64, ptr } %t531, ptr %l16, !tbaa !27
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t532 = load i64, ptr %l15, !tbaa !24
  %t533 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t535 = extractvalue { i64, ptr } %t533, 0
  %t538 = icmp sge i64 %t532, %t535
  br i1 %t538, label %bb107, label %bb108
bb107:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t540, %"compiler/source:Span" %t541, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d6, i32 0, i32 1) })
  br label %bb109
bb108:
  br label %bb110
bb109:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb110:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t547 = getelementptr %"compiler/check:Checker", ptr %t545, i32 0, i32 1
  %t548 = load ptr, ptr %t547, !tbaa !29
  %t549 = load i32, ptr %l6, !tbaa !23
  %t552 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t548, i32 %t549)
  store i1 %t552, ptr %l267
  br label %bb111
bb111:
  %t553 = load i1, ptr %l267, !tbaa !21
  br i1 %t553, label %bb112, label %bb113
bb112:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/check:Checker", ptr %t554, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !29
  %t558 = load i32, ptr %l6, !tbaa !23
  %t561 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t557, i32 %t558)
  store i32 %t561, ptr %l272
  br label %bb114
bb113:
  %t562 = load i32, ptr %l6, !tbaa !23
  store i32 %t562, ptr %l268, !tbaa !23
  br label %bb115
bb114:
  %t564 = load i32, ptr %l272, !tbaa !23
  store i32 %t564, ptr %l268, !tbaa !23
  br label %bb115
bb115:
  %t565 = load i32, ptr %l268, !tbaa !23
  store i32 %t565, ptr %l18, !tbaa !23
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t568 = getelementptr %"compiler/check:Checker", ptr %t566, i32 0, i32 1
  %t569 = load ptr, ptr %t568, !tbaa !29
  %t571 = getelementptr %"compiler/generic:Program", ptr %t569, i32 0, i32 2
  store ptr %t571, ptr %l276, !tbaa !29
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/check:Checker", ptr %t572, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !29
  %t577 = getelementptr %"compiler/generic:Program", ptr %t575, i32 0, i32 2
  %t578 = load i32, ptr %l18, !tbaa !23
  %t581 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t577, i32 %t578)
  store i32 %t581, ptr %l281
  br label %bb116
bb116:
  %t582 = load ptr, ptr %l276, !tbaa !29
  %t583 = load i32, ptr %l281, !tbaa !23
  %t584 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t582, i32 %t583)
  store i64 %t584, ptr %l282
  br label %bb117
bb117:
  %t585 = load i64, ptr %l282, !tbaa !24
  store i64 %t585, ptr %l19, !tbaa !24
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t587 = load i32, ptr %l4, !tbaa !23
  %t590 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t586, i32 %t587)
  store { i64, ptr } %t590, ptr %l285
  br label %bb118
bb118:
  %t591 = load { i64, ptr }, ptr %l285, !tbaa !27
  store { i64, ptr } %t591, ptr %l286, !tbaa !27
  %t592 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t593 = load ptr, ptr %t592, !tbaa !27
  %t594 = getelementptr i8, ptr %t593, i64 0
  %t595 = load i8, ptr %t594, !tbaa !32
  %t597 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t595)
  store i1 %t597, ptr %l288
  br label %bb119
bb119:
  %t598 = load i1, ptr %l288, !tbaa !21
  %t599 = xor i1 %t598, true
  br i1 %t599, label %bb120, label %bb121
bb120:
  %t601 = load i64, ptr %l19, !tbaa !24
  store i64 %t601, ptr %l291, !tbaa !24
  %t602 = load ptr, ptr %l0, !tbaa !29
  %t604 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t602)
  store ptr %t604, ptr %l293
  br label %bb122
bb121:
  store i1 false, ptr %l290, !tbaa !21
  br label %bb123
bb122:
  %t605 = load ptr, ptr %l293, !tbaa !29
  %t607 = getelementptr %"compiler/check:frame", ptr %t605, i32 0, i32 1
  %t608 = load i64, ptr %t607, !tbaa !24
  %t609 = load i64, ptr %l291, !tbaa !24
  %t611 = icmp ne i64 %t609, %t608
  store i1 %t611, ptr %l290, !tbaa !21
  br label %bb123
bb123:
  %t613 = load i1, ptr %l290, !tbaa !21
  br i1 %t613, label %bb124, label %bb125
bb124:
  %t614 = load ptr, ptr %l0, !tbaa !29
  store ptr %t614, ptr %l298, !tbaa !29
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = getelementptr %"compiler/check:Checker", ptr %t615, i32 0, i32 1
  %t618 = load ptr, ptr %t617, !tbaa !29
  %t620 = getelementptr %"compiler/generic:Program", ptr %t618, i32 0, i32 2
  store ptr %t620, ptr %l301, !tbaa !29
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/check:Checker", ptr %t621, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !29
  %t626 = getelementptr %"compiler/generic:Program", ptr %t624, i32 0, i32 2
  %t627 = load i32, ptr %l18, !tbaa !23
  %t630 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t626, i32 %t627)
  store i32 %t630, ptr %l306
  br label %bb126
bb125:
  store i1 false, ptr %l297, !tbaa !21
  br label %bb130
bb126:
  %t631 = load ptr, ptr %l301, !tbaa !29
  %t632 = load i32, ptr %l306, !tbaa !23
  %t633 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t631, i32 %t632)
  store i32 %t633, ptr %l307
  br label %bb127
bb127:
  %t634 = load ptr, ptr %l298, !tbaa !29
  %t635 = load i32, ptr %l307, !tbaa !23
  %t636 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t634, i32 %t635)
  store { i64, ptr } %t636, ptr %l308
  br label %bb128
bb128:
  %t637 = load { i64, ptr }, ptr %l308, !tbaa !27
  store { i64, ptr } %t637, ptr %l309, !tbaa !27
  %t638 = getelementptr { i64, ptr }, ptr %l309, i32 0, i32 1
  %t639 = load ptr, ptr %t638, !tbaa !27
  %t640 = getelementptr i8, ptr %t639, i64 0
  %t641 = load i8, ptr %t640, !tbaa !32
  %t643 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t641)
  store i1 %t643, ptr %l311
  br label %bb129
bb129:
  %t644 = load i1, ptr %l311, !tbaa !21
  store i1 %t644, ptr %l297, !tbaa !21
  br label %bb130
bb130:
  %t645 = load i1, ptr %l297, !tbaa !21
  br i1 %t645, label %bb131, label %bb132
bb131:
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t648 = getelementptr %"compiler/check:Checker", ptr %t646, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !29
  %t651 = getelementptr %"compiler/generic:Program", ptr %t649, i32 0, i32 0
  %t652 = load ptr, ptr %t651, !tbaa !29
  %t654 = getelementptr %"compiler/load:Loader", ptr %t652, i32 0, i32 10
  %t655 = load i64, ptr %l19, !tbaa !24
  %t658 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t654, i64 %t655)
  store ptr %t658, ptr %l318
  br label %bb133
bb132:
  store i1 false, ptr %l312, !tbaa !21
  br label %bb134
bb133:
  %t659 = load ptr, ptr %l318, !tbaa !29
  %t661 = getelementptr %"compiler/load:Module", ptr %t659, i32 0, i32 30
  %t662 = load i1, ptr %t661, !tbaa !21
  %t664 = xor i1 %t662, true
  store i1 %t664, ptr %l312, !tbaa !21
  br label %bb134
bb134:
  %t666 = load i1, ptr %l312, !tbaa !21
  br i1 %t666, label %bb135, label %bb136
bb135:
  %t667 = load ptr, ptr %l0, !tbaa !29
  store ptr %t667, ptr %l322, !tbaa !29
  %t668 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t668, ptr %l323
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t670 = load i32, ptr %l4, !tbaa !23
  %t673 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t669, i32 %t670)
  store { i64, ptr } %t673, ptr %l326
  br label %bb137
bb136:
  br label %bb141
bb137:
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i32, ptr %l6, !tbaa !23
  %t678 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t674, i32 %t675)
  store { i64, ptr } %t678, ptr %l329
  br label %bb138
bb138:
  %t679 = load { i64, ptr }, ptr %l329, !tbaa !27
  %t680 = extractvalue { i64, ptr } %t679, 0
  %t681 = extractvalue { i64, ptr } %t679, 1
  %t682 = mul i64 %t680, 1
  %t683 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t682)
  call void @llvm.memcpy.p0.p0.i64(ptr %t683, ptr %t681, i64 %t682, i1 false)
  %t684 = insertvalue { i64, ptr } undef, i64 %t680, 0
  %t685 = insertvalue { i64, ptr } %t684, ptr %t683, 1
  %t686 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t688 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t686, { i64, ptr } %t685)
  store %"compiler/diagmsg:Msg" %t688, ptr %l331
  br label %bb139
bb139:
  %t689 = load ptr, ptr %l322, !tbaa !29
  %t690 = load %"compiler/source:Span", ptr %l323
  %t691 = load %"compiler/diagmsg:Msg", ptr %l331
  %t692 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t689, %"compiler/source:Span" %t690, %"compiler/diagmsg:Msg" %t691)
  store i64 %t692, ptr %l332
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t693 = load %"compiler/source:Span", ptr %l1
  %t694 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t694, ptr %l334, !tbaa !27
  %t695 = load i64, ptr %l15, !tbaa !24
  %t697 = getelementptr { i64, ptr }, ptr %l334, i32 0, i32 1
  %t698 = load ptr, ptr %t697, !tbaa !27
  %t699 = getelementptr i32, ptr %t698, i64 %t695
  %t700 = load i32, ptr %t699, !tbaa !33
  %t701 = load ptr, ptr %l5, !tbaa !29
  %t702 = load i64, ptr %l15, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t703
  %t704 = getelementptr { i64, [4 x i64] }, ptr %t703, i32 0, i32 0
  store i64 3, ptr %t704
  %t706 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t693, 0
  %t708 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t706, i32 %t700, 1
  %t710 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t708, ptr %t701, 2
  %t712 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t710, i64 %t702, 3
  %t713 = getelementptr { i64, [4 x i64] }, ptr %t703, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t712, ptr %t713
  %t714 = load { i64, [4 x i64] }, ptr %t703
  %t716 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t714, ptr %t716
  call void @__olang_scope_close(ptr %s0)
  store ptr %t716, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l6 = alloca %"compiler/check:litv"
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca %"compiler/check:litv"
  %l15 = alloca %"compiler/check:signMag"
  %l16 = alloca i1
  %l17 = alloca i128
  %l18 = alloca %"compiler/check:litv"
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/check:litv"
  %l23 = alloca %"compiler/check:litv"
  %l24 = alloca double
  %l25 = alloca double
  %l26 = alloca %"compiler/check:signMag"
  %l27 = alloca i1
  %l28 = alloca i128
  %l29 = alloca %"compiler/check:signMag"
  %l30 = alloca i1
  %l31 = alloca i128
  %l32 = alloca i128
  %l33 = alloca i64
  %l34 = alloca %"compiler/check:litv"
  %l35 = alloca i128
  %l38 = alloca i128
  %l39 = alloca i64
  %l40 = alloca i64
  %l43 = alloca %"compiler/check:litv"
  %l44 = alloca ptr
  %l45 = alloca i1
  %l54 = alloca { i64, ptr }
  %l60 = alloca i1
  %l61 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca { i64, ptr }
  %l68 = alloca i1
  %l69 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %l76 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca i32
  %l84 = alloca i64
  %l85 = alloca i32
  %l86 = alloca i128
  %l88 = alloca i128
  %l89 = alloca i32
  %l90 = alloca %"compiler/check:litv"
  %l91 = alloca %"compiler/check:litv"
  %l94 = alloca %"compiler/check:litv"
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l98 = alloca i64
  %l99 = alloca i32
  %l100 = alloca i64
  %l101 = alloca i32
  %l102 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i32
  %l106 = alloca i64
  %l107 = alloca i32
  %l108 = alloca i128
  %l110 = alloca i128
  %l111 = alloca i32
  %l112 = alloca %"compiler/check:litv"
  %l113 = alloca %"compiler/check:litv"
  %l116 = alloca %"compiler/check:litv"
  %l118 = alloca %"compiler/check:litv"
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l129 = alloca double
  %l131 = alloca double
  %l132 = alloca i32
  %l133 = alloca %"compiler/check:litv"
  %l135 = alloca %"compiler/check:litv"
  %l136 = alloca %"compiler/check:litv"
  %l137 = alloca ptr
  %l138 = alloca i1
  %l146 = alloca %"compiler/check:litv"
  %l147 = alloca ptr
  %l148 = alloca i1
  %l158 = alloca %"compiler/check:litv"
  %l161 = alloca %"compiler/check:litv"
  %l167 = alloca %"compiler/check:litv"
  %l169 = alloca %"compiler/check:signMag"
  %l174 = alloca %"compiler/check:litv"
  %l178 = alloca %"compiler/check:litv"
  %l179 = alloca %"compiler/check:litv"
  %l182 = alloca i1
  %l185 = alloca i1
  %l190 = alloca %"compiler/check:litv"
  %l193 = alloca %"compiler/check:litv"
  %l194 = alloca ptr
  %l195 = alloca i1
  %l206 = alloca %"compiler/check:litv"
  %l209 = alloca %"compiler/check:litv"
  %l212 = alloca i1
  %l215 = alloca %"compiler/check:litv"
  %l217 = alloca i1
  %l220 = alloca i1
  %l222 = alloca %"compiler/check:litv"
  %l224 = alloca double
  %l229 = alloca double
  %l238 = alloca %"compiler/check:litv"
  %l244 = alloca %"compiler/check:litv"
  %l250 = alloca %"compiler/check:litv"
  %l256 = alloca %"compiler/check:litv"
  %l257 = alloca %"compiler/check:litv"
  %l259 = alloca %"compiler/check:signMag"
  %l263 = alloca %"compiler/check:signMag"
  %l272 = alloca %"compiler/check:litv"
  %l280 = alloca %"compiler/check:litv"
  %l285 = alloca i1
  %l291 = alloca %"compiler/check:litv"
  %l298 = alloca i1
  %l302 = alloca %"compiler/check:litv"
  %l305 = alloca i1
  %l308 = alloca i1
  %l312 = alloca i1
  %l317 = alloca %"compiler/check:litv"
  %l320 = alloca i64
  %l326 = alloca i64
  %l334 = alloca %"compiler/check:litv"
  %l336 = alloca i1
  %l338 = alloca i1
  %l342 = alloca %"compiler/check:litv"
  %l344 = alloca i1
  %l349 = alloca i1
  %l352 = alloca i1
  %l355 = alloca i1
  %l358 = alloca i1
  %l366 = alloca i1
  %l368 = alloca i1
  %l377 = alloca %"compiler/check:litv"
  %l379 = alloca i128
  %l382 = alloca i128
  %l386 = alloca %"compiler/check:litv"
  %l388 = alloca %"compiler/check:litv"
  %l390 = alloca i1
  %l392 = alloca i1
  %l398 = alloca i128
  %l400 = alloca %"compiler/check:litv"
  %l403 = alloca i128
  %l406 = alloca %"compiler/check:litv"
  %l408 = alloca i64
  %l410 = alloca %"compiler/check:litv"
  %l412 = alloca i1
  %l416 = alloca %"compiler/check:litv"
  %l425 = alloca %"compiler/check:litv"
  %l432 = alloca %"compiler/check:litv"
  %l433 = alloca %"compiler/check:litv"
  %l435 = alloca i1
  %l437 = alloca %"compiler/check:litv"
  %l442 = alloca i1
  %l445 = alloca i1
  %l449 = alloca i1
  %l456 = alloca %"compiler/check:litv"
  %l459 = alloca i1
  %l462 = alloca i1
  %l468 = alloca %"compiler/check:litv"
  %l469 = alloca %"compiler/check:litv"
  %l470 = alloca %"compiler/check:litv"
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
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
  %t5 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t5, ptr %l43
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/check:litv", ptr %l43
  store %"compiler/check:litv" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t8 = load ptr, ptr %l44, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = load ptr, ptr %l44, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 30}
  %t14 = icmp eq i64 %t12, 1
  store i1 %t14, ptr %l45, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l45, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l2
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32 }, ptr %t24, i32 0, i32 1
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 114}
  store i32 %t26, ptr %l3
  br label %bb9
bb8:
  br label %bb76
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l2
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t28, %"compiler/source:Span" %t29)
  store { i64, ptr } %t32, ptr %l54
  br label %bb10
bb10:
  %t33 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t34 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t36 = trunc i64 2 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t43 = icmp sgt i64 %t41, 2
  br i1 %t43, label %bb13, label %bb14
bb12:
  br label %bb64
bb13:
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t45, ptr %l61, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 0
  %t49 = load i8, ptr %t48, !tbaa !32
  %t51 = icmp eq i8 %t49, 48
  store i1 %t51, ptr %l60, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l60, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t54 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t54, ptr %l65, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i8, ptr %t56, i64 1
  %t58 = load i8, ptr %t57, !tbaa !32
  %t60 = icmp eq i8 %t58, 120
  br i1 %t60, label %bb18, label %bb19
bb17:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb27
bb18:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb20
bb19:
  %t62 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t62, ptr %l69, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i8, ptr %t64, i64 1
  %t66 = load i8, ptr %t65, !tbaa !32
  %t68 = icmp eq i8 %t66, 88
  store i1 %t68, ptr %l68, !tbaa !21
  br label %bb20
bb20:
  %t70 = load i1, ptr %l68, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb23
bb22:
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t71, ptr %l73, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i8, ptr %t73, i64 1
  %t75 = load i8, ptr %t74, !tbaa !32
  %t77 = icmp eq i8 %t75, 98
  store i1 %t77, ptr %l72, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l72, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb26
bb25:
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t80, ptr %l77, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 1
  %t84 = load i8, ptr %t83, !tbaa !32
  %t86 = icmp eq i8 %t84, 66
  store i1 %t86, ptr %l76, !tbaa !21
  br label %bb26
bb26:
  %t88 = load i1, ptr %l76, !tbaa !21
  store i1 %t88, ptr %l64, !tbaa !21
  br label %bb27
bb27:
  %t89 = load i1, ptr %l64, !tbaa !21
  br i1 %t89, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t90 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t90, ptr %l81, !tbaa !27
  %t91 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 0)
  %t92 = extractvalue { i32, i64 } %t91, 1
  %t93 = extractvalue { i32, i64 } %t91, 0
  store i32 %t93, ptr %l83
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb31, label %ok.95, !prof !99
ok.95:
  store i64 %t92, ptr %l82
  br label %bb30
bb29:
  br label %bb43
bb30:
  %t96 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t97 = load i64, ptr %l82, !tbaa !24
  %t98 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %t96, i64 %t97)
  %t99 = extractvalue { i32, i64 } %t98, 1
  %t100 = extractvalue { i32, i64 } %t98, 0
  store i32 %t100, ptr %l85
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb34, label %ok.102, !prof !99
ok.102:
  store i64 %t99, ptr %l84
  br label %bb33
bb31:
  br label %bb32
bb32:
  %t103 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t105 = call { i32, i128 } @compiler_2fcheck_2ewideDigits(ptr %v0, { i64, ptr } %t103)
  %t106 = extractvalue { i32, i128 } %t105, 1
  %t107 = extractvalue { i32, i128 } %t105, 0
  store i32 %t107, ptr %l89
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb36, label %ok.109, !prof !99
ok.109:
  store i128 %t106, ptr %l88
  br label %bb35
bb33:
  %t110 = load i64, ptr %l84, !tbaa !65
  store i64 %t110, ptr %l80, !tbaa !65
  br label %bb41
bb34:
  br label %bb32
bb35:
  %t111 = load i128, ptr %l88
  store i128 %t111, ptr %l86
  br label %bb39
bb36:
  br label %bb37
bb37:
  %t112 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t112, ptr %l90
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  %t113 = load %"compiler/check:litv", ptr %l90
  store %"compiler/check:litv" %t113, ptr %rv
  br label %ret
bb39:
  %t114 = load i128, ptr %l86
  %t115 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 false, i128 %t114)
  store %"compiler/check:litv" %t115, ptr %l91
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  %t116 = load %"compiler/check:litv", ptr %l91
  store %"compiler/check:litv" %t116, ptr %rv
  br label %ret
bb41:
  %t117 = load i64, ptr %l80, !tbaa !65
  %t121 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t117)
  store %"compiler/check:litv" %t121, ptr %l94
  br label %bb42
bb42:
  %t122 = load %"compiler/check:litv", ptr %l94
  store %"compiler/check:litv" %t122, ptr %l6
  %t123 = getelementptr %"compiler/check:litv", ptr %l6, i32 0, i32 5
  store i1 true, ptr %t123, !tbaa !21
  %t124 = load %"compiler/check:litv", ptr %l6
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  store %"compiler/check:litv" %t124, ptr %rv
  br label %ret
bb43:
  %t126 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t126, ptr %l97, !tbaa !27
  %t127 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s3, i64 0)
  %t128 = extractvalue { i32, i64 } %t127, 1
  %t129 = extractvalue { i32, i64 } %t127, 0
  store i32 %t129, ptr %l99
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb45, label %ok.131, !prof !99
ok.131:
  store i64 %t128, ptr %l98
  br label %bb44
bb44:
  %t132 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t133 = load i64, ptr %l98, !tbaa !24
  %t134 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t132, i64 %t133)
  %t135 = extractvalue { i32, i64 } %t134, 1
  %t136 = extractvalue { i32, i64 } %t134, 0
  store i32 %t136, ptr %l101
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb48, label %ok.138, !prof !99
ok.138:
  store i64 %t135, ptr %l100
  br label %bb47
bb45:
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s7
  %t139 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t139, ptr %l103, !tbaa !27
  %t140 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s7, i64 0)
  %t141 = extractvalue { i32, i64 } %t140, 1
  %t142 = extractvalue { i32, i64 } %t140, 0
  store i32 %t142, ptr %l105
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb50, label %ok.144, !prof !99
ok.144:
  store i64 %t141, ptr %l104
  br label %bb49
bb47:
  %t145 = load i64, ptr %l100, !tbaa !24
  store i64 %t145, ptr %l96, !tbaa !24
  br label %bb62
bb48:
  br label %bb46
bb49:
  %t146 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t147 = load i64, ptr %l104, !tbaa !24
  %t148 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %t146, i64 %t147)
  %t149 = extractvalue { i32, i64 } %t148, 1
  %t150 = extractvalue { i32, i64 } %t148, 0
  store i32 %t150, ptr %l107
  %t151 = icmp ne i32 %t150, 0
  br i1 %t151, label %bb53, label %ok.152, !prof !99
ok.152:
  store i64 %t149, ptr %l106
  br label %bb52
bb50:
  br label %bb51
bb51:
  %t153 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t155 = call { i32, i128 } @compiler_2fcheck_2ewideDigits(ptr %v0, { i64, ptr } %t153)
  %t156 = extractvalue { i32, i128 } %t155, 1
  %t157 = extractvalue { i32, i128 } %t155, 0
  store i32 %t157, ptr %l111
  %t158 = icmp ne i32 %t157, 0
  br i1 %t158, label %bb55, label %ok.159, !prof !99
ok.159:
  store i128 %t156, ptr %l110
  br label %bb54
bb52:
  %t160 = load i64, ptr %l106, !tbaa !65
  store i64 %t160, ptr %l102, !tbaa !65
  br label %bb60
bb53:
  br label %bb51
bb54:
  %t161 = load i128, ptr %l110
  store i128 %t161, ptr %l108
  br label %bb58
bb55:
  br label %bb56
bb56:
  %t162 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t162, ptr %l112
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s3)
  %t163 = load %"compiler/check:litv", ptr %l112
  store %"compiler/check:litv" %t163, ptr %rv
  br label %ret
bb58:
  %t164 = load i128, ptr %l108
  %t165 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 false, i128 %t164)
  store %"compiler/check:litv" %t165, ptr %l113
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s3)
  %t166 = load %"compiler/check:litv", ptr %l113
  store %"compiler/check:litv" %t166, ptr %rv
  br label %ret
bb60:
  %t167 = load i64, ptr %l102, !tbaa !65
  %t171 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s7, i1 true, i1 false, i1 true, i64 %t167, double 0x0000000000000000)
  store %"compiler/check:litv" %t171, ptr %l116
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s3)
  %t172 = load %"compiler/check:litv", ptr %l116
  store %"compiler/check:litv" %t172, ptr %rv
  br label %ret
bb62:
  %t173 = load i64, ptr %l96, !tbaa !24
  %t176 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t173)
  store %"compiler/check:litv" %t176, ptr %l118
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s3)
  %t177 = load %"compiler/check:litv", ptr %l118
  store %"compiler/check:litv" %t177, ptr %rv
  br label %ret
bb64:
  %t178 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t180 = trunc i64 3 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s10
  %t183 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l123, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l124, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t188 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s10, ptr %s10, ptr %s10, { i64, ptr } %t183, { i64, ptr } %t186, { i64, ptr } %t187)
  store { i64, ptr } %t188, ptr %l125
  br label %bb67
bb66:
  br label %bb74
bb67:
  %t189 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  store i64 %t190, ptr %l126, !tbaa !24
  %t191 = load i64, ptr %l126, !tbaa !24
  %t192 = mul i64 %t191, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t192)
  %t194 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  store { i64, ptr } %t195, ptr %l127, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l126, !tbaa !24
  %t201 = mul i64 %t200, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %t199, i64 %t201, i1 false)
  %t202 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t206 = call { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %s10, { i64, ptr } %t202)
  %t207 = extractvalue { i32, double } %t206, 1
  %t208 = extractvalue { i32, double } %t206, 0
  store i32 %t208, ptr %l132
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb69, label %ok.210, !prof !99
ok.210:
  store double %t207, ptr %l131
  br label %bb68
bb68:
  %t211 = load double, ptr %l131, !tbaa !26
  store double %t211, ptr %l129, !tbaa !26
  br label %bb72
bb69:
  br label %bb70
bb70:
  %t212 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t212, ptr %l133
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s10)
  %t213 = load %"compiler/check:litv", ptr %l133
  store %"compiler/check:litv" %t213, ptr %rv
  br label %ret
bb72:
  %t214 = load double, ptr %l129, !tbaa !26
  %t217 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %t214)
  store %"compiler/check:litv" %t217, ptr %l135
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s10)
  %t218 = load %"compiler/check:litv", ptr %l135
  store %"compiler/check:litv" %t218, ptr %rv
  br label %ret
bb74:
  %t219 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t219, ptr %l136
  br label %bb75
bb75:
  %t220 = load %"compiler/check:litv", ptr %l136
  store %"compiler/check:litv" %t220, ptr %rv
  br label %ret
bb76:
  %t221 = load ptr, ptr %l1, !tbaa !29
  store ptr %t221, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t222 = load ptr, ptr %l137, !tbaa !29
  %t223 = icmp ne ptr %t222, null
  br i1 %t223, label %bb77, label %bb78
bb77:
  %t225 = load ptr, ptr %l137, !tbaa !29
  %t226 = load i64, ptr %t225, !range !{i64 0, i64 30}
  %t228 = icmp eq i64 %t226, 2
  store i1 %t228, ptr %l138, !tbaa !21
  br label %bb78
bb78:
  %t229 = load i1, ptr %l138, !tbaa !21
  br i1 %t229, label %bb79, label %bb80
bb79:
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr { i64, [4 x i64] }, ptr %t230, i32 0, i32 1
  %t233 = getelementptr { %"compiler/source:Span", ptr }, ptr %t232, i32 0, i32 1
  %t234 = load ptr, ptr %t233
  store ptr %t234, ptr %l11, !tbaa !29
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l11, !tbaa !29
  %t241 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t236, ptr %t237)
  store %"compiler/check:litv" %t241, ptr %l146
  br label %bb82
bb82:
  %t242 = load %"compiler/check:litv", ptr %l146
  store %"compiler/check:litv" %t242, ptr %rv
  br label %ret
bb83:
  %t243 = load ptr, ptr %l1, !tbaa !29
  store ptr %t243, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t244 = load ptr, ptr %l147, !tbaa !29
  %t245 = icmp ne ptr %t244, null
  br i1 %t245, label %bb84, label %bb85
bb84:
  %t247 = load ptr, ptr %l147, !tbaa !29
  %t248 = load i64, ptr %t247, !range !{i64 0, i64 30}
  %t250 = icmp eq i64 %t248, 3
  store i1 %t250, ptr %l148, !tbaa !21
  br label %bb85
bb85:
  %t251 = load i1, ptr %l148, !tbaa !21
  br i1 %t251, label %bb86, label %bb87
bb86:
  %t252 = load ptr, ptr %l1, !tbaa !29
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 1
  %t255 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t254, i32 0, i32 1
  %t256 = load i32, ptr %t255, !range !{i32 0, i32 114}
  store i32 %t256, ptr %l12
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t260, i32 0, i32 2
  %t262 = load ptr, ptr %t261
  store ptr %t262, ptr %l13, !tbaa !29
  br label %bb88
bb87:
  br label %bb118
bb88:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load ptr, ptr %l13, !tbaa !29
  %t269 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t264, ptr %t265)
  store %"compiler/check:litv" %t269, ptr %l158
  br label %bb89
bb89:
  %t270 = load %"compiler/check:litv", ptr %l158
  store %"compiler/check:litv" %t270, ptr %l14
  %t271 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 0
  %t272 = load i1, ptr %t271, !tbaa !21
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb90, label %bb91
bb90:
  %t276 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t276, ptr %l161
  br label %bb92
bb91:
  br label %bb93
bb92:
  %t277 = load %"compiler/check:litv", ptr %l161
  store %"compiler/check:litv" %t277, ptr %rv
  br label %ret
bb93:
  %t278 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t280 = trunc i64 69 to i32
  %t281 = icmp eq i32 %t278, %t280
  br i1 %t281, label %bb94, label %bb95
bb94:
  %t283 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 1
  %t284 = load i1, ptr %t283, !tbaa !21
  br i1 %t284, label %bb96, label %bb97
bb95:
  br label %bb106
bb96:
  %t286 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 4
  %t287 = load double, ptr %t286, !tbaa !26
  %t289 = fneg double %t287
  %t291 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %t289)
  store %"compiler/check:litv" %t291, ptr %l167
  br label %bb98
bb97:
  br label %bb99
bb98:
  %t292 = load %"compiler/check:litv", ptr %l167
  store %"compiler/check:litv" %t292, ptr %rv
  br label %ret
bb99:
  %t293 = load %"compiler/check:litv", ptr %l14
  %t295 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %t293)
  store %"compiler/check:signMag" %t295, ptr %l169
  br label %bb100
bb100:
  %t296 = load %"compiler/check:signMag", ptr %l169
  store %"compiler/check:signMag" %t296, ptr %l15
  %t297 = getelementptr %"compiler/check:signMag", ptr %l15, i32 0, i32 0
  %t298 = load i1, ptr %t297, !tbaa !21
  store i1 %t298, ptr %l16, !tbaa !21
  %t300 = getelementptr %"compiler/check:signMag", ptr %l15, i32 0, i32 1
  %t301 = load i128, ptr %t300
  store i128 %t301, ptr %l17
  %t303 = load i128, ptr %l17
  %t305 = icmp ne i128 %t303, 0
  br i1 %t305, label %bb101, label %bb102
bb101:
  %t307 = load i1, ptr %l16, !tbaa !21
  %t309 = xor i1 %t307, true
  %t310 = load i128, ptr %l17
  %t313 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t309, i128 %t310)
  store %"compiler/check:litv" %t313, ptr %l178
  br label %bb103
bb102:
  %t314 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 0)
  store %"compiler/check:litv" %t314, ptr %l179
  br label %bb104
bb103:
  %t315 = load %"compiler/check:litv", ptr %l178
  store %"compiler/check:litv" %t315, ptr %l174
  br label %bb105
bb104:
  %t316 = load %"compiler/check:litv", ptr %l179
  store %"compiler/check:litv" %t316, ptr %l174
  br label %bb105
bb105:
  %t317 = load %"compiler/check:litv", ptr %l174
  store %"compiler/check:litv" %t317, ptr %rv
  br label %ret
bb106:
  %t318 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t320 = trunc i64 104 to i32
  %t321 = icmp eq i32 %t318, %t320
  br i1 %t321, label %bb107, label %bb108
bb107:
  %t323 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 1
  %t324 = load i1, ptr %t323, !tbaa !21
  %t326 = xor i1 %t324, true
  store i1 %t326, ptr %l182, !tbaa !21
  br label %bb109
bb108:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb109
bb109:
  %t328 = load i1, ptr %l182, !tbaa !21
  br i1 %t328, label %bb110, label %bb111
bb110:
  %t329 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 2
  %t330 = load i1, ptr %t329, !tbaa !21
  %t332 = xor i1 %t330, true
  store i1 %t332, ptr %l185, !tbaa !21
  br label %bb112
bb111:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb112
bb112:
  %t334 = load i1, ptr %l185, !tbaa !21
  br i1 %t334, label %bb113, label %bb114
bb113:
  %t335 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 3
  %t336 = load i64, ptr %t335, !tbaa !24
  %t338 = xor i64 %t336, -1
  %t340 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t338)
  store %"compiler/check:litv" %t340, ptr %l190
  br label %bb115
bb114:
  br label %bb116
bb115:
  %t341 = load %"compiler/check:litv", ptr %l190
  store %"compiler/check:litv" %t341, ptr %l18
  %t342 = getelementptr %"compiler/check:litv", ptr %l14, i32 0, i32 5
  %t343 = load i1, ptr %t342, !tbaa !21
  %t345 = getelementptr %"compiler/check:litv", ptr %l18, i32 0, i32 5
  store i1 %t343, ptr %t345, !tbaa !21
  %t346 = load %"compiler/check:litv", ptr %l18
  store %"compiler/check:litv" %t346, ptr %rv
  br label %ret
bb116:
  %t348 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t348, ptr %l193
  br label %bb117
bb117:
  %t349 = load %"compiler/check:litv", ptr %l193
  store %"compiler/check:litv" %t349, ptr %rv
  br label %ret
bb118:
  %t350 = load ptr, ptr %l1, !tbaa !29
  store ptr %t350, ptr %l194, !tbaa !29
  store i1 false, ptr %l195, !tbaa !21
  %t351 = load ptr, ptr %l194, !tbaa !29
  %t352 = icmp ne ptr %t351, null
  br i1 %t352, label %bb119, label %bb120
bb119:
  %t354 = load ptr, ptr %l194, !tbaa !29
  %t355 = load i64, ptr %t354, !range !{i64 0, i64 30}
  %t357 = icmp eq i64 %t355, 5
  store i1 %t357, ptr %l195, !tbaa !21
  br label %bb120
bb120:
  %t358 = load i1, ptr %l195, !tbaa !21
  br i1 %t358, label %bb121, label %bb122
bb121:
  %t359 = load ptr, ptr %l1, !tbaa !29
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t361, i32 0, i32 1
  %t363 = load i32, ptr %t362, !range !{i32 0, i32 114}
  store i32 %t363, ptr %l19
  %t365 = load ptr, ptr %l1, !tbaa !29
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t367, i32 0, i32 2
  %t369 = load ptr, ptr %t368
  store ptr %t369, ptr %l20, !tbaa !29
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t373, i32 0, i32 3
  %t375 = load ptr, ptr %t374
  store ptr %t375, ptr %l21, !tbaa !29
  br label %bb123
bb122:
  br label %bb330
bb123:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l20, !tbaa !29
  %t381 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %t377, ptr %t378)
  store %"compiler/check:litv" %t381, ptr %l206
  br label %bb124
bb124:
  %t382 = load %"compiler/check:litv", ptr %l206
  store %"compiler/check:litv" %t382, ptr %l22
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load ptr, ptr %l21, !tbaa !29
  %t387 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %t383, ptr %t384)
  store %"compiler/check:litv" %t387, ptr %l209
  br label %bb125
bb125:
  %t388 = load %"compiler/check:litv", ptr %l209
  store %"compiler/check:litv" %t388, ptr %l23
  %t389 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 0
  %t390 = load i1, ptr %t389, !tbaa !21
  %t392 = xor i1 %t390, true
  br i1 %t392, label %bb126, label %bb127
bb126:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb128
bb127:
  %t394 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 0
  %t395 = load i1, ptr %t394, !tbaa !21
  %t397 = xor i1 %t395, true
  store i1 %t397, ptr %l212, !tbaa !21
  br label %bb128
bb128:
  %t399 = load i1, ptr %l212, !tbaa !21
  br i1 %t399, label %bb129, label %bb130
bb129:
  %t400 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t400, ptr %l215
  br label %bb131
bb130:
  br label %bb132
bb131:
  %t401 = load %"compiler/check:litv", ptr %l215
  store %"compiler/check:litv" %t401, ptr %rv
  br label %ret
bb132:
  %t402 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 1
  %t403 = load i1, ptr %t402, !tbaa !21
  br i1 %t403, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l217, !tbaa !21
  br label %bb135
bb134:
  %t405 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 1
  %t406 = load i1, ptr %t405, !tbaa !21
  store i1 %t406, ptr %l217, !tbaa !21
  br label %bb135
bb135:
  %t408 = load i1, ptr %l217, !tbaa !21
  br i1 %t408, label %bb136, label %bb137
bb136:
  %t409 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 2
  %t410 = load i1, ptr %t409, !tbaa !21
  br i1 %t410, label %bb138, label %bb139
bb137:
  br label %bb168
bb138:
  store i1 true, ptr %l220, !tbaa !21
  br label %bb140
bb139:
  %t412 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 2
  %t413 = load i1, ptr %t412, !tbaa !21
  store i1 %t413, ptr %l220, !tbaa !21
  br label %bb140
bb140:
  %t415 = load i1, ptr %l220, !tbaa !21
  br i1 %t415, label %bb141, label %bb142
bb141:
  %t416 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t416, ptr %l222
  br label %bb143
bb142:
  br label %bb144
bb143:
  %t417 = load %"compiler/check:litv", ptr %l222
  store %"compiler/check:litv" %t417, ptr %rv
  br label %ret
bb144:
  %t418 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 1
  %t419 = load i1, ptr %t418, !tbaa !21
  br i1 %t419, label %bb145, label %bb146
bb145:
  %t421 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 4
  %t422 = load double, ptr %t421, !tbaa !26
  store double %t422, ptr %l224, !tbaa !26
  br label %bb147
bb146:
  %t424 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t425 = load i64, ptr %t424, !tbaa !24
  %t427 = sitofp i64 %t425 to double
  store double %t427, ptr %l224, !tbaa !26
  br label %bb147
bb147:
  %t429 = load double, ptr %l224, !tbaa !26
  store double %t429, ptr %l24, !tbaa !26
  %t430 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 1
  %t431 = load i1, ptr %t430, !tbaa !21
  br i1 %t431, label %bb148, label %bb149
bb148:
  %t433 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 4
  %t434 = load double, ptr %t433, !tbaa !26
  store double %t434, ptr %l229, !tbaa !26
  br label %bb150
bb149:
  %t436 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t437 = load i64, ptr %t436, !tbaa !24
  %t439 = sitofp i64 %t437 to double
  store double %t439, ptr %l229, !tbaa !26
  br label %bb150
bb150:
  %t441 = load double, ptr %l229, !tbaa !26
  store double %t441, ptr %l25, !tbaa !26
  %t442 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t444 = trunc i64 68 to i32
  %t445 = icmp eq i32 %t442, %t444
  br i1 %t445, label %bb151, label %bb152
bb151:
  %t447 = load double, ptr %l24, !tbaa !26
  %t448 = load double, ptr %l25, !tbaa !26
  %t451 = fadd double %t447, %t448
  %t453 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %t451)
  store %"compiler/check:litv" %t453, ptr %l238
  br label %bb153
bb152:
  br label %bb154
bb153:
  %t454 = load %"compiler/check:litv", ptr %l238
  store %"compiler/check:litv" %t454, ptr %rv
  br label %ret
bb154:
  %t455 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t457 = trunc i64 69 to i32
  %t458 = icmp eq i32 %t455, %t457
  br i1 %t458, label %bb155, label %bb156
bb155:
  %t460 = load double, ptr %l24, !tbaa !26
  %t461 = load double, ptr %l25, !tbaa !26
  %t464 = fsub double %t460, %t461
  %t466 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %t464)
  store %"compiler/check:litv" %t466, ptr %l244
  br label %bb157
bb156:
  br label %bb158
bb157:
  %t467 = load %"compiler/check:litv", ptr %l244
  store %"compiler/check:litv" %t467, ptr %rv
  br label %ret
bb158:
  %t468 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t470 = trunc i64 70 to i32
  %t471 = icmp eq i32 %t468, %t470
  br i1 %t471, label %bb159, label %bb160
bb159:
  %t473 = load double, ptr %l24, !tbaa !26
  %t474 = load double, ptr %l25, !tbaa !26
  %t477 = fmul double %t473, %t474
  %t479 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %t477)
  store %"compiler/check:litv" %t479, ptr %l250
  br label %bb161
bb160:
  br label %bb162
bb161:
  %t480 = load %"compiler/check:litv", ptr %l250
  store %"compiler/check:litv" %t480, ptr %rv
  br label %ret
bb162:
  %t481 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t483 = trunc i64 72 to i32
  %t484 = icmp eq i32 %t481, %t483
  br i1 %t484, label %bb163, label %bb164
bb163:
  %t486 = load double, ptr %l24, !tbaa !26
  %t487 = load double, ptr %l25, !tbaa !26
  %t490 = fdiv double %t486, %t487
  %t492 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %t490)
  store %"compiler/check:litv" %t492, ptr %l256
  br label %bb165
bb164:
  br label %bb166
bb165:
  %t493 = load %"compiler/check:litv", ptr %l256
  store %"compiler/check:litv" %t493, ptr %rv
  br label %ret
bb166:
  %t494 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t494, ptr %l257
  br label %bb167
bb167:
  %t495 = load %"compiler/check:litv", ptr %l257
  store %"compiler/check:litv" %t495, ptr %rv
  br label %ret
bb168:
  %t496 = load %"compiler/check:litv", ptr %l22
  %t498 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %t496)
  store %"compiler/check:signMag" %t498, ptr %l259
  br label %bb169
bb169:
  %t499 = load %"compiler/check:signMag", ptr %l259
  store %"compiler/check:signMag" %t499, ptr %l26
  %t500 = getelementptr %"compiler/check:signMag", ptr %l26, i32 0, i32 0
  %t501 = load i1, ptr %t500, !tbaa !21
  store i1 %t501, ptr %l27, !tbaa !21
  %t503 = getelementptr %"compiler/check:signMag", ptr %l26, i32 0, i32 1
  %t504 = load i128, ptr %t503
  store i128 %t504, ptr %l28
  %t506 = load %"compiler/check:litv", ptr %l23
  %t508 = call %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %t506)
  store %"compiler/check:signMag" %t508, ptr %l263
  br label %bb170
bb170:
  %t509 = load %"compiler/check:signMag", ptr %l263
  store %"compiler/check:signMag" %t509, ptr %l29
  %t510 = getelementptr %"compiler/check:signMag", ptr %l29, i32 0, i32 0
  %t511 = load i1, ptr %t510, !tbaa !21
  store i1 %t511, ptr %l30, !tbaa !21
  %t513 = getelementptr %"compiler/check:signMag", ptr %l29, i32 0, i32 1
  %t514 = load i128, ptr %t513
  store i128 %t514, ptr %l31
  %t516 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t518 = trunc i64 68 to i32
  %t519 = icmp eq i32 %t516, %t518
  br i1 %t519, label %bb171, label %bb172
bb171:
  %t521 = load i1, ptr %l27, !tbaa !21
  %t522 = load i128, ptr %l28
  %t523 = load i1, ptr %l30, !tbaa !21
  %t524 = load i128, ptr %l31
  %t529 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eaddMag(i1 %t521, i128 %t522, i1 %t523, i128 %t524)
  store %"compiler/check:litv" %t529, ptr %l272
  br label %bb173
bb172:
  br label %bb174
bb173:
  %t530 = load %"compiler/check:litv", ptr %l272
  store %"compiler/check:litv" %t530, ptr %rv
  br label %ret
bb174:
  %t531 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t533 = trunc i64 69 to i32
  %t534 = icmp eq i32 %t531, %t533
  br i1 %t534, label %bb175, label %bb176
bb175:
  %t536 = load i1, ptr %l27, !tbaa !21
  %t537 = load i128, ptr %l28
  %t538 = load i1, ptr %l30, !tbaa !21
  %t540 = xor i1 %t538, true
  %t541 = load i128, ptr %l31
  %t546 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eaddMag(i1 %t536, i128 %t537, i1 %t540, i128 %t541)
  store %"compiler/check:litv" %t546, ptr %l280
  br label %bb177
bb176:
  br label %bb178
bb177:
  %t547 = load %"compiler/check:litv", ptr %l280
  store %"compiler/check:litv" %t547, ptr %rv
  br label %ret
bb178:
  %t548 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t550 = trunc i64 70 to i32
  %t551 = icmp eq i32 %t548, %t550
  br i1 %t551, label %bb179, label %bb180
bb179:
  %t553 = load i128, ptr %l28
  %t555 = icmp ne i128 %t553, 0
  br i1 %t555, label %bb181, label %bb182
bb180:
  br label %bb192
bb181:
  %t557 = load i128, ptr %l31
  %t558 = xor i128 0, -1
  %t559 = load i128, ptr %l28
  %t562 = udiv i128 %t558, %t559
  %t565 = icmp ugt i128 %t557, %t562
  store i1 %t565, ptr %l285, !tbaa !21
  br label %bb183
bb182:
  store i1 false, ptr %l285, !tbaa !21
  br label %bb183
bb183:
  %t567 = load i1, ptr %l285, !tbaa !21
  br i1 %t567, label %bb184, label %bb185
bb184:
  %t568 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t568, ptr %l291
  br label %bb186
bb185:
  br label %bb187
bb186:
  %t569 = load %"compiler/check:litv", ptr %l291
  store %"compiler/check:litv" %t569, ptr %rv
  br label %ret
bb187:
  %t570 = load i128, ptr %l28
  %t571 = load i128, ptr %l31
  %t574 = mul i128 %t570, %t571
  store i128 %t574, ptr %l32
  %t576 = load i1, ptr %l27, !tbaa !21
  %t577 = load i1, ptr %l30, !tbaa !21
  %t580 = icmp ne i1 %t576, %t577
  br i1 %t580, label %bb188, label %bb189
bb188:
  %t582 = load i128, ptr %l32
  %t584 = icmp ne i128 %t582, 0
  store i1 %t584, ptr %l298, !tbaa !21
  br label %bb190
bb189:
  store i1 false, ptr %l298, !tbaa !21
  br label %bb190
bb190:
  %t586 = load i128, ptr %l32
  %t587 = load i1, ptr %l298, !tbaa !21
  %t589 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t587, i128 %t586)
  store %"compiler/check:litv" %t589, ptr %l302
  br label %bb191
bb191:
  %t590 = load %"compiler/check:litv", ptr %l302
  store %"compiler/check:litv" %t590, ptr %rv
  br label %ret
bb192:
  %t591 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t593 = trunc i64 101 to i32
  %t594 = icmp eq i32 %t591, %t593
  br i1 %t594, label %bb193, label %bb194
bb193:
  store i1 true, ptr %l305, !tbaa !21
  br label %bb195
bb194:
  %t596 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t598 = trunc i64 102 to i32
  %t599 = icmp eq i32 %t596, %t598
  store i1 %t599, ptr %l305, !tbaa !21
  br label %bb195
bb195:
  %t601 = load i1, ptr %l305, !tbaa !21
  br i1 %t601, label %bb196, label %bb197
bb196:
  store i1 true, ptr %l308, !tbaa !21
  br label %bb198
bb197:
  %t602 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t604 = trunc i64 103 to i32
  %t605 = icmp eq i32 %t602, %t604
  store i1 %t605, ptr %l308, !tbaa !21
  br label %bb198
bb198:
  %t607 = load i1, ptr %l308, !tbaa !21
  br i1 %t607, label %bb199, label %bb200
bb199:
  %t608 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 6
  %t609 = load i1, ptr %t608, !tbaa !21
  br i1 %t609, label %bb201, label %bb202
bb200:
  br label %bb228
bb201:
  store i1 true, ptr %l312, !tbaa !21
  br label %bb203
bb202:
  %t611 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 6
  %t612 = load i1, ptr %t611, !tbaa !21
  store i1 %t612, ptr %l312, !tbaa !21
  br label %bb203
bb203:
  %t614 = load i1, ptr %l312, !tbaa !21
  br i1 %t614, label %bb204, label %bb205
bb204:
  %t615 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t616 = load %"compiler/check:litv", ptr %l22
  %t617 = load %"compiler/check:litv", ptr %l23
  %t621 = call %"compiler/check:litv" @compiler_2fcheck_2ewideBits(i32 %t615, %"compiler/check:litv" %t616, %"compiler/check:litv" %t617)
  store %"compiler/check:litv" %t621, ptr %l317
  br label %bb206
bb205:
  br label %bb207
bb206:
  %t622 = load %"compiler/check:litv", ptr %l317
  store %"compiler/check:litv" %t622, ptr %rv
  br label %ret
bb207:
  %t623 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t625 = trunc i64 101 to i32
  %t626 = icmp eq i32 %t623, %t625
  br i1 %t626, label %bb208, label %bb209
bb208:
  %t628 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t629 = load i64, ptr %t628, !tbaa !24
  %t630 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t631 = load i64, ptr %t630, !tbaa !24
  %t634 = and i64 %t629, %t631
  store i64 %t634, ptr %l320, !tbaa !24
  br label %bb213
bb209:
  %t636 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t638 = trunc i64 102 to i32
  %t639 = icmp eq i32 %t636, %t638
  br i1 %t639, label %bb210, label %bb211
bb210:
  %t641 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t642 = load i64, ptr %t641, !tbaa !24
  %t643 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t644 = load i64, ptr %t643, !tbaa !24
  %t647 = or i64 %t642, %t644
  store i64 %t647, ptr %l326, !tbaa !24
  br label %bb212
bb211:
  %t649 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t650 = load i64, ptr %t649, !tbaa !24
  %t651 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t652 = load i64, ptr %t651, !tbaa !24
  %t655 = xor i64 %t650, %t652
  store i64 %t655, ptr %l326, !tbaa !24
  br label %bb212
bb212:
  %t657 = load i64, ptr %l326, !tbaa !24
  store i64 %t657, ptr %l320, !tbaa !24
  br label %bb213
bb213:
  %t658 = load i64, ptr %l320, !tbaa !24
  store i64 %t658, ptr %l33, !tbaa !24
  %t659 = load i64, ptr %l33, !tbaa !24
  %t661 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t659)
  store %"compiler/check:litv" %t661, ptr %l334
  br label %bb214
bb214:
  %t662 = load %"compiler/check:litv", ptr %l334
  store %"compiler/check:litv" %t662, ptr %l34
  %t663 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 2
  %t664 = load i1, ptr %t663, !tbaa !21
  br i1 %t664, label %bb215, label %bb216
bb215:
  store i1 true, ptr %l336, !tbaa !21
  br label %bb217
bb216:
  %t666 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 2
  %t667 = load i1, ptr %t666, !tbaa !21
  store i1 %t667, ptr %l336, !tbaa !21
  br label %bb217
bb217:
  %t669 = load i1, ptr %l336, !tbaa !21
  br i1 %t669, label %bb218, label %bb219
bb218:
  %t670 = load i64, ptr %l33, !tbaa !24
  %t672 = icmp slt i64 %t670, 0
  store i1 %t672, ptr %l338, !tbaa !21
  br label %bb220
bb219:
  store i1 false, ptr %l338, !tbaa !21
  br label %bb220
bb220:
  %t674 = load i1, ptr %l338, !tbaa !21
  br i1 %t674, label %bb221, label %bb222
bb221:
  store %olang.scope zeroinitializer, ptr %s32
  %t675 = load i64, ptr %l33, !tbaa !24
  %t677 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s32, i1 true, i1 false, i1 true, i64 %t675, double 0x0000000000000000)
  store %"compiler/check:litv" %t677, ptr %l342
  br label %bb223
bb222:
  br label %bb224
bb223:
  %t678 = load %"compiler/check:litv", ptr %l342
  store %"compiler/check:litv" %t678, ptr %l34
  call void @__olang_scope_close(ptr %s32)
  br label %bb224
bb224:
  %t679 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 5
  %t680 = load i1, ptr %t679, !tbaa !21
  br i1 %t680, label %bb225, label %bb226
bb225:
  store i1 true, ptr %l344, !tbaa !21
  br label %bb227
bb226:
  %t682 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 5
  %t683 = load i1, ptr %t682, !tbaa !21
  store i1 %t683, ptr %l344, !tbaa !21
  br label %bb227
bb227:
  %t685 = load i1, ptr %l344, !tbaa !21
  %t686 = getelementptr %"compiler/check:litv", ptr %l34, i32 0, i32 5
  store i1 %t685, ptr %t686, !tbaa !21
  %t687 = load %"compiler/check:litv", ptr %l34
  store %"compiler/check:litv" %t687, ptr %rv
  br label %ret
bb228:
  %t689 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t691 = trunc i64 106 to i32
  %t692 = icmp eq i32 %t689, %t691
  br i1 %t692, label %bb229, label %bb230
bb229:
  store i1 true, ptr %l349, !tbaa !21
  br label %bb231
bb230:
  %t694 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t696 = trunc i64 107 to i32
  %t697 = icmp eq i32 %t694, %t696
  store i1 %t697, ptr %l349, !tbaa !21
  br label %bb231
bb231:
  %t699 = load i1, ptr %l349, !tbaa !21
  br i1 %t699, label %bb232, label %bb233
bb232:
  %t700 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 2
  %t701 = load i1, ptr %t700, !tbaa !21
  %t703 = xor i1 %t701, true
  store i1 %t703, ptr %l352, !tbaa !21
  br label %bb234
bb233:
  store i1 false, ptr %l352, !tbaa !21
  br label %bb234
bb234:
  %t705 = load i1, ptr %l352, !tbaa !21
  br i1 %t705, label %bb235, label %bb236
bb235:
  %t706 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t707 = load i64, ptr %t706, !tbaa !24
  %t709 = icmp sge i64 %t707, 0
  store i1 %t709, ptr %l355, !tbaa !21
  br label %bb237
bb236:
  store i1 false, ptr %l355, !tbaa !21
  br label %bb237
bb237:
  %t711 = load i1, ptr %l355, !tbaa !21
  br i1 %t711, label %bb238, label %bb239
bb238:
  %t712 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t713 = load i64, ptr %t712, !tbaa !24
  %t715 = icmp slt i64 %t713, 128
  store i1 %t715, ptr %l358, !tbaa !21
  br label %bb240
bb239:
  store i1 false, ptr %l358, !tbaa !21
  br label %bb240
bb240:
  %t717 = load i1, ptr %l358, !tbaa !21
  br i1 %t717, label %bb241, label %bb242
bb241:
  %t718 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t719 = load i64, ptr %t718, !tbaa !24
  %t721 = sext i64 %t719 to i128
  store i128 %t721, ptr %l35
  %t723 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t725 = trunc i64 106 to i32
  %t726 = icmp eq i32 %t723, %t725
  br i1 %t726, label %bb243, label %bb244
bb242:
  br label %bb279
bb243:
  %t728 = load i1, ptr %l27, !tbaa !21
  br i1 %t728, label %bb245, label %bb246
bb244:
  br label %bb263
bb245:
  %t730 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 5
  %t731 = load i1, ptr %t730, !tbaa !21
  store i1 %t731, ptr %l366, !tbaa !21
  br label %bb247
bb246:
  store i1 false, ptr %l366, !tbaa !21
  br label %bb247
bb247:
  %t733 = load i1, ptr %l366, !tbaa !21
  br i1 %t733, label %bb248, label %bb249
bb248:
  %t734 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 6
  %t735 = load i1, ptr %t734, !tbaa !21
  %t737 = xor i1 %t735, true
  store i1 %t737, ptr %l368, !tbaa !21
  br label %bb250
bb249:
  store i1 false, ptr %l368, !tbaa !21
  br label %bb250
bb250:
  %t739 = load i1, ptr %l368, !tbaa !21
  br i1 %t739, label %bb251, label %bb252
bb251:
  %t740 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t741 = load i64, ptr %t740, !tbaa !24
  %t744 = zext i64 %t741 to i128
  store i1 false, ptr %l27, !tbaa !21
  store i128 %t744, ptr %l28
  br label %bb253
bb252:
  br label %bb253
bb253:
  %t750 = load i1, ptr %l27, !tbaa !21
  br i1 %t750, label %bb254, label %bb255
bb254:
  %t752 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t752, ptr %l377
  br label %bb256
bb255:
  br label %bb257
bb256:
  %t753 = load %"compiler/check:litv", ptr %l377
  store %"compiler/check:litv" %t753, ptr %rv
  br label %ret
bb257:
  %t754 = load i128, ptr %l28
  %t755 = load i128, ptr %l35
  store i128 %t755, ptr %l379
  %t757 = load i128, ptr %l379
  %t758 = load i128, ptr %l379
  %t759 = shl i128 %t754, %t758
  store i128 %t759, ptr %l38
  %t761 = load i128, ptr %l38
  %t762 = load i128, ptr %l35
  store i128 %t762, ptr %l382
  %t764 = load i128, ptr %l382
  %t765 = load i128, ptr %l382
  %t766 = lshr i128 %t761, %t765
  %t767 = load i128, ptr %l28
  %t770 = icmp ne i128 %t766, %t767
  br i1 %t770, label %bb258, label %bb259
bb258:
  %t772 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t772, ptr %l386
  br label %bb260
bb259:
  br label %bb261
bb260:
  %t773 = load %"compiler/check:litv", ptr %l386
  store %"compiler/check:litv" %t773, ptr %rv
  br label %ret
bb261:
  %t774 = load i128, ptr %l38
  %t776 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 false, i128 %t774)
  store %"compiler/check:litv" %t776, ptr %l388
  br label %bb262
bb262:
  %t777 = load %"compiler/check:litv", ptr %l388
  store %"compiler/check:litv" %t777, ptr %rv
  br label %ret
bb263:
  %t778 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 6
  %t779 = load i1, ptr %t778, !tbaa !21
  br i1 %t779, label %bb264, label %bb265
bb264:
  store i1 true, ptr %l390, !tbaa !21
  br label %bb266
bb265:
  %t781 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 2
  %t782 = load i1, ptr %t781, !tbaa !21
  store i1 %t782, ptr %l390, !tbaa !21
  br label %bb266
bb266:
  %t784 = load i1, ptr %l390, !tbaa !21
  br i1 %t784, label %bb267, label %bb268
bb267:
  store i1 true, ptr %l392, !tbaa !21
  br label %bb269
bb268:
  %t785 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t786 = load i64, ptr %t785, !tbaa !24
  %t788 = icmp sge i64 %t786, 64
  store i1 %t788, ptr %l392, !tbaa !21
  br label %bb269
bb269:
  %t790 = load i1, ptr %l392, !tbaa !21
  br i1 %t790, label %bb270, label %bb271
bb270:
  %t791 = load i1, ptr %l27, !tbaa !21
  %t793 = xor i1 %t791, true
  br i1 %t793, label %bb272, label %bb273
bb271:
  br label %bb277
bb272:
  %t795 = load i128, ptr %l28
  %t796 = load i128, ptr %l35
  store i128 %t796, ptr %l398
  %t798 = load i128, ptr %l398
  %t799 = load i128, ptr %l398
  %t800 = lshr i128 %t795, %t799
  %t802 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 false, i128 %t800)
  store %"compiler/check:litv" %t802, ptr %l400
  br label %bb274
bb273:
  br label %bb275
bb274:
  %t803 = load %"compiler/check:litv", ptr %l400
  store %"compiler/check:litv" %t803, ptr %rv
  br label %ret
bb275:
  %t804 = load i128, ptr %l28
  %t806 = sub i128 %t804, 1
  %t807 = load i128, ptr %l35
  store i128 %t807, ptr %l403
  %t809 = load i128, ptr %l403
  %t810 = load i128, ptr %l403
  %t811 = lshr i128 %t806, %t810
  %t813 = add i128 %t811, 1
  %t815 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 true, i128 %t813)
  store %"compiler/check:litv" %t815, ptr %l406
  br label %bb276
bb276:
  %t816 = load %"compiler/check:litv", ptr %l406
  store %"compiler/check:litv" %t816, ptr %rv
  br label %ret
bb277:
  %t817 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t818 = load i64, ptr %t817, !tbaa !24
  %t819 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t820 = load i64, ptr %t819, !tbaa !24
  store i64 %t820, ptr %l408, !tbaa !24
  %t822 = load i64, ptr %l408, !tbaa !24
  %t823 = load i64, ptr %l408, !tbaa !24
  %t824 = ashr i64 %t818, %t823
  %t826 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t824)
  store %"compiler/check:litv" %t826, ptr %l410
  br label %bb278
bb278:
  %t827 = load %"compiler/check:litv", ptr %l410
  store %"compiler/check:litv" %t827, ptr %rv
  br label %ret
bb279:
  %t828 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 6
  %t829 = load i1, ptr %t828, !tbaa !21
  br i1 %t829, label %bb280, label %bb281
bb280:
  store i1 true, ptr %l412, !tbaa !21
  br label %bb282
bb281:
  %t831 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 6
  %t832 = load i1, ptr %t831, !tbaa !21
  store i1 %t832, ptr %l412, !tbaa !21
  br label %bb282
bb282:
  %t834 = load i1, ptr %l412, !tbaa !21
  br i1 %t834, label %bb283, label %bb284
bb283:
  %t835 = load i128, ptr %l31
  %t837 = icmp eq i128 %t835, 0
  br i1 %t837, label %bb285, label %bb286
bb284:
  br label %bb298
bb285:
  %t839 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t839, ptr %l416
  br label %bb287
bb286:
  br label %bb288
bb287:
  %t840 = load %"compiler/check:litv", ptr %l416
  store %"compiler/check:litv" %t840, ptr %rv
  br label %ret
bb288:
  %t841 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t843 = trunc i64 72 to i32
  %t844 = icmp eq i32 %t841, %t843
  br i1 %t844, label %bb289, label %bb290
bb289:
  %t846 = load i1, ptr %l27, !tbaa !21
  %t847 = load i1, ptr %l30, !tbaa !21
  %t850 = icmp ne i1 %t846, %t847
  %t851 = load i128, ptr %l28
  %t852 = load i128, ptr %l31
  %t855 = udiv i128 %t851, %t852
  %t858 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t850, i128 %t855)
  store %"compiler/check:litv" %t858, ptr %l425
  br label %bb291
bb290:
  br label %bb292
bb291:
  %t859 = load %"compiler/check:litv", ptr %l425
  store %"compiler/check:litv" %t859, ptr %rv
  br label %ret
bb292:
  %t860 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t862 = trunc i64 73 to i32
  %t863 = icmp eq i32 %t860, %t862
  br i1 %t863, label %bb293, label %bb294
bb293:
  %t865 = load i1, ptr %l27, !tbaa !21
  %t866 = load i128, ptr %l28
  %t867 = load i128, ptr %l31
  %t870 = urem i128 %t866, %t867
  %t873 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %t865, i128 %t870)
  store %"compiler/check:litv" %t873, ptr %l432
  br label %bb295
bb294:
  br label %bb296
bb295:
  %t874 = load %"compiler/check:litv", ptr %l432
  store %"compiler/check:litv" %t874, ptr %rv
  br label %ret
bb296:
  %t875 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t875, ptr %l433
  br label %bb297
bb297:
  %t876 = load %"compiler/check:litv", ptr %l433
  store %"compiler/check:litv" %t876, ptr %rv
  br label %ret
bb298:
  %t877 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 2
  %t878 = load i1, ptr %t877, !tbaa !21
  br i1 %t878, label %bb299, label %bb300
bb299:
  store i1 true, ptr %l435, !tbaa !21
  br label %bb301
bb300:
  %t880 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 2
  %t881 = load i1, ptr %t880, !tbaa !21
  store i1 %t881, ptr %l435, !tbaa !21
  br label %bb301
bb301:
  %t883 = load i1, ptr %l435, !tbaa !21
  br i1 %t883, label %bb302, label %bb303
bb302:
  %t884 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t884, ptr %l437
  br label %bb304
bb303:
  br label %bb305
bb304:
  %t885 = load %"compiler/check:litv", ptr %l437
  store %"compiler/check:litv" %t885, ptr %rv
  br label %ret
bb305:
  %t886 = getelementptr %"compiler/check:litv", ptr %l22, i32 0, i32 3
  %t887 = load i64, ptr %t886, !tbaa !24
  store i64 %t887, ptr %l39, !tbaa !24
  %t889 = getelementptr %"compiler/check:litv", ptr %l23, i32 0, i32 3
  %t890 = load i64, ptr %t889, !tbaa !24
  store i64 %t890, ptr %l40, !tbaa !24
  %t892 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t894 = trunc i64 72 to i32
  %t895 = icmp eq i32 %t892, %t894
  br i1 %t895, label %bb306, label %bb307
bb306:
  %t897 = load i64, ptr %l40, !tbaa !24
  %t899 = icmp ne i64 %t897, 0
  store i1 %t899, ptr %l442, !tbaa !21
  br label %bb308
bb307:
  store i1 false, ptr %l442, !tbaa !21
  br label %bb308
bb308:
  %t901 = load i1, ptr %l442, !tbaa !21
  br i1 %t901, label %bb309, label %bb310
bb309:
  %t902 = load i64, ptr %l39, !tbaa !24
  %t903 = sub i64 -9223372036854775807, 1
  %t906 = icmp eq i64 %t902, %t903
  br i1 %t906, label %bb311, label %bb312
bb310:
  store i1 false, ptr %l445, !tbaa !21
  br label %bb314
bb311:
  %t908 = load i64, ptr %l40, !tbaa !24
  %t910 = icmp eq i64 %t908, -1
  store i1 %t910, ptr %l449, !tbaa !21
  br label %bb313
bb312:
  store i1 false, ptr %l449, !tbaa !21
  br label %bb313
bb313:
  %t912 = load i1, ptr %l449, !tbaa !21
  %t913 = xor i1 %t912, true
  store i1 %t913, ptr %l445, !tbaa !21
  br label %bb314
bb314:
  %t915 = load i1, ptr %l445, !tbaa !21
  br i1 %t915, label %bb315, label %bb316
bb315:
  %t916 = load i64, ptr %l39, !tbaa !24
  %t917 = load i64, ptr %l40, !tbaa !24
  %t920 = sdiv i64 %t916, %t917
  %t922 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t920)
  store %"compiler/check:litv" %t922, ptr %l456
  br label %bb317
bb316:
  br label %bb318
bb317:
  %t923 = load %"compiler/check:litv", ptr %l456
  store %"compiler/check:litv" %t923, ptr %rv
  br label %ret
bb318:
  %t924 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t926 = trunc i64 73 to i32
  %t927 = icmp eq i32 %t924, %t926
  br i1 %t927, label %bb319, label %bb320
bb319:
  %t929 = load i64, ptr %l40, !tbaa !24
  %t931 = icmp ne i64 %t929, 0
  store i1 %t931, ptr %l459, !tbaa !21
  br label %bb321
bb320:
  store i1 false, ptr %l459, !tbaa !21
  br label %bb321
bb321:
  %t933 = load i1, ptr %l459, !tbaa !21
  br i1 %t933, label %bb322, label %bb323
bb322:
  %t934 = load i64, ptr %l40, !tbaa !24
  %t936 = icmp ne i64 %t934, -1
  store i1 %t936, ptr %l462, !tbaa !21
  br label %bb324
bb323:
  store i1 false, ptr %l462, !tbaa !21
  br label %bb324
bb324:
  %t938 = load i1, ptr %l462, !tbaa !21
  br i1 %t938, label %bb325, label %bb326
bb325:
  %t939 = load i64, ptr %l39, !tbaa !24
  %t940 = load i64, ptr %l40, !tbaa !24
  %t943 = srem i64 %t939, %t940
  %t945 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t943)
  store %"compiler/check:litv" %t945, ptr %l468
  br label %bb327
bb326:
  br label %bb328
bb327:
  %t946 = load %"compiler/check:litv", ptr %l468
  store %"compiler/check:litv" %t946, ptr %rv
  br label %ret
bb328:
  %t947 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t947, ptr %l469
  br label %bb329
bb329:
  %t948 = load %"compiler/check:litv", ptr %l469
  store %"compiler/check:litv" %t948, ptr %rv
  br label %ret
bb330:
  br i1 true, label %bb331, label %bb332
bb331:
  br label %bb333
bb332:
  br label %bb335
bb333:
  %t949 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t949, ptr %l470
  br label %bb334
bb334:
  %t950 = load %"compiler/check:litv", ptr %l470
  store %"compiler/check:litv" %t950, ptr %rv
  br label %ret
bb335:
  call void @__olang_check_failed(ptr @olang_loc_18ec9fb825b0f3da_76c21f303b4292b6)
  unreachable
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i32
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
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l12
  br label %bb5
bb5:
  %t20 = load i32, ptr %l12, !tbaa !23
  store i32 %t20, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l15
  br label %bb6
bb6:
  %t26 = load i1, ptr %l15, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l19
  br label %bb9
bb8:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb10
bb9:
  %t32 = load i32, ptr %l19, !range !{i32 0, i32 6}
  %t34 = trunc i64 5 to i32
  %t35 = icmp eq i32 %t32, %t34
  store i1 %t35, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l16, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l14 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l28 = alloca i1
  %l29 = alloca { i64, ptr }
  %l31 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l37 = alloca i64
  %l42 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca %"compiler/check:litv"
  %l49 = alloca i1
  %l51 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l60 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca ptr
  %l70 = alloca i32
  %l76 = alloca ptr
  %l79 = alloca i32
  %l82 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l85 = alloca %"compiler/source:Span"
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca ptr
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca i32
  %l106 = alloca i32
  %l110 = alloca ptr
  %l115 = alloca ptr
  %l117 = alloca ptr
  %s0 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t6, i32 %t7)
  store i64 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i64, ptr %l14, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l17, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp eq i64 %t18, 64
  br i1 %t20, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l20, !tbaa !27
  br label %bb7
bb3:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp eq i64 %t22, 32
  br i1 %t24, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t26, ptr %l20, !tbaa !27
  br label %bb7
bb7:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t27, { i64, ptr } %t28)
  store i32 %t29, ptr %l24
  br label %bb8
bb8:
  %t30 = load i32, ptr %l24, !tbaa !23
  store i32 %t30, ptr %l6, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp ne i64 %t33, 1
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb12
bb10:
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t37, ptr %l29, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 0
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t43 = call i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsNamed(ptr %v1, ptr %t41)
  store i1 %t43, ptr %l31
  br label %bb11
bb11:
  %t44 = load i1, ptr %l31, !tbaa !21
  store i1 %t44, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l28, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l32, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t47, ptr %l33
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t52 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v0, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, i64 %t50)
  store %"compiler/diagmsg:Msg" %t52, ptr %l36
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t53 = load ptr, ptr %l32, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l33
  %t55 = load %"compiler/diagmsg:Msg", ptr %l36
  %t56 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t53, %"compiler/source:Span" %t54, %"compiler/diagmsg:Msg" %t55)
  store i64 %t56, ptr %l37
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %t57, { i64, ptr } %t58)
  br label %bb17
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l1
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t61, %"compiler/source:Span" %t62)
  store ptr %t65, ptr %l42
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t66 = load ptr, ptr %l42, !tbaa !29
  store ptr %t66, ptr %rv
  br label %ret
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t68, ptr %l44, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 0
  %t72 = load ptr, ptr %t71, !tbaa !39
  %t76 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t67, ptr %t72)
  store %"compiler/check:litv" %t76, ptr %l47
  br label %bb20
bb20:
  %t77 = getelementptr %"compiler/check:litv", ptr %l47, i32 0, i32 0
  %t78 = load i1, ptr %t77, !tbaa !21
  br i1 %t78, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb24
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t81, ptr %l51, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 0
  %t85 = load ptr, ptr %t84, !tbaa !39
  %t88 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t80, ptr %t85)
  store i1 %t88, ptr %l53
  br label %bb23
bb23:
  %t89 = load i1, ptr %l53, !tbaa !21
  store i1 %t89, ptr %l49, !tbaa !21
  br label %bb24
bb24:
  %t90 = load i1, ptr %l49, !tbaa !21
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l54, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l55, !tbaa !29
  %t93 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t93, ptr %l56, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 0
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l58, !tbaa !29
  br i1 %t90, label %bb25, label %bb26
bb25:
  %t101 = load i32, ptr %l6, !tbaa !23
  store i32 %t101, ptr %l60, !tbaa !23
  br label %bb27
bb26:
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t103, ptr %l60, !tbaa !23
  br label %bb27
bb27:
  %t105 = load ptr, ptr %l55, !tbaa !29
  %t106 = load ptr, ptr %l58, !tbaa !29
  %t107 = load i32, ptr %l60, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t105, ptr %t106, i32 %t107)
  store ptr %t108, ptr %l63
  br label %bb28
bb28:
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t109, ptr %l64, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr ptr, ptr %t111, i64 0
  %t113 = load ptr, ptr %t112, !tbaa !39
  %t115 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t113)
  store %"compiler/source:Span" %t115, ptr %l66
  br label %bb29
bb29:
  %t116 = load ptr, ptr %l54, !tbaa !29
  %t117 = load ptr, ptr %l63, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l66
  %t119 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t116, ptr %t117, %"compiler/source:Span" %t118)
  store ptr %t119, ptr %l67
  br label %bb30
bb30:
  %t120 = load ptr, ptr %l67, !tbaa !29
  store ptr %t120, ptr %l8, !tbaa !29
  %t121 = load ptr, ptr %l8, !tbaa !29
  %t124 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t121)
  store i32 %t124, ptr %l70
  br label %bb31
bb31:
  %t125 = load i32, ptr %l70, !tbaa !23
  store i32 %t125, ptr %l9, !tbaa !23
  %t126 = load i32, ptr %l9, !tbaa !23
  %t127 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t130 = icmp eq i32 %t126, %t127
  br i1 %t130, label %bb32, label %bb33
bb32:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t136 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t132, %"compiler/source:Span" %t133)
  store ptr %t136, ptr %l76
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t137 = load ptr, ptr %l76, !tbaa !29
  store ptr %t137, ptr %rv
  br label %ret
bb35:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l9, !tbaa !23
  %t142 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t142, ptr %l79
  br label %bb36
bb36:
  %t143 = load i32, ptr %l6, !tbaa !23
  %t144 = load i32, ptr %l79, !tbaa !23
  %t146 = icmp ne i32 %t144, %t143
  br i1 %t146, label %bb37, label %bb38
bb37:
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l82, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t149, ptr %l83, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr ptr, ptr %t151, i64 0
  %t153 = load ptr, ptr %t152, !tbaa !39
  %t155 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t153)
  store %"compiler/source:Span" %t155, ptr %l85
  br label %bb39
bb38:
  br label %bb46
bb39:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i32, ptr %l3, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t156, i32 %t157)
  store { i64, ptr } %t160, ptr %l88
  br label %bb40
bb40:
  %t161 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l89, !tbaa !27
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i32, ptr %l6, !tbaa !23
  %t172 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t168, i32 %t169)
  store { i64, ptr } %t172, ptr %l92
  br label %bb41
bb41:
  %t173 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 0
  %t175 = extractvalue { i64, ptr } %t173, 1
  %t176 = mul i64 %t174, 1
  %t177 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t176)
  call void @llvm.memcpy.p0.p0.i64(ptr %t177, ptr %t175, i64 %t176, i1 false)
  %t178 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  store { i64, ptr } %t179, ptr %l93, !tbaa !27
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i32, ptr %l9, !tbaa !23
  %t184 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t180, i32 %t181)
  store { i64, ptr } %t184, ptr %l96
  br label %bb42
bb42:
  %t185 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  %t187 = extractvalue { i64, ptr } %t185, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  %t192 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t195 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromBitsWidth(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t192, { i64, ptr } %t193, { i64, ptr } %t191)
  store %"compiler/diagmsg:Msg" %t195, ptr %l98
  br label %bb43
bb43:
  %t196 = load ptr, ptr %l82, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l85
  %t198 = load %"compiler/diagmsg:Msg", ptr %l98
  %t199 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t196, %"compiler/source:Span" %t197, %"compiler/diagmsg:Msg" %t198)
  store i64 %t199, ptr %l99
  br label %bb44
bb44:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l1
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t200, %"compiler/source:Span" %t201)
  store ptr %t204, ptr %l102
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t205 = load ptr, ptr %l102, !tbaa !29
  store ptr %t205, ptr %rv
  br label %ret
bb46:
  %t206 = load ptr, ptr %l0, !tbaa !29
  store ptr %t206, ptr %l103, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t207, ptr %l104
  %t208 = load i32, ptr %l3, !tbaa !23
  store i32 %t208, ptr %l105, !tbaa !23
  store i32 21, ptr %l106
  %t209 = load i32, ptr %l9, !tbaa !23
  %t210 = load i32, ptr %l6, !tbaa !23
  %t213 = icmp ne i32 %t209, %t210
  br i1 %t213, label %bb47, label %bb48
bb47:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l1
  %t217 = load ptr, ptr %l8, !tbaa !29
  %t218 = load i32, ptr %l6, !tbaa !23
  %t223 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t215, %"compiler/source:Span" %t216, ptr %t217, i32 %t218)
  store ptr %t223, ptr %l115
  br label %bb49
bb48:
  %t224 = load ptr, ptr %l8, !tbaa !29
  store ptr %t224, ptr %l110, !tbaa !29
  br label %bb50
bb49:
  %t226 = load ptr, ptr %l115, !tbaa !29
  store ptr %t226, ptr %l110, !tbaa !29
  br label %bb50
bb50:
  %t227 = load ptr, ptr %l103, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l104
  %t229 = load i32, ptr %l105, !tbaa !23
  %t230 = load i32, ptr %l106, !range !{i32 0, i32 52}
  %t231 = load ptr, ptr %l110, !tbaa !29
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v2, ptr %t227, %"compiler/source:Span" %t228, i32 %t229, i32 %t230, ptr %t231, ptr null)
  store ptr %t232, ptr %l117
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t233 = load ptr, ptr %l117, !tbaa !29
  store ptr %t233, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l17 = alloca ptr
  %l19 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2, ptr %l5
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t3, ptr %l6, !tbaa !23
  store i32 23, ptr %l7
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load %"compiler/source:Span", ptr %l1
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t4, %"compiler/source:Span" %t5, ptr %a2)
  store ptr %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l12, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l13
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t13)
  store i32 %t15, ptr %l15
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l13
  %t19 = load i32, ptr %l15, !tbaa !23
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t17, %"compiler/source:Span" %t18, i32 %t19, i64 %a3)
  store ptr %t21, ptr %l17
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l5
  %t25 = load i32, ptr %l6, !tbaa !23
  %t26 = load i32, ptr %l7, !range !{i32 0, i32 52}
  %t27 = load ptr, ptr %l11, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %t23, %"compiler/source:Span" %t24, i32 %t25, i32 %t26, ptr %t27, ptr %t22)
  store ptr %t29, ptr %l19
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l19, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
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
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i32, ptr %l7, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l8
  br label %bb2
bb2:
  %t15 = load i32, ptr %l8, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca %"compiler/generic:Desc"
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i1
  %l37 = alloca %"compiler/check:reflList"
  %l40 = alloca i32
  %l43 = alloca i32
  %l48 = alloca %"compiler/check:reflList"
  %l49 = alloca %"compiler/check:reflList"
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l56 = alloca %"compiler/check:reflList"
  %l59 = alloca i32
  %l65 = alloca %"compiler/generic:Desc"
  %l69 = alloca i1
  %l76 = alloca %"compiler/check:reflList"
  %l80 = alloca i1
  %l86 = alloca %"compiler/check:reflList"
  %l90 = alloca i1
  %l96 = alloca %"compiler/check:reflList"
  %l97 = alloca %"compiler/check:reflList"
  %l100 = alloca i32
  %l103 = alloca %"compiler/check:reflList"
  %l106 = alloca i1
  %l107 = alloca i1
  %l110 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i1
  %l117 = alloca %"compiler/check:reflList"
  %l120 = alloca %"compiler/check:reflList"
  %l121 = alloca ptr
  %l122 = alloca i1
  %l129 = alloca %"compiler/check:reflList"
  %l130 = alloca %"compiler/check:reflList"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflList"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb81
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l21
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t27, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t28, ptr %l22
  br label %bb7
bb7:
  %t29 = load i1, ptr %l22, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealiasModule(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store i64 %t34, ptr %l25
  br label %bb10
bb9:
  br label %bb28
bb10:
  %t35 = load i64, ptr %l25, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp sge i64 %t36, 0
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i32, ptr %l3, !tbaa !23
  %t46 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %t40, i64 %t41, i32 %t42)
  store i1 %t46, ptr %l32
  br label %bb13
bb12:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb14
bb13:
  %t47 = load i1, ptr %l32, !tbaa !21
  %t48 = xor i1 %t47, true
  store i1 %t48, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l28, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t52 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFunctions, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t57 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s3, i1 true, i32 %t51, i64 %t52, i64 %t53)
  store %"compiler/check:reflList" %t57, ptr %l37
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  %t58 = load %"compiler/check:reflList", ptr %l37
  store %"compiler/check:reflList" %t58, ptr %rv
  br label %ret
bb18:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp slt i64 %t59, 0
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i32 %t67, ptr %l43
  br label %bb21
bb20:
  store i32 -1, ptr %l40, !tbaa !23
  br label %bb22
bb21:
  %t68 = load i32, ptr %l43, !tbaa !23
  store i32 %t68, ptr %l40, !tbaa !23
  br label %bb22
bb22:
  %t69 = load i32, ptr %l40, !tbaa !23
  store i32 %t69, ptr %l5, !tbaa !23
  %t70 = load i32, ptr %l5, !tbaa !23
  %t72 = icmp sge i32 %t70, 0
  br i1 %t72, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t74 = load i32, ptr %l5, !tbaa !23
  %t75 = load i64, ptr @G_2ecompiler_2fgeneric_2eListBuilders, !tbaa !24
  %t78 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s4, i1 true, i32 %t74, i64 %t75, i64 -1)
  store %"compiler/check:reflList" %t78, ptr %l48
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  %t79 = load %"compiler/check:reflList", ptr %l48
  store %"compiler/check:reflList" %t79, ptr %rv
  br label %ret
bb26:
  %t80 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t80, ptr %l49
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  %t81 = load %"compiler/check:reflList", ptr %l49
  store %"compiler/check:reflList" %t81, ptr %rv
  br label %ret
bb28:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t82, i32 %t83)
  store { i64, ptr } %t86, ptr %l52
  br label %bb29
bb29:
  %t87 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t88 = call i64 @compiler_2fcheck_2elistIndex(ptr %v0, { i64, ptr } %t87)
  store i64 %t88, ptr %l53
  br label %bb30
bb30:
  %t89 = load i64, ptr %l53, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb31, label %bb32
bb31:
  %t94 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t94, ptr %l56
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s1)
  %t95 = load %"compiler/check:reflList", ptr %l56
  store %"compiler/check:reflList" %t95, ptr %rv
  br label %ret
bb34:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i32 %t100, ptr %l59
  br label %bb35
bb35:
  %t101 = load i32, ptr %l59, !tbaa !23
  store i32 %t101, ptr %l7, !tbaa !23
  %t102 = load i32, ptr %l7, !tbaa !23
  %t104 = icmp sge i32 %t102, 0
  br i1 %t104, label %bb36, label %bb37
bb36:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i32, ptr %l7, !tbaa !23
  %t113 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t109, i32 %t110)
  store %"compiler/generic:Desc" %t113, ptr %l65
  br label %bb38
bb37:
  br label %bb61
bb38:
  %t114 = load %"compiler/generic:Desc", ptr %l65
  store %"compiler/generic:Desc" %t114, ptr %l8
  %t115 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  %t117 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t120 = icmp eq i64 %t116, %t117
  br i1 %t120, label %bb39, label %bb40
bb39:
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFields, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  store i1 %t126, ptr %l69, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb41
bb41:
  %t128 = load i1, ptr %l69, !tbaa !21
  br i1 %t128, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t129 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t130 = load i32, ptr %t129, !tbaa !23
  %t131 = load i64, ptr %l6, !tbaa !24
  %t132 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 2
  %t133 = load i64, ptr %t132, !tbaa !24
  %t137 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s7, i1 true, i32 %t130, i64 %t131, i64 %t133)
  store %"compiler/check:reflList" %t137, ptr %l76
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s1)
  %t138 = load %"compiler/check:reflList", ptr %l76
  store %"compiler/check:reflList" %t138, ptr %rv
  br label %ret
bb45:
  %t139 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb46, label %bb47
bb46:
  %t146 = load i64, ptr %l6, !tbaa !24
  %t147 = load i64, ptr @G_2ecompiler_2fgeneric_2eListParams, !tbaa !24
  %t150 = icmp eq i64 %t146, %t147
  store i1 %t150, ptr %l80, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb48
bb48:
  %t152 = load i1, ptr %l80, !tbaa !21
  br i1 %t152, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load i32, ptr %l7, !tbaa !23
  %t154 = load i64, ptr %l6, !tbaa !24
  %t157 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s8, i1 true, i32 %t153, i64 %t154, i64 -1)
  store %"compiler/check:reflList" %t157, ptr %l86
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s1)
  %t158 = load %"compiler/check:reflList", ptr %l86
  store %"compiler/check:reflList" %t158, ptr %rv
  br label %ret
bb52:
  %t159 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t160 = load i64, ptr %t159, !tbaa !24
  %t161 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t164 = icmp eq i64 %t160, %t161
  br i1 %t164, label %bb53, label %bb54
bb53:
  %t166 = load i64, ptr %l6, !tbaa !24
  %t167 = load i64, ptr @G_2ecompiler_2fgeneric_2eListResults, !tbaa !24
  %t170 = icmp eq i64 %t166, %t167
  store i1 %t170, ptr %l90, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb55
bb55:
  %t172 = load i1, ptr %l90, !tbaa !21
  br i1 %t172, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s9
  %t173 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t174 = load i32, ptr %t173, !tbaa !23
  %t175 = load i64, ptr %l6, !tbaa !24
  %t178 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s9, i1 true, i32 %t174, i64 %t175, i64 -1)
  store %"compiler/check:reflList" %t178, ptr %l96
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s1)
  %t179 = load %"compiler/check:reflList", ptr %l96
  store %"compiler/check:reflList" %t179, ptr %rv
  br label %ret
bb59:
  %t180 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t180, ptr %l97
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s1)
  %t181 = load %"compiler/check:reflList", ptr %l97
  store %"compiler/check:reflList" %t181, ptr %rv
  br label %ret
bb61:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t186 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t182, ptr %t183)
  store i32 %t186, ptr %l100
  br label %bb62
bb62:
  %t187 = load i32, ptr %l100, !tbaa !23
  store i32 %t187, ptr %l9, !tbaa !23
  %t188 = load i32, ptr %l9, !tbaa !23
  %t190 = icmp slt i32 %t188, 0
  br i1 %t190, label %bb63, label %bb64
bb63:
  %t192 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t192, ptr %l103
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s1)
  %t193 = load %"compiler/check:reflList", ptr %l103
  store %"compiler/check:reflList" %t193, ptr %rv
  br label %ret
bb66:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l9, !tbaa !23
  %t198 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t194, i32 %t195)
  store i1 %t198, ptr %l106
  br label %bb67
bb67:
  %t199 = load i1, ptr %l106, !tbaa !21
  br i1 %t199, label %bb68, label %bb69
bb68:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l2, !tbaa !29
  %t204 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %t200, ptr %t201)
  store i1 %t204, ptr %l110
  br label %bb70
bb69:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb71
bb70:
  %t205 = load i1, ptr %l110, !tbaa !21
  %t206 = xor i1 %t205, true
  store i1 %t206, ptr %l107, !tbaa !21
  br label %bb71
bb71:
  %t208 = load i1, ptr %l107, !tbaa !21
  br i1 %t208, label %bb72, label %bb73
bb72:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l9, !tbaa !23
  %t211 = load i32, ptr %l3, !tbaa !23
  %t215 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t209, i32 %t210, i32 %t211)
  store i1 %t215, ptr %l116
  br label %bb74
bb73:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb75
bb74:
  %t216 = load i1, ptr %l116, !tbaa !21
  store i1 %t216, ptr %l112, !tbaa !21
  br label %bb75
bb75:
  %t217 = load i1, ptr %l112, !tbaa !21
  br i1 %t217, label %bb76, label %bb77
bb76:
  %t218 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t218, ptr %l117
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s1)
  %t219 = load %"compiler/check:reflList", ptr %l117
  store %"compiler/check:reflList" %t219, ptr %rv
  br label %ret
bb79:
  %t220 = load i32, ptr %l9, !tbaa !23
  %t221 = load i64, ptr %l6, !tbaa !24
  %t224 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s1, i1 true, i32 %t220, i64 %t221, i64 -1)
  store %"compiler/check:reflList" %t224, ptr %l120
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s1)
  %t225 = load %"compiler/check:reflList", ptr %l120
  store %"compiler/check:reflList" %t225, ptr %rv
  br label %ret
bb81:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t227 = load ptr, ptr %l121, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb82, label %bb83
bb82:
  %t230 = load ptr, ptr %l121, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 30}
  %t233 = icmp eq i64 %t231, 2
  store i1 %t233, ptr %l122, !tbaa !21
  br label %bb83
bb83:
  %t234 = load i1, ptr %l122, !tbaa !21
  br i1 %t234, label %bb84, label %bb85
bb84:
  %t235 = load ptr, ptr %l1, !tbaa !29
  %t237 = getelementptr { i64, [4 x i64] }, ptr %t235, i32 0, i32 1
  %t238 = getelementptr { %"compiler/source:Span", ptr }, ptr %t237, i32 0, i32 1
  %t239 = load ptr, ptr %t238
  store ptr %t239, ptr %l10, !tbaa !29
  br label %bb86
bb85:
  br label %bb88
bb86:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l10, !tbaa !29
  %t245 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t241, ptr %t242)
  store %"compiler/check:reflList" %t245, ptr %l129
  br label %bb87
bb87:
  %t246 = load %"compiler/check:reflList", ptr %l129
  store %"compiler/check:reflList" %t246, ptr %rv
  br label %ret
bb88:
  br i1 true, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb93
bb91:
  %t247 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t247, ptr %l130
  br label %bb92
bb92:
  %t248 = load %"compiler/check:reflList", ptr %l130
  store %"compiler/check:reflList" %t248, ptr %rv
  br label %ret
bb93:
  call void @__olang_check_failed(ptr @olang_loc_7b7c458ad09559c8_7a5ff3a2c3d540e4)
  unreachable
ret:
  %rr = load %"compiler/check:reflList", ptr %rv
  ret %"compiler/check:reflList" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i32
  %l12 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i32
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i32
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i32
  %l54 = alloca i32
  %l55 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l76 = alloca ptr
  %l78 = alloca i32
  %l80 = alloca i32
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l12
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l12, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 35
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 36
  %t18 = load i1, ptr %t17, !tbaa !21
  store i1 %t18, ptr %l5, !tbaa !21
  %t20 = load ptr, ptr %l3, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 10
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l20
  br label %bb5
bb5:
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t27, i32 0, i32 35
  store i64 %t26, ptr %t28, !tbaa !24
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load i1, ptr %l2, !tbaa !21
  %t33 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 36
  store i1 %t30, ptr %t33, !tbaa !21
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l25, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l28, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t43)
  store i32 %t45, ptr %l30
  br label %bb6
bb6:
  %t46 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = load i32, ptr %l30, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t47, i32 %t48, i64 %t46)
  store i32 %t50, ptr %l32
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l23, !tbaa !29
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = load i32, ptr %l32, !tbaa !23
  %t54 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t51, ptr %t52, i32 %t53)
  store ptr %t54, ptr %l33
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l33, !tbaa !29
  store ptr %t55, ptr %l6, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l35
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 35
  store i64 %t60, ptr %t63, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t64)
  store ptr %t66, ptr %l39
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = load i1, ptr %l5, !tbaa !21
  %t71 = getelementptr %"compiler/check:frame", ptr %t67, i32 0, i32 36
  store i1 %t68, ptr %t71, !tbaa !21
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l42, !tbaa !29
  %t73 = load ptr, ptr %l6, !tbaa !29
  %t76 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t73)
  store i32 %t76, ptr %l45
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l42, !tbaa !29
  %t78 = load i32, ptr %l45, !tbaa !23
  %t79 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t79, ptr %l46
  br label %bb12
bb12:
  %t80 = load i32, ptr %l46, !tbaa !23
  store i32 %t80, ptr %l7, !tbaa !23
  %t81 = load i32, ptr %l7, !tbaa !23
  %t82 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t85 = icmp ne i32 %t81, %t82
  br i1 %t85, label %bb13, label %bb14
bb13:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l51, !tbaa !29
  %t88 = load i32, ptr %l7, !tbaa !23
  store i32 %t88, ptr %l52, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t89)
  store i32 %t91, ptr %l54
  br label %bb15
bb14:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb17
bb15:
  %t92 = load ptr, ptr %l51, !tbaa !29
  %t93 = load i32, ptr %l52, !tbaa !23
  %t94 = load i32, ptr %l54, !tbaa !23
  %t95 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t92, i32 %t93, i32 %t94)
  store i1 %t95, ptr %l55
  br label %bb16
bb16:
  %t96 = load i1, ptr %l55, !tbaa !21
  %t97 = xor i1 %t96, true
  store i1 %t97, ptr %l50, !tbaa !21
  br label %bb17
bb17:
  %t99 = load i1, ptr %l50, !tbaa !21
  br i1 %t99, label %bb18, label %bb19
bb18:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l57, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l59
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l60, !tbaa !29
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t108 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t105)
  store i32 %t108, ptr %l63
  br label %bb21
bb21:
  %t109 = load ptr, ptr %l60, !tbaa !29
  %t110 = load i32, ptr %l63, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l64
  br label %bb22
bb22:
  %t112 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l65, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i1, ptr %l2, !tbaa !21
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v0, ptr %t119, i1 %t120)
  store { i64, ptr } %t123, ptr %l68
  br label %bb23
bb23:
  %t124 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMessageNotText(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t124, { i64, ptr } %t125)
  store %"compiler/diagmsg:Msg" %t126, ptr %l69
  br label %bb24
bb24:
  %t127 = load ptr, ptr %l57, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l59
  %t129 = load %"compiler/diagmsg:Msg", ptr %l69
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l70
  br label %bb25
bb25:
  store ptr null, ptr %rv
  br label %ret
bb26:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l72, !tbaa !29
  %t133 = load ptr, ptr %l6, !tbaa !29
  store ptr %t133, ptr %l73, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  store ptr %t139, ptr %l76, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t140)
  store i32 %t142, ptr %l78
  br label %bb27
bb27:
  %t143 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t144 = load ptr, ptr %l76, !tbaa !29
  %t145 = load i32, ptr %l78, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t144, i32 %t145, i64 %t143)
  store i32 %t147, ptr %l80
  br label %bb28
bb28:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t148)
  store %"compiler/source:Span" %t150, ptr %l82
  br label %bb29
bb29:
  %t151 = load ptr, ptr %l72, !tbaa !29
  %t152 = load ptr, ptr %l73, !tbaa !29
  %t153 = load i32, ptr %l80, !tbaa !23
  %t154 = load %"compiler/source:Span", ptr %l82
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t151, ptr %t152, i32 %t153, %"compiler/source:Span" %t154)
  store ptr %t155, ptr %l83
  br label %bb30
bb30:
  %t156 = load ptr, ptr %l83, !tbaa !29
  store ptr %t156, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i32
  %l16 = alloca i32
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
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb11
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
  call void @__olang_check_failed(ptr @olang_loc_a35c558c8816a066_5fecae8fa675e8fa)
  unreachable
bb11:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store i32 %t15, ptr %l10
  br label %bb12
bb12:
  %t16 = load i32, ptr %l10, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load i32, ptr %l2, !tbaa !23
  %t19 = icmp sge i32 %t17, 0
  br i1 %t19, label %bb13, label %bb14
bb13:
  %t21 = load i32, ptr %l2, !tbaa !23
  store i32 %t21, ptr %l14, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %t22)
  store i32 %t24, ptr %l16
  br label %bb15
bb14:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb16
bb15:
  %t25 = load i32, ptr %l14, !tbaa !23
  %t26 = load i32, ptr %l16, !tbaa !23
  %t27 = icmp eq i32 %t25, %t26
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb16
bb16:
  %t29 = load i1, ptr %l13, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/generic:Origin"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i64
  %l21 = alloca i64
  %l25 = alloca %"compiler/generic:Origin"
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l46 = alloca { i64, [3 x i64] }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l64 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l78 = alloca i64
  %l81 = alloca { i64, [3 x i64] }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t78 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  %t6 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l14
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l11, !tbaa !29
  %t8 = load i32, ptr %l14, !tbaa !23
  %t9 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t21 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v2, ptr %t15, %"compiler/source:Span" %t16, %"compiler/diagmsg:Msg" %a4)
  store i64 %t21, ptr %l21
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i64, ptr %l21, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/generic:Origin" %t30, ptr %l25
  br label %bb7
bb7:
  %t31 = load %"compiler/generic:Origin", ptr %l25
  store %"compiler/generic:Origin" %t31, ptr %l6
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l26, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t40, i64 %t41)
  store i64 %t44, ptr %l32
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = load i64, ptr %l32, !tbaa !24
  %t47 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t45, i64 %t46)
  store ptr %t47, ptr %l33
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l33, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t54 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t52, i32 %t51)
  store { i64, ptr } %t54, ptr %l36
  br label %bb10
bb10:
  %t55 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 4
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l40, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Origin", ptr %l6, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/generic:Origin", ptr %l6, i32 0, i32 1
  %t69 = getelementptr %"compiler/source:Span", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t72 = sext i32 %t70 to i64
  %t73 = getelementptr %"compiler/generic:Origin", ptr %l6, i32 0, i32 1
  %t74 = getelementptr %"compiler/source:Span", ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 0
  store i64 3, ptr %t79
  %t81 = insertvalue { i64, i64, i64 } undef, i64 %t67, 0
  %t83 = insertvalue { i64, i64, i64 } %t81, i64 %t72, 1
  %t85 = insertvalue { i64, i64, i64 } %t83, i64 %t77, 2
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 1
  store { i64, i64, i64 } %t85, ptr %t86
  %t87 = load { i64, [3 x i64] }, ptr %t78
  store { i64, [3 x i64] } %t87, ptr %l46
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t88, ptr %l47, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t89, ptr %l48, !tbaa !27
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l49, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l2, !tbaa !23
  %t95 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l52
  br label %bb11
bb11:
  %t96 = load ptr, ptr %l49, !tbaa !29
  %t97 = load i32, ptr %l52, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l53
  br label %bb12
bb12:
  %t99 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t109 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNeeds(ptr %v0, ptr %v1, ptr %v0, ptr %v0, { i64, ptr } %t106, { i64, ptr } %t107, { i64, ptr } %t105)
  store %"compiler/diagmsg:Msg" %t109, ptr %l55
  br label %bb13
bb13:
  %t110 = load ptr, ptr %l40, !tbaa !29
  %t111 = load { i64, [3 x i64] }, ptr %l46
  %t112 = load %"compiler/diagmsg:Msg", ptr %l55
  %t113 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v0, ptr %t110, { i64, [3 x i64] } %t111, %"compiler/diagmsg:Msg" %t112)
  store i64 %t113, ptr %l56
  br label %bb14
bb14:
  %t114 = load i64, ptr %l56, !tbaa !24
  store i64 %t114, ptr %l8, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l58
  br label %bb15
bb15:
  %t118 = load i64, ptr %l58, !tbaa !24
  store i64 %t118, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = icmp sge i64 %t119, 0
  br i1 %t121, label %bb16, label %bb17
bb16:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l62, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  store ptr %t127, ptr %l64, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i64, ptr %l9, !tbaa !24
  %t135 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l68
  br label %bb18
bb17:
  %t136 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t136, ptr %l61, !tbaa !27
  br label %bb21
bb18:
  %t138 = load ptr, ptr %l64, !tbaa !29
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t138, i64 %t139)
  store ptr %t140, ptr %l69
  br label %bb19
bb19:
  %t141 = load ptr, ptr %l69, !tbaa !29
  %t143 = getelementptr %"compiler/ast:Func", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %t143, !tbaa !23
  %t145 = load ptr, ptr %l62, !tbaa !29
  %t147 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t145, i32 %t144)
  store { i64, ptr } %t147, ptr %l72
  br label %bb20
bb20:
  %t148 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t148, ptr %l61, !tbaa !27
  br label %bb21
bb21:
  %t149 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t149, ptr %l10, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 0
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/load:Loader", ptr %t156, i32 0, i32 4
  %t159 = load ptr, ptr %t158, !tbaa !29
  store ptr %t159, ptr %l77, !tbaa !29
  %t160 = load i64, ptr %l8, !tbaa !24
  store i64 %t160, ptr %l78, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l1
  %t165 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t161, %"compiler/source:Span" %t162)
  store { i64, [3 x i64] } %t165, ptr %l81
  br label %bb22
bb22:
  %t166 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t166, { i64, ptr } %t167)
  store %"compiler/diagmsg:Msg" %t170, ptr %l84
  br label %bb23
bb23:
  %t171 = load ptr, ptr %l77, !tbaa !29
  %t172 = load i64, ptr %l78, !tbaa !24
  %t173 = load { i64, [3 x i64] }, ptr %l81
  %t174 = load %"compiler/diagmsg:Msg", ptr %l84
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t171, i64 %t172, { i64, [3 x i64] } %t173, %"compiler/diagmsg:Msg" %t174)
  br label %bb24
bb24:
  %t175 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l37 = alloca { i64, ptr }
  %l47 = alloca %"compiler/source:Span"
  %l51 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca { i64, ptr }
  %l112 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb13
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 6
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb13
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 10
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l2, !tbaa !29
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l9, !tbaa !29
  br label %bb25
bb14:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 30}
  %t56 = icmp eq i64 %t54, 7
  store i1 %t56, ptr %l31, !tbaa !21
  br label %bb16
bb16:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb17, label %bb18
bb17:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr }, ptr %t60, i32 0, i32 1
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l3, !tbaa !29
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Chain", ptr %t64, i32 0, i32 1
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  store { i64, ptr } %t67, ptr %l37, !tbaa !27
  %t68 = load ptr, ptr %l3, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Chain", ptr %t68, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t75 = sub i64 %t73, 2
  %t77 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 %t75
  %t80 = load ptr, ptr %t79, !tbaa !39
  store ptr %t80, ptr %l9, !tbaa !29
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store ptr null, ptr %l9, !tbaa !29
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_2a99a4b292d7414c_8b691b3b565c8d8)
  unreachable
bb25:
  %t83 = load ptr, ptr %l9, !tbaa !29
  store ptr %t83, ptr %l4, !tbaa !29
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t88)
  store %"compiler/source:Span" %t90, ptr %l47
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load %"compiler/source:Span", ptr %l47
  store %"compiler/source:Span" %t91, ptr %rv
  br label %ret
bb29:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 10
  store ptr %t100, ptr %l51, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t101)
  store ptr %t103, ptr %l53
  br label %bb30
bb30:
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t106 = getelementptr %"compiler/check:frame", ptr %t104, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load ptr, ptr %l51, !tbaa !29
  %t110 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t108, i64 %t107)
  store ptr %t110, ptr %l56
  br label %bb31
bb31:
  %t111 = load ptr, ptr %l56, !tbaa !29
  %t113 = getelementptr %"compiler/load:Module", ptr %t111, i32 0, i32 6
  %t114 = load ptr, ptr %t113, !tbaa !29
  store ptr %t114, ptr %l5, !tbaa !29
  %t116 = load ptr, ptr %l5, !tbaa !29
  %t118 = icmp eq ptr %t116, null
  br i1 %t118, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_55e99e9157e8316e_5c7d65a130dfb84a)
  unreachable
bb33:
  br label %bb34
bb34:
  %t120 = load ptr, ptr %l5, !tbaa !29
  %t123 = getelementptr %"compiler/source:Source", ptr %t120, i32 0, i32 1
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l6, !tbaa !27
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t128 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t126)
  store %"compiler/source:Span" %t128, ptr %l65
  br label %bb35
bb35:
  %t129 = getelementptr %"compiler/source:Span", ptr %l65, i32 0, i32 1
  %t130 = load i32, ptr %t129, !tbaa !23
  %t132 = sext i32 %t130 to i64
  store i64 %t132, ptr %l7, !tbaa !24
  br label %bb36
bb36:
  %t134 = load i64, ptr %l7, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t140 = icmp slt i64 %t134, %t137
  br i1 %t140, label %bb37, label %bb38
bb37:
  %t142 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t142, ptr %l73, !tbaa !27
  %t143 = load i64, ptr %l7, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i8, ptr %t146, i64 %t143
  %t148 = load i8, ptr %t147, !tbaa !32
  %t150 = icmp eq i8 %t148, 32
  br i1 %t150, label %bb39, label %bb40
bb38:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb42
bb39:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb41
bb40:
  %t152 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t152, ptr %l78, !tbaa !27
  %t153 = load i64, ptr %l7, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i8, ptr %t156, i64 %t153
  %t158 = load i8, ptr %t157, !tbaa !32
  %t160 = icmp eq i8 %t158, 41
  store i1 %t160, ptr %l77, !tbaa !21
  br label %bb41
bb41:
  %t162 = load i1, ptr %l77, !tbaa !21
  store i1 %t162, ptr %l72, !tbaa !21
  br label %bb42
bb42:
  %t163 = load i1, ptr %l72, !tbaa !21
  %t164 = xor i1 %t163, true
  br i1 %t164, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t166 = load i64, ptr %l7, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l7, !tbaa !24
  br label %bb46
bb46:
  br label %bb36
bb47:
  %t170 = load i64, ptr %l7, !tbaa !24
  store i64 %t170, ptr %l8, !tbaa !24
  br label %bb48
bb48:
  %t172 = load i64, ptr %l8, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t178 = icmp slt i64 %t172, %t175
  br i1 %t178, label %bb49, label %bb50
bb49:
  %t180 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t180, ptr %l91, !tbaa !27
  %t181 = load i64, ptr %l8, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i8, ptr %t184, i64 %t181
  %t186 = load i8, ptr %t185, !tbaa !32
  %t188 = icmp ne i8 %t186, 32
  store i1 %t188, ptr %l90, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb51
bb51:
  %t190 = load i1, ptr %l90, !tbaa !21
  br i1 %t190, label %bb52, label %bb53
bb52:
  %t191 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t191, ptr %l96, !tbaa !27
  %t192 = load i64, ptr %l8, !tbaa !24
  %t194 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr i8, ptr %t195, i64 %t192
  %t197 = load i8, ptr %t196, !tbaa !32
  %t199 = icmp ne i8 %t197, 40
  store i1 %t199, ptr %l95, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb54
bb54:
  %t201 = load i1, ptr %l95, !tbaa !21
  br i1 %t201, label %bb55, label %bb56
bb55:
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t202, ptr %l101, !tbaa !27
  %t203 = load i64, ptr %l8, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i8, ptr %t206, i64 %t203
  %t208 = load i8, ptr %t207, !tbaa !32
  %t210 = icmp ne i8 %t208, 10
  store i1 %t210, ptr %l100, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb57
bb57:
  %t212 = load i1, ptr %l100, !tbaa !21
  %t213 = xor i1 %t212, true
  br i1 %t213, label %bb58, label %bb59
bb58:
  br label %bb62
bb59:
  br label %bb60
bb60:
  %t215 = load i64, ptr %l8, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l8, !tbaa !24
  br label %bb61
bb61:
  br label %bb48
bb62:
  %t219 = load i64, ptr %l7, !tbaa !24
  %t221 = trunc i64 %t219 to i32
  %t222 = load i64, ptr %l8, !tbaa !24
  %t224 = trunc i64 %t222 to i32
  %t227 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t221, i32 %t224)
  store %"compiler/source:Span" %t227, ptr %l112
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s0)
  %t228 = load %"compiler/source:Span", ptr %l112
  store %"compiler/source:Span" %t228, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l18 = alloca ptr
  %l22 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i64
  %l39 = alloca { i64, [3 x i64] }
  %l44 = alloca i1
  %l50 = alloca i1
  %l61 = alloca { i64, ptr }
  %l65 = alloca { i64, [3 x i64] }
  %l67 = alloca ptr
  %l68 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i64
  %l79 = alloca i64
  %l88 = alloca ptr
  %l91 = alloca { i64, [3 x i64] }
  %l98 = alloca { i64, [3 x i64] }
  %l107 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t119 = alloca { i64, [3 x i64] }, align 8
  %t153 = alloca { i64, [3 x i64] }, align 8
  %t217 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t8, i64 %t9)
  store ptr %t12, ptr %l18
  br label %bb3
bb2:
  br label %bb25
bb3:
  %t13 = load ptr, ptr %l18, !tbaa !29
  store ptr %t13, ptr %l4, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l22
  br label %bb4
bb4:
  %t22 = load i64, ptr %l22, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %l6, !tbaa !24
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Func", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp eq i64 %t34, 0
  br i1 %t36, label %bb7, label %bb8
bb6:
  br label %bb14
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l30, !tbaa !29
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l31, !tbaa !24
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Func", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e5a247dfc16ec462_1cb55c2f24e67da6)
  unreachable
bb10:
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Func", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Param", ptr %t50, i32 0, i32 2
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load ptr, ptr %l30, !tbaa !29
  %t56 = load i64, ptr %l31, !tbaa !24
  %t58 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t55, i64 %t56, ptr %t54)
  store { i64, [3 x i64] } %t58, ptr %l39
  br label %bb12
bb12:
  %t59 = load { i64, [3 x i64] }, ptr %l39
  store { i64, [3 x i64] } %t59, ptr %rv
  br label %ret
bb13:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = sub i64 %t60, 1
  store i64 %t62, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t64 = load i64, ptr %l6, !tbaa !24
  %t66 = icmp sge i64 %t64, 0
  br i1 %t66, label %bb15, label %bb16
bb15:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Func", ptr %t68, i32 0, i32 3
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Sig", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t78 = icmp sgt i64 %t76, 0
  store i1 %t78, ptr %l44, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb17
bb17:
  %t80 = load i1, ptr %l44, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 3
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/ast:Sig", ptr %t85, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t93 = icmp slt i64 %t81, %t90
  store i1 %t93, ptr %l50, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb20
bb20:
  %t95 = load i1, ptr %l50, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb21:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l5, !tbaa !24
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/ast:Sig", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l61, !tbaa !27
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr ptr, ptr %t108, i64 %t105
  %t110 = load ptr, ptr %t109, !tbaa !39
  %t112 = getelementptr %"compiler/ast:Param", ptr %t110, i32 0, i32 2
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t117 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t96, i64 %t97, ptr %t113)
  store { i64, [3 x i64] } %t117, ptr %l65
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t118 = load { i64, [3 x i64] }, ptr %l65
  store { i64, [3 x i64] } %t118, ptr %rv
  br label %ret
bb24:
  store { i64, [3 x i64] } zeroinitializer, ptr %t119
  %t120 = getelementptr { i64, [3 x i64] }, ptr %t119, i32 0, i32 0
  store i64 0, ptr %t120
  %t121 = load { i64, [3 x i64] }, ptr %t119
  store { i64, [3 x i64] } %t121, ptr %rv
  br label %ret
bb25:
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t124 = load ptr, ptr %l67, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb26, label %bb27
bb26:
  %t127 = load ptr, ptr %l67, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 5}
  %t130 = icmp eq i64 %t128, 0
  store i1 %t130, ptr %l68, !tbaa !21
  br label %bb27
bb27:
  %t131 = load i1, ptr %l68, !tbaa !21
  %t132 = xor i1 %t131, true
  br i1 %t132, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb31
bb29:
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [3 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { i32 }, ptr %t136, i32 0, i32 0
  %t138 = load i32, ptr %t137
  %t142 = sext i32 %t138 to i64
  store i64 %t142, ptr %l76, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 14
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t145)
  store i64 %t147, ptr %l79
  br label %bb30
bb30:
  %t148 = load i64, ptr %l76, !tbaa !24
  %t149 = load i64, ptr %l79, !tbaa !24
  %t150 = icmp sge i64 %t148, %t149
  store i1 %t150, ptr %l72, !tbaa !21
  br label %bb31
bb31:
  %t152 = load i1, ptr %l72, !tbaa !21
  br i1 %t152, label %bb32, label %bb33
bb32:
  store { i64, [3 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [3 x i64] }, ptr %t153, i32 0, i32 0
  store i64 0, ptr %t154
  %t155 = load { i64, [3 x i64] }, ptr %t153
  store { i64, [3 x i64] } %t155, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr { i64, [3 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { i32 }, ptr %t159, i32 0, i32 0
  %t161 = load i32, ptr %t160
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 14
  %t168 = sext i32 %t161 to i64
  %t171 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t165, i64 %t168)
  store ptr %t171, ptr %l88
  br label %bb35
bb35:
  %t172 = load ptr, ptr %l88, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Body", ptr %t172, i32 0, i32 1
  %t175 = load { i64, [2 x i64] }, ptr %t174
  store { i64, [2 x i64] } %t175, ptr %l9
  %t177 = load { i64, [2 x i64] }, ptr %l9
  %t179 = extractvalue { i64, [2 x i64] } %t177, 0
  %t180 = icmp eq i64 %t179, 1
  br i1 %t180, label %bb36, label %bb37
bb36:
  %t182 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t183 = getelementptr { i32, i32 }, ptr %t182, i32 0, i32 0
  %t184 = load i32, ptr %t183
  store i32 %t184, ptr %l10, !tbaa !23
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l10, !tbaa !23
  %t188 = load i64, ptr %l3, !tbaa !24
  %t192 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorParamAt(ptr %v0, ptr %t186, i32 %t187, i64 %t188)
  store { i64, [3 x i64] } %t192, ptr %l98
  br label %bb39
bb39:
  %t193 = load { i64, [3 x i64] }, ptr %l98
  store { i64, [3 x i64] } %t193, ptr %l91
  br label %bb50
bb40:
  %t194 = load { i64, [2 x i64] }, ptr %l9
  %t196 = extractvalue { i64, [2 x i64] } %t194, 0
  %t197 = icmp eq i64 %t196, 2
  br i1 %t197, label %bb41, label %bb42
bb41:
  %t199 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t200 = getelementptr { i32, i64 }, ptr %t199, i32 0, i32 0
  %t201 = load i32, ptr %t200
  store i32 %t201, ptr %l11, !tbaa !23
  %t203 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t204 = getelementptr { i32, i64 }, ptr %t203, i32 0, i32 1
  %t205 = load i64, ptr %t204
  store i64 %t205, ptr %l12, !tbaa !24
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l11, !tbaa !23
  %t209 = load i64, ptr %l12, !tbaa !24
  %t210 = load i64, ptr %l3, !tbaa !24
  %t215 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadParamAt(ptr %v0, ptr %t207, i32 %t208, i64 %t209, i64 %t210)
  store { i64, [3 x i64] } %t215, ptr %l107
  br label %bb44
bb44:
  %t216 = load { i64, [3 x i64] }, ptr %l107
  store { i64, [3 x i64] } %t216, ptr %l91
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store { i64, [3 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [3 x i64] }, ptr %t217, i32 0, i32 0
  store i64 0, ptr %t218
  %t219 = load { i64, [3 x i64] }, ptr %t217
  store { i64, [3 x i64] } %t219, ptr %l91
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_620e8a9db94d1680_5d7448a0fc480e34)
  unreachable
bb50:
  %t221 = load { i64, [3 x i64] }, ptr %l91
  store { i64, [3 x i64] } %t221, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %a0) #0 {
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 26
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
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d14, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 26
  store i32 %t15, ptr %t17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 26
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etempValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
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
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etempValue(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17)
  store ptr %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l15, !tbaa !29
  store ptr %t21, ptr %l6, !tbaa !29
  br label %bb32
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Elem", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etempValue(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t41)
  store ptr %t44, ptr %l25
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l25, !tbaa !29
  store ptr %t45, ptr %l6, !tbaa !29
  br label %bb32
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l27, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Payload", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etempValue(ptr %v0, ptr %v1, ptr %v2, ptr %t61, ptr %t65)
  store ptr %t68, ptr %l35
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l35, !tbaa !29
  store ptr %t69, ptr %l6, !tbaa !29
  br label %bb32
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l36, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 6
  store i1 %t77, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l37, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t85 = load ptr, ptr %l5, !tbaa !29
  store ptr %t85, ptr %l6, !tbaa !29
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store ptr null, ptr %l6, !tbaa !29
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_8e2cf6b2c24620f0_dcbb1c47a1cef46c)
  unreachable
bb32:
  %t88 = load ptr, ptr %l6, !tbaa !29
  store ptr %t88, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryStore(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l38 = alloca ptr
  %l49 = alloca i1
  %l51 = alloca i1
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca i32
  %l60 = alloca { i64, ptr }
  %l61 = alloca %"compiler/typed:Seq"
  %l67 = alloca i64
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l97 = alloca ptr
  %l104 = alloca i1
  %l112 = alloca i64
  %l113 = alloca ptr
  %l117 = alloca %"compiler/source:Span"
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l122 = alloca %"compiler/source:Span"
  %l123 = alloca i32
  %l125 = alloca ptr
  %l127 = alloca { i64, ptr }
  %l130 = alloca %"compiler/typed:Try"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t93 = alloca { i64, [5 x i64] }, align 8
  %t237 = alloca { i64, [5 x i64] }, align 8
  %t249 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l20
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l20, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 28
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l23
  br label %bb2
bb2:
  %t10 = load i64, ptr %l23, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 37
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l26
  br label %bb3
bb3:
  %t16 = load i64, ptr %l26, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 16
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l7, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 130
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l31
  br label %bb4
bb4:
  %t27 = load i64, ptr %l31, !tbaa !24
  store i64 %t27, ptr %l8, !tbaa !24
  %t28 = load ptr, ptr %l4, !tbaa !29
  store ptr %t28, ptr %l32, !tbaa !29
  %t29 = load ptr, ptr %l32, !tbaa !29
  %t30 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 15
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = add i64 %t31, 1
  %t35 = load ptr, ptr %l32, !tbaa !29
  %t36 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 15
  store i64 %t33, ptr %t36, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t37, ptr %a2)
  br label %bb5
bb5:
  %t42 = load ptr, ptr %l4, !tbaa !29
  store ptr %t42, ptr %l38, !tbaa !29
  %t43 = load ptr, ptr %l38, !tbaa !29
  %t44 = getelementptr %"compiler/check:frame", ptr %t43, i32 0, i32 15
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = sub i64 %t45, 1
  %t49 = load ptr, ptr %l38, !tbaa !29
  %t50 = getelementptr %"compiler/check:frame", ptr %t49, i32 0, i32 15
  store i64 %t47, ptr %t50, !tbaa !24
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t51, i32 0, i32 16
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp ne i64 %t54, %t55
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = getelementptr %"compiler/check:frame", ptr %t60, i32 0, i32 16
  store i64 %t61, ptr %t64, !tbaa !24
  %t67 = xor i1 %t58, true
  br i1 %t67, label %bb6, label %bb7
bb6:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %t69)
  store i1 %t71, ptr %l51
  br label %bb8
bb7:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb9
bb8:
  %t72 = load i1, ptr %l51, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l49, !tbaa !21
  br label %bb9
bb9:
  %t75 = load i1, ptr %l49, !tbaa !21
  br i1 %t75, label %bb10, label %bb11
bb10:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enothingFails(ptr %v0, ptr %t76, %"compiler/source:Span" %t77)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t80 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t80, ptr %l55
  %t81 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t81, ptr %l56, !tbaa !23
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 37
  %t85 = load i64, ptr %l6, !tbaa !24
  %t88 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t84, i64 %t85)
  store { i64, ptr } %t88, ptr %l60
  br label %bb14
bb14:
  %t89 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t90 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t89, ptr null, i1 false)
  store %"compiler/typed:Seq" %t90, ptr %l61
  br label %bb15
bb15:
  %t91 = load %"compiler/typed:Seq", ptr %l61
  %t92 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Seq" %t91, ptr %t92
  store { i64, [5 x i64] } zeroinitializer, ptr %t93
  %t94 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 0
  store i64 12, ptr %t94
  %t95 = load %"compiler/source:Span", ptr %l55
  %t96 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t95, 0
  %t97 = load i32, ptr %l56, !tbaa !23
  %t98 = insertvalue { %"compiler/source:Span", i32, ptr } %t96, i32 %t97, 1
  %t100 = insertvalue { %"compiler/source:Span", i32, ptr } %t98, ptr %t92, 2
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t100, ptr %t101
  %t102 = load { i64, [5 x i64] }, ptr %t93
  %t104 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t102, ptr %t104
  store ptr %t104, ptr %l10, !tbaa !29
  %t106 = load ptr, ptr %l4, !tbaa !29
  %t108 = getelementptr %"compiler/check:frame", ptr %t106, i32 0, i32 28
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l67
  br label %bb16
bb16:
  %t111 = load i64, ptr %l67, !tbaa !24
  store i64 %t111, ptr %l11, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t114 = load i64, ptr %l5, !tbaa !24
  %t115 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v2, ptr %t112, { i64, ptr } %t113, i64 %t114, i64 %t115)
  br label %bb17
bb17:
  %t120 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l72
  br label %bb18
bb18:
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  %t122 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %t122
  store ptr %t122, ptr %l12, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t128 = icmp sgt i64 %t126, 0
  br i1 %t128, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i64, ptr %l5, !tbaa !24
  %t132 = load i64, ptr %l11, !tbaa !24
  %t136 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %s2, ptr %t130, i64 %t131, i64 %t132)
  store { i64, ptr } %t136, ptr %l80
  br label %bb21
bb20:
  br label %bb30
bb21:
  %t137 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t137, ptr %l13, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t138, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l16, !tbaa !24
  br label %bb22
bb22:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t145 = load i64, ptr %l16, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  br label %bb25
bb25:
  %t152 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t152, ptr %l88, !tbaa !27
  %t153 = load i64, ptr %l15, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr ptr, ptr %t156, i64 %t153
  %t158 = load ptr, ptr %t157, !tbaa !39
  %t160 = load ptr, ptr %l12, !tbaa !29
  store ptr %t160, ptr %l91, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t164 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t165 = load ptr, ptr %l12, !tbaa !29
  %t171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v2, ptr %s2, ptr %v0, ptr %v0, ptr %t161, ptr %t158, i32 %t163, i1 false, { i64, ptr } %t164, ptr %t165)
  store ptr %t171, ptr %l97
  br label %bb26
bb26:
  %t172 = load ptr, ptr %l91, !tbaa !29
  %t173 = load ptr, ptr %l97, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v0, ptr %t172, ptr %t173)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t174 = load i64, ptr %l15, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l15, !tbaa !24
  br label %bb22
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t180 = load ptr, ptr %l12, !tbaa !29
  %t181 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseRules(ptr %v0, ptr %v2, ptr %v0, ptr %t178, { i64, ptr } %t179, ptr %t180, i1 false, i32 %t181)
  store i1 %t186, ptr %l104
  br label %bb31
bb31:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i64, ptr %l8, !tbaa !24
  %t189 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandlesContracts(ptr %v0, ptr %v0, ptr %t187, i64 %t188, ptr %t189)
  br label %bb32
bb32:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i64, ptr %l5, !tbaa !24
  %t195 = load i64, ptr %l11, !tbaa !24
  %t196 = load ptr, ptr %l12, !tbaa !29
  %t201 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v0, ptr %t193, i64 %t194, i64 %t195, ptr %t196)
  store i64 %t201, ptr %l112
  br label %bb33
bb33:
  %t202 = load i64, ptr %l112, !tbaa !24
  store i64 %t202, ptr %l18, !tbaa !24
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l113, !tbaa !29
  %t204 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t205 = load i32, ptr %t204, !tbaa !23
  %t206 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t207 = load i32, ptr %t206, !tbaa !23
  %t209 = add i32 %t207, 3
  %t212 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t205, i32 %t209)
  store %"compiler/source:Span" %t212, ptr %l117
  br label %bb34
bb34:
  %t213 = load i64, ptr %l5, !tbaa !24
  %t214 = load i64, ptr %l18, !tbaa !24
  %t215 = load ptr, ptr %l113, !tbaa !29
  %t216 = load %"compiler/source:Span", ptr %l117
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %t215, %"compiler/source:Span" %t216, i64 %t213, i64 %t214)
  br label %bb35
bb35:
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l120, !tbaa !29
  %t220 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t220, ptr %l121
  %t221 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t221, ptr %l122
  %t222 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t222, ptr %l123, !tbaa !23
  %t223 = load ptr, ptr %l10, !tbaa !29
  store ptr %t223, ptr %l125, !tbaa !29
  %t225 = load ptr, ptr %l12, !tbaa !29
  %t227 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v0, ptr %t225)
  store { i64, ptr } %t227, ptr %l127
  br label %bb36
bb36:
  %t228 = load i64, ptr %l18, !tbaa !24
  %t230 = icmp sgt i64 %t228, 0
  %t231 = load ptr, ptr %l125, !tbaa !29
  %t232 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t234 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t231, { i64, ptr } %t232, i1 false, i1 false, i1 %t230)
  store %"compiler/typed:Try" %t234, ptr %l130
  br label %bb37
bb37:
  %t235 = load %"compiler/typed:Try", ptr %l130
  %t236 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Try" %t235, ptr %t236
  store { i64, [5 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [5 x i64] }, ptr %t237, i32 0, i32 0
  store i64 14, ptr %t238
  %t239 = load %"compiler/source:Span", ptr %l122
  %t240 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t239, 0
  %t241 = load i32, ptr %l123, !tbaa !23
  %t242 = insertvalue { %"compiler/source:Span", i32, ptr } %t240, i32 %t241, 1
  %t244 = insertvalue { %"compiler/source:Span", i32, ptr } %t242, ptr %t236, 2
  %t245 = getelementptr { i64, [5 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t244, ptr %t245
  %t246 = load { i64, [5 x i64] }, ptr %t237
  %t248 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t246, ptr %t248
  store { i64, [3 x i64] } zeroinitializer, ptr %t249
  %t250 = getelementptr { i64, [3 x i64] }, ptr %t249, i32 0, i32 0
  store i64 2, ptr %t250
  %t251 = load %"compiler/source:Span", ptr %l121
  %t252 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t251, 0
  %t254 = insertvalue { %"compiler/source:Span", ptr } %t252, ptr %t248, 1
  %t255 = getelementptr { i64, [3 x i64] }, ptr %t249, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t254, ptr %t255
  %t256 = load { i64, [3 x i64] }, ptr %t249
  %t258 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t256, ptr %t258
  %t259 = load ptr, ptr %l120, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t259, ptr %t258)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueArg(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l9 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i1
  %l39 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l9, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t10, i64 %a1)
  store i32 %t14, ptr %l13
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t16 = load i32, ptr %l13, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t15, i32 %t16)
  store { i64, ptr } %t17, ptr %l14
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb4, label %bb5
bb4:
  br label %bb19
bb5:
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t31, ptr %l21, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i32, ptr %t35, i64 %t32
  %t37 = load i32, ptr %t36, !tbaa !33
  store i32 %t37, ptr %l6, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l24, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  store i32 %t40, ptr %l25, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l28
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = load i32, ptr %l25, !tbaa !23
  %t48 = load i32, ptr %l28, !tbaa !23
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %t46, i32 %t47, i32 %t48, i64 0)
  store i1 %t49, ptr %l29
  br label %bb8
bb8:
  %t50 = load i1, ptr %l29, !tbaa !21
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  store ptr %t54, ptr %l32, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l6, !tbaa !23
  %t59 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l35
  br label %bb11
bb10:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb13
bb11:
  %t60 = load ptr, ptr %l32, !tbaa !29
  %t61 = load i32, ptr %l35, !tbaa !23
  %t62 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t62, ptr %l36
  br label %bb12
bb12:
  %t63 = load i1, ptr %l36, !tbaa !21
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb13
bb13:
  %t64 = load i1, ptr %l30, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l6, !tbaa !23
  %t69 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l39
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t70 = load i32, ptr %l39, !tbaa !23
  store i32 %t70, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l4, !tbaa !24
  br label %bb3
bb19:
  %t75 = load i32, ptr %l2, !tbaa !23
  store i32 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueErr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca { i64, ptr }
  %l17 = alloca %"compiler/diagmsg:Msg"
  %l18 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l10, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l11
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t13, i32 %t14)
  store { i64, ptr } %t17, ptr %l14
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  %t20 = extractvalue { i64, ptr } %t18, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  %t28 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueByValue(ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t24, { i64, ptr } %a3)
  store %"compiler/diagmsg:Msg" %t28, ptr %l17
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l10, !tbaa !29
  %t30 = load %"compiler/source:Span", ptr %l11
  %t31 = load %"compiler/diagmsg:Msg", ptr %l17
  %t32 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t29, %"compiler/source:Span" %t30, %"compiler/diagmsg:Msg" %t31)
  store i64 %t32, ptr %l18
  br label %bb6
bb6:
  br label %ret
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load %"compiler/source:Span", ptr %l1
  %t36 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedsCopy(ptr %v0, ptr %t33, i64 %t34, %"compiler/source:Span" %t35, i32 %t36)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca i1
  %l48 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l6, !tbaa !24
  br label %bb39
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l16, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l22
  br label %bb12
bb12:
  %t38 = load i64, ptr %l22, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  br label %bb39
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 5
  store i1 %t46, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l24, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Payload", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %t57)
  store i64 %t59, ptr %l31
  br label %bb19
bb19:
  %t60 = load i64, ptr %l31, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  br label %bb39
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 4
  store i1 %t68, ptr %l33, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l33, !tbaa !21
  br i1 %t69, label %bb23, label %bb24
bb23:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Elem", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = call i64 @compiler_2fcheck_2ehandleRoot(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l40
  br label %bb26
bb26:
  %t82 = load i64, ptr %l40, !tbaa !24
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb39
bb27:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb28, label %bb29
bb28:
  %t87 = load ptr, ptr %l41, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 8}
  %t90 = icmp eq i64 %t88, 2
  store i1 %t90, ptr %l42, !tbaa !21
  br label %bb29
bb29:
  %t91 = load i1, ptr %l42, !tbaa !21
  br i1 %t91, label %bb30, label %bb31
bb30:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t94, i32 0, i32 2
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t98 = load ptr, ptr %l5, !tbaa !29
  %t100 = call i64 @compiler_2fcheck_2ehandleRef(ptr %v0, ptr %t98)
  store i64 %t100, ptr %l48
  br label %bb33
bb33:
  %t101 = load i64, ptr %l48, !tbaa !24
  store i64 %t101, ptr %l6, !tbaa !24
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_13e79e2ad0bde595_310db6ed48514011)
  unreachable
bb39:
  %t102 = load i64, ptr %l6, !tbaa !24
  store i64 %t102, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2elaneTok(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
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
  %t8 = trunc i64 69 to i32
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
  %t14 = trunc i64 70 to i32
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
  %t20 = trunc i64 72 to i32
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
  %t26 = trunc i64 73 to i32
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
  %t32 = trunc i64 101 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  br i1 %t35, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb18
bb17:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 102 to i32
  %t39 = icmp eq i32 %t36, %t38
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb21
bb20:
  %t42 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t44 = trunc i64 103 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb21
bb21:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb24
bb23:
  %t48 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t50 = trunc i64 106 to i32
  %t51 = icmp eq i32 %t48, %t50
  store i1 %t51, ptr %l24, !tbaa !21
  br label %bb24
bb24:
  %t53 = load i1, ptr %l24, !tbaa !21
  br i1 %t53, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb27
bb26:
  %t54 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t56 = trunc i64 107 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb27
bb27:
  %t59 = load i1, ptr %l27, !tbaa !21
  br i1 %t59, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb30
bb29:
  %t60 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t62 = trunc i64 47 to i32
  %t63 = icmp eq i32 %t60, %t62
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb30
bb30:
  %t65 = load i1, ptr %l30, !tbaa !21
  br i1 %t65, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb33
bb32:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t68 = trunc i64 45 to i32
  %t69 = icmp eq i32 %t66, %t68
  store i1 %t69, ptr %l33, !tbaa !21
  br label %bb33
bb33:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb36
bb35:
  %t72 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t74 = trunc i64 46 to i32
  %t75 = icmp eq i32 %t72, %t74
  store i1 %t75, ptr %l36, !tbaa !21
  br label %bb36
bb36:
  %t77 = load i1, ptr %l36, !tbaa !21
  br i1 %t77, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb39
bb38:
  %t78 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t80 = trunc i64 71 to i32
  %t81 = icmp eq i32 %t78, %t80
  store i1 %t81, ptr %l39, !tbaa !21
  br label %bb39
bb39:
  %t83 = load i1, ptr %l39, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
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
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l67 = alloca %"compiler/source:Span"
  %l77 = alloca i64
  %l80 = alloca i64
  %l99 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t97 = alloca { i64, [4 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l3, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l6, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l8, !tbaa !24
  store i64 %a2, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = load i64, ptr %l8, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb11, label %bb12
bb4:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t33, ptr %l32, !tbaa !27
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 %t34
  %t39 = load ptr, ptr %t38, !tbaa !39
  %t41 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v1, ptr %t41, ptr %t39)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  br label %bb25
bb11:
  %t49 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb16
bb13:
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = sub i64 %t53, %t54
  %t58 = load i64, ptr %l10, !tbaa !24
  %t61 = add i64 %t57, %t58
  %t63 = sub i64 %t61, 1
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = sdiv i64 %t63, %t64
  store i64 %t67, ptr %l46, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb15
bb15:
  %t69 = load i64, ptr %l46, !tbaa !24
  store i64 %t69, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t70 = load i64, ptr %l43, !tbaa !24
  store i64 %t70, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb17
bb17:
  %t71 = load i64, ptr %l12, !tbaa !24
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  br label %bb20
bb20:
  %t79 = load i64, ptr %l8, !tbaa !24
  %t80 = load i64, ptr %l12, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t84 = mul i64 %t80, %t81
  %t87 = add i64 %t79, %t84
  store i64 %t87, ptr %l13, !tbaa !24
  %t89 = load ptr, ptr %l3, !tbaa !29
  store ptr %t89, ptr %l64, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t90, ptr %l65, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr ptr, ptr %t92, i64 0
  %t94 = load ptr, ptr %t93, !tbaa !39
  %t96 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %t94)
  store %"compiler/source:Span" %t96, ptr %l67
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 0
  store i64 0, ptr %t98
  %t99 = load %"compiler/source:Span", ptr %l67
  %t100 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t99, 0
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  store { %"compiler/source:Span" } %t100, ptr %t101
  %t102 = load { i64, [4 x i64] }, ptr %t97
  %t104 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t102, ptr %t104
  %t105 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v2, ptr %t105, ptr %t104)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t107 = load i64, ptr %l12, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l12, !tbaa !24
  br label %bb17
bb24:
  br label %bb25
bb25:
  store i64 1, ptr %l14, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  store i64 %t113, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t115 = load i64, ptr %l15, !tbaa !24
  %t116 = load i64, ptr %l14, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb26, label %bb27
bb26:
  %t121 = load i64, ptr %l16, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb31
bb28:
  %t125 = load i64, ptr %l15, !tbaa !24
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l16, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l16, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l80, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb30
bb30:
  %t141 = load i64, ptr %l80, !tbaa !24
  store i64 %t141, ptr %l77, !tbaa !24
  br label %bb31
bb31:
  %t142 = load i64, ptr %l77, !tbaa !24
  store i64 %t142, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb32
bb32:
  %t143 = load i64, ptr %l18, !tbaa !24
  %t144 = load i64, ptr %l17, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb33, label %bb34
bb33:
  br label %bb38
bb34:
  br label %bb35
bb35:
  %t151 = load i64, ptr %l14, !tbaa !24
  %t152 = load i64, ptr %l18, !tbaa !24
  %t153 = load i64, ptr %l16, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  %t161 = load ptr, ptr %l3, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t162, ptr %l99, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr ptr, ptr %t166, i64 %t159
  %t168 = load ptr, ptr %t167, !tbaa !39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v2, ptr %v0, ptr %t161, ptr %t168)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t171 = load i64, ptr %l18, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l18, !tbaa !24
  br label %bb32
bb38:
  %t175 = load ptr, ptr %l3, !tbaa !29
  %t177 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v2, ptr %v2, ptr %t175)
  store { i64, ptr } %t177, ptr %l105
  br label %bb39
bb39:
  %t178 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t178, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:elemsShape" @compiler_2fcheck_3aelemsShape_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:elemsShape"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:elemsShape" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/check:elemsShape" %t6, i64 %a1, 1
  store %"compiler/check:elemsShape" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:elemsShape", ptr %rv
  ret %"compiler/check:elemsShape" %rr
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"From" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/enums" }>, align 8
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"caseIndex" }>, align 8
@__olang_empty_array = external constant [16 x i64]
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a field " }>, align 8
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
@.d6 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"a field the checker cannot place" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Functions" }>, align 8
@.d14 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/place" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Place" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare i1 @compiler_2fcheck_2eexprAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eAt_3ccompiler_2ftyped_3aClause_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchAfterCatchAll(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleft(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchUnreachable(ptr %v0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultInStatement(ptr %v0)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultNoValue(ptr %v0)
@olang_loc_20fb2e81a5b7d68a_7759df49ce89a9e = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eleavesValue(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultDead(ptr %v0)
declare i1 @compiler_2fcheck_2elastIsValue(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchMustLeave(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultCount(ptr %v0, i64 %a0, i64 %a1)
declare { i32, %"compiler/typed:ContractInfo" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aContractIn_H1fc1bd863e6a60d3e5c2aece55d841d1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eevalOnly(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_cc784a1e8fddb41e_ee964d456644b6b2 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edispatchChecks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, %"compiler/typed:ContractInfo" %a6)
@olang_loc_34d74ab5dd8a1e9f_be34dcde3b606033 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %a0)
declare { { i64, [3 x i64] }, { i64, ptr } } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTopContext(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2easkBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4, { i64, ptr } %a5)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_3aContractAsk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, [3 x i64] } %a7, { i64, ptr } %a8, { i64, ptr } %a9)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2ePu_H286c5e5dcd81788bf1de6ef6fc9774a9(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoRawValues(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromPayload(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_2f076b8c12fc1f2b_72a0a04988c2c8b7 = external constant [0 x i8]
@olang_loc_8ce0cb83e6566f16_6a0b4dbe19b2f402 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_83b919d2f60ab835_29fa8ffb2c40f121 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
@olang_loc_ace0e8d6a1b00ac8_e6e4f855bb613414 = external constant [0 x i8]
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_6fc51f469184622a_dd25e01ab1dfd0e = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadFieldUnnarrowed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFieldOfEnum(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnVecField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, i32 %a5)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, i128 } @compiler_2fcheck_2ewideDigits(ptr %v0, { i64, ptr } %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %a0, i128 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %v0, { i64, ptr } %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2efloatLit(double %a0)
declare %"compiler/check:signMag" @compiler_2fcheck_2esignMag_2emagOf(%"compiler/check:litv" %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efoldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eaddMag(i1 %a0, i128 %a1, i1 %a2, i128 %a3)
declare %"compiler/check:litv" @compiler_2fcheck_2ewideBits(i32 %a0, %"compiler/check:litv" %a1, %"compiler/check:litv" %a2)
@olang_loc_18ec9fb825b0f3da_76c21f303b4292b6 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aExpr_2eIsNamed(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFromBitsWidth(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealiasModule(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2fgeneric_2eListFunctions = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %v0, i1 %a0, i32 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eListBuilders = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
declare i64 @compiler_2fcheck_2elistIndex(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListFields = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListParams = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListResults = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_7b7c458ad09559c8_7a5ff3a2c3d540e4 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMessageNotText(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_a35c558c8816a066_5fecae8fa675e8fa = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNeeds(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
@olang_loc_2a99a4b292d7414c_8b691b3b565c8d8 = external constant [0 x i8]
@olang_loc_55e99e9157e8316e_5c7d65a130dfb84a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e5a247dfc16ec462_1cb55c2f24e67da6 = external constant [0 x i8]
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorParamAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadParamAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3)
@olang_loc_620e8a9db94d1680_5d7448a0fc480e34 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_8e2cf6b2c24620f0_dcbb1c47a1cef46c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enothingFails(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i1 %a3, { i64, ptr } %a4, ptr %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandlesContracts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementions(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueByValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedsCopy(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare i64 @compiler_2fcheck_2ehandleRef(ptr %v0, ptr %a0)
@olang_loc_13e79e2ad0bde595_310db6ed48514011 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eToArr_H3d785ef7fade1f29078b6e80f1d617ba(ptr %v0, ptr %v1, ptr %a0)

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
