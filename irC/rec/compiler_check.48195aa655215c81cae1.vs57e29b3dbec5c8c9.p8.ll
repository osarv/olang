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
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/check:UnrollAsk" = type { { i64, ptr }, { i64, ptr }, i64, i32 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/check:litBuilder" = type { i64, i32 }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"std/pair:Pair.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:roOrigin" = type { ptr, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
define dso_local { i64, ptr } @compiler_2fcheck_2ecasePayload(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb6, label %bb7
bb5:
  br label %bb10
bb6:
  %t15 = icmp sle i64 0, 1152921504606846975
  br i1 %t15, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_335172168044531c_a265ad00fca232a0)
  unreachable
bb8:
  %t17 = mul i64 0, 8
  %t18 = insertvalue { i64, ptr } undef, i64 0, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_335172168044531c_a265ad00fca232a0)
  unreachable
bb10:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TypeDecl", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l2, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 5}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t34 = load i1, ptr %l16, !tbaa !21
  br i1 %t34, label %bb13, label %bb14
bb13:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [6 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { { i64, ptr }, ptr }, ptr %t37, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  br label %bb15
bb14:
  br label %bb23
bb15:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t47 = icmp slt i64 %t41, %t44
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t49, ptr %l26, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr ptr, ptr %t53, i64 %t50
  %t55 = load ptr, ptr %t54, !tbaa !39
  %t57 = getelementptr %"compiler/ast:CaseDecl", ptr %t55, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l25, !tbaa !27
  br label %bb22
bb17:
  %t60 = icmp sge i64 0, 0
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t62 = icmp sle i64 0, 1152921504606846975
  br i1 %t62, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_b70a8dfc847e84e9_67f505336baa0acd)
  unreachable
bb20:
  %t64 = mul i64 0, 8
  %t65 = insertvalue { i64, ptr } undef, i64 0, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t66, ptr %l25, !tbaa !27
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b70a8dfc847e84e9_67f505336baa0acd)
  unreachable
bb22:
  %t68 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t69 = icmp sge i64 0, 0
  br i1 %t69, label %bb27, label %bb28
bb27:
  %t71 = icmp sle i64 0, 1152921504606846975
  br i1 %t71, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_877bc023f9996aa_af9d54b66b552ace)
  unreachable
bb29:
  %t73 = mul i64 0, 8
  %t74 = insertvalue { i64, ptr } undef, i64 0, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb30:
  call void @__olang_check_failed(ptr @olang_loc_877bc023f9996aa_af9d54b66b552ace)
  unreachable
bb31:
  call void @__olang_check_failed(ptr @olang_loc_f2ae8e4f065119d8_ce403641066c9de4)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyScopesAgree(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l45 = alloca i64
  %l48 = alloca i64
  %l69 = alloca i64
  %l73 = alloca i64
  %l80 = alloca { i64, ptr }
  %l86 = alloca i64
  %l89 = alloca i64
  %l110 = alloca i64
  %l114 = alloca i64
  %l118 = alloca i1
  %l122 = alloca i1
  %l126 = alloca i1
  %l130 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l3, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l24, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l27
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l24, !tbaa !29
  %t15 = load i32, ptr %l27, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t14, i32 %t15)
  store { i64, ptr } %t16, ptr %l28
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  %t18 = load ptr, ptr %l3, !tbaa !29
  store ptr %t18, ptr %l29, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l32
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l29, !tbaa !29
  %t25 = load i32, ptr %l32, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l33
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t33 = extractvalue { i64, ptr } %t27, 0
  %t36 = icmp ne i64 %t30, %t33
  br i1 %t36, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 1, ptr %l6, !tbaa !24
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
  store i64 0, ptr %l45, !tbaa !24
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
  store i64 %t67, ptr %l48, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb12
bb12:
  %t69 = load i64, ptr %l48, !tbaa !24
  store i64 %t69, ptr %l45, !tbaa !24
  br label %bb13
bb13:
  %t70 = load i64, ptr %l45, !tbaa !24
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
  br label %bb24
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
  %t90 = load i32, ptr %l1, !tbaa !23
  %t91 = load i64, ptr %l11, !tbaa !24
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t89, i32 %t90, i64 %t91)
  store i64 %t95, ptr %l69
  br label %bb18
bb18:
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t97 = load i32, ptr %l2, !tbaa !23
  %t98 = load i64, ptr %l11, !tbaa !24
  %t102 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t96, i32 %t97, i64 %t98)
  store i64 %t102, ptr %l73
  br label %bb19
bb19:
  %t103 = load i64, ptr %l69, !tbaa !24
  %t104 = load i64, ptr %l73, !tbaa !24
  %t105 = icmp ne i64 %t103, %t104
  br i1 %t105, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l10, !tbaa !24
  br label %bb14
bb24:
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t113 = load i32, ptr %l1, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t112, i32 %t113)
  store { i64, ptr } %t116, ptr %l80
  br label %bb25
bb25:
  %t117 = load { i64, ptr }, ptr %l80, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t120 = extractvalue { i64, ptr } %t117, 0
  store i64 %t120, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t122 = load i64, ptr %l14, !tbaa !24
  %t123 = load i64, ptr %l13, !tbaa !24
  %t126 = icmp sgt i64 %t122, %t123
  br i1 %t126, label %bb26, label %bb27
bb26:
  %t128 = load i64, ptr %l15, !tbaa !24
  %t130 = icmp sgt i64 %t128, 0
  br i1 %t130, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb31
bb28:
  %t132 = load i64, ptr %l14, !tbaa !24
  %t133 = load i64, ptr %l13, !tbaa !24
  %t136 = sub i64 %t132, %t133
  %t137 = load i64, ptr %l15, !tbaa !24
  %t140 = add i64 %t136, %t137
  %t142 = sub i64 %t140, 1
  %t143 = load i64, ptr %l15, !tbaa !24
  %t146 = sdiv i64 %t142, %t143
  store i64 %t146, ptr %l89, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb30
bb30:
  %t148 = load i64, ptr %l89, !tbaa !24
  store i64 %t148, ptr %l86, !tbaa !24
  br label %bb31
bb31:
  %t149 = load i64, ptr %l86, !tbaa !24
  store i64 %t149, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb32
bb32:
  %t150 = load i64, ptr %l17, !tbaa !24
  %t151 = load i64, ptr %l16, !tbaa !24
  %t154 = icmp slt i64 %t150, %t151
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb33, label %bb34
bb33:
  br label %bb54
bb34:
  br label %bb35
bb35:
  %t158 = load i64, ptr %l13, !tbaa !24
  %t159 = load i64, ptr %l17, !tbaa !24
  %t160 = load i64, ptr %l15, !tbaa !24
  %t163 = mul i64 %t159, %t160
  %t166 = add i64 %t158, %t163
  store i64 %t166, ptr %l18, !tbaa !24
  %t168 = load ptr, ptr %l3, !tbaa !29
  %t169 = load i32, ptr %l1, !tbaa !23
  %t170 = load i64, ptr %l18, !tbaa !24
  %t174 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t168, i32 %t169, i64 %t170)
  store i64 %t174, ptr %l110
  br label %bb36
bb36:
  %t175 = load i64, ptr %l110, !tbaa !24
  store i64 %t175, ptr %l19, !tbaa !24
  %t176 = load ptr, ptr %l3, !tbaa !29
  %t177 = load i32, ptr %l2, !tbaa !23
  %t178 = load i64, ptr %l18, !tbaa !24
  %t182 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t176, i32 %t177, i64 %t178)
  store i64 %t182, ptr %l114
  br label %bb37
bb37:
  %t183 = load i64, ptr %l114, !tbaa !24
  store i64 %t183, ptr %l20, !tbaa !24
  %t184 = load i64, ptr %l19, !tbaa !24
  %t185 = load i64, ptr %l20, !tbaa !24
  %t188 = icmp ne i64 %t184, %t185
  br i1 %t188, label %bb38, label %bb39
bb38:
  %t190 = load i64, ptr %l19, !tbaa !24
  %t191 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t194 = icmp eq i64 %t190, %t191
  br i1 %t194, label %bb40, label %bb41
bb39:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb49
bb40:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb42
bb41:
  %t196 = load i64, ptr %l19, !tbaa !24
  %t197 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t200 = icmp eq i64 %t196, %t197
  store i1 %t200, ptr %l122, !tbaa !21
  br label %bb42
bb42:
  %t202 = load i1, ptr %l122, !tbaa !21
  br i1 %t202, label %bb43, label %bb44
bb43:
  %t203 = load i64, ptr %l20, !tbaa !24
  %t204 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  %t207 = icmp eq i64 %t203, %t204
  br i1 %t207, label %bb45, label %bb46
bb44:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb48
bb45:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb47
bb46:
  %t209 = load i64, ptr %l20, !tbaa !24
  %t210 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t213 = icmp eq i64 %t209, %t210
  store i1 %t213, ptr %l130, !tbaa !21
  br label %bb47
bb47:
  %t215 = load i1, ptr %l130, !tbaa !21
  store i1 %t215, ptr %l126, !tbaa !21
  br label %bb48
bb48:
  %t216 = load i1, ptr %l126, !tbaa !21
  %t217 = xor i1 %t216, true
  store i1 %t217, ptr %l118, !tbaa !21
  br label %bb49
bb49:
  %t219 = load i1, ptr %l118, !tbaa !21
  br i1 %t219, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t221 = load i64, ptr %l17, !tbaa !24
  %t223 = add i64 %t221, 1
  store i64 %t223, ptr %l17, !tbaa !24
  br label %bb32
bb54:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrRead(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, i32 }
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca i1
  %l28 = alloca i32
  %l35 = alloca i1
  %l39 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l55 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l61 = alloca i32
  %l67 = alloca ptr
  %l72 = alloca { i64, i32 }
  %l76 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca i32
  %l82 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca %"compiler/source:Span"
  %l89 = alloca %"compiler/source:Span"
  %l92 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i32
  %l103 = alloca ptr
  %l105 = alloca ptr
  %l109 = alloca i32
  %l110 = alloca i1
  %l113 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca %"compiler/source:Span"
  %l129 = alloca %"compiler/source:Span"
  %l132 = alloca i64
  %l135 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l141 = alloca ptr
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t182 = alloca i64
  %t233 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a2)
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l17
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t6, ptr %l5
  %t7 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l6, !tbaa !29
  %t10 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l5, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l19, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l20, !tbaa !24
  %t14 = load i64, ptr %l20, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l21, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l20, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t25, ptr %l7, !tbaa !27
  %t26 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l5, i32 0, i32 2
  %t27 = load %"compiler/source:Span", ptr %t26
  store %"compiler/source:Span" %t27, ptr %l8
  %t29 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t29, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t31, ptr %l24
  br label %bb2
bb2:
  %t32 = load i1, ptr %l24, !tbaa !21
  br i1 %t32, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l6, !tbaa !29
  %t38 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %s0, ptr %t34, ptr %t35)
  store i32 %t38, ptr %l28
  br label %bb6
bb6:
  %t39 = load i32, ptr %l28, !tbaa !23
  store i32 %t39, ptr %l9, !tbaa !23
  %t40 = load i32, ptr %l9, !tbaa !23
  %t42 = icmp slt i32 %t40, 0
  br i1 %t42, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t45 = load i32, ptr %l9, !tbaa !23
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t49 = icmp eq i32 %t45, %t46
  br i1 %t49, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb12
bb11:
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t55 = icmp ne i64 %t53, 1
  store i1 %t55, ptr %l35, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l35, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb15
bb14:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = icmp ne i64 %t60, 0
  store i1 %t62, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t64 = load i1, ptr %l39, !tbaa !21
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t65 = load i32, ptr %l9, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = icmp ne i32 %t65, %t66
  br i1 %t69, label %bb18, label %bb19
bb17:
  br label %bb25
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l46, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t72, ptr %l47
  %t73 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t75 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrRead(ptr %s0, ptr %v0, { i64, ptr } %t73)
  store %"compiler/diagmsg:Msg" %t75, ptr %l49
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t76 = load ptr, ptr %l46, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l47
  %t78 = load %"compiler/diagmsg:Msg", ptr %l49
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t76, %"compiler/source:Span" %t77, %"compiler/diagmsg:Msg" %t78)
  store i64 %t79, ptr %l50
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t80, { i64, ptr } %t81)
  br label %bb23
bb23:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t84, %"compiler/source:Span" %t85)
  store ptr %t88, ptr %l55
  br label %bb24
bb24:
  %t89 = load ptr, ptr %l55, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t89, ptr %rv
  br label %ret
bb25:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t92, ptr %l58, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr ptr, ptr %t94, i64 0
  %t96 = load ptr, ptr %t95, !tbaa !39
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v2, ptr %t91, ptr %t96)
  store i32 %t100, ptr %l61
  br label %bb26
bb26:
  %t101 = load i32, ptr %l61, !tbaa !23
  store i32 %t101, ptr %l10, !tbaa !23
  %t102 = load i32, ptr %l10, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t106 = icmp eq i32 %t102, %t103
  br i1 %t106, label %bb27, label %bb28
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t108, %"compiler/source:Span" %t109)
  store ptr %t112, ptr %l67
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t113 = load ptr, ptr %l67, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t113, ptr %rv
  br label %ret
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l9, !tbaa !23
  %t117 = load i32, ptr %l10, !tbaa !23
  %t121 = call { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %t115, i32 %t116, i32 %t117)
  store { i64, i32 } %t121, ptr %l72
  br label %bb31
bb31:
  %t122 = load { i64, i32 }, ptr %l72
  store { i64, i32 } %t122, ptr %l11
  %t123 = getelementptr { i64, i32 }, ptr %l11, i32 0, i32 0
  %t124 = load i64, ptr %t123, !tbaa !24
  store i64 %t124, ptr %l12, !tbaa !24
  %t126 = getelementptr { i64, i32 }, ptr %l11, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  store i32 %t127, ptr %l13, !tbaa !23
  %t129 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t131, ptr %l76
  br label %bb32
bb32:
  %t132 = load i1, ptr %l76, !tbaa !21
  br i1 %t132, label %bb33, label %bb34
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l77, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t134, ptr %l78
  %t135 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t135, ptr %l79, !tbaa !23
  %t136 = load i64, ptr %l12, !tbaa !24
  %t138 = icmp sge i64 %t136, 0
  br i1 %t138, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  store i64 1, ptr %l82, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb37
bb37:
  %t140 = load ptr, ptr %l77, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l78
  %t142 = load i32, ptr %l79, !tbaa !23
  %t143 = load i64, ptr %l82, !tbaa !24
  %t144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t140, %"compiler/source:Span" %t141, i32 %t142, i64 %t143)
  store ptr %t144, ptr %l83
  br label %bb38
bb38:
  %t145 = load ptr, ptr %l83, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t145, ptr %rv
  br label %ret
bb39:
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = icmp slt i64 %t147, 0
  br i1 %t149, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l87, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t152, ptr %l88
  %t153 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t153, ptr %l89
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %s7, ptr %s7, ptr %t157, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d2, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i64 %t159, ptr %l92
  br label %bb42
bb41:
  br label %bb56
bb42:
  %t160 = icmp sge i64 0, 0
  br i1 %t160, label %bb43, label %bb44
bb43:
  %t162 = icmp sle i64 0, 1152921504606846975
  br i1 %t162, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb45:
  %t164 = mul i64 0, 8
  %t165 = insertvalue { i64, ptr } undef, i64 0, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t166, ptr %l95, !tbaa !27
  %t167 = icmp sge i64 0, 0
  br i1 %t167, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb47:
  %t169 = icmp sle i64 0, 1152921504606846975
  br i1 %t169, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb49:
  %t171 = mul i64 0, 8
  %t172 = insertvalue { i64, ptr } undef, i64 0, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t173, ptr %l98, !tbaa !27
  %t174 = load i32, ptr %l10, !tbaa !23
  store i32 %t174, ptr %l99, !tbaa !23
  %t175 = icmp sge i64 1, 0
  br i1 %t175, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb51:
  %t177 = icmp sle i64 1, 2305843009213693951
  br i1 %t177, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb53:
  %t179 = mul i64 1, 4
  %t180 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t179)
  %t181 = load i32, ptr %l99, !tbaa !23
  store i64 0, ptr %t182
  br label %fill.183
fill.183:
  %t186 = load i64, ptr %t182
  %t187 = icmp slt i64 %t186, 1
  br i1 %t187, label %fillb.184, label %filld.185
fillb.184:
  %t188 = getelementptr i32, ptr %t180, i64 %t186
  store i32 %t181, ptr %t188
  %t189 = add i64 %t186, 1
  store i64 %t189, ptr %t182
  br label %fill.183
filld.185:
  %t190 = insertvalue { i64, ptr } undef, i64 1, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t180, 1
  %t192 = load ptr, ptr %l87, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l88
  %t194 = load %"compiler/source:Span", ptr %l89
  %t195 = load i64, ptr %l92, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t199 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t192, %"compiler/source:Span" %t193, %"compiler/source:Span" %t194, i64 %t195, ptr null, { i64, ptr } %t196, { i64, ptr } %t197, { i64, ptr } %t191)
  store ptr %t199, ptr %l103
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295)
  unreachable
bb55:
  %t200 = load ptr, ptr %l103, !tbaa !29
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t200, ptr %rv
  br label %ret
bb56:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l105, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l12, !tbaa !24
  %t205 = load i32, ptr %l13, !tbaa !23
  %t209 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t203, i64 %t204, i32 %t205)
  store i32 %t209, ptr %l109
  br label %bb57
bb57:
  %t210 = load ptr, ptr %l105, !tbaa !29
  %t211 = load i32, ptr %l109, !tbaa !23
  %t212 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t210, i32 %t211)
  store i1 %t212, ptr %l110
  br label %bb58
bb58:
  %t213 = load i1, ptr %l110, !tbaa !21
  br i1 %t213, label %bb59, label %bb60
bb59:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load %"compiler/source:Span", ptr %l1
  %t218 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t214, %"compiler/source:Span" %t215)
  store ptr %t218, ptr %l113
  br label %bb61
bb60:
  br label %bb62
bb61:
  %t219 = load ptr, ptr %l113, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t219, ptr %rv
  br label %ret
bb62:
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l115, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t222, ptr %l116
  %t223 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t223, ptr %l117
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l12, !tbaa !24
  %t226 = load i32, ptr %l13, !tbaa !23
  %t230 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t224, i64 %t225, i32 %t226)
  store i32 %t230, ptr %l121
  br label %bb63
bb63:
  %t231 = load i64, ptr %l12, !tbaa !24
  %t232 = load i32, ptr %l13, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t233
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 0
  store i64 1, ptr %t234
  %t235 = load %"compiler/source:Span", ptr %l117
  %t236 = insertvalue { %"compiler/source:Span", i32, i64, i32 } undef, %"compiler/source:Span" %t235, 0
  %t237 = load i32, ptr %l121, !tbaa !23
  %t238 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t236, i32 %t237, 1
  %t240 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t238, i64 %t231, 2
  %t242 = insertvalue { %"compiler/source:Span", i32, i64, i32 } %t240, i32 %t232, 3
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, i32 } %t242, ptr %t243
  %t244 = load { i64, [4 x i64] }, ptr %t233
  %t246 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t244, ptr %t246
  %t247 = load ptr, ptr %l115, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l116
  %t250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v4, ptr %v4, ptr %t247, %"compiler/source:Span" %t248, ptr %t246)
  store ptr %t250, ptr %l126
  br label %bb64
bb64:
  %t251 = load ptr, ptr %l126, !tbaa !29
  store ptr %t251, ptr %l14, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l127, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t253, ptr %l128
  %t254 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t254, ptr %l129
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t260 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %s0, ptr %s0, ptr %t258, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d4, i32 0, i32 1) }, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i64 %t260, ptr %l132
  br label %bb65
bb65:
  %t261 = icmp sge i64 0, 0
  br i1 %t261, label %bb66, label %bb67
bb66:
  %t263 = icmp sle i64 0, 1152921504606846975
  br i1 %t263, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_f2b973fcab239364_d01bf2cd68c3b6a8)
  unreachable
bb68:
  %t265 = mul i64 0, 8
  %t266 = insertvalue { i64, ptr } undef, i64 0, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t267, ptr %l135, !tbaa !27
  %t268 = load ptr, ptr %l14, !tbaa !29
  %t269 = mul i64 1, 8
  %t270 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t269)
  %t271 = insertvalue { i64, ptr } undef, i64 1, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  store { i64, ptr } %t272, ptr %l137, !tbaa !27
  %t274 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr ptr, ptr %t275, i64 0
  store ptr %t268, ptr %t276, !tbaa !39
  %t277 = icmp sge i64 0, 0
  br i1 %t277, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_f2b973fcab239364_d01bf2cd68c3b6a8)
  unreachable
bb70:
  %t279 = icmp sle i64 0, 2305843009213693951
  br i1 %t279, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_1778b9e962c2fcc7_ba3812a15af6740b)
  unreachable
bb72:
  %t281 = mul i64 0, 4
  %t282 = insertvalue { i64, ptr } undef, i64 0, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t284 = load ptr, ptr %l127, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l128
  %t286 = load %"compiler/source:Span", ptr %l129
  %t287 = load i64, ptr %l132, !tbaa !24
  %t288 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t289 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t291 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t284, %"compiler/source:Span" %t285, %"compiler/source:Span" %t286, i64 %t287, ptr null, { i64, ptr } %t288, { i64, ptr } %t289, { i64, ptr } %t283)
  store ptr %t291, ptr %l141
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_1778b9e962c2fcc7_ba3812a15af6740b)
  unreachable
bb74:
  %t292 = load ptr, ptr %l141, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t292, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca { i64, ptr }
  %l49 = alloca i1
  %l50 = alloca { i64, ptr }
  %l63 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l10, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l12
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t17, i64 %t16)
  store ptr %t19, ptr %l15
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l4, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_37018c2ebf0da22a_371c8892c4c63a5e)
  unreachable
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  %t35 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  store i64 %t38, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = sext i32 %t42 to i64
  %t47 = icmp slt i64 %t40, %t44
  br i1 %t47, label %bb7, label %bb8
bb7:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t55 = icmp slt i64 %t49, %t52
  store i1 %t55, ptr %l29, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t57 = load i1, ptr %l29, !tbaa !21
  br i1 %t57, label %bb10, label %bb11
bb10:
  %t58 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t58, ptr %l35, !tbaa !27
  %t59 = load i64, ptr %l6, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i8, ptr %t62, i64 %t59
  %t64 = load i8, ptr %t63, !tbaa !32
  %t66 = icmp eq i8 %t64, 32
  br i1 %t66, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb21
bb12:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb14
bb13:
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t68, ptr %l40, !tbaa !27
  %t69 = load i64, ptr %l6, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i8, ptr %t72, i64 %t69
  %t74 = load i8, ptr %t73, !tbaa !32
  %t76 = icmp eq i8 %t74, 10
  store i1 %t76, ptr %l39, !tbaa !21
  br label %bb14
bb14:
  %t78 = load i1, ptr %l39, !tbaa !21
  br i1 %t78, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb17
bb16:
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t79, ptr %l45, !tbaa !27
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t80
  %t85 = load i8, ptr %t84, !tbaa !32
  %t87 = icmp eq i8 %t85, 9
  store i1 %t87, ptr %l44, !tbaa !21
  br label %bb17
bb17:
  %t89 = load i1, ptr %l44, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb20
bb19:
  %t90 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t90, ptr %l50, !tbaa !27
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i8, ptr %t94, i64 %t91
  %t96 = load i8, ptr %t95, !tbaa !32
  %t98 = icmp eq i8 %t96, 41
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb20
bb20:
  %t100 = load i1, ptr %l49, !tbaa !21
  store i1 %t100, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t101 = load i1, ptr %l34, !tbaa !21
  %t102 = xor i1 %t101, true
  br i1 %t102, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l6, !tbaa !24
  br label %bb25
bb25:
  br label %bb6
bb26:
  %t108 = load i64, ptr %l6, !tbaa !24
  %t110 = trunc i64 %t108 to i32
  %t111 = load i64, ptr %l6, !tbaa !24
  %t115 = add i64 %t111, %a3
  %t117 = trunc i64 %t115 to i32
  %t120 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t110, i32 %t117)
  store %"compiler/source:Span" %t120, ptr %l63
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t121 = load %"compiler/source:Span", ptr %l63
  store %"compiler/source:Span" %t121, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecBorrow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l24 = alloca { i64, ptr }
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i64
  %l30 = alloca ptr
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i32
  %l43 = alloca ptr
  %l44 = alloca %"compiler/source:Span"
  %l47 = alloca { i64, ptr }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l55 = alloca i1
  %l59 = alloca i1
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca ptr
  %l67 = alloca i32
  %l70 = alloca i1
  %l71 = alloca i64
  %l73 = alloca i32
  %rv = alloca ptr
  %t143 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load i32, ptr %l8, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l4, !tbaa !23
  %t10 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l11
  br label %bb2
bb2:
  %t11 = load i1, ptr %l11, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l14
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t17 = load i1, ptr %l14, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l4, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l18
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb9
bb8:
  %t23 = load i1, ptr %l18, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l15, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l20, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t28, ptr %l21
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l4, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t33, ptr %l24
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t34 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCPointerReadOnly(ptr %v0, ptr %v0, { i64, ptr } %t40)
  store %"compiler/diagmsg:Msg" %t42, ptr %l26
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l21
  %t45 = load %"compiler/diagmsg:Msg", ptr %l26
  %t46 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t43, %"compiler/source:Span" %t44, %"compiler/diagmsg:Msg" %t45)
  store i64 %t46, ptr %l27
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %rv
  br label %ret
bb16:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v2, ptr %t49)
  store ptr %t51, ptr %l30
  br label %bb17
bb17:
  %t52 = load ptr, ptr %l30, !tbaa !29
  store ptr %t52, ptr %l5, !tbaa !29
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  store ptr %t62, ptr %l35, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l4, !tbaa !23
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l38
  br label %bb20
bb19:
  br label %bb28
bb20:
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = load i32, ptr %l38, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l39
  br label %bb21
bb21:
  %t71 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t73 = trunc i64 19 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l43, !tbaa !29
  %t79 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t79, ptr %l44
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l4, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t80, i32 %t81)
  store { i64, ptr } %t84, ptr %l47
  br label %bb25
bb25:
  %t85 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCPointerTemporary(ptr %v0, ptr %v0, { i64, ptr } %t91)
  store %"compiler/diagmsg:Msg" %t93, ptr %l49
  br label %bb26
bb26:
  %t94 = load ptr, ptr %l43, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l44
  %t96 = load %"compiler/diagmsg:Msg", ptr %l49
  %t97 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t94, %"compiler/source:Span" %t95, %"compiler/diagmsg:Msg" %t96)
  store i64 %t97, ptr %l50
  br label %bb27
bb27:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %rv
  br label %ret
bb28:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l3
  %t106 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v2, ptr %t100, ptr %t101, %"compiler/source:Span" %t102)
  store i1 %t106, ptr %l55
  br label %bb29
bb29:
  %t107 = load i1, ptr %l55, !tbaa !21
  br i1 %t107, label %bb30, label %bb31
bb30:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l2, !tbaa !23
  %t114 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t110, i32 %t111)
  store i1 %t114, ptr %l59
  br label %bb33
bb33:
  %t115 = load i1, ptr %l59, !tbaa !21
  br i1 %t115, label %bb34, label %bb35
bb34:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v2, ptr %t116, ptr %t117, %"compiler/source:Span" %t118, i1 false)
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  %t122 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t122, ptr %l63
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  store ptr %t128, ptr %l66, !tbaa !29
  %t129 = load i32, ptr %l4, !tbaa !23
  store i32 %t129, ptr %l67, !tbaa !23
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l2, !tbaa !23
  %t134 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t130, i32 %t131)
  store i1 %t134, ptr %l70
  br label %bb38
bb38:
  %t135 = load i1, ptr %l70, !tbaa !21
  br i1 %t135, label %bb39, label %bb40
bb39:
  %t136 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t136, ptr %l71, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb41
bb41:
  %t138 = load ptr, ptr %l66, !tbaa !29
  %t139 = load i32, ptr %l67, !tbaa !23
  %t140 = load i64, ptr %l71, !tbaa !24
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t138, i32 %t139, i64 %t140)
  store i32 %t141, ptr %l73
  br label %bb42
bb42:
  %t142 = load ptr, ptr %l5, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 0
  store i64 3, ptr %t144
  %t145 = load %"compiler/source:Span", ptr %l63
  %t146 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t145, 0
  %t147 = load i32, ptr %l73, !tbaa !23
  %t148 = insertvalue { %"compiler/source:Span", i32, ptr } %t146, i32 %t147, 1
  %t150 = insertvalue { %"compiler/source:Span", i32, ptr } %t148, ptr %t142, 2
  %t151 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t150, ptr %t151
  %t152 = load { i64, [5 x i64] }, ptr %t143
  %t154 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t152, ptr %t154
  store ptr %t154, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecStruct(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i64
  %l29 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t1, i32 %t2, i64 0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t8, i32 %t9)
  store i1 %t12, ptr %l8
  br label %bb5
bb5:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l12
  br label %bb8
bb7:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t19 = load i32, ptr %l12, !range !{i32 0, i32 6}
  %t21 = trunc i64 0 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l9, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/load:Loader", ptr %t31, i32 0, i32 10
  store ptr %t33, ptr %l19, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  store ptr %t39, ptr %l22, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l27
  br label %bb12
bb11:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb15
bb12:
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = load i32, ptr %l27, !tbaa !23
  %t52 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t52, ptr %l28
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l19, !tbaa !29
  %t54 = load i64, ptr %l28, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t53, i64 %t54)
  store ptr %t55, ptr %l29
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t58 = getelementptr %"compiler/load:Module", ptr %t56, i32 0, i32 30
  %t59 = load i1, ptr %t58, !tbaa !21
  store i1 %t59, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t61 = load i1, ptr %l15, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca { i64, ptr }
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
  %t5 = icmp sge i64 0, 0
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t7 = icmp sle i64 0, 1152921504606846975
  br i1 %t7, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_fa88b19e51866753_1c515c5623826c7f)
  unreachable
bb5:
  %t9 = mul i64 0, 8
  %t10 = insertvalue { i64, ptr } undef, i64 0, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t11, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_fa88b19e51866753_1c515c5623826c7f)
  unreachable
bb7:
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb8, label %bb9
bb8:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 18}
  %t20 = icmp eq i64 %t18, 6
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb9
bb9:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb10, label %bb11
bb10:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Call", ptr %t28, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l8, !tbaa !27
  br label %bb22
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb21
bb16:
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb17, label %bb18
bb17:
  %t35 = icmp sle i64 0, 1152921504606846975
  br i1 %t35, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_962a22c7791f971e_263bae1157bb3aaa)
  unreachable
bb19:
  %t37 = mul i64 0, 8
  %t38 = insertvalue { i64, ptr } undef, i64 0, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t39, ptr %l8, !tbaa !27
  br label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_962a22c7791f971e_263bae1157bb3aaa)
  unreachable
bb21:
  call void @__olang_check_failed(ptr @olang_loc_bce8d8bde069702e_ffe04dc686cce872)
  unreachable
bb22:
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i64 %a4, i64 %a5, i1 %a6, i32 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l28 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 24
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  store i1 %t6, ptr %l8, !tbaa !21
  %t8 = load i1, ptr %l8, !tbaa !21
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l14, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t11)
  store ptr %t13, ptr %l16
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t14 = load ptr, ptr %l16, !tbaa !29
  %t16 = getelementptr %"compiler/check:frame", ptr %t14, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 24
  store i64 %t17, ptr %t20, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 25
  store %"compiler/source:Span" %a1, ptr %t25
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargDefault(ptr %v0, ptr %v1, ptr %v2, ptr %t26, %"compiler/source:Span" %a2, ptr %a3, i64 %a4, i64 %a5, i1 %a6, i32 %a7)
  store ptr %t40, ptr %l28
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l28, !tbaa !29
  store ptr %t41, ptr %l9, !tbaa !29
  %t42 = load i1, ptr %l8, !tbaa !21
  br i1 %t42, label %bb6, label %bb7
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 24
  store i64 -1, ptr %t46, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l9, !tbaa !29
  store ptr %t47, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallbackType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i1
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i1
  %l69 = alloca i32
  %l73 = alloca i1
  %l76 = alloca i1
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t13 = trunc i64 21 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l23
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = load i32, ptr %l23, !tbaa !23
  %t36 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t34, i32 %t35)
  store { i64, ptr } %t36, ptr %l24
  br label %bb5
bb5:
  %t37 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  %t40 = icmp sgt i64 %t38, 0
  store i1 %t40, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t42 = load i1, ptr %l15, !tbaa !21
  br i1 %t42, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l30, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l35
  br label %bb10
bb10:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i32, ptr %l35, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t60, i32 %t61)
  store { i64, ptr } %t62, ptr %l36
  br label %bb11
bb11:
  %t63 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t63, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb13, label %bb14
bb13:
  br label %bb30
bb14:
  br label %bb15
bb15:
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t76, ptr %l43, !tbaa !27
  %t77 = load i64, ptr %l3, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i32, ptr %t80, i64 %t77
  %t82 = load i32, ptr %t81, !tbaa !33
  store i32 %t82, ptr %l5, !tbaa !23
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l5, !tbaa !23
  %t88 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l48
  br label %bb16
bb16:
  %t89 = load i1, ptr %l48, !tbaa !21
  br i1 %t89, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb25
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l5, !tbaa !23
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l52
  br label %bb19
bb19:
  %t95 = load i1, ptr %l52, !tbaa !21
  br i1 %t95, label %bb20, label %bb21
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l54, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l5, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l59
  br label %bb22
bb21:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb24
bb22:
  %t107 = load ptr, ptr %l54, !tbaa !29
  %t108 = load i32, ptr %l59, !tbaa !23
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t107, i32 %t108, i64 0)
  store i1 %t109, ptr %l60
  br label %bb23
bb23:
  %t110 = load i1, ptr %l60, !tbaa !21
  store i1 %t110, ptr %l53, !tbaa !21
  br label %bb24
bb24:
  %t111 = load i1, ptr %l53, !tbaa !21
  store i1 %t111, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t112 = load i1, ptr %l49, !tbaa !21
  %t113 = xor i1 %t112, true
  br i1 %t113, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t116 = load i64, ptr %l3, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l3, !tbaa !24
  br label %bb12
bb30:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  %t126 = load i32, ptr %l1, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t125, i32 %t126)
  store i32 %t129, ptr %l69
  br label %bb31
bb31:
  %t130 = load i32, ptr %l69, !tbaa !23
  store i32 %t130, ptr %l6, !tbaa !23
  %t131 = load i32, ptr %l6, !tbaa !23
  %t132 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t135 = icmp eq i32 %t131, %t132
  br i1 %t135, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb35
bb33:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l6, !tbaa !23
  %t141 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t137, i32 %t138)
  store i1 %t141, ptr %l76
  br label %bb34
bb34:
  %t142 = load i1, ptr %l76, !tbaa !21
  store i1 %t142, ptr %l73, !tbaa !21
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t143 = load i1, ptr %l73, !tbaa !21
  store i1 %t143, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeArgs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca ptr
  %l24 = alloca i32
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 14
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t18, i64 %t21)
  store ptr %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Body", ptr %t25, i32 0, i32 1
  %t28 = load { i64, [2 x i64] }, ptr %t27
  store { i64, [2 x i64] } %t28, ptr %l3
  %t30 = load { i64, [2 x i64] }, ptr %l3
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t42, i64 %t43)
  store i32 %t46, ptr %l24
  br label %bb10
bb10:
  %t47 = load i32, ptr %l24, !tbaa !23
  store i32 %t47, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_7fe1bea66cf2144e_3863a3a9e6f6a662)
  unreachable
bb16:
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
  call void @__olang_check_failed(ptr @olang_loc_b79520aaecc0f88f_d487c78520878463)
  unreachable
bb22:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseZero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %l33 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca i1
  %l56 = alloca { i64, ptr }
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i32
  %l64 = alloca %"compiler/typed:Make"
  %rv = alloca ptr
  %t106 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l16, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %a3)
  store i32 %t16, ptr %l21
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = load i32, ptr %l21, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 36
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l25
  br label %bb3
bb3:
  %t26 = load i64, ptr %l25, !tbaa !24
  store i64 %t26, ptr %l5, !tbaa !24
  store i1 true, ptr %l6, !tbaa !21
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb5, label %bb6
bb5:
  br label %bb25
bb6:
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t41, ptr %l33, !tbaa !27
  %t42 = load i64, ptr %l8, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i32, ptr %t45, i64 %t42
  %t47 = load i32, ptr %t46, !tbaa !33
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l1
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t49, %"compiler/source:Span" %t50, i32 %t47)
  store ptr %t55, ptr %l39
  br label %bb8
bb8:
  %t56 = load ptr, ptr %l39, !tbaa !29
  store ptr %t56, ptr %l11, !tbaa !29
  %t57 = load ptr, ptr %l11, !tbaa !29
  store ptr %t57, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t58 = load ptr, ptr %l40, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load ptr, ptr %l40, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 18}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l41, !tbaa !21
  br label %bb10
bb10:
  %t65 = load i1, ptr %l41, !tbaa !21
  br i1 %t65, label %bb11, label %bb12
bb11:
  %t66 = load ptr, ptr %l11, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t68, i32 0, i32 2
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l12, !tbaa !24
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t72 = load i64, ptr %l12, !tbaa !24
  %t74 = icmp ne i64 %t72, 0
  br i1 %t74, label %bb14, label %bb15
bb14:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_ea1bc73a77e68519_ca6969815981751d)
  unreachable
bb22:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 36
  %t79 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t78, ptr %t79)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb4
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 36
  %t89 = load i64, ptr %l5, !tbaa !24
  %t92 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t88, i64 %t89)
  store { i64, ptr } %t92, ptr %l56
  br label %bb26
bb26:
  %t93 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t93, ptr %l13, !tbaa !27
  %t94 = load i1, ptr %l6, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  store ptr null, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t97 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t97, ptr %l59
  store i32 %a2, ptr %l60, !tbaa !23
  %t99 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t103 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v1, ptr %v1, ptr %v1, i32 1, i64 0, { i64, ptr } %t99, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t103, ptr %l64
  br label %bb30
bb30:
  %t104 = load %"compiler/typed:Make", ptr %l64
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store %"compiler/typed:Make" %t104, ptr %t105
  store { i64, [5 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 0
  store i64 7, ptr %t107
  %t108 = load %"compiler/source:Span", ptr %l59
  %t109 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t108, 0
  %t110 = load i32, ptr %l60, !tbaa !23
  %t111 = insertvalue { %"compiler/source:Span", i32, ptr } %t109, i32 %t110, 1
  %t113 = insertvalue { %"compiler/source:Span", i32, ptr } %t111, ptr %t105, 2
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t106, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t113, ptr %t114
  %t115 = load { i64, [5 x i64] }, ptr %t106
  %t117 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t115, ptr %t117
  store ptr %t117, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
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
  %t3 = getelementptr %"compiler/ast:Catch", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"compiler/source:Span", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/ast:Catch", ptr %t6, i32 0, i32 0
  %t9 = getelementptr %"compiler/source:Span", ptr %t8, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = add i32 %t10, 5
  %t15 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t5, i32 %t12)
  store %"compiler/source:Span" %t15, ptr %l7
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtCaseTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l28 = alloca ptr
  %l52 = alloca %"compiler/source:Span"
  %l53 = alloca i32
  %l56 = alloca ptr
  %rv = alloca ptr
  %t51 = alloca { i64, [4 x i64] }, align 8
  %t79 = alloca { i64, [4 x i64] }, align 8
  %t119 = alloca { i64, [4 x i64] }, align 8
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store ptr null, ptr %l3, !tbaa !29
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Case", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %t24)
  store ptr %t32, ptr %l23
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l23, !tbaa !29
  store ptr %t33, ptr %l8, !tbaa !29
  %t34 = load ptr, ptr %l8, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l8, !tbaa !29
  store ptr %t42, ptr %l28, !tbaa !29
  br label %bb11
bb10:
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/ast:Case", ptr %t45, i32 0, i32 0
  %t48 = load %"compiler/source:Span", ptr %t47
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t50 = load ptr, ptr %l8, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 0
  store i64 5, ptr %t52
  %t54 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t48, 0
  %t56 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t54, i32 46, 1
  %t58 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t56, ptr %t49, 2
  %t60 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t58, ptr %t50, 3
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t60, ptr %t61
  %t62 = load { i64, [4 x i64] }, ptr %t51
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t62, ptr %t64
  store ptr %t64, ptr %l28, !tbaa !29
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l28, !tbaa !29
  store ptr %t66, ptr %l3, !tbaa !29
  br label %bb12
bb12:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l5, !tbaa !24
  br label %bb1
bb13:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t75 = load ptr, ptr %l2, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Case", ptr %t75, i32 0, i32 0
  %t78 = load %"compiler/source:Span", ptr %t77
  store { i64, [4 x i64] } zeroinitializer, ptr %t79
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 0
  store i64 1, ptr %t80
  %t82 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t78, 0
  %t84 = insertvalue { %"compiler/source:Span", i32 } %t82, i32 6, 1
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t84, ptr %t85
  %t86 = load { i64, [4 x i64] }, ptr %t79
  %t88 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t86, ptr %t88
  store ptr %t88, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t92 = getelementptr %"compiler/ast:Case", ptr %t90, i32 0, i32 3
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = icmp eq ptr %t93, null
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb17, label %bb18
bb17:
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Case", ptr %t99, i32 0, i32 0
  %t102 = load %"compiler/source:Span", ptr %t101
  store %"compiler/source:Span" %t102, ptr %l52
  store i32 45, ptr %l53
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb19, label %bb20
bb18:
  br label %bb25
bb19:
  call void @__olang_check_failed(ptr @olang_loc_da99cffe6602dc08_7fa7c9f5ef49167c)
  unreachable
bb20:
  br label %bb21
bb21:
  %t107 = load ptr, ptr %l3, !tbaa !29
  store ptr %t107, ptr %l56, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Case", ptr %t108, i32 0, i32 3
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_da99cffe6602dc08_7fa7c9f5ef49167c)
  unreachable
bb23:
  br label %bb24
bb24:
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr %"compiler/ast:Case", ptr %t115, i32 0, i32 3
  %t118 = load ptr, ptr %t117, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t119
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 0
  store i64 5, ptr %t120
  %t121 = load %"compiler/source:Span", ptr %l52
  %t122 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t121, 0
  %t123 = load i32, ptr %l53, !range !{i32 0, i32 114}
  %t124 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t122, i32 %t123, 1
  %t125 = load ptr, ptr %l56, !tbaa !29
  %t126 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t124, ptr %t125, 2
  %t128 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t126, ptr %t118, 3
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t128, ptr %t129
  %t130 = load { i64, [4 x i64] }, ptr %t119
  %t132 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t130, ptr %t132
  store ptr %t132, ptr %l3, !tbaa !29
  br label %bb25
bb25:
  %t134 = load ptr, ptr %l3, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb26, label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_ddff752a05460a27_f846f4bbf4f845eb)
  unreachable
bb27:
  br label %bb28
bb28:
  %t138 = load ptr, ptr %l3, !tbaa !29
  store ptr %t138, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommutedCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i32
  %l19 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca i64
  %l54 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l68 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca i64
  %l78 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l94 = alloca i64
  %l97 = alloca %"compiler/source:Span"
  %l100 = alloca i32
  %l104 = alloca { i64, ptr }
  %l107 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t205 = alloca { i64, [5 x i64] }, align 8
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
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t2)
  store i32 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l11, !tbaa !29
  %t7 = load i32, ptr %l14, !tbaa !23
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t8, ptr %l15
  br label %bb2
bb2:
  %t9 = load i32, ptr %l15, !tbaa !23
  store i32 %t9, ptr %l6, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l6, !tbaa !23
  %t12 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %t10, i32 %t11, i32 %t12)
  store i64 %t16, ptr %l19
  br label %bb3
bb3:
  %t17 = load i64, ptr %l19, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l23, !tbaa !29
  %t24 = load i64, ptr %l7, !tbaa !24
  store i64 %t24, ptr %l24, !tbaa !24
  %t25 = load i32, ptr %l6, !tbaa !23
  store i32 %t25, ptr %l25, !tbaa !23
  %t26 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t28 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s0, i32 %t26)
  store { i64, ptr } %t28, ptr %l27
  br label %bb7
bb7:
  %t29 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t29, ptr %l28
  %t30 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t32 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t30)
  store { i64, ptr } %t32, ptr %l30
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t34 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %s0, { i64, ptr } %t33)
  store { i64, ptr } %t34, ptr %l31
  br label %bb9
bb9:
  %t35 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = load ptr, ptr %l23, !tbaa !29
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = load i32, ptr %l25, !tbaa !23
  %t45 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t46 = load %"compiler/source:Span", ptr %l28
  %t48 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s0, ptr %s0, ptr %t42, i64 %t43, i32 %t44, { i64, ptr } %t45, %"compiler/source:Span" %t46, { i64, ptr } %t41)
  store i1 %t48, ptr %l33
  br label %bb10
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l34, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l35, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t54, i64 %t55)
  store ptr %t58, ptr %l39
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l39, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load ptr, ptr %l35, !tbaa !29
  %t65 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t63, i32 %t62)
  store { i64, ptr } %t65, ptr %l42
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 50
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l43, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t70 = load ptr, ptr %l34, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 50
  store { i64, ptr } %t69, ptr %t71, !tbaa !27
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e50
  br i1 %t72, label %bb13, label %bb14
bb13:
  %t74 = load { i64, ptr }, ptr %l43
  %t75 = extractvalue { i64, ptr } %t74, 1
  call void @__olang_region_release(ptr %t75)
  store { i64, ptr } zeroinitializer, ptr %l43
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l4, !tbaa !29
  store ptr %t76, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t77 = load ptr, ptr %l45, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb15, label %bb16
bb15:
  %t80 = load ptr, ptr %l45, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 18}
  %t83 = icmp eq i64 %t81, 0
  store i1 %t83, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t84 = load i1, ptr %l46, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb30
bb19:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l49, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t86, ptr %l50
  %t87 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t87, ptr %l51
  %t88 = load i64, ptr %l7, !tbaa !24
  store i64 %t88, ptr %l52, !tbaa !24
  %t89 = load ptr, ptr %l5, !tbaa !29
  store ptr %t89, ptr %l54, !tbaa !29
  %t91 = icmp sge i64 0, 0
  br i1 %t91, label %bb20, label %bb21
bb20:
  %t93 = icmp sle i64 0, 1152921504606846975
  br i1 %t93, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_f9674bcb1008789c_bed0ff146db7b878)
  unreachable
bb22:
  %t95 = mul i64 0, 8
  %t96 = insertvalue { i64, ptr } undef, i64 0, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l4, !tbaa !29
  %t102 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v0, ptr %t98, ptr %t99)
  store { i64, ptr } %t102, ptr %l60
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_f9674bcb1008789c_bed0ff146db7b878)
  unreachable
bb24:
  %t103 = icmp sge i64 0, 0
  br i1 %t103, label %bb25, label %bb26
bb25:
  %t105 = icmp sle i64 0, 2305843009213693951
  br i1 %t105, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_7d2067b11442aa69_727f8f68f20a38e5)
  unreachable
bb27:
  %t107 = mul i64 0, 4
  %t108 = insertvalue { i64, ptr } undef, i64 0, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t110 = load ptr, ptr %l49, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l50
  %t112 = load %"compiler/source:Span", ptr %l51
  %t113 = load i64, ptr %l52, !tbaa !24
  %t114 = load ptr, ptr %l54, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t110, %"compiler/source:Span" %t111, %"compiler/source:Span" %t112, i64 %t113, ptr %t114, { i64, ptr } %t115, { i64, ptr } %t116, { i64, ptr } %t109)
  store ptr %t118, ptr %l64
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_7d2067b11442aa69_727f8f68f20a38e5)
  unreachable
bb29:
  %t119 = load ptr, ptr %l64, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t119, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_fe55a007e1b3e29_3c78fea0979d4bfd)
  unreachable
bb35:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 37
  %t125 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t123)
  store i64 %t125, ptr %l68
  br label %bb36
bb36:
  %t126 = load i64, ptr %l68, !tbaa !24
  store i64 %t126, ptr %l8, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l1
  %t129 = load ptr, ptr %l4, !tbaa !29
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v1, ptr %v3, ptr %t127, %"compiler/source:Span" %t128, ptr %t129)
  store ptr %t133, ptr %l72
  br label %bb37
bb37:
  %t134 = load ptr, ptr %l72, !tbaa !29
  store ptr %t134, ptr %l9, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l73, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t136, ptr %l74
  %t137 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t137, ptr %l75
  %t138 = load i64, ptr %l7, !tbaa !24
  store i64 %t138, ptr %l76, !tbaa !24
  %t139 = load ptr, ptr %l5, !tbaa !29
  store ptr %t139, ptr %l78, !tbaa !29
  %t141 = icmp sge i64 0, 0
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t143 = icmp sle i64 0, 1152921504606846975
  br i1 %t143, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_c4a343fb9b24edff_3458e4f6b03fbc5b)
  unreachable
bb40:
  %t145 = mul i64 0, 8
  %t146 = insertvalue { i64, ptr } undef, i64 0, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t147, ptr %l81, !tbaa !27
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l82, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  %t151 = load ptr, ptr %l9, !tbaa !29
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t149, %"compiler/source:Span" %t150, ptr %t151)
  store ptr %t155, ptr %l86
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_c4a343fb9b24edff_3458e4f6b03fbc5b)
  unreachable
bb42:
  %t156 = load ptr, ptr %l82, !tbaa !29
  %t157 = load ptr, ptr %l86, !tbaa !29
  %t158 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v3, ptr %v0, ptr %t156, ptr %t157)
  store { i64, ptr } %t158, ptr %l87
  br label %bb43
bb43:
  %t159 = icmp sge i64 0, 0
  br i1 %t159, label %bb44, label %bb45
bb44:
  %t161 = icmp sle i64 0, 2305843009213693951
  br i1 %t161, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_7d2067b11442aa69_727f8f68f20a38e5)
  unreachable
bb46:
  %t163 = mul i64 0, 4
  %t164 = insertvalue { i64, ptr } undef, i64 0, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t166 = load ptr, ptr %l73, !tbaa !29
  %t167 = load %"compiler/source:Span", ptr %l74
  %t168 = load %"compiler/source:Span", ptr %l75
  %t169 = load i64, ptr %l76, !tbaa !24
  %t170 = load ptr, ptr %l78, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t174 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %v3, ptr %v3, ptr %t166, %"compiler/source:Span" %t167, %"compiler/source:Span" %t168, i64 %t169, ptr %t170, { i64, ptr } %t171, { i64, ptr } %t172, { i64, ptr } %t165)
  store ptr %t174, ptr %l91
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_7d2067b11442aa69_727f8f68f20a38e5)
  unreachable
bb48:
  %t175 = load ptr, ptr %l91, !tbaa !29
  store ptr %t175, ptr %l10, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/check:Checker", ptr %t176, i32 0, i32 37
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t178)
  store i64 %t180, ptr %l94
  br label %bb49
bb49:
  %t181 = load i64, ptr %l8, !tbaa !24
  %t182 = load i64, ptr %l94, !tbaa !24
  %t184 = icmp sgt i64 %t182, %t181
  br i1 %t184, label %bb50, label %bb51
bb50:
  %t186 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t186, ptr %l97
  %t187 = load ptr, ptr %l10, !tbaa !29
  %t190 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t187)
  store i32 %t190, ptr %l100
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 37
  %t194 = load i64, ptr %l8, !tbaa !24
  %t197 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t193, i64 %t194)
  store { i64, ptr } %t197, ptr %l104
  br label %bb53
bb53:
  %t198 = load ptr, ptr %l10, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t202 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t200, ptr %t198, i1 false)
  store %"compiler/typed:Seq" %t202, ptr %l107
  br label %bb54
bb54:
  %t203 = load %"compiler/typed:Seq", ptr %l107
  %t204 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t203, ptr %t204
  store { i64, [5 x i64] } zeroinitializer, ptr %t205
  %t206 = getelementptr { i64, [5 x i64] }, ptr %t205, i32 0, i32 0
  store i64 12, ptr %t206
  %t207 = load %"compiler/source:Span", ptr %l97
  %t208 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t207, 0
  %t209 = load i32, ptr %l100, !tbaa !23
  %t210 = insertvalue { %"compiler/source:Span", i32, ptr } %t208, i32 %t209, 1
  %t212 = insertvalue { %"compiler/source:Span", i32, ptr } %t210, ptr %t204, 2
  %t213 = getelementptr { i64, [5 x i64] }, ptr %t205, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t212, ptr %t213
  %t214 = load { i64, [5 x i64] }, ptr %t205
  %t216 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t214, ptr %t216
  call void @__olang_scope_close(ptr %s0)
  store ptr %t216, ptr %rv
  br label %ret
bb55:
  %t218 = load ptr, ptr %l10, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t218, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeFor(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %lp13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l18 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i32
  %l69 = alloca i32
  %l72 = alloca i1
  %l73 = alloca i1
  %l81 = alloca ptr
  %l83 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l94 = alloca i1
  %l95 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l99 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca i32
  %l106 = alloca %"compiler/diagmsg:Msg"
  %l107 = alloca i64
  %l111 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l117 = alloca i32
  %l119 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l124 = alloca { i64, ptr }
  %l127 = alloca %"compiler/check:UnrollAsk"
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l137 = alloca %"compiler/diagmsg:Msg"
  %l138 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t3 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = add i32 %t4, 8
  %t9 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t2, i32 %t6)
  store %"compiler/source:Span" %t9, ptr %l18
  br label %bb1
bb1:
  %t10 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t10, ptr %l3
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:ForIn", ptr %t11, i32 0, i32 3
  %t14 = load i1, ptr %t13, !tbaa !21
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l21, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t17, ptr %l22
  %t18 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForTry(ptr %v0)
  store %"compiler/diagmsg:Msg" %t18, ptr %l23
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t19 = load ptr, ptr %l21, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l22
  %t21 = load %"compiler/diagmsg:Msg", ptr %l23
  %t22 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t19, %"compiler/source:Span" %t20, %"compiler/diagmsg:Msg" %t21)
  store i64 %t22, ptr %l24
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  %t25 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollOnce(ptr %v0, ptr %v1, ptr %t23, %"compiler/source:Span" %t24, ptr %t25)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l28
  br label %bb8
bb8:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l4
  store i64 -1, ptr %l5, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t31)
  store i32 %t33, ptr %l30
  br label %bb9
bb9:
  %t34 = load i32, ptr %l30, !tbaa !23
  store i32 %t34, ptr %l6, !tbaa !23
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:ForIn", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  store ptr %t38, ptr %l7, !tbaa !29
  %t40 = load ptr, ptr %l7, !tbaa !29
  store ptr %t40, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t41 = load ptr, ptr %l33, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l33, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 30}
  %t47 = icmp eq i64 %t45, 24
  store i1 %t47, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l34, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t51, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52
  store { i64, ptr } %t53, ptr %l8, !tbaa !27
  br label %bb14
bb13:
  br label %bb24
bb14:
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t55, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  %t61 = load i64, ptr %l10, !tbaa !24
  %t62 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb16, label %bb17
bb16:
  br label %bb23
bb17:
  br label %bb18
bb18:
  %t69 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t69, ptr %l46, !tbaa !27
  %t70 = load i64, ptr %l10, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %l4, ptr %l49, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l50, !tbaa !29
  store ptr %t75, ptr %l51, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t79)
  store i32 %t81, ptr %l53
  br label %bb19
bb19:
  %t82 = load ptr, ptr %l50, !tbaa !29
  %t83 = load ptr, ptr %l51, !tbaa !29
  %t84 = load i32, ptr %l53, !tbaa !23
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBody(ptr %v0, ptr %v1, ptr %t82, ptr %t83, i32 %t84)
  store i64 %t85, ptr %l54
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l49, !tbaa !29
  %t87 = load i64, ptr %l54, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t86, i64 %t87)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t88 = load i64, ptr %l10, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l10, !tbaa !24
  br label %bb15
bb23:
  br label %bb34
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/ast:ForIn", ptr %t93, i32 0, i32 2
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t101 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBody(ptr %v0, ptr %v1, ptr %t92, ptr %t96, i32 %t97)
  store i64 %t101, ptr %l61
  br label %bb28
bb28:
  %t102 = load i64, ptr %l61, !tbaa !24
  store i64 %t102, ptr %l5, !tbaa !24
  %t103 = load i64, ptr %l5, !tbaa !24
  %t105 = icmp sge i64 %t103, 0
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = getelementptr %"compiler/ast:ForIn", ptr %t108, i32 0, i32 2
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i64, ptr %l5, !tbaa !24
  %t116 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollElem(ptr %v0, ptr %v1, ptr %t107, ptr %t111, i64 %t112)
  store i32 %t116, ptr %l69
  br label %bb31
bb30:
  %t117 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t117, ptr %l64, !tbaa !23
  br label %bb32
bb31:
  %t119 = load i32, ptr %l69, !tbaa !23
  store i32 %t119, ptr %l64, !tbaa !23
  br label %bb32
bb32:
  %t120 = load i32, ptr %l64, !tbaa !23
  store i32 %t120, ptr %l6, !tbaa !23
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_d826e759488f41a6_3ea05b0e10c73972)
  unreachable
bb34:
  %t122 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l4, i64 -1)
  store i1 %t122, ptr %l72
  br label %bb35
bb35:
  %t123 = load i1, ptr %l72, !tbaa !21
  br i1 %t123, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb38
bb37:
  %t124 = load i32, ptr %l6, !tbaa !23
  %t125 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t128 = icmp eq i32 %t124, %t125
  store i1 %t128, ptr %l73, !tbaa !21
  br label %bb38
bb38:
  %t130 = load i1, ptr %l73, !tbaa !21
  br i1 %t130, label %bb39, label %bb40
bb39:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l1
  %t133 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollOnce(ptr %v0, ptr %v1, ptr %t131, %"compiler/source:Span" %t132, ptr %t133)
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb42:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  store ptr %t140, ptr %l81, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t141)
  store ptr %t143, ptr %l83
  br label %bb43
bb43:
  %t144 = load ptr, ptr %l83, !tbaa !29
  %t146 = getelementptr %"compiler/check:frame", ptr %t144, i32 0, i32 4
  %t147 = load ptr, ptr %l2, !tbaa !29
  %t149 = getelementptr %"compiler/ast:ForIn", ptr %t147, i32 0, i32 2
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t151 = load ptr, ptr %l81, !tbaa !29
  %t154 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v0, ptr %v1, ptr %s0, ptr %t151, ptr %t146, ptr %t150)
  store { i64, ptr } %t154, ptr %l88
  br label %bb44
bb44:
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t157 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = add i64 %t156, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t155, i64 %t156)
  %t162 = getelementptr i8, ptr %t161, i64 %t156
  call void @olang_textcopy(ptr %t162, ptr %t158, i64 %t159)
  %t163 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t161, 1
  %t165 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t165, ptr %lp13
  %t167 = load ptr, ptr %lp13
  store { i64, ptr } %t164, ptr %t167, !tbaa !27
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 58
  %t174 = load ptr, ptr %lp13
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  %t178 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v0, ptr %t173, { i64, ptr } %t175)
  store i1 %t178, ptr %l94
  br label %bb45
bb45:
  %t179 = load i1, ptr %l94, !tbaa !21
  br i1 %t179, label %bb46, label %bb47
bb46:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l95, !tbaa !29
  %t181 = load ptr, ptr %l2, !tbaa !29
  %t183 = getelementptr %"compiler/ast:ForIn", ptr %t181, i32 0, i32 2
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t184)
  store %"compiler/source:Span" %t186, ptr %l98
  br label %bb48
bb47:
  br label %bb56
bb48:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 58
  %t193 = load ptr, ptr %lp13
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  %t197 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t192, { i64, ptr } %t194)
  %t198 = extractvalue { i32, { i64, ptr } } %t197, 1
  %t199 = extractvalue { i32, { i64, ptr } } %t197, 0
  store i32 %t199, ptr %l105
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb50, label %ok.201, !prof !99
ok.201:
  store { i64, ptr } %t198, ptr %l104
  br label %bb49
bb49:
  %t202 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t202, ptr %l99, !tbaa !27
  br label %bb52
bb50:
  br label %bb51
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l99, !tbaa !27
  br label %bb52
bb52:
  %t203 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t204 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForUnknown(ptr %v0, ptr %v0, { i64, ptr } %t203)
  store %"compiler/diagmsg:Msg" %t204, ptr %l106
  br label %bb53
bb53:
  %t205 = load ptr, ptr %l95, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l98
  %t207 = load %"compiler/diagmsg:Msg", ptr %l106
  %t208 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t205, %"compiler/source:Span" %t206, %"compiler/diagmsg:Msg" %t207)
  store i64 %t208, ptr %l107
  br label %bb54
bb54:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l1
  %t211 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollOnce(ptr %v0, ptr %v1, ptr %t209, %"compiler/source:Span" %t210, ptr %t211)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 57
  %t221 = load ptr, ptr %lp13
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t225 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H09835701baa5b197f16fe6901ed0f7b4(ptr %v0, ptr %v0, ptr %v0, ptr %t220, { i64, ptr } %t222)
  %t226 = extractvalue { i32, { i64, ptr } } %t225, 1
  %t227 = extractvalue { i32, { i64, ptr } } %t225, 0
  store i32 %t227, ptr %l117
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb58, label %ok.229, !prof !99
ok.229:
  store { i64, ptr } %t226, ptr %l116
  br label %bb57
bb57:
  %t230 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t230, ptr %l111, !tbaa !27
  br label %bb65
bb58:
  br label %bb59
bb59:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/check:Checker", ptr %t231, i32 0, i32 137
  store ptr %t233, ptr %l119, !tbaa !29
  %t234 = load ptr, ptr %lp13
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  store { i64, ptr } %t235, ptr %l120, !tbaa !27
  %t236 = ptrtoint ptr %v0 to i64
  store i64 %t236, ptr %l121, !tbaa !24
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aUnrollAsk_2e1
  br i1 %t237, label %bb60, label %bb61
bb60:
  %t239 = call ptr @__olang_region_make(ptr %v0)
  %t240 = ptrtoint ptr %t239 to i64
  store i64 %t240, ptr %l121, !tbaa !24
  br label %bb61
bb61:
  %t241 = load i64, ptr %l121
  %t242 = inttoptr i64 %t241 to ptr
  %t244 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %t242, ptr %l4)
  store { i64, ptr } %t244, ptr %l124
  br label %bb62
bb62:
  %t245 = load i64, ptr %l5, !tbaa !24
  %t246 = load i32, ptr %l6, !tbaa !23
  %t247 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t248 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t251 = call %"compiler/check:UnrollAsk" @compiler_2fcheck_3aUnrollAsk_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t247, { i64, ptr } %t248, i64 %t245, i32 %t246)
  store %"compiler/check:UnrollAsk" %t251, ptr %l127
  br label %bb63
bb63:
  %t252 = load ptr, ptr %l119, !tbaa !29
  %t253 = load %"compiler/check:UnrollAsk", ptr %l127
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2ePush_He90a5e781e5223c39ec692b3f1e8f929(ptr %v0, ptr %v0, ptr %t252, %"compiler/check:UnrollAsk" %t253)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb65:
  %t254 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t254, ptr %l14, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = load i64, ptr @G_2ecompiler_2fcheck_2eMaxUnroll, !tbaa !24
  %t261 = icmp sgt i64 %t257, %t258
  br i1 %t261, label %bb66, label %bb67
bb66:
  %t263 = load ptr, ptr %l0, !tbaa !29
  store ptr %t263, ptr %l132, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t264, ptr %l133
  %t265 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = load i64, ptr @G_2ecompiler_2fcheck_2eMaxUnroll, !tbaa !24
  %t271 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForTooMany(ptr %v0, i64 %t267, i64 %t268)
  store %"compiler/diagmsg:Msg" %t271, ptr %l137
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t272 = load ptr, ptr %l132, !tbaa !29
  %t273 = load %"compiler/source:Span", ptr %l133
  %t274 = load %"compiler/diagmsg:Msg", ptr %l137
  %t275 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t272, %"compiler/source:Span" %t273, %"compiler/diagmsg:Msg" %t274)
  store i64 %t275, ptr %l138
  br label %bb69
bb69:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load %"compiler/source:Span", ptr %l1
  %t278 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollOnce(ptr %v0, ptr %v1, ptr %t276, %"compiler/source:Span" %t277, ptr %t278)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb71:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load %"compiler/source:Span", ptr %l1
  %t284 = load ptr, ptr %l2, !tbaa !29
  %t285 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t286 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollConsts(ptr %v0, ptr %v1, ptr %v0, ptr %t282, %"compiler/source:Span" %t283, ptr %t284, { i64, ptr } %t285, i32 %t286)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecided(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i1
  %l5 = alloca ptr
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2eleaves(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t7, ptr %l5
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t10 = getelementptr %"compiler/check:frame", ptr %t8, i32 0, i32 49
  store i1 true, ptr %t10, !tbaa !21
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclNote(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca { i64, [3 x i64] }
  %l13 = alloca %"compiler/diagmsg:Msg"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 13
  %t4 = load { i64, [3 x i64] }, ptr %t3
  %t6 = extractvalue { i64, [3 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 0
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/load:Loader", ptr %t17, i32 0, i32 4
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l9, !tbaa !29
  store i64 %a1, ptr %l10, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 13
  %t25 = load { i64, [3 x i64] }, ptr %t24
  store { i64, [3 x i64] } %t25, ptr %l12
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteNullableDecl(ptr %v0)
  store %"compiler/diagmsg:Msg" %t26, ptr %l13
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t27 = load ptr, ptr %l9, !tbaa !29
  %t28 = load i64, ptr %l10, !tbaa !24
  %t29 = load { i64, [3 x i64] }, ptr %l12
  %t30 = load %"compiler/diagmsg:Msg", ptr %l13
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t27, i64 %t28, { i64, [3 x i64] } %t29, %"compiler/diagmsg:Msg" %t30)
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l20 = alloca i64
  %l25 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  br label %bb2
bb2:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 18
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 17
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l6
  br label %bb3
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp slt i64 %t10, %t11
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb4, label %bb5
bb4:
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 17
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 18
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t22)
  store i64 %t25, ptr %l13
  br label %bb7
bb7:
  %t26 = load i64, ptr %l13, !tbaa !24
  store i64 %t26, ptr %l1, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l14, !tbaa !29
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 18
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = add i64 %t30, 1
  %t34 = load ptr, ptr %l14, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 18
  store i64 %t32, ptr %t35, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 19
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t38, i64 %t39)
  store i64 %t42, ptr %l20
  br label %bb8
bb8:
  %t43 = load i64, ptr %l20, !tbaa !24
  %t44 = icmp eq i64 %t43, 0
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %t46, i64 %t47)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb2
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewakeThunks(ptr %v0, ptr %t50)
  store i1 %t52, ptr %l25
  br label %bb15
bb15:
  %t53 = load i1, ptr %l25, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb1
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l8 = alloca i1
  %rv = alloca i1
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
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Block", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t10)
  store i1 %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load i1, ptr %l8, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldOffset(ptr %v0, ptr %a0, %"compiler/generic:Desc" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:Desc"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l10 = alloca i32
  %l14 = alloca i1
  %l19 = alloca i1
  %l24 = alloca { i64, ptr }
  %l29 = alloca i64
  %l34 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l57 = alloca i1
  %l64 = alloca { i64, ptr }
  %l69 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/generic:Desc" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t4, i32 %t6)
  store i32 %t9, ptr %l10
  br label %bb1
bb1:
  %t10 = load i32, ptr %l10, !tbaa !23
  store i32 %t10, ptr %l2, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l14
  br label %bb2
bb2:
  %t19 = load i1, ptr %l14, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %s2, ptr %t34, i32 %t35)
  store { i64, ptr } %t38, ptr %l24
  br label %bb9
bb8:
  br label %bb13
bb9:
  %t39 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t40 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t47 = icmp slt i64 %t41, %t44
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i64, ptr %t53, i64 %t50
  %t55 = load i64, ptr %t54, !tbaa !34
  store i64 %t55, ptr %l29, !tbaa !24
  br label %bb12
bb11:
  store i64 -1, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t57 = load i64, ptr %l29, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  store ptr %t63, ptr %l34, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l2, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l39
  br label %bb14
bb14:
  %t74 = load ptr, ptr %l34, !tbaa !29
  %t75 = load i32, ptr %l39, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t74, i32 %t75)
  store { i64, ptr } %t76, ptr %l40
  br label %bb15
bb15:
  %t77 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t77, ptr %l4, !tbaa !27
  %t78 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t85 = icmp sge i64 %t79, %t82
  br i1 %t85, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb18
bb17:
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t87, ptr %l46, !tbaa !27
  %t88 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t89 = load i64, ptr %t88, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i32, ptr %t92, i64 %t89
  %t94 = load i32, ptr %t93, !tbaa !33
  %t96 = icmp eq i32 %t94, 0
  store i1 %t96, ptr %l45, !tbaa !21
  br label %bb18
bb18:
  %t98 = load i1, ptr %l45, !tbaa !21
  br i1 %t98, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t101 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i32, ptr %t105, i64 %t102
  %t107 = load i32, ptr %t106, !tbaa !33
  store i32 %t107, ptr %l5, !tbaa !23
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = load i32, ptr %l5, !tbaa !23
  %t116 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l57
  br label %bb22
bb22:
  %t117 = load i1, ptr %l57, !tbaa !21
  %t118 = xor i1 %t117, true
  br i1 %t118, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l5, !tbaa !23
  %t130 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %s0, ptr %t126, i32 %t127)
  store { i64, ptr } %t130, ptr %l64
  br label %bb26
bb26:
  %t131 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t131, ptr %l6, !tbaa !27
  %t132 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t139 = icmp slt i64 %t133, %t136
  br i1 %t139, label %bb27, label %bb28
bb27:
  %t141 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t142 = load i64, ptr %t141, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i64, ptr %t145, i64 %t142
  %t147 = load i64, ptr %t146, !tbaa !34
  %t149 = add i64 8, %t147
  store i64 %t149, ptr %l69, !tbaa !24
  br label %bb29
bb28:
  store i64 -1, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t151 = load i64, ptr %l69, !tbaa !24
  store i64 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnErrors(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %rv = alloca i32
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
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l15
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t28 = load i32, ptr %l15, !tbaa !23
  store i32 %t28, ptr %rv
  br label %ret
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l16, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l17, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t34, i64 %t35, i32 0)
  store i64 %t38, ptr %l21
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l17, !tbaa !29
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t41, ptr %l22
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l16, !tbaa !29
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t42, i64 %t43)
  store i32 %t44, ptr %l23
  br label %bb9
bb9:
  %t45 = load i32, ptr %l23, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, %"compiler/check:litBuilder" %a3, i32 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/check:litBuilder"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca i64
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l38 = alloca i32
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca i64
  %l50 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store %"compiler/check:litBuilder" %a3, ptr %l3
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t7 = load i32, ptr %l11, !tbaa !23
  %t8 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t6, i32 %t7, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, i64 0)
  store i64 %t8, ptr %l12
  br label %bb2
bb2:
  %t9 = load i64, ptr %l12, !tbaa !24
  store i64 %t9, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t14, %"compiler/source:Span" %t15, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l1
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t18, %"compiler/source:Span" %t19)
  store ptr %t22, ptr %l19
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load ptr, ptr %l19, !tbaa !29
  store ptr %t23, ptr %rv
  br label %ret
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l21
  %t26 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t26, ptr %l22
  %t27 = load i64, ptr %l6, !tbaa !24
  store i64 %t27, ptr %l23, !tbaa !24
  %t28 = load ptr, ptr %l5, !tbaa !29
  store ptr %t28, ptr %l25, !tbaa !29
  %t30 = icmp sge i64 0, 0
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = icmp sle i64 0, 1152921504606846975
  br i1 %t32, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_57ea44e7fd16bde2_c7d7d39f979a7ede)
  unreachable
bb10:
  %t34 = mul i64 0, 8
  %t35 = insertvalue { i64, ptr } undef, i64 0, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t36, ptr %l28, !tbaa !27
  %t37 = icmp sge i64 0, 0
  br i1 %t37, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_57ea44e7fd16bde2_c7d7d39f979a7ede)
  unreachable
bb12:
  %t39 = icmp sle i64 0, 1152921504606846975
  br i1 %t39, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_57ea44e7fd16bde2_c7d7d39f979a7ede)
  unreachable
bb14:
  %t41 = mul i64 0, 8
  %t42 = insertvalue { i64, ptr } undef, i64 0, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t43, ptr %l31, !tbaa !27
  %t44 = icmp sge i64 0, 0
  br i1 %t44, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_57ea44e7fd16bde2_c7d7d39f979a7ede)
  unreachable
bb16:
  %t46 = icmp sle i64 0, 2305843009213693951
  br i1 %t46, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1376a264a8ee8c97_4e69d2fd66e95413)
  unreachable
bb18:
  %t48 = mul i64 0, 4
  %t49 = insertvalue { i64, ptr } undef, i64 0, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t51 = load ptr, ptr %l20, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l21
  %t53 = load %"compiler/source:Span", ptr %l22
  %t54 = load i64, ptr %l23, !tbaa !24
  %t55 = load ptr, ptr %l25, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t59 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t51, %"compiler/source:Span" %t52, %"compiler/source:Span" %t53, i64 %t54, ptr %t55, { i64, ptr } %t56, { i64, ptr } %t57, { i64, ptr } %t50)
  store ptr %t59, ptr %l35
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1376a264a8ee8c97_4e69d2fd66e95413)
  unreachable
bb20:
  %t60 = load ptr, ptr %l35, !tbaa !29
  store ptr %t60, ptr %l7, !tbaa !29
  %t61 = load ptr, ptr %l7, !tbaa !29
  %t64 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t61)
  store i32 %t64, ptr %l38
  br label %bb21
bb21:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t66 = load i32, ptr %l38, !tbaa !23
  %t68 = icmp eq i32 %t66, %t65
  br i1 %t68, label %bb22, label %bb23
bb22:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l1
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t70, %"compiler/source:Span" %t71)
  store ptr %t74, ptr %l43
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load ptr, ptr %l43, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb25:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l44, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t77, ptr %l45
  %t78 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t78, ptr %l46
  %t79 = getelementptr %"compiler/check:litBuilder", ptr %l3, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l47, !tbaa !24
  %t81 = icmp sge i64 0, 0
  br i1 %t81, label %bb26, label %bb27
bb26:
  %t83 = icmp sle i64 0, 1152921504606846975
  br i1 %t83, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_7e62f8d4bbe8caf4_21f9a062d52f4170)
  unreachable
bb28:
  %t85 = mul i64 0, 8
  %t86 = insertvalue { i64, ptr } undef, i64 0, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t87, ptr %l50, !tbaa !27
  %t88 = load ptr, ptr %l7, !tbaa !29
  %t89 = mul i64 1, 8
  %t90 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 1, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l52, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 0
  store ptr %t88, ptr %t96, !tbaa !39
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = getelementptr %"compiler/check:litBuilder", ptr %l3, i32 0, i32 0
  %t102 = load i64, ptr %t101, !tbaa !24
  %t107 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v2, ptr %t100, i64 %t102, i32 %a4)
  store { i64, ptr } %t107, ptr %l57
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_7e62f8d4bbe8caf4_21f9a062d52f4170)
  unreachable
bb30:
  %t108 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 4
  %t112 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load ptr, ptr %l44, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l45
  %t117 = load %"compiler/source:Span", ptr %l46
  %t118 = load i64, ptr %l47, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t122 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %v2, ptr %t115, %"compiler/source:Span" %t116, %"compiler/source:Span" %t117, i64 %t118, ptr null, { i64, ptr } %t119, { i64, ptr } %t120, { i64, ptr } %t114)
  store ptr %t122, ptr %l59
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t123 = load ptr, ptr %l59, !tbaa !29
  store ptr %t123, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efuncNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l7, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l9, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 4
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = load ptr, ptr %l9, !tbaa !29
  %t29 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t26, ptr %t23, ptr %t24)
  store i32 %t29, ptr %l16
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l7, !tbaa !29
  %t31 = load i32, ptr %l16, !tbaa !23
  %t32 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t32, ptr %l17
  br label %bb8
bb8:
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = load i32, ptr %l17, !tbaa !23
  %t36 = icmp ne i32 %t34, %t33
  store i1 %t36, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_9cda55992b6a58cc_f4ed715c72ea34c8)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsFloat(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i32
  %l16 = alloca i1
  %l22 = alloca i32
  %l25 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l47 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l65 = alloca i1
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
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l16
  br label %bb2
bb2:
  %t22 = load i1, ptr %l16, !tbaa !21
  br i1 %t22, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l22
  br label %bb6
bb6:
  %t34 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t36 = trunc i64 19 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l25, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l30
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i32, ptr %l30, !tbaa !23
  %t52 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsFloat(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t52, ptr %l31
  br label %bb10
bb10:
  %t53 = load i1, ptr %l31, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t59, i32 %t60)
  store i1 %t63, ptr %l36
  br label %bb12
bb12:
  %t64 = load i1, ptr %l36, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb16
bb14:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t71 = load i32, ptr %l2, !tbaa !23
  %t74 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t74, ptr %l42
  br label %bb15
bb15:
  %t75 = load i1, ptr %l42, !tbaa !21
  %t76 = xor i1 %t75, true
  store i1 %t76, ptr %l38, !tbaa !21
  br label %bb16
bb16:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  store ptr %t85, ptr %l47, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l2, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l52
  br label %bb20
bb20:
  %t96 = load ptr, ptr %l47, !tbaa !29
  %t97 = load i32, ptr %l52, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l53
  br label %bb21
bb21:
  %t99 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t99, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l5, !tbaa !24
  br label %bb22
bb22:
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  br label %bb25
bb25:
  %t112 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t112, ptr %l60, !tbaa !27
  %t113 = load i64, ptr %l4, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t124 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsFloat(ptr %v0, ptr %t120, i32 %t118)
  store i1 %t124, ptr %l65
  br label %bb26
bb26:
  %t125 = load i1, ptr %l65, !tbaa !21
  br i1 %t125, label %bb27, label %bb28
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t127 = load i64, ptr %l4, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l4, !tbaa !24
  br label %bb22
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
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
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t12, i32 %a1)
  store i32 %t16, ptr %l10
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = load i32, ptr %l10, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l11
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp eq i64 %t23, 1
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l16, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr i32, ptr %t29, i64 0
  %t31 = load i32, ptr %t30, !tbaa !33
  %t32 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t35 = icmp eq i32 %t31, %t32
  store i1 %t35, ptr %l15, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t37 = load i1, ptr %l15, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einheritClash(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i1
  %l16 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca i32
  %l40 = alloca ptr
  %l44 = alloca i64
  %l46 = alloca ptr
  %l51 = alloca i1
  %l59 = alloca i1
  %l61 = alloca i1
  %l65 = alloca i1
  %l70 = alloca i32
  %l74 = alloca i1
  %l79 = alloca i32
  %l82 = alloca i1
  %l86 = alloca ptr
  %l90 = alloca i64
  %l91 = alloca ptr
  %l95 = alloca ptr
  %l98 = alloca %"compiler/source:Span"
  %l101 = alloca { i64, ptr }
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i64
  %l126 = alloca i1
  %l132 = alloca i1
  %l138 = alloca i1
  %l143 = alloca i32
  %l149 = alloca i64
  %l151 = alloca i1
  %l157 = alloca i64
  %l159 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l164 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %l174 = alloca i32
  %l179 = alloca i32
  %l182 = alloca i1
  %l184 = alloca i1
  %l185 = alloca i1
  %l187 = alloca i1
  %l188 = alloca i1
  %l190 = alloca i1
  %l191 = alloca i1
  %l193 = alloca i1
  %l194 = alloca i1
  %l196 = alloca i1
  %l198 = alloca i1
  %l199 = alloca i1
  %l202 = alloca i1
  %l206 = alloca i1
  %l208 = alloca i1
  %l209 = alloca i1
  %l214 = alloca i1
  %l216 = alloca i1
  %l217 = alloca i1
  %l219 = alloca i32
  %l223 = alloca i1
  %l228 = alloca i1
  %l230 = alloca i1
  %l231 = alloca i1
  %l234 = alloca i1
  %l235 = alloca i1
  %l238 = alloca ptr
  %l244 = alloca ptr
  %l247 = alloca %"compiler/source:Span"
  %l248 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l254 = alloca %"compiler/diagmsg:Msg"
  %l255 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s13 = alloca %olang.scope
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
  store ptr %t8, ptr %l16
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l16, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Func", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %t13, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t10, i32 %t14)
  store { i64, ptr } %t17, ptr %l20
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l26, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t34, i64 %t35)
  store i32 %t38, ptr %l30
  br label %bb3
bb3:
  %t39 = load ptr, ptr %l26, !tbaa !29
  %t40 = load i32, ptr %l30, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t41, ptr %l31
  br label %bb4
bb4:
  %t42 = load ptr, ptr %l23, !tbaa !29
  %t43 = load i32, ptr %l31, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t42, i32 %t43)
  store { i64, ptr } %t44, ptr %l32
  br label %bb5
bb5:
  %t45 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t45, ptr %l4, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t50 = icmp eq i64 %t48, 0
  br i1 %t50, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t53, ptr %l37, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  %t57 = load i32, ptr %t56, !tbaa !33
  %t60 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t52, i32 %t57)
  store i32 %t60, ptr %l39
  br label %bb9
bb9:
  %t61 = load i32, ptr %l39, !tbaa !23
  store i32 %t61, ptr %l5, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l40, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l44
  br label %bb10
bb10:
  %t71 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t72 = load ptr, ptr %l40, !tbaa !29
  %t73 = load i64, ptr %l44, !tbaa !24
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t72, i64 -1, i64 %t73, i32 %t71, i32 0)
  store ptr %t75, ptr %l46
  br label %bb11
bb11:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l5, !tbaa !23
  %t85 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t81, i32 %t82)
  store i1 %t85, ptr %l51
  br label %bb12
bb12:
  %t86 = load i1, ptr %l51, !tbaa !21
  br i1 %t86, label %bb13, label %bb14
bb13:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i32, ptr %l5, !tbaa !23
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorMethod(ptr %v0, ptr %v0, ptr %t87, i64 %t88, i32 %t89, { i64, ptr } %t90)
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t95 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t95)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l5, !tbaa !23
  %t101 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l59
  br label %bb18
bb18:
  %t102 = load i1, ptr %l59, !tbaa !21
  %t103 = xor i1 %t102, true
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t105 = load i32, ptr %l5, !tbaa !23
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t109 = icmp ne i32 %t105, %t106
  store i1 %t109, ptr %l61, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb21
bb21:
  %t111 = load i1, ptr %l61, !tbaa !21
  br i1 %t111, label %bb22, label %bb23
bb22:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t115, i32 0, i32 2
  %t118 = load i32, ptr %l5, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t117, i32 %t118)
  store i32 %t121, ptr %l70
  br label %bb24
bb23:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb25
bb24:
  %t122 = load i32, ptr %l70, !range !{i32 0, i32 33}
  %t124 = trunc i64 25 to i32
  %t125 = icmp eq i32 %t122, %t124
  %t127 = xor i1 %t125, true
  store i1 %t127, ptr %l65, !tbaa !21
  br label %bb25
bb25:
  %t129 = load i1, ptr %l65, !tbaa !21
  br i1 %t129, label %bb26, label %bb27
bb26:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l5, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l79
  br label %bb28
bb27:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb29
bb28:
  %t140 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t141 = load i32, ptr %l79, !tbaa !23
  %t143 = icmp eq i32 %t141, %t140
  store i1 %t143, ptr %l74, !tbaa !21
  br label %bb29
bb29:
  %t145 = load i1, ptr %l74, !tbaa !21
  br i1 %t145, label %bb30, label %bb31
bb30:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/load:Loader", ptr %t152, i32 0, i32 10
  store ptr %t154, ptr %l86, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i64, ptr %l1, !tbaa !24
  %t162 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t158, i64 %t159)
  store i64 %t162, ptr %l90
  br label %bb32
bb31:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb34
bb32:
  %t163 = load ptr, ptr %l86, !tbaa !29
  %t164 = load i64, ptr %l90, !tbaa !24
  %t165 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t163, i64 %t164)
  store ptr %t165, ptr %l91
  br label %bb33
bb33:
  %t166 = load ptr, ptr %l91, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 3
  %t169 = load i1, ptr %t168, !tbaa !21
  %t171 = xor i1 %t169, true
  store i1 %t171, ptr %l82, !tbaa !21
  br label %bb34
bb34:
  %t173 = load i1, ptr %l82, !tbaa !21
  br i1 %t173, label %bb35, label %bb36
bb35:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l95, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t179 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t175, ptr %t176)
  store %"compiler/source:Span" %t179, ptr %l98
  br label %bb37
bb36:
  br label %bb42
bb37:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i32, ptr %l5, !tbaa !23
  %t184 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t180, i32 %t181)
  store { i64, ptr } %t184, ptr %l101
  br label %bb38
bb38:
  %t185 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  %t187 = extractvalue { i64, ptr } %t185, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  %t193 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnBuiltinType(ptr %v0, ptr %v0, { i64, ptr } %t191)
  store %"compiler/diagmsg:Msg" %t193, ptr %l103
  br label %bb39
bb39:
  %t194 = load ptr, ptr %l95, !tbaa !29
  %t195 = load %"compiler/source:Span", ptr %l98
  %t196 = load %"compiler/diagmsg:Msg", ptr %l103
  %t197 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t194, %"compiler/source:Span" %t195, %"compiler/diagmsg:Msg" %t196)
  store i64 %t197, ptr %l104
  br label %bb40
bb40:
  %t198 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t198)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb42:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i64, ptr %l1, !tbaa !24
  %t202 = load i32, ptr %l5, !tbaa !23
  %t203 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t208 = sub i64 %t206, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebothSpellings(ptr %v0, ptr %v0, ptr %t200, i64 %t201, i32 %t202, { i64, ptr } %t203, i64 %t208)
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s4
  %t214 = insertvalue [6 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t215 = insertvalue [6 x { i64, ptr }] %t214, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t216 = insertvalue [6 x { i64, ptr }] %t215, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, 2
  %t217 = insertvalue [6 x { i64, ptr }] %t216, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, 3
  %t218 = insertvalue [6 x { i64, ptr }] %t217, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 4
  %t219 = insertvalue [6 x { i64, ptr }] %t218, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 5
  %t221 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 96, i64 8)
  store [6 x { i64, ptr }] %t219, ptr %t221
  store ptr %t221, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t223 = load ptr, ptr %l6
  store i64 6, ptr %l8, !tbaa !24
  br label %bb44
bb44:
  %t226 = load i64, ptr %l7, !tbaa !24
  %t227 = load i64, ptr %l8, !tbaa !24
  %t230 = icmp slt i64 %t226, %t227
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb45, label %bb46
bb45:
  br label %bb54
bb46:
  br label %bb47
bb47:
  %t234 = load ptr, ptr %l6
  %t235 = load i64, ptr %l7, !tbaa !24
  %t238 = getelementptr [6 x { i64, ptr }], ptr %t234, i64 0, i64 %t235
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !37
  %t242 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t243 = load ptr, ptr @__olang_prog_scope
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t243, ptr %v0, { i64, ptr } %t239, { i64, ptr } %t242)
  store i1 %t246, ptr %l126
  br label %bb48
bb48:
  %t247 = load i1, ptr %l126, !tbaa !21
  br i1 %t247, label %bb49, label %bb50
bb49:
  %t248 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t248)
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb52:
  br label %bb53
bb53:
  %t250 = load i64, ptr %l7, !tbaa !24
  %t252 = add i64 %t250, 1
  store i64 %t252, ptr %l7, !tbaa !24
  br label %bb44
bb54:
  call void @__olang_scope_close(ptr %s4)
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i32, ptr %l5, !tbaa !23
  %t258 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t254, i32 %t255)
  store i1 %t258, ptr %l132
  br label %bb55
bb55:
  %t259 = load i1, ptr %l132, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb56, label %bb57
bb56:
  %t262 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t262)
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb59:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/check:Checker", ptr %t264, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t268 = load i32, ptr %l5, !tbaa !23
  %t271 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t267, i32 %t268)
  store i1 %t271, ptr %l138
  br label %bb60
bb60:
  %t272 = load i1, ptr %l138, !tbaa !21
  br i1 %t272, label %bb61, label %bb62
bb61:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  %t279 = load i32, ptr %l5, !tbaa !23
  %t282 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t278, i32 %t279)
  store i32 %t282, ptr %l143
  br label %bb63
bb62:
  br label %bb77
bb63:
  %t283 = load i32, ptr %l143, !tbaa !23
  store i32 %t283, ptr %l10, !tbaa !23
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t288 = load i32, ptr %l10, !tbaa !23
  %t289 = load ptr, ptr %l2, !tbaa !29
  %t291 = getelementptr %"compiler/ast:Func", ptr %t289, i32 0, i32 2
  %t292 = load i32, ptr %t291, !tbaa !23
  %t296 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t287, i32 %t288, i32 %t292)
  store i64 %t296, ptr %l149
  br label %bb64
bb64:
  %t297 = load i64, ptr %l149, !tbaa !24
  %t298 = icmp sge i64 %t297, 0
  br i1 %t298, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l151, !tbaa !21
  br label %bb68
bb66:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/check:Checker", ptr %t300, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !29
  %t304 = load i32, ptr %l10, !tbaa !23
  %t305 = load ptr, ptr %l2, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Func", ptr %t305, i32 0, i32 2
  %t308 = load i32, ptr %t307, !tbaa !23
  %t312 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %t303, i32 %t304, i32 %t308)
  store i64 %t312, ptr %l157
  br label %bb67
bb67:
  %t313 = load i64, ptr %l157, !tbaa !24
  %t314 = icmp sge i64 %t313, 0
  store i1 %t314, ptr %l151, !tbaa !21
  br label %bb68
bb68:
  %t316 = load i1, ptr %l151, !tbaa !21
  br i1 %t316, label %bb69, label %bb70
bb69:
  %t317 = load ptr, ptr %l0, !tbaa !29
  store ptr %t317, ptr %l159, !tbaa !29
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load ptr, ptr %l2, !tbaa !29
  %t322 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t318, ptr %t319)
  store %"compiler/source:Span" %t322, ptr %l162
  br label %bb71
bb70:
  br label %bb76
bb71:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t324, ptr %l164, !tbaa !27
  %t325 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr i32, ptr %t326, i64 0
  %t328 = load i32, ptr %t327, !tbaa !33
  %t331 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t323, i32 %t328)
  store { i64, ptr } %t331, ptr %l166
  br label %bb72
bb72:
  %t332 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  %t334 = extractvalue { i64, ptr } %t332, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  %t339 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t342 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodClashesInherited(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t338, { i64, ptr } %t339)
  store %"compiler/diagmsg:Msg" %t342, ptr %l169
  br label %bb73
bb73:
  %t343 = load ptr, ptr %l159, !tbaa !29
  %t344 = load %"compiler/source:Span", ptr %l162
  %t345 = load %"compiler/diagmsg:Msg", ptr %l169
  %t346 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t343, %"compiler/source:Span" %t344, %"compiler/diagmsg:Msg" %t345)
  store i64 %t346, ptr %l170
  br label %bb74
bb74:
  %t347 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t347)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb76:
  br label %bb77
bb77:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l5, !tbaa !23
  %t353 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t349, i32 %t350)
  store i32 %t353, ptr %l174
  br label %bb78
bb78:
  %t354 = load i32, ptr %l174, !tbaa !23
  store i32 %t354, ptr %l11, !tbaa !23
  store i1 false, ptr %l12, !tbaa !21
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/check:Checker", ptr %t355, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !29
  %t360 = getelementptr %"compiler/generic:Program", ptr %t358, i32 0, i32 2
  %t361 = load i32, ptr %l11, !tbaa !23
  %t364 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t360, i32 %t361)
  store i32 %t364, ptr %l179
  br label %bb79
bb79:
  %t365 = load i32, ptr %l179, !range !{i32 0, i32 33}
  %t367 = trunc i64 19 to i32
  %t368 = icmp eq i32 %t365, %t367
  br i1 %t368, label %bb80, label %bb81
bb80:
  %t370 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t372 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t370, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t372, ptr %l184
  br label %bb82
bb81:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb99
bb82:
  %t373 = load i1, ptr %l184, !tbaa !21
  br i1 %t373, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l185, !tbaa !21
  br label %bb86
bb84:
  %t374 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t376 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t374, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t376, ptr %l187
  br label %bb85
bb85:
  %t377 = load i1, ptr %l187, !tbaa !21
  store i1 %t377, ptr %l185, !tbaa !21
  br label %bb86
bb86:
  %t378 = load i1, ptr %l185, !tbaa !21
  br i1 %t378, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l188, !tbaa !21
  br label %bb90
bb88:
  %t379 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t381 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t379, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t381, ptr %l190
  br label %bb89
bb89:
  %t382 = load i1, ptr %l190, !tbaa !21
  store i1 %t382, ptr %l188, !tbaa !21
  br label %bb90
bb90:
  %t383 = load i1, ptr %l188, !tbaa !21
  br i1 %t383, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l191, !tbaa !21
  br label %bb94
bb92:
  %t384 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t386 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t384, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t386, ptr %l193
  br label %bb93
bb93:
  %t387 = load i1, ptr %l193, !tbaa !21
  store i1 %t387, ptr %l191, !tbaa !21
  br label %bb94
bb94:
  %t388 = load i1, ptr %l191, !tbaa !21
  br i1 %t388, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l194, !tbaa !21
  br label %bb98
bb96:
  %t389 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t391 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t389, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t391, ptr %l196
  br label %bb97
bb97:
  %t392 = load i1, ptr %l196, !tbaa !21
  store i1 %t392, ptr %l194, !tbaa !21
  br label %bb98
bb98:
  %t393 = load i1, ptr %l194, !tbaa !21
  store i1 %t393, ptr %l182, !tbaa !21
  br label %bb99
bb99:
  %t394 = load i1, ptr %l182, !tbaa !21
  br i1 %t394, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb102
bb101:
  br label %bb102
bb102:
  %t395 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t397 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t395, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t397, ptr %l198
  br label %bb103
bb103:
  %t398 = load i1, ptr %l198, !tbaa !21
  br i1 %t398, label %bb104, label %bb105
bb104:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load i32, ptr %l5, !tbaa !23
  %t403 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t399, i32 %t400)
  store i1 %t403, ptr %l202
  br label %bb106
bb105:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb107
bb106:
  %t404 = load i1, ptr %l202, !tbaa !21
  store i1 %t404, ptr %l199, !tbaa !21
  br label %bb107
bb107:
  %t405 = load i1, ptr %l199, !tbaa !21
  br i1 %t405, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb110
bb109:
  br label %bb110
bb110:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr %"compiler/check:Checker", ptr %t406, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !29
  %t410 = load i32, ptr %l5, !tbaa !23
  %t413 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t409, i32 %t410)
  store i1 %t413, ptr %l206
  br label %bb111
bb111:
  %t414 = load i1, ptr %l206, !tbaa !21
  br i1 %t414, label %bb112, label %bb113
bb112:
  store %olang.scope zeroinitializer, ptr %s13
  %t415 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t417 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s13, { i64, ptr } %t415, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t417, ptr %l208
  br label %bb114
bb113:
  br label %bb134
bb114:
  %t418 = load i1, ptr %l208, !tbaa !21
  br i1 %t418, label %bb115, label %bb116
bb115:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr %"compiler/check:Checker", ptr %t419, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !29
  %t424 = getelementptr %"compiler/generic:Program", ptr %t422, i32 0, i32 2
  %t425 = load i32, ptr %l11, !tbaa !23
  %t428 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t424, i32 %t425)
  store i1 %t428, ptr %l214
  br label %bb117
bb116:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb118
bb117:
  %t429 = load i1, ptr %l214, !tbaa !21
  store i1 %t429, ptr %l209, !tbaa !21
  br label %bb118
bb118:
  %t430 = load i1, ptr %l209, !tbaa !21
  br i1 %t430, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb121
bb120:
  br label %bb121
bb121:
  %t431 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t433 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s13, { i64, ptr } %t431, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t433, ptr %l216
  br label %bb122
bb122:
  %t434 = load i1, ptr %l216, !tbaa !21
  br i1 %t434, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l217, !tbaa !21
  br label %bb126
bb124:
  %t435 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t437 = call i32 @compiler_2fcheck_2ebitOp(ptr %v0, { i64, ptr } %t435)
  store i32 %t437, ptr %l219
  br label %bb125
bb125:
  %t438 = load i32, ptr %l219, !range !{i32 0, i32 52}
  %t440 = trunc i64 29 to i32
  %t441 = icmp eq i32 %t438, %t440
  %t443 = xor i1 %t441, true
  store i1 %t443, ptr %l217, !tbaa !21
  br label %bb126
bb126:
  %t445 = load i1, ptr %l217, !tbaa !21
  br i1 %t445, label %bb127, label %bb128
bb127:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/check:Checker", ptr %t446, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t451 = getelementptr %"compiler/generic:Program", ptr %t449, i32 0, i32 2
  %t452 = load i32, ptr %l11, !tbaa !23
  %t455 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t451, i32 %t452)
  store i1 %t455, ptr %l228
  br label %bb129
bb128:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb130
bb129:
  %t456 = load i1, ptr %l228, !tbaa !21
  store i1 %t456, ptr %l223, !tbaa !21
  br label %bb130
bb130:
  %t457 = load i1, ptr %l223, !tbaa !21
  br i1 %t457, label %bb131, label %bb132
bb131:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb133
bb132:
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s13)
  br label %bb134
bb134:
  %t458 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t460 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t458, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t460, ptr %l230
  br label %bb135
bb135:
  %t461 = load i1, ptr %l230, !tbaa !21
  br i1 %t461, label %bb136, label %bb137
bb136:
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load i32, ptr %l5, !tbaa !23
  %t466 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t462, i32 %t463)
  store i1 %t466, ptr %l234
  br label %bb138
bb137:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb139
bb138:
  %t467 = load i1, ptr %l234, !tbaa !21
  store i1 %t467, ptr %l231, !tbaa !21
  br label %bb139
bb139:
  %t468 = load i1, ptr %l231, !tbaa !21
  br i1 %t468, label %bb140, label %bb141
bb140:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load i32, ptr %l5, !tbaa !23
  %t473 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v0, ptr %t469, i32 %t470)
  store ptr %t473, ptr %l238
  br label %bb142
bb141:
  store i1 false, ptr %l235, !tbaa !21
  br label %bb143
bb142:
  %t474 = load ptr, ptr %l238, !tbaa !29
  %t476 = getelementptr %"compiler/check:rawTable", ptr %t474, i32 0, i32 0
  %t477 = load i32, ptr %t476, !tbaa !23
  %t478 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t481 = icmp ne i32 %t477, %t478
  store i1 %t481, ptr %l235, !tbaa !21
  br label %bb143
bb143:
  %t483 = load i1, ptr %l235, !tbaa !21
  br i1 %t483, label %bb144, label %bb145
bb144:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb146
bb145:
  br label %bb146
bb146:
  %t484 = load i1, ptr %l12, !tbaa !21
  br i1 %t484, label %bb147, label %bb148
bb147:
  %t486 = load ptr, ptr %l0, !tbaa !29
  store ptr %t486, ptr %l244, !tbaa !29
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load ptr, ptr %l2, !tbaa !29
  %t491 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t487, ptr %t488)
  store %"compiler/source:Span" %t491, ptr %l247
  br label %bb149
bb148:
  br label %bb153
bb149:
  %t492 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t492, ptr %l248, !tbaa !27
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t494, ptr %l250, !tbaa !27
  %t495 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = getelementptr i32, ptr %t496, i64 0
  %t498 = load i32, ptr %t497, !tbaa !33
  %t501 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t493, i32 %t498)
  store { i64, ptr } %t501, ptr %l252
  br label %bb150
bb150:
  %t502 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t502, 0
  %t504 = extractvalue { i64, ptr } %t502, 1
  %t505 = mul i64 %t503, 1
  %t506 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t505)
  call void @llvm.memcpy.p0.p0.i64(ptr %t506, ptr %t504, i64 %t505, i1 false)
  %t507 = insertvalue { i64, ptr } undef, i64 %t503, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  %t509 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t511 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodClashesSupplied(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t509, { i64, ptr } %t508)
  store %"compiler/diagmsg:Msg" %t511, ptr %l254
  br label %bb151
bb151:
  %t512 = load ptr, ptr %l244, !tbaa !29
  %t513 = load %"compiler/source:Span", ptr %l247
  %t514 = load %"compiler/diagmsg:Msg", ptr %l254
  %t515 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t512, %"compiler/source:Span" %t513, %"compiler/diagmsg:Msg" %t514)
  store i64 %t515, ptr %l255
  br label %bb152
bb152:
  br label %bb153
bb153:
  %t516 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t516)
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i64
  %l17 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l52 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l62 = alloca %"compiler/generic:varRow"
  %l64 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb2
bb2:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t7, i64 %t8)
  store i64 %t11, ptr %l16
  br label %bb3
bb3:
  %t12 = load i64, ptr %l16, !tbaa !24
  %t13 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t12)
  store i64 %t13, ptr %l17
  br label %bb4
bb4:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  store ptr %t20, ptr %l20, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t24, i64 %t25)
  store i32 %t28, ptr %l24
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = load i32, ptr %l24, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l25
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb12
bb9:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %l31, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l31, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l10, !tbaa !24
  store ptr %l2, ptr %l52, !tbaa !29
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = icmp eq i64 %t83, 0
  br i1 %t85, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb19
bb18:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l55, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t87, { i64, ptr } %t88)
  br label %bb20
bb20:
  store ptr %l2, ptr %l56, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l57, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/check:Checker", ptr %t90, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t94 = load i64, ptr %l3, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t99 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t93, i64 %t94, i64 %t95)
  store %"compiler/generic:varRow" %t99, ptr %l62
  br label %bb21
bb21:
  %t100 = getelementptr %"compiler/generic:varRow", ptr %l62, i32 0, i32 1
  %t101 = load i32, ptr %t100, !tbaa !23
  %t102 = load ptr, ptr %l57, !tbaa !29
  %t104 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t102, i32 %t101)
  store { i64, ptr } %t104, ptr %l64
  br label %bb22
bb22:
  %t105 = load ptr, ptr %l56, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l64, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t105, { i64, ptr } %t106)
  br label %bb23
bb23:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb24
bb24:
  store ptr %l2, ptr %l66, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t109, ptr %l68, !tbaa !27
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  %t118 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t108, i32 %t115)
  store { i64, ptr } %t118, ptr %l71
  br label %bb25
bb25:
  %t119 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  %t121 = extractvalue { i64, ptr } %t119, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t126 = load ptr, ptr %l66, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t126, { i64, ptr } %t125)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb27:
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l9, !tbaa !24
  br label %bb13
bb28:
  %t133 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t133, ptr %l76
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t134 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t134, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejump(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i1
  %l13 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca %"compiler/diagmsg:Msg"
  %l28 = alloca i64
  %l32 = alloca i1
  %l35 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca i64
  %l54 = alloca i1
  %l57 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i64
  %l71 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l80 = alloca i64
  %l82 = alloca ptr
  %l85 = alloca i64
  %l87 = alloca i64
  %l90 = alloca ptr
  %l91 = alloca %"compiler/source:Span"
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca i64
  %l97 = alloca ptr
  %l100 = alloca i64
  %l102 = alloca i64
  %l105 = alloca i32
  %l118 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca i32
  %l123 = alloca ptr
  %t228 = alloca { i64, [3 x i64] }, align 8
  %t254 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = trunc i64 19 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l9, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t12)
  store ptr %t14, ptr %l13
  br label %bb6
bb5:
  br label %bb65
bb6:
  %t15 = load ptr, ptr %l13, !tbaa !29
  store ptr %t15, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr %"compiler/check:frame", ptr %t16, i32 0, i32 10
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l16
  br label %bb7
bb7:
  %t21 = load i64, ptr %l16, !tbaa !24
  %t22 = icmp eq i64 %t21, 0
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 32
  %t27 = load i1, ptr %t26, !tbaa !21
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t31, ptr %l22
  %t32 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t34 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t32)
  store { i64, ptr } %t34, ptr %l24
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t35 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t36 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t35)
  store { i64, ptr } %t36, ptr %l25
  br label %bb14
bb14:
  %t37 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  %t39 = extractvalue { i64, ptr } %t37, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t45 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseLoopJump(ptr %v0, ptr %v0, { i64, ptr } %t43)
  store %"compiler/diagmsg:Msg" %t45, ptr %l27
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l22
  %t48 = load %"compiler/diagmsg:Msg", ptr %l27
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t46, %"compiler/source:Span" %t47, %"compiler/diagmsg:Msg" %t48)
  store i64 %t49, ptr %l28
  br label %bb16
bb16:
  br label %ret
bb17:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/check:frame", ptr %t50, i32 0, i32 35
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = icmp sge i64 %t53, 0
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/check:frame", ptr %t57, i32 0, i32 10
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l35
  br label %bb20
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb21
bb20:
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/check:frame", ptr %t62, i32 0, i32 35
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = load i64, ptr %l35, !tbaa !24
  %t68 = icmp sle i64 %t66, %t65
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t70 = load i1, ptr %l32, !tbaa !21
  br i1 %t70, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t72, ptr %l40
  %t73 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t75 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t73)
  store { i64, ptr } %t75, ptr %l42
  br label %bb24
bb23:
  br label %bb29
bb24:
  %t76 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t77 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t76)
  store { i64, ptr } %t77, ptr %l43
  br label %bb25
bb25:
  %t78 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l44, !tbaa !27
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/check:frame", ptr %t86, i32 0, i32 36
  %t89 = load i1, ptr %t88, !tbaa !21
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v0, ptr %t85, i1 %t89)
  store { i64, ptr } %t92, ptr %l48
  br label %bb26
bb26:
  %t93 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t95 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgLoopJump(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t93, { i64, ptr } %t94)
  store %"compiler/diagmsg:Msg" %t95, ptr %l49
  br label %bb27
bb27:
  %t96 = load ptr, ptr %l39, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l40
  %t98 = load %"compiler/diagmsg:Msg", ptr %l49
  %t99 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t96, %"compiler/source:Span" %t97, %"compiler/diagmsg:Msg" %t98)
  store i64 %t99, ptr %l50
  br label %bb28
bb28:
  br label %ret
bb29:
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t102 = getelementptr %"compiler/check:frame", ptr %t100, i32 0, i32 34
  %t103 = load i64, ptr %t102, !tbaa !24
  %t105 = icmp sge i64 %t103, 0
  br i1 %t105, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr %"compiler/check:frame", ptr %t107, i32 0, i32 10
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t109)
  store i64 %t111, ptr %l57
  br label %bb32
bb31:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb33
bb32:
  %t112 = load ptr, ptr %l4, !tbaa !29
  %t114 = getelementptr %"compiler/check:frame", ptr %t112, i32 0, i32 34
  %t115 = load i64, ptr %t114, !tbaa !24
  %t116 = load i64, ptr %l57, !tbaa !24
  %t118 = icmp sle i64 %t116, %t115
  store i1 %t118, ptr %l54, !tbaa !21
  br label %bb33
bb33:
  %t120 = load i1, ptr %l54, !tbaa !21
  br i1 %t120, label %bb34, label %bb35
bb34:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l61, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t122, ptr %l62
  %t123 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t125 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t123)
  store { i64, ptr } %t125, ptr %l64
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t126 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t127 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t126)
  store { i64, ptr } %t127, ptr %l65
  br label %bb37
bb37:
  %t128 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferLoopJump(ptr %v0, ptr %v0, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l67
  br label %bb38
bb38:
  %t137 = load ptr, ptr %l61, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l62
  %t139 = load %"compiler/diagmsg:Msg", ptr %l67
  %t140 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l68
  br label %bb39
bb39:
  br label %ret
bb40:
  %t141 = load ptr, ptr %l4, !tbaa !29
  %t143 = getelementptr %"compiler/check:frame", ptr %t141, i32 0, i32 10
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t143)
  store i64 %t145, ptr %l71
  br label %bb41
bb41:
  %t146 = load i64, ptr %l71, !tbaa !24
  %t147 = icmp eq i64 %t146, 0
  br i1 %t147, label %bb42, label %bb43
bb42:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l73, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l74
  %t151 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t153 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t151)
  store { i64, ptr } %t153, ptr %l76
  br label %bb44
bb43:
  br label %bb48
bb44:
  %t154 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t155 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t154)
  store { i64, ptr } %t155, ptr %l77
  br label %bb45
bb45:
  %t156 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t164 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBreakOutsideLoop(ptr %v0, ptr %v0, { i64, ptr } %t162)
  store %"compiler/diagmsg:Msg" %t164, ptr %l79
  br label %bb46
bb46:
  %t165 = load ptr, ptr %l73, !tbaa !29
  %t166 = load %"compiler/source:Span", ptr %l74
  %t167 = load %"compiler/diagmsg:Msg", ptr %l79
  %t168 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t165, %"compiler/source:Span" %t166, %"compiler/diagmsg:Msg" %t167)
  store i64 %t168, ptr %l80
  br label %bb47
bb47:
  br label %ret
bb48:
  %t169 = load ptr, ptr %l4, !tbaa !29
  %t171 = getelementptr %"compiler/check:frame", ptr %t169, i32 0, i32 10
  store ptr %t171, ptr %l82, !tbaa !29
  %t172 = load ptr, ptr %l4, !tbaa !29
  %t174 = getelementptr %"compiler/check:frame", ptr %t172, i32 0, i32 10
  %t176 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t174)
  store i64 %t176, ptr %l85
  br label %bb49
bb49:
  %t177 = load i64, ptr %l85, !tbaa !24
  %t178 = sub i64 %t177, 1
  %t179 = load ptr, ptr %l82, !tbaa !29
  %t181 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t179, i64 %t178)
  store i64 %t181, ptr %l87
  br label %bb50
bb50:
  %t182 = load i64, ptr %l87, !tbaa !24
  store i64 %t182, ptr %l5, !tbaa !24
  %t183 = load i64, ptr %l5, !tbaa !24
  %t185 = icmp eq i64 %t183, -2
  br i1 %t185, label %bb51, label %bb52
bb51:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l90, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t188, ptr %l91
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInClauseExit(ptr %v0)
  store %"compiler/diagmsg:Msg" %t189, ptr %l92
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t190 = load ptr, ptr %l90, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l91
  %t192 = load %"compiler/diagmsg:Msg", ptr %l92
  %t193 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t190, %"compiler/source:Span" %t191, %"compiler/diagmsg:Msg" %t192)
  store i64 %t193, ptr %l93
  br label %bb54
bb54:
  br label %ret
bb55:
  %t194 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t196 = trunc i64 19 to i32
  %t197 = icmp eq i32 %t194, %t196
  br i1 %t197, label %bb56, label %bb57
bb56:
  %t199 = load ptr, ptr %l4, !tbaa !29
  %t201 = getelementptr %"compiler/check:frame", ptr %t199, i32 0, i32 11
  store ptr %t201, ptr %l97, !tbaa !29
  %t202 = load ptr, ptr %l4, !tbaa !29
  %t204 = getelementptr %"compiler/check:frame", ptr %t202, i32 0, i32 11
  %t206 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t204)
  store i64 %t206, ptr %l100
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t207 = load i64, ptr %l100, !tbaa !24
  %t208 = sub i64 %t207, 1
  %t209 = load ptr, ptr %l97, !tbaa !29
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t209, i64 %t208)
  store i64 %t211, ptr %l102
  br label %bb59
bb59:
  %t212 = load i64, ptr %l102, !tbaa !24
  store i64 %t212, ptr %l5, !tbaa !24
  br label %bb60
bb60:
  %t213 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t215 = trunc i64 19 to i32
  %t216 = icmp eq i32 %t213, %t215
  br i1 %t216, label %bb61, label %bb62
bb61:
  store i32 0, ptr %l105
  br label %bb63
bb62:
  store i32 1, ptr %l105
  br label %bb63
bb63:
  %t220 = load i32, ptr %l105, !range !{i32 0, i32 2}
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l1
  %t224 = load i64, ptr %l5, !tbaa !24
  %t226 = trunc i64 %t224 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t228
  %t229 = getelementptr { i64, [3 x i64] }, ptr %t228, i32 0, i32 0
  store i64 5, ptr %t229
  %t231 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t222, 0
  %t233 = insertvalue { %"compiler/source:Span", i32, i32 } %t231, i32 %t220, 1
  %t235 = insertvalue { %"compiler/source:Span", i32, i32 } %t233, i32 %t226, 2
  %t236 = getelementptr { i64, [3 x i64] }, ptr %t228, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t235, ptr %t236
  %t237 = load { i64, [3 x i64] }, ptr %t228
  %t239 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t237, ptr %t239
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t221, ptr %t239)
  br label %bb64
bb64:
  br label %ret
bb65:
  %t242 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t244 = trunc i64 21 to i32
  %t245 = icmp eq i32 %t242, %t244
  br i1 %t245, label %bb66, label %bb67
bb66:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l118, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t248, ptr %l119
  store i32 0, ptr %l120
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t253 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v0, ptr %t249, ptr %a3, i1 true)
  store ptr %t253, ptr %l123
  br label %bb68
bb67:
  br label %bb70
bb68:
  store { i64, [3 x i64] } zeroinitializer, ptr %t254
  %t255 = getelementptr { i64, [3 x i64] }, ptr %t254, i32 0, i32 0
  store i64 9, ptr %t255
  %t256 = load %"compiler/source:Span", ptr %l119
  %t257 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t256, 0
  %t258 = load i32, ptr %l120, !range !{i32 0, i32 2}
  %t259 = insertvalue { %"compiler/source:Span", i32, ptr } %t257, i32 %t258, 1
  %t260 = load ptr, ptr %l123, !tbaa !29
  %t261 = insertvalue { %"compiler/source:Span", i32, ptr } %t259, ptr %t260, 2
  %t262 = getelementptr { i64, [3 x i64] }, ptr %t254, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t261, ptr %t262
  %t263 = load { i64, [3 x i64] }, ptr %t254
  %t265 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t263, ptr %t265
  %t266 = load ptr, ptr %l118, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t266, ptr %t265)
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAssign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/check:laneVals"
  %l11 = alloca i32
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca %"compiler/check:laneVals"
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i64
  %l31 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i32, ptr %l11, !tbaa !23
  store i32 %t4, ptr %l6, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load %"compiler/source:Span", ptr %l1
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTarget(ptr %v0, ptr %v1, ptr %t5, %"compiler/source:Span" %t6, ptr %t7)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l7, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l16, !tbaa !29
  store ptr %a5, ptr %l17, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l6, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l20
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = load i32, ptr %l20, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v2, ptr %v0, ptr %t20, ptr %t21, i32 %t22)
  store ptr %t23, ptr %l21
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l21, !tbaa !29
  store ptr %t24, ptr %l8, !tbaa !29
  %t25 = call %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %s0)
  store %"compiler/check:laneVals" %t25, ptr %l22
  br label %bb5
bb5:
  %t26 = load %"compiler/check:laneVals", ptr %l22
  store %"compiler/check:laneVals" %t26, ptr %l9
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l23, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t28, ptr %l24
  store %"compiler/source:Span" %a2, ptr %l25
  store i32 %a3, ptr %l26
  %t31 = load i32, ptr %l6, !tbaa !23
  store i32 %t31, ptr %l27, !tbaa !23
  %t32 = load i64, ptr %l7, !tbaa !24
  store i64 %t32, ptr %l28, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l8, !tbaa !29
  %t37 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v0, ptr %t33, ptr %t34)
  store i64 %t37, ptr %l31
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l23, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l24
  %t40 = load %"compiler/source:Span", ptr %l25
  %t41 = load i32, ptr %l26, !range !{i32 0, i32 114}
  %t42 = load i32, ptr %l27, !tbaa !23
  %t43 = load i64, ptr %l28, !tbaa !24
  %t44 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneStore(ptr %v0, ptr %s0, ptr %t38, %"compiler/source:Span" %t39, %"compiler/source:Span" %t40, i32 %t41, i32 %t42, i64 %t43, i64 %t44, ptr %l9)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %t14 = load i32, ptr %l3, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l17
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 39
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t17, i64 %t18)
  store %"compiler/check:laneNode" %t21, ptr %l21
  br label %bb3
bb3:
  %t22 = getelementptr %"compiler/check:laneNode", ptr %l21, i32 0, i32 8
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l22, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 39
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s0, ptr %t26, i64 %t27)
  store %"compiler/check:laneNode" %t30, ptr %l26
  br label %bb4
bb4:
  %t31 = getelementptr %"compiler/check:laneNode", ptr %l26, i32 0, i32 8
  %t32 = load i32, ptr %t31, !tbaa !23
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load i32, ptr %l17, !range !{i32 0, i32 114}
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
  %t50 = load i32, ptr %l3, !range !{i32 0, i32 114}
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
  %t75 = load i32, ptr %l36, !range !{i32 0, i32 114}
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

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l9 = alloca i64
  %l15 = alloca %"compiler/check:laneNode"
  %l19 = alloca i32
  %l22 = alloca i1
  %l23 = alloca i32
  %l26 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca i32
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
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  store i64 %t11, ptr %l9
  br label %bb4
bb4:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 39
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t19, i64 %t20)
  store %"compiler/check:laneNode" %t23, ptr %l15
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/check:laneNode", ptr %l15, i32 0, i32 8
  %t25 = load i32, ptr %t24, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t25, ptr %rv
  br label %ret
bb8:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t30 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t27)
  store i32 %t30, ptr %l19
  br label %bb9
bb9:
  %t31 = load i32, ptr %l19, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l22
  br label %bb10
bb10:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l26
  br label %bb13
bb12:
  %t43 = load i32, ptr %l3, !tbaa !23
  store i32 %t43, ptr %l23, !tbaa !23
  br label %bb14
bb13:
  %t45 = load i32, ptr %l26, !tbaa !23
  store i32 %t45, ptr %l23, !tbaa !23
  br label %bb14
bb14:
  %t46 = load i32, ptr %l23, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, i64, i64 }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l25 = alloca ptr
  %l30 = alloca i64
  %l34 = alloca { i64, i64, i64 }
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l44 = alloca i32
  %l48 = alloca ptr
  %l51 = alloca ptr
  %l53 = alloca ptr
  %rv = alloca { i64, i64, i64, i64, i64 }
  %t28 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2, ptr %l11
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t3)
  store i32 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l10, !tbaa !29
  %t7 = load %"compiler/source:Span", ptr %l11
  %t8 = load i32, ptr %l13, !tbaa !23
  %t9 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t6, %"compiler/source:Span" %t7, i32 %t8)
  store i64 %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load i64, ptr %l14, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l15, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l16
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = trunc i64 %t13 to i32
  store i32 %t15, ptr %l19, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l20, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t18, ptr %l21
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t19)
  store i32 %t21, ptr %l23
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l21
  %t25 = load i32, ptr %l23, !tbaa !23
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t23, %"compiler/source:Span" %t24, i32 %t25, i64 %a3)
  store ptr %t27, ptr %l25
  br label %bb4
bb4:
  store { i64, [3 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [3 x i64] }, ptr %t28, i32 0, i32 0
  store i64 0, ptr %t29
  %t30 = load %"compiler/source:Span", ptr %l16
  %t31 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t30, 0
  %t32 = load i32, ptr %l19, !tbaa !23
  %t33 = insertvalue { %"compiler/source:Span", i32, ptr } %t31, i32 %t32, 1
  %t34 = load ptr, ptr %l25, !tbaa !29
  %t35 = insertvalue { %"compiler/source:Span", i32, ptr } %t33, ptr %t34, 2
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t28, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t35, ptr %t36
  %t37 = load { i64, [3 x i64] }, ptr %t28
  %t39 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t37, ptr %t39
  %t40 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t40, ptr %t39)
  br label %bb5
bb5:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 37
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l30
  br label %bb6
bb6:
  %t47 = load i64, ptr %l30, !tbaa !24
  store i64 %t47, ptr %l5, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l1
  %t53 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t48, i32 2, %"compiler/source:Span" %t49)
  store { i64, i64, i64 } %t53, ptr %l34
  br label %bb7
bb7:
  %t54 = load { i64, i64, i64 }, ptr %l34
  store { i64, i64, i64 } %t54, ptr %l6
  %t55 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 0
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 2
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l38, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l39, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t66, ptr %l40
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l41, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t68, ptr %l42
  %t69 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t69, ptr %l43, !tbaa !23
  store i32 15, ptr %l44
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l1
  %t72 = load i64, ptr %l4, !tbaa !24
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t70, %"compiler/source:Span" %t71, i64 %t72)
  store ptr %t76, ptr %l48
  br label %bb8
bb8:
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l42
  %t81 = load i32, ptr %l43, !tbaa !23
  %t82 = load i32, ptr %l44, !range !{i32 0, i32 52}
  %t83 = load ptr, ptr %l48, !tbaa !29
  %t85 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %t79, %"compiler/source:Span" %t80, i32 %t81, i32 %t82, ptr %t83, ptr %a2)
  store ptr %t85, ptr %l51
  br label %bb9
bb9:
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load ptr, ptr %l39, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l40
  %t89 = load ptr, ptr %l51, !tbaa !29
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v0, ptr %v0, ptr %t87, %"compiler/source:Span" %t88, ptr %t89, i64 %t86)
  store ptr %t91, ptr %l53
  br label %bb10
bb10:
  %t92 = load ptr, ptr %l38, !tbaa !29
  %t93 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t92, ptr %t93)
  br label %bb11
bb11:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t96 = load i64, ptr %l8, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t100 = insertvalue { i64, i64, i64, i64, i64 } undef, i64 %t94, 0
  %t102 = insertvalue { i64, i64, i64, i64, i64 } %t100, i64 %t95, 1
  %t104 = insertvalue { i64, i64, i64, i64, i64 } %t102, i64 %t96, 2
  %t106 = insertvalue { i64, i64, i64, i64, i64 } %t104, i64 %t97, 3
  %t108 = insertvalue { i64, i64, i64, i64, i64 } %t106, i64 %t98, 4
  store { i64, i64, i64, i64, i64 } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64, i64, i64, i64 }, ptr %rv
  ret { i64, i64, i64, i64, i64 } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistHoldsWritable(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l28 = alloca i1
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
  br label %bb14
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
  %t40 = add i64 %a2, 1
  %t44 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %t36, i32 %t37, i64 %t40)
  store i1 %t44, ptr %l28
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t45 = load i1, ptr %l28, !tbaa !21
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l4, !tbaa !24
  br label %bb2
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItem(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/check:reflList"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l15 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i64
  %l32 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/check:reflList" %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t3 = load %"compiler/check:reflList", ptr %l2
  %t7 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %s0, ptr %t1, %"compiler/source:Span" %t2, %"compiler/check:reflList" %t3)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t28 = icmp sge i64 %t22, %t25
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t32, ptr %l21
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexRange(ptr %v0, i64 %t33, i64 %t36)
  store %"compiler/diagmsg:Msg" %t39, ptr %l25
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l21
  %t42 = load %"compiler/diagmsg:Msg", ptr %l25
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t40, %"compiler/source:Span" %t41, %"compiler/diagmsg:Msg" %t42)
  store i64 %t43, ptr %l26
  br label %bb11
bb11:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t44, ptr %rv
  br label %ret
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load %"compiler/check:reflList", ptr %l2
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i64, ptr %t51, i64 %t48
  %t53 = load i64, ptr %t52, !tbaa !34
  %t57 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %t46, %"compiler/check:reflList" %t47, i64 %t53)
  store i32 %t57, ptr %l32
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load i32, ptr %l32, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i1
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i32
  %l50 = alloca ptr
  %l52 = alloca i1
  %l55 = alloca i64
  %l57 = alloca i1
  %l60 = alloca i1
  %l63 = alloca { i64, ptr }
  %l66 = alloca i64
  %l68 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i32
  %l75 = alloca i64
  %l77 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l82 = alloca i1
  %l89 = alloca ptr
  %l94 = alloca ptr
  %l97 = alloca i32
  %l99 = alloca i64
  %l103 = alloca ptr
  %l106 = alloca i32
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca i64
  %l113 = alloca i64
  %l116 = alloca i1
  %l119 = alloca { i64, ptr }
  %l120 = alloca i1
  %l121 = alloca i1
  %l122 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca i1
  %l133 = alloca ptr
  %l136 = alloca i1
  %l139 = alloca ptr
  %l142 = alloca i32
  %l143 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l149 = alloca %"compiler/source:Span"
  %l152 = alloca { i64, ptr }
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l155 = alloca i64
  %l160 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l176 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l179 = alloca i1
  %l181 = alloca i1
  %l185 = alloca i64
  %l187 = alloca ptr
  %l191 = alloca ptr
  %l192 = alloca %"compiler/source:Span"
  %l195 = alloca { i64, ptr }
  %l197 = alloca %"compiler/diagmsg:Msg"
  %l198 = alloca i64
  %l199 = alloca ptr
  %l200 = alloca %"compiler/source:Span"
  %l201 = alloca %"compiler/source:Span"
  %l202 = alloca i64
  %l204 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l210 = alloca ptr
  %l213 = alloca { i64, ptr }
  %l215 = alloca i1
  %l216 = alloca i1
  %l220 = alloca i1
  %l222 = alloca i1
  %l223 = alloca i1
  %l227 = alloca i1
  %l229 = alloca ptr
  %l231 = alloca ptr
  %l234 = alloca i1
  %l237 = alloca ptr
  %l240 = alloca i32
  %l241 = alloca i32
  %l244 = alloca i1
  %l254 = alloca ptr
  %l256 = alloca ptr
  %l259 = alloca i32
  %l261 = alloca i64
  %l265 = alloca ptr
  %l268 = alloca i32
  %l270 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l272 = alloca i64
  %l274 = alloca ptr
  %l275 = alloca %"compiler/source:Span"
  %l276 = alloca ptr
  %l279 = alloca i32
  %l280 = alloca { i64, ptr }
  %l281 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l286 = alloca %"compiler/diagmsg:Msg"
  %l287 = alloca i64
  %l292 = alloca ptr
  %l294 = alloca i64
  %l297 = alloca i64
  %l300 = alloca i1
  %l303 = alloca i1
  %l304 = alloca i1
  %l309 = alloca i1
  %l310 = alloca i1
  %l313 = alloca ptr
  %l315 = alloca %"compiler/source:Span"
  %l316 = alloca ptr
  %l318 = alloca %"compiler/source:Span"
  %l319 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l323 = alloca { i64, ptr }
  %l324 = alloca ptr
  %l326 = alloca %"compiler/source:Span"
  %l327 = alloca { i64, ptr }
  %l328 = alloca { i64, ptr }
  %l329 = alloca i64
  %l330 = alloca { i64, ptr }
  %l332 = alloca %"compiler/diagmsg:Msg"
  %l333 = alloca i64
  %l338 = alloca i32
  %l341 = alloca i1
  %l343 = alloca i1
  %l344 = alloca i1
  %l348 = alloca i1
  %l351 = alloca i32
  %l354 = alloca ptr
  %l355 = alloca %"compiler/source:Span"
  %l357 = alloca i32
  %l360 = alloca ptr
  %l363 = alloca i1
  %l366 = alloca i32
  %l369 = alloca i1
  %l370 = alloca ptr
  %l373 = alloca i32
  %l374 = alloca i1
  %l379 = alloca ptr
  %l382 = alloca i1
  %l384 = alloca i1
  %l386 = alloca i1
  %l387 = alloca ptr
  %l390 = alloca i32
  %l391 = alloca i1
  %l392 = alloca i1
  %l393 = alloca ptr
  %l396 = alloca i32
  %l397 = alloca i1
  %l398 = alloca i1
  %l400 = alloca ptr
  %l403 = alloca i32
  %l404 = alloca i1
  %l406 = alloca i1
  %l407 = alloca ptr
  %l410 = alloca i32
  %l412 = alloca i1
  %l413 = alloca ptr
  %l414 = alloca %"compiler/source:Span"
  %l415 = alloca ptr
  %l418 = alloca i32
  %l419 = alloca { i64, ptr }
  %l420 = alloca { i64, ptr }
  %l423 = alloca { i64, ptr }
  %l425 = alloca %"compiler/diagmsg:Msg"
  %l426 = alloca i64
  %l431 = alloca ptr
  %l441 = alloca ptr
  %l448 = alloca i32
  %l451 = alloca i1
  %l452 = alloca i1
  %l456 = alloca i64
  %l459 = alloca ptr
  %l463 = alloca %"compiler/source:Span"
  %l464 = alloca i32
  %l465 = alloca ptr
  %l466 = alloca ptr
  %l467 = alloca i32
  %l469 = alloca %"compiler/source:Span"
  %l470 = alloca i32
  %l473 = alloca ptr
  %l474 = alloca %"compiler/source:Span"
  %l475 = alloca %"compiler/source:Span"
  %l480 = alloca ptr
  %l484 = alloca ptr
  %l485 = alloca %"compiler/source:Span"
  %l486 = alloca %"compiler/source:Span"
  %l487 = alloca ptr
  %l489 = alloca %"compiler/source:Span"
  %l492 = alloca %"compiler/source:Span"
  %l494 = alloca ptr
  %l496 = alloca ptr
  %l499 = alloca i1
  %l500 = alloca i1
  %l503 = alloca i32
  %l510 = alloca ptr
  %l512 = alloca i1
  %l513 = alloca i1
  %l515 = alloca i1
  %l518 = alloca i32
  %l520 = alloca i32
  %l522 = alloca i1
  %l524 = alloca i1
  %l525 = alloca i1
  %l527 = alloca i1
  %l528 = alloca ptr
  %l529 = alloca %"compiler/source:Span"
  %l532 = alloca { i64, ptr }
  %l535 = alloca %"compiler/diagmsg:Msg"
  %l536 = alloca i64
  %l537 = alloca ptr
  %l538 = alloca %"compiler/source:Span"
  %l539 = alloca i32
  %l542 = alloca { i64, ptr }
  %l544 = alloca { i64, ptr }
  %l547 = alloca { i64, ptr }
  %l548 = alloca { i64, ptr }
  %l551 = alloca { i64, ptr }
  %l552 = alloca { i64, ptr }
  %l556 = alloca { i64, ptr }
  %l558 = alloca %"compiler/diagmsg:Msg"
  %l559 = alloca i64
  %l564 = alloca ptr
  %l565 = alloca { i64, ptr }
  %l567 = alloca i1
  %l569 = alloca i1
  %l573 = alloca i64
  %l575 = alloca ptr
  %l579 = alloca ptr
  %l580 = alloca %"compiler/source:Span"
  %l583 = alloca { i64, ptr }
  %l585 = alloca %"compiler/diagmsg:Msg"
  %l586 = alloca i64
  %l587 = alloca ptr
  %l588 = alloca %"compiler/source:Span"
  %l589 = alloca ptr
  %l590 = alloca %"compiler/source:Span"
  %l591 = alloca %"compiler/source:Span"
  %l592 = alloca i64
  %l594 = alloca ptr
  %l595 = alloca { i64, ptr }
  %l598 = alloca { i64, ptr }
  %l602 = alloca ptr
  %l603 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %rv = alloca ptr
  %t916 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t11, ptr %l29
  br label %bb3
bb2:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb5
bb3:
  %t12 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t17 = call i1 @compiler_2fcheck_2elaneMethodName(ptr %v0, { i64, ptr } %t15, i64 %t14)
  store i1 %t17, ptr %l32
  br label %bb4
bb4:
  %t18 = load i1, ptr %l32, !tbaa !21
  store i1 %t18, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l26, !tbaa !21
  store i1 %t19, ptr %l8, !tbaa !21
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i1, ptr %l8, !tbaa !21
  %t24 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 40
  store i1 %t21, ptr %t24, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v4, ptr %t25, ptr %t26, i32 %t28)
  store ptr %t32, ptr %l39
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l39, !tbaa !29
  store ptr %t33, ptr %l9, !tbaa !29
  %t34 = load ptr, ptr %l9, !tbaa !29
  %t37 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t34)
  store i32 %t37, ptr %l42
  br label %bb7
bb7:
  %t38 = load i32, ptr %l42, !tbaa !23
  store i32 %t38, ptr %l10, !tbaa !23
  %t39 = load i32, ptr %l10, !tbaa !23
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t43 = icmp eq i32 %t39, %t40
  br i1 %t43, label %bb8, label %bb9
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t45, { i64, ptr } %t46)
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l1
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t49, %"compiler/source:Span" %t50)
  store ptr %t53, ptr %l50
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load ptr, ptr %l50, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb12:
  %t55 = load i1, ptr %l8, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l9, !tbaa !29
  %t61 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v4, ptr %t57, ptr %t58)
  store i64 %t61, ptr %l55
  br label %bb15
bb14:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb20
bb15:
  %t62 = load i64, ptr %l55, !tbaa !24
  %t63 = icmp sge i64 %t62, 0
  br i1 %t63, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb19
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l10, !tbaa !23
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t65, i32 %t66)
  store i1 %t69, ptr %l60
  br label %bb18
bb18:
  %t70 = load i1, ptr %l60, !tbaa !21
  store i1 %t70, ptr %l57, !tbaa !21
  br label %bb19
bb19:
  %t71 = load i1, ptr %l57, !tbaa !21
  store i1 %t71, ptr %l52, !tbaa !21
  br label %bb20
bb20:
  %t72 = load i1, ptr %l52, !tbaa !21
  br i1 %t72, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s2
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l3, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v4, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l63
  br label %bb23
bb22:
  br label %bb42
bb23:
  %t78 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t78, ptr %l11, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l9, !tbaa !29
  %t83 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v4, ptr %t79, ptr %t80)
  store i64 %t83, ptr %l66
  br label %bb24
bb24:
  %t84 = load i64, ptr %l66, !tbaa !24
  %t85 = icmp sge i64 %t84, 0
  br i1 %t85, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb29
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  store ptr %t90, ptr %l70, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l10, !tbaa !23
  %t95 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l73
  br label %bb27
bb27:
  %t96 = load i32, ptr %l3, !tbaa !23
  %t97 = load ptr, ptr %l70, !tbaa !29
  %t98 = load i32, ptr %l73, !tbaa !23
  %t100 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t97, i32 %t98, i32 %t96)
  store i64 %t100, ptr %l75
  br label %bb28
bb28:
  %t101 = load i64, ptr %l75, !tbaa !24
  %t102 = icmp slt i64 %t101, 0
  store i1 %t102, ptr %l68, !tbaa !21
  br label %bb29
bb29:
  %t104 = load i1, ptr %l68, !tbaa !21
  br i1 %t104, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb33
bb31:
  %t105 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s2, { i64, ptr } %t105, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t107, ptr %l79
  br label %bb32
bb32:
  %t108 = load i1, ptr %l79, !tbaa !21
  store i1 %t108, ptr %l77, !tbaa !21
  br label %bb33
bb33:
  %t109 = load i1, ptr %l77, !tbaa !21
  br i1 %t109, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb37
bb35:
  %t110 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t112 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s2, { i64, ptr } %t110, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t112, ptr %l82
  br label %bb36
bb36:
  %t113 = load i1, ptr %l82, !tbaa !21
  store i1 %t113, ptr %l80, !tbaa !21
  br label %bb37
bb37:
  %t114 = load i1, ptr %l80, !tbaa !21
  br i1 %t114, label %bb38, label %bb39
bb38:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  %t117 = load %"compiler/source:Span", ptr %l4
  %t118 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t119 = load ptr, ptr %l9, !tbaa !29
  %t120 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethod(ptr %v0, ptr %v4, ptr %v4, ptr %v2, ptr %v4, ptr %t115, %"compiler/source:Span" %t116, %"compiler/source:Span" %t117, { i64, ptr } %t118, ptr %t119, { i64, ptr } %t120)
  store ptr %t127, ptr %l89
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t128 = load ptr, ptr %l89, !tbaa !29
  store ptr %t128, ptr %rv
  br label %ret
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t129 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t133 = icmp sgt i64 %t131, 0
  br i1 %t133, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s4
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/check:Checker", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  store ptr %t138, ptr %l94, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load i32, ptr %l10, !tbaa !23
  %t143 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l97
  br label %bb45
bb44:
  br label %bb109
bb45:
  %t144 = load i32, ptr %l3, !tbaa !23
  %t145 = load ptr, ptr %l94, !tbaa !29
  %t146 = load i32, ptr %l97, !tbaa !23
  %t148 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t145, i32 %t146, i32 %t144)
  store i64 %t148, ptr %l99
  br label %bb46
bb46:
  %t149 = load i64, ptr %l99, !tbaa !24
  store i64 %t149, ptr %l12, !tbaa !24
  %t150 = load i64, ptr %l12, !tbaa !24
  %t152 = icmp slt i64 %t150, 0
  br i1 %t152, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s5
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  store ptr %t157, ptr %l103, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l10, !tbaa !23
  %t162 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l106
  br label %bb49
bb48:
  br label %bb56
bb49:
  %t163 = load i32, ptr %l3, !tbaa !23
  %t164 = load ptr, ptr %l103, !tbaa !29
  %t165 = load i32, ptr %l106, !tbaa !23
  %t167 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %s5, ptr %t164, i32 %t165, i32 %t163)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t167, ptr %l108
  br label %bb50
bb50:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l13
  %t170 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s5, ptr %l13)
  store i64 %t170, ptr %l110
  br label %bb51
bb51:
  %t171 = load i64, ptr %l110, !tbaa !24
  %t172 = icmp eq i64 %t171, 1
  br i1 %t172, label %bb52, label %bb53
bb52:
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s5, ptr %l13, i64 0)
  store i64 %t175, ptr %l113
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t176 = load i64, ptr %l113, !tbaa !24
  store i64 %t176, ptr %l12, !tbaa !24
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s5)
  br label %bb56
bb56:
  %t177 = load i64, ptr %l12, !tbaa !24
  %t179 = icmp slt i64 %t177, 0
  br i1 %t179, label %bb57, label %bb58
bb57:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l3, !tbaa !23
  %t185 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t181, i32 %t182)
  store { i64, ptr } %t185, ptr %l119
  br label %bb59
bb58:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb61
bb59:
  %t186 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t186, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t187, ptr %l120
  br label %bb60
bb60:
  %t188 = load i1, ptr %l120, !tbaa !21
  store i1 %t188, ptr %l116, !tbaa !21
  br label %bb61
bb61:
  %t189 = load i1, ptr %l116, !tbaa !21
  br i1 %t189, label %bb62, label %bb63
bb62:
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l122, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i32, ptr %l10, !tbaa !23
  %t195 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t191, i32 %t192)
  store i32 %t195, ptr %l125
  br label %bb64
bb63:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb66
bb64:
  %t196 = load ptr, ptr %l122, !tbaa !29
  %t197 = load i32, ptr %l125, !tbaa !23
  %t198 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t196, i32 %t197)
  store i1 %t198, ptr %l126
  br label %bb65
bb65:
  %t199 = load i1, ptr %l126, !tbaa !21
  store i1 %t199, ptr %l121, !tbaa !21
  br label %bb66
bb66:
  %t200 = load i1, ptr %l121, !tbaa !21
  br i1 %t200, label %bb67, label %bb68
bb67:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l1
  %t203 = load %"compiler/source:Span", ptr %l4
  %t204 = load ptr, ptr %l9, !tbaa !29
  %t205 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t213 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCall(ptr %v0, ptr %v4, ptr %v3, ptr %v2, ptr %v4, ptr %t201, %"compiler/source:Span" %t202, %"compiler/source:Span" %t203, ptr %t204, { i64, ptr } %t205, { i64, ptr } %t206)
  store ptr %t213, ptr %l133
  br label %bb69
bb68:
  br label %bb70
bb69:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t214 = load ptr, ptr %l133, !tbaa !29
  store ptr %t214, ptr %rv
  br label %ret
bb70:
  %t215 = load i64, ptr %l12, !tbaa !24
  %t217 = icmp slt i64 %t215, 0
  br i1 %t217, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb75
bb72:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Program", ptr %t222, i32 0, i32 2
  store ptr %t224, ptr %l139, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i32, ptr %l10, !tbaa !23
  %t229 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t225, i32 %t226)
  store i32 %t229, ptr %l142
  br label %bb73
bb73:
  %t230 = load ptr, ptr %l139, !tbaa !29
  %t231 = load i32, ptr %l142, !tbaa !23
  %t232 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t230, i32 %t231)
  store i32 %t232, ptr %l143
  br label %bb74
bb74:
  %t233 = load i32, ptr %l143, !range !{i32 0, i32 33}
  %t235 = trunc i64 29 to i32
  %t236 = icmp eq i32 %t233, %t235
  store i1 %t236, ptr %l136, !tbaa !21
  br label %bb75
bb75:
  %t238 = load i1, ptr %l136, !tbaa !21
  br i1 %t238, label %bb76, label %bb77
bb76:
  %t239 = load ptr, ptr %l0, !tbaa !29
  store ptr %t239, ptr %l146, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t240, ptr %l147, !tbaa !27
  %t241 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr ptr, ptr %t242, i64 0
  %t244 = load ptr, ptr %t243, !tbaa !39
  %t246 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v3, ptr %t244)
  store %"compiler/source:Span" %t246, ptr %l149
  br label %bb78
bb77:
  br label %bb84
bb78:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i32, ptr %l3, !tbaa !23
  %t251 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t247, i32 %t248)
  store { i64, ptr } %t251, ptr %l152
  br label %bb79
bb79:
  %t252 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  %t254 = extractvalue { i64, ptr } %t252, 1
  %t255 = mul i64 %t253, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t256, ptr %t254, i64 %t255, i1 false)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  %t260 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsOnNonGeneric(ptr %v0, ptr %v0, { i64, ptr } %t258)
  store %"compiler/diagmsg:Msg" %t260, ptr %l154
  br label %bb80
bb80:
  %t261 = load ptr, ptr %l146, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l149
  %t263 = load %"compiler/diagmsg:Msg", ptr %l154
  %t264 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t261, %"compiler/source:Span" %t262, %"compiler/diagmsg:Msg" %t263)
  store i64 %t264, ptr %l155
  br label %bb81
bb81:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t265, { i64, ptr } %t266)
  br label %bb82
bb82:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load %"compiler/source:Span", ptr %l1
  %t273 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t269, %"compiler/source:Span" %t270)
  store ptr %t273, ptr %l160
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t274 = load ptr, ptr %l160, !tbaa !29
  store ptr %t274, ptr %rv
  br label %ret
bb84:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load i64, ptr %l12, !tbaa !24
  %t277 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t283 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v3, ptr %v4, ptr %t275, i64 %t276, { i64, ptr } %t277, %"compiler/source:Span" %a7)
  store { i64, ptr } %t283, ptr %l165
  br label %bb85
bb85:
  %t284 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t284, ptr %l14, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t285, 0
  %t289 = icmp eq i64 %t287, 0
  br i1 %t289, label %bb86, label %bb87
bb86:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t291, { i64, ptr } %t292)
  br label %bb88
bb87:
  br label %bb90
bb88:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load %"compiler/source:Span", ptr %l1
  %t299 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t295, %"compiler/source:Span" %t296)
  store ptr %t299, ptr %l173
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t300 = load ptr, ptr %l173, !tbaa !29
  store ptr %t300, ptr %rv
  br label %ret
bb90:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i32, ptr %l3, !tbaa !23
  %t305 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s4, ptr %t301, i32 %t302)
  store { i64, ptr } %t305, ptr %l176
  br label %bb91
bb91:
  %t306 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t306, ptr %l177, !tbaa !27
  %t307 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i8, ptr %t308, i64 0
  %t310 = load i8, ptr %t309, !tbaa !32
  %t312 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t310)
  store i1 %t312, ptr %l179
  br label %bb92
bb92:
  %t313 = load i1, ptr %l179, !tbaa !21
  %t314 = xor i1 %t313, true
  br i1 %t314, label %bb93, label %bb94
bb93:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/check:Checker", ptr %t316, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !29
  %t320 = load i64, ptr %l12, !tbaa !24
  %t323 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t319, i64 %t320)
  store i64 %t323, ptr %l185
  br label %bb95
bb94:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb97
bb95:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t324)
  store ptr %t326, ptr %l187
  br label %bb96
bb96:
  %t327 = load ptr, ptr %l187, !tbaa !29
  %t329 = getelementptr %"compiler/check:frame", ptr %t327, i32 0, i32 1
  %t330 = load i64, ptr %t329, !tbaa !24
  %t331 = load i64, ptr %l185, !tbaa !24
  %t333 = icmp ne i64 %t331, %t330
  store i1 %t333, ptr %l181, !tbaa !21
  br label %bb97
bb97:
  %t335 = load i1, ptr %l181, !tbaa !21
  br i1 %t335, label %bb98, label %bb99
bb98:
  %t336 = load ptr, ptr %l0, !tbaa !29
  store ptr %t336, ptr %l191, !tbaa !29
  %t337 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t337, ptr %l192
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l3, !tbaa !23
  %t342 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t338, i32 %t339)
  store { i64, ptr } %t342, ptr %l195
  br label %bb100
bb99:
  br label %bb103
bb100:
  %t343 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  %t345 = extractvalue { i64, ptr } %t343, 1
  %t346 = mul i64 %t344, 1
  %t347 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t346)
  call void @llvm.memcpy.p0.p0.i64(ptr %t347, ptr %t345, i64 %t346, i1 false)
  %t348 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t347, 1
  %t351 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodIsPrivate(ptr %v0, ptr %v0, { i64, ptr } %t349)
  store %"compiler/diagmsg:Msg" %t351, ptr %l197
  br label %bb101
bb101:
  %t352 = load ptr, ptr %l191, !tbaa !29
  %t353 = load %"compiler/source:Span", ptr %l192
  %t354 = load %"compiler/diagmsg:Msg", ptr %l197
  %t355 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t352, %"compiler/source:Span" %t353, %"compiler/diagmsg:Msg" %t354)
  store i64 %t355, ptr %l198
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t356, ptr %l199, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t357, ptr %l200
  %t358 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t358, ptr %l201
  %t359 = load i64, ptr %l12, !tbaa !24
  store i64 %t359, ptr %l202, !tbaa !24
  %t360 = load ptr, ptr %l9, !tbaa !29
  store ptr %t360, ptr %l204, !tbaa !29
  %t362 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t362, ptr %l205, !tbaa !27
  %t363 = icmp sge i64 0, 0
  br i1 %t363, label %bb104, label %bb105
bb104:
  %t365 = icmp sle i64 0, 1152921504606846975
  br i1 %t365, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_d23330c3ef7ea91b_34477ea00961dc87)
  unreachable
bb106:
  %t367 = mul i64 0, 8
  %t368 = insertvalue { i64, ptr } undef, i64 0, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t370 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t371 = load ptr, ptr %l199, !tbaa !29
  %t372 = load %"compiler/source:Span", ptr %l200
  %t373 = load %"compiler/source:Span", ptr %l201
  %t374 = load i64, ptr %l202, !tbaa !24
  %t375 = load ptr, ptr %l204, !tbaa !29
  %t376 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t379 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v4, ptr %v2, ptr %v0, ptr %v4, ptr %v4, ptr %t371, %"compiler/source:Span" %t372, %"compiler/source:Span" %t373, i64 %t374, ptr %t375, { i64, ptr } %t376, { i64, ptr } %t369, { i64, ptr } %t370)
  store ptr %t379, ptr %l210
  br label %bb108
bb107:
  call void @__olang_check_failed(ptr @olang_loc_d23330c3ef7ea91b_34477ea00961dc87)
  unreachable
bb108:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t380 = load ptr, ptr %l210, !tbaa !29
  store ptr %t380, ptr %rv
  br label %ret
bb109:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i32, ptr %l3, !tbaa !23
  %t385 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v4, ptr %t381, i32 %t382)
  store { i64, ptr } %t385, ptr %l213
  br label %bb110
bb110:
  %t386 = load { i64, ptr }, ptr %l213, !tbaa !27
  store { i64, ptr } %t386, ptr %l15, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t389 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t387, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t389, ptr %l215
  br label %bb111
bb111:
  %t390 = load i1, ptr %l215, !tbaa !21
  br i1 %t390, label %bb112, label %bb113
bb112:
  %t391 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t391, 0
  %t395 = icmp eq i64 %t393, 0
  store i1 %t395, ptr %l216, !tbaa !21
  br label %bb114
bb113:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb114
bb114:
  %t397 = load i1, ptr %l216, !tbaa !21
  br i1 %t397, label %bb115, label %bb116
bb115:
  store i1 true, ptr %l220, !tbaa !21
  br label %bb121
bb116:
  %t398 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t400 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t398, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t400, ptr %l222
  br label %bb117
bb117:
  %t401 = load i1, ptr %l222, !tbaa !21
  br i1 %t401, label %bb118, label %bb119
bb118:
  %t402 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t404 = extractvalue { i64, ptr } %t402, 0
  %t406 = icmp eq i64 %t404, 1
  store i1 %t406, ptr %l223, !tbaa !21
  br label %bb120
bb119:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb120
bb120:
  %t408 = load i1, ptr %l223, !tbaa !21
  store i1 %t408, ptr %l220, !tbaa !21
  br label %bb121
bb121:
  %t409 = load i1, ptr %l220, !tbaa !21
  br i1 %t409, label %bb122, label %bb123
bb122:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/check:Checker", ptr %t410, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !29
  store ptr %t413, ptr %l229, !tbaa !29
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t414)
  store ptr %t416, ptr %l231
  br label %bb124
bb123:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb126
bb124:
  %t417 = load ptr, ptr %l231, !tbaa !29
  %t419 = getelementptr %"compiler/check:frame", ptr %t417, i32 0, i32 1
  %t420 = load i64, ptr %t419, !tbaa !24
  %t421 = load ptr, ptr %l229, !tbaa !29
  %t423 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %t421, i64 %t420)
  store i1 %t423, ptr %l234
  br label %bb125
bb125:
  %t424 = load i1, ptr %l234, !tbaa !21
  store i1 %t424, ptr %l227, !tbaa !21
  br label %bb126
bb126:
  %t425 = load i1, ptr %l227, !tbaa !21
  store i1 %t425, ptr %l16, !tbaa !21
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/check:Checker", ptr %t426, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t431 = getelementptr %"compiler/generic:Program", ptr %t429, i32 0, i32 2
  store ptr %t431, ptr %l237, !tbaa !29
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t433 = load i32, ptr %l10, !tbaa !23
  %t436 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l240
  br label %bb127
bb127:
  %t437 = load ptr, ptr %l237, !tbaa !29
  %t438 = load i32, ptr %l240, !tbaa !23
  %t439 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t437, i32 %t438)
  store i32 %t439, ptr %l241
  br label %bb128
bb128:
  %t440 = load i32, ptr %l241, !range !{i32 0, i32 33}
  %t442 = trunc i64 29 to i32
  %t443 = icmp eq i32 %t440, %t442
  br i1 %t443, label %bb129, label %bb130
bb129:
  %t445 = load i1, ptr %l16, !tbaa !21
  %t447 = xor i1 %t445, true
  store i1 %t447, ptr %l244, !tbaa !21
  br label %bb131
bb130:
  store i1 false, ptr %l244, !tbaa !21
  br label %bb131
bb131:
  %t449 = load i1, ptr %l244, !tbaa !21
  br i1 %t449, label %bb132, label %bb133
bb132:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load %"compiler/source:Span", ptr %l1
  %t452 = load ptr, ptr %l2, !tbaa !29
  %t453 = load ptr, ptr %l9, !tbaa !29
  %t454 = load i32, ptr %l3, !tbaa !23
  %t455 = load %"compiler/source:Span", ptr %l4
  %t456 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t464 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCall(ptr %v0, ptr %v1, ptr %v4, ptr %v2, ptr %v4, ptr %t450, %"compiler/source:Span" %t451, ptr %t452, ptr %t453, i32 %t454, %"compiler/source:Span" %t455, { i64, ptr } %t456)
  store ptr %t464, ptr %l254
  br label %bb134
bb133:
  br label %bb135
bb134:
  call void @__olang_scope_close(ptr %s0)
  %t465 = load ptr, ptr %l254, !tbaa !29
  store ptr %t465, ptr %rv
  br label %ret
bb135:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = getelementptr %"compiler/check:Checker", ptr %t466, i32 0, i32 1
  %t469 = load ptr, ptr %t468, !tbaa !29
  store ptr %t469, ptr %l256, !tbaa !29
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i32, ptr %l10, !tbaa !23
  %t474 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t470, i32 %t471)
  store i32 %t474, ptr %l259
  br label %bb136
bb136:
  %t475 = load i32, ptr %l3, !tbaa !23
  %t476 = load ptr, ptr %l256, !tbaa !29
  %t477 = load i32, ptr %l259, !tbaa !23
  %t479 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t476, i32 %t477, i32 %t475)
  store i64 %t479, ptr %l261
  br label %bb137
bb137:
  %t480 = load i64, ptr %l261, !tbaa !24
  store i64 %t480, ptr %l17, !tbaa !24
  %t481 = load i64, ptr %l17, !tbaa !24
  %t483 = icmp slt i64 %t481, 0
  br i1 %t483, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s12
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/check:Checker", ptr %t485, i32 0, i32 1
  %t488 = load ptr, ptr %t487, !tbaa !29
  store ptr %t488, ptr %l265, !tbaa !29
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i32, ptr %l10, !tbaa !23
  %t493 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t489, i32 %t490)
  store i32 %t493, ptr %l268
  br label %bb140
bb139:
  br label %bb158
bb140:
  %t494 = load i32, ptr %l3, !tbaa !23
  %t495 = load ptr, ptr %l265, !tbaa !29
  %t496 = load i32, ptr %l268, !tbaa !23
  %t498 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %s12, ptr %t495, i32 %t496, i32 %t494)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t498, ptr %l270
  br label %bb141
bb141:
  %t499 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l270
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t499, ptr %l18
  %t501 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s12, ptr %l18)
  store i64 %t501, ptr %l272
  br label %bb142
bb142:
  %t502 = load i64, ptr %l272, !tbaa !24
  %t503 = icmp sgt i64 %t502, 1
  br i1 %t503, label %bb143, label %bb144
bb143:
  %t505 = load ptr, ptr %l0, !tbaa !29
  store ptr %t505, ptr %l274, !tbaa !29
  %t506 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t506, ptr %l275
  %t507 = load ptr, ptr %l0, !tbaa !29
  store ptr %t507, ptr %l276, !tbaa !29
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load i32, ptr %l10, !tbaa !23
  %t512 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t508, i32 %t509)
  store i32 %t512, ptr %l279
  br label %bb145
bb144:
  br label %bb152
bb145:
  %t513 = load ptr, ptr %l276, !tbaa !29
  %t514 = load i32, ptr %l279, !tbaa !23
  %t515 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t513, i32 %t514)
  store { i64, ptr } %t515, ptr %l280
  br label %bb146
bb146:
  %t516 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t517 = extractvalue { i64, ptr } %t516, 0
  %t518 = extractvalue { i64, ptr } %t516, 1
  %t519 = mul i64 %t517, 1
  %t520 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t519)
  call void @llvm.memcpy.p0.p0.i64(ptr %t520, ptr %t518, i64 %t519, i1 false)
  %t521 = insertvalue { i64, ptr } undef, i64 %t517, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t520, 1
  store { i64, ptr } %t522, ptr %l281, !tbaa !27
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t524 = load i32, ptr %l3, !tbaa !23
  %t527 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t523, i32 %t524)
  store { i64, ptr } %t527, ptr %l284
  br label %bb147
bb147:
  %t528 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 0
  %t530 = extractvalue { i64, ptr } %t528, 1
  %t531 = mul i64 %t529, 1
  %t532 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  %t535 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t537 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultAmbiguous(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t535, { i64, ptr } %t534)
  store %"compiler/diagmsg:Msg" %t537, ptr %l286
  br label %bb148
bb148:
  %t538 = load ptr, ptr %l274, !tbaa !29
  %t539 = load %"compiler/source:Span", ptr %l275
  %t540 = load %"compiler/diagmsg:Msg", ptr %l286
  %t541 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t538, %"compiler/source:Span" %t539, %"compiler/diagmsg:Msg" %t540)
  store i64 %t541, ptr %l287
  br label %bb149
bb149:
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t543 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t542, { i64, ptr } %t543)
  br label %bb150
bb150:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load %"compiler/source:Span", ptr %l1
  %t550 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t546, %"compiler/source:Span" %t547)
  store ptr %t550, ptr %l292
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t551 = load ptr, ptr %l292, !tbaa !29
  store ptr %t551, ptr %rv
  br label %ret
bb152:
  %t553 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s12, ptr %l18)
  store i64 %t553, ptr %l294
  br label %bb153
bb153:
  %t554 = load i64, ptr %l294, !tbaa !24
  %t555 = icmp eq i64 %t554, 1
  br i1 %t555, label %bb154, label %bb155
bb154:
  %t558 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s12, ptr %l18, i64 0)
  store i64 %t558, ptr %l297
  br label %bb156
bb155:
  br label %bb157
bb156:
  %t559 = load i64, ptr %l297, !tbaa !24
  store i64 %t559, ptr %l17, !tbaa !24
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s12)
  br label %bb158
bb158:
  %t560 = load i64, ptr %l17, !tbaa !24
  %t562 = icmp slt i64 %t560, 0
  br i1 %t562, label %bb159, label %bb160
bb159:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load i32, ptr %l10, !tbaa !23
  %t568 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t564, i32 %t565)
  store i1 %t568, ptr %l303
  br label %bb161
bb160:
  store i1 false, ptr %l300, !tbaa !21
  br label %bb162
bb161:
  %t569 = load i1, ptr %l303, !tbaa !21
  store i1 %t569, ptr %l300, !tbaa !21
  br label %bb162
bb162:
  %t570 = load i1, ptr %l300, !tbaa !21
  br i1 %t570, label %bb163, label %bb164
bb163:
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t573 = getelementptr %"compiler/check:Checker", ptr %t571, i32 0, i32 1
  %t574 = load ptr, ptr %t573, !tbaa !29
  %t576 = getelementptr %"compiler/generic:Program", ptr %t574, i32 0, i32 2
  %t577 = load i32, ptr %l10, !tbaa !23
  %t580 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t576, i32 %t577)
  store i1 %t580, ptr %l309
  br label %bb165
bb164:
  store i1 false, ptr %l304, !tbaa !21
  br label %bb166
bb165:
  %t581 = load i1, ptr %l309, !tbaa !21
  store i1 %t581, ptr %l304, !tbaa !21
  br label %bb166
bb166:
  %t582 = load i1, ptr %l304, !tbaa !21
  br i1 %t582, label %bb167, label %bb168
bb167:
  %t583 = load i1, ptr %l16, !tbaa !21
  %t585 = xor i1 %t583, true
  store i1 %t585, ptr %l310, !tbaa !21
  br label %bb169
bb168:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb169
bb169:
  %t587 = load i1, ptr %l310, !tbaa !21
  br i1 %t587, label %bb170, label %bb171
bb170:
  %t588 = load ptr, ptr %l0, !tbaa !29
  store ptr %t588, ptr %l313, !tbaa !29
  %t589 = load ptr, ptr %l2, !tbaa !29
  %t591 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t589)
  store %"compiler/source:Span" %t591, ptr %l315
  br label %bb172
bb171:
  br label %bb182
bb172:
  %t592 = load ptr, ptr %l0, !tbaa !29
  store ptr %t592, ptr %l316, !tbaa !29
  %t593 = load ptr, ptr %l2, !tbaa !29
  %t595 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t593)
  store %"compiler/source:Span" %t595, ptr %l318
  br label %bb173
bb173:
  %t596 = load ptr, ptr %l316, !tbaa !29
  %t597 = load %"compiler/source:Span", ptr %l318
  %t598 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t596, %"compiler/source:Span" %t597)
  store { i64, ptr } %t598, ptr %l319
  br label %bb174
bb174:
  %t599 = load ptr, ptr %l0, !tbaa !29
  %t600 = load i32, ptr %l10, !tbaa !23
  %t603 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t599, i32 %t600)
  store { i64, ptr } %t603, ptr %l322
  br label %bb175
bb175:
  %t604 = load { i64, ptr }, ptr %l322, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t604, 0
  %t606 = extractvalue { i64, ptr } %t604, 1
  %t607 = mul i64 %t605, 1
  %t608 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t607)
  call void @llvm.memcpy.p0.p0.i64(ptr %t608, ptr %t606, i64 %t607, i1 false)
  %t609 = insertvalue { i64, ptr } undef, i64 %t605, 0
  %t610 = insertvalue { i64, ptr } %t609, ptr %t608, 1
  store { i64, ptr } %t610, ptr %l323, !tbaa !27
  %t611 = load ptr, ptr %l0, !tbaa !29
  store ptr %t611, ptr %l324, !tbaa !29
  %t612 = load ptr, ptr %l2, !tbaa !29
  %t614 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t612)
  store %"compiler/source:Span" %t614, ptr %l326
  br label %bb176
bb176:
  %t615 = load ptr, ptr %l324, !tbaa !29
  %t616 = load %"compiler/source:Span", ptr %l326
  %t617 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t615, %"compiler/source:Span" %t616)
  store { i64, ptr } %t617, ptr %l327
  br label %bb177
bb177:
  %t618 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t619 = call { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v0, { i64, ptr } %t618)
  store { i64, ptr } %t619, ptr %l328
  br label %bb178
bb178:
  %t620 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t620, 0
  store i64 %t621, ptr %l329, !tbaa !24
  %t622 = load i64, ptr %l329, !tbaa !24
  %t623 = mul i64 %t622, 1
  %t624 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t623)
  %t625 = insertvalue { i64, ptr } undef, i64 %t622, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t624, 1
  store { i64, ptr } %t626, ptr %l330, !tbaa !27
  %t627 = getelementptr { i64, ptr }, ptr %l330, i32 0, i32 1
  %t628 = load ptr, ptr %t627, !tbaa !27
  %t629 = getelementptr { i64, ptr }, ptr %l328, i32 0, i32 1
  %t630 = load ptr, ptr %t629, !tbaa !27
  %t631 = load i64, ptr %l329, !tbaa !24
  %t632 = mul i64 %t631, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t628, ptr %t630, i64 %t632, i1 false)
  %t633 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t634 = extractvalue { i64, ptr } %t633, 0
  %t635 = extractvalue { i64, ptr } %t633, 1
  %t636 = mul i64 %t634, 1
  %t637 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t636)
  call void @llvm.memcpy.p0.p0.i64(ptr %t637, ptr %t635, i64 %t636, i1 false)
  %t638 = insertvalue { i64, ptr } undef, i64 %t634, 0
  %t639 = insertvalue { i64, ptr } %t638, ptr %t637, 1
  %t640 = load { i64, ptr }, ptr %l319, !tbaa !27
  %t641 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t643 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t640, { i64, ptr } %t641, { i64, ptr } %t639)
  store %"compiler/diagmsg:Msg" %t643, ptr %l332
  br label %bb179
bb179:
  %t644 = load ptr, ptr %l313, !tbaa !29
  %t645 = load %"compiler/source:Span", ptr %l315
  %t646 = load %"compiler/diagmsg:Msg", ptr %l332
  %t647 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t644, %"compiler/source:Span" %t645, %"compiler/diagmsg:Msg" %t646)
  store i64 %t647, ptr %l333
  br label %bb180
bb180:
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t650 = getelementptr %"compiler/check:Checker", ptr %t648, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !29
  %t653 = getelementptr %"compiler/generic:Program", ptr %t651, i32 0, i32 2
  %t654 = load i32, ptr %l10, !tbaa !23
  %t657 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %t653, i32 %t654)
  store i32 %t657, ptr %l338
  br label %bb181
bb181:
  %t658 = load i32, ptr %l338, !tbaa !23
  store i32 %t658, ptr %l10, !tbaa !23
  br label %bb182
bb182:
  %t659 = load i64, ptr %l17, !tbaa !24
  %t661 = icmp slt i64 %t659, 0
  br i1 %t661, label %bb183, label %bb184
bb183:
  %t663 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t665 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t663, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t665, ptr %l343
  br label %bb185
bb184:
  store i1 false, ptr %l341, !tbaa !21
  br label %bb186
bb185:
  %t666 = load i1, ptr %l343, !tbaa !21
  store i1 %t666, ptr %l341, !tbaa !21
  br label %bb186
bb186:
  %t667 = load i1, ptr %l341, !tbaa !21
  br i1 %t667, label %bb187, label %bb188
bb187:
  %t668 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t670 = extractvalue { i64, ptr } %t668, 0
  %t672 = icmp eq i64 %t670, 0
  store i1 %t672, ptr %l344, !tbaa !21
  br label %bb189
bb188:
  store i1 false, ptr %l344, !tbaa !21
  br label %bb189
bb189:
  %t674 = load i1, ptr %l344, !tbaa !21
  br i1 %t674, label %bb190, label %bb191
bb190:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t676 = load i32, ptr %l10, !tbaa !23
  %t679 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t675, i32 %t676)
  store i32 %t679, ptr %l351
  br label %bb192
bb191:
  store i1 false, ptr %l348, !tbaa !21
  br label %bb193
bb192:
  %t680 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t681 = load i32, ptr %l351, !tbaa !23
  %t683 = icmp ne i32 %t681, %t680
  store i1 %t683, ptr %l348, !tbaa !21
  br label %bb193
bb193:
  %t685 = load i1, ptr %l348, !tbaa !21
  br i1 %t685, label %bb194, label %bb195
bb194:
  %t686 = load ptr, ptr %l0, !tbaa !29
  store ptr %t686, ptr %l354, !tbaa !29
  %t687 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t687, ptr %l355
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t690 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t688)
  store i32 %t690, ptr %l357
  br label %bb196
bb195:
  br label %bb198
bb196:
  %t691 = load ptr, ptr %l9, !tbaa !29
  %t692 = load ptr, ptr %l354, !tbaa !29
  %t693 = load %"compiler/source:Span", ptr %l355
  %t694 = load i32, ptr %l357, !tbaa !23
  %t697 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v4, ptr %v0, ptr %v4, ptr %t692, %"compiler/source:Span" %t693, i32 %t694, i32 22, ptr %t691, ptr null)
  store ptr %t697, ptr %l360
  br label %bb197
bb197:
  call void @__olang_scope_close(ptr %s0)
  %t698 = load ptr, ptr %l360, !tbaa !29
  store ptr %t698, ptr %rv
  br label %ret
bb198:
  %t699 = load i64, ptr %l17, !tbaa !24
  %t701 = icmp slt i64 %t699, 0
  br i1 %t701, label %bb199, label %bb200
bb199:
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t704 = load i32, ptr %l10, !tbaa !23
  %t707 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t703, i32 %t704)
  store i32 %t707, ptr %l366
  br label %bb201
bb200:
  store i1 false, ptr %l363, !tbaa !21
  br label %bb207
bb201:
  %t708 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t709 = load i32, ptr %l366, !tbaa !23
  %t711 = icmp eq i32 %t709, %t708
  br i1 %t711, label %bb202, label %bb203
bb202:
  store i1 true, ptr %l369, !tbaa !21
  br label %bb206
bb203:
  %t713 = load ptr, ptr %l0, !tbaa !29
  store ptr %t713, ptr %l370, !tbaa !29
  %t714 = load ptr, ptr %l0, !tbaa !29
  %t715 = load i32, ptr %l10, !tbaa !23
  %t718 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t714, i32 %t715)
  store i32 %t718, ptr %l373
  br label %bb204
bb204:
  %t719 = load ptr, ptr %l370, !tbaa !29
  %t720 = load i32, ptr %l373, !tbaa !23
  %t721 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadOver(ptr %v0, ptr %t719, i32 %t720)
  store i1 %t721, ptr %l374
  br label %bb205
bb205:
  %t722 = load i1, ptr %l374, !tbaa !21
  store i1 %t722, ptr %l369, !tbaa !21
  br label %bb206
bb206:
  %t723 = load i1, ptr %l369, !tbaa !21
  store i1 %t723, ptr %l363, !tbaa !21
  br label %bb207
bb207:
  %t724 = load i1, ptr %l363, !tbaa !21
  br i1 %t724, label %bb208, label %bb209
bb208:
  %t725 = load ptr, ptr %l0, !tbaa !29
  %t726 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t725, { i64, ptr } %t726)
  br label %bb210
bb209:
  br label %bb212
bb210:
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t730 = load %"compiler/source:Span", ptr %l1
  %t733 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t729, %"compiler/source:Span" %t730)
  store ptr %t733, ptr %l379
  br label %bb211
bb211:
  call void @__olang_scope_close(ptr %s0)
  %t734 = load ptr, ptr %l379, !tbaa !29
  store ptr %t734, ptr %rv
  br label %ret
bb212:
  %t735 = load i64, ptr %l17, !tbaa !24
  %t737 = icmp slt i64 %t735, 0
  br i1 %t737, label %bb213, label %bb214
bb213:
  %t739 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t741 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t739, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t741, ptr %l384
  br label %bb215
bb214:
  store i1 false, ptr %l382, !tbaa !21
  br label %bb216
bb215:
  %t742 = load i1, ptr %l384, !tbaa !21
  %t743 = xor i1 %t742, true
  store i1 %t743, ptr %l382, !tbaa !21
  br label %bb216
bb216:
  %t745 = load i1, ptr %l382, !tbaa !21
  br i1 %t745, label %bb217, label %bb218
bb217:
  %t746 = load ptr, ptr %l0, !tbaa !29
  store ptr %t746, ptr %l387, !tbaa !29
  %t747 = load ptr, ptr %l0, !tbaa !29
  %t748 = load i32, ptr %l10, !tbaa !23
  %t751 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t747, i32 %t748)
  store i32 %t751, ptr %l390
  br label %bb219
bb218:
  store i1 false, ptr %l386, !tbaa !21
  br label %bb221
bb219:
  %t752 = load ptr, ptr %l387, !tbaa !29
  %t753 = load i32, ptr %l390, !tbaa !23
  %t754 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t752, i32 %t753)
  store i1 %t754, ptr %l391
  br label %bb220
bb220:
  %t755 = load i1, ptr %l391, !tbaa !21
  store i1 %t755, ptr %l386, !tbaa !21
  br label %bb221
bb221:
  %t756 = load i1, ptr %l386, !tbaa !21
  br i1 %t756, label %bb222, label %bb223
bb222:
  %t757 = load ptr, ptr %l0, !tbaa !29
  store ptr %t757, ptr %l393, !tbaa !29
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t759 = load i32, ptr %l10, !tbaa !23
  %t762 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t758, i32 %t759)
  store i32 %t762, ptr %l396
  br label %bb224
bb223:
  store i1 false, ptr %l392, !tbaa !21
  br label %bb226
bb224:
  %t763 = load ptr, ptr %l393, !tbaa !29
  %t764 = load i32, ptr %l396, !tbaa !23
  %t765 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t763, i32 %t764)
  store i1 %t765, ptr %l397
  br label %bb225
bb225:
  %t766 = load i1, ptr %l397, !tbaa !21
  store i1 %t766, ptr %l392, !tbaa !21
  br label %bb226
bb226:
  %t767 = load i1, ptr %l392, !tbaa !21
  br i1 %t767, label %bb227, label %bb228
bb227:
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t770 = getelementptr %"compiler/check:Checker", ptr %t768, i32 0, i32 1
  %t771 = load ptr, ptr %t770, !tbaa !29
  store ptr %t771, ptr %l400, !tbaa !29
  %t772 = load ptr, ptr %l0, !tbaa !29
  %t773 = load i32, ptr %l10, !tbaa !23
  %t776 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t772, i32 %t773)
  store i32 %t776, ptr %l403
  br label %bb229
bb228:
  store i1 false, ptr %l398, !tbaa !21
  br label %bb231
bb229:
  %t777 = load ptr, ptr %l400, !tbaa !29
  %t778 = load i32, ptr %l403, !tbaa !23
  %t779 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t777, i32 %t778)
  store i1 %t779, ptr %l404
  br label %bb230
bb230:
  %t780 = load i1, ptr %l404, !tbaa !21
  %t781 = xor i1 %t780, true
  store i1 %t781, ptr %l398, !tbaa !21
  br label %bb231
bb231:
  %t783 = load i1, ptr %l398, !tbaa !21
  br i1 %t783, label %bb232, label %bb233
bb232:
  %t784 = load ptr, ptr %l0, !tbaa !29
  store ptr %t784, ptr %l407, !tbaa !29
  %t785 = load ptr, ptr %l0, !tbaa !29
  %t786 = load i32, ptr %l10, !tbaa !23
  %t789 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t785, i32 %t786)
  store i32 %t789, ptr %l410
  br label %bb234
bb233:
  store i1 false, ptr %l406, !tbaa !21
  br label %bb236
bb234:
  %t790 = load i32, ptr %l3, !tbaa !23
  %t791 = load ptr, ptr %l407, !tbaa !29
  %t792 = load i32, ptr %l410, !tbaa !23
  %t794 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebaseHas(ptr %v0, ptr %t791, i32 %t792, i32 %t790)
  store i1 %t794, ptr %l412
  br label %bb235
bb235:
  %t795 = load i1, ptr %l412, !tbaa !21
  store i1 %t795, ptr %l406, !tbaa !21
  br label %bb236
bb236:
  %t796 = load i1, ptr %l406, !tbaa !21
  br i1 %t796, label %bb237, label %bb238
bb237:
  %t797 = load ptr, ptr %l0, !tbaa !29
  store ptr %t797, ptr %l413, !tbaa !29
  %t798 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t798, ptr %l414
  %t799 = load ptr, ptr %l0, !tbaa !29
  store ptr %t799, ptr %l415, !tbaa !29
  %t800 = load ptr, ptr %l0, !tbaa !29
  %t801 = load i32, ptr %l10, !tbaa !23
  %t804 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t800, i32 %t801)
  store i32 %t804, ptr %l418
  br label %bb239
bb238:
  br label %bb246
bb239:
  %t805 = load ptr, ptr %l415, !tbaa !29
  %t806 = load i32, ptr %l418, !tbaa !23
  %t807 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t805, i32 %t806)
  store { i64, ptr } %t807, ptr %l419
  br label %bb240
bb240:
  %t808 = load { i64, ptr }, ptr %l419, !tbaa !27
  %t809 = extractvalue { i64, ptr } %t808, 0
  %t810 = extractvalue { i64, ptr } %t808, 1
  %t811 = mul i64 %t809, 1
  %t812 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t811)
  call void @llvm.memcpy.p0.p0.i64(ptr %t812, ptr %t810, i64 %t811, i1 false)
  %t813 = insertvalue { i64, ptr } undef, i64 %t809, 0
  %t814 = insertvalue { i64, ptr } %t813, ptr %t812, 1
  store { i64, ptr } %t814, ptr %l420, !tbaa !27
  %t815 = load ptr, ptr %l0, !tbaa !29
  %t816 = load i32, ptr %l3, !tbaa !23
  %t819 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t815, i32 %t816)
  store { i64, ptr } %t819, ptr %l423
  br label %bb241
bb241:
  %t820 = load { i64, ptr }, ptr %l423, !tbaa !27
  %t821 = extractvalue { i64, ptr } %t820, 0
  %t822 = extractvalue { i64, ptr } %t820, 1
  %t823 = mul i64 %t821, 1
  %t824 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t823)
  call void @llvm.memcpy.p0.p0.i64(ptr %t824, ptr %t822, i64 %t823, i1 false)
  %t825 = insertvalue { i64, ptr } undef, i64 %t821, 0
  %t826 = insertvalue { i64, ptr } %t825, ptr %t824, 1
  %t827 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t829 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodNotInherited(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t827, { i64, ptr } %t826)
  store %"compiler/diagmsg:Msg" %t829, ptr %l425
  br label %bb242
bb242:
  %t830 = load ptr, ptr %l413, !tbaa !29
  %t831 = load %"compiler/source:Span", ptr %l414
  %t832 = load %"compiler/diagmsg:Msg", ptr %l425
  %t833 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t830, %"compiler/source:Span" %t831, %"compiler/diagmsg:Msg" %t832)
  store i64 %t833, ptr %l426
  br label %bb243
bb243:
  %t834 = load ptr, ptr %l0, !tbaa !29
  %t835 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t834, { i64, ptr } %t835)
  br label %bb244
bb244:
  %t838 = load ptr, ptr %l0, !tbaa !29
  %t839 = load %"compiler/source:Span", ptr %l1
  %t842 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t838, %"compiler/source:Span" %t839)
  store ptr %t842, ptr %l431
  br label %bb245
bb245:
  call void @__olang_scope_close(ptr %s0)
  %t843 = load ptr, ptr %l431, !tbaa !29
  store ptr %t843, ptr %rv
  br label %ret
bb246:
  %t844 = load i64, ptr %l17, !tbaa !24
  %t846 = icmp slt i64 %t844, 0
  br i1 %t846, label %bb247, label %bb248
bb247:
  store %olang.scope zeroinitializer, ptr %s19
  %t848 = load ptr, ptr %l0, !tbaa !29
  %t849 = load %"compiler/source:Span", ptr %l1
  %t850 = load %"compiler/source:Span", ptr %l4
  %t851 = load ptr, ptr %l2, !tbaa !29
  %t852 = load ptr, ptr %l9, !tbaa !29
  %t853 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t854 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t862 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuppliedCall(ptr %v0, ptr %v1, ptr %v4, ptr %v4, ptr %v2, ptr %v4, ptr %t848, %"compiler/source:Span" %t849, %"compiler/source:Span" %t850, ptr %t851, ptr %t852, { i64, ptr } %t853, { i64, ptr } %t854)
  store ptr %t862, ptr %l441
  br label %bb249
bb248:
  br label %bb322
bb249:
  %t863 = load ptr, ptr %l441, !tbaa !29
  store ptr %t863, ptr %l19, !tbaa !29
  %t864 = load ptr, ptr %l19, !tbaa !29
  %t866 = icmp eq ptr %t864, null
  %t868 = xor i1 %t866, true
  br i1 %t868, label %bb250, label %bb251
bb250:
  %t870 = load ptr, ptr %l19, !tbaa !29
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t870, ptr %rv
  br label %ret
bb251:
  br label %bb252
bb252:
  %t872 = load ptr, ptr %l0, !tbaa !29
  %t873 = load i32, ptr %l10, !tbaa !23
  %t876 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t872, i32 %t873)
  store i32 %t876, ptr %l448
  br label %bb253
bb253:
  %t877 = load i32, ptr %l448, !tbaa !23
  store i32 %t877, ptr %l20, !tbaa !23
  %t878 = load ptr, ptr %l0, !tbaa !29
  %t879 = load i32, ptr %l20, !tbaa !23
  %t882 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t878, i32 %t879)
  store i1 %t882, ptr %l451
  br label %bb254
bb254:
  %t883 = load i1, ptr %l451, !tbaa !21
  br i1 %t883, label %bb255, label %bb256
bb255:
  %t884 = load ptr, ptr %l0, !tbaa !29
  %t885 = load i32, ptr %l20, !tbaa !23
  %t886 = load i32, ptr %l3, !tbaa !23
  %t890 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldIndex(ptr %v0, ptr %t884, i32 %t885, i32 %t886)
  store i64 %t890, ptr %l456
  br label %bb257
bb256:
  store i1 false, ptr %l452, !tbaa !21
  br label %bb258
bb257:
  %t891 = load i64, ptr %l456, !tbaa !24
  %t892 = icmp sge i64 %t891, 0
  store i1 %t892, ptr %l452, !tbaa !21
  br label %bb258
bb258:
  %t894 = load i1, ptr %l452, !tbaa !21
  br i1 %t894, label %bb259, label %bb260
bb259:
  %t895 = load ptr, ptr %l9, !tbaa !29
  %t897 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v4, ptr %v4, ptr %t895)
  store ptr %t897, ptr %l459
  br label %bb261
bb260:
  br label %bb279
bb261:
  %t898 = load ptr, ptr %l459, !tbaa !29
  store ptr %t898, ptr %l21, !tbaa !29
  %t899 = load ptr, ptr %l21, !tbaa !29
  %t901 = icmp eq ptr %t899, null
  br i1 %t901, label %bb262, label %bb263
bb262:
  %t903 = load ptr, ptr %l2, !tbaa !29
  %t905 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t903)
  store %"compiler/source:Span" %t905, ptr %l463
  br label %bb264
bb263:
  br label %bb267
bb264:
  %t906 = load i32, ptr %l10, !tbaa !23
  store i32 %t906, ptr %l464, !tbaa !23
  %t907 = load ptr, ptr %l9, !tbaa !29
  store ptr %t907, ptr %l465, !tbaa !29
  %t908 = load ptr, ptr %l0, !tbaa !29
  store ptr %t908, ptr %l466, !tbaa !29
  store i32 8, ptr %l467
  %t909 = load ptr, ptr %l2, !tbaa !29
  %t911 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t909)
  store %"compiler/source:Span" %t911, ptr %l469
  br label %bb265
bb265:
  %t912 = load ptr, ptr %l466, !tbaa !29
  %t913 = load i32, ptr %l467, !range !{i32 0, i32 9}
  %t914 = load %"compiler/source:Span", ptr %l469
  %t915 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t912, i32 %t913, %"compiler/source:Span" %t914)
  store i32 %t915, ptr %l470
  br label %bb266
bb266:
  store { i64, [4 x i64] } zeroinitializer, ptr %t916
  %t917 = getelementptr { i64, [4 x i64] }, ptr %t916, i32 0, i32 0
  store i64 6, ptr %t917
  %t918 = load %"compiler/source:Span", ptr %l463
  %t919 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t918, 0
  %t920 = load i32, ptr %l464, !tbaa !23
  %t921 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t919, i32 %t920, 1
  %t922 = load ptr, ptr %l465, !tbaa !29
  %t923 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t921, ptr %t922, 2
  %t924 = load i32, ptr %l470, !tbaa !23
  %t925 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t923, i32 %t924, 3
  %t926 = getelementptr { i64, [4 x i64] }, ptr %t916, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t925, ptr %t926
  %t927 = load { i64, [4 x i64] }, ptr %t916
  %t929 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t927, ptr %t929
  store ptr %t929, ptr %l21, !tbaa !29
  br label %bb267
bb267:
  %t931 = load ptr, ptr %l0, !tbaa !29
  store ptr %t931, ptr %l473, !tbaa !29
  %t932 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t932, ptr %l474
  %t933 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t933, ptr %l475
  %t934 = load ptr, ptr %l21, !tbaa !29
  %t936 = icmp eq ptr %t934, null
  br i1 %t936, label %bb268, label %bb269
bb268:
  call void @__olang_check_failed(ptr @olang_loc_897998a95b9e5e2e_e7f90bd867c953f2)
  unreachable
bb269:
  br label %bb270
bb270:
  %t938 = load ptr, ptr %l21, !tbaa !29
  %t939 = load i32, ptr %l3, !tbaa !23
  %t940 = load ptr, ptr %l473, !tbaa !29
  %t941 = load %"compiler/source:Span", ptr %l474
  %t942 = load %"compiler/source:Span", ptr %l475
  %t945 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v4, ptr %v4, ptr %t940, %"compiler/source:Span" %t941, %"compiler/source:Span" %t942, ptr %t938, i32 %t939)
  store ptr %t945, ptr %l480
  br label %bb271
bb271:
  %t946 = load ptr, ptr %l480, !tbaa !29
  store ptr %t946, ptr %l22, !tbaa !29
  %t947 = load ptr, ptr %l22, !tbaa !29
  %t949 = icmp eq ptr %t947, null
  %t951 = xor i1 %t949, true
  br i1 %t951, label %bb272, label %bb273
bb272:
  store %olang.scope zeroinitializer, ptr %s23
  %t953 = load ptr, ptr %l0, !tbaa !29
  store ptr %t953, ptr %l484, !tbaa !29
  %t954 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t954, ptr %l485
  %t955 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t955, ptr %l486
  %t956 = load ptr, ptr %l0, !tbaa !29
  store ptr %t956, ptr %l487, !tbaa !29
  %t957 = load ptr, ptr %l2, !tbaa !29
  %t959 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t957)
  store %"compiler/source:Span" %t959, ptr %l489
  br label %bb274
bb273:
  br label %bb278
bb274:
  %t960 = getelementptr %"compiler/source:Span", ptr %l489, i32 0, i32 0
  %t961 = load i32, ptr %t960, !tbaa !23
  %t962 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 1
  %t963 = load i32, ptr %t962, !tbaa !23
  %t966 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s23, i32 %t961, i32 %t963)
  store %"compiler/source:Span" %t966, ptr %l492
  br label %bb275
bb275:
  %t967 = load ptr, ptr %l22, !tbaa !29
  %t968 = load ptr, ptr %l487, !tbaa !29
  %t969 = load %"compiler/source:Span", ptr %l492
  %t971 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v4, ptr %v4, ptr %t968, %"compiler/source:Span" %t969, ptr %t967)
  store ptr %t971, ptr %l494
  br label %bb276
bb276:
  %t972 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t973 = load ptr, ptr %l484, !tbaa !29
  %t974 = load %"compiler/source:Span", ptr %l485
  %t975 = load %"compiler/source:Span", ptr %l486
  %t976 = load ptr, ptr %l494, !tbaa !29
  %t978 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v4, ptr %v2, ptr %v4, ptr %t973, %"compiler/source:Span" %t974, %"compiler/source:Span" %t975, ptr %t976, { i64, ptr } %t972)
  store ptr %t978, ptr %l496
  br label %bb277
bb277:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t979 = load ptr, ptr %l496, !tbaa !29
  store ptr %t979, ptr %rv
  br label %ret
bb278:
  br label %bb279
bb279:
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t981 = load i32, ptr %l20, !tbaa !23
  %t984 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t980, i32 %t981)
  store i1 %t984, ptr %l499
  br label %bb280
bb280:
  %t985 = load i1, ptr %l499, !tbaa !21
  br i1 %t985, label %bb281, label %bb282
bb281:
  %t986 = load ptr, ptr %l0, !tbaa !29
  %t987 = load i32, ptr %l20, !tbaa !23
  %t990 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t986, i32 %t987)
  store i32 %t990, ptr %l503
  br label %bb283
bb282:
  store i1 false, ptr %l500, !tbaa !21
  br label %bb284
bb283:
  %t991 = load i32, ptr %l503, !range !{i32 0, i32 6}
  %t993 = trunc i64 3 to i32
  %t994 = icmp eq i32 %t991, %t993
  store i1 %t994, ptr %l500, !tbaa !21
  br label %bb284
bb284:
  %t996 = load i1, ptr %l500, !tbaa !21
  br i1 %t996, label %bb285, label %bb286
bb285:
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t998 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t997, { i64, ptr } %t998)
  br label %bb287
bb286:
  br label %bb289
bb287:
  %t1001 = load ptr, ptr %l0, !tbaa !29
  %t1002 = load %"compiler/source:Span", ptr %l1
  %t1005 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t1001, %"compiler/source:Span" %t1002)
  store ptr %t1005, ptr %l510
  br label %bb288
bb288:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t1006 = load ptr, ptr %l510, !tbaa !29
  store ptr %t1006, ptr %rv
  br label %ret
bb289:
  %t1007 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1009 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s19, { i64, ptr } %t1007, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t1009, ptr %l512
  br label %bb290
bb290:
  %t1010 = load i1, ptr %l512, !tbaa !21
  br i1 %t1010, label %bb291, label %bb292
bb291:
  store i1 true, ptr %l513, !tbaa !21
  br label %bb294
bb292:
  %t1011 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1013 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s19, { i64, ptr } %t1011, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t1013, ptr %l515
  br label %bb293
bb293:
  %t1014 = load i1, ptr %l515, !tbaa !21
  store i1 %t1014, ptr %l513, !tbaa !21
  br label %bb294
bb294:
  %t1015 = load i1, ptr %l513, !tbaa !21
  br i1 %t1015, label %bb295, label %bb296
bb295:
  %t1016 = load ptr, ptr %l0, !tbaa !29
  %t1017 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t1016, %"compiler/source:Span" %t1017, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb297
bb296:
  store %olang.scope zeroinitializer, ptr %s26
  %t1020 = load i32, ptr %l20, !tbaa !23
  store i32 %t1020, ptr %l518, !tbaa !23
  %t1021 = load ptr, ptr %l0, !tbaa !29
  %t1023 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %t1021)
  store i32 %t1023, ptr %l520
  br label %bb298
bb297:
  br label %bb319
bb298:
  %t1024 = load i32, ptr %l518, !tbaa !23
  %t1025 = load i32, ptr %l520, !tbaa !23
  %t1026 = icmp eq i32 %t1024, %t1025
  br i1 %t1026, label %bb299, label %bb300
bb299:
  %t1028 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1030 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s26, { i64, ptr } %t1028, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t1030, ptr %l524
  br label %bb301
bb300:
  store i1 false, ptr %l522, !tbaa !21
  br label %bb306
bb301:
  %t1031 = load i1, ptr %l524, !tbaa !21
  br i1 %t1031, label %bb302, label %bb303
bb302:
  store i1 true, ptr %l525, !tbaa !21
  br label %bb305
bb303:
  %t1032 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1034 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s26, { i64, ptr } %t1032, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t1034, ptr %l527
  br label %bb304
bb304:
  %t1035 = load i1, ptr %l527, !tbaa !21
  store i1 %t1035, ptr %l525, !tbaa !21
  br label %bb305
bb305:
  %t1036 = load i1, ptr %l525, !tbaa !21
  store i1 %t1036, ptr %l522, !tbaa !21
  br label %bb306
bb306:
  %t1037 = load i1, ptr %l522, !tbaa !21
  br i1 %t1037, label %bb307, label %bb308
bb307:
  %t1038 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1038, ptr %l528, !tbaa !29
  %t1039 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t1039, ptr %l529
  %t1040 = load ptr, ptr %l0, !tbaa !29
  %t1041 = load i32, ptr %l3, !tbaa !23
  %t1044 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t1040, i32 %t1041)
  store { i64, ptr } %t1044, ptr %l532
  br label %bb309
bb308:
  store %olang.scope zeroinitializer, ptr %s28
  %t1045 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1045, ptr %l537, !tbaa !29
  %t1046 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t1046, ptr %l538
  %t1047 = load i32, ptr %l10, !tbaa !23
  store i32 %t1047, ptr %l539, !tbaa !23
  %t1048 = load ptr, ptr %l0, !tbaa !29
  %t1049 = load i32, ptr %l3, !tbaa !23
  %t1052 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s28, ptr %t1048, i32 %t1049)
  store { i64, ptr } %t1052, ptr %l542
  br label %bb312
bb309:
  %t1053 = load { i64, ptr }, ptr %l532, !tbaa !27
  %t1054 = extractvalue { i64, ptr } %t1053, 0
  %t1055 = extractvalue { i64, ptr } %t1053, 1
  %t1056 = mul i64 %t1054, 1
  %t1057 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1056)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1057, ptr %t1055, i64 %t1056, i1 false)
  %t1058 = insertvalue { i64, ptr } undef, i64 %t1054, 0
  %t1059 = insertvalue { i64, ptr } %t1058, ptr %t1057, 1
  %t1060 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t1063 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharNoPad(ptr %v0, ptr %v4, ptr %v0, { i64, ptr } %t1059, { i64, ptr } %t1060)
  store %"compiler/diagmsg:Msg" %t1063, ptr %l535
  br label %bb310
bb310:
  %t1064 = load ptr, ptr %l528, !tbaa !29
  %t1065 = load %"compiler/source:Span", ptr %l529
  %t1066 = load %"compiler/diagmsg:Msg", ptr %l535
  %t1067 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1064, %"compiler/source:Span" %t1065, %"compiler/diagmsg:Msg" %t1066)
  store i64 %t1067, ptr %l536
  br label %bb311
bb311:
  br label %bb318
bb312:
  %t1068 = load { i64, ptr }, ptr %l542, !tbaa !27
  %t1069 = extractvalue { i64, ptr } %t1068, 1
  %t1070 = extractvalue { i64, ptr } %t1068, 0
  %t1071 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1070)
  call void @olang_textcopy(ptr %t1071, ptr %t1069, i64 %t1070)
  %t1072 = insertvalue { i64, ptr } undef, i64 %t1070, 0
  %t1073 = insertvalue { i64, ptr } %t1072, ptr %t1071, 1
  %t1075 = extractvalue { i64, ptr } %t1073, 0
  %t1076 = extractvalue { i64, ptr } %t1073, 1
  %t1077 = mul i64 %t1075, 1
  %t1078 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1077)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1078, ptr %t1076, i64 %t1077, i1 false)
  %t1079 = insertvalue { i64, ptr } undef, i64 %t1075, 0
  %t1080 = insertvalue { i64, ptr } %t1079, ptr %t1078, 1
  store { i64, ptr } %t1080, ptr %l544, !tbaa !27
  %t1081 = load ptr, ptr %l0, !tbaa !29
  %t1082 = load i32, ptr %l10, !tbaa !23
  %t1085 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t1081, i32 %t1082)
  store { i64, ptr } %t1085, ptr %l547
  br label %bb313
bb313:
  %t1086 = load { i64, ptr }, ptr %l547, !tbaa !27
  %t1087 = extractvalue { i64, ptr } %t1086, 0
  %t1088 = extractvalue { i64, ptr } %t1086, 1
  %t1089 = mul i64 %t1087, 1
  %t1090 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1089)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1090, ptr %t1088, i64 %t1089, i1 false)
  %t1091 = insertvalue { i64, ptr } undef, i64 %t1087, 0
  %t1092 = insertvalue { i64, ptr } %t1091, ptr %t1090, 1
  store { i64, ptr } %t1092, ptr %l548, !tbaa !27
  %t1093 = load ptr, ptr %l0, !tbaa !29
  %t1094 = load i32, ptr %l3, !tbaa !23
  %t1097 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t1093, i32 %t1094)
  store { i64, ptr } %t1097, ptr %l551
  br label %bb314
bb314:
  %t1098 = load { i64, ptr }, ptr %l551, !tbaa !27
  %t1099 = extractvalue { i64, ptr } %t1098, 0
  %t1100 = extractvalue { i64, ptr } %t1098, 1
  %t1101 = mul i64 %t1099, 1
  %t1102 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1102, ptr %t1100, i64 %t1101, i1 false)
  %t1103 = insertvalue { i64, ptr } undef, i64 %t1099, 0
  %t1104 = insertvalue { i64, ptr } %t1103, ptr %t1102, 1
  store { i64, ptr } %t1104, ptr %l552, !tbaa !27
  %t1105 = load ptr, ptr %l0, !tbaa !29
  %t1106 = load i32, ptr %l10, !tbaa !23
  %t1107 = load i32, ptr %l3, !tbaa !23
  %t1111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v0, ptr %t1105, i32 %t1106, i32 %t1107, i1 true)
  store { i64, ptr } %t1111, ptr %l556
  br label %bb315
bb315:
  %t1112 = load { i64, ptr }, ptr %l556, !tbaa !27
  %t1113 = extractvalue { i64, ptr } %t1112, 0
  %t1114 = extractvalue { i64, ptr } %t1112, 1
  %t1115 = mul i64 %t1113, 1
  %t1116 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1116, ptr %t1114, i64 %t1115, i1 false)
  %t1117 = insertvalue { i64, ptr } undef, i64 %t1113, 0
  %t1118 = insertvalue { i64, ptr } %t1117, ptr %t1116, 1
  %t1119 = load { i64, ptr }, ptr %l548, !tbaa !27
  %t1120 = load { i64, ptr }, ptr %l552, !tbaa !27
  %t1122 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownMethod(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t1119, { i64, ptr } %t1120, { i64, ptr } %t1118)
  store %"compiler/diagmsg:Msg" %t1122, ptr %l558
  br label %bb316
bb316:
  %t1123 = load ptr, ptr %l537, !tbaa !29
  %t1124 = load %"compiler/source:Span", ptr %l538
  %t1125 = load i32, ptr %l539, !tbaa !23
  %t1126 = load { i64, ptr }, ptr %l544, !tbaa !27
  %t1127 = load %"compiler/diagmsg:Msg", ptr %l558
  %t1128 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s28, ptr %v0, ptr %t1123, %"compiler/source:Span" %t1124, i32 %t1125, { i64, ptr } %t1126, %"compiler/diagmsg:Msg" %t1127)
  store i64 %t1128, ptr %l559
  br label %bb317
bb317:
  call void @__olang_scope_close(ptr %s28)
  br label %bb318
bb318:
  call void @__olang_scope_close(ptr %s26)
  br label %bb319
bb319:
  %t1129 = load ptr, ptr %l0, !tbaa !29
  %t1130 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v2, ptr %t1129, { i64, ptr } %t1130)
  br label %bb320
bb320:
  %t1133 = load ptr, ptr %l0, !tbaa !29
  %t1134 = load %"compiler/source:Span", ptr %l1
  %t1137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t1133, %"compiler/source:Span" %t1134)
  store ptr %t1137, ptr %l564
  br label %bb321
bb321:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  %t1138 = load ptr, ptr %l564, !tbaa !29
  store ptr %t1138, ptr %rv
  br label %ret
bb322:
  %t1139 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t1139, ptr %l565, !tbaa !27
  %t1140 = getelementptr { i64, ptr }, ptr %l565, i32 0, i32 1
  %t1141 = load ptr, ptr %t1140, !tbaa !27
  %t1142 = getelementptr i8, ptr %t1141, i64 0
  %t1143 = load i8, ptr %t1142, !tbaa !32
  %t1145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t1143)
  store i1 %t1145, ptr %l567
  br label %bb323
bb323:
  %t1146 = load i1, ptr %l567, !tbaa !21
  %t1147 = xor i1 %t1146, true
  br i1 %t1147, label %bb324, label %bb325
bb324:
  %t1149 = load ptr, ptr %l0, !tbaa !29
  %t1151 = getelementptr %"compiler/check:Checker", ptr %t1149, i32 0, i32 1
  %t1152 = load ptr, ptr %t1151, !tbaa !29
  %t1153 = load i64, ptr %l17, !tbaa !24
  %t1156 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t1152, i64 %t1153)
  store i64 %t1156, ptr %l573
  br label %bb326
bb325:
  store i1 false, ptr %l569, !tbaa !21
  br label %bb328
bb326:
  %t1157 = load ptr, ptr %l0, !tbaa !29
  %t1159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1157)
  store ptr %t1159, ptr %l575
  br label %bb327
bb327:
  %t1160 = load ptr, ptr %l575, !tbaa !29
  %t1162 = getelementptr %"compiler/check:frame", ptr %t1160, i32 0, i32 1
  %t1163 = load i64, ptr %t1162, !tbaa !24
  %t1164 = load i64, ptr %l573, !tbaa !24
  %t1166 = icmp ne i64 %t1164, %t1163
  store i1 %t1166, ptr %l569, !tbaa !21
  br label %bb328
bb328:
  %t1168 = load i1, ptr %l569, !tbaa !21
  br i1 %t1168, label %bb329, label %bb330
bb329:
  %t1169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1169, ptr %l579, !tbaa !29
  %t1170 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t1170, ptr %l580
  %t1171 = load ptr, ptr %l0, !tbaa !29
  %t1172 = load i32, ptr %l3, !tbaa !23
  %t1175 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t1171, i32 %t1172)
  store { i64, ptr } %t1175, ptr %l583
  br label %bb331
bb330:
  br label %bb334
bb331:
  %t1176 = load { i64, ptr }, ptr %l583, !tbaa !27
  %t1177 = extractvalue { i64, ptr } %t1176, 0
  %t1178 = extractvalue { i64, ptr } %t1176, 1
  %t1179 = mul i64 %t1177, 1
  %t1180 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1180, ptr %t1178, i64 %t1179, i1 false)
  %t1181 = insertvalue { i64, ptr } undef, i64 %t1177, 0
  %t1182 = insertvalue { i64, ptr } %t1181, ptr %t1180, 1
  %t1184 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodIsPrivate(ptr %v0, ptr %v0, { i64, ptr } %t1182)
  store %"compiler/diagmsg:Msg" %t1184, ptr %l585
  br label %bb332
bb332:
  %t1185 = load ptr, ptr %l579, !tbaa !29
  %t1186 = load %"compiler/source:Span", ptr %l580
  %t1187 = load %"compiler/diagmsg:Msg", ptr %l585
  %t1188 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1185, %"compiler/source:Span" %t1186, %"compiler/diagmsg:Msg" %t1187)
  store i64 %t1188, ptr %l586
  br label %bb333
bb333:
  br label %bb334
bb334:
  %t1189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1189, ptr %l587, !tbaa !29
  %t1190 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1190, ptr %l588
  %t1191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1191, ptr %l589, !tbaa !29
  %t1192 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1192, ptr %l590
  %t1193 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t1193, ptr %l591
  %t1194 = load i64, ptr %l17, !tbaa !24
  store i64 %t1194, ptr %l592, !tbaa !24
  %t1195 = load ptr, ptr %l9, !tbaa !29
  store ptr %t1195, ptr %l594, !tbaa !29
  %t1197 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t1197, ptr %l595, !tbaa !27
  %t1198 = icmp sge i64 0, 0
  br i1 %t1198, label %bb335, label %bb336
bb335:
  %t1200 = icmp sle i64 0, 1152921504606846975
  br i1 %t1200, label %bb337, label %bb338
bb336:
  call void @__olang_check_failed(ptr @olang_loc_97297cf958301a5_897be3a3c1a33231)
  unreachable
bb337:
  %t1202 = mul i64 0, 8
  %t1203 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1204 = insertvalue { i64, ptr } %t1203, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1204, ptr %l598, !tbaa !27
  %t1205 = icmp sge i64 0, 0
  br i1 %t1205, label %bb339, label %bb340
bb338:
  call void @__olang_check_failed(ptr @olang_loc_97297cf958301a5_897be3a3c1a33231)
  unreachable
bb339:
  %t1207 = icmp sle i64 0, 2305843009213693951
  br i1 %t1207, label %bb341, label %bb342
bb340:
  call void @__olang_check_failed(ptr @olang_loc_f4ec2e4bc4870738_831a294d3dfd1224)
  unreachable
bb341:
  %t1209 = mul i64 0, 4
  %t1210 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1211 = insertvalue { i64, ptr } %t1210, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t1212 = load ptr, ptr %l589, !tbaa !29
  %t1213 = load %"compiler/source:Span", ptr %l590
  %t1214 = load %"compiler/source:Span", ptr %l591
  %t1215 = load i64, ptr %l592, !tbaa !24
  %t1216 = load ptr, ptr %l594, !tbaa !29
  %t1217 = load { i64, ptr }, ptr %l595, !tbaa !27
  %t1218 = load { i64, ptr }, ptr %l598, !tbaa !27
  %t1220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v4, ptr %v2, ptr %v0, ptr %v0, ptr %v0, ptr %t1212, %"compiler/source:Span" %t1213, %"compiler/source:Span" %t1214, i64 %t1215, ptr %t1216, { i64, ptr } %t1217, { i64, ptr } %t1218, { i64, ptr } %t1211)
  store ptr %t1220, ptr %l602
  br label %bb343
bb342:
  call void @__olang_check_failed(ptr @olang_loc_f4ec2e4bc4870738_831a294d3dfd1224)
  unreachable
bb343:
  %t1221 = load ptr, ptr %l587, !tbaa !29
  %t1222 = load %"compiler/source:Span", ptr %l588
  %t1223 = load ptr, ptr %l602, !tbaa !29
  %t1224 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceCall(ptr %v0, ptr %v0, ptr %v4, ptr %t1221, %"compiler/source:Span" %t1222, ptr %t1223)
  store ptr %t1224, ptr %l603
  br label %bb344
bb344:
  call void @__olang_scope_close(ptr %s0)
  %t1225 = load ptr, ptr %l603, !tbaa !29
  store ptr %t1225, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l19 = alloca i1
  %l22 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i32
  %l43 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca i32
  %l48 = alloca i64
  %l54 = alloca ptr
  %l57 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l67 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %l121 = alloca ptr
  %l125 = alloca ptr
  %l129 = alloca i64
  %l130 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca i64
  %l145 = alloca { i64, [3 x i64] }
  %l149 = alloca { i64, ptr }
  %l151 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t311 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a5, ptr %l5
  store i1 %a6, ptr %l6
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
  store i1 true, ptr %l19, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l22
  br label %bb3
bb3:
  %t12 = load i1, ptr %l22, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l19, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l19, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l26, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  store i32 %t21, ptr %l27, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/load:Loader", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t31, { i64, ptr } %t32)
  store i32 %t35, ptr %l33
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l26, !tbaa !29
  %t37 = load i32, ptr %l27, !tbaa !23
  %t38 = load i32, ptr %l33, !tbaa !23
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t36, i32 %t37, i32 %t38)
  store i64 %t39, ptr %l34
  br label %bb9
bb9:
  %t40 = load i64, ptr %l34, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  %t49 = load i32, ptr %l1, !tbaa !23
  store i32 %t49, ptr %l39, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l43, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = call { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v1, ptr %s2, { i64, ptr } %t60)
  store { i64, ptr } %t62, ptr %l45
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t63 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t70 = load ptr, ptr %l43, !tbaa !29
  %t72 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s2, ptr %t70, { i64, ptr } %t69)
  store i32 %t72, ptr %l47
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t74 = load i32, ptr %l39, !tbaa !23
  %t75 = load i32, ptr %l47, !tbaa !23
  %t76 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t73, i32 %t74, i32 %t75)
  store i64 %t76, ptr %l48
  br label %bb14
bb14:
  %t77 = load i64, ptr %l48, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp slt i64 %t78, 0
  br i1 %t80, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l54, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  store ptr %t94, ptr %l57, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load i64, ptr %l7, !tbaa !24
  %t102 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t98, i64 %t99)
  store i32 %t102, ptr %l61
  br label %bb19
bb19:
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = load i32, ptr %l61, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t105, ptr %l62
  br label %bb20
bb20:
  %t106 = load ptr, ptr %l54, !tbaa !29
  %t107 = load i32, ptr %l62, !tbaa !23
  %t108 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t106, i32 %t107)
  store { i64, ptr } %t108, ptr %l63
  br label %bb21
bb21:
  %t109 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  %t112 = sub i64 %t110, 1
  store i64 %t112, ptr %l8, !tbaa !24
  %t114 = load i1, ptr %l6, !tbaa !21
  br i1 %t114, label %bb22, label %bb23
bb22:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l5, !tbaa !24
  %t120 = icmp sge i64 %t116, %t117
  store i1 %t120, ptr %l67, !tbaa !21
  br label %bb24
bb23:
  %t122 = load i64, ptr %l8, !tbaa !24
  %t123 = load i64, ptr %l5, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  store i1 %t126, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t128 = load i1, ptr %l67, !tbaa !21
  br i1 %t128, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t130 = load i64, ptr %l8, !tbaa !24
  %t132 = icmp eq i64 %t130, 0
  br i1 %t132, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb33
bb29:
  %t134 = load i64, ptr %l8, !tbaa !24
  %t136 = icmp eq i64 %t134, 1
  br i1 %t136, label %bb30, label %bb31
bb30:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb32
bb31:
  %t138 = load i64, ptr %l8, !tbaa !24
  %t140 = call i64 @__olang_fmt_i64(ptr null, i64 %t138)
  %t141 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t143)
  %t145 = call i64 @__olang_fmt_i64(ptr %t144, i64 %t138)
  %t146 = getelementptr i8, ptr %t144, i64 %t140
  call void @olang_textcopy(ptr %t146, ptr %t141, i64 %t142)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t144, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = extractvalue { i64, ptr } %t148, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l80, !tbaa !27
  br label %bb32
bb32:
  %t157 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t157, ptr %l77, !tbaa !27
  br label %bb33
bb33:
  %t158 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t158, ptr %l9, !tbaa !27
  %t159 = load i64, ptr %l5, !tbaa !24
  %t161 = icmp eq i64 %t159, 1
  br i1 %t161, label %bb34, label %bb35
bb34:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l86, !tbaa !27
  br label %bb36
bb35:
  %t163 = load i64, ptr %l5, !tbaa !24
  %t165 = call i64 @__olang_fmt_i64(ptr null, i64 %t163)
  %t166 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t165)
  %t167 = call i64 @__olang_fmt_i64(ptr %t166, i64 %t163)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t171 = extractvalue { i64, ptr } %t169, 0
  %t172 = extractvalue { i64, ptr } %t169, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l86, !tbaa !27
  br label %bb36
bb36:
  %t178 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t178, ptr %l10, !tbaa !27
  %t179 = load i64, ptr %l5, !tbaa !24
  %t181 = icmp eq i64 %t179, 0
  br i1 %t181, label %bb37, label %bb38
bb37:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l92, !tbaa !27
  br label %bb42
bb38:
  %t183 = load i1, ptr %l6, !tbaa !21
  br i1 %t183, label %bb39, label %bb40
bb39:
  %t185 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t186 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t189 = extractvalue { i64, ptr } %t185, 1
  %t190 = extractvalue { i64, ptr } %t185, 0
  %t191 = add i64 %t187, %t190
  %t192 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t191)
  call void @olang_textcopy(ptr %t192, ptr %t186, i64 %t187)
  %t193 = getelementptr i8, ptr %t192, i64 %t187
  call void @olang_textcopy(ptr %t193, ptr %t189, i64 %t190)
  %t194 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t192, 1
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = extractvalue { i64, ptr } %t195, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l94, !tbaa !27
  br label %bb41
bb40:
  %t204 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t204, ptr %l94, !tbaa !27
  br label %bb41
bb41:
  %t206 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t206, ptr %l92, !tbaa !27
  br label %bb42
bb42:
  %t207 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t207, ptr %l11, !tbaa !27
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l99, !tbaa !29
  store %"compiler/source:Span" %a3, ptr %l100
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load i32, ptr %l1, !tbaa !23
  %t214 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t210, i32 %t211)
  store { i64, ptr } %t214, ptr %l103
  br label %bb43
bb43:
  %t215 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  %t217 = extractvalue { i64, ptr } %t215, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  store { i64, ptr } %t221, ptr %l104, !tbaa !27
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l105, !tbaa !29
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/check:Checker", ptr %t223, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t227 = load i64, ptr %l7, !tbaa !24
  %t230 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t226, i64 %t227)
  store ptr %t230, ptr %l109
  br label %bb44
bb44:
  %t231 = load ptr, ptr %l109, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Func", ptr %t231, i32 0, i32 2
  %t234 = load i32, ptr %t233, !tbaa !23
  %t235 = load ptr, ptr %l105, !tbaa !29
  %t237 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t235, i32 %t234)
  store { i64, ptr } %t237, ptr %l112
  br label %bb45
bb45:
  %t238 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t241 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t246 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotTheOperator(ptr %v0, ptr %v0, ptr %s0, ptr %v2, ptr %s0, ptr %v0, { i64, ptr } %t241, { i64, ptr } %t242, { i64, ptr } %t238, { i64, ptr } %a4, { i64, ptr } %t240)
  store %"compiler/diagmsg:Msg" %t246, ptr %l116
  br label %bb46
bb46:
  %t247 = load ptr, ptr %l99, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l100
  %t249 = load %"compiler/diagmsg:Msg", ptr %l116
  %t250 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t247, %"compiler/source:Span" %t248, %"compiler/diagmsg:Msg" %t249)
  store i64 %t250, ptr %l117
  br label %bb47
bb47:
  %t251 = load i64, ptr %l117, !tbaa !24
  store i64 %t251, ptr %l12, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load i64, ptr %l7, !tbaa !24
  %t259 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t255, i64 %t256)
  store ptr %t259, ptr %l121
  br label %bb48
bb48:
  %t260 = load ptr, ptr %l121, !tbaa !29
  store ptr %t260, ptr %l13, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/check:Checker", ptr %t261, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 0
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t269 = getelementptr %"compiler/load:Loader", ptr %t267, i32 0, i32 10
  store ptr %t269, ptr %l125, !tbaa !29
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/check:Checker", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t274 = load i64, ptr %l7, !tbaa !24
  %t277 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t273, i64 %t274)
  store i64 %t277, ptr %l129
  br label %bb49
bb49:
  %t278 = load ptr, ptr %l125, !tbaa !29
  %t279 = load i64, ptr %l129, !tbaa !24
  %t280 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t278, i64 %t279)
  store ptr %t280, ptr %l130
  br label %bb50
bb50:
  %t281 = load ptr, ptr %l130, !tbaa !29
  %t283 = getelementptr %"compiler/load:Module", ptr %t281, i32 0, i32 4
  %t284 = load i64, ptr %t283, !tbaa !24
  %t286 = load ptr, ptr %l13, !tbaa !29
  %t288 = getelementptr %"compiler/ast:Func", ptr %t286, i32 0, i32 0
  %t289 = load %"compiler/source:Span", ptr %t288
  store %"compiler/source:Span" %t289, ptr %l15
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/check:Checker", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 0
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = getelementptr %"compiler/load:Loader", ptr %t297, i32 0, i32 4
  %t300 = load ptr, ptr %t299, !tbaa !29
  store ptr %t300, ptr %l138, !tbaa !29
  %t301 = load i64, ptr %l12, !tbaa !24
  store i64 %t301, ptr %l139, !tbaa !24
  %t303 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 0
  %t304 = load i32, ptr %t303, !tbaa !23
  %t306 = sext i32 %t304 to i64
  %t307 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 1
  %t308 = load i32, ptr %t307, !tbaa !23
  %t310 = sext i32 %t308 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t311
  %t312 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 0
  store i64 3, ptr %t312
  %t314 = insertvalue { i64, i64, i64 } undef, i64 %t284, 0
  %t316 = insertvalue { i64, i64, i64 } %t314, i64 %t306, 1
  %t318 = insertvalue { i64, i64, i64 } %t316, i64 %t310, 2
  %t319 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 1
  store { i64, i64, i64 } %t318, ptr %t319
  %t320 = load { i64, [3 x i64] }, ptr %t311
  store { i64, [3 x i64] } %t320, ptr %l145
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load ptr, ptr %l13, !tbaa !29
  %t324 = getelementptr %"compiler/ast:Func", ptr %t322, i32 0, i32 2
  %t325 = load i32, ptr %t324, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t321, i32 %t325)
  store { i64, ptr } %t328, ptr %l149
  br label %bb51
bb51:
  %t329 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  %t331 = extractvalue { i64, ptr } %t329, 1
  %t332 = mul i64 %t330, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t333, ptr %t331, i64 %t332, i1 false)
  %t334 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  %t337 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v0, { i64, ptr } %t335)
  store %"compiler/diagmsg:Msg" %t337, ptr %l151
  br label %bb52
bb52:
  %t338 = load ptr, ptr %l138, !tbaa !29
  %t339 = load i64, ptr %l139, !tbaa !24
  %t340 = load { i64, [3 x i64] }, ptr %l145
  %t341 = load %"compiler/diagmsg:Msg", ptr %l151
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t338, i64 %t339, { i64, [3 x i64] } %t340, %"compiler/diagmsg:Msg" %t341)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonce(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l36 = alloca i32
  %l37 = alloca i64
  %l49 = alloca ptr
  %rv = alloca ptr
  %t78 = alloca { i64, [3 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %rv
  br label %ret
bb6:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 18}
  %t19 = icmp eq i64 %t17, 2
  store i1 %t19, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 0
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb14, label %bb15
bb14:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t38, i32 0, i32 0
  %t40 = load %"compiler/source:Span", ptr %t39
  store %"compiler/source:Span" %t40, ptr %l3
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t44, i32 0, i32 1
  %t46 = load i32, ptr %t45
  store i32 %t46, ptr %l4, !tbaa !23
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t50, i32 0, i32 2
  %t52 = load i32, ptr %t51
  store i32 %t52, ptr %l5, !tbaa !23
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
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
  call void @__olang_check_failed(ptr @olang_loc_9e3e60c51c241998_753bf57c496fa07c)
  unreachable
bb22:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t56)
  store %"compiler/source:Span" %t58, ptr %l31
  br label %bb23
bb23:
  %t59 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t59, ptr %l6
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l32, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t61, ptr %l33
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t65 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t62)
  store i32 %t65, ptr %l36
  br label %bb24
bb24:
  %t66 = load ptr, ptr %l32, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l33
  %t68 = load i32, ptr %l36, !tbaa !23
  %t69 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t66, %"compiler/source:Span" %t67, i32 %t68)
  store i64 %t69, ptr %l37
  br label %bb25
bb25:
  %t70 = load i64, ptr %l37, !tbaa !24
  store i64 %t70, ptr %l7, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l6
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = trunc i64 %t73 to i32
  %t77 = load ptr, ptr %l1, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 0
  store i64 0, ptr %t79
  %t81 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t72, 0
  %t83 = insertvalue { %"compiler/source:Span", i32, ptr } %t81, i32 %t75, 1
  %t85 = insertvalue { %"compiler/source:Span", i32, ptr } %t83, ptr %t77, 2
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t85, ptr %t86
  %t87 = load { i64, [3 x i64] }, ptr %t78
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t87, ptr %t89
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t71, ptr %t89)
  br label %bb26
bb26:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l6
  %t94 = load i64, ptr %l7, !tbaa !24
  %t98 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t92, %"compiler/source:Span" %t93, i64 %t94)
  store ptr %t98, ptr %l49
  br label %bb27
bb27:
  %t99 = load ptr, ptr %l49, !tbaa !29
  store ptr %t99, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamIndex(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/typed:Local"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l19 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l63 = alloca i32
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
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i64, ptr %l1, !tbaa !24
  %t6 = trunc i64 %t4 to i32
  %t8 = load ptr, ptr %l11, !tbaa !29
  %t10 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t8, i32 %t6)
  store %"compiler/typed:Local" %t10, ptr %l15
  br label %bb2
bb2:
  %t11 = load %"compiler/typed:Local", ptr %l15
  store %"compiler/typed:Local" %t11, ptr %l2
  %t12 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 4
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 7}
  %t15 = trunc i64 0 to i32
  %t16 = icmp eq i32 %t13, %t15
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb6
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 2
  %t22 = load i32, ptr %t21, !tbaa !23
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t20, i32 %t22)
  store i1 %t25, ptr %l22
  br label %bb5
bb5:
  %t26 = load i1, ptr %l22, !tbaa !21
  store i1 %t26, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l19, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 2
  %t30 = load i32, ptr %t29, !tbaa !23
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t28, i32 %t30)
  store i1 %t33, ptr %l26
  br label %bb9
bb9:
  %t34 = load i1, ptr %l26, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l23, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t39)
  store ptr %t41, ptr %l30
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l30, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Body", ptr %t42, i32 0, i32 5
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l32
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l34
  br label %bb15
bb15:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3)
  store i64 %t50, ptr %l36
  br label %bb16
bb16:
  %t51 = load i64, ptr %l36, !tbaa !24
  store i64 %t51, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = icmp sgt i64 %t52, %t53
  br i1 %t56, label %bb17, label %bb18
bb17:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb22
bb19:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = add i64 %t66, %t67
  %t72 = sub i64 %t70, 1
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = sdiv i64 %t72, %t73
  store i64 %t76, ptr %l43, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb21
bb21:
  %t78 = load i64, ptr %l43, !tbaa !24
  store i64 %t78, ptr %l40, !tbaa !24
  br label %bb22
bb22:
  %t79 = load i64, ptr %l40, !tbaa !24
  store i64 %t79, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb23
bb23:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb24, label %bb25
bb24:
  br label %bb32
bb25:
  br label %bb26
bb26:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = mul i64 %t89, %t90
  %t96 = add i64 %t88, %t93
  store i64 %t96, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3, i64 %t98)
  store i32 %t101, ptr %l63
  br label %bb27
bb27:
  %t102 = load i32, ptr %l63, !tbaa !23
  %t103 = sext i32 %t102 to i64
  %t104 = load i64, ptr %l1, !tbaa !24
  %t107 = icmp eq i64 %t103, %t104
  br i1 %t107, label %bb28, label %bb29
bb28:
  %t109 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t109, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  br label %bb23
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l39, !tbaa !27
  br label %bb23
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l5, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t64, i32 %t65)
  store { i64, ptr } %t68, ptr %l45
  br label %bb22
bb22:
  %t69 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t71 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = add i64 %t70, %t73
  %t75 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t78 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
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
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t103, i32 %t104)
  store { i64, ptr } %t107, ptr %l52
  br label %bb24
bb24:
  %t108 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePowNone(ptr %v0, ptr %s2, ptr %v0, { i64, ptr } %t114, { i64, ptr } %t115)
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
  %t147 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 50
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l69, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t150 = load ptr, ptr %l60, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 50
  store { i64, ptr } %t149, ptr %t151, !tbaa !27
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e50
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

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i32
  %l22 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca i1
  %l66 = alloca i64
  %l68 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %t4, { i64, ptr } %a1, { i64, ptr } %a2)
  store i32 %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load i32, ptr %l16, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load i32, ptr %l4, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l22, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l4, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l27
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = load i32, ptr %l27, !tbaa !23
  %t36 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t34, i32 %t35)
  store { i64, ptr } %t36, ptr %l28
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t37, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t68 = load i64, ptr %l37, !tbaa !24
  store i64 %t68, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t69 = load i64, ptr %l34, !tbaa !24
  store i64 %t69, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb14, label %bb15
bb14:
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l11, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t89, ptr %l56, !tbaa !27
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i32, ptr %t93, i64 %t90
  %t95 = load i32, ptr %t94, !tbaa !33
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t88, i32 %t95)
  store { i64, ptr } %t98, ptr %l59
  br label %bb17
bb17:
  %t100 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t102 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v3, { i64, ptr } %t100, { i64, ptr } %a3)
  store i1 %t102, ptr %l61
  br label %bb18
bb18:
  %t103 = load i1, ptr %l61, !tbaa !21
  br i1 %t103, label %bb19, label %bb20
bb19:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l4, !tbaa !23
  %t111 = load i64, ptr %l11, !tbaa !24
  store i64 %t111, ptr %l66, !tbaa !24
  %t112 = load i64, ptr %l66, !tbaa !24
  %t113 = load i64, ptr %l66, !tbaa !24
  %t114 = shl i64 1, %t113
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t109, i32 %t110, i64 %t114)
  store i32 %t118, ptr %l68
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t119 = load i32, ptr %l68, !tbaa !23
  store i32 %t119, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t120 = load i64, ptr %l10, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l10, !tbaa !24
  br label %bb13
bb24:
  %t124 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereraise(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i1
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i32
  %l48 = alloca i32
  %l55 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l69 = alloca i32
  %l78 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l85 = alloca { i64, ptr }
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
  %l93 = alloca i32
  %l96 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l101 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca %"compiler/diagmsg:Msg"
  %l114 = alloca i64
  %l118 = alloca i64
  %l120 = alloca i64
  %l125 = alloca i32
  %l130 = alloca ptr
  %l131 = alloca %"compiler/source:Span"
  %l132 = alloca ptr
  %l135 = alloca ptr
  %l138 = alloca i32
  %l139 = alloca i32
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %t267 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l18, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l19, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  store ptr %t11, ptr %l22, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t12)
  store i32 %t15, ptr %l25
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l22, !tbaa !29
  %t17 = load i32, ptr %l25, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t18, ptr %l26
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l19, !tbaa !29
  %t20 = load i32, ptr %l26, !tbaa !23
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %s0, ptr %t19, i32 %t20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l27
  br label %bb4
bb4:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l4
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 26
  %t26 = load i1, ptr %t25, !tbaa !21
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/check:frame", ptr %t30, i32 0, i32 12
  %t33 = load i1, ptr %t32, !tbaa !21
  %t35 = xor i1 %t33, true
  store i1 %t35, ptr %l31, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l31, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb9:
  br label %bb47
bb10:
  %t39 = load i64, ptr %l6, !tbaa !24
  store i64 %t39, ptr %l36, !tbaa !24
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t40)
  store i64 %t42, ptr %l38
  br label %bb11
bb11:
  %t43 = load i64, ptr %l36, !tbaa !24
  %t44 = load i64, ptr %l38, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb12, label %bb13
bb12:
  br label %bb46
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t49, i64 %t50)
  store i32 %t53, ptr %l43
  br label %bb15
bb15:
  %t54 = load i32, ptr %l43, !tbaa !23
  store i32 %t54, ptr %l7, !tbaa !23
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l7, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l48
  br label %bb16
bb16:
  %t65 = load i32, ptr %l48, !tbaa !23
  store i32 %t65, ptr %l8, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t66, ptr %l9, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/check:frame", ptr %t74, i32 0, i32 6
  %t77 = load i32, ptr %t76, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t73, i32 %t77)
  store { i64, ptr } %t80, ptr %l55
  br label %bb17
bb17:
  %t81 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t81, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l12, !tbaa !24
  br label %bb18
bb18:
  %t86 = load i64, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l12, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb19, label %bb20
bb19:
  br label %bb27
bb20:
  br label %bb21
bb21:
  %t94 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t94, ptr %l62, !tbaa !27
  %t95 = load i64, ptr %l11, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  store i32 %t100, ptr %l13, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l13, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l69
  br label %bb22
bb22:
  %t112 = load i32, ptr %l8, !tbaa !23
  %t113 = load i32, ptr %l69, !tbaa !23
  %t115 = icmp eq i32 %t113, %t112
  br i1 %t115, label %bb23, label %bb24
bb23:
  %t117 = load i32, ptr %l13, !tbaa !23
  store i32 %t117, ptr %l9, !tbaa !23
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l11, !tbaa !24
  br label %bb18
bb27:
  %t123 = load i32, ptr %l9, !tbaa !23
  %t124 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t127 = icmp eq i32 %t123, %t124
  br i1 %t127, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s8
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l78, !tbaa !29
  %t130 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t131 = load i32, ptr %t130, !tbaa !23
  %t132 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t133 = load i32, ptr %t132, !tbaa !23
  %t135 = add i32 %t133, 5
  %t138 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 %t131, i32 %t135)
  store %"compiler/source:Span" %t138, ptr %l82
  br label %bb30
bb29:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l3, !tbaa !29
  %t142 = getelementptr %"compiler/check:frame", ptr %t140, i32 0, i32 6
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = load i32, ptr %l7, !tbaa !23
  %t148 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %t139, i32 %t143, i32 %t144)
  store i32 %t148, ptr %l93
  br label %bb34
bb30:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l7, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t149, i32 %t150)
  store { i64, ptr } %t153, ptr %l85
  br label %bb31
bb31:
  %t154 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t162 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReraiseUndeclared(ptr %v0, ptr %v0, { i64, ptr } %t160)
  store %"compiler/diagmsg:Msg" %t162, ptr %l87
  br label %bb32
bb32:
  %t163 = load ptr, ptr %l78, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l82
  %t165 = load %"compiler/diagmsg:Msg", ptr %l87
  %t166 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t163, %"compiler/source:Span" %t164, %"compiler/diagmsg:Msg" %t165)
  store i64 %t166, ptr %l88
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s8)
  br label %bb46
bb34:
  %t167 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = load i32, ptr %l93, !tbaa !23
  %t170 = icmp ne i32 %t168, %t167
  br i1 %t170, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l96, !tbaa !29
  %t173 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t174 = load i32, ptr %t173, !tbaa !23
  %t175 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t176 = load i32, ptr %t175, !tbaa !23
  %t178 = add i32 %t176, 5
  %t181 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s10, i32 %t174, i32 %t178)
  store %"compiler/source:Span" %t181, ptr %l100
  br label %bb37
bb36:
  br label %bb43
bb37:
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l101, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l3, !tbaa !29
  %t186 = getelementptr %"compiler/check:frame", ptr %t184, i32 0, i32 6
  %t187 = load i32, ptr %t186, !tbaa !23
  %t188 = load i32, ptr %l7, !tbaa !23
  %t192 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %t183, i32 %t187, i32 %t188)
  store i32 %t192, ptr %l106
  br label %bb38
bb38:
  %t193 = load ptr, ptr %l101, !tbaa !29
  %t194 = load i32, ptr %l106, !tbaa !23
  %t195 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t193, i32 %t194)
  store { i64, ptr } %t195, ptr %l107
  br label %bb39
bb39:
  %t196 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 0
  %t198 = extractvalue { i64, ptr } %t196, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l108, !tbaa !27
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i32, ptr %l9, !tbaa !23
  %t207 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t203, i32 %t204)
  store { i64, ptr } %t207, ptr %l111
  br label %bb40
bb40:
  %t208 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  %t210 = extractvalue { i64, ptr } %t208, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  %t215 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t217 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReraiseWordNotInSet(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t215, { i64, ptr } %t214)
  store %"compiler/diagmsg:Msg" %t217, ptr %l113
  br label %bb41
bb41:
  %t218 = load ptr, ptr %l96, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l100
  %t220 = load %"compiler/diagmsg:Msg", ptr %l113
  %t221 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t218, %"compiler/source:Span" %t219, %"compiler/diagmsg:Msg" %t220)
  store i64 %t221, ptr %l114
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s10)
  br label %bb46
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t222 = load i64, ptr %l6, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l6, !tbaa !24
  br label %bb10
bb46:
  br label %bb47
bb47:
  store ptr %l4, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb48
bb48:
  %t227 = load i64, ptr %l15, !tbaa !24
  store i64 %t227, ptr %l118, !tbaa !24
  %t228 = load ptr, ptr %l14, !tbaa !29
  %t230 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t228)
  store i64 %t230, ptr %l120
  br label %bb49
bb49:
  %t231 = load i64, ptr %l118, !tbaa !24
  %t232 = load i64, ptr %l120, !tbaa !24
  %t233 = icmp slt i64 %t231, %t232
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb50, label %bb51
bb50:
  br label %bb56
bb51:
  br label %bb52
bb52:
  %t237 = load ptr, ptr %l14, !tbaa !29
  %t238 = load i64, ptr %l15, !tbaa !24
  %t241 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t237, i64 %t238)
  store i32 %t241, ptr %l125
  br label %bb53
bb53:
  %t242 = load i32, ptr %l125, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %t243, i32 %t242)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t247 = load i64, ptr %l15, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l15, !tbaa !24
  br label %bb48
bb56:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l130, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t252, ptr %l131
  %t253 = load ptr, ptr %l2, !tbaa !29
  store ptr %t253, ptr %l132, !tbaa !29
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/check:Checker", ptr %t254, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  store ptr %t259, ptr %l135, !tbaa !29
  %t260 = load ptr, ptr %l2, !tbaa !29
  %t263 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t260)
  store i32 %t263, ptr %l138
  br label %bb57
bb57:
  %t264 = load ptr, ptr %l135, !tbaa !29
  %t265 = load i32, ptr %l138, !tbaa !23
  %t266 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t264, i32 %t265)
  store i32 %t266, ptr %l139
  br label %bb58
bb58:
  store { i64, [3 x i64] } zeroinitializer, ptr %t267
  %t268 = getelementptr { i64, [3 x i64] }, ptr %t267, i32 0, i32 0
  store i64 8, ptr %t268
  %t269 = load %"compiler/source:Span", ptr %l131
  %t270 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t269, 0
  %t271 = load ptr, ptr %l132, !tbaa !29
  %t272 = insertvalue { %"compiler/source:Span", ptr, i32 } %t270, ptr %t271, 1
  %t273 = load i32, ptr %l139, !tbaa !23
  %t274 = insertvalue { %"compiler/source:Span", ptr, i32 } %t272, i32 %t273, 2
  %t275 = getelementptr { i64, [3 x i64] }, ptr %t267, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t274, ptr %t275
  %t276 = load { i64, [3 x i64] }, ptr %t267
  %t278 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t276, ptr %t278
  %t279 = load ptr, ptr %l130, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t279, ptr %t278)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRefResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
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
  store i1 true, ptr %l4, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l7
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %t13, i64 %t12)
  store i1 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load i1, ptr %l10, !tbaa !21
  %t17 = xor i1 %t16, true
  store i1 %t17, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l4, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 89
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l15
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, ptr %v0, i64 %t29, ptr %t30)
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t33, ptr %l19
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l13, !tbaa !29
  %t35 = load %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H316d0dfdbceeb7b188a6719f0ad8fbbe(ptr %v0, ptr %v0, ptr %t34, %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t35)
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca ptr
  %l25 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l28 = alloca %"compiler/check:roOrigin"
  %l29 = alloca ptr
  %l30 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l42 = alloca %"compiler/check:roOrigin"
  %l43 = alloca ptr
  %l44 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l57 = alloca %"compiler/check:roOrigin"
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t6)
  store i32 %t9, ptr %l12
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i32, ptr %l12, !tbaa !23
  %t12 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t12, ptr %l13
  br label %bb4
bb4:
  %t13 = load i1, ptr %l13, !tbaa !21
  %t14 = xor i1 %t13, true
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t18 = load ptr, ptr %l15, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 18}
  %t24 = icmp eq i64 %t22, 2
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb11, label %bb12
bb11:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t28, i32 0, i32 2
  %t30 = load ptr, ptr %t29
  store ptr %t30, ptr %l3, !tbaa !29
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 82
  store ptr %t34, ptr %l22, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t35, i64 %t36)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t39, ptr %l25
  br label %bb14
bb14:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = call %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v1, ptr %v0, ptr %t40, i1 false)
  store %"compiler/check:roOrigin" %t43, ptr %l28
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  %t46 = load %"compiler/check:roOrigin", ptr %l28
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd862b35741eab3a632965773dd6b12ba(ptr %v0, ptr %v0, ptr %t44, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t45, %"compiler/check:roOrigin" %t46)
  br label %bb16
bb16:
  br label %bb40
bb17:
  %t47 = load ptr, ptr %l2, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t48 = load ptr, ptr %l29, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 18}
  %t54 = icmp eq i64 %t52, 3
  store i1 %t54, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t55 = load i1, ptr %l30, !tbaa !21
  br i1 %t55, label %bb20, label %bb21
bb20:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 82
  store ptr %t64, ptr %l36, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t69 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t65, i64 %t66)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t69, ptr %l39
  br label %bb23
bb23:
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t73 = call %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v1, ptr %v0, ptr %t70, i1 true)
  store %"compiler/check:roOrigin" %t73, ptr %l42
  br label %bb24
bb24:
  %t74 = load ptr, ptr %l36, !tbaa !29
  %t75 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l39
  %t76 = load %"compiler/check:roOrigin", ptr %l42
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd862b35741eab3a632965773dd6b12ba(ptr %v0, ptr %v0, ptr %t74, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t75, %"compiler/check:roOrigin" %t76)
  br label %bb25
bb25:
  br label %bb40
bb26:
  %t77 = load ptr, ptr %l2, !tbaa !29
  store ptr %t77, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t78 = load ptr, ptr %l43, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t81 = load ptr, ptr %l43, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 10
  store i1 %t84, ptr %l44, !tbaa !21
  br label %bb28
bb28:
  %t85 = load i1, ptr %l44, !tbaa !21
  br i1 %t85, label %bb29, label %bb30
bb29:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb35
bb31:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 82
  store ptr %t94, ptr %l50, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t95, i64 %t96)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t99, ptr %l53
  br label %bb32
bb32:
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Slice", ptr %t100, i32 0, i32 0
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t106 = call %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v1, ptr %v0, ptr %t103, i1 true)
  store %"compiler/check:roOrigin" %t106, ptr %l57
  br label %bb33
bb33:
  %t107 = load ptr, ptr %l50, !tbaa !29
  %t108 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l53
  %t109 = load %"compiler/check:roOrigin", ptr %l57
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd862b35741eab3a632965773dd6b12ba(ptr %v0, ptr %v0, ptr %t107, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t108, %"compiler/check:roOrigin" %t109)
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
  call void @__olang_check_failed(ptr @olang_loc_9ed68493f04b873b_45e1787ed2cd21af)
  unreachable
bb40:
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i32
  %l11 = alloca i32
  %l19 = alloca i32
  %l20 = alloca %"compiler/check:seqOf"
  %l23 = alloca i1
  %l28 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i1
  %l41 = alloca i32
  %l42 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca %"compiler/check:seqOf"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/check:seqOf" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i32, ptr %l11, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = icmp ne i32 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l19
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = call %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %s1, i32 %t29, i64 -1, i64 -1, i64 -1)
  store %"compiler/check:seqOf" %t30, ptr %l20
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t31 = load %"compiler/check:seqOf", ptr %l20
  %t32 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, %"compiler/check:seqOf" %t31, 1
  store { i32, %"compiler/check:seqOf" } %t32, ptr %rv
  br label %ret
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load i1, ptr %l23, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t42 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/check:seqOf" } %t42, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t43, i32 %t44, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, i64 1)
  store i64 %t47, ptr %l28
  br label %bb12
bb12:
  %t48 = load i64, ptr %l28, !tbaa !24
  store i64 %t48, ptr %l4, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t49, i32 %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d52, i32 0, i32 1) }, i64 0)
  store i64 %t53, ptr %l31
  br label %bb13
bb13:
  %t54 = load i64, ptr %l31, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = icmp slt i64 %t55, 0
  br i1 %t57, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb16
bb15:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp slt i64 %t59, 0
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb16
bb16:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t65 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/check:seqOf" } %t65, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l4, !tbaa !24
  %t68 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t66, i64 %t67, i32 %t68)
  store i32 %t72, ptr %l41
  br label %bb20
bb20:
  %t73 = load i64, ptr %l4, !tbaa !24
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  store i64 %t74, ptr %l43, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t75, i32 %t76, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d53, i32 0, i32 1) }, i64 2)
  store i64 %t79, ptr %l46
  br label %bb21
bb21:
  %t80 = load i32, ptr %l41, !tbaa !23
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = load i64, ptr %l46, !tbaa !24
  %t84 = call %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %s0, i32 %t80, i64 %t81, i64 %t82, i64 %t83)
  store %"compiler/check:seqOf" %t84, ptr %l47
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load %"compiler/check:seqOf", ptr %l47
  %t86 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, %"compiler/check:seqOf" %t85, 1
  store { i32, %"compiler/check:seqOf" } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/check:seqOf" }, ptr %rv
  ret { i32, %"compiler/check:seqOf" } %rr
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
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %v3, ptr %t54, ptr %l3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l40
  br label %bb20
bb20:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %t59
  %t60 = load ptr, ptr %l37, !tbaa !29
  %t62 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v3, ptr %v3, ptr %t60, ptr %t59)
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:LocalUses"
  %l6 = alloca %"compiler/typed:ViewWalk"
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/typed:LocalUses"
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca i64
  %l39 = alloca %"compiler/typed:ViewWalk"
  %l49 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i32
  %l57 = alloca i64
  %l58 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i32
  %l76 = alloca i64
  %l78 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca i64
  %l93 = alloca i64
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load i64, ptr %l16, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  store i64 %t11, ptr %l19
  br label %bb2
bb2:
  %t12 = load i64, ptr %l19, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t20, ptr %v0, ptr %v1, ptr %s0, ptr %t18, ptr %t19)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t20, i64 704, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l24, i64 704, i1 false)
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 77
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t25)
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  store ptr %t32, ptr %l29, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l30, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t40 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewElig(ptr %v0, ptr %v1, ptr %t34, ptr %t35, i64 %a2)
  store i64 %t40, ptr %l34
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t43 = ptrtoint ptr %t42 to i64
  %t44 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t43, i64 8)
  %t45 = getelementptr { ptr, ptr }, ptr %t44, i32 0, i32 0
  store ptr %t41, ptr %t45, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t47 = getelementptr { ptr, ptr }, ptr %t44, i32 0, i32 1
  store ptr %v0, ptr %t47, !tbaa !28
  %t48 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_54, 0
  %t49 = insertvalue { ptr, ptr } %t48, ptr %t44, 1
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t52 = ptrtoint ptr %t51 to i64
  %t53 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t52, i64 8)
  %t54 = getelementptr { ptr, ptr }, ptr %t53, i32 0, i32 0
  store ptr %t50, ptr %t54, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t56 = getelementptr { ptr, ptr }, ptr %t53, i32 0, i32 1
  store ptr %v0, ptr %t56, !tbaa !28
  %t57 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_55, 0
  %t58 = insertvalue { ptr, ptr } %t57, ptr %t53, 1
  %t59 = load ptr, ptr %l29, !tbaa !29
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i64, ptr %l34, !tbaa !24
  %t63 = extractvalue { ptr, ptr } %t49, 0
  %t64 = extractvalue { ptr, ptr } %t49, 1
  %t66 = extractvalue { ptr, ptr } %t58, 0
  %t67 = extractvalue { ptr, ptr } %t58, 1
  %t68 = call %"compiler/typed:ViewWalk" @compiler_2ftyped_3aViewWalk_2ector(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %s0, ptr %t59, ptr %t60, i64 %t61, ptr %t63, ptr %t64, ptr %t66, ptr %t67)
  store %"compiler/typed:ViewWalk" %t68, ptr %l39
  br label %bb6
bb6:
  %t69 = load %"compiler/typed:ViewWalk", ptr %l39
  store %"compiler/typed:ViewWalk" %t69, ptr %l6
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 77
  %t74 = inttoptr i64 0 to ptr
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eSettle(ptr %s0, ptr %s0, ptr %v0, ptr %t74, ptr %v0, ptr %l6, ptr %l5, ptr %t72)
  br label %bb7
bb7:
  %t78 = load i64, ptr %l3, !tbaa !24
  %t80 = icmp sge i64 %t78, 0
  br i1 %t80, label %bb8, label %bb9
bb8:
  store i64 0, ptr %l7, !tbaa !24
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Body", ptr %t82, i32 0, i32 10
  store ptr %t84, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb9:
  br label %bb23
bb10:
  %t86 = load i64, ptr %l9, !tbaa !24
  store i64 %t86, ptr %l49, !tbaa !24
  %t87 = load ptr, ptr %l8, !tbaa !29
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t87)
  store i64 %t89, ptr %l51
  br label %bb11
bb11:
  %t90 = load i64, ptr %l49, !tbaa !24
  %t91 = load i64, ptr %l51, !tbaa !24
  %t92 = icmp slt i64 %t90, %t91
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t96 = load ptr, ptr %l8, !tbaa !29
  %t97 = load i64, ptr %l9, !tbaa !24
  %t100 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t96, i64 %t97)
  store i32 %t100, ptr %l56
  br label %bb15
bb15:
  %t101 = load i32, ptr %l56, !tbaa !23
  %t102 = load i64, ptr %l7, !tbaa !24
  store i64 %t102, ptr %l57, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 77
  %t108 = sext i32 %t101 to i64
  %t111 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t105, i64 %t108)
  %t112 = extractvalue { i32, i64 } %t111, 1
  %t113 = extractvalue { i32, i64 } %t111, 0
  store i32 %t113, ptr %l64
  %t114 = icmp ne i32 %t113, 0
  br i1 %t114, label %bb17, label %ok.115, !prof !99
ok.115:
  store i64 %t112, ptr %l63
  br label %bb16
bb16:
  %t116 = load i64, ptr %l63, !tbaa !24
  store i64 %t116, ptr %l58, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb19
bb19:
  %t117 = load i64, ptr %l57, !tbaa !24
  %t118 = load i64, ptr %l58, !tbaa !24
  %t119 = or i64 %t117, %t118
  store i64 %t119, ptr %l7, !tbaa !24
  br label %bb20
bb20:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l9, !tbaa !24
  br label %bb10
bb21:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/load:Loader", ptr %t132, i32 0, i32 7
  %t135 = load i64, ptr %l3, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egrowViews(ptr %v0, ptr %v0, ptr %t125, ptr %t134, i64 %t135, i64 %t136)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  %t141 = getelementptr %"compiler/typed:LocalUses", ptr %l5, i32 0, i32 18
  store ptr %t141, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb24
bb24:
  %t143 = load i64, ptr %l12, !tbaa !24
  store i64 %t143, ptr %l76, !tbaa !24
  %t144 = load ptr, ptr %l11, !tbaa !29
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %t144)
  store i64 %t146, ptr %l78
  br label %bb25
bb25:
  %t147 = load i64, ptr %l76, !tbaa !24
  %t148 = load i64, ptr %l78, !tbaa !24
  %t149 = icmp slt i64 %t147, %t148
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb26, label %bb27
bb26:
  br label %bb33
bb27:
  br label %bb28
bb28:
  %t153 = load ptr, ptr %l11, !tbaa !29
  %t154 = load i64, ptr %l12, !tbaa !24
  %t157 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t153, i64 %t154)
  store ptr %t157, ptr %l83
  br label %bb29
bb29:
  %t158 = load ptr, ptr %l83, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l84, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 0
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/load:Loader", ptr %t166, i32 0, i32 6
  store ptr %t168, ptr %l88, !tbaa !29
  %t169 = load i64, ptr %l4, !tbaa !24
  store i64 %t169, ptr %l89, !tbaa !24
  %t172 = inttoptr i64 0 to ptr
  %t175 = call i64 @compiler_2fcheck_2eretViews(ptr %s0, ptr %s0, ptr %t172, ptr %v0, ptr %l6, ptr %t158)
  store i64 %t175, ptr %l93
  br label %bb30
bb30:
  %t176 = load ptr, ptr %l84, !tbaa !29
  %t177 = load ptr, ptr %l88, !tbaa !29
  %t178 = load i64, ptr %l89, !tbaa !24
  %t179 = load i64, ptr %l93, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egrowViews(ptr %v0, ptr %v0, ptr %t176, ptr %t177, i64 %t178, i64 %t179)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t180 = load i64, ptr %l12, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l12, !tbaa !24
  br label %bb24
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l27 = alloca i1
  %l33 = alloca %"compiler/check:litv"
  %l35 = alloca i1
  %l39 = alloca %"compiler/check:litv"
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca %"compiler/check:litv"
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l63 = alloca %"compiler/check:litv"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
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
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l14
  br label %bb6
bb6:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %rv
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
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
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
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 114}
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
  br label %bb41
bb12:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t51 = trunc i64 106 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb15
bb14:
  %t54 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t56 = trunc i64 107 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l27, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t65 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  store %"compiler/check:litv" %t65, ptr %l33
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t66 = getelementptr %"compiler/check:litv", ptr %l33, i32 0, i32 0
  %t67 = load i1, ptr %t66, !tbaa !21
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t74 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t69, ptr %t70)
  store %"compiler/check:litv" %t74, ptr %l39
  br label %bb21
bb20:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb22
bb21:
  %t75 = getelementptr %"compiler/check:litv", ptr %l39, i32 0, i32 0
  %t76 = load i1, ptr %t75, !tbaa !21
  %t78 = xor i1 %t76, true
  store i1 %t78, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t80 = load i1, ptr %l35, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  store i1 %t85, ptr %l44
  br label %bb24
bb24:
  %t86 = load i1, ptr %l44, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t92 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  store %"compiler/check:litv" %t92, ptr %l49
  br label %bb27
bb26:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb32
bb27:
  %t93 = getelementptr %"compiler/check:litv", ptr %l49, i32 0, i32 0
  %t94 = load i1, ptr %t93, !tbaa !21
  br i1 %t94, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb31
bb29:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t100 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i1 %t100, ptr %l54
  br label %bb30
bb30:
  %t101 = load i1, ptr %l54, !tbaa !21
  store i1 %t101, ptr %l51, !tbaa !21
  br label %bb31
bb31:
  %t102 = load i1, ptr %l51, !tbaa !21
  store i1 %t102, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t103 = load i1, ptr %l45, !tbaa !21
  br i1 %t103, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb40
bb34:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t108 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t104, ptr %t105)
  store i1 %t108, ptr %l58
  br label %bb35
bb35:
  %t109 = load i1, ptr %l58, !tbaa !21
  br i1 %t109, label %bb36, label %bb37
bb36:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l4, !tbaa !29
  %t115 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t110, ptr %t111)
  store %"compiler/check:litv" %t115, ptr %l63
  br label %bb38
bb37:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb39
bb38:
  %t116 = getelementptr %"compiler/check:litv", ptr %l63, i32 0, i32 0
  %t117 = load i1, ptr %t116, !tbaa !21
  store i1 %t117, ptr %l59, !tbaa !21
  br label %bb39
bb39:
  %t119 = load i1, ptr %l59, !tbaa !21
  store i1 %t119, ptr %l55, !tbaa !21
  br label %bb40
bb40:
  %t120 = load i1, ptr %l55, !tbaa !21
  store i1 %t120, ptr %rv
  br label %ret
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 false, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_5ec272a16da13ce8_6a23c064ecfaca54)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitHeader(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l27 = alloca %"compiler/generic:Unmet"
  %l30 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l47 = alloca i1
  %l56 = alloca i64
  %l63 = alloca i32
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca i64
  %l74 = alloca %"compiler/generic:Context"
  %l76 = alloca %"compiler/generic:Context"
  %l81 = alloca i32
  %l89 = alloca { i64, ptr }
  %l95 = alloca i1
  %l97 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l100 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca { i64, ptr }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l110 = alloca i1
  %l114 = alloca i1
  %l118 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l122 = alloca %"compiler/source:Span"
  %l126 = alloca { i64, ptr }
  %l128 = alloca %"compiler/diagmsg:Msg"
  %l129 = alloca i64
  %l132 = alloca i1
  %l144 = alloca { i64, ptr }
  %l150 = alloca i1
  %l153 = alloca i1
  %l156 = alloca i1
  %l159 = alloca i32
  %l161 = alloca ptr
  %l163 = alloca ptr
  %l168 = alloca i32
  %l172 = alloca i32
  %l177 = alloca [1 x i32]
  %l178 = alloca { i64, ptr }
  %l180 = alloca i1
  %l184 = alloca i1
  %l186 = alloca ptr
  %l188 = alloca %"compiler/source:Span"
  %l189 = alloca ptr
  %l191 = alloca %"compiler/source:Span"
  %l192 = alloca { i64, ptr }
  %l193 = alloca %"compiler/diagmsg:Msg"
  %l194 = alloca i64
  %l199 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l202 = alloca i64
  %l204 = alloca i64
  %l205 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l222 = alloca %"compiler/generic:Unmet"
  %l225 = alloca i1
  %l227 = alloca ptr
  %l229 = alloca %"compiler/source:Span"
  %l232 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l243 = alloca %"compiler/diagmsg:Msg"
  %l244 = alloca i64
  %s11 = alloca %olang.scope
  %t100 = alloca %"compiler/generic:Context", align 8
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
  store i1 true, ptr %l30, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l30, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l30, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:TypeDecl", ptr %t13, i32 0, i32 3
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l3, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  store ptr %t18, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t19 = load ptr, ptr %l36, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l36, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 5}
  %t25 = icmp eq i64 %t23, 2
  store i1 %t25, ptr %l37, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l37, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr { i64, [6 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t29, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr { i64, [6 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t35, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36
  store { i64, ptr } %t37, ptr %l5, !tbaa !27
  br label %bb11
bb10:
  br label %bb129
bb11:
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t43 = icmp eq i64 %t41, 0
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp eq i64 %t47, 0
  store i1 %t49, ptr %l47, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb14
bb14:
  %t51 = load i1, ptr %l47, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = getelementptr %"compiler/ast:TypeDecl", ptr %t57, i32 0, i32 0
  %t60 = load i32, ptr %t59, !tbaa !23
  %t64 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t55, i64 %t56, i32 %t60)
  store i64 %t64, ptr %l56
  br label %bb18
bb18:
  %t65 = load i64, ptr %l56, !tbaa !24
  store i64 %t65, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp slt i64 %t66, 0
  br i1 %t68, label %bb19, label %bb20
bb19:
  br label %ret
bb20:
  br label %bb21
bb21:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t79 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t73, i64 %t74, i64 %t75)
  store i32 %t79, ptr %l63
  br label %bb22
bb22:
  %t80 = load i32, ptr %l63, !tbaa !23
  store i32 %t80, ptr %l7, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l1, !tbaa !24
  %t83 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t81, i64 -1, i64 %t82, i32 %t83, i32 0)
  store ptr %t87, ptr %l67
  br label %bb23
bb23:
  %t88 = load ptr, ptr %l67, !tbaa !29
  store ptr %t88, ptr %l68, !tbaa !29
  %t90 = ptrtoint ptr %v0 to i64
  store i64 %t90, ptr %l69, !tbaa !24
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = call ptr @__olang_region_make(ptr %v0)
  %t94 = ptrtoint ptr %t93 to i64
  store i64 %t94, ptr %l69, !tbaa !24
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load i32, ptr %l7, !tbaa !23
  %t101 = load i64, ptr %l69
  %t102 = inttoptr i64 %t101 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %t100, ptr %v0, ptr %t102, ptr %t98, i32 %t99)
  call void @llvm.memmove.p0.p0.i64(ptr %l74, ptr %t100, i64 160, i1 false)
  br label %bb26
bb26:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load i64, ptr %l69
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t110 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t109, i32 0, i32 2
  %t111 = load { i64, ptr }, ptr %t110
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = call ptr @__olang_region_or(ptr %t112, ptr null)
  %t114 = icmp ne ptr %t113, null
  %t115 = select i1 %t114, ptr %t113, ptr null
  %t116 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t117 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t116, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr %t115
  %t123 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 3
  %t124 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t123, i32 0, i32 0
  %t125 = load { i64, ptr }, ptr %t124
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = icmp ne ptr %t127, null
  %t129 = select i1 %t128, ptr %t127, ptr %t122
  %t130 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t131 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t130, i32 0, i32 2
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr %t129
  %t137 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t138 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t137, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = call ptr @__olang_region_or(ptr %t140, ptr null)
  %t142 = icmp ne ptr %t141, null
  %t143 = select i1 %t142, ptr %t141, ptr %t136
  %t144 = getelementptr %"compiler/generic:Context", ptr %l74, i32 0, i32 2
  %t145 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t144, i32 0, i32 0
  %t146 = load { i64, ptr }, ptr %t145
  %t147 = extractvalue { i64, ptr } %t146, 1
  %t148 = call ptr @__olang_region_or(ptr %t147, ptr null)
  %t149 = icmp ne ptr %t148, null
  %t150 = select i1 %t149, ptr %t148, ptr %t143
  %t151 = icmp eq ptr %t150, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t151)
  br label %bb28
bb28:
  %t152 = load ptr, ptr %l68, !tbaa !29
  %t153 = getelementptr %"compiler/check:frame", ptr %t152, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l76, ptr %t153, i64 160, i1 false)
  %t154 = load ptr, ptr %l68, !tbaa !29
  %t155 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %l74, i64 160, i1 false)
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t156, label %bb29, label %bb30
bb29:
  %t158 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t158, i32 0, i32 2
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr null
  %t165 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t166 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t165, i32 0, i32 1
  %t167 = load { i64, ptr }, ptr %t166
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = call ptr @__olang_region_or(ptr %t168, ptr null)
  %t170 = icmp ne ptr %t169, null
  %t171 = select i1 %t170, ptr %t169, ptr %t164
  %t172 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t173 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t172, i32 0, i32 0
  %t174 = load { i64, ptr }, ptr %t173
  %t175 = extractvalue { i64, ptr } %t174, 1
  %t176 = call ptr @__olang_region_or(ptr %t175, ptr null)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr %t171
  %t179 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t180 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t179, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %t180
  %t182 = extractvalue { i64, ptr } %t181, 1
  %t183 = call ptr @__olang_region_or(ptr %t182, ptr null)
  %t184 = icmp ne ptr %t183, null
  %t185 = select i1 %t184, ptr %t183, ptr %t178
  %t186 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t187 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t186, i32 0, i32 1
  %t188 = load { i64, ptr }, ptr %t187
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr null)
  %t191 = icmp ne ptr %t190, null
  %t192 = select i1 %t191, ptr %t190, ptr %t185
  %t193 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t194 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t193, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = call ptr @__olang_region_or(ptr %t196, ptr null)
  %t198 = icmp ne ptr %t197, null
  %t199 = select i1 %t198, ptr %t197, ptr %t192
  call void @__olang_region_drop(ptr %t199)
  store %"compiler/generic:Context" zeroinitializer, ptr %l76
  br label %bb30
bb30:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/check:Checker", ptr %t200, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t204 = load i32, ptr %l7, !tbaa !23
  %t207 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l81
  br label %bb31
bb31:
  %t208 = load i32, ptr %l81, !tbaa !23
  store i32 %t208, ptr %l9, !tbaa !23
  store i1 false, ptr %l10, !tbaa !21
  %t209 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t209, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t211 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t211, 0
  store i64 %t213, ptr %l13, !tbaa !24
  br label %bb32
bb32:
  %t215 = load i64, ptr %l12, !tbaa !24
  %t216 = load i64, ptr %l13, !tbaa !24
  %t219 = icmp slt i64 %t215, %t216
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb33, label %bb34
bb33:
  br label %bb46
bb34:
  br label %bb35
bb35:
  %t223 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t223, ptr %l89, !tbaa !27
  %t224 = load i64, ptr %l12, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr ptr, ptr %t227, i64 %t224
  %t229 = load ptr, ptr %t228, !tbaa !39
  store ptr %t229, ptr %l14, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i64, ptr %l1, !tbaa !24
  %t233 = load ptr, ptr %l14, !tbaa !29
  %t237 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %t231, i64 %t232, ptr %t233)
  store i1 %t237, ptr %l95
  br label %bb36
bb36:
  %t238 = load i1, ptr %l95, !tbaa !21
  %t239 = xor i1 %t238, true
  br i1 %t239, label %bb37, label %bb38
bb37:
  %t241 = load ptr, ptr %l0, !tbaa !29
  store ptr %t241, ptr %l97, !tbaa !29
  %t242 = load ptr, ptr %l14, !tbaa !29
  %t244 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t242)
  store %"compiler/source:Span" %t244, ptr %l99
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l100, !tbaa !29
  %t246 = load ptr, ptr %l14, !tbaa !29
  %t248 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t246)
  store %"compiler/source:Span" %t248, ptr %l102
  br label %bb40
bb40:
  %t249 = load ptr, ptr %l100, !tbaa !29
  %t250 = load %"compiler/source:Span", ptr %l102
  %t251 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t249, %"compiler/source:Span" %t250)
  store { i64, ptr } %t251, ptr %l103
  br label %bb41
bb41:
  %t252 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t253 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsNotTrait(ptr %v0, ptr %v0, { i64, ptr } %t252)
  store %"compiler/diagmsg:Msg" %t253, ptr %l104
  br label %bb42
bb42:
  %t254 = load ptr, ptr %l97, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l99
  %t256 = load %"compiler/diagmsg:Msg", ptr %l104
  %t257 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t254, %"compiler/source:Span" %t255, %"compiler/diagmsg:Msg" %t256)
  store i64 %t257, ptr %l105
  br label %bb43
bb43:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t258 = load i64, ptr %l12, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l12, !tbaa !24
  br label %bb32
bb46:
  %t262 = load i1, ptr %l10, !tbaa !21
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb47, label %bb48
bb47:
  %t266 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t270 = icmp sgt i64 %t268, 0
  store i1 %t270, ptr %l110, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb49
bb49:
  %t272 = load i1, ptr %l110, !tbaa !21
  br i1 %t272, label %bb50, label %bb51
bb50:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i32, ptr %l7, !tbaa !23
  %t275 = load i32, ptr %l9, !tbaa !23
  %t279 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereachesTrait(ptr %v0, ptr %t273, i32 %t274, i32 %t275, i64 0)
  store i1 %t279, ptr %l118
  br label %bb52
bb51:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb53
bb52:
  %t280 = load i1, ptr %l118, !tbaa !21
  store i1 %t280, ptr %l114, !tbaa !21
  br label %bb53
bb53:
  %t281 = load i1, ptr %l114, !tbaa !21
  br i1 %t281, label %bb54, label %bb55
bb54:
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l119, !tbaa !29
  %t283 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t283, ptr %l120, !tbaa !27
  %t284 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = getelementptr ptr, ptr %t285, i64 0
  %t287 = load ptr, ptr %t286, !tbaa !39
  %t289 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t287)
  store %"compiler/source:Span" %t289, ptr %l122
  br label %bb56
bb55:
  br label %bb60
bb56:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load ptr, ptr %l2, !tbaa !29
  %t293 = getelementptr %"compiler/ast:TypeDecl", ptr %t291, i32 0, i32 0
  %t294 = load i32, ptr %t293, !tbaa !23
  %t297 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t290, i32 %t294)
  store { i64, ptr } %t297, ptr %l126
  br label %bb57
bb57:
  %t298 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 0
  %t300 = extractvalue { i64, ptr } %t298, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsItself(ptr %v0, ptr %v0, { i64, ptr } %t304)
  store %"compiler/diagmsg:Msg" %t306, ptr %l128
  br label %bb58
bb58:
  %t307 = load ptr, ptr %l119, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l122
  %t309 = load %"compiler/diagmsg:Msg", ptr %l128
  %t310 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t307, %"compiler/source:Span" %t308, %"compiler/diagmsg:Msg" %t309)
  store i64 %t310, ptr %l129
  br label %bb59
bb59:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb60
bb60:
  %t311 = load i1, ptr %l10, !tbaa !21
  %t313 = xor i1 %t311, true
  br i1 %t313, label %bb61, label %bb62
bb61:
  %t315 = load ptr, ptr %l2, !tbaa !29
  %t317 = getelementptr %"compiler/ast:TypeDecl", ptr %t315, i32 0, i32 1
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t322 = icmp eq i64 %t320, 0
  store i1 %t322, ptr %l132, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb63
bb63:
  %t324 = load i1, ptr %l132, !tbaa !21
  store i1 %t324, ptr %l15, !tbaa !21
  %t325 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t325, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t327 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t327, 0
  store i64 %t329, ptr %l18, !tbaa !24
  br label %bb64
bb64:
  store %olang.scope zeroinitializer, ptr %s11
  %t331 = load i64, ptr %l17, !tbaa !24
  %t332 = load i64, ptr %l18, !tbaa !24
  %t335 = icmp slt i64 %t331, %t332
  %t337 = xor i1 %t335, true
  br i1 %t337, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s11)
  br label %bb127
bb66:
  br label %bb67
bb67:
  %t339 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t339, ptr %l144, !tbaa !27
  %t340 = load i64, ptr %l17, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr ptr, ptr %t343, i64 %t340
  %t345 = load ptr, ptr %t344, !tbaa !39
  store ptr %t345, ptr %l19, !tbaa !29
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load i64, ptr %l1, !tbaa !24
  %t349 = load ptr, ptr %l19, !tbaa !29
  %t353 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %t347, i64 %t348, ptr %t349)
  store i1 %t353, ptr %l150
  br label %bb68
bb68:
  %t354 = load i1, ptr %l150, !tbaa !21
  store i1 %t354, ptr %l20, !tbaa !21
  %t355 = load i1, ptr %l20, !tbaa !21
  %t357 = xor i1 %t355, true
  br i1 %t357, label %bb69, label %bb70
bb69:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load ptr, ptr %l19, !tbaa !29
  %t363 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %t359, ptr %t360, i1 true)
  store i1 %t363, ptr %l156
  br label %bb71
bb70:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb72
bb71:
  %t364 = load i1, ptr %l156, !tbaa !21
  %t365 = xor i1 %t364, true
  store i1 %t365, ptr %l153, !tbaa !21
  br label %bb72
bb72:
  %t367 = load i1, ptr %l153, !tbaa !21
  br i1 %t367, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s11)
  br label %bb126
bb74:
  br label %bb75
bb75:
  %t368 = load i1, ptr %l20, !tbaa !21
  br i1 %t368, label %bb76, label %bb77
bb76:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/check:Checker", ptr %t370, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !29
  store ptr %t373, ptr %l161, !tbaa !29
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t374)
  store ptr %t376, ptr %l163
  br label %bb78
bb77:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l19, !tbaa !29
  %t382 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t377, ptr %t378)
  store i32 %t382, ptr %l172
  br label %bb80
bb78:
  %t383 = load ptr, ptr %l163, !tbaa !29
  %t385 = getelementptr %"compiler/check:frame", ptr %t383, i32 0, i32 4
  %t386 = load ptr, ptr %l19, !tbaa !29
  %t388 = load ptr, ptr %l161, !tbaa !29
  %t391 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t388, ptr %t385, ptr %t386)
  store i32 %t391, ptr %l168
  br label %bb79
bb79:
  %t392 = load i32, ptr %l168, !tbaa !23
  store i32 %t392, ptr %l159, !tbaa !23
  br label %bb81
bb80:
  %t393 = load i32, ptr %l172, !tbaa !23
  store i32 %t393, ptr %l159, !tbaa !23
  br label %bb81
bb81:
  %t394 = load i32, ptr %l159, !tbaa !23
  store i32 %t394, ptr %l21, !tbaa !23
  %t395 = load i32, ptr %l21, !tbaa !23
  %t396 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t399 = icmp eq i32 %t395, %t396
  br i1 %t399, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s11)
  br label %bb126
bb83:
  br label %bb84
bb84:
  %t401 = load i32, ptr %l21, !tbaa !23
  %t403 = insertvalue [1 x i32] undef, i32 %t401, 0
  store [1 x i32] %t403, ptr %l177
  %t404 = mul i64 1, 4
  %t405 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t404)
  %t406 = insertvalue { i64, ptr } undef, i64 1, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  store { i64, ptr } %t407, ptr %l178, !tbaa !27
  %t408 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = mul i64 1, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t409, ptr %l177, i64 %t410, i1 false)
  %t411 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t411, ptr %l22, !tbaa !27
  %t412 = load i1, ptr %l20, !tbaa !21
  br i1 %t412, label %bb85, label %bb86
bb85:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/check:Checker", ptr %t414, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !29
  %t418 = load i32, ptr %l21, !tbaa !23
  %t421 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t417, i32 %t418)
  store i1 %t421, ptr %l184
  br label %bb87
bb86:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb88
bb87:
  %t422 = load i1, ptr %l184, !tbaa !21
  %t423 = xor i1 %t422, true
  store i1 %t423, ptr %l180, !tbaa !21
  br label %bb88
bb88:
  %t425 = load i1, ptr %l180, !tbaa !21
  br i1 %t425, label %bb89, label %bb90
bb89:
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l186, !tbaa !29
  %t427 = load ptr, ptr %l19, !tbaa !29
  %t429 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t427)
  store %"compiler/source:Span" %t429, ptr %l188
  br label %bb91
bb90:
  br label %bb96
bb91:
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l189, !tbaa !29
  %t431 = load ptr, ptr %l19, !tbaa !29
  %t433 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t431)
  store %"compiler/source:Span" %t433, ptr %l191
  br label %bb92
bb92:
  %t434 = load ptr, ptr %l189, !tbaa !29
  %t435 = load %"compiler/source:Span", ptr %l191
  %t436 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t434, %"compiler/source:Span" %t435)
  store { i64, ptr } %t436, ptr %l192
  br label %bb93
bb93:
  %t437 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t438 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberOpen(ptr %v0, ptr %v0, { i64, ptr } %t437)
  store %"compiler/diagmsg:Msg" %t438, ptr %l193
  br label %bb94
bb94:
  %t439 = load ptr, ptr %l186, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l188
  %t441 = load %"compiler/diagmsg:Msg", ptr %l193
  %t442 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t439, %"compiler/source:Span" %t440, %"compiler/diagmsg:Msg" %t441)
  store i64 %t442, ptr %l194
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s11)
  br label %bb126
bb96:
  %t443 = load i1, ptr %l20, !tbaa !21
  br i1 %t443, label %bb97, label %bb98
bb97:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/check:Checker", ptr %t445, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t449 = load i32, ptr %l21, !tbaa !23
  %t452 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t448, i32 %t449)
  store { i64, ptr } %t452, ptr %l199
  br label %bb99
bb98:
  br label %bb103
bb99:
  %t453 = load { i64, ptr }, ptr %l199, !tbaa !27
  store { i64, ptr } %t453, ptr %l200, !tbaa !27
  %t454 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t454, 0
  %t456 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t456, 0
  store i64 %t457, ptr %l202, !tbaa !24
  %t459 = load i64, ptr %l202, !tbaa !24
  %t460 = icmp eq i64 %t455, %t459
  br i1 %t460, label %bb100, label %bb101
bb100:
  %t462 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = load i64, ptr %l202, !tbaa !24
  %t467 = mul i64 %t466, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t463, ptr %t465, i64 %t467, i1 false)
  br label %bb102
bb101:
  %t468 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t468, 0
  store i64 %t469, ptr %l204, !tbaa !24
  %t470 = load i64, ptr %l204, !tbaa !24
  %t471 = mul i64 %t470, 4
  %t472 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t471)
  %t473 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t472, 1
  store { i64, ptr } %t474, ptr %l205, !tbaa !27
  %t475 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !27
  %t477 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !27
  %t479 = load i64, ptr %l204, !tbaa !24
  %t480 = mul i64 %t479, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t476, ptr %t478, i64 %t480, i1 false)
  %t481 = load { i64, ptr }, ptr %l205, !tbaa !27
  store { i64, ptr } %t481, ptr %l22, !tbaa !27
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t482 = load i1, ptr %l15, !tbaa !21
  %t484 = xor i1 %t482, true
  br i1 %t484, label %bb104, label %bb105
bb104:
  call void @__olang_scope_close(ptr %s11)
  br label %bb126
bb105:
  br label %bb106
bb106:
  %t486 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t486, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t488 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t488, 0
  store i64 %t490, ptr %l25, !tbaa !24
  br label %bb107
bb107:
  %t492 = load i64, ptr %l24, !tbaa !24
  %t493 = load i64, ptr %l25, !tbaa !24
  %t496 = icmp slt i64 %t492, %t493
  %t498 = xor i1 %t496, true
  br i1 %t498, label %bb108, label %bb109
bb108:
  br label %bb125
bb109:
  br label %bb110
bb110:
  %t500 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t500, ptr %l215, !tbaa !27
  %t501 = load i64, ptr %l24, !tbaa !24
  %t503 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t504 = load ptr, ptr %t503, !tbaa !27
  %t505 = getelementptr i32, ptr %t504, i64 %t501
  %t506 = load i32, ptr %t505, !tbaa !33
  store i32 %t506, ptr %l26, !tbaa !23
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/check:Checker", ptr %t508, i32 0, i32 1
  %t511 = load ptr, ptr %t510, !tbaa !29
  %t512 = load i32, ptr %l26, !tbaa !23
  %t513 = load i32, ptr %l9, !tbaa !23
  %t517 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t511, i32 %t512, i32 %t513, i1 false, i64 0)
  store %"compiler/generic:Unmet" %t517, ptr %l222
  br label %bb111
bb111:
  %t518 = load %"compiler/generic:Unmet", ptr %l222
  store %"compiler/generic:Unmet" %t518, ptr %l27
  %t519 = getelementptr %"compiler/generic:Unmet", ptr %l27, i32 0, i32 0
  %t520 = load i64, ptr %t519, !tbaa !24
  %t522 = icmp sge i64 %t520, 0
  br i1 %t522, label %bb112, label %bb113
bb112:
  %t524 = getelementptr %"compiler/generic:Unmet", ptr %l27, i32 0, i32 3
  %t525 = load i1, ptr %t524, !tbaa !21
  store i1 %t525, ptr %l225, !tbaa !21
  br label %bb114
bb113:
  store i1 false, ptr %l225, !tbaa !21
  br label %bb114
bb114:
  %t527 = load i1, ptr %l225, !tbaa !21
  br i1 %t527, label %bb115, label %bb116
bb115:
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l227, !tbaa !29
  %t529 = load ptr, ptr %l19, !tbaa !29
  %t531 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t529)
  store %"compiler/source:Span" %t531, ptr %l229
  br label %bb117
bb116:
  br label %bb123
bb117:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i32, ptr %l26, !tbaa !23
  %t536 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t532, i32 %t533)
  store { i64, ptr } %t536, ptr %l232
  br label %bb118
bb118:
  %t537 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 0
  %t539 = extractvalue { i64, ptr } %t537, 1
  %t540 = mul i64 %t538, 1
  %t541 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t540)
  call void @llvm.memcpy.p0.p0.i64(ptr %t541, ptr %t539, i64 %t540, i1 false)
  %t542 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t541, 1
  store { i64, ptr } %t543, ptr %l233, !tbaa !27
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = load ptr, ptr %l2, !tbaa !29
  %t547 = getelementptr %"compiler/ast:TypeDecl", ptr %t545, i32 0, i32 0
  %t548 = load i32, ptr %t547, !tbaa !23
  %t551 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t544, i32 %t548)
  store { i64, ptr } %t551, ptr %l237
  br label %bb119
bb119:
  %t552 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t553 = extractvalue { i64, ptr } %t552, 0
  %t554 = extractvalue { i64, ptr } %t552, 1
  %t555 = mul i64 %t553, 1
  %t556 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t555)
  call void @llvm.memcpy.p0.p0.i64(ptr %t556, ptr %t554, i64 %t555, i1 false)
  %t557 = insertvalue { i64, ptr } undef, i64 %t553, 0
  %t558 = insertvalue { i64, ptr } %t557, ptr %t556, 1
  store { i64, ptr } %t558, ptr %l238, !tbaa !27
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t560 = getelementptr %"compiler/generic:Unmet", ptr %l27, i32 0, i32 2
  %t561 = load i32, ptr %t560, !tbaa !23
  %t564 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t559, i32 %t561)
  store { i64, ptr } %t564, ptr %l241
  br label %bb120
bb120:
  %t565 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t566 = extractvalue { i64, ptr } %t565, 0
  %t567 = extractvalue { i64, ptr } %t565, 1
  %t568 = mul i64 %t566, 1
  %t569 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t568)
  call void @llvm.memcpy.p0.p0.i64(ptr %t569, ptr %t567, i64 %t568, i1 false)
  %t570 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t571 = insertvalue { i64, ptr } %t570, ptr %t569, 1
  %t572 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t573 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t575 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberMissing(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t572, { i64, ptr } %t573, { i64, ptr } %t571)
  store %"compiler/diagmsg:Msg" %t575, ptr %l243
  br label %bb121
bb121:
  %t576 = load ptr, ptr %l227, !tbaa !29
  %t577 = load %"compiler/source:Span", ptr %l229
  %t578 = load %"compiler/diagmsg:Msg", ptr %l243
  %t579 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t576, %"compiler/source:Span" %t577, %"compiler/diagmsg:Msg" %t578)
  store i64 %t579, ptr %l244
  br label %bb122
bb122:
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t580 = load i64, ptr %l24, !tbaa !24
  %t582 = add i64 %t580, 1
  store i64 %t582, ptr %l24, !tbaa !24
  br label %bb107
bb125:
  call void @__olang_scope_close(ptr %s11)
  br label %bb126
bb126:
  %t584 = load i64, ptr %l17, !tbaa !24
  %t586 = add i64 %t584, 1
  store i64 %t586, ptr %l17, !tbaa !24
  br label %bb64
bb127:
  %t588 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t588)
  br label %bb128
bb128:
  br label %bb134
bb129:
  br i1 true, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb134
bb133:
  call void @__olang_check_failed(ptr @olang_loc_21d2c8212e1ec20a_d97fbaae9e5bc606)
  unreachable
bb134:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeArgCountMet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, %"compiler/names:Ref" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/names:Ref"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i32
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l41 = alloca i1
  %l45 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l52 = alloca %"compiler/source:Span"
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l62 = alloca i1
  %l67 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l80 = alloca i1
  %l83 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l92 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca i64
  %l109 = alloca i64
  %l112 = alloca i64
  %l130 = alloca { i64, ptr }
  %l133 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca i64
  %l140 = alloca ptr
  %l141 = alloca { i64, ptr }
  %l144 = alloca %"compiler/source:Span"
  %l145 = alloca { i64, [3 x i64] }
  %l146 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store %"compiler/names:Ref" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 1
  %t6 = load i64, ptr %t5, !tbaa !24
  %t7 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t12 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t4, i64 %t6, i64 %t8)
  store i32 %t12, ptr %l19
  br label %bb1
bb1:
  %t13 = load i32, ptr %l19, !tbaa !23
  store i32 %t13, ptr %l4, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t19, i32 %t20)
  store i64 %t23, ptr %l24
  br label %bb2
bb2:
  %t24 = load i64, ptr %l24, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t26, ptr %l26, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = sub i64 %t29, 1
  %t33 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i32, ptr %t34, i64 %t31
  %t36 = load i32, ptr %t35, !tbaa !33
  %t39 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t25, i32 %t36)
  store { i64, ptr } %t39, ptr %l31
  br label %bb3
bb3:
  %t40 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  store i64 %t43, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb4, label %bb5
bb4:
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t49, ptr %l37, !tbaa !27
  %t50 = load i64, ptr %l7, !tbaa !24
  %t52 = sub i64 %t50, 1
  %t54 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = call i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v2, ptr %t57)
  store i1 %t59, ptr %l41
  br label %bb6
bb5:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb7
bb6:
  %t60 = load i1, ptr %l41, !tbaa !21
  store i1 %t60, ptr %l36, !tbaa !21
  br label %bb7
bb7:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb8, label %bb9
bb8:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load i32, ptr %l4, !tbaa !23
  %t69 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t65, i32 %t66)
  store i1 %t69, ptr %l45
  br label %bb10
bb9:
  br label %bb17
bb10:
  %t70 = load i1, ptr %l45, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb11, label %bb12
bb11:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l47, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l48, !tbaa !27
  %t75 = load i64, ptr %l7, !tbaa !24
  %t77 = sub i64 %t75, 1
  %t79 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 %t77
  %t82 = load ptr, ptr %t81, !tbaa !39
  %t84 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t82)
  store %"compiler/source:Span" %t84, ptr %l52
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t85 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t87 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrSetArgUnwanted(ptr %v0, ptr %v0, { i64, ptr } %t85)
  store %"compiler/diagmsg:Msg" %t87, ptr %l54
  br label %bb14
bb14:
  %t88 = load ptr, ptr %l47, !tbaa !29
  %t89 = load %"compiler/source:Span", ptr %l52
  %t90 = load %"compiler/diagmsg:Msg", ptr %l54
  %t91 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t88, %"compiler/source:Span" %t89, %"compiler/diagmsg:Msg" %t90)
  store i64 %t91, ptr %l55
  br label %bb15
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = sub i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load i32, ptr %l4, !tbaa !23
  %t104 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t100, i32 %t101)
  store i1 %t104, ptr %l62
  br label %bb18
bb18:
  %t105 = load i1, ptr %l62, !tbaa !21
  br i1 %t105, label %bb19, label %bb20
bb19:
  %t106 = load i64, ptr %l5, !tbaa !24
  %t108 = sub i64 %t106, 1
  store i64 %t108, ptr %l5, !tbaa !24
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t110 = load i64, ptr %l5, !tbaa !24
  %t112 = icmp eq i64 %t110, 0
  br i1 %t112, label %bb22, label %bb23
bb22:
  %t114 = load i64, ptr %l7, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  store i1 %t116, ptr %l67, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t118 = load i1, ptr %l67, !tbaa !21
  br i1 %t118, label %bb25, label %bb26
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l70, !tbaa !29
  %t120 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t120, ptr %l71, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 0
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t124)
  store %"compiler/source:Span" %t126, ptr %l73
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t127 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t129 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsOnNonGeneric(ptr %v0, ptr %v0, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t129, ptr %l75
  br label %bb28
bb28:
  %t130 = load ptr, ptr %l70, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l73
  %t132 = load %"compiler/diagmsg:Msg", ptr %l75
  %t133 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t130, %"compiler/source:Span" %t131, %"compiler/diagmsg:Msg" %t132)
  store i64 %t133, ptr %l76
  br label %bb29
bb29:
  store i1 false, ptr %rv
  br label %ret
bb30:
  %t135 = load i64, ptr %l5, !tbaa !24
  %t137 = icmp sgt i64 %t135, 0
  br i1 %t137, label %bb31, label %bb32
bb31:
  %t139 = load i64, ptr %l7, !tbaa !24
  %t141 = icmp sgt i64 %t139, 0
  store i1 %t141, ptr %l80, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb33
bb33:
  %t143 = load i1, ptr %l80, !tbaa !21
  br i1 %t143, label %bb34, label %bb35
bb34:
  %t144 = load i64, ptr %l5, !tbaa !24
  %t145 = load i64, ptr %l7, !tbaa !24
  %t148 = icmp ne i64 %t144, %t145
  store i1 %t148, ptr %l83, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb36
bb36:
  %t150 = load i1, ptr %l83, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb37, label %bb38
bb37:
  store i1 true, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l89, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t155, ptr %l90, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr ptr, ptr %t157, i64 0
  %t159 = load ptr, ptr %t158, !tbaa !39
  %t161 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t159)
  store %"compiler/source:Span" %t161, ptr %l92
  br label %bb40
bb40:
  %t162 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t163 = load i64, ptr %l5, !tbaa !24
  %t164 = load i64, ptr %l7, !tbaa !24
  %t168 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v0, { i64, ptr } %t162, i64 %t163, i64 %t164)
  store %"compiler/diagmsg:Msg" %t168, ptr %l96
  br label %bb41
bb41:
  %t169 = load ptr, ptr %l89, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l92
  %t171 = load %"compiler/diagmsg:Msg", ptr %l96
  %t172 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t169, %"compiler/source:Span" %t170, %"compiler/diagmsg:Msg" %t171)
  store i64 %t172, ptr %l97
  br label %bb42
bb42:
  %t173 = load i64, ptr %l97, !tbaa !24
  store i64 %t173, ptr %l8, !tbaa !24
  %t174 = load i64, ptr %l5, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t180 = icmp sge i64 %t174, %t177
  br i1 %t180, label %bb43, label %bb44
bb43:
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  store i64 0, ptr %l9, !tbaa !24
  %t183 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t187 = sub i64 %t185, 1
  store i64 %t187, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t189 = load i64, ptr %l10, !tbaa !24
  %t190 = load i64, ptr %l9, !tbaa !24
  %t193 = icmp sgt i64 %t189, %t190
  br i1 %t193, label %bb46, label %bb47
bb46:
  %t195 = load i64, ptr %l11, !tbaa !24
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb51
bb48:
  %t199 = load i64, ptr %l10, !tbaa !24
  %t200 = load i64, ptr %l9, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t204 = load i64, ptr %l11, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sub i64 %t207, 1
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = sdiv i64 %t209, %t210
  store i64 %t213, ptr %l112, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb50
bb50:
  %t215 = load i64, ptr %l112, !tbaa !24
  store i64 %t215, ptr %l109, !tbaa !24
  br label %bb51
bb51:
  %t216 = load i64, ptr %l109, !tbaa !24
  store i64 %t216, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb52
bb52:
  %t217 = load i64, ptr %l13, !tbaa !24
  %t218 = load i64, ptr %l12, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb53, label %bb54
bb53:
  br label %bb65
bb54:
  br label %bb55
bb55:
  %t225 = load i64, ptr %l9, !tbaa !24
  %t226 = load i64, ptr %l13, !tbaa !24
  %t227 = load i64, ptr %l11, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  store i64 %t233, ptr %l14, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t235, ptr %l130, !tbaa !27
  %t236 = load i64, ptr %l14, !tbaa !24
  %t238 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr ptr, ptr %t239, i64 %t236
  %t241 = load ptr, ptr %t240, !tbaa !39
  %t243 = call i1 @compiler_2fcheck_2eisFuncTypeRef(ptr %v2, ptr %t241)
  store i1 %t243, ptr %l133
  br label %bb56
bb56:
  %t244 = load i1, ptr %l133, !tbaa !21
  %t245 = xor i1 %t244, true
  br i1 %t245, label %bb57, label %bb58
bb57:
  br label %bb64
bb58:
  br label %bb59
bb59:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 0
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t255 = getelementptr %"compiler/load:Loader", ptr %t253, i32 0, i32 4
  %t256 = load ptr, ptr %t255, !tbaa !29
  store ptr %t256, ptr %l138, !tbaa !29
  %t257 = load i64, ptr %l8, !tbaa !24
  store i64 %t257, ptr %l139, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l140, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t259, ptr %l141, !tbaa !27
  %t260 = load i64, ptr %l14, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr ptr, ptr %t263, i64 %t260
  %t265 = load ptr, ptr %t264, !tbaa !39
  %t267 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t265)
  store %"compiler/source:Span" %t267, ptr %l144
  br label %bb60
bb60:
  %t268 = load ptr, ptr %l140, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l144
  %t270 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t268, %"compiler/source:Span" %t269)
  store { i64, [3 x i64] } %t270, ptr %l145
  br label %bb61
bb61:
  %t271 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGroupFunctionType(ptr %v0)
  store %"compiler/diagmsg:Msg" %t271, ptr %l146
  br label %bb62
bb62:
  %t272 = load ptr, ptr %l138, !tbaa !29
  %t273 = load i64, ptr %l139, !tbaa !24
  %t274 = load { i64, [3 x i64] }, ptr %l145
  %t275 = load %"compiler/diagmsg:Msg", ptr %l146
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t272, i64 %t273, { i64, [3 x i64] } %t274, %"compiler/diagmsg:Msg" %t275)
  br label %bb63
bb63:
  br label %bb65
bb64:
  %t276 = load i64, ptr %l13, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l13, !tbaa !24
  br label %bb52
bb65:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
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
  br label %ret
bb16:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t45, ptr %l27
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store { i64, ptr } %t50, ptr %l30
  br label %bb17
bb17:
  %t51 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 0
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueFill(ptr %v0, ptr %v0, { i64, ptr } %t57)
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
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l31 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t15, ptr %l8, !tbaa !27
  br label %bb28
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t18 = load ptr, ptr %l15, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 5}
  %t24 = icmp eq i64 %t22, 4
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t26, ptr %l8, !tbaa !27
  br label %bb28
bb12:
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t29 = load ptr, ptr %l21, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 5}
  %t35 = icmp eq i64 %t33, 3
  store i1 %t35, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l22, !tbaa !21
  br i1 %t36, label %bb15, label %bb16
bb15:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr { i64, [6 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { ptr, ptr }, ptr %t39, i32 0, i32 0
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l3, !tbaa !29
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t43 = load ptr, ptr %l3, !tbaa !29
  store ptr %t43, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb18, label %bb19
bb18:
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 1
  store i1 %t50, ptr %l28, !tbaa !21
  br label %bb19
bb19:
  %t51 = load i1, ptr %l28, !tbaa !21
  br i1 %t51, label %bb20, label %bb21
bb20:
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr { i64, [5 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", ptr }, ptr %t54, i32 0, i32 0
  %t56 = load %"compiler/source:Span", ptr %t55
  store %"compiler/source:Span" %t56, ptr %l4
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr }, ptr %t60, i32 0, i32 1
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t64, ptr %l31, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t66, ptr %l31, !tbaa !27
  br label %bb22
bb22:
  %t68 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t68, ptr %l8, !tbaa !27
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t69, ptr %l8, !tbaa !27
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1ef5225cc090d9b9_51641959a5947e05)
  unreachable
bb28:
  %t71 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l42, !tbaa !24
  %t73 = load i64, ptr %l42, !tbaa !24
  %t74 = mul i64 %t73, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l43, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l42, !tbaa !24
  %t83 = mul i64 %t82, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t79, ptr %t81, i64 %t83, i1 false)
  %t84 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t84, ptr %l8, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %l29 = alloca i1
  %l34 = alloca i1
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i32
  %l49 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i64
  %l58 = alloca i64
  %l68 = alloca i32
  %l73 = alloca i32
  %l76 = alloca ptr
  %l81 = alloca i32
  %l90 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
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
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l13, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l1, !tbaa !23
  %t14 = icmp eq i32 %t12, 0
  store i1 %t14, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l17, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l23
  br label %bb9
bb9:
  %t22 = load i1, ptr %l23, !tbaa !21
  store i1 %t22, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l20, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb14
bb12:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 70
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l28
  br label %bb13
bb13:
  %t31 = load i1, ptr %l28, !tbaa !21
  store i1 %t31, ptr %l24, !tbaa !21
  br label %bb14
bb14:
  %t32 = load i1, ptr %l24, !tbaa !21
  br i1 %t32, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb18
bb16:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %t38, i32 %t39)
  store i1 %t42, ptr %l34
  br label %bb17
bb17:
  %t43 = load i1, ptr %l34, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l29, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  br label %ret
bb20:
  br label %bb21
bb21:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 70
  %t50 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t49, i32 %t50, i1 true)
  br label %bb22
bb22:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l43
  br label %bb23
bb23:
  %t63 = load i1, ptr %l43, !tbaa !21
  br i1 %t63, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l45, !tbaa !29
  %t68 = load i32, ptr %l1, !tbaa !23
  store i32 %t68, ptr %l46, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = getelementptr %"compiler/types:Table", ptr %t74, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  store ptr %t76, ptr %l49, !tbaa !29
  %t77 = load ptr, ptr %l49, !tbaa !29
  %t78 = call ptr @__olang_scope_of(ptr %t77, ptr null)
  %t79 = ptrtoint ptr %t78 to i64
  %t81 = inttoptr i64 %t79 to ptr
  %t82 = load ptr, ptr %l49, !tbaa !29
  %t83 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t81, ptr %s2, ptr %t82, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i32 %t83, ptr %l51
  br label %bb26
bb25:
  br label %bb36
bb26:
  %t84 = load ptr, ptr %l45, !tbaa !29
  %t85 = load i32, ptr %l46, !tbaa !23
  %t86 = load i32, ptr %l51, !tbaa !23
  %t87 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t84, i32 %t85, i32 %t86)
  store i64 %t87, ptr %l52
  br label %bb27
bb27:
  %t88 = load i64, ptr %l52, !tbaa !24
  store i64 %t88, ptr %l3, !tbaa !24
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = icmp slt i64 %t89, 0
  br i1 %t91, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb29:
  br label %bb30
bb30:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l3, !tbaa !24
  %t95 = load i32, ptr %l1, !tbaa !23
  %t99 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodInstance(ptr %v0, ptr %t93, i64 %t94, i32 %t95)
  store i64 %t99, ptr %l58
  br label %bb31
bb31:
  %t100 = load i64, ptr %l58, !tbaa !24
  store i64 %t100, ptr %l4, !tbaa !24
  %t101 = load i64, ptr %l4, !tbaa !24
  %t103 = icmp sge i64 %t101, 0
  br i1 %t103, label %bb32, label %bb33
bb32:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 69
  %t108 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t107, i64 %t108)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb36:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l1, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l68
  br label %bb37
bb37:
  %t121 = load i32, ptr %l68, !tbaa !23
  store i32 %t121, ptr %l5, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 2
  %t128 = load i32, ptr %l5, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l73
  br label %bb38
bb38:
  %t132 = load i32, ptr %l73, !range !{i32 0, i32 33}
  store i32 %t132, ptr %l6
  %t133 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t135 = trunc i64 19 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l76, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l5, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l81
  br label %bb42
bb42:
  %t149 = load i64, ptr %l2, !tbaa !24
  %t151 = add i64 %t149, 1
  %t152 = load ptr, ptr %l76, !tbaa !29
  %t153 = load i32, ptr %l81, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t152, i32 %t153, i64 %t151)
  br label %bb43
bb43:
  br label %bb69
bb44:
  %t155 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t157 = trunc i64 22 to i32
  %t158 = icmp eq i32 %t155, %t157
  br i1 %t158, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  %t160 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t162 = trunc i64 23 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb59
bb49:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/check:Checker", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/generic:Program", ptr %t168, i32 0, i32 2
  store ptr %t170, ptr %l90, !tbaa !29
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l5, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l95
  br label %bb50
bb50:
  %t181 = load ptr, ptr %l90, !tbaa !29
  %t182 = load i32, ptr %l95, !tbaa !23
  %t183 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t181, i32 %t182)
  store { i64, ptr } %t183, ptr %l96
  br label %bb51
bb51:
  %t184 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t184, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t185 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t185, 0
  store i64 %t187, ptr %l9, !tbaa !24
  br label %bb52
bb52:
  %t189 = load i64, ptr %l8, !tbaa !24
  %t190 = load i64, ptr %l9, !tbaa !24
  %t193 = icmp slt i64 %t189, %t190
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb53, label %bb54
bb53:
  br label %bb58
bb54:
  br label %bb55
bb55:
  %t197 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t197, ptr %l103, !tbaa !27
  %t198 = load i64, ptr %l8, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr i32, ptr %t201, i64 %t198
  %t203 = load i32, ptr %t202, !tbaa !33
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l2, !tbaa !24
  %t209 = add i64 %t207, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t205, i32 %t203, i64 %t209)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t213 = load i64, ptr %l8, !tbaa !24
  %t215 = add i64 %t213, 1
  store i64 %t215, ptr %l8, !tbaa !24
  br label %bb52
bb58:
  br label %bb69
bb59:
  %t217 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t219 = trunc i64 18 to i32
  %t220 = icmp eq i32 %t217, %t219
  br i1 %t220, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l5, !tbaa !23
  %t224 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopyParts(ptr %v0, ptr %t222, i32 %t223, i64 %t224)
  br label %bb63
bb63:
  br label %bb69
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_4c67a4e0f39ce0e6_aa4d8ec9734e07a2)
  unreachable
bb69:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2esome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l21 = alloca i1
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
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l5, !tbaa !23
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %v0, ptr %v2, ptr %a0, i32 %t28)
  store i1 %t31, ptr %l21
  br label %bb7
bb6:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervText(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l4 = alloca %"compiler/check:reflVal"
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr @G_2ecompiler_2fcheck_2eRvText, !tbaa !24
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t7 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 true, i64 %t1, i64 0, { i64, ptr } %a0, i32 %t3)
  store %"compiler/check:reflVal" %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = load %"compiler/check:reflVal", ptr %l4
  store %"compiler/check:reflVal" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local ptr @compiler_2fcheck_2ewholeTemp(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_fcf37abe830e2966_4b106c75c56f483a)
  unreachable
bb11:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"HasAttr" }>, align 8
@.d2 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"attrMissing" }>, align 8
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
@.d4 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"attrGot" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fcheck_3aChecker_2e50 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"u:" }>, align 8
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
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aUnrollAsk_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Iter" }>, align 8
@.d9 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"an array with no Iter" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"len" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Get" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Set" }>, align 8
@.d20 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SliceOf" }>, align 8
@.d21 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Narrow" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Atomic" }>, align 8
@.d24 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Value" }>, align 8
@.d25 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"instantiated here" }>, align 8
@.d26 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", with " }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Some" }>, align 8
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Every" }>, align 8
@.d31 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Narrow" }>, align 8
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"vacate" }>, align 8
@.d33 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"occupy" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d38 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"a method the compiler supplies (E10b, E11c)" }>, align 8
@.d39 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"PadStart" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"PadEnd" }>, align 8
@.d41 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"no parameters" }>, align 8
@.d42 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"one parameter" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d43 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" parameters" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"one" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d46 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"at least " }>, align 8
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

@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" - declare 'fn (x " }>, align 8
@.d49 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c") Pow(y E) " }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d52 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d53 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
define available_externally void @__olang_scope_escape(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %un = icmp eq ptr %o, null
  br i1 %un, label %claim, label %done
claim:
  %me = load ptr, ptr @__olang_self
  store atomic ptr %me, ptr %op monotonic, align 8
  br label %done
done:
  ret void
}
define internal i64 @olang_lambda_54(ptr %env, i32 %a0) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i64
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eViewsOf(ptr %vc0, ptr %cv0, i32 %a0)
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

define internal i64 @olang_lambda_55(ptr %env, i32 %a0) #0 {
entry:
  %l2 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %rv = alloca i64
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %cv0, i32 0, i32 77
  %t6 = sext i32 %a0 to i64
  %t9 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %vc0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l8
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l7
  br label %bb1
bb1:
  %t14 = load i64, ptr %l7, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d56 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a trait" }>, align 8
@.d57 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"an extern type" }>, align 8
@.d58 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a function type" }>, align 8
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d61 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
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
@__olang_self = external thread_local(initialexec) global ptr
define available_externally ptr @__olang_capture_scope(ptr %s) alwaysinline {
entry:
  %isprog = icmp eq ptr %s, null
  br i1 %isprog, label %prog, label %mine
prog:
  %p = load ptr, ptr @__olang_prog_scope
  ret ptr %p
mine:
  %m = call ptr @__olang_scope_mine(ptr %s)
  ret ptr %m
}
define available_externally ptr @__olang_scope_mine(ptr %s) alwaysinline {
entry:
  %op = getelementptr %olang.scope, ptr %s, i32 0, i32 3
  %o = load atomic ptr, ptr %op monotonic, align 8
  %me = load ptr, ptr @__olang_self
  %own = icmp eq ptr %o, %me
  br i1 %own, label %mine, label %slow
mine:
  ret ptr %s
slow:
  %r = call ptr @__olang_scope_mine_slow(ptr %s)
  ret ptr %r
}
declare ptr @__olang_scope_mine_slow(ptr) noinline
@olang_loc_335172168044531c_a265ad00fca232a0 = external constant [0 x i8]
@olang_loc_b70a8dfc847e84e9_67f505336baa0acd = external constant [0 x i8]
@olang_loc_877bc023f9996aa_af9d54b66b552ace = external constant [0 x i8]
@olang_loc_f2ae8e4f065119d8_ce403641066c9de4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, i32 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrFound(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeFn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_f2dfd4e2b2620e71_dbe725d38eafc295 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_f2b973fcab239364_d01bf2cd68c3b6a8 = external constant [0 x i8]
@olang_loc_1778b9e962c2fcc7_ba3812a15af6740b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_37018c2ebf0da22a_371c8892c4c63a5e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCPointerReadOnly(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCPointerTemporary(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emustWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fa88b19e51866753_1c515c5623826c7f = external constant [0 x i8]
@olang_loc_962a22c7791f971e_263bae1157bb3aaa = external constant [0 x i8]
@olang_loc_bce8d8bde069702e_ffe04dc686cce872 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, i64 %a4, i1 %a5, i32 %a6)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7fe1bea66cf2144e_3863a3a9e6f6a662 = external constant [0 x i8]
@olang_loc_b79520aaecc0f88f_d487c78520878463 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_ea1bc73a77e68519_ca6969815981751d = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_da99cffe6602dc08_7fa7c9f5ef49167c = external constant [0 x i8]
@olang_loc_ddff752a05460a27_f846f4bbf4f845eb = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_f9674bcb1008789c_bed0ff146db7b878 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_7d2067b11442aa69_727f8f68f20a38e5 = external constant [0 x i8]
@olang_loc_fe55a007e1b3e29_3c78fea0979d4bfd = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_c4a343fb9b24edff_3458e4f6b03fbc5b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForTry(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollOnce(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollBody(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollElem(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_d826e759488f41a6_3ea05b0e10c73972 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForUnknown(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H09835701baa5b197f16fe6901ed0f7b4(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/check:UnrollAsk" @compiler_2fcheck_3aUnrollAsk_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aUnrollAsk_3e_2ePush_He90a5e781e5223c39ec692b3f1e8f929(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:UnrollAsk" %a1)
@G_2ecompiler_2fcheck_2eMaxUnroll = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\10\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eComptimeForTooMany(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollConsts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteNullableDecl(ptr %v0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewakeThunks(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_57ea44e7fd16bde2_c7d7d39f979a7ede = external constant [0 x i8]
@olang_loc_1376a264a8ee8c97_4e69d2fd66e95413 = external constant [0 x i8]
@olang_loc_7e62f8d4bbe8caf4_21f9a062d52f4170 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9cda55992b6a58cc_f4ed715c72ea34c8 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorMethod(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnBuiltinType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebothSpellings(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, i64 %a4)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodClashesInherited(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ebitOp(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodClashesSupplied(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseLoopJump(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMsgLoopJump(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeferLoopJump(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBreakOutsideLoop(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInClauseExit(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTarget(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLeaf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneStore(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, i64 %a5, i64 %a6, ptr %a7)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3)
@G_2ecompiler_2fcheck_2eLaneBin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLen(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneDecl(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHold(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebreakUnless(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritableAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflIndexRange(ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2)
declare i1 @compiler_2fcheck_2elaneMethodName(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, ptr %a4, { i64, ptr } %a5)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsOnNonGeneric(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d23330c3ef7ea91b_34477ea00961dc87 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4, %"compiler/source:Span" %a5, { i64, ptr } %a6)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefaultAmbiguous(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ebangOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadMaybeNull(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNonNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebadOver(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebaseHas(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodNotInherited(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuppliedCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@olang_loc_897998a95b9e5e2e_e7f90bd867c953f2 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efield(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCharNoPad(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ememberHint(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownMethod(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
@olang_loc_97297cf958301a5_897be3a3c1a33231 = external constant [0 x i8]
@olang_loc_f4ec2e4bc4870738_831a294d3dfd1224 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2elowerFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotTheOperator(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_9e3e60c51c241998_753bf57c496fa07c = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePowNone(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_40ba663ddc86f216_8a32628f26d9e82 = external constant [0 x i8]
@olang_loc_e2e10646092ca22b_113878b4617d7337 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euncovered(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReraiseUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReraiseWordNotInSet(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H316d0dfdbceeb7b188a6719f0ad8fbbe(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:roOrigin" @compiler_2fcheck_3aroOrigin_2ector(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hd862b35741eab3a632965773dd6b12ba(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"compiler/check:roOrigin" %a2)
@olang_loc_9ed68493f04b873b_45e1787ed2cd21af = external constant [0 x i8]
declare %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewElig(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/typed:ViewWalk" @compiler_2ftyped_3aViewWalk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eSettle(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egrowViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2eretViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5ec272a16da13ce8_6a23c064ecfaca54 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereachesTrait(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitExtendsItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberOpen(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitMemberMissing(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_21d2c8212e1ec20a_d97fbaae9e5bc606 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrSetArgUnwanted(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2eisFuncTypeRef(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGroupFunctionType(ptr %v0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedsCopy(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueFill(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_1ef5225cc090d9b9_51641959a5947e05 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRunsCopy(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopyParts(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_4c67a4e0f39ce0e6_aa4d8ec9734e07a2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3acollWalk_2ereaches(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eRvText = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
@olang_loc_fcf37abe830e2966_4b106c75c56f483a = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)

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
