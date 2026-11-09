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
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/check:factsMark" = type { i64, i64, i64 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:Ask" = type { i64, i64, i32, ptr, i64, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:opShape" = type { { i64, ptr }, i64, i1, i1 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"std/pair:Pair.b139c4f75a6545712256427180a82a06" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" }
%"compiler/check:roArg" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
%"std/pair:Pair.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"compiler/check:roDeepArg" = type { i64, ptr, i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/check:typeCase" = type { i1, i1, i32, i64, i64, i1 }
define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aArm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l21 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Alt", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t30, ptr %t31, ptr %t35)
  br label %bb8
bb8:
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Alt", ptr %t40, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t57, ptr %l37, !tbaa !27
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Bind", ptr %t63, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t65, ptr %t66, ptr %t70)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb4
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Arm", ptr %t85, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t83, ptr %t84, ptr %t88)
  br label %bb18
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t94 = load ptr, ptr %l2, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Arm", ptr %t94, i32 0, i32 3
  %t97 = load ptr, ptr %t96, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t92, ptr %t93, ptr %t97)
  br label %bb19
bb19:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Arm", ptr %t103, i32 0, i32 4
  %t106 = load ptr, ptr %t105, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, ptr %t106)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/check:factsMark"
  %l12 = alloca i64
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca %"compiler/check:litv"
  %l17 = alloca %"compiler/check:litv"
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l39 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca ptr
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l68 = alloca %"compiler/source:Span"
  %l70 = alloca %"compiler/source:Span"
  %l72 = alloca { i64, ptr }
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca %"compiler/diagmsg:Msg"
  %l84 = alloca i64
  %l88 = alloca ptr
  %l91 = alloca i1
  %l92 = alloca i1
  %l95 = alloca i1
  %l102 = alloca ptr
  %l105 = alloca i1
  %l106 = alloca i1
  %l109 = alloca i1
  %l116 = alloca ptr
  %l119 = alloca i1
  %l122 = alloca ptr
  %l127 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca ptr
  %l133 = alloca i64
  %l135 = alloca i1
  %l136 = alloca ptr
  %l139 = alloca i32
  %l140 = alloca i1
  %l141 = alloca ptr
  %l146 = alloca ptr
  %l148 = alloca %"compiler/source:Span"
  %l149 = alloca ptr
  %l150 = alloca ptr
  %l151 = alloca %"compiler/source:Span"
  %l152 = alloca ptr
  %l154 = alloca %"compiler/source:Span"
  %l156 = alloca %"compiler/source:Span"
  %l158 = alloca { i64, ptr }
  %l160 = alloca %"compiler/source:Span"
  %l164 = alloca ptr
  %l168 = alloca ptr
  %l170 = alloca %"compiler/check:factsMark"
  %l173 = alloca i64
  %l174 = alloca ptr
  %l175 = alloca ptr
  %l177 = alloca i1
  %l179 = alloca ptr
  %l184 = alloca i64
  %l189 = alloca ptr
  %l192 = alloca %"compiler/source:Span"
  %l195 = alloca i32
  %l199 = alloca { i64, ptr }
  %l202 = alloca %"compiler/typed:Seq"
  %l210 = alloca %"compiler/source:Span"
  %l211 = alloca i32
  %l212 = alloca ptr
  %l214 = alloca ptr
  %l218 = alloca ptr
  %l219 = alloca %"compiler/typed:Cond"
  %l223 = alloca %"compiler/source:Span"
  %l224 = alloca i32
  %l225 = alloca ptr
  %l229 = alloca ptr
  %l232 = alloca %"compiler/typed:Cond"
  %l236 = alloca ptr
  %l238 = alloca %"compiler/source:Span"
  %l240 = alloca %"compiler/source:Span"
  %l242 = alloca { i64, ptr }
  %l244 = alloca %"compiler/source:Span"
  %l248 = alloca %"compiler/check:litv"
  %l252 = alloca %"compiler/check:litv"
  %l255 = alloca i1
  %l258 = alloca i1
  %l260 = alloca i1
  %l263 = alloca i1
  %l266 = alloca i1
  %l269 = alloca i1
  %l271 = alloca i1
  %l274 = alloca ptr
  %l277 = alloca %"compiler/source:Span"
  %l278 = alloca %"compiler/diagmsg:Msg"
  %l279 = alloca i64
  %l282 = alloca ptr
  %l285 = alloca i1
  %l289 = alloca i1
  %l293 = alloca i1
  %l296 = alloca i1
  %l297 = alloca i1
  %l299 = alloca i1
  %l302 = alloca i1
  %l305 = alloca i1
  %l308 = alloca i1
  %l311 = alloca i1
  %l313 = alloca i1
  %l317 = alloca ptr
  %l319 = alloca %"compiler/source:Span"
  %l320 = alloca %"compiler/diagmsg:Msg"
  %l321 = alloca i64
  %l324 = alloca ptr
  %l327 = alloca i1
  %l330 = alloca i1
  %l333 = alloca i1
  %l335 = alloca i1
  %l337 = alloca i1
  %l339 = alloca i1
  %l342 = alloca i1
  %l352 = alloca %"compiler/check:litv"
  %l355 = alloca ptr
  %l356 = alloca %"compiler/source:Span"
  %l357 = alloca %"compiler/diagmsg:Msg"
  %l358 = alloca i64
  %l361 = alloca ptr
  %l364 = alloca i1
  %l367 = alloca i1
  %l370 = alloca i1
  %l373 = alloca i1
  %l377 = alloca i1
  %l378 = alloca ptr
  %l383 = alloca ptr
  %l385 = alloca %"compiler/source:Span"
  %l386 = alloca ptr
  %l387 = alloca ptr
  %l390 = alloca i32
  %l391 = alloca i1
  %l392 = alloca i1
  %l393 = alloca ptr
  %l396 = alloca i32
  %l397 = alloca i1
  %l398 = alloca i32
  %l399 = alloca ptr
  %l402 = alloca i32
  %l403 = alloca i32
  %l408 = alloca i1
  %l409 = alloca ptr
  %l410 = alloca i32
  %l411 = alloca ptr
  %l413 = alloca i32
  %l416 = alloca ptr
  %l419 = alloca i1
  %l420 = alloca ptr
  %l421 = alloca %"compiler/source:Span"
  %l424 = alloca i32
  %l427 = alloca i32
  %l428 = alloca i1
  %l431 = alloca ptr
  %l432 = alloca ptr
  %l433 = alloca %"compiler/source:Span"
  %l434 = alloca %"compiler/source:Span"
  %l435 = alloca i32
  %l436 = alloca ptr
  %l437 = alloca ptr
  %l439 = alloca %"compiler/source:Span"
  %l441 = alloca %"compiler/source:Span"
  %l442 = alloca ptr
  %l443 = alloca ptr
  %l448 = alloca ptr
  %l450 = alloca %"compiler/source:Span"
  %l451 = alloca ptr
  %l452 = alloca ptr
  %l455 = alloca i32
  %l456 = alloca i1
  %l457 = alloca i1
  %l458 = alloca ptr
  %l461 = alloca i32
  %l462 = alloca i1
  %l463 = alloca i32
  %l464 = alloca ptr
  %l467 = alloca i32
  %l468 = alloca i32
  %l473 = alloca i1
  %l474 = alloca ptr
  %l475 = alloca i32
  %l476 = alloca ptr
  %l478 = alloca i32
  %l481 = alloca ptr
  %l484 = alloca i1
  %l485 = alloca ptr
  %l486 = alloca %"compiler/source:Span"
  %l489 = alloca i32
  %l492 = alloca i32
  %l493 = alloca i1
  %l496 = alloca ptr
  %l497 = alloca ptr
  %l498 = alloca %"compiler/source:Span"
  %l499 = alloca %"compiler/source:Span"
  %l500 = alloca i32
  %l501 = alloca ptr
  %l502 = alloca ptr
  %l504 = alloca %"compiler/source:Span"
  %l506 = alloca %"compiler/source:Span"
  %l507 = alloca ptr
  %l509 = alloca i1
  %l512 = alloca i1
  %l514 = alloca ptr
  %l519 = alloca ptr
  %l521 = alloca %"compiler/source:Span"
  %l522 = alloca ptr
  %l526 = alloca i1
  %l527 = alloca i32
  %l530 = alloca i32
  %l534 = alloca i1
  %l535 = alloca ptr
  %l540 = alloca ptr
  %l546 = alloca ptr
  %l549 = alloca i1
  %l552 = alloca ptr
  %l557 = alloca ptr
  %l559 = alloca %"compiler/source:Span"
  %l560 = alloca ptr
  %l568 = alloca ptr
  %l573 = alloca ptr
  %l575 = alloca i1
  %l578 = alloca ptr
  %l579 = alloca ptr
  %l580 = alloca i32
  %l581 = alloca ptr
  %l583 = alloca i32
  %l586 = alloca ptr
  %l588 = alloca %"compiler/source:Span"
  %l589 = alloca ptr
  %l592 = alloca ptr
  %l595 = alloca i32
  %l596 = alloca i32
  %l599 = alloca i1
  %l601 = alloca ptr
  %l604 = alloca i32
  %l606 = alloca i32
  %l610 = alloca i1
  %l611 = alloca ptr
  %l616 = alloca ptr
  %l622 = alloca ptr
  %l630 = alloca ptr
  %l635 = alloca ptr
  %l638 = alloca i1
  %l639 = alloca i1
  %l642 = alloca i1
  %l644 = alloca ptr
  %l649 = alloca ptr
  %l651 = alloca %"compiler/source:Span"
  %l652 = alloca ptr
  %l654 = alloca ptr
  %l655 = alloca ptr
  %l656 = alloca i32
  %l657 = alloca ptr
  %l658 = alloca ptr
  %l661 = alloca i32
  %l662 = alloca i1
  %l663 = alloca i32
  %l664 = alloca ptr
  %l667 = alloca i32
  %l668 = alloca i32
  %l670 = alloca ptr
  %l672 = alloca %"compiler/source:Span"
  %l673 = alloca ptr
  %l677 = alloca i1
  %l678 = alloca i1
  %l681 = alloca i1
  %l683 = alloca ptr
  %l688 = alloca ptr
  %l690 = alloca %"compiler/source:Span"
  %l691 = alloca ptr
  %l693 = alloca ptr
  %l694 = alloca ptr
  %l695 = alloca i32
  %l696 = alloca ptr
  %l697 = alloca ptr
  %l700 = alloca i32
  %l701 = alloca i1
  %l702 = alloca i32
  %l703 = alloca ptr
  %l706 = alloca i32
  %l707 = alloca i32
  %l709 = alloca ptr
  %l711 = alloca %"compiler/source:Span"
  %l712 = alloca ptr
  %l715 = alloca i1
  %l717 = alloca i1
  %l720 = alloca i1
  %l723 = alloca i1
  %l726 = alloca i1
  %l729 = alloca i1
  %l730 = alloca i1
  %l733 = alloca i1
  %l737 = alloca i32
  %l738 = alloca ptr
  %l739 = alloca ptr
  %l740 = alloca %"compiler/check:litv"
  %l744 = alloca i1
  %l745 = alloca i32
  %l748 = alloca ptr
  %l750 = alloca ptr
  %l751 = alloca ptr
  %l752 = alloca %"compiler/check:litv"
  %l756 = alloca i1
  %l757 = alloca i32
  %l760 = alloca ptr
  %l762 = alloca ptr
  %l767 = alloca ptr
  %l769 = alloca %"compiler/source:Span"
  %l770 = alloca ptr
  %l772 = alloca ptr
  %l777 = alloca ptr
  %l779 = alloca %"compiler/source:Span"
  %l780 = alloca ptr
  %l782 = alloca ptr
  %l783 = alloca %"compiler/source:Span"
  %l784 = alloca %"compiler/source:Span"
  %l785 = alloca i32
  %l788 = alloca ptr
  %l791 = alloca ptr
  %l793 = alloca %"compiler/source:Span"
  %l795 = alloca %"compiler/source:Span"
  %l796 = alloca ptr
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %rv = alloca ptr
  %t340 = alloca { i64, [5 x i64] }, align 8
  %t380 = alloca { i64, [5 x i64] }, align 8
  %t411 = alloca { i64, [5 x i64] }, align 8
  %t642 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t3 = trunc i64 71 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load %"compiler/source:Span", ptr %l1
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load i32, ptr %l5, !tbaa !23
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epower(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t6, %"compiler/source:Span" %t7, ptr %t8, ptr %t9, i32 %t10)
  store ptr %t16, ptr %l39
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load ptr, ptr %l39, !tbaa !29
  store ptr %t17, ptr %rv
  br label %ret
bb4:
  %t18 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t20 = trunc i64 94 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb7
bb6:
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t25 = trunc i64 95 to i32
  %t26 = icmp eq i32 %t23, %t25
  store i1 %t26, ptr %l42, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l42, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load %"compiler/source:Span", ptr %l1
  %t31 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t29, %"compiler/source:Span" %t30, i32 %t31, ptr %t32, ptr %t33)
  store ptr %t39, ptr %l50
  br label %bb10
bb9:
  br label %bb56
bb10:
  %t40 = load ptr, ptr %l50, !tbaa !29
  store ptr %t40, ptr %l6, !tbaa !29
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t47 = load ptr, ptr %l6, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t47, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v1, ptr %t49)
  store i1 %t51, ptr %l56
  br label %bb14
bb14:
  %t52 = load i1, ptr %l56, !tbaa !21
  br i1 %t52, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb18
bb16:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v2, ptr %t53)
  store i1 %t55, ptr %l59
  br label %bb17
bb17:
  %t56 = load i1, ptr %l59, !tbaa !21
  store i1 %t56, ptr %l57, !tbaa !21
  br label %bb18
bb18:
  %t57 = load i1, ptr %l57, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = call i1 @compiler_2fcheck_2eisNullLit(ptr %v2, ptr %t58)
  store i1 %t60, ptr %l61
  br label %bb21
bb20:
  br label %bb37
bb21:
  %t61 = load i1, ptr %l61, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t62 = load ptr, ptr %l3, !tbaa !29
  store ptr %t62, ptr %l62, !tbaa !29
  br label %bb24
bb23:
  %t64 = load ptr, ptr %l4, !tbaa !29
  store ptr %t64, ptr %l62, !tbaa !29
  br label %bb24
bb24:
  %t66 = load ptr, ptr %l62, !tbaa !29
  store ptr %t66, ptr %l7, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l65, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l66, !tbaa !29
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t69)
  store %"compiler/source:Span" %t71, ptr %l68
  br label %bb25
bb25:
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t74 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t72)
  store %"compiler/source:Span" %t74, ptr %l70
  br label %bb26
bb26:
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t77 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s4, i32 %t75)
  store { i64, ptr } %t77, ptr %l72
  br label %bb27
bb27:
  %t78 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = load ptr, ptr %l66, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l68
  %t82 = load %"compiler/source:Span", ptr %l70
  %t84 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t80, %"compiler/source:Span" %t81, %"compiler/source:Span" %t82, i64 %t79)
  store %"compiler/source:Span" %t84, ptr %l74
  br label %bb28
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l75, !tbaa !29
  %t86 = load ptr, ptr %l7, !tbaa !29
  store ptr %t86, ptr %l76, !tbaa !29
  %t87 = load ptr, ptr %l76, !tbaa !29
  %t88 = call ptr @__olang_scope_of(ptr %t87, ptr null)
  %t89 = ptrtoint ptr %t88 to i64
  %t91 = inttoptr i64 %t89 to ptr
  %t92 = load ptr, ptr %l76, !tbaa !29
  %t93 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %t91, ptr %t92)
  store %"compiler/source:Span" %t93, ptr %l78
  br label %bb29
bb29:
  %t94 = load ptr, ptr %l75, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l78
  %t96 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t94, %"compiler/source:Span" %t95)
  store { i64, ptr } %t96, ptr %l79
  br label %bb30
bb30:
  %t97 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t99 = trunc i64 94 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb33
bb32:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb33
bb33:
  %t102 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t104 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullCompared(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t102, { i64, ptr } %t103)
  store %"compiler/diagmsg:Msg" %t104, ptr %l83
  br label %bb34
bb34:
  %t105 = load ptr, ptr %l65, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l74
  %t107 = load %"compiler/diagmsg:Msg", ptr %l83
  %t108 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t105, %"compiler/source:Span" %t106, %"compiler/diagmsg:Msg" %t107)
  store i64 %t108, ptr %l84
  br label %bb35
bb35:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load %"compiler/source:Span", ptr %l1
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t115 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t109, %"compiler/source:Span" %t110, i32 %t111, i64 0)
  store ptr %t115, ptr %l88
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t116 = load ptr, ptr %l88, !tbaa !29
  store ptr %t116, ptr %rv
  br label %ret
bb37:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t121 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v2, ptr %t117, ptr %t118)
  store i1 %t121, ptr %l91
  br label %bb38
bb38:
  %t122 = load i1, ptr %l91, !tbaa !21
  br i1 %t122, label %bb39, label %bb40
bb39:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t123, ptr %t124)
  store i1 %t127, ptr %l95
  br label %bb41
bb40:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb42
bb41:
  %t128 = load i1, ptr %l95, !tbaa !21
  %t129 = xor i1 %t128, true
  store i1 %t129, ptr %l92, !tbaa !21
  br label %bb42
bb42:
  %t131 = load i1, ptr %l92, !tbaa !21
  br i1 %t131, label %bb43, label %bb44
bb43:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t134 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t135 = load ptr, ptr %l3, !tbaa !29
  %t136 = load ptr, ptr %l4, !tbaa !29
  %t142 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseCompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t132, %"compiler/source:Span" %t133, i32 %t134, ptr %t135, ptr %t136)
  store ptr %t142, ptr %l102
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t143 = load ptr, ptr %l102, !tbaa !29
  store ptr %t143, ptr %rv
  br label %ret
bb46:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l3, !tbaa !29
  %t148 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t144, ptr %t145)
  store i1 %t148, ptr %l105
  br label %bb47
bb47:
  %t149 = load i1, ptr %l105, !tbaa !21
  br i1 %t149, label %bb48, label %bb49
bb48:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load ptr, ptr %l4, !tbaa !29
  %t154 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v2, ptr %t150, ptr %t151)
  store i1 %t154, ptr %l109
  br label %bb50
bb49:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb51
bb50:
  %t155 = load i1, ptr %l109, !tbaa !21
  %t156 = xor i1 %t155, true
  store i1 %t156, ptr %l106, !tbaa !21
  br label %bb51
bb51:
  %t158 = load i1, ptr %l106, !tbaa !21
  br i1 %t158, label %bb52, label %bb53
bb52:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  %t161 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t162 = load ptr, ptr %l4, !tbaa !29
  %t163 = load ptr, ptr %l3, !tbaa !29
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseCompare(ptr %v0, ptr %v2, ptr %v1, ptr %v3, ptr %t159, %"compiler/source:Span" %t160, i32 %t161, ptr %t162, ptr %t163)
  store ptr %t169, ptr %l116
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t170 = load ptr, ptr %l116, !tbaa !29
  store ptr %t170, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t171 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t173 = trunc i64 45 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb59
bb58:
  %t176 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t178 = trunc i64 46 to i32
  %t179 = icmp eq i32 %t176, %t178
  store i1 %t179, ptr %l119, !tbaa !21
  br label %bb59
bb59:
  %t181 = load i1, ptr %l119, !tbaa !21
  br i1 %t181, label %bb60, label %bb61
bb60:
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l122, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t185 = load ptr, ptr %l3, !tbaa !29
  %t186 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v0, ptr %t183, i32 %t184, ptr %t185, i32 %t186)
  store ptr %t191, ptr %l127
  br label %bb62
bb61:
  br label %bb104
bb62:
  %t192 = load ptr, ptr %l3, !tbaa !29
  %t194 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t192)
  store %"compiler/source:Span" %t194, ptr %l129
  br label %bb63
bb63:
  %t195 = load ptr, ptr %l122, !tbaa !29
  %t196 = load ptr, ptr %l127, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l129
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t195, ptr %t196, %"compiler/source:Span" %t197)
  store ptr %t198, ptr %l130
  br label %bb64
bb64:
  %t199 = load ptr, ptr %l130, !tbaa !29
  store ptr %t199, ptr %l8, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l8, !tbaa !29
  %t204 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v3, ptr %t200, ptr %t201)
  store i64 %t204, ptr %l133
  br label %bb65
bb65:
  %t205 = load i64, ptr %l133, !tbaa !24
  %t206 = icmp sge i64 %t205, 0
  br i1 %t206, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb70
bb67:
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l136, !tbaa !29
  %t209 = load ptr, ptr %l8, !tbaa !29
  %t212 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t209)
  store i32 %t212, ptr %l139
  br label %bb68
bb68:
  %t213 = load ptr, ptr %l136, !tbaa !29
  %t214 = load i32, ptr %l139, !tbaa !23
  %t215 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t213, i32 %t214)
  store i1 %t215, ptr %l140
  br label %bb69
bb69:
  %t216 = load i1, ptr %l140, !tbaa !21
  store i1 %t216, ptr %l135, !tbaa !21
  br label %bb70
bb70:
  %t217 = load i1, ptr %l135, !tbaa !21
  br i1 %t217, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s8
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l141, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t221 = load ptr, ptr %l4, !tbaa !29
  %t222 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t227 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t219, i32 %t220, ptr %t221, i32 %t222)
  store ptr %t227, ptr %l146
  br label %bb73
bb72:
  br label %bb81
bb73:
  %t228 = load ptr, ptr %l4, !tbaa !29
  %t230 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t228)
  store %"compiler/source:Span" %t230, ptr %l148
  br label %bb74
bb74:
  %t231 = load ptr, ptr %l141, !tbaa !29
  %t232 = load ptr, ptr %l146, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l148
  %t234 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t231, ptr %t232, %"compiler/source:Span" %t233)
  store ptr %t234, ptr %l149
  br label %bb75
bb75:
  %t235 = load ptr, ptr %l149, !tbaa !29
  store ptr %t235, ptr %l9, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l150, !tbaa !29
  %t237 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t237, ptr %l151
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l152, !tbaa !29
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t241 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t239)
  store %"compiler/source:Span" %t241, ptr %l154
  br label %bb76
bb76:
  %t242 = load ptr, ptr %l4, !tbaa !29
  %t244 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t242)
  store %"compiler/source:Span" %t244, ptr %l156
  br label %bb77
bb77:
  %t245 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t247 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s8, i32 %t245)
  store { i64, ptr } %t247, ptr %l158
  br label %bb78
bb78:
  %t248 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t249 = extractvalue { i64, ptr } %t248, 0
  %t250 = load ptr, ptr %l152, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l154
  %t252 = load %"compiler/source:Span", ptr %l156
  %t254 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t250, %"compiler/source:Span" %t251, %"compiler/source:Span" %t252, i64 %t249)
  store %"compiler/source:Span" %t254, ptr %l160
  br label %bb79
bb79:
  %t255 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t256 = load ptr, ptr %l8, !tbaa !29
  %t257 = load ptr, ptr %l9, !tbaa !29
  %t258 = load ptr, ptr %l150, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l151
  %t260 = load %"compiler/source:Span", ptr %l160
  %t264 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t258, %"compiler/source:Span" %t259, %"compiler/source:Span" %t260, i32 %t255, ptr %t256, ptr %t257)
  store ptr %t264, ptr %l164
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t265 = load ptr, ptr %l164, !tbaa !29
  store ptr %t265, ptr %rv
  br label %ret
bb81:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load ptr, ptr %l3, !tbaa !29
  %t268 = load ptr, ptr %l8, !tbaa !29
  %t272 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdOf(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t266, ptr %t267, ptr %t268)
  store ptr %t272, ptr %l168
  br label %bb82
bb82:
  %t273 = load ptr, ptr %l168, !tbaa !29
  store ptr %t273, ptr %l10, !tbaa !29
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = call %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %t274)
  store %"compiler/check:factsMark" %t276, ptr %l170
  br label %bb83
bb83:
  %t277 = load %"compiler/check:factsMark", ptr %l170
  store %"compiler/check:factsMark" %t277, ptr %l11
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/check:Checker", ptr %t278, i32 0, i32 37
  %t282 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t280)
  store i64 %t282, ptr %l173
  br label %bb84
bb84:
  %t283 = load i64, ptr %l173, !tbaa !24
  store i64 %t283, ptr %l12, !tbaa !24
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l174, !tbaa !29
  %t285 = load ptr, ptr %l3, !tbaa !29
  store ptr %t285, ptr %l175, !tbaa !29
  %t286 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t288 = trunc i64 45 to i32
  %t289 = icmp eq i32 %t286, %t288
  store i1 %t289, ptr %l177, !tbaa !21
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t290)
  store ptr %t292, ptr %l179
  br label %bb85
bb85:
  %t293 = load ptr, ptr %l179, !tbaa !29
  %t295 = getelementptr %"compiler/check:frame", ptr %t293, i32 0, i32 7
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = load ptr, ptr %l174, !tbaa !29
  %t298 = load ptr, ptr %l175, !tbaa !29
  %t299 = load i1, ptr %l177, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t297, ptr %t298, i1 %t299, i64 %t296)
  br label %bb86
bb86:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/check:Checker", ptr %t301, i32 0, i32 37
  %t305 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t303)
  store i64 %t305, ptr %l184
  br label %bb87
bb87:
  %t306 = load i64, ptr %l12, !tbaa !24
  %t307 = load i64, ptr %l184, !tbaa !24
  %t309 = icmp sgt i64 %t307, %t306
  store i1 %t309, ptr %l13, !tbaa !21
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load ptr, ptr %l4, !tbaa !29
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v2, ptr %v3, ptr %t311, ptr %t312)
  store ptr %t315, ptr %l189
  br label %bb88
bb88:
  %t316 = load ptr, ptr %l189, !tbaa !29
  store ptr %t316, ptr %l14, !tbaa !29
  %t317 = load i1, ptr %l13, !tbaa !21
  br i1 %t317, label %bb89, label %bb90
bb89:
  %t319 = load ptr, ptr %l4, !tbaa !29
  %t321 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t319)
  store %"compiler/source:Span" %t321, ptr %l192
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t322 = load ptr, ptr %l14, !tbaa !29
  %t325 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t322)
  store i32 %t325, ptr %l195
  br label %bb92
bb92:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/check:Checker", ptr %t326, i32 0, i32 37
  %t329 = load i64, ptr %l12, !tbaa !24
  %t332 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t328, i64 %t329)
  store { i64, ptr } %t332, ptr %l199
  br label %bb93
bb93:
  %t333 = load ptr, ptr %l14, !tbaa !29
  %t335 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t337 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v3, ptr %v3, { i64, ptr } %t335, ptr %t333, i1 false)
  store %"compiler/typed:Seq" %t337, ptr %l202
  br label %bb94
bb94:
  %t338 = load %"compiler/typed:Seq", ptr %l202
  %t339 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Seq" %t338, ptr %t339
  store { i64, [5 x i64] } zeroinitializer, ptr %t340
  %t341 = getelementptr { i64, [5 x i64] }, ptr %t340, i32 0, i32 0
  store i64 12, ptr %t341
  %t342 = load %"compiler/source:Span", ptr %l192
  %t343 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t342, 0
  %t344 = load i32, ptr %l195, !tbaa !23
  %t345 = insertvalue { %"compiler/source:Span", i32, ptr } %t343, i32 %t344, 1
  %t347 = insertvalue { %"compiler/source:Span", i32, ptr } %t345, ptr %t339, 2
  %t348 = getelementptr { i64, [5 x i64] }, ptr %t340, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t347, ptr %t348
  %t349 = load { i64, [5 x i64] }, ptr %t340
  %t351 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t349, ptr %t351
  store ptr %t351, ptr %l14, !tbaa !29
  br label %bb95
bb95:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load %"compiler/check:factsMark", ptr %l11
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsDrop(ptr %v0, ptr %t353, %"compiler/check:factsMark" %t354)
  br label %bb96
bb96:
  %t357 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t359 = trunc i64 45 to i32
  %t360 = icmp eq i32 %t357, %t359
  br i1 %t360, label %bb97, label %bb98
bb97:
  %t362 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t362, ptr %l210
  %t363 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t363, ptr %l211, !tbaa !23
  %t364 = load ptr, ptr %l10, !tbaa !29
  store ptr %t364, ptr %l212, !tbaa !29
  %t365 = load ptr, ptr %l14, !tbaa !29
  store ptr %t365, ptr %l214, !tbaa !29
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load %"compiler/source:Span", ptr %l1
  %t369 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t373 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t367, %"compiler/source:Span" %t368, i32 %t369, i64 0)
  store ptr %t373, ptr %l218
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t374 = load ptr, ptr %l212, !tbaa !29
  %t375 = load ptr, ptr %l214, !tbaa !29
  %t376 = load ptr, ptr %l218, !tbaa !29
  %t377 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t374, ptr %t375, ptr %t376)
  store %"compiler/typed:Cond" %t377, ptr %l219
  br label %bb100
bb100:
  %t378 = load %"compiler/typed:Cond", ptr %l219
  %t379 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t378, ptr %t379
  store { i64, [5 x i64] } zeroinitializer, ptr %t380
  %t381 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 0
  store i64 11, ptr %t381
  %t382 = load %"compiler/source:Span", ptr %l210
  %t383 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t382, 0
  %t384 = load i32, ptr %l211, !tbaa !23
  %t385 = insertvalue { %"compiler/source:Span", i32, ptr } %t383, i32 %t384, 1
  %t387 = insertvalue { %"compiler/source:Span", i32, ptr } %t385, ptr %t379, 2
  %t388 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t387, ptr %t388
  %t389 = load { i64, [5 x i64] }, ptr %t380
  %t391 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t389, ptr %t391
  call void @__olang_scope_close(ptr %s0)
  store ptr %t391, ptr %rv
  br label %ret
bb101:
  %t393 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t393, ptr %l223
  %t394 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t394, ptr %l224, !tbaa !23
  %t395 = load ptr, ptr %l10, !tbaa !29
  store ptr %t395, ptr %l225, !tbaa !29
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load %"compiler/source:Span", ptr %l1
  %t398 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t402 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t396, %"compiler/source:Span" %t397, i32 %t398, i64 1)
  store ptr %t402, ptr %l229
  br label %bb102
bb102:
  %t403 = load ptr, ptr %l229, !tbaa !29
  %t404 = load ptr, ptr %l14, !tbaa !29
  %t405 = load ptr, ptr %l225, !tbaa !29
  %t408 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t405, ptr %t403, ptr %t404)
  store %"compiler/typed:Cond" %t408, ptr %l232
  br label %bb103
bb103:
  %t409 = load %"compiler/typed:Cond", ptr %l232
  %t410 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t409, ptr %t410
  store { i64, [5 x i64] } zeroinitializer, ptr %t411
  %t412 = getelementptr { i64, [5 x i64] }, ptr %t411, i32 0, i32 0
  store i64 11, ptr %t412
  %t413 = load %"compiler/source:Span", ptr %l223
  %t414 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t413, 0
  %t415 = load i32, ptr %l224, !tbaa !23
  %t416 = insertvalue { %"compiler/source:Span", i32, ptr } %t414, i32 %t415, 1
  %t418 = insertvalue { %"compiler/source:Span", i32, ptr } %t416, ptr %t410, 2
  %t419 = getelementptr { i64, [5 x i64] }, ptr %t411, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t418, ptr %t419
  %t420 = load { i64, [5 x i64] }, ptr %t411
  %t422 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t420, ptr %t422
  call void @__olang_scope_close(ptr %s0)
  store ptr %t422, ptr %rv
  br label %ret
bb104:
  %t424 = load ptr, ptr %l0, !tbaa !29
  store ptr %t424, ptr %l236, !tbaa !29
  %t425 = load ptr, ptr %l3, !tbaa !29
  %t427 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t425)
  store %"compiler/source:Span" %t427, ptr %l238
  br label %bb105
bb105:
  %t428 = load ptr, ptr %l4, !tbaa !29
  %t430 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t428)
  store %"compiler/source:Span" %t430, ptr %l240
  br label %bb106
bb106:
  %t431 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t433 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s0, i32 %t431)
  store { i64, ptr } %t433, ptr %l242
  br label %bb107
bb107:
  %t434 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t434, 0
  %t436 = load ptr, ptr %l236, !tbaa !29
  %t437 = load %"compiler/source:Span", ptr %l238
  %t438 = load %"compiler/source:Span", ptr %l240
  %t440 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t436, %"compiler/source:Span" %t437, %"compiler/source:Span" %t438, i64 %t435)
  store %"compiler/source:Span" %t440, ptr %l244
  br label %bb108
bb108:
  %t441 = load %"compiler/source:Span", ptr %l244
  store %"compiler/source:Span" %t441, ptr %l15
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load ptr, ptr %l3, !tbaa !29
  %t447 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t442, ptr %t443)
  store %"compiler/check:litv" %t447, ptr %l248
  br label %bb109
bb109:
  %t448 = load %"compiler/check:litv", ptr %l248
  store %"compiler/check:litv" %t448, ptr %l16
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load ptr, ptr %l4, !tbaa !29
  %t454 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v2, ptr %t449, ptr %t450)
  store %"compiler/check:litv" %t454, ptr %l252
  br label %bb110
bb110:
  %t455 = load %"compiler/check:litv", ptr %l252
  store %"compiler/check:litv" %t455, ptr %l17
  %t456 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t458 = trunc i64 72 to i32
  %t459 = icmp eq i32 %t456, %t458
  br i1 %t459, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l255, !tbaa !21
  br label %bb113
bb112:
  %t461 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t463 = trunc i64 73 to i32
  %t464 = icmp eq i32 %t461, %t463
  store i1 %t464, ptr %l255, !tbaa !21
  br label %bb113
bb113:
  %t466 = load i1, ptr %l255, !tbaa !21
  br i1 %t466, label %bb114, label %bb115
bb114:
  %t467 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t468 = load i1, ptr %t467, !tbaa !21
  store i1 %t468, ptr %l258, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb116
bb116:
  %t470 = load i1, ptr %l258, !tbaa !21
  br i1 %t470, label %bb117, label %bb118
bb117:
  %t471 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 1
  %t472 = load i1, ptr %t471, !tbaa !21
  %t474 = xor i1 %t472, true
  store i1 %t474, ptr %l260, !tbaa !21
  br label %bb119
bb118:
  store i1 false, ptr %l260, !tbaa !21
  br label %bb119
bb119:
  %t476 = load i1, ptr %l260, !tbaa !21
  br i1 %t476, label %bb120, label %bb121
bb120:
  %t477 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 2
  %t478 = load i1, ptr %t477, !tbaa !21
  %t480 = xor i1 %t478, true
  store i1 %t480, ptr %l263, !tbaa !21
  br label %bb122
bb121:
  store i1 false, ptr %l263, !tbaa !21
  br label %bb122
bb122:
  %t482 = load i1, ptr %l263, !tbaa !21
  br i1 %t482, label %bb123, label %bb124
bb123:
  %t483 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 3
  %t484 = load i64, ptr %t483, !tbaa !24
  %t486 = icmp eq i64 %t484, 0
  store i1 %t486, ptr %l266, !tbaa !21
  br label %bb125
bb124:
  store i1 false, ptr %l266, !tbaa !21
  br label %bb125
bb125:
  %t488 = load i1, ptr %l266, !tbaa !21
  br i1 %t488, label %bb126, label %bb127
bb126:
  %t489 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t490 = load i1, ptr %t489, !tbaa !21
  br i1 %t490, label %bb128, label %bb129
bb127:
  store i1 false, ptr %l269, !tbaa !21
  br label %bb131
bb128:
  %t492 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 1
  %t493 = load i1, ptr %t492, !tbaa !21
  store i1 %t493, ptr %l271, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb130
bb130:
  %t495 = load i1, ptr %l271, !tbaa !21
  %t496 = xor i1 %t495, true
  store i1 %t496, ptr %l269, !tbaa !21
  br label %bb131
bb131:
  %t498 = load i1, ptr %l269, !tbaa !21
  br i1 %t498, label %bb132, label %bb133
bb132:
  %t499 = load ptr, ptr %l0, !tbaa !29
  store ptr %t499, ptr %l274, !tbaa !29
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t501 = load ptr, ptr %l4, !tbaa !29
  %t504 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v2, ptr %t500, ptr %t501)
  store %"compiler/source:Span" %t504, ptr %l277
  br label %bb134
bb133:
  br label %bb138
bb134:
  %t505 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDivideByZero(ptr %v0)
  store %"compiler/diagmsg:Msg" %t505, ptr %l278
  br label %bb135
bb135:
  %t506 = load ptr, ptr %l274, !tbaa !29
  %t507 = load %"compiler/source:Span", ptr %l277
  %t508 = load %"compiler/diagmsg:Msg", ptr %l278
  %t509 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t506, %"compiler/source:Span" %t507, %"compiler/diagmsg:Msg" %t508)
  store i64 %t509, ptr %l279
  br label %bb136
bb136:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load %"compiler/source:Span", ptr %l1
  %t514 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t510, %"compiler/source:Span" %t511)
  store ptr %t514, ptr %l282
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s0)
  %t515 = load ptr, ptr %l282, !tbaa !29
  store ptr %t515, ptr %rv
  br label %ret
bb138:
  %t516 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t518 = trunc i64 106 to i32
  %t519 = icmp eq i32 %t516, %t518
  br i1 %t519, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l285, !tbaa !21
  br label %bb141
bb140:
  %t521 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t523 = trunc i64 107 to i32
  %t524 = icmp eq i32 %t521, %t523
  store i1 %t524, ptr %l285, !tbaa !21
  br label %bb141
bb141:
  %t526 = load i1, ptr %l285, !tbaa !21
  store i1 %t526, ptr %l18, !tbaa !21
  %t527 = load i1, ptr %l18, !tbaa !21
  br i1 %t527, label %bb142, label %bb143
bb142:
  %t529 = load i32, ptr %l5, !tbaa !23
  %t530 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t533 = icmp eq i32 %t529, %t530
  store i1 %t533, ptr %l289, !tbaa !21
  br label %bb144
bb143:
  store i1 false, ptr %l289, !tbaa !21
  br label %bb144
bb144:
  %t535 = load i1, ptr %l289, !tbaa !21
  br i1 %t535, label %bb145, label %bb146
bb145:
  %t536 = load ptr, ptr %l3, !tbaa !29
  %t539 = call i1 @compiler_2fcheck_2enumberLitsOnly(ptr %v1, ptr %t536)
  store i1 %t539, ptr %l296
  br label %bb147
bb146:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb148
bb147:
  %t540 = load i1, ptr %l296, !tbaa !21
  store i1 %t540, ptr %l293, !tbaa !21
  br label %bb148
bb148:
  %t541 = load i1, ptr %l293, !tbaa !21
  br i1 %t541, label %bb149, label %bb150
bb149:
  %t542 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t543 = load i1, ptr %t542, !tbaa !21
  store i1 %t543, ptr %l297, !tbaa !21
  br label %bb151
bb150:
  store i1 false, ptr %l297, !tbaa !21
  br label %bb151
bb151:
  %t545 = load i1, ptr %l297, !tbaa !21
  br i1 %t545, label %bb152, label %bb153
bb152:
  %t546 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 1
  %t547 = load i1, ptr %t546, !tbaa !21
  %t549 = xor i1 %t547, true
  store i1 %t549, ptr %l299, !tbaa !21
  br label %bb154
bb153:
  store i1 false, ptr %l299, !tbaa !21
  br label %bb154
bb154:
  %t551 = load i1, ptr %l299, !tbaa !21
  br i1 %t551, label %bb155, label %bb156
bb155:
  %t552 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 2
  %t553 = load i1, ptr %t552, !tbaa !21
  %t555 = xor i1 %t553, true
  store i1 %t555, ptr %l302, !tbaa !21
  br label %bb157
bb156:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb157
bb157:
  %t557 = load i1, ptr %l302, !tbaa !21
  br i1 %t557, label %bb158, label %bb159
bb158:
  %t558 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 3
  %t559 = load i64, ptr %t558, !tbaa !24
  %t561 = icmp slt i64 %t559, 0
  br i1 %t561, label %bb160, label %bb161
bb159:
  store i1 false, ptr %l305, !tbaa !21
  br label %bb169
bb160:
  store i1 true, ptr %l308, !tbaa !21
  br label %bb168
bb161:
  %t563 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 3
  %t564 = load i64, ptr %t563, !tbaa !24
  %t566 = icmp sge i64 %t564, 64
  br i1 %t566, label %bb162, label %bb163
bb162:
  %t568 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t569 = load i1, ptr %t568, !tbaa !21
  br i1 %t569, label %bb164, label %bb165
bb163:
  store i1 false, ptr %l311, !tbaa !21
  br label %bb167
bb164:
  %t571 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 1
  %t572 = load i1, ptr %t571, !tbaa !21
  %t574 = xor i1 %t572, true
  store i1 %t574, ptr %l313, !tbaa !21
  br label %bb166
bb165:
  store i1 false, ptr %l313, !tbaa !21
  br label %bb166
bb166:
  %t576 = load i1, ptr %l313, !tbaa !21
  %t577 = xor i1 %t576, true
  store i1 %t577, ptr %l311, !tbaa !21
  br label %bb167
bb167:
  %t579 = load i1, ptr %l311, !tbaa !21
  store i1 %t579, ptr %l308, !tbaa !21
  br label %bb168
bb168:
  %t580 = load i1, ptr %l308, !tbaa !21
  store i1 %t580, ptr %l305, !tbaa !21
  br label %bb169
bb169:
  %t581 = load i1, ptr %l305, !tbaa !21
  br i1 %t581, label %bb170, label %bb171
bb170:
  %t582 = load ptr, ptr %l0, !tbaa !29
  store ptr %t582, ptr %l317, !tbaa !29
  %t583 = load ptr, ptr %l4, !tbaa !29
  %t585 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t583)
  store %"compiler/source:Span" %t585, ptr %l319
  br label %bb172
bb171:
  br label %bb176
bb172:
  %t586 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftUnadapted(ptr %v0)
  store %"compiler/diagmsg:Msg" %t586, ptr %l320
  br label %bb173
bb173:
  %t587 = load ptr, ptr %l317, !tbaa !29
  %t588 = load %"compiler/source:Span", ptr %l319
  %t589 = load %"compiler/diagmsg:Msg", ptr %l320
  %t590 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t587, %"compiler/source:Span" %t588, %"compiler/diagmsg:Msg" %t589)
  store i64 %t590, ptr %l321
  br label %bb174
bb174:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t592 = load %"compiler/source:Span", ptr %l1
  %t595 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t591, %"compiler/source:Span" %t592)
  store ptr %t595, ptr %l324
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s0)
  %t596 = load ptr, ptr %l324, !tbaa !29
  store ptr %t596, ptr %rv
  br label %ret
bb176:
  %t597 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t599 = trunc i64 68 to i32
  %t600 = icmp eq i32 %t597, %t599
  br i1 %t600, label %bb177, label %bb178
bb177:
  store i1 true, ptr %l327, !tbaa !21
  br label %bb179
bb178:
  %t602 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t604 = trunc i64 69 to i32
  %t605 = icmp eq i32 %t602, %t604
  store i1 %t605, ptr %l327, !tbaa !21
  br label %bb179
bb179:
  %t607 = load i1, ptr %l327, !tbaa !21
  br i1 %t607, label %bb180, label %bb181
bb180:
  store i1 true, ptr %l330, !tbaa !21
  br label %bb182
bb181:
  %t608 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t610 = trunc i64 70 to i32
  %t611 = icmp eq i32 %t608, %t610
  store i1 %t611, ptr %l330, !tbaa !21
  br label %bb182
bb182:
  %t613 = load i1, ptr %l330, !tbaa !21
  br i1 %t613, label %bb183, label %bb184
bb183:
  store i1 true, ptr %l333, !tbaa !21
  br label %bb185
bb184:
  %t614 = load i1, ptr %l18, !tbaa !21
  store i1 %t614, ptr %l333, !tbaa !21
  br label %bb185
bb185:
  %t616 = load i1, ptr %l333, !tbaa !21
  br i1 %t616, label %bb186, label %bb187
bb186:
  %t617 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t618 = load i1, ptr %t617, !tbaa !21
  store i1 %t618, ptr %l335, !tbaa !21
  br label %bb188
bb187:
  store i1 false, ptr %l335, !tbaa !21
  br label %bb188
bb188:
  %t620 = load i1, ptr %l335, !tbaa !21
  br i1 %t620, label %bb189, label %bb190
bb189:
  %t621 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t622 = load i1, ptr %t621, !tbaa !21
  store i1 %t622, ptr %l337, !tbaa !21
  br label %bb191
bb190:
  store i1 false, ptr %l337, !tbaa !21
  br label %bb191
bb191:
  %t624 = load i1, ptr %l337, !tbaa !21
  br i1 %t624, label %bb192, label %bb193
bb192:
  %t625 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 1
  %t626 = load i1, ptr %t625, !tbaa !21
  %t628 = xor i1 %t626, true
  store i1 %t628, ptr %l339, !tbaa !21
  br label %bb194
bb193:
  store i1 false, ptr %l339, !tbaa !21
  br label %bb194
bb194:
  %t630 = load i1, ptr %l339, !tbaa !21
  br i1 %t630, label %bb195, label %bb196
bb195:
  %t631 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 1
  %t632 = load i1, ptr %t631, !tbaa !21
  %t634 = xor i1 %t632, true
  store i1 %t634, ptr %l342, !tbaa !21
  br label %bb197
bb196:
  store i1 false, ptr %l342, !tbaa !21
  br label %bb197
bb197:
  %t636 = load i1, ptr %l342, !tbaa !21
  br i1 %t636, label %bb198, label %bb199
bb198:
  store %olang.scope zeroinitializer, ptr %s13
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t638 = load %"compiler/source:Span", ptr %l1
  %t639 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t640 = load ptr, ptr %l3, !tbaa !29
  %t641 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t642
  %t643 = getelementptr { i64, [4 x i64] }, ptr %t642, i32 0, i32 0
  store i64 5, ptr %t643
  %t645 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t638, 0
  %t647 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t645, i32 %t639, 1
  %t649 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t647, ptr %t640, 2
  %t651 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t649, ptr %t641, 3
  %t652 = getelementptr { i64, [4 x i64] }, ptr %t642, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t651, ptr %t652
  %t653 = load { i64, [4 x i64] }, ptr %t642
  %t655 = call ptr @__olang_scope_alloc_a(ptr %s13, i64 40, i64 8)
  store { i64, [4 x i64] } %t653, ptr %t655
  %t658 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %s13, ptr %t637, ptr %t655)
  store %"compiler/check:litv" %t658, ptr %l352
  br label %bb200
bb199:
  br label %bb207
bb200:
  %t659 = getelementptr %"compiler/check:litv", ptr %l352, i32 0, i32 0
  %t660 = load i1, ptr %t659, !tbaa !21
  %t662 = xor i1 %t660, true
  br i1 %t662, label %bb201, label %bb202
bb201:
  %t664 = load ptr, ptr %l0, !tbaa !29
  store ptr %t664, ptr %l355, !tbaa !29
  %t665 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t665, ptr %l356
  %t666 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprNoValue(ptr %v0)
  store %"compiler/diagmsg:Msg" %t666, ptr %l357
  br label %bb203
bb202:
  br label %bb206
bb203:
  %t667 = load ptr, ptr %l355, !tbaa !29
  %t668 = load %"compiler/source:Span", ptr %l356
  %t669 = load %"compiler/diagmsg:Msg", ptr %l357
  %t670 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t667, %"compiler/source:Span" %t668, %"compiler/diagmsg:Msg" %t669)
  store i64 %t670, ptr %l358
  br label %bb204
bb204:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = load %"compiler/source:Span", ptr %l1
  %t675 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t671, %"compiler/source:Span" %t672)
  store ptr %t675, ptr %l361
  br label %bb205
bb205:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t676 = load ptr, ptr %l361, !tbaa !29
  store ptr %t676, ptr %rv
  br label %ret
bb206:
  call void @__olang_scope_close(ptr %s13)
  br label %bb207
bb207:
  %t677 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t678 = load i1, ptr %t677, !tbaa !21
  %t680 = xor i1 %t678, true
  br i1 %t680, label %bb208, label %bb209
bb208:
  %t682 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t683 = load i1, ptr %t682, !tbaa !21
  %t685 = xor i1 %t683, true
  store i1 %t685, ptr %l364, !tbaa !21
  br label %bb210
bb209:
  store i1 false, ptr %l364, !tbaa !21
  br label %bb210
bb210:
  %t687 = load i1, ptr %l364, !tbaa !21
  br i1 %t687, label %bb211, label %bb212
bb211:
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t689 = load ptr, ptr %l3, !tbaa !29
  %t692 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t688, ptr %t689)
  store i1 %t692, ptr %l370
  br label %bb213
bb212:
  store i1 false, ptr %l367, !tbaa !21
  br label %bb215
bb213:
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t694 = load ptr, ptr %l4, !tbaa !29
  %t697 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v2, ptr %t693, ptr %t694)
  store i1 %t697, ptr %l373
  br label %bb214
bb214:
  %t698 = load i1, ptr %l370, !tbaa !21
  %t699 = load i1, ptr %l373, !tbaa !21
  %t700 = icmp ne i1 %t698, %t699
  store i1 %t700, ptr %l367, !tbaa !21
  br label %bb215
bb215:
  %t702 = load i1, ptr %l367, !tbaa !21
  br i1 %t702, label %bb216, label %bb217
bb216:
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t704 = load ptr, ptr %l4, !tbaa !29
  %t707 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v2, ptr %t703, ptr %t704)
  store i1 %t707, ptr %l377
  br label %bb218
bb217:
  br label %bb288
bb218:
  %t708 = load i1, ptr %l377, !tbaa !21
  br i1 %t708, label %bb219, label %bb220
bb219:
  %t709 = load ptr, ptr %l0, !tbaa !29
  store ptr %t709, ptr %l378, !tbaa !29
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t711 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t712 = load ptr, ptr %l3, !tbaa !29
  %t713 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t718 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v0, ptr %t710, i32 %t711, ptr %t712, i32 %t713)
  store ptr %t718, ptr %l383
  br label %bb221
bb220:
  br label %bb254
bb221:
  %t719 = load ptr, ptr %l3, !tbaa !29
  %t721 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t719)
  store %"compiler/source:Span" %t721, ptr %l385
  br label %bb222
bb222:
  %t722 = load ptr, ptr %l378, !tbaa !29
  %t723 = load ptr, ptr %l383, !tbaa !29
  %t724 = load %"compiler/source:Span", ptr %l385
  %t725 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t722, ptr %t723, %"compiler/source:Span" %t724)
  store ptr %t725, ptr %l386
  br label %bb223
bb223:
  %t726 = load ptr, ptr %l386, !tbaa !29
  store ptr %t726, ptr %l19, !tbaa !29
  %t727 = load ptr, ptr %l0, !tbaa !29
  store ptr %t727, ptr %l387, !tbaa !29
  %t728 = load ptr, ptr %l19, !tbaa !29
  %t731 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t728)
  store i32 %t731, ptr %l390
  br label %bb224
bb224:
  %t732 = load ptr, ptr %l387, !tbaa !29
  %t733 = load i32, ptr %l390, !tbaa !23
  %t734 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t732, i32 %t733)
  store i1 %t734, ptr %l391
  br label %bb225
bb225:
  %t735 = load i1, ptr %l391, !tbaa !21
  br i1 %t735, label %bb226, label %bb227
bb226:
  store i1 true, ptr %l392, !tbaa !21
  br label %bb230
bb227:
  %t736 = load ptr, ptr %l0, !tbaa !29
  store ptr %t736, ptr %l393, !tbaa !29
  %t737 = load ptr, ptr %l19, !tbaa !29
  %t740 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t737)
  store i32 %t740, ptr %l396
  br label %bb228
bb228:
  %t741 = load ptr, ptr %l393, !tbaa !29
  %t742 = load i32, ptr %l396, !tbaa !23
  %t743 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t741, i32 %t742)
  store i1 %t743, ptr %l397
  br label %bb229
bb229:
  %t744 = load i1, ptr %l397, !tbaa !21
  store i1 %t744, ptr %l392, !tbaa !21
  br label %bb230
bb230:
  %t745 = load i1, ptr %l392, !tbaa !21
  br i1 %t745, label %bb231, label %bb232
bb231:
  %t746 = load ptr, ptr %l0, !tbaa !29
  store ptr %t746, ptr %l399, !tbaa !29
  %t747 = load ptr, ptr %l19, !tbaa !29
  %t750 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t747)
  store i32 %t750, ptr %l402
  br label %bb233
bb232:
  %t751 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t751, ptr %l398, !tbaa !23
  br label %bb235
bb233:
  %t753 = load ptr, ptr %l399, !tbaa !29
  %t754 = load i32, ptr %l402, !tbaa !23
  %t755 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t753, i32 %t754)
  store i32 %t755, ptr %l403
  br label %bb234
bb234:
  %t756 = load i32, ptr %l403, !tbaa !23
  store i32 %t756, ptr %l398, !tbaa !23
  br label %bb235
bb235:
  %t757 = load i32, ptr %l398, !tbaa !23
  store i32 %t757, ptr %l20, !tbaa !23
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t759 = load ptr, ptr %l4, !tbaa !29
  %t760 = load i32, ptr %l20, !tbaa !23
  %t764 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v2, ptr %t758, ptr %t759, i32 %t760)
  store i1 %t764, ptr %l408
  br label %bb236
bb236:
  %t765 = load i1, ptr %l408, !tbaa !21
  store i1 %t765, ptr %l21, !tbaa !21
  %t766 = load ptr, ptr %l0, !tbaa !29
  store ptr %t766, ptr %l409, !tbaa !29
  %t767 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t767, ptr %l410
  %t768 = load ptr, ptr %l4, !tbaa !29
  store ptr %t768, ptr %l411, !tbaa !29
  %t769 = load i1, ptr %l21, !tbaa !21
  br i1 %t769, label %bb237, label %bb238
bb237:
  %t771 = load i32, ptr %l20, !tbaa !23
  store i32 %t771, ptr %l413, !tbaa !23
  br label %bb239
bb238:
  %t773 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t773, ptr %l413, !tbaa !23
  br label %bb239
bb239:
  %t775 = load ptr, ptr %l409, !tbaa !29
  %t776 = load i32, ptr %l410, !range !{i32 0, i32 114}
  %t777 = load ptr, ptr %l411, !tbaa !29
  %t778 = load i32, ptr %l413, !tbaa !23
  %t779 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v3, ptr %t775, i32 %t776, ptr %t777, i32 %t778)
  store ptr %t779, ptr %l416
  br label %bb240
bb240:
  %t780 = load ptr, ptr %l416, !tbaa !29
  store ptr %t780, ptr %l22, !tbaa !29
  %t781 = load i1, ptr %l21, !tbaa !21
  %t783 = xor i1 %t781, true
  br i1 %t783, label %bb241, label %bb242
bb241:
  %t785 = load ptr, ptr %l0, !tbaa !29
  store ptr %t785, ptr %l420, !tbaa !29
  %t786 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t786, ptr %l421
  %t787 = load ptr, ptr %l19, !tbaa !29
  %t790 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t787)
  store i32 %t790, ptr %l424
  br label %bb243
bb242:
  store i1 false, ptr %l419, !tbaa !21
  br label %bb246
bb243:
  %t791 = load ptr, ptr %l22, !tbaa !29
  %t794 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t791)
  store i32 %t794, ptr %l427
  br label %bb244
bb244:
  %t795 = load ptr, ptr %l420, !tbaa !29
  %t796 = load %"compiler/source:Span", ptr %l421
  %t797 = load i32, ptr %l424, !tbaa !23
  %t798 = load i32, ptr %l427, !tbaa !23
  %t799 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %t795, %"compiler/source:Span" %t796, i32 %t797, i32 %t798)
  store i1 %t799, ptr %l428
  br label %bb245
bb245:
  %t800 = load i1, ptr %l428, !tbaa !21
  store i1 %t800, ptr %l419, !tbaa !21
  br label %bb246
bb246:
  %t801 = load i1, ptr %l419, !tbaa !21
  br i1 %t801, label %bb247, label %bb248
bb247:
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t803 = load %"compiler/source:Span", ptr %l1
  %t806 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t802, %"compiler/source:Span" %t803)
  store ptr %t806, ptr %l431
  br label %bb249
bb248:
  br label %bb250
bb249:
  call void @__olang_scope_close(ptr %s0)
  %t807 = load ptr, ptr %l431, !tbaa !29
  store ptr %t807, ptr %rv
  br label %ret
bb250:
  %t808 = load ptr, ptr %l0, !tbaa !29
  store ptr %t808, ptr %l432, !tbaa !29
  %t809 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t809, ptr %l433
  %t810 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t810, ptr %l434
  %t811 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t811, ptr %l435
  %t812 = load ptr, ptr %l19, !tbaa !29
  store ptr %t812, ptr %l436, !tbaa !29
  %t813 = load ptr, ptr %l22, !tbaa !29
  store ptr %t813, ptr %l437, !tbaa !29
  %t814 = load ptr, ptr %l3, !tbaa !29
  %t816 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t814)
  store %"compiler/source:Span" %t816, ptr %l439
  br label %bb251
bb251:
  %t817 = load ptr, ptr %l4, !tbaa !29
  %t819 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t817)
  store %"compiler/source:Span" %t819, ptr %l441
  br label %bb252
bb252:
  %t820 = load ptr, ptr %l432, !tbaa !29
  %t821 = load %"compiler/source:Span", ptr %l433
  %t822 = load %"compiler/source:Span", ptr %l434
  %t823 = load i32, ptr %l435, !range !{i32 0, i32 114}
  %t824 = load ptr, ptr %l436, !tbaa !29
  %t825 = load ptr, ptr %l437, !tbaa !29
  %t826 = load %"compiler/source:Span", ptr %l439
  %t827 = load %"compiler/source:Span", ptr %l441
  %t828 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t820, %"compiler/source:Span" %t821, %"compiler/source:Span" %t822, i32 %t823, ptr %t824, ptr %t825, %"compiler/source:Span" %t826, %"compiler/source:Span" %t827)
  store ptr %t828, ptr %l442
  br label %bb253
bb253:
  call void @__olang_scope_close(ptr %s0)
  %t829 = load ptr, ptr %l442, !tbaa !29
  store ptr %t829, ptr %rv
  br label %ret
bb254:
  %t830 = load ptr, ptr %l0, !tbaa !29
  store ptr %t830, ptr %l443, !tbaa !29
  %t831 = load ptr, ptr %l0, !tbaa !29
  %t832 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t833 = load ptr, ptr %l4, !tbaa !29
  %t834 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t839 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t831, i32 %t832, ptr %t833, i32 %t834)
  store ptr %t839, ptr %l448
  br label %bb255
bb255:
  %t840 = load ptr, ptr %l4, !tbaa !29
  %t842 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t840)
  store %"compiler/source:Span" %t842, ptr %l450
  br label %bb256
bb256:
  %t843 = load ptr, ptr %l443, !tbaa !29
  %t844 = load ptr, ptr %l448, !tbaa !29
  %t845 = load %"compiler/source:Span", ptr %l450
  %t846 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t843, ptr %t844, %"compiler/source:Span" %t845)
  store ptr %t846, ptr %l451
  br label %bb257
bb257:
  %t847 = load ptr, ptr %l451, !tbaa !29
  store ptr %t847, ptr %l23, !tbaa !29
  %t848 = load ptr, ptr %l0, !tbaa !29
  store ptr %t848, ptr %l452, !tbaa !29
  %t849 = load ptr, ptr %l23, !tbaa !29
  %t852 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t849)
  store i32 %t852, ptr %l455
  br label %bb258
bb258:
  %t853 = load ptr, ptr %l452, !tbaa !29
  %t854 = load i32, ptr %l455, !tbaa !23
  %t855 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t853, i32 %t854)
  store i1 %t855, ptr %l456
  br label %bb259
bb259:
  %t856 = load i1, ptr %l456, !tbaa !21
  br i1 %t856, label %bb260, label %bb261
bb260:
  store i1 true, ptr %l457, !tbaa !21
  br label %bb264
bb261:
  %t857 = load ptr, ptr %l0, !tbaa !29
  store ptr %t857, ptr %l458, !tbaa !29
  %t858 = load ptr, ptr %l23, !tbaa !29
  %t861 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t858)
  store i32 %t861, ptr %l461
  br label %bb262
bb262:
  %t862 = load ptr, ptr %l458, !tbaa !29
  %t863 = load i32, ptr %l461, !tbaa !23
  %t864 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t862, i32 %t863)
  store i1 %t864, ptr %l462
  br label %bb263
bb263:
  %t865 = load i1, ptr %l462, !tbaa !21
  store i1 %t865, ptr %l457, !tbaa !21
  br label %bb264
bb264:
  %t866 = load i1, ptr %l457, !tbaa !21
  br i1 %t866, label %bb265, label %bb266
bb265:
  %t867 = load ptr, ptr %l0, !tbaa !29
  store ptr %t867, ptr %l464, !tbaa !29
  %t868 = load ptr, ptr %l23, !tbaa !29
  %t871 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t868)
  store i32 %t871, ptr %l467
  br label %bb267
bb266:
  %t872 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t872, ptr %l463, !tbaa !23
  br label %bb269
bb267:
  %t874 = load ptr, ptr %l464, !tbaa !29
  %t875 = load i32, ptr %l467, !tbaa !23
  %t876 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t874, i32 %t875)
  store i32 %t876, ptr %l468
  br label %bb268
bb268:
  %t877 = load i32, ptr %l468, !tbaa !23
  store i32 %t877, ptr %l463, !tbaa !23
  br label %bb269
bb269:
  %t878 = load i32, ptr %l463, !tbaa !23
  store i32 %t878, ptr %l24, !tbaa !23
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t880 = load ptr, ptr %l3, !tbaa !29
  %t881 = load i32, ptr %l24, !tbaa !23
  %t885 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %t879, ptr %t880, i32 %t881)
  store i1 %t885, ptr %l473
  br label %bb270
bb270:
  %t886 = load i1, ptr %l473, !tbaa !21
  store i1 %t886, ptr %l25, !tbaa !21
  %t887 = load ptr, ptr %l0, !tbaa !29
  store ptr %t887, ptr %l474, !tbaa !29
  %t888 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t888, ptr %l475
  %t889 = load ptr, ptr %l3, !tbaa !29
  store ptr %t889, ptr %l476, !tbaa !29
  %t890 = load i1, ptr %l25, !tbaa !21
  br i1 %t890, label %bb271, label %bb272
bb271:
  %t892 = load i32, ptr %l24, !tbaa !23
  store i32 %t892, ptr %l478, !tbaa !23
  br label %bb273
bb272:
  %t894 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t894, ptr %l478, !tbaa !23
  br label %bb273
bb273:
  %t896 = load ptr, ptr %l474, !tbaa !29
  %t897 = load i32, ptr %l475, !range !{i32 0, i32 114}
  %t898 = load ptr, ptr %l476, !tbaa !29
  %t899 = load i32, ptr %l478, !tbaa !23
  %t900 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v3, ptr %t896, i32 %t897, ptr %t898, i32 %t899)
  store ptr %t900, ptr %l481
  br label %bb274
bb274:
  %t901 = load ptr, ptr %l481, !tbaa !29
  store ptr %t901, ptr %l26, !tbaa !29
  %t902 = load i1, ptr %l25, !tbaa !21
  %t904 = xor i1 %t902, true
  br i1 %t904, label %bb275, label %bb276
bb275:
  %t906 = load ptr, ptr %l0, !tbaa !29
  store ptr %t906, ptr %l485, !tbaa !29
  %t907 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t907, ptr %l486
  %t908 = load ptr, ptr %l23, !tbaa !29
  %t911 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t908)
  store i32 %t911, ptr %l489
  br label %bb277
bb276:
  store i1 false, ptr %l484, !tbaa !21
  br label %bb280
bb277:
  %t912 = load ptr, ptr %l26, !tbaa !29
  %t915 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t912)
  store i32 %t915, ptr %l492
  br label %bb278
bb278:
  %t916 = load ptr, ptr %l485, !tbaa !29
  %t917 = load %"compiler/source:Span", ptr %l486
  %t918 = load i32, ptr %l489, !tbaa !23
  %t919 = load i32, ptr %l492, !tbaa !23
  %t920 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %t916, %"compiler/source:Span" %t917, i32 %t918, i32 %t919)
  store i1 %t920, ptr %l493
  br label %bb279
bb279:
  %t921 = load i1, ptr %l493, !tbaa !21
  store i1 %t921, ptr %l484, !tbaa !21
  br label %bb280
bb280:
  %t922 = load i1, ptr %l484, !tbaa !21
  br i1 %t922, label %bb281, label %bb282
bb281:
  %t923 = load ptr, ptr %l0, !tbaa !29
  %t924 = load %"compiler/source:Span", ptr %l1
  %t927 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t923, %"compiler/source:Span" %t924)
  store ptr %t927, ptr %l496
  br label %bb283
bb282:
  br label %bb284
bb283:
  call void @__olang_scope_close(ptr %s0)
  %t928 = load ptr, ptr %l496, !tbaa !29
  store ptr %t928, ptr %rv
  br label %ret
bb284:
  %t929 = load ptr, ptr %l0, !tbaa !29
  store ptr %t929, ptr %l497, !tbaa !29
  %t930 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t930, ptr %l498
  %t931 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t931, ptr %l499
  %t932 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t932, ptr %l500
  %t933 = load ptr, ptr %l26, !tbaa !29
  store ptr %t933, ptr %l501, !tbaa !29
  %t934 = load ptr, ptr %l23, !tbaa !29
  store ptr %t934, ptr %l502, !tbaa !29
  %t935 = load ptr, ptr %l3, !tbaa !29
  %t937 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t935)
  store %"compiler/source:Span" %t937, ptr %l504
  br label %bb285
bb285:
  %t938 = load ptr, ptr %l4, !tbaa !29
  %t940 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t938)
  store %"compiler/source:Span" %t940, ptr %l506
  br label %bb286
bb286:
  %t941 = load ptr, ptr %l497, !tbaa !29
  %t942 = load %"compiler/source:Span", ptr %l498
  %t943 = load %"compiler/source:Span", ptr %l499
  %t944 = load i32, ptr %l500, !range !{i32 0, i32 114}
  %t945 = load ptr, ptr %l501, !tbaa !29
  %t946 = load ptr, ptr %l502, !tbaa !29
  %t947 = load %"compiler/source:Span", ptr %l504
  %t948 = load %"compiler/source:Span", ptr %l506
  %t949 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t941, %"compiler/source:Span" %t942, %"compiler/source:Span" %t943, i32 %t944, ptr %t945, ptr %t946, %"compiler/source:Span" %t947, %"compiler/source:Span" %t948)
  store ptr %t949, ptr %l507
  br label %bb287
bb287:
  call void @__olang_scope_close(ptr %s0)
  %t950 = load ptr, ptr %l507, !tbaa !29
  store ptr %t950, ptr %rv
  br label %ret
bb288:
  store ptr null, ptr %l27, !tbaa !29
  store ptr null, ptr %l28, !tbaa !29
  %t951 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t952 = load i1, ptr %t951, !tbaa !21
  br i1 %t952, label %bb289, label %bb290
bb289:
  %t954 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t955 = load i1, ptr %t954, !tbaa !21
  %t957 = xor i1 %t955, true
  store i1 %t957, ptr %l509, !tbaa !21
  br label %bb291
bb290:
  store i1 false, ptr %l509, !tbaa !21
  br label %bb291
bb291:
  %t959 = load i1, ptr %l509, !tbaa !21
  br i1 %t959, label %bb292, label %bb293
bb292:
  %t960 = load i1, ptr %l18, !tbaa !21
  store i1 %t960, ptr %l512, !tbaa !21
  br label %bb294
bb293:
  store i1 false, ptr %l512, !tbaa !21
  br label %bb294
bb294:
  %t962 = load i1, ptr %l512, !tbaa !21
  br i1 %t962, label %bb295, label %bb296
bb295:
  %t963 = load ptr, ptr %l0, !tbaa !29
  store ptr %t963, ptr %l514, !tbaa !29
  %t964 = load ptr, ptr %l0, !tbaa !29
  %t965 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t966 = load ptr, ptr %l4, !tbaa !29
  %t967 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t972 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t964, i32 %t965, ptr %t966, i32 %t967)
  store ptr %t972, ptr %l519
  br label %bb297
bb296:
  %t973 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t974 = load i1, ptr %t973, !tbaa !21
  br i1 %t974, label %bb311, label %bb312
bb297:
  %t976 = load ptr, ptr %l4, !tbaa !29
  %t978 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t976)
  store %"compiler/source:Span" %t978, ptr %l521
  br label %bb298
bb298:
  %t979 = load ptr, ptr %l514, !tbaa !29
  %t980 = load ptr, ptr %l519, !tbaa !29
  %t981 = load %"compiler/source:Span", ptr %l521
  %t982 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t979, ptr %t980, %"compiler/source:Span" %t981)
  store ptr %t982, ptr %l522
  br label %bb299
bb299:
  %t983 = load ptr, ptr %l522, !tbaa !29
  store ptr %t983, ptr %l28, !tbaa !29
  %t985 = load ptr, ptr %l0, !tbaa !29
  %t986 = load i32, ptr %l5, !tbaa !23
  %t989 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t985, i32 %t986)
  store i1 %t989, ptr %l526
  br label %bb300
bb300:
  %t990 = load i1, ptr %l526, !tbaa !21
  br i1 %t990, label %bb301, label %bb302
bb301:
  %t991 = load i32, ptr %l5, !tbaa !23
  store i32 %t991, ptr %l527, !tbaa !23
  br label %bb304
bb302:
  %t993 = load ptr, ptr %l0, !tbaa !29
  %t995 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t993)
  store i32 %t995, ptr %l530
  br label %bb303
bb303:
  %t996 = load i32, ptr %l530, !tbaa !23
  store i32 %t996, ptr %l527, !tbaa !23
  br label %bb304
bb304:
  %t997 = load i32, ptr %l527, !tbaa !23
  store i32 %t997, ptr %l29, !tbaa !23
  %t998 = load ptr, ptr %l0, !tbaa !29
  %t999 = load %"compiler/check:litv", ptr %l16
  %t1000 = load i32, ptr %l29, !tbaa !23
  %t1004 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t998, %"compiler/check:litv" %t999, i32 %t1000)
  store i1 %t1004, ptr %l534
  br label %bb305
bb305:
  %t1005 = load i1, ptr %l534, !tbaa !21
  br i1 %t1005, label %bb306, label %bb307
bb306:
  %t1006 = load ptr, ptr %l0, !tbaa !29
  %t1007 = load ptr, ptr %l3, !tbaa !29
  %t1008 = load %"compiler/check:litv", ptr %l16
  %t1009 = load i32, ptr %l29, !tbaa !23
  %t1014 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v3, ptr %t1006, ptr %t1007, %"compiler/check:litv" %t1008, i32 %t1009)
  store ptr %t1014, ptr %l540
  br label %bb308
bb307:
  %t1015 = load ptr, ptr %l0, !tbaa !29
  %t1016 = load ptr, ptr %l3, !tbaa !29
  %t1017 = load %"compiler/check:litv", ptr %l16
  %t1018 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1023 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v3, ptr %t1015, ptr %t1016, %"compiler/check:litv" %t1017, i32 %t1018)
  store ptr %t1023, ptr %l546
  br label %bb309
bb308:
  %t1024 = load ptr, ptr %l540, !tbaa !29
  store ptr %t1024, ptr %l535, !tbaa !29
  br label %bb310
bb309:
  %t1026 = load ptr, ptr %l546, !tbaa !29
  store ptr %t1026, ptr %l535, !tbaa !29
  br label %bb310
bb310:
  %t1028 = load ptr, ptr %l535, !tbaa !29
  store ptr %t1028, ptr %l27, !tbaa !29
  br label %bb441
bb311:
  %t1029 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t1030 = load i1, ptr %t1029, !tbaa !21
  %t1032 = xor i1 %t1030, true
  store i1 %t1032, ptr %l549, !tbaa !21
  br label %bb313
bb312:
  store i1 false, ptr %l549, !tbaa !21
  br label %bb313
bb313:
  %t1034 = load i1, ptr %l549, !tbaa !21
  br i1 %t1034, label %bb314, label %bb315
bb314:
  %t1035 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1035, ptr %l552, !tbaa !29
  %t1036 = load ptr, ptr %l0, !tbaa !29
  %t1037 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1038 = load ptr, ptr %l4, !tbaa !29
  %t1039 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1044 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t1036, i32 %t1037, ptr %t1038, i32 %t1039)
  store ptr %t1044, ptr %l557
  br label %bb316
bb315:
  %t1045 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t1046 = load i1, ptr %t1045, !tbaa !21
  br i1 %t1046, label %bb324, label %bb325
bb316:
  %t1048 = load ptr, ptr %l4, !tbaa !29
  %t1050 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t1048)
  store %"compiler/source:Span" %t1050, ptr %l559
  br label %bb317
bb317:
  %t1051 = load ptr, ptr %l552, !tbaa !29
  %t1052 = load ptr, ptr %l557, !tbaa !29
  %t1053 = load %"compiler/source:Span", ptr %l559
  %t1054 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1051, ptr %t1052, %"compiler/source:Span" %t1053)
  store ptr %t1054, ptr %l560
  br label %bb318
bb318:
  %t1055 = load ptr, ptr %l560, !tbaa !29
  store ptr %t1055, ptr %l28, !tbaa !29
  %t1057 = load ptr, ptr %l0, !tbaa !29
  %t1058 = load ptr, ptr %l3, !tbaa !29
  %t1059 = load %"compiler/check:litv", ptr %l16
  %t1060 = load ptr, ptr %l28, !tbaa !29
  %t1061 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1062 = load %"compiler/source:Span", ptr %l15
  %t1069 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t1057, ptr %t1058, %"compiler/check:litv" %t1059, ptr %t1060, i32 %t1061, %"compiler/source:Span" %t1062, i1 false)
  store ptr %t1069, ptr %l568
  br label %bb319
bb319:
  %t1070 = load ptr, ptr %l568, !tbaa !29
  store ptr %t1070, ptr %l27, !tbaa !29
  %t1071 = load ptr, ptr %l27, !tbaa !29
  %t1073 = icmp eq ptr %t1071, null
  br i1 %t1073, label %bb320, label %bb321
bb320:
  %t1075 = load ptr, ptr %l0, !tbaa !29
  %t1076 = load %"compiler/source:Span", ptr %l1
  %t1079 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1075, %"compiler/source:Span" %t1076)
  store ptr %t1079, ptr %l573
  br label %bb322
bb321:
  br label %bb323
bb322:
  call void @__olang_scope_close(ptr %s0)
  %t1080 = load ptr, ptr %l573, !tbaa !29
  store ptr %t1080, ptr %rv
  br label %ret
bb323:
  br label %bb440
bb324:
  %t1081 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t1082 = load i1, ptr %t1081, !tbaa !21
  %t1084 = xor i1 %t1082, true
  store i1 %t1084, ptr %l575, !tbaa !21
  br label %bb326
bb325:
  store i1 false, ptr %l575, !tbaa !21
  br label %bb326
bb326:
  %t1086 = load i1, ptr %l575, !tbaa !21
  br i1 %t1086, label %bb327, label %bb328
bb327:
  %t1087 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1087, ptr %l578, !tbaa !29
  %t1088 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1088, ptr %l579, !tbaa !29
  %t1089 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t1089, ptr %l580
  %t1090 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1090, ptr %l581, !tbaa !29
  %t1091 = load i1, ptr %l18, !tbaa !21
  br i1 %t1091, label %bb329, label %bb330
bb328:
  %t1093 = load ptr, ptr %l0, !tbaa !29
  %t1094 = load ptr, ptr %l4, !tbaa !29
  %t1097 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v2, ptr %t1093, ptr %t1094)
  store i1 %t1097, ptr %l638
  br label %bb357
bb329:
  %t1098 = load i32, ptr %l5, !tbaa !23
  store i32 %t1098, ptr %l583, !tbaa !23
  br label %bb331
bb330:
  %t1100 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1100, ptr %l583, !tbaa !23
  br label %bb331
bb331:
  %t1102 = load ptr, ptr %l579, !tbaa !29
  %t1103 = load i32, ptr %l580, !range !{i32 0, i32 114}
  %t1104 = load ptr, ptr %l581, !tbaa !29
  %t1105 = load i32, ptr %l583, !tbaa !23
  %t1106 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v0, ptr %t1102, i32 %t1103, ptr %t1104, i32 %t1105)
  store ptr %t1106, ptr %l586
  br label %bb332
bb332:
  %t1107 = load ptr, ptr %l3, !tbaa !29
  %t1109 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1107)
  store %"compiler/source:Span" %t1109, ptr %l588
  br label %bb333
bb333:
  %t1110 = load ptr, ptr %l578, !tbaa !29
  %t1111 = load ptr, ptr %l586, !tbaa !29
  %t1112 = load %"compiler/source:Span", ptr %l588
  %t1113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1110, ptr %t1111, %"compiler/source:Span" %t1112)
  store ptr %t1113, ptr %l589
  br label %bb334
bb334:
  %t1114 = load ptr, ptr %l589, !tbaa !29
  store ptr %t1114, ptr %l27, !tbaa !29
  %t1116 = load i1, ptr %l18, !tbaa !21
  br i1 %t1116, label %bb335, label %bb336
bb335:
  %t1118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1118, ptr %l592, !tbaa !29
  %t1119 = load ptr, ptr %l27, !tbaa !29
  %t1122 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t1119)
  store i32 %t1122, ptr %l595
  br label %bb337
bb336:
  %t1123 = load ptr, ptr %l0, !tbaa !29
  %t1124 = load ptr, ptr %l4, !tbaa !29
  %t1125 = load %"compiler/check:litv", ptr %l17
  %t1126 = load ptr, ptr %l27, !tbaa !29
  %t1127 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1128 = load %"compiler/source:Span", ptr %l15
  %t1135 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t1123, ptr %t1124, %"compiler/check:litv" %t1125, ptr %t1126, i32 %t1127, %"compiler/source:Span" %t1128, i1 true)
  store ptr %t1135, ptr %l630
  br label %bb351
bb337:
  %t1136 = load ptr, ptr %l592, !tbaa !29
  %t1137 = load i32, ptr %l595, !tbaa !23
  %t1138 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t1136, i32 %t1137)
  store i32 %t1138, ptr %l596
  br label %bb338
bb338:
  %t1139 = load i32, ptr %l596, !tbaa !23
  store i32 %t1139, ptr %l30, !tbaa !23
  %t1140 = load ptr, ptr %l0, !tbaa !29
  %t1141 = load i32, ptr %l30, !tbaa !23
  %t1144 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t1140, i32 %t1141)
  store i1 %t1144, ptr %l599
  br label %bb339
bb339:
  %t1145 = load i1, ptr %l599, !tbaa !21
  %t1146 = xor i1 %t1145, true
  br i1 %t1146, label %bb340, label %bb341
bb340:
  %t1148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1148, ptr %l601, !tbaa !29
  %t1149 = load ptr, ptr %l27, !tbaa !29
  %t1152 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t1149)
  store i32 %t1152, ptr %l604
  br label %bb342
bb341:
  br label %bb344
bb342:
  %t1153 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1154 = load ptr, ptr %l601, !tbaa !29
  %t1155 = load i32, ptr %l604, !tbaa !23
  %t1157 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopParam(ptr %v0, ptr %t1154, i32 %t1155, i32 %t1153)
  store i32 %t1157, ptr %l606
  br label %bb343
bb343:
  %t1158 = load i32, ptr %l606, !tbaa !23
  store i32 %t1158, ptr %l30, !tbaa !23
  br label %bb344
bb344:
  %t1159 = load ptr, ptr %l0, !tbaa !29
  %t1160 = load %"compiler/check:litv", ptr %l17
  %t1161 = load i32, ptr %l30, !tbaa !23
  %t1165 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t1159, %"compiler/check:litv" %t1160, i32 %t1161)
  store i1 %t1165, ptr %l610
  br label %bb345
bb345:
  %t1166 = load i1, ptr %l610, !tbaa !21
  br i1 %t1166, label %bb346, label %bb347
bb346:
  %t1167 = load ptr, ptr %l0, !tbaa !29
  %t1168 = load ptr, ptr %l4, !tbaa !29
  %t1169 = load %"compiler/check:litv", ptr %l17
  %t1170 = load i32, ptr %l30, !tbaa !23
  %t1175 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v2, ptr %v3, ptr %t1167, ptr %t1168, %"compiler/check:litv" %t1169, i32 %t1170)
  store ptr %t1175, ptr %l616
  br label %bb348
bb347:
  %t1176 = load ptr, ptr %l0, !tbaa !29
  %t1177 = load ptr, ptr %l4, !tbaa !29
  %t1178 = load %"compiler/check:litv", ptr %l17
  %t1179 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1184 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v2, ptr %v3, ptr %t1176, ptr %t1177, %"compiler/check:litv" %t1178, i32 %t1179)
  store ptr %t1184, ptr %l622
  br label %bb349
bb348:
  %t1185 = load ptr, ptr %l616, !tbaa !29
  store ptr %t1185, ptr %l611, !tbaa !29
  br label %bb350
bb349:
  %t1187 = load ptr, ptr %l622, !tbaa !29
  store ptr %t1187, ptr %l611, !tbaa !29
  br label %bb350
bb350:
  %t1189 = load ptr, ptr %l611, !tbaa !29
  store ptr %t1189, ptr %l28, !tbaa !29
  br label %bb356
bb351:
  %t1190 = load ptr, ptr %l630, !tbaa !29
  store ptr %t1190, ptr %l28, !tbaa !29
  %t1191 = load ptr, ptr %l28, !tbaa !29
  %t1193 = icmp eq ptr %t1191, null
  br i1 %t1193, label %bb352, label %bb353
bb352:
  %t1195 = load ptr, ptr %l0, !tbaa !29
  %t1196 = load %"compiler/source:Span", ptr %l1
  %t1199 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1195, %"compiler/source:Span" %t1196)
  store ptr %t1199, ptr %l635
  br label %bb354
bb353:
  br label %bb355
bb354:
  call void @__olang_scope_close(ptr %s0)
  %t1200 = load ptr, ptr %l635, !tbaa !29
  store ptr %t1200, ptr %rv
  br label %ret
bb355:
  br label %bb356
bb356:
  br label %bb439
bb357:
  %t1201 = load i1, ptr %l638, !tbaa !21
  br i1 %t1201, label %bb358, label %bb359
bb358:
  %t1202 = load ptr, ptr %l0, !tbaa !29
  %t1203 = load ptr, ptr %l3, !tbaa !29
  %t1206 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t1202, ptr %t1203)
  store i1 %t1206, ptr %l642
  br label %bb360
bb359:
  store i1 false, ptr %l639, !tbaa !21
  br label %bb361
bb360:
  %t1207 = load i1, ptr %l642, !tbaa !21
  %t1208 = xor i1 %t1207, true
  store i1 %t1208, ptr %l639, !tbaa !21
  br label %bb361
bb361:
  %t1210 = load i1, ptr %l639, !tbaa !21
  br i1 %t1210, label %bb362, label %bb363
bb362:
  %t1211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1211, ptr %l644, !tbaa !29
  %t1212 = load ptr, ptr %l0, !tbaa !29
  %t1213 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1214 = load ptr, ptr %l3, !tbaa !29
  %t1215 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1220 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v0, ptr %t1212, i32 %t1213, ptr %t1214, i32 %t1215)
  store ptr %t1220, ptr %l649
  br label %bb364
bb363:
  %t1221 = load ptr, ptr %l0, !tbaa !29
  %t1222 = load ptr, ptr %l3, !tbaa !29
  %t1225 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t1221, ptr %t1222)
  store i1 %t1225, ptr %l677
  br label %bb377
bb364:
  %t1226 = load ptr, ptr %l3, !tbaa !29
  %t1228 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1226)
  store %"compiler/source:Span" %t1228, ptr %l651
  br label %bb365
bb365:
  %t1229 = load ptr, ptr %l644, !tbaa !29
  %t1230 = load ptr, ptr %l649, !tbaa !29
  %t1231 = load %"compiler/source:Span", ptr %l651
  %t1232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1229, ptr %t1230, %"compiler/source:Span" %t1231)
  store ptr %t1232, ptr %l652
  br label %bb366
bb366:
  %t1233 = load ptr, ptr %l652, !tbaa !29
  store ptr %t1233, ptr %l27, !tbaa !29
  %t1235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1235, ptr %l654, !tbaa !29
  %t1236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1236, ptr %l655, !tbaa !29
  %t1237 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t1237, ptr %l656
  %t1238 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1238, ptr %l657, !tbaa !29
  %t1239 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1239, ptr %l658, !tbaa !29
  %t1240 = load ptr, ptr %l27, !tbaa !29
  %t1243 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t1240)
  store i32 %t1243, ptr %l661
  br label %bb367
bb367:
  %t1244 = load ptr, ptr %l658, !tbaa !29
  %t1245 = load i32, ptr %l661, !tbaa !23
  %t1246 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t1244, i32 %t1245)
  store i1 %t1246, ptr %l662
  br label %bb368
bb368:
  %t1247 = load i1, ptr %l662, !tbaa !21
  br i1 %t1247, label %bb369, label %bb370
bb369:
  %t1248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1248, ptr %l664, !tbaa !29
  %t1249 = load ptr, ptr %l27, !tbaa !29
  %t1252 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t1249)
  store i32 %t1252, ptr %l667
  br label %bb371
bb370:
  %t1253 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1253, ptr %l663, !tbaa !23
  br label %bb373
bb371:
  %t1255 = load ptr, ptr %l664, !tbaa !29
  %t1256 = load i32, ptr %l667, !tbaa !23
  %t1257 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t1255, i32 %t1256)
  store i32 %t1257, ptr %l668
  br label %bb372
bb372:
  %t1258 = load i32, ptr %l668, !tbaa !23
  store i32 %t1258, ptr %l663, !tbaa !23
  br label %bb373
bb373:
  %t1259 = load ptr, ptr %l655, !tbaa !29
  %t1260 = load i32, ptr %l656, !range !{i32 0, i32 114}
  %t1261 = load ptr, ptr %l657, !tbaa !29
  %t1262 = load i32, ptr %l663, !tbaa !23
  %t1263 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t1259, i32 %t1260, ptr %t1261, i32 %t1262)
  store ptr %t1263, ptr %l670
  br label %bb374
bb374:
  %t1264 = load ptr, ptr %l4, !tbaa !29
  %t1266 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t1264)
  store %"compiler/source:Span" %t1266, ptr %l672
  br label %bb375
bb375:
  %t1267 = load ptr, ptr %l654, !tbaa !29
  %t1268 = load ptr, ptr %l670, !tbaa !29
  %t1269 = load %"compiler/source:Span", ptr %l672
  %t1270 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1267, ptr %t1268, %"compiler/source:Span" %t1269)
  store ptr %t1270, ptr %l673
  br label %bb376
bb376:
  %t1271 = load ptr, ptr %l673, !tbaa !29
  store ptr %t1271, ptr %l28, !tbaa !29
  br label %bb438
bb377:
  %t1273 = load i1, ptr %l677, !tbaa !21
  br i1 %t1273, label %bb378, label %bb379
bb378:
  %t1274 = load ptr, ptr %l0, !tbaa !29
  %t1275 = load ptr, ptr %l4, !tbaa !29
  %t1278 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v2, ptr %t1274, ptr %t1275)
  store i1 %t1278, ptr %l681
  br label %bb380
bb379:
  store i1 false, ptr %l678, !tbaa !21
  br label %bb381
bb380:
  %t1279 = load i1, ptr %l681, !tbaa !21
  %t1280 = xor i1 %t1279, true
  store i1 %t1280, ptr %l678, !tbaa !21
  br label %bb381
bb381:
  %t1282 = load i1, ptr %l678, !tbaa !21
  br i1 %t1282, label %bb382, label %bb383
bb382:
  %t1283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1283, ptr %l683, !tbaa !29
  %t1284 = load ptr, ptr %l0, !tbaa !29
  %t1285 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1286 = load ptr, ptr %l4, !tbaa !29
  %t1287 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1292 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t1284, i32 %t1285, ptr %t1286, i32 %t1287)
  store ptr %t1292, ptr %l688
  br label %bb384
bb383:
  %t1293 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t1294 = load i1, ptr %t1293, !tbaa !21
  br i1 %t1294, label %bb397, label %bb398
bb384:
  %t1296 = load ptr, ptr %l4, !tbaa !29
  %t1298 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t1296)
  store %"compiler/source:Span" %t1298, ptr %l690
  br label %bb385
bb385:
  %t1299 = load ptr, ptr %l683, !tbaa !29
  %t1300 = load ptr, ptr %l688, !tbaa !29
  %t1301 = load %"compiler/source:Span", ptr %l690
  %t1302 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1299, ptr %t1300, %"compiler/source:Span" %t1301)
  store ptr %t1302, ptr %l691
  br label %bb386
bb386:
  %t1303 = load ptr, ptr %l691, !tbaa !29
  store ptr %t1303, ptr %l28, !tbaa !29
  %t1305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1305, ptr %l693, !tbaa !29
  %t1306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1306, ptr %l694, !tbaa !29
  %t1307 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t1307, ptr %l695
  %t1308 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1308, ptr %l696, !tbaa !29
  %t1309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1309, ptr %l697, !tbaa !29
  %t1310 = load ptr, ptr %l28, !tbaa !29
  %t1313 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t1310)
  store i32 %t1313, ptr %l700
  br label %bb387
bb387:
  %t1314 = load ptr, ptr %l697, !tbaa !29
  %t1315 = load i32, ptr %l700, !tbaa !23
  %t1316 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t1314, i32 %t1315)
  store i1 %t1316, ptr %l701
  br label %bb388
bb388:
  %t1317 = load i1, ptr %l701, !tbaa !21
  br i1 %t1317, label %bb389, label %bb390
bb389:
  %t1318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1318, ptr %l703, !tbaa !29
  %t1319 = load ptr, ptr %l28, !tbaa !29
  %t1322 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t1319)
  store i32 %t1322, ptr %l706
  br label %bb391
bb390:
  %t1323 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1323, ptr %l702, !tbaa !23
  br label %bb393
bb391:
  %t1325 = load ptr, ptr %l703, !tbaa !29
  %t1326 = load i32, ptr %l706, !tbaa !23
  %t1327 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t1325, i32 %t1326)
  store i32 %t1327, ptr %l707
  br label %bb392
bb392:
  %t1328 = load i32, ptr %l707, !tbaa !23
  store i32 %t1328, ptr %l702, !tbaa !23
  br label %bb393
bb393:
  %t1329 = load ptr, ptr %l694, !tbaa !29
  %t1330 = load i32, ptr %l695, !range !{i32 0, i32 114}
  %t1331 = load ptr, ptr %l696, !tbaa !29
  %t1332 = load i32, ptr %l702, !tbaa !23
  %t1333 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v0, ptr %t1329, i32 %t1330, ptr %t1331, i32 %t1332)
  store ptr %t1333, ptr %l709
  br label %bb394
bb394:
  %t1334 = load ptr, ptr %l3, !tbaa !29
  %t1336 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1334)
  store %"compiler/source:Span" %t1336, ptr %l711
  br label %bb395
bb395:
  %t1337 = load ptr, ptr %l693, !tbaa !29
  %t1338 = load ptr, ptr %l709, !tbaa !29
  %t1339 = load %"compiler/source:Span", ptr %l711
  %t1340 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1337, ptr %t1338, %"compiler/source:Span" %t1339)
  store ptr %t1340, ptr %l712
  br label %bb396
bb396:
  %t1341 = load ptr, ptr %l712, !tbaa !29
  store ptr %t1341, ptr %l27, !tbaa !29
  br label %bb437
bb397:
  %t1343 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 0
  %t1344 = load i1, ptr %t1343, !tbaa !21
  store i1 %t1344, ptr %l715, !tbaa !21
  br label %bb399
bb398:
  store i1 false, ptr %l715, !tbaa !21
  br label %bb399
bb399:
  %t1346 = load i1, ptr %l715, !tbaa !21
  br i1 %t1346, label %bb400, label %bb401
bb400:
  %t1347 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 1
  %t1348 = load i1, ptr %t1347, !tbaa !21
  %t1350 = xor i1 %t1348, true
  store i1 %t1350, ptr %l717, !tbaa !21
  br label %bb402
bb401:
  store i1 false, ptr %l717, !tbaa !21
  br label %bb402
bb402:
  %t1352 = load i1, ptr %l717, !tbaa !21
  br i1 %t1352, label %bb403, label %bb404
bb403:
  %t1353 = getelementptr %"compiler/check:litv", ptr %l17, i32 0, i32 1
  %t1354 = load i1, ptr %t1353, !tbaa !21
  %t1356 = xor i1 %t1354, true
  store i1 %t1356, ptr %l720, !tbaa !21
  br label %bb405
bb404:
  store i1 false, ptr %l720, !tbaa !21
  br label %bb405
bb405:
  %t1358 = load i1, ptr %l720, !tbaa !21
  br i1 %t1358, label %bb406, label %bb407
bb406:
  %t1359 = load i1, ptr %l18, !tbaa !21
  %t1361 = xor i1 %t1359, true
  store i1 %t1361, ptr %l723, !tbaa !21
  br label %bb408
bb407:
  store i1 false, ptr %l723, !tbaa !21
  br label %bb408
bb408:
  %t1363 = load i1, ptr %l723, !tbaa !21
  br i1 %t1363, label %bb409, label %bb410
bb409:
  %t1364 = load ptr, ptr %l0, !tbaa !29
  %t1365 = load ptr, ptr %l3, !tbaa !29
  %t1368 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t1364, ptr %t1365)
  store i1 %t1368, ptr %l729
  br label %bb411
bb410:
  store i1 false, ptr %l726, !tbaa !21
  br label %bb416
bb411:
  %t1369 = load i1, ptr %l729, !tbaa !21
  br i1 %t1369, label %bb412, label %bb413
bb412:
  store i1 true, ptr %l730, !tbaa !21
  br label %bb415
bb413:
  %t1370 = load ptr, ptr %l0, !tbaa !29
  %t1371 = load ptr, ptr %l4, !tbaa !29
  %t1374 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v2, ptr %t1370, ptr %t1371)
  store i1 %t1374, ptr %l733
  br label %bb414
bb414:
  %t1375 = load i1, ptr %l733, !tbaa !21
  store i1 %t1375, ptr %l730, !tbaa !21
  br label %bb415
bb415:
  %t1376 = load i1, ptr %l730, !tbaa !21
  store i1 %t1376, ptr %l726, !tbaa !21
  br label %bb416
bb416:
  %t1377 = load i1, ptr %l726, !tbaa !21
  br i1 %t1377, label %bb417, label %bb418
bb417:
  store %olang.scope zeroinitializer, ptr %s34
  %t1378 = load ptr, ptr %l0, !tbaa !29
  %t1380 = getelementptr %"compiler/check:Checker", ptr %t1378, i32 0, i32 1
  %t1381 = load ptr, ptr %t1380, !tbaa !29
  %t1383 = getelementptr %"compiler/generic:Program", ptr %t1381, i32 0, i32 2
  %t1385 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s34, ptr %t1383, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t1385, ptr %l737
  br label %bb419
bb418:
  %t1386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1386, ptr %l762, !tbaa !29
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1388 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1389 = load ptr, ptr %l3, !tbaa !29
  %t1390 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1395 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v0, ptr %t1387, i32 %t1388, ptr %t1389, i32 %t1390)
  store ptr %t1395, ptr %l767
  br label %bb430
bb419:
  %t1396 = load i32, ptr %l737, !tbaa !23
  store i32 %t1396, ptr %l31, !tbaa !23
  %t1397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1397, ptr %l738, !tbaa !29
  %t1398 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1398, ptr %l739, !tbaa !29
  %t1399 = load %"compiler/check:litv", ptr %l16
  store %"compiler/check:litv" %t1399, ptr %l740
  %t1400 = load ptr, ptr %l0, !tbaa !29
  %t1401 = load %"compiler/check:litv", ptr %l16
  %t1402 = load i32, ptr %l31, !tbaa !23
  %t1406 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t1400, %"compiler/check:litv" %t1401, i32 %t1402)
  store i1 %t1406, ptr %l744
  br label %bb420
bb420:
  %t1407 = load i1, ptr %l744, !tbaa !21
  br i1 %t1407, label %bb421, label %bb422
bb421:
  %t1408 = load i32, ptr %l31, !tbaa !23
  store i32 %t1408, ptr %l745, !tbaa !23
  br label %bb423
bb422:
  %t1410 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1410, ptr %l745, !tbaa !23
  br label %bb423
bb423:
  %t1412 = load ptr, ptr %l738, !tbaa !29
  %t1413 = load ptr, ptr %l739, !tbaa !29
  %t1414 = load %"compiler/check:litv", ptr %l740
  %t1415 = load i32, ptr %l745, !tbaa !23
  %t1416 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v3, ptr %t1412, ptr %t1413, %"compiler/check:litv" %t1414, i32 %t1415)
  store ptr %t1416, ptr %l748
  br label %bb424
bb424:
  %t1417 = load ptr, ptr %l748, !tbaa !29
  store ptr %t1417, ptr %l27, !tbaa !29
  %t1419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1419, ptr %l750, !tbaa !29
  %t1420 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1420, ptr %l751, !tbaa !29
  %t1421 = load %"compiler/check:litv", ptr %l17
  store %"compiler/check:litv" %t1421, ptr %l752
  %t1422 = load ptr, ptr %l0, !tbaa !29
  %t1423 = load %"compiler/check:litv", ptr %l17
  %t1424 = load i32, ptr %l31, !tbaa !23
  %t1428 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t1422, %"compiler/check:litv" %t1423, i32 %t1424)
  store i1 %t1428, ptr %l756
  br label %bb425
bb425:
  %t1429 = load i1, ptr %l756, !tbaa !21
  br i1 %t1429, label %bb426, label %bb427
bb426:
  %t1430 = load i32, ptr %l31, !tbaa !23
  store i32 %t1430, ptr %l757, !tbaa !23
  br label %bb428
bb427:
  %t1432 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1432, ptr %l757, !tbaa !23
  br label %bb428
bb428:
  %t1434 = load ptr, ptr %l750, !tbaa !29
  %t1435 = load ptr, ptr %l751, !tbaa !29
  %t1436 = load %"compiler/check:litv", ptr %l752
  %t1437 = load i32, ptr %l757, !tbaa !23
  %t1438 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v2, ptr %v3, ptr %t1434, ptr %t1435, %"compiler/check:litv" %t1436, i32 %t1437)
  store ptr %t1438, ptr %l760
  br label %bb429
bb429:
  %t1439 = load ptr, ptr %l760, !tbaa !29
  store ptr %t1439, ptr %l28, !tbaa !29
  call void @__olang_scope_close(ptr %s34)
  br label %bb436
bb430:
  %t1441 = load ptr, ptr %l3, !tbaa !29
  %t1443 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1441)
  store %"compiler/source:Span" %t1443, ptr %l769
  br label %bb431
bb431:
  %t1444 = load ptr, ptr %l762, !tbaa !29
  %t1445 = load ptr, ptr %l767, !tbaa !29
  %t1446 = load %"compiler/source:Span", ptr %l769
  %t1447 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1444, ptr %t1445, %"compiler/source:Span" %t1446)
  store ptr %t1447, ptr %l770
  br label %bb432
bb432:
  %t1448 = load ptr, ptr %l770, !tbaa !29
  store ptr %t1448, ptr %l27, !tbaa !29
  %t1450 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1450, ptr %l772, !tbaa !29
  %t1451 = load ptr, ptr %l0, !tbaa !29
  %t1452 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t1453 = load ptr, ptr %l4, !tbaa !29
  %t1454 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1459 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v2, ptr %v0, ptr %t1451, i32 %t1452, ptr %t1453, i32 %t1454)
  store ptr %t1459, ptr %l777
  br label %bb433
bb433:
  %t1460 = load ptr, ptr %l4, !tbaa !29
  %t1462 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t1460)
  store %"compiler/source:Span" %t1462, ptr %l779
  br label %bb434
bb434:
  %t1463 = load ptr, ptr %l772, !tbaa !29
  %t1464 = load ptr, ptr %l777, !tbaa !29
  %t1465 = load %"compiler/source:Span", ptr %l779
  %t1466 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v3, ptr %t1463, ptr %t1464, %"compiler/source:Span" %t1465)
  store ptr %t1466, ptr %l780
  br label %bb435
bb435:
  %t1467 = load ptr, ptr %l780, !tbaa !29
  store ptr %t1467, ptr %l28, !tbaa !29
  br label %bb436
bb436:
  br label %bb437
bb437:
  br label %bb438
bb438:
  br label %bb439
bb439:
  br label %bb440
bb440:
  br label %bb441
bb441:
  %t1469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1469, ptr %l782, !tbaa !29
  %t1470 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1470, ptr %l783
  %t1471 = load %"compiler/source:Span", ptr %l15
  store %"compiler/source:Span" %t1471, ptr %l784
  %t1472 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t1472, ptr %l785
  %t1473 = load ptr, ptr %l27, !tbaa !29
  %t1475 = icmp eq ptr %t1473, null
  br i1 %t1475, label %bb442, label %bb443
bb442:
  call void @__olang_check_failed(ptr @olang_loc_a245edc164872a99_7db9d56e029b164d)
  unreachable
bb443:
  br label %bb444
bb444:
  %t1477 = load ptr, ptr %l27, !tbaa !29
  store ptr %t1477, ptr %l788, !tbaa !29
  %t1478 = load ptr, ptr %l28, !tbaa !29
  %t1480 = icmp eq ptr %t1478, null
  br i1 %t1480, label %bb445, label %bb446
bb445:
  call void @__olang_check_failed(ptr @olang_loc_a245edc164872a99_7db9d56e029b164d)
  unreachable
bb446:
  br label %bb447
bb447:
  %t1482 = load ptr, ptr %l28, !tbaa !29
  store ptr %t1482, ptr %l791, !tbaa !29
  %t1483 = load ptr, ptr %l3, !tbaa !29
  %t1485 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t1483)
  store %"compiler/source:Span" %t1485, ptr %l793
  br label %bb448
bb448:
  %t1486 = load ptr, ptr %l4, !tbaa !29
  %t1488 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t1486)
  store %"compiler/source:Span" %t1488, ptr %l795
  br label %bb449
bb449:
  %t1489 = load ptr, ptr %l782, !tbaa !29
  %t1490 = load %"compiler/source:Span", ptr %l783
  %t1491 = load %"compiler/source:Span", ptr %l784
  %t1492 = load i32, ptr %l785, !range !{i32 0, i32 114}
  %t1493 = load ptr, ptr %l788, !tbaa !29
  %t1494 = load ptr, ptr %l791, !tbaa !29
  %t1495 = load %"compiler/source:Span", ptr %l793
  %t1496 = load %"compiler/source:Span", ptr %l795
  %t1497 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v3, ptr %v3, ptr %v3, ptr %t1489, %"compiler/source:Span" %t1490, %"compiler/source:Span" %t1491, i32 %t1492, ptr %t1493, ptr %t1494, %"compiler/source:Span" %t1495, %"compiler/source:Span" %t1496)
  store ptr %t1497, ptr %l796
  br label %bb450
bb450:
  call void @__olang_scope_close(ptr %s0)
  %t1498 = load ptr, ptr %l796, !tbaa !29
  store ptr %t1498, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l17 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t16, i32 %t17)
  store i1 %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l17
  br label %bb9
bb8:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb11
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t32)
  store i32 %t34, ptr %l19
  br label %bb10
bb10:
  %t35 = load i32, ptr %l17, !tbaa !23
  %t36 = load i32, ptr %l19, !tbaa !23
  %t37 = icmp eq i32 %t35, %t36
  store i1 %t37, ptr %l12, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l12, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t40)
  store i32 %t42, ptr %l22
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t43 = load i32, ptr %l22, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
bb15:
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_2b2e21654e3310f6_a1c2a2453bd05f02)
  unreachable
bb21:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t47 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t44)
  store i32 %t47, ptr %l25
  br label %bb22
bb22:
  %t48 = load i32, ptr %l25, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorChecked(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l36 = alloca i32
  %l40 = alloca ptr
  %l45 = alloca i64
  %l49 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l60 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i64
  %l69 = alloca %"compiler/generic:Context"
  %l71 = alloca %"compiler/generic:Context"
  %l77 = alloca ptr
  %l78 = alloca i32
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca i32
  %l84 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca { i64, ptr }
  %l111 = alloca i64
  %l115 = alloca i64
  %l118 = alloca i64
  %l138 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l167 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca { i64, ptr }
  %l194 = alloca i64
  %l198 = alloca ptr
  %l200 = alloca ptr
  %l211 = alloca i64
  %l214 = alloca i64
  %l246 = alloca i1
  %l250 = alloca i64
  %l251 = alloca ptr
  %l252 = alloca i1
  %l261 = alloca ptr
  %l266 = alloca i32
  %l267 = alloca { i64, ptr }
  %l271 = alloca i1
  %l277 = alloca i1
  %l283 = alloca i1
  %l290 = alloca i1
  %l293 = alloca ptr
  %l299 = alloca %"compiler/source:Span"
  %l300 = alloca ptr
  %l304 = alloca i32
  %l305 = alloca { i64, ptr }
  %l307 = alloca %"compiler/diagmsg:Msg"
  %l308 = alloca i64
  %l315 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l327 = alloca ptr
  %l331 = alloca { i64, ptr }
  %l333 = alloca ptr
  %l339 = alloca ptr
  %l341 = alloca ptr
  %l346 = alloca ptr
  %l348 = alloca ptr
  %l350 = alloca ptr
  %l353 = alloca i32
  %l354 = alloca ptr
  %l355 = alloca %"compiler/source:Span"
  %l356 = alloca ptr
  %l357 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %t77 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l36
  br label %bb1
bb1:
  %t11 = load i32, ptr %l36, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t15, i32 %t16)
  store ptr %t19, ptr %l40
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l40, !tbaa !29
  store ptr %t20, ptr %l5, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l4, !tbaa !23
  %t30 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t26, i32 %t27)
  store i64 %t30, ptr %l45
  br label %bb3
bb3:
  %t31 = load i64, ptr %l45, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 14
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t34, i64 %t35)
  store ptr %t38, ptr %l49
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l49, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Body", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %t41, !tbaa !23
  store i32 %t42, ptr %l7, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l52, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  store i64 %t45, ptr %l53, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  store i64 %t46, ptr %l54, !tbaa !24
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t47, ptr %l55, !tbaa !23
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l7, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l60
  br label %bb5
bb5:
  %t58 = load ptr, ptr %l52, !tbaa !29
  %t59 = load i64, ptr %l53, !tbaa !24
  %t60 = load i64, ptr %l54, !tbaa !24
  %t61 = load i32, ptr %l55, !tbaa !23
  %t62 = load i32, ptr %l60, !tbaa !23
  %t63 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t58, i64 %t59, i64 %t60, i32 %t61, i32 %t62)
  store ptr %t63, ptr %l61
  br label %bb6
bb6:
  %t64 = load ptr, ptr %l61, !tbaa !29
  store ptr %t64, ptr %l8, !tbaa !29
  %t65 = load ptr, ptr %l8, !tbaa !29
  store ptr %t65, ptr %l62, !tbaa !29
  %t66 = ptrtoint ptr %v0 to i64
  store i64 %t66, ptr %l63, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t67, label %bb7, label %bb8
bb7:
  %t69 = call ptr @__olang_region_make(ptr %v0)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l63, !tbaa !24
  br label %bb8
bb8:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = load i64, ptr %l63
  %t79 = inttoptr i64 %t78 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %t77, ptr %v0, ptr %t79, ptr %t74, i32 %t75, i32 %a3)
  call void @llvm.memmove.p0.p0.i64(ptr %l69, ptr %t77, i64 160, i1 false)
  br label %bb9
bb9:
  %t83 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t83, label %bb10, label %bb11
bb10:
  %t85 = load i64, ptr %l63
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = getelementptr %"compiler/generic:Context", ptr %l69, i32 0, i32 3
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t89 = load { i64, ptr }, ptr %t88
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = call ptr @__olang_region_or(ptr %t90, ptr null)
  %t92 = icmp ne ptr %t91, null
  %t93 = select i1 %t92, ptr %t91, ptr null
  %t94 = getelementptr %"compiler/generic:Context", ptr %l69, i32 0, i32 3
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t94, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr %t93
  %t101 = getelementptr %"compiler/generic:Context", ptr %l69, i32 0, i32 3
  %t102 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr %t100
  %t108 = getelementptr %"compiler/generic:Context", ptr %l69, i32 0, i32 2
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t107
  %t115 = getelementptr %"compiler/generic:Context", ptr %l69, i32 0, i32 2
  %t116 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t115, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr %t114
  %t122 = getelementptr %"compiler/generic:Context", ptr %l69, i32 0, i32 2
  %t123 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t122, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t121
  %t129 = icmp eq ptr %t128, %t86
  call void @__olang_region_settle(ptr %t86, i1 %t129)
  br label %bb11
bb11:
  %t130 = load ptr, ptr %l62, !tbaa !29
  %t131 = getelementptr %"compiler/check:frame", ptr %t130, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t131, i64 160, i1 false)
  %t132 = load ptr, ptr %l62, !tbaa !29
  %t133 = getelementptr %"compiler/check:frame", ptr %t132, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %l69, i64 160, i1 false)
  %t134 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t134, label %bb12, label %bb13
bb12:
  %t136 = getelementptr %"compiler/generic:Context", ptr %l71, i32 0, i32 3
  %t137 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t136, i32 0, i32 2
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr null
  %t143 = getelementptr %"compiler/generic:Context", ptr %l71, i32 0, i32 3
  %t144 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t143, i32 0, i32 1
  %t145 = load { i64, ptr }, ptr %t144
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = call ptr @__olang_region_or(ptr %t146, ptr null)
  %t148 = icmp ne ptr %t147, null
  %t149 = select i1 %t148, ptr %t147, ptr %t142
  %t150 = getelementptr %"compiler/generic:Context", ptr %l71, i32 0, i32 3
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t150, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr %t149
  %t157 = getelementptr %"compiler/generic:Context", ptr %l71, i32 0, i32 2
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t157, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr %t156
  %t164 = getelementptr %"compiler/generic:Context", ptr %l71, i32 0, i32 2
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t164, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t163
  %t171 = getelementptr %"compiler/generic:Context", ptr %l71, i32 0, i32 2
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t171, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr %t170
  call void @__olang_region_drop(ptr %t177)
  store %"compiler/generic:Context" zeroinitializer, ptr %l71
  br label %bb13
bb13:
  %t178 = load ptr, ptr %l8, !tbaa !29
  %t180 = getelementptr %"compiler/check:frame", ptr %t178, i32 0, i32 13
  store i1 true, ptr %t180, !tbaa !21
  %t181 = load ptr, ptr %l8, !tbaa !29
  %t182 = load i32, ptr %l2, !tbaa !23
  %t185 = getelementptr %"compiler/check:frame", ptr %t181, i32 0, i32 14
  store i32 %t182, ptr %t185, !tbaa !23
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t186)
  store ptr %t188, ptr %l77
  br label %bb14
bb14:
  store i32 0, ptr %l78
  %t189 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t189, ptr %l79
  br label %bb15
bb15:
  %t190 = load ptr, ptr %l77, !tbaa !29
  %t191 = load i32, ptr %l78, !range !{i32 0, i32 10}
  %t192 = load %"compiler/source:Span", ptr %l79
  %t193 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t190, i32 -1, i32 %t191, %"compiler/source:Span" %t192)
  store i32 %t193, ptr %l80
  br label %bb16
bb16:
  %t194 = load ptr, ptr %l5, !tbaa !29
  %t196 = icmp eq ptr %t194, null
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb17, label %bb18
bb17:
  %t200 = load ptr, ptr %l5, !tbaa !29
  %t202 = getelementptr %"compiler/ast:TypeDecl", ptr %t200, i32 0, i32 3
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = icmp eq ptr %t203, null
  %t207 = xor i1 %t205, true
  store i1 %t207, ptr %l84, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb19
bb19:
  %t209 = load i1, ptr %l84, !tbaa !21
  br i1 %t209, label %bb20, label %bb21
bb20:
  %t210 = load ptr, ptr %l5, !tbaa !29
  %t212 = getelementptr %"compiler/ast:TypeDecl", ptr %t210, i32 0, i32 3
  %t213 = load ptr, ptr %t212, !tbaa !29
  store ptr %t213, ptr %l9, !tbaa !29
  %t215 = load ptr, ptr %l9, !tbaa !29
  store ptr %t215, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t216 = load ptr, ptr %l91, !tbaa !29
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %bb22, label %bb23
bb21:
  br label %bb138
bb22:
  %t219 = load ptr, ptr %l91, !tbaa !29
  %t220 = load i64, ptr %t219, !range !{i64 0, i64 5}
  %t222 = icmp eq i64 %t220, 0
  store i1 %t222, ptr %l92, !tbaa !21
  br label %bb23
bb23:
  %t223 = load i1, ptr %l92, !tbaa !21
  br i1 %t223, label %bb24, label %bb25
bb24:
  %t224 = load ptr, ptr %l9, !tbaa !29
  %t226 = getelementptr { i64, [6 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { ptr }, ptr %t226, i32 0, i32 0
  %t228 = load ptr, ptr %t227
  store ptr %t228, ptr %l10, !tbaa !29
  br label %bb26
bb25:
  br label %bb81
bb26:
  store %olang.scope zeroinitializer, ptr %s2
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/check:Checker", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = getelementptr %"compiler/generic:Program", ptr %t233, i32 0, i32 2
  store ptr %t235, ptr %l99, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/check:Checker", ptr %t236, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !29
  %t241 = getelementptr %"compiler/generic:Program", ptr %t239, i32 0, i32 2
  %t242 = load i32, ptr %l7, !tbaa !23
  %t245 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t241, i32 %t242)
  store i32 %t245, ptr %l104
  br label %bb27
bb27:
  %t246 = load ptr, ptr %l99, !tbaa !29
  %t247 = load i32, ptr %l104, !tbaa !23
  %t248 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t246, i32 %t247)
  store { i64, ptr } %t248, ptr %l105
  br label %bb28
bb28:
  %t249 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t249, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t250 = load ptr, ptr %l10, !tbaa !29
  %t252 = getelementptr %"compiler/ast:StructBody", ptr %t250, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t261 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t255, i64 %t258)
  store i64 %t261, ptr %l111
  br label %bb29
bb29:
  %t262 = load i64, ptr %l111, !tbaa !24
  store i64 %t262, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t263 = load i64, ptr %l13, !tbaa !24
  %t264 = load i64, ptr %l12, !tbaa !24
  %t267 = icmp sgt i64 %t263, %t264
  br i1 %t267, label %bb30, label %bb31
bb30:
  %t269 = load i64, ptr %l14, !tbaa !24
  %t271 = icmp sgt i64 %t269, 0
  br i1 %t271, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb35
bb32:
  %t273 = load i64, ptr %l13, !tbaa !24
  %t274 = load i64, ptr %l12, !tbaa !24
  %t277 = sub i64 %t273, %t274
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = add i64 %t277, %t278
  %t283 = sub i64 %t281, 1
  %t284 = load i64, ptr %l14, !tbaa !24
  %t287 = sdiv i64 %t283, %t284
  store i64 %t287, ptr %l118, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb34
bb34:
  %t289 = load i64, ptr %l118, !tbaa !24
  store i64 %t289, ptr %l115, !tbaa !24
  br label %bb35
bb35:
  %t290 = load i64, ptr %l115, !tbaa !24
  store i64 %t290, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb36
bb36:
  %t291 = load i64, ptr %l16, !tbaa !24
  %t292 = load i64, ptr %l15, !tbaa !24
  %t295 = icmp slt i64 %t291, %t292
  %t297 = xor i1 %t295, true
  br i1 %t297, label %bb37, label %bb38
bb37:
  br label %bb43
bb38:
  br label %bb39
bb39:
  %t299 = load i64, ptr %l12, !tbaa !24
  %t300 = load i64, ptr %l16, !tbaa !24
  %t301 = load i64, ptr %l14, !tbaa !24
  %t304 = mul i64 %t300, %t301
  %t307 = add i64 %t299, %t304
  store i64 %t307, ptr %l17, !tbaa !24
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l10, !tbaa !29
  %t312 = getelementptr %"compiler/ast:StructBody", ptr %t310, i32 0, i32 0
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  store { i64, ptr } %t313, ptr %l138, !tbaa !27
  %t314 = load i64, ptr %l17, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr ptr, ptr %t317, i64 %t314
  %t319 = load ptr, ptr %t318, !tbaa !39
  %t321 = getelementptr %"compiler/ast:Param", ptr %t319, i32 0, i32 1
  %t322 = load i32, ptr %t321, !tbaa !23
  %t323 = load ptr, ptr %l10, !tbaa !29
  %t325 = getelementptr %"compiler/ast:StructBody", ptr %t323, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  store { i64, ptr } %t326, ptr %l143, !tbaa !27
  %t327 = load i64, ptr %l17, !tbaa !24
  %t329 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = getelementptr ptr, ptr %t330, i64 %t327
  %t332 = load ptr, ptr %t331, !tbaa !39
  %t334 = getelementptr %"compiler/ast:Param", ptr %t332, i32 0, i32 0
  %t335 = load %"compiler/source:Span", ptr %t334
  %t336 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t336, ptr %l147, !tbaa !27
  %t337 = load i64, ptr %l17, !tbaa !24
  %t339 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = getelementptr i32, ptr %t340, i64 %t337
  %t342 = load i32, ptr %t341, !tbaa !33
  %t343 = load i64, ptr %l17, !tbaa !24
  %t344 = load ptr, ptr %l10, !tbaa !29
  %t346 = getelementptr %"compiler/ast:StructBody", ptr %t344, i32 0, i32 0
  %t347 = load { i64, ptr }, ptr %t346, !tbaa !27
  store { i64, ptr } %t347, ptr %l152, !tbaa !27
  %t348 = load i64, ptr %l17, !tbaa !24
  %t350 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t351 = load ptr, ptr %t350, !tbaa !27
  %t352 = getelementptr ptr, ptr %t351, i64 %t348
  %t353 = load ptr, ptr %t352, !tbaa !39
  %t355 = getelementptr %"compiler/ast:Param", ptr %t353, i32 0, i32 2
  %t356 = load ptr, ptr %t355, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v0, ptr %t309, i32 %t322, %"compiler/source:Span" %t335, i32 %t342, i64 %t343, ptr %t356)
  br label %bb40
bb40:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load ptr, ptr %l10, !tbaa !29
  %t366 = getelementptr %"compiler/ast:StructBody", ptr %t364, i32 0, i32 0
  %t367 = load { i64, ptr }, ptr %t366, !tbaa !27
  store { i64, ptr } %t367, ptr %l158, !tbaa !27
  %t368 = load i64, ptr %l17, !tbaa !24
  %t370 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t371 = load ptr, ptr %t370, !tbaa !27
  %t372 = getelementptr ptr, ptr %t371, i64 %t368
  %t373 = load ptr, ptr %t372, !tbaa !39
  %t374 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t374, ptr %l161, !tbaa !27
  %t375 = load i64, ptr %l17, !tbaa !24
  %t377 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr i32, ptr %t378, i64 %t375
  %t380 = load i32, ptr %t379, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v0, ptr %t363, ptr %t373, i32 %t380)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t384 = load i64, ptr %l16, !tbaa !24
  %t386 = add i64 %t384, 1
  store i64 %t386, ptr %l16, !tbaa !24
  br label %bb36
bb43:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t388)
  store ptr %t390, ptr %l167
  br label %bb44
bb44:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/check:Checker", ptr %t391, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t395 = load i32, ptr %l7, !tbaa !23
  %t398 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s2, ptr %t394, i32 %t395)
  store { i64, ptr } %t398, ptr %l171
  br label %bb45
bb45:
  %t399 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t400 = extractvalue { i64, ptr } %t399, 0
  %t401 = extractvalue { i64, ptr } %t399, 1
  %t402 = mul i64 %t400, 8
  %t403 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  %t406 = load ptr, ptr %l167, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s2, ptr %t406, { i64, ptr } %t405)
  br label %bb46
bb46:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/check:Checker", ptr %t408, i32 0, i32 1
  %t411 = load ptr, ptr %t410, !tbaa !29
  %t413 = getelementptr %"compiler/generic:Program", ptr %t411, i32 0, i32 2
  store ptr %t413, ptr %l175, !tbaa !29
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/check:Checker", ptr %t414, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !29
  %t419 = getelementptr %"compiler/generic:Program", ptr %t417, i32 0, i32 2
  %t420 = load i32, ptr %l2, !tbaa !23
  %t423 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t419, i32 %t420)
  store i32 %t423, ptr %l180
  br label %bb47
bb47:
  %t424 = load ptr, ptr %l175, !tbaa !29
  %t425 = load i32, ptr %l180, !tbaa !23
  %t426 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t424, i32 %t425)
  store { i64, ptr } %t426, ptr %l181
  br label %bb48
bb48:
  %t427 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t428 = extractvalue { i64, ptr } %t427, 0
  %t430 = icmp sgt i64 %t428, 0
  br i1 %t430, label %bb49, label %bb50
bb49:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t433 = load i32, ptr %l2, !tbaa !23
  %t434 = load i32, ptr %l4, !tbaa !23
  %t435 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstHoldsItself(ptr %v0, ptr %v0, ptr %t432, i32 %t433, i32 %t434, ptr %t435)
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstImmutUnique(ptr %v0, ptr %t440, i32 %t441)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load i32, ptr %l2, !tbaa !23
  %t446 = load ptr, ptr %l5, !tbaa !29
  %t451 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeContexts(ptr %v0, ptr %v0, ptr %t444, i32 %t445, ptr %t446)
  store i64 %t451, ptr %l194
  br label %bb54
bb54:
  %t452 = load i64, ptr %l194, !tbaa !24
  store i64 %t452, ptr %l18, !tbaa !24
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load ptr, ptr %l10, !tbaa !29
  %t456 = getelementptr %"compiler/ast:StructBody", ptr %t454, i32 0, i32 2
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  %t460 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v0, ptr %v0, ptr %t453, { i64, ptr } %t457)
  store ptr %t460, ptr %l198
  br label %bb55
bb55:
  %t461 = load ptr, ptr %l198, !tbaa !29
  store ptr %t461, ptr %l19, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t462)
  store ptr %t464, ptr %l200
  br label %bb56
bb56:
  %t465 = load ptr, ptr %l200, !tbaa !29
  %t466 = load ptr, ptr %l19, !tbaa !29
  %t470 = getelementptr %"compiler/typed:Body", ptr %t465, i32 0, i32 11
  store ptr %t466, ptr %t470, !tbaa !29
  %t471 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewBody(ptr %v0, ptr %t471)
  br label %bb57
bb57:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypes(ptr %v0, ptr %t473, i32 %t474)
  br label %bb58
bb58:
  store i64 0, ptr %l20, !tbaa !24
  %t477 = load i64, ptr %l18, !tbaa !24
  store i64 %t477, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t479 = load i64, ptr %l21, !tbaa !24
  %t480 = load i64, ptr %l20, !tbaa !24
  %t483 = icmp sgt i64 %t479, %t480
  br i1 %t483, label %bb59, label %bb60
bb59:
  %t485 = load i64, ptr %l22, !tbaa !24
  %t487 = icmp sgt i64 %t485, 0
  br i1 %t487, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l211, !tbaa !24
  br label %bb64
bb61:
  %t489 = load i64, ptr %l21, !tbaa !24
  %t490 = load i64, ptr %l20, !tbaa !24
  %t493 = sub i64 %t489, %t490
  %t494 = load i64, ptr %l22, !tbaa !24
  %t497 = add i64 %t493, %t494
  %t499 = sub i64 %t497, 1
  %t500 = load i64, ptr %l22, !tbaa !24
  %t503 = sdiv i64 %t499, %t500
  store i64 %t503, ptr %l214, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l214, !tbaa !24
  br label %bb63
bb63:
  %t505 = load i64, ptr %l214, !tbaa !24
  store i64 %t505, ptr %l211, !tbaa !24
  br label %bb64
bb64:
  %t506 = load i64, ptr %l211, !tbaa !24
  store i64 %t506, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb65
bb65:
  %t507 = load i64, ptr %l24, !tbaa !24
  %t508 = load i64, ptr %l23, !tbaa !24
  %t511 = icmp slt i64 %t507, %t508
  %t513 = xor i1 %t511, true
  br i1 %t513, label %bb66, label %bb67
bb66:
  br label %bb71
bb67:
  br label %bb68
bb68:
  %t515 = load i64, ptr %l20, !tbaa !24
  %t516 = load i64, ptr %l24, !tbaa !24
  %t517 = load i64, ptr %l22, !tbaa !24
  %t520 = mul i64 %t516, %t517
  %t523 = add i64 %t515, %t520
  store i64 %t523, ptr %l25, !tbaa !24
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t527 = getelementptr %"compiler/check:Checker", ptr %t525, i32 0, i32 1
  %t528 = load ptr, ptr %t527, !tbaa !29
  %t530 = getelementptr %"compiler/generic:Program", ptr %t528, i32 0, i32 0
  %t531 = load ptr, ptr %t530, !tbaa !29
  %t533 = getelementptr %"compiler/load:Loader", ptr %t531, i32 0, i32 4
  %t534 = load ptr, ptr %t533, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %t534)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t536 = load i64, ptr %l24, !tbaa !24
  %t538 = add i64 %t536, 1
  store i64 %t538, ptr %l24, !tbaa !24
  br label %bb65
bb71:
  %t540 = load ptr, ptr %l10, !tbaa !29
  %t542 = getelementptr %"compiler/ast:StructBody", ptr %t540, i32 0, i32 3
  %t543 = getelementptr %"compiler/source:Span", ptr %t542, i32 0, i32 1
  %t544 = load i32, ptr %t543, !tbaa !23
  %t546 = icmp sgt i32 %t544, 0
  br i1 %t546, label %bb72, label %bb73
bb72:
  %t548 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t548)
  br label %bb74
bb73:
  br label %bb80
bb74:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = getelementptr %"compiler/check:Checker", ptr %t550, i32 0, i32 1
  %t553 = load ptr, ptr %t552, !tbaa !29
  %t555 = getelementptr %"compiler/generic:Program", ptr %t553, i32 0, i32 2
  %t556 = load i32, ptr %l2, !tbaa !23
  %t559 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t555, i32 %t556)
  store i1 %t559, ptr %l246
  br label %bb75
bb75:
  %t560 = load i1, ptr %l246, !tbaa !21
  br i1 %t560, label %bb76, label %bb77
bb76:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t562 = load i32, ptr %l2, !tbaa !23
  %t563 = load i64, ptr %l6, !tbaa !24
  %t567 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edtorBody(ptr %v0, ptr %t561, i32 %t562, i64 %t563)
  store i64 %t567, ptr %l250
  br label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb80:
  call void @__olang_scope_close(ptr %s2)
  br label %bb137
bb81:
  %t568 = load ptr, ptr %l9, !tbaa !29
  store ptr %t568, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t569 = load ptr, ptr %l251, !tbaa !29
  %t570 = icmp ne ptr %t569, null
  br i1 %t570, label %bb82, label %bb83
bb82:
  %t572 = load ptr, ptr %l251, !tbaa !29
  %t573 = load i64, ptr %t572, !range !{i64 0, i64 5}
  %t575 = icmp eq i64 %t573, 3
  store i1 %t575, ptr %l252, !tbaa !21
  br label %bb83
bb83:
  %t576 = load i1, ptr %l252, !tbaa !21
  br i1 %t576, label %bb84, label %bb85
bb84:
  %t577 = load ptr, ptr %l9, !tbaa !29
  %t579 = getelementptr { i64, [6 x i64] }, ptr %t577, i32 0, i32 1
  %t580 = getelementptr { ptr, ptr }, ptr %t579, i32 0, i32 0
  %t581 = load ptr, ptr %t580
  store ptr %t581, ptr %l26, !tbaa !29
  %t583 = load ptr, ptr %l9, !tbaa !29
  %t585 = getelementptr { i64, [6 x i64] }, ptr %t583, i32 0, i32 1
  %t586 = getelementptr { ptr, ptr }, ptr %t585, i32 0, i32 1
  %t587 = load ptr, ptr %t586
  store ptr %t587, ptr %l27, !tbaa !29
  br label %bb86
bb85:
  br label %bb130
bb86:
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t591 = getelementptr %"compiler/check:Checker", ptr %t589, i32 0, i32 1
  %t592 = load ptr, ptr %t591, !tbaa !29
  %t594 = getelementptr %"compiler/generic:Program", ptr %t592, i32 0, i32 2
  store ptr %t594, ptr %l261, !tbaa !29
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t597 = getelementptr %"compiler/check:Checker", ptr %t595, i32 0, i32 1
  %t598 = load ptr, ptr %t597, !tbaa !29
  %t600 = getelementptr %"compiler/generic:Program", ptr %t598, i32 0, i32 2
  %t601 = load i32, ptr %l7, !tbaa !23
  %t604 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t600, i32 %t601)
  store i32 %t604, ptr %l266
  br label %bb87
bb87:
  %t605 = load ptr, ptr %l261, !tbaa !29
  %t606 = load i32, ptr %l266, !tbaa !23
  %t607 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t605, i32 %t606)
  store { i64, ptr } %t607, ptr %l267
  br label %bb88
bb88:
  %t608 = load { i64, ptr }, ptr %l267, !tbaa !27
  store { i64, ptr } %t608, ptr %l28, !tbaa !27
  %t609 = load ptr, ptr %l27, !tbaa !29
  %t611 = icmp eq ptr %t609, null
  %t613 = xor i1 %t611, true
  br i1 %t613, label %bb89, label %bb90
bb89:
  %t615 = load ptr, ptr %l27, !tbaa !29
  %t617 = getelementptr %"compiler/ast:Func", ptr %t615, i32 0, i32 3
  %t618 = load ptr, ptr %t617, !tbaa !29
  %t620 = getelementptr %"compiler/ast:Sig", ptr %t618, i32 0, i32 0
  %t621 = load { i64, ptr }, ptr %t620, !tbaa !27
  %t623 = extractvalue { i64, ptr } %t621, 0
  %t625 = icmp sgt i64 %t623, 0
  store i1 %t625, ptr %l271, !tbaa !21
  br label %bb91
bb90:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb91
bb91:
  %t627 = load i1, ptr %l271, !tbaa !21
  br i1 %t627, label %bb92, label %bb93
bb92:
  %t628 = load ptr, ptr %l27, !tbaa !29
  %t630 = getelementptr %"compiler/ast:Func", ptr %t628, i32 0, i32 3
  %t631 = load ptr, ptr %t630, !tbaa !29
  %t633 = getelementptr %"compiler/ast:Sig", ptr %t631, i32 0, i32 0
  %t634 = load { i64, ptr }, ptr %t633, !tbaa !27
  %t636 = extractvalue { i64, ptr } %t634, 0
  %t638 = icmp eq i64 %t636, 1
  store i1 %t638, ptr %l277, !tbaa !21
  br label %bb94
bb93:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb94
bb94:
  %t640 = load i1, ptr %l277, !tbaa !21
  br i1 %t640, label %bb95, label %bb96
bb95:
  %t641 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t643 = extractvalue { i64, ptr } %t641, 0
  %t645 = icmp eq i64 %t643, 1
  store i1 %t645, ptr %l283, !tbaa !21
  br label %bb97
bb96:
  store i1 false, ptr %l283, !tbaa !21
  br label %bb97
bb97:
  %t647 = load i1, ptr %l283, !tbaa !21
  store i1 %t647, ptr %l29, !tbaa !21
  %t648 = load ptr, ptr %l27, !tbaa !29
  %t650 = icmp eq ptr %t648, null
  %t652 = xor i1 %t650, true
  br i1 %t652, label %bb98, label %bb99
bb98:
  %t654 = load i1, ptr %l29, !tbaa !21
  %t656 = xor i1 %t654, true
  store i1 %t656, ptr %l290, !tbaa !21
  br label %bb100
bb99:
  store i1 false, ptr %l290, !tbaa !21
  br label %bb100
bb100:
  %t658 = load i1, ptr %l290, !tbaa !21
  br i1 %t658, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s13
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l293, !tbaa !29
  %t660 = load ptr, ptr %l27, !tbaa !29
  %t662 = getelementptr %"compiler/ast:Func", ptr %t660, i32 0, i32 0
  %t663 = getelementptr %"compiler/source:Span", ptr %t662, i32 0, i32 0
  %t664 = load i32, ptr %t663, !tbaa !23
  %t665 = load ptr, ptr %l27, !tbaa !29
  %t667 = getelementptr %"compiler/ast:Func", ptr %t665, i32 0, i32 0
  %t668 = getelementptr %"compiler/source:Span", ptr %t667, i32 0, i32 0
  %t669 = load i32, ptr %t668, !tbaa !23
  %t671 = add i32 %t669, 1
  %t674 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s13, i32 %t664, i32 %t671)
  store %"compiler/source:Span" %t674, ptr %l299
  br label %bb103
bb102:
  %t675 = load i1, ptr %l29, !tbaa !21
  br i1 %t675, label %bb108, label %bb109
bb103:
  %t677 = load ptr, ptr %l0, !tbaa !29
  store ptr %t677, ptr %l300, !tbaa !29
  %t678 = load ptr, ptr %l0, !tbaa !29
  %t679 = load ptr, ptr %l26, !tbaa !29
  %t683 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v0, ptr %t678, ptr %t679)
  store i32 %t683, ptr %l304
  br label %bb104
bb104:
  %t684 = load ptr, ptr %l300, !tbaa !29
  %t685 = load i32, ptr %l304, !tbaa !23
  %t686 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t684, i32 %t685)
  store { i64, ptr } %t686, ptr %l305
  br label %bb105
bb105:
  %t687 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t688 = extractvalue { i64, ptr } %t687, 0
  %t689 = extractvalue { i64, ptr } %t687, 1
  %t690 = mul i64 %t688, 1
  %t691 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t690)
  call void @llvm.memcpy.p0.p0.i64(ptr %t691, ptr %t689, i64 %t690, i1 false)
  %t692 = insertvalue { i64, ptr } undef, i64 %t688, 0
  %t693 = insertvalue { i64, ptr } %t692, ptr %t691, 1
  %t695 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePrimCtorParam(ptr %v0, ptr %v0, { i64, ptr } %t693)
  store %"compiler/diagmsg:Msg" %t695, ptr %l307
  br label %bb106
bb106:
  %t696 = load ptr, ptr %l293, !tbaa !29
  %t697 = load %"compiler/source:Span", ptr %l299
  %t698 = load %"compiler/diagmsg:Msg", ptr %l307
  %t699 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t696, %"compiler/source:Span" %t697, %"compiler/diagmsg:Msg" %t698)
  store i64 %t699, ptr %l308
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s13)
  br label %bb129
bb108:
  store %olang.scope zeroinitializer, ptr %s15
  %t700 = load ptr, ptr %l27, !tbaa !29
  %t702 = icmp eq ptr %t700, null
  br i1 %t702, label %bb110, label %bb111
bb109:
  store %olang.scope zeroinitializer, ptr %s16
  %t704 = load ptr, ptr %l0, !tbaa !29
  store ptr %t704, ptr %l354, !tbaa !29
  %t705 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s16, i32 0, i32 0)
  store %"compiler/source:Span" %t705, ptr %l355
  br label %bb126
bb110:
  call void @__olang_check_failed(ptr @olang_loc_1a21871eed64942d_5f8df5778525f19)
  unreachable
bb111:
  br label %bb112
bb112:
  %t706 = load ptr, ptr %l27, !tbaa !29
  %t709 = getelementptr %"compiler/ast:Func", ptr %t706, i32 0, i32 3
  %t710 = load ptr, ptr %t709, !tbaa !29
  %t712 = getelementptr %"compiler/ast:Sig", ptr %t710, i32 0, i32 0
  %t713 = load { i64, ptr }, ptr %t712, !tbaa !27
  store { i64, ptr } %t713, ptr %l315, !tbaa !27
  %t714 = getelementptr { i64, ptr }, ptr %l315, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !27
  %t716 = getelementptr ptr, ptr %t715, i64 0
  %t717 = load ptr, ptr %t716, !tbaa !39
  store ptr %t717, ptr %l30, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t720 = load ptr, ptr %l30, !tbaa !29
  %t722 = getelementptr %"compiler/ast:Param", ptr %t720, i32 0, i32 1
  %t723 = load i32, ptr %t722, !tbaa !23
  %t724 = load ptr, ptr %l30, !tbaa !29
  %t726 = getelementptr %"compiler/ast:Param", ptr %t724, i32 0, i32 0
  %t727 = load %"compiler/source:Span", ptr %t726
  %t728 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t728, ptr %l322, !tbaa !27
  %t729 = getelementptr { i64, ptr }, ptr %l322, i32 0, i32 1
  %t730 = load ptr, ptr %t729, !tbaa !27
  %t731 = getelementptr i32, ptr %t730, i64 0
  %t732 = load i32, ptr %t731, !tbaa !33
  %t733 = load ptr, ptr %l30, !tbaa !29
  %t735 = getelementptr %"compiler/ast:Param", ptr %t733, i32 0, i32 2
  %t736 = load ptr, ptr %t735, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v0, ptr %t719, i32 %t723, %"compiler/source:Span" %t727, i32 %t732, i64 0, ptr %t736)
  br label %bb113
bb113:
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t744 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t742)
  store ptr %t744, ptr %l327
  br label %bb114
bb114:
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t747 = getelementptr %"compiler/check:Checker", ptr %t745, i32 0, i32 1
  %t748 = load ptr, ptr %t747, !tbaa !29
  %t749 = load i32, ptr %l7, !tbaa !23
  %t752 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s15, ptr %t748, i32 %t749)
  store { i64, ptr } %t752, ptr %l331
  br label %bb115
bb115:
  %t753 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t754 = extractvalue { i64, ptr } %t753, 0
  %t755 = extractvalue { i64, ptr } %t753, 1
  %t756 = mul i64 %t754, 8
  %t757 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t756)
  call void @llvm.memcpy.p0.p0.i64(ptr %t757, ptr %t755, i64 %t756, i1 false)
  %t758 = insertvalue { i64, ptr } undef, i64 %t754, 0
  %t759 = insertvalue { i64, ptr } %t758, ptr %t757, 1
  %t760 = load ptr, ptr %l327, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s15, ptr %t760, { i64, ptr } %t759)
  br label %bb116
bb116:
  %t762 = load ptr, ptr %l0, !tbaa !29
  store ptr %t762, ptr %l333, !tbaa !29
  %t763 = load ptr, ptr %l27, !tbaa !29
  %t765 = icmp eq ptr %t763, null
  br i1 %t765, label %bb117, label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_c58696bc0c2f7b46_a4aa6b3b7860c7f2)
  unreachable
bb118:
  br label %bb119
bb119:
  %t767 = load ptr, ptr %l27, !tbaa !29
  %t770 = getelementptr %"compiler/ast:Func", ptr %t767, i32 0, i32 4
  %t771 = load { i64, ptr }, ptr %t770, !tbaa !27
  %t772 = load ptr, ptr %l333, !tbaa !29
  %t774 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v0, ptr %v0, ptr %t772, { i64, ptr } %t771)
  store ptr %t774, ptr %l339
  br label %bb120
bb120:
  %t775 = load ptr, ptr %l339, !tbaa !29
  store ptr %t775, ptr %l31, !tbaa !29
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t778 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t776)
  store ptr %t778, ptr %l341
  br label %bb121
bb121:
  %t779 = load ptr, ptr %l341, !tbaa !29
  %t780 = load ptr, ptr %l31, !tbaa !29
  %t784 = getelementptr %"compiler/typed:Body", ptr %t779, i32 0, i32 11
  store ptr %t780, ptr %t784, !tbaa !29
  %t785 = load ptr, ptr %l0, !tbaa !29
  %t787 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t785)
  store ptr %t787, ptr %l346
  br label %bb122
bb122:
  %t788 = load ptr, ptr %l346, !tbaa !29
  %t790 = getelementptr %"compiler/typed:Body", ptr %t788, i32 0, i32 10
  store ptr %t790, ptr %l348, !tbaa !29
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t793 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t791)
  store ptr %t793, ptr %l350
  br label %bb123
bb123:
  %t794 = load ptr, ptr %l350, !tbaa !29
  %t796 = getelementptr %"compiler/typed:Body", ptr %t794, i32 0, i32 5
  %t798 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t796, i64 0)
  store i32 %t798, ptr %l353
  br label %bb124
bb124:
  %t799 = load ptr, ptr %l348, !tbaa !29
  %t800 = load i32, ptr %l353, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t799, i32 %t800)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s15)
  br label %bb128
bb126:
  %t801 = load ptr, ptr %l354, !tbaa !29
  %t802 = load %"compiler/source:Span", ptr %l355
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t801, %"compiler/source:Span" %t802, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s16)
  br label %bb128
bb128:
  br label %bb129
bb129:
  br label %bb137
bb130:
  br i1 true, label %bb131, label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb136
bb133:
  store %olang.scope zeroinitializer, ptr %s17
  %t803 = load ptr, ptr %l0, !tbaa !29
  store ptr %t803, ptr %l356, !tbaa !29
  %t804 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s17, i32 0, i32 0)
  store %"compiler/source:Span" %t804, ptr %l357
  br label %bb134
bb134:
  %t805 = load ptr, ptr %l356, !tbaa !29
  %t806 = load %"compiler/source:Span", ptr %l357
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t805, %"compiler/source:Span" %t806, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s17)
  br label %bb137
bb136:
  call void @__olang_check_failed(ptr @olang_loc_dbcdd42e40c3e4ce_a7e80860aca3d0ca)
  unreachable
bb137:
  br label %bb138
bb138:
  %t807 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t807)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelementLocals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca i64
  %l10 = alloca i1
  %l13 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l26 = alloca i32
  %l30 = alloca ptr
  %l33 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l42 = alloca i64
  %t22 = alloca { i64, [1 x i64] }, align 8
  %t46 = alloca { i64, [3 x i64] }, align 8
  %t70 = alloca { i64, [1 x i64] }, align 8
  %t94 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:ForIn", ptr %t1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp ne i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  store i1 %t10, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l10, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l13, !tbaa !29
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/ast:ForIn", ptr %t14, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %l15, !tbaa !23
  %t18 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t18, ptr %l16
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t19)
  store i32 %t21, ptr %l18
  br label %bb6
bb5:
  br label %bb10
bb6:
  store { i64, [1 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [1 x i64] }, ptr %t22, i32 0, i32 0
  store i64 0, ptr %t23
  %t24 = load { i64, [1 x i64] }, ptr %t22
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i32, ptr %l15, !tbaa !23
  %t27 = load %"compiler/source:Span", ptr %l16
  %t28 = load i32, ptr %l18, !tbaa !23
  %t31 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t25, i32 %t26, %"compiler/source:Span" %t27, i32 %t28, i32 1, { i64, [1 x i64] } %t24)
  store i64 %t31, ptr %l21
  br label %bb7
bb7:
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l22, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t34, ptr %l23
  %t37 = trunc i64 %t32 to i32
  store i32 %t37, ptr %l26, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load i64, ptr %l3, !tbaa !24
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t39, %"compiler/source:Span" %t40, i64 %t41)
  store ptr %t45, ptr %l30
  br label %bb8
bb8:
  store { i64, [3 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 0
  store i64 0, ptr %t47
  %t48 = load %"compiler/source:Span", ptr %l23
  %t49 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t48, 0
  %t50 = load i32, ptr %l26, !tbaa !23
  %t51 = insertvalue { %"compiler/source:Span", i32, ptr } %t49, i32 %t50, 1
  %t52 = load ptr, ptr %l30, !tbaa !29
  %t53 = insertvalue { %"compiler/source:Span", i32, ptr } %t51, ptr %t52, 2
  %t54 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t53, ptr %t54
  %t55 = load { i64, [3 x i64] }, ptr %t46
  %t57 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t55, ptr %t57
  %t58 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t58, ptr %t57)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/ast:ForIn", ptr %t61, i32 0, i32 1
  %t64 = load i32, ptr %t63, !tbaa !23
  store i32 %t64, ptr %l35, !tbaa !23
  %t65 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t65, ptr %l36
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t69 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t66)
  store i32 %t69, ptr %l39
  br label %bb11
bb11:
  store { i64, [1 x i64] } zeroinitializer, ptr %t70
  %t71 = getelementptr { i64, [1 x i64] }, ptr %t70, i32 0, i32 0
  store i64 4, ptr %t71
  %t72 = load { i64, [1 x i64] }, ptr %t70
  %t73 = load ptr, ptr %l33, !tbaa !29
  %t74 = load i32, ptr %l35, !tbaa !23
  %t75 = load %"compiler/source:Span", ptr %l36
  %t76 = load i32, ptr %l39, !tbaa !23
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t73, i32 %t74, %"compiler/source:Span" %t75, i32 %t76, i32 1, { i64, [1 x i64] } %t72)
  store i64 %t79, ptr %l42
  br label %bb12
bb12:
  %t80 = load i64, ptr %l42, !tbaa !24
  store i64 %t80, ptr %l6, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v2, ptr %t81, i64 %t82, ptr %t83)
  br label %bb13
bb13:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l1
  %t89 = load i64, ptr %l6, !tbaa !24
  %t91 = trunc i64 %t89 to i32
  %t93 = load ptr, ptr %l4, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [3 x i64] }, ptr %t94, i32 0, i32 0
  store i64 0, ptr %t95
  %t97 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t88, 0
  %t99 = insertvalue { %"compiler/source:Span", i32, ptr } %t97, i32 %t91, 1
  %t101 = insertvalue { %"compiler/source:Span", i32, ptr } %t99, ptr %t93, 2
  %t102 = getelementptr { i64, [3 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t101, ptr %t102
  %t103 = load { i64, [3 x i64] }, ptr %t94
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t103, ptr %t105
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t87, ptr %t105)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l18 = alloca i32
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i32
  %l37 = alloca i32
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 17
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
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_e814c7d90a97c3f7_92d0ddc6cf15478b)
  unreachable
bb7:
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t24, ptr %t22)
  store i32 %t26, ptr %l18
  br label %bb9
bb9:
  %t27 = load i32, ptr %l2, !tbaa !23
  %t28 = load ptr, ptr %l12, !tbaa !29
  %t29 = load i32, ptr %l18, !tbaa !23
  %t31 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatElem(ptr %v0, ptr %t28, i32 %t29, i32 %t27)
  store i32 %t31, ptr %l20
  br label %bb10
bb10:
  %t32 = load i32, ptr %l20, !tbaa !23
  store i32 %t32, ptr %rv
  br label %ret
bb11:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 30}
  %t40 = icmp eq i64 %t38, 15
  store i1 %t40, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l22, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t44, i32 0, i32 1
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i32 %t52, ptr %l29
  br label %bb17
bb17:
  %t53 = load i32, ptr %l29, !tbaa !23
  store i32 %t53, ptr %l5, !tbaa !23
  %t54 = load i32, ptr %l5, !tbaa !23
  %t56 = icmp slt i32 %t54, 0
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load i32, ptr %l5, !tbaa !23
  store i32 %t58, ptr %l32, !tbaa !23
  br label %bb21
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l5, !tbaa !23
  %t62 = load i32, ptr %l2, !tbaa !23
  %t66 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatElem(ptr %v0, ptr %t60, i32 %t61, i32 %t62)
  store i32 %t66, ptr %l37
  br label %bb20
bb20:
  %t67 = load i32, ptr %l37, !tbaa !23
  store i32 %t67, ptr %l32, !tbaa !23
  br label %bb21
bb21:
  %t68 = load i32, ptr %l32, !tbaa !23
  store i32 %t68, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i32 -1, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_fbaa832dc504c3cf_460d6afe77a0b033)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l35 = alloca i64
  %l36 = alloca i32
  %l37 = alloca i32
  %lp38 = alloca ptr
  %lp39 = alloca ptr
  %l42 = alloca i32
  %l50 = alloca i64
  %l53 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca i32
  %l60 = alloca i32
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l68 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i32
  %l74 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l80 = alloca i64
  %l83 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca i64
  %l89 = alloca i64
  %l93 = alloca i64
  %l96 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l110 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l115 = alloca i64
  %l118 = alloca ptr
  %l124 = alloca i32
  %l129 = alloca { i64, ptr }
  %l135 = alloca i64
  %l138 = alloca i64
  %l156 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l170 = alloca %"compiler/msgs:Nearest"
  %l179 = alloca { i64, ptr }
  %l182 = alloca ptr
  %l186 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l195 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l201 = alloca { i64, ptr }
  %l203 = alloca %"compiler/diagmsg:Msg"
  %l204 = alloca i64
  %l207 = alloca ptr
  %l211 = alloca ptr
  %l216 = alloca i32
  %l217 = alloca { i64, ptr }
  %l223 = alloca i64
  %l226 = alloca i64
  %l247 = alloca { i64, ptr }
  %l250 = alloca i32
  %l259 = alloca i32
  %l264 = alloca i64
  %l268 = alloca i1
  %l273 = alloca ptr
  %l280 = alloca ptr
  %l285 = alloca i32
  %l286 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l292 = alloca ptr
  %l297 = alloca i32
  %l298 = alloca { i64, ptr }
  %l299 = alloca { i64, ptr }
  %l313 = alloca %"compiler/source:Span"
  %l314 = alloca i32
  %l318 = alloca %"compiler/typed:Payload"
  %l329 = alloca ptr
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t552 = alloca { i64, [4 x i64] }, align 8
  %t565 = alloca { i64, [4 x i64] }, align 8
  %t590 = alloca { i64, [4 x i64] }, align 8
  %t609 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t1, ptr %a3)
  store i32 %t5, ptr %l42
  br label %bb1
bb1:
  %t6 = load i32, ptr %l42, !tbaa !23
  store i32 %t6, ptr %l5, !tbaa !23
  %t7 = load i32, ptr %l5, !tbaa !23
  %t9 = icmp eq i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %t12, i32 %t13)
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l5, !tbaa !23
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t16, i32 %t17)
  store i64 %t20, ptr %l50
  br label %bb6
bb6:
  %t21 = load i64, ptr %l50, !tbaa !24
  store i64 %t21, ptr %l6, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t22, i64 %t23)
  store i32 %t26, ptr %l53
  br label %bb7
bb7:
  %t27 = load i32, ptr %l53, !tbaa !23
  store i32 %t27, ptr %l7, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l54, !tbaa !29
  %t29 = load i32, ptr %l5, !tbaa !23
  store i32 %t29, ptr %l55, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l7, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l60
  br label %bb8
bb8:
  %t40 = load ptr, ptr %l54, !tbaa !29
  %t41 = load i32, ptr %l55, !tbaa !23
  %t42 = load i32, ptr %l60, !tbaa !23
  %t43 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %s0, ptr %t40, i32 %t41, i32 %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l61
  br label %bb9
bb9:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l8
  store i64 -1, ptr %l9, !tbaa !24
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t45, ptr %l10, !tbaa !23
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8)
  store i64 %t48, ptr %l64
  br label %bb10
bb10:
  %t49 = load i64, ptr %l64, !tbaa !24
  %t50 = icmp eq i64 %t49, 1
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  store ptr %t57, ptr %l68, !tbaa !29
  %t59 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i64 0)
  store i32 %t59, ptr %l70
  br label %bb13
bb12:
  br label %bb30
bb13:
  %t60 = load ptr, ptr %l68, !tbaa !29
  %t61 = load i32, ptr %l70, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t62, ptr %l71
  br label %bb14
bb14:
  %t63 = load i32, ptr %l71, !tbaa !23
  store i32 %t63, ptr %l10, !tbaa !23
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l74, !tbaa !29
  %t71 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i64 0)
  store i32 %t71, ptr %l76
  br label %bb15
bb15:
  %t72 = load ptr, ptr %l74, !tbaa !29
  %t73 = load i32, ptr %l76, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t74, ptr %l77
  br label %bb16
bb16:
  %t75 = load i32, ptr %l77, !range !{i32 0, i32 33}
  %t77 = trunc i64 28 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  store ptr %t85, ptr %l83, !tbaa !29
  %t87 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i64 0)
  store i32 %t87, ptr %l85
  br label %bb19
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l10, !tbaa !23
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %t88, i32 %t89)
  store i64 %t92, ptr %l93
  br label %bb22
bb19:
  %t93 = load ptr, ptr %l83, !tbaa !29
  %t94 = load i32, ptr %l85, !tbaa !23
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t93, i32 %t94)
  store i64 %t95, ptr %l86
  br label %bb20
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l10, !tbaa !23
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %t96, i32 %t97)
  store i64 %t100, ptr %l89
  br label %bb21
bb21:
  %t101 = load i64, ptr %l86, !tbaa !65
  %t102 = load i64, ptr %l89, !tbaa !65
  %t103 = and i64 %t101, %t102
  store i64 %t103, ptr %l80, !tbaa !65
  br label %bb23
bb22:
  %t105 = load i64, ptr %l93, !tbaa !65
  store i64 %t105, ptr %l80, !tbaa !65
  br label %bb23
bb23:
  %t106 = load i64, ptr %l80, !tbaa !65
  store i64 %t106, ptr %l11, !tbaa !65
  %t107 = load i64, ptr %l11, !tbaa !65
  %t109 = icmp ne i64 %t107, 0
  br i1 %t109, label %bb24, label %bb25
bb24:
  %t111 = load i64, ptr %l11, !tbaa !65
  %t112 = load i64, ptr %l11, !tbaa !65
  %t114 = sub i64 %t112, 1
  %t117 = and i64 %t111, %t114
  %t119 = icmp eq i64 %t117, 0
  store i1 %t119, ptr %l96, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb26
bb26:
  %t121 = load i1, ptr %l96, !tbaa !21
  br i1 %t121, label %bb27, label %bb28
bb27:
  %t122 = load i64, ptr %l11, !tbaa !65
  %t124 = call i64 @llvm.cttz.i64(i64 %t122, i1 false)
  store i64 %t124, ptr %l9, !tbaa !24
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t128 = icmp slt i64 %t126, 0
  br i1 %t128, label %bb31, label %bb32
bb31:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l106, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t131, ptr %l107
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i32, ptr %l5, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t132, i32 %t133)
  store { i64, ptr } %t136, ptr %l110
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l4, !tbaa !23
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t137, i32 %t138)
  store { i64, ptr } %t141, ptr %l113
  br label %bb34
bb34:
  %t142 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadFieldUnnarrowed(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t142, { i64, ptr } %t143)
  store %"compiler/diagmsg:Msg" %t144, ptr %l114
  br label %bb35
bb35:
  %t145 = load ptr, ptr %l106, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l107
  %t147 = load %"compiler/diagmsg:Msg", ptr %l114
  %t148 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t145, %"compiler/source:Span" %t146, %"compiler/diagmsg:Msg" %t147)
  store i64 %t148, ptr %l115
  br label %bb36
bb36:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load %"compiler/source:Span", ptr %l1
  %t153 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t149, %"compiler/source:Span" %t150)
  store ptr %t153, ptr %l118
  br label %bb37
bb37:
  %t154 = load ptr, ptr %l118, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t154, ptr %rv
  br label %ret
bb38:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  %t162 = load i32, ptr %l10, !tbaa !23
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t161, i32 %t162)
  store i32 %t165, ptr %l124
  br label %bb39
bb39:
  %t166 = load i32, ptr %l124, !tbaa !23
  store i32 %t166, ptr %l12, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t171 = load i32, ptr %l12, !tbaa !23
  %t172 = load i64, ptr %l9, !tbaa !24
  %t176 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s0, ptr %t170, i32 %t171, i64 %t172)
  store { i64, ptr } %t176, ptr %l129
  br label %bb40
bb40:
  %t177 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t177, ptr %l13, !tbaa !27
  store i64 -1, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  store i64 %t180, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t182 = load i64, ptr %l16, !tbaa !24
  %t183 = load i64, ptr %l15, !tbaa !24
  %t186 = icmp sgt i64 %t182, %t183
  br i1 %t186, label %bb41, label %bb42
bb41:
  %t188 = load i64, ptr %l17, !tbaa !24
  %t190 = icmp sgt i64 %t188, 0
  br i1 %t190, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb46
bb43:
  %t192 = load i64, ptr %l16, !tbaa !24
  %t193 = load i64, ptr %l15, !tbaa !24
  %t196 = sub i64 %t192, %t193
  %t197 = load i64, ptr %l17, !tbaa !24
  %t200 = add i64 %t196, %t197
  %t202 = sub i64 %t200, 1
  %t203 = load i64, ptr %l17, !tbaa !24
  %t206 = sdiv i64 %t202, %t203
  store i64 %t206, ptr %l138, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l138, !tbaa !24
  br label %bb45
bb45:
  %t208 = load i64, ptr %l138, !tbaa !24
  store i64 %t208, ptr %l135, !tbaa !24
  br label %bb46
bb46:
  %t209 = load i64, ptr %l135, !tbaa !24
  store i64 %t209, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb47
bb47:
  %t210 = load i64, ptr %l19, !tbaa !24
  %t211 = load i64, ptr %l18, !tbaa !24
  %t214 = icmp slt i64 %t210, %t211
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb48, label %bb49
bb48:
  br label %bb55
bb49:
  br label %bb50
bb50:
  %t218 = load i64, ptr %l15, !tbaa !24
  %t219 = load i64, ptr %l19, !tbaa !24
  %t220 = load i64, ptr %l17, !tbaa !24
  %t223 = mul i64 %t219, %t220
  %t226 = add i64 %t218, %t223
  store i64 %t226, ptr %l20, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t228, ptr %l156, !tbaa !27
  %t229 = load i64, ptr %l20, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr ptr, ptr %t232, i64 %t229
  %t234 = load ptr, ptr %t233, !tbaa !39
  %t236 = getelementptr %"compiler/ast:Param", ptr %t234, i32 0, i32 1
  %t237 = load i32, ptr %t236, !tbaa !23
  %t238 = load i32, ptr %l4, !tbaa !23
  %t241 = icmp eq i32 %t237, %t238
  br i1 %t241, label %bb51, label %bb52
bb51:
  %t243 = load i64, ptr %l20, !tbaa !24
  store i64 %t243, ptr %l14, !tbaa !24
  br label %bb53
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t245 = load i64, ptr %l19, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l19, !tbaa !24
  br label %bb47
bb55:
  %t249 = load i64, ptr %l14, !tbaa !24
  %t251 = icmp slt i64 %t249, 0
  br i1 %t251, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s9
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load i32, ptr %l4, !tbaa !23
  %t257 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t253, i32 %t254)
  store { i64, ptr } %t257, ptr %l169
  br label %bb58
bb57:
  br label %bb74
bb58:
  %t258 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t259 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s9, { i64, ptr } %t258)
  store %"compiler/msgs:Nearest" %t259, ptr %l170
  br label %bb59
bb59:
  %t260 = load %"compiler/msgs:Nearest", ptr %l170
  %t261 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t260, ptr %t261
  store ptr %t261, ptr %l21, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t263, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t265 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t267 = extractvalue { i64, ptr } %t265, 0
  store i64 %t267, ptr %l24, !tbaa !24
  br label %bb60
bb60:
  %t269 = load i64, ptr %l23, !tbaa !24
  %t270 = load i64, ptr %l24, !tbaa !24
  %t273 = icmp slt i64 %t269, %t270
  %t275 = xor i1 %t273, true
  br i1 %t275, label %bb61, label %bb62
bb61:
  br label %bb67
bb62:
  br label %bb63
bb63:
  %t277 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t277, ptr %l179, !tbaa !27
  %t278 = load i64, ptr %l23, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr ptr, ptr %t281, i64 %t278
  %t283 = load ptr, ptr %t282, !tbaa !39
  %t285 = load ptr, ptr %l21, !tbaa !29
  store ptr %t285, ptr %l182, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/ast:Param", ptr %t283, i32 0, i32 1
  %t290 = load i32, ptr %t289, !tbaa !23
  %t293 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t286, i32 %t290)
  store { i64, ptr } %t293, ptr %l186
  br label %bb64
bb64:
  %t294 = load ptr, ptr %l182, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l186, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s9, ptr %v0, ptr %t294, { i64, ptr } %t295)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t296 = load i64, ptr %l23, !tbaa !24
  %t298 = add i64 %t296, 1
  store i64 %t298, ptr %l23, !tbaa !24
  br label %bb60
bb67:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l189, !tbaa !29
  %t301 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t301, ptr %l190
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t306 = load i32, ptr %l12, !tbaa !23
  %t307 = load i64, ptr %l9, !tbaa !24
  %t311 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v0, ptr %t305, i32 %t306, i64 %t307)
  store { i64, ptr } %t311, ptr %l195
  br label %bb68
bb68:
  %t312 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  %t314 = extractvalue { i64, ptr } %t312, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l196, !tbaa !27
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load i32, ptr %l4, !tbaa !23
  %t323 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t319, i32 %t320)
  store { i64, ptr } %t323, ptr %l199
  br label %bb69
bb69:
  %t324 = load ptr, ptr %l21, !tbaa !29
  %t326 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s9, ptr %v0, ptr %t324)
  store { i64, ptr } %t326, ptr %l201
  br label %bb70
bb70:
  %t327 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t327, 0
  %t329 = extractvalue { i64, ptr } %t327, 1
  %t330 = mul i64 %t328, 1
  %t331 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t330)
  call void @llvm.memcpy.p0.p0.i64(ptr %t331, ptr %t329, i64 %t330, i1 false)
  %t332 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t331, 1
  %t334 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t337 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t334, { i64, ptr } %t335, { i64, ptr } %t333)
  store %"compiler/diagmsg:Msg" %t337, ptr %l203
  br label %bb71
bb71:
  %t338 = load ptr, ptr %l189, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l190
  %t340 = load %"compiler/diagmsg:Msg", ptr %l203
  %t341 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t338, %"compiler/source:Span" %t339, %"compiler/diagmsg:Msg" %t340)
  store i64 %t341, ptr %l204
  br label %bb72
bb72:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l1
  %t346 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t342, %"compiler/source:Span" %t343)
  store ptr %t346, ptr %l207
  br label %bb73
bb73:
  %t347 = load ptr, ptr %l207, !tbaa !29
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t347, ptr %rv
  br label %ret
bb74:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/check:Checker", ptr %t349, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = getelementptr %"compiler/generic:Program", ptr %t352, i32 0, i32 2
  store ptr %t354, ptr %l211, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/check:Checker", ptr %t355, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !29
  %t360 = getelementptr %"compiler/generic:Program", ptr %t358, i32 0, i32 2
  %t361 = load i32, ptr %l7, !tbaa !23
  %t364 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t360, i32 %t361)
  store i32 %t364, ptr %l216
  br label %bb75
bb75:
  %t365 = load ptr, ptr %l211, !tbaa !29
  %t366 = load i32, ptr %l216, !tbaa !23
  %t367 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t365, i32 %t366)
  store { i64, ptr } %t367, ptr %l217
  br label %bb76
bb76:
  %t368 = load { i64, ptr }, ptr %l217, !tbaa !27
  store { i64, ptr } %t368, ptr %l26, !tbaa !27
  store i64 -1, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  %t369 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t371 = extractvalue { i64, ptr } %t369, 0
  store i64 %t371, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t373 = load i64, ptr %l29, !tbaa !24
  %t374 = load i64, ptr %l28, !tbaa !24
  %t377 = icmp sgt i64 %t373, %t374
  br i1 %t377, label %bb77, label %bb78
bb77:
  %t379 = load i64, ptr %l30, !tbaa !24
  %t381 = icmp sgt i64 %t379, 0
  br i1 %t381, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l223, !tbaa !24
  br label %bb82
bb79:
  %t383 = load i64, ptr %l29, !tbaa !24
  %t384 = load i64, ptr %l28, !tbaa !24
  %t387 = sub i64 %t383, %t384
  %t388 = load i64, ptr %l30, !tbaa !24
  %t391 = add i64 %t387, %t388
  %t393 = sub i64 %t391, 1
  %t394 = load i64, ptr %l30, !tbaa !24
  %t397 = sdiv i64 %t393, %t394
  store i64 %t397, ptr %l226, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l226, !tbaa !24
  br label %bb81
bb81:
  %t399 = load i64, ptr %l226, !tbaa !24
  store i64 %t399, ptr %l223, !tbaa !24
  br label %bb82
bb82:
  %t400 = load i64, ptr %l223, !tbaa !24
  store i64 %t400, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb83
bb83:
  %t401 = load i64, ptr %l32, !tbaa !24
  %t402 = load i64, ptr %l31, !tbaa !24
  %t405 = icmp slt i64 %t401, %t402
  %t407 = xor i1 %t405, true
  br i1 %t407, label %bb84, label %bb85
bb84:
  br label %bb92
bb85:
  br label %bb86
bb86:
  %t409 = load i64, ptr %l28, !tbaa !24
  %t410 = load i64, ptr %l32, !tbaa !24
  %t411 = load i64, ptr %l30, !tbaa !24
  %t414 = mul i64 %t410, %t411
  %t417 = add i64 %t409, %t414
  store i64 %t417, ptr %l33, !tbaa !24
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t421 = getelementptr %"compiler/check:Checker", ptr %t419, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !29
  %t424 = getelementptr %"compiler/generic:Program", ptr %t422, i32 0, i32 2
  %t425 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t425, ptr %l247, !tbaa !27
  %t426 = load i64, ptr %l33, !tbaa !24
  %t428 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !27
  %t430 = getelementptr i32, ptr %t429, i64 %t426
  %t431 = load i32, ptr %t430, !tbaa !33
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t424, i32 %t431)
  store i32 %t434, ptr %l250
  br label %bb87
bb87:
  %t435 = load i32, ptr %l10, !tbaa !23
  %t436 = load i32, ptr %l250, !tbaa !23
  %t438 = icmp eq i32 %t436, %t435
  br i1 %t438, label %bb88, label %bb89
bb88:
  %t440 = load i64, ptr %l33, !tbaa !24
  store i64 %t440, ptr %l27, !tbaa !24
  br label %bb90
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t442 = load i64, ptr %l32, !tbaa !24
  %t444 = add i64 %t442, 1
  store i64 %t444, ptr %l32, !tbaa !24
  br label %bb83
bb92:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/check:Checker", ptr %t446, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t450 = load i32, ptr %l10, !tbaa !23
  %t453 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t449, i32 %t450)
  store i32 %t453, ptr %l259
  br label %bb93
bb93:
  %t454 = load i32, ptr %l259, !tbaa !23
  store i32 %t454, ptr %l34, !tbaa !23
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/check:Checker", ptr %t455, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t459 = load i32, ptr %l7, !tbaa !23
  %t460 = load i64, ptr %l27, !tbaa !24
  %t464 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t458, i32 %t459, i64 %t460)
  store i64 %t464, ptr %l264
  br label %bb94
bb94:
  %t465 = load i64, ptr %l264, !tbaa !24
  store i64 %t465, ptr %l35, !tbaa !24
  %t466 = load i32, ptr %l34, !tbaa !23
  %t467 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t470 = icmp eq i32 %t466, %t467
  br i1 %t470, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l268, !tbaa !21
  br label %bb97
bb96:
  %t472 = load i64, ptr %l35, !tbaa !24
  %t474 = icmp eq i64 %t472, 0
  store i1 %t474, ptr %l268, !tbaa !21
  br label %bb97
bb97:
  %t476 = load i1, ptr %l268, !tbaa !21
  br i1 %t476, label %bb98, label %bb99
bb98:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load %"compiler/source:Span", ptr %l1
  %t481 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t477, %"compiler/source:Span" %t478)
  store ptr %t481, ptr %l273
  br label %bb100
bb99:
  br label %bb101
bb100:
  %t482 = load ptr, ptr %l273, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t482, ptr %rv
  br label %ret
bb101:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i32, ptr %l10, !tbaa !23
  %t486 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %t484, i32 %t485, i32 %t486)
  br label %bb102
bb102:
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/check:Checker", ptr %t490, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t495 = getelementptr %"compiler/generic:Program", ptr %t493, i32 0, i32 2
  store ptr %t495, ptr %l280, !tbaa !29
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/check:Checker", ptr %t496, i32 0, i32 1
  %t499 = load ptr, ptr %t498, !tbaa !29
  %t501 = getelementptr %"compiler/generic:Program", ptr %t499, i32 0, i32 2
  %t502 = load i32, ptr %l34, !tbaa !23
  %t505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t501, i32 %t502)
  store i32 %t505, ptr %l285
  br label %bb103
bb103:
  %t506 = load ptr, ptr %l280, !tbaa !29
  %t507 = load i32, ptr %l285, !tbaa !23
  %t508 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t506, i32 %t507)
  store { i64, ptr } %t508, ptr %l286
  br label %bb104
bb104:
  %t509 = load { i64, ptr }, ptr %l286, !tbaa !27
  store { i64, ptr } %t509, ptr %l287, !tbaa !27
  %t510 = load i64, ptr %l9, !tbaa !24
  %t512 = getelementptr { i64, ptr }, ptr %l287, i32 0, i32 1
  %t513 = load ptr, ptr %t512, !tbaa !27
  %t514 = getelementptr i32, ptr %t513, i64 %t510
  %t515 = load i32, ptr %t514, !tbaa !33
  store i32 %t515, ptr %l36, !tbaa !23
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t519 = getelementptr %"compiler/check:Checker", ptr %t517, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !29
  %t522 = getelementptr %"compiler/generic:Program", ptr %t520, i32 0, i32 2
  store ptr %t522, ptr %l292, !tbaa !29
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/check:Checker", ptr %t523, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !29
  %t528 = getelementptr %"compiler/generic:Program", ptr %t526, i32 0, i32 2
  %t529 = load i32, ptr %l36, !tbaa !23
  %t532 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t528, i32 %t529)
  store i32 %t532, ptr %l297
  br label %bb105
bb105:
  %t533 = load ptr, ptr %l292, !tbaa !29
  %t534 = load i32, ptr %l297, !tbaa !23
  %t535 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t533, i32 %t534)
  store { i64, ptr } %t535, ptr %l298
  br label %bb106
bb106:
  %t536 = load { i64, ptr }, ptr %l298, !tbaa !27
  store { i64, ptr } %t536, ptr %l299, !tbaa !27
  %t537 = load i64, ptr %l14, !tbaa !24
  %t539 = getelementptr { i64, ptr }, ptr %l299, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !27
  %t541 = getelementptr i32, ptr %t540, i64 %t537
  %t542 = load i32, ptr %t541, !tbaa !33
  store i32 %t542, ptr %l37, !tbaa !23
  %t544 = load %"compiler/source:Span", ptr %l1
  %t545 = load i32, ptr %l34, !tbaa !23
  %t546 = load %"compiler/source:Span", ptr %l1
  %t547 = load i32, ptr %l7, !tbaa !23
  %t548 = load i64, ptr %l6, !tbaa !24
  %t550 = trunc i64 %t548 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t552
  %t553 = getelementptr { i64, [4 x i64] }, ptr %t552, i32 0, i32 0
  store i64 0, ptr %t553
  %t555 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t546, 0
  %t557 = insertvalue { %"compiler/source:Span", i32, i32 } %t555, i32 %t547, 1
  %t559 = insertvalue { %"compiler/source:Span", i32, i32 } %t557, i32 %t550, 2
  %t560 = getelementptr { i64, [4 x i64] }, ptr %t552, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t559, ptr %t560
  %t561 = load { i64, [4 x i64] }, ptr %t552
  %t563 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t561, ptr %t563
  %t564 = load i64, ptr %l35, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t565
  %t566 = getelementptr { i64, [4 x i64] }, ptr %t565, i32 0, i32 0
  store i64 3, ptr %t566
  %t568 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t544, 0
  %t570 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t568, i32 %t545, 1
  %t572 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t570, ptr %t563, 2
  %t574 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t572, i64 %t564, 3
  %t575 = getelementptr { i64, [4 x i64] }, ptr %t565, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t574, ptr %t575
  %t576 = load { i64, [4 x i64] }, ptr %t565
  %t577 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t577, ptr %lp38
  %t579 = load ptr, ptr %lp38
  store { i64, [4 x i64] } %t576, ptr %t579
  %t580 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t580, ptr %l313
  %t581 = load i32, ptr %l36, !tbaa !23
  store i32 %t581, ptr %l314, !tbaa !23
  %t582 = load ptr, ptr %lp38
  %t583 = load i64, ptr %l9, !tbaa !24
  %t587 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v2, ptr %v2, ptr %t582, i64 %t583, i32 0)
  store %"compiler/typed:Payload" %t587, ptr %l318
  br label %bb107
bb107:
  %t588 = load %"compiler/typed:Payload", ptr %l318
  %t589 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Payload" %t588, ptr %t589
  store { i64, [4 x i64] } zeroinitializer, ptr %t590
  %t591 = getelementptr { i64, [4 x i64] }, ptr %t590, i32 0, i32 0
  store i64 5, ptr %t591
  %t592 = load %"compiler/source:Span", ptr %l313
  %t593 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t592, 0
  %t594 = load i32, ptr %l314, !tbaa !23
  %t595 = insertvalue { %"compiler/source:Span", i32, ptr } %t593, i32 %t594, 1
  %t597 = insertvalue { %"compiler/source:Span", i32, ptr } %t595, ptr %t589, 2
  %t598 = getelementptr { i64, [4 x i64] }, ptr %t590, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t597, ptr %t598
  %t599 = load { i64, [4 x i64] }, ptr %t590
  %t600 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t600, ptr %lp39
  %t602 = load ptr, ptr %lp39
  store { i64, [4 x i64] } %t599, ptr %t602
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load %"compiler/source:Span", ptr %l1
  %t605 = load %"compiler/source:Span", ptr %l1
  %t606 = load i32, ptr %l37, !tbaa !23
  %t607 = load ptr, ptr %lp39
  %t608 = load i64, ptr %l14, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t609
  %t610 = getelementptr { i64, [4 x i64] }, ptr %t609, i32 0, i32 0
  store i64 3, ptr %t610
  %t612 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t605, 0
  %t614 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t612, i32 %t606, 1
  %t616 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t614, ptr %t607, 2
  %t618 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t616, i64 %t608, 3
  %t619 = getelementptr { i64, [4 x i64] }, ptr %t609, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t618, ptr %t619
  %t620 = load { i64, [4 x i64] }, ptr %t609
  %t622 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t620, ptr %t622
  %t626 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t603, %"compiler/source:Span" %t604, ptr %t622)
  store ptr %t626, ptr %l329
  br label %bb108
bb108:
  %t627 = load ptr, ptr %l329, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t627, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrSubjectOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca i1
  %l10 = alloca %"compiler/source:Span"
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca %"compiler/source:Span"
  %l21 = alloca ptr
  %l26 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 61
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t12)
  store %"compiler/source:Span" %t14, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb4:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 60
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l13
  %t21 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l10, ptr %l13)
  store i1 %t21, ptr %l15
  br label %bb5
bb5:
  %t22 = load i1, ptr %l15, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t25)
  store %"compiler/source:Span" %t27, ptr %l18
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/check:frame", ptr %t28, i32 0, i32 61
  %t31 = load i64, ptr %t30, !tbaa !24
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l18
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t32, %"compiler/source:Span" %t33, i64 %t31)
  store ptr %t35, ptr %l21
  br label %bb10
bb10:
  %t36 = load ptr, ptr %l21, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t38, i32 %t40)
  store ptr %t44, ptr %l26
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l26, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca %"compiler/names:Ref"
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca %"compiler/names:Ref"
  %l44 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t42)
  store ptr %t44, ptr %l24
  br label %bb9
bb9:
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t54 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t51, i64 %t48, i32 %t50)
  store %"compiler/names:Ref" %t54, ptr %l28
  br label %bb10
bb10:
  %t55 = load %"compiler/names:Ref", ptr %l28
  store %"compiler/names:Ref" %t55, ptr %l5
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t60 = icmp sgt i64 %t58, 1
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l34, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t69)
  store ptr %t71, ptr %l36
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t72 = load ptr, ptr %l36, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load ptr, ptr %l34, !tbaa !29
  %t81 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t78, i64 %t75, i32 %t77)
  store %"compiler/names:Ref" %t81, ptr %l40
  br label %bb14
bb14:
  %t82 = load %"compiler/names:Ref", ptr %l40
  store %"compiler/names:Ref" %t82, ptr %l5
  br label %bb15
bb15:
  %t83 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 9}
  %t86 = trunc i64 4 to i32
  %t87 = icmp eq i32 %t84, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  %t91 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  store i1 %t94, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t96 = load i1, ptr %l44, !tbaa !21
  br i1 %t96, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  store ptr %t103, ptr %l50, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t108 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  %t115 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t107, i64 %t109, i64 %t111)
  store i32 %t115, ptr %l55
  br label %bb22
bb22:
  %t116 = load ptr, ptr %l50, !tbaa !29
  %t117 = load i32, ptr %l55, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t118, ptr %l56
  br label %bb23
bb23:
  %t119 = load i32, ptr %l56, !range !{i32 0, i32 6}
  %t121 = trunc i64 5 to i32
  %t122 = icmp eq i32 %t119, %t121
  store i1 %t122, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c47153cd0729ef18_9d6ac816410ff05c)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 16
  store ptr %t11, ptr %l6, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 16
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l9
  br label %bb4
bb3:
  %t17 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t19 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t17, 1
  call void @__olang_check_failed_text(ptr @olang_loc_fd7c4531a6f9112_8820f62eca2e3ad6, { i64, ptr } %t20)
  unreachable
bb4:
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = sub i64 %t21, 1
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %t23, i64 %t22)
  store ptr %t25, ptr %l11
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l11, !tbaa !29
  store ptr %t26, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldResult(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l12 = alloca i1
  %l17 = alloca i64
  %l23 = alloca ptr
  %l28 = alloca i32
  %l33 = alloca i64
  %l36 = alloca i32
  %rv = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load i1, ptr %l10, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l17
  br label %bb5
bb5:
  %t30 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t31 = load i64, ptr %l17, !tbaa !24
  %t33 = icmp ne i64 %t31, %t30
  store i1 %t33, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l12, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load i32, ptr %l2, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  store ptr %t43, ptr %l23, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l28
  br label %bb10
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t63, ptr %l33
  br label %bb11
bb11:
  %t64 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t65 = load i64, ptr %l33, !tbaa !24
  %t67 = or i64 %t65, %t64
  %t68 = load ptr, ptr %l23, !tbaa !29
  %t69 = load i32, ptr %l28, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t68, i32 %t69, i64 %t67)
  store i32 %t71, ptr %l36
  br label %bb12
bb12:
  %t72 = load i32, ptr %l36, !tbaa !23
  store i32 %t72, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l8 = alloca i64
  %rv = alloca i64
  %t4 = alloca { i64, [1 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [1 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [1 x i64] }, ptr %t4, i32 0, i32 0
  store i64 0, ptr %t5
  %t6 = load { i64, [1 x i64] }, ptr %t4
  %t12 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 0, %"compiler/source:Span" %a1, i32 %a2, i32 3, { i64, [1 x i64] } %t6)
  store i64 %t12, ptr %l8
  br label %bb1
bb1:
  %t13 = load i64, ptr %l8, !tbaa !24
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca { i64, i64, i64 }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca ptr
  %l33 = alloca ptr
  %l39 = alloca i64
  %l47 = alloca ptr
  %l53 = alloca ptr
  %l55 = alloca i64
  %l61 = alloca %"compiler/source:Span"
  %l64 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l68 = alloca i1
  %l69 = alloca i1
  %l73 = alloca i1
  %l74 = alloca i32
  %l83 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca ptr
  %l101 = alloca ptr
  %l112 = alloca ptr
  %l123 = alloca %"compiler/source:Span"
  %l125 = alloca ptr
  %l129 = alloca i32
  %l133 = alloca %"compiler/typed:Block"
  %l139 = alloca ptr
  %l140 = alloca i1
  %l148 = alloca i1
  %l157 = alloca ptr
  %l165 = alloca ptr
  %l166 = alloca %"compiler/source:Span"
  %l172 = alloca ptr
  %l176 = alloca i1
  %l177 = alloca i1
  %l183 = alloca i1
  %l189 = alloca i1
  %l198 = alloca i1
  %l199 = alloca ptr
  %l207 = alloca i1
  %l209 = alloca ptr
  %l212 = alloca i64
  %l214 = alloca i64
  %l215 = alloca ptr
  %l217 = alloca ptr
  %l219 = alloca i64
  %l225 = alloca i64
  %l229 = alloca ptr
  %l230 = alloca i64
  %l232 = alloca ptr
  %l234 = alloca i64
  %l240 = alloca %"compiler/source:Span"
  %l241 = alloca i32
  %l242 = alloca ptr
  %l244 = alloca ptr
  %l246 = alloca i64
  %l247 = alloca i64
  %l251 = alloca { i64, ptr }
  %l252 = alloca %"compiler/check:Ask"
  %l254 = alloca ptr
  %l257 = alloca i64
  %l259 = alloca i1
  %l263 = alloca i1
  %l275 = alloca i1
  %l276 = alloca ptr
  %l284 = alloca i1
  %l288 = alloca %"compiler/source:Span"
  %l290 = alloca ptr
  %l294 = alloca i32
  %l298 = alloca %"compiler/typed:Block"
  %l302 = alloca ptr
  %l303 = alloca %"compiler/source:Span"
  %l309 = alloca ptr
  %l318 = alloca i1
  %l323 = alloca i1
  %l324 = alloca ptr
  %l330 = alloca i1
  %l331 = alloca %"compiler/source:Span"
  %l332 = alloca ptr
  %l338 = alloca ptr
  %l349 = alloca i1
  %l350 = alloca ptr
  %l358 = alloca i1
  %l359 = alloca i1
  %l360 = alloca ptr
  %l368 = alloca i1
  %l369 = alloca i1
  %l373 = alloca i1
  %l376 = alloca %"compiler/source:Span"
  %l378 = alloca ptr
  %l382 = alloca i32
  %l386 = alloca %"compiler/typed:Block"
  %l390 = alloca ptr
  %l396 = alloca i64
  %l404 = alloca ptr
  %l409 = alloca ptr
  %l415 = alloca ptr
  %l417 = alloca i1
  %l420 = alloca i32
  %l423 = alloca ptr
  %l424 = alloca ptr
  %l430 = alloca %"compiler/source:Span"
  %l431 = alloca %"compiler/diagmsg:Msg"
  %l432 = alloca i64
  %l433 = alloca ptr
  %l438 = alloca ptr
  %l444 = alloca ptr
  %l451 = alloca ptr
  %l452 = alloca i1
  %l462 = alloca ptr
  %l467 = alloca ptr
  %l473 = alloca ptr
  %l477 = alloca i64
  %l481 = alloca { i64, i64, i64 }
  %l485 = alloca ptr
  %l492 = alloca ptr
  %l496 = alloca ptr
  %l502 = alloca ptr
  %l504 = alloca ptr
  %l510 = alloca %"compiler/source:Span"
  %l511 = alloca %"compiler/source:Span"
  %l515 = alloca %"compiler/typed:If"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t24 = alloca { i64, [3 x i64] }, align 8
  %t179 = alloca { i64, [3 x i64] }, align 8
  %t256 = alloca { i64, [3 x i64] }, align 8
  %t615 = alloca { i64, [3 x i64] }, align 8
  %t705 = alloca { i64, [3 x i64] }, align 8
  %t813 = alloca { i64, [3 x i64] }, align 8
  %t1099 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t8, ptr %l26
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l27, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/ast:If", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_a622476533ee0612_1aeb16e8ac1e1db6)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/ast:If", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load ptr, ptr %l27, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t21, ptr %t20)
  store ptr %t23, ptr %l33
  br label %bb6
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t24
  %t25 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 0
  store i64 11, ptr %t25
  %t26 = load %"compiler/source:Span", ptr %l26
  %t27 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t26, 0
  %t28 = load ptr, ptr %l33, !tbaa !29
  %t29 = insertvalue { %"compiler/source:Span", ptr } %t27, ptr %t28, 1
  %t30 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t29, ptr %t30
  %t31 = load { i64, [3 x i64] }, ptr %t24
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t31, ptr %t33
  call void @__olang_scope_close(ptr %s0)
  store ptr %t33, ptr %rv
  br label %ret
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/ast:If", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %t35, ptr %t39)
  store i64 %t42, ptr %l39
  br label %bb8
bb8:
  %t43 = load i64, ptr %l39, !tbaa !24
  store i64 %t43, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = icmp sge i64 %t44, 0
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l1
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = icmp eq i64 %t51, 1
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecidedIf(ptr %v0, ptr %v1, ptr %v2, ptr %t48, %"compiler/source:Span" %t49, ptr %t50, i1 %t53)
  store ptr %t58, ptr %l47
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load ptr, ptr %l47, !tbaa !29
  store ptr %t59, ptr %rv
  br label %ret
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/load:Loader", ptr %t66, i32 0, i32 4
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l4, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t71)
  store ptr %t73, ptr %l53
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l53, !tbaa !29
  %t76 = getelementptr %"compiler/check:frame", ptr %t74, i32 0, i32 2
  %t77 = load i64, ptr %t76, !tbaa !24
  store i64 %t77, ptr %l55, !tbaa !24
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t80 = getelementptr %"compiler/ast:If", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = icmp eq ptr %t81, null
  br i1 %t83, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_319f2f7a6670a39_e028e643a90bcd1d)
  unreachable
bb15:
  br label %bb16
bb16:
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t87 = getelementptr %"compiler/ast:If", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t88)
  store %"compiler/source:Span" %t90, ptr %l61
  br label %bb17
bb17:
  %t91 = getelementptr %"compiler/source:Span", ptr %l61, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t94 = sext i32 %t92 to i64
  %t95 = load i64, ptr %l55, !tbaa !24
  %t97 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t95, i64 %t94)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t97, ptr %l64
  br label %bb18
bb18:
  %t98 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l64
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t98, ptr %l5
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 105
  %t102 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t105 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t101, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t102)
  store i1 %t105, ptr %l68
  br label %bb19
bb19:
  %t106 = load i1, ptr %l68, !tbaa !21
  br i1 %t106, label %bb20, label %bb21
bb20:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 105
  %t110 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t113 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t109, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t110)
  %t114 = extractvalue { i32, i1 } %t113, 1
  %t115 = extractvalue { i32, i1 } %t113, 0
  store i32 %t115, ptr %l74
  %t116 = icmp ne i32 %t115, 0
  br i1 %t116, label %bb23, label %ok.117, !prof !99
ok.117:
  store i1 %t114, ptr %l73
  br label %bb22
bb21:
  br label %bb91
bb22:
  %t118 = load i1, ptr %l73, !tbaa !21
  store i1 %t118, ptr %l69, !tbaa !21
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb25
bb25:
  %t119 = load i1, ptr %l69, !tbaa !21
  br i1 %t119, label %bb26, label %bb27
bb26:
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t122 = getelementptr %"compiler/ast:If", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb28, label %bb29
bb27:
  br label %bb43
bb28:
  call void @__olang_check_failed(ptr @olang_loc_856dc584101bc984_5c32a185ff63a848)
  unreachable
bb29:
  br label %bb30
bb30:
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t129 = getelementptr %"compiler/ast:If", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t133 = getelementptr %"compiler/ast:Branch", ptr %t130, i32 0, i32 2
  %t134 = load i64, ptr %t133, !tbaa !24
  %t136 = icmp sge i64 %t134, 0
  br i1 %t136, label %bb31, label %bb32
bb31:
  %t138 = load ptr, ptr %l4, !tbaa !29
  store ptr %t138, ptr %l83, !tbaa !29
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr %"compiler/ast:If", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = icmp eq ptr %t142, null
  br i1 %t144, label %bb33, label %bb34
bb32:
  br label %bb37
bb33:
  call void @__olang_check_failed(ptr @olang_loc_856dc584101bc984_5c32a185ff63a848)
  unreachable
bb34:
  br label %bb35
bb35:
  %t146 = load ptr, ptr %l2, !tbaa !29
  %t148 = getelementptr %"compiler/ast:If", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t152 = getelementptr %"compiler/ast:Branch", ptr %t149, i32 0, i32 2
  %t153 = load i64, ptr %t152, !tbaa !24
  %t154 = load ptr, ptr %l83, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t154, i64 %t153)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t159 = getelementptr %"compiler/ast:If", ptr %t157, i32 0, i32 2
  %t160 = load ptr, ptr %t159, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropElse(ptr %v0, ptr %v1, ptr %t156, ptr %t160)
  br label %bb38
bb38:
  %t163 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t163, ptr %l94
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l95, !tbaa !29
  %t165 = load ptr, ptr %l2, !tbaa !29
  %t167 = getelementptr %"compiler/ast:If", ptr %t165, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  br i1 %t170, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_6de95c363ba43753_b985f35754c3cc67)
  unreachable
bb40:
  br label %bb41
bb41:
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t174 = getelementptr %"compiler/ast:If", ptr %t172, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t176 = load ptr, ptr %l95, !tbaa !29
  %t178 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t176, ptr %t175)
  store ptr %t178, ptr %l101
  br label %bb42
bb42:
  store { i64, [3 x i64] } zeroinitializer, ptr %t179
  %t180 = getelementptr { i64, [3 x i64] }, ptr %t179, i32 0, i32 0
  store i64 11, ptr %t180
  %t181 = load %"compiler/source:Span", ptr %l94
  %t182 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t181, 0
  %t183 = load ptr, ptr %l101, !tbaa !29
  %t184 = insertvalue { %"compiler/source:Span", ptr } %t182, ptr %t183, 1
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t179, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t184, ptr %t185
  %t186 = load { i64, [3 x i64] }, ptr %t179
  %t188 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t186, ptr %t188
  call void @__olang_scope_close(ptr %s0)
  store ptr %t188, ptr %rv
  br label %ret
bb43:
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = getelementptr %"compiler/ast:If", ptr %t190, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t195 = icmp eq ptr %t193, null
  br i1 %t195, label %bb44, label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_62c8ad0b34d7b82e_8c827e0bb8ee6f7a)
  unreachable
bb45:
  br label %bb46
bb46:
  %t197 = load ptr, ptr %l2, !tbaa !29
  %t199 = getelementptr %"compiler/ast:If", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t203 = getelementptr %"compiler/ast:Branch", ptr %t200, i32 0, i32 2
  %t204 = load i64, ptr %t203, !tbaa !24
  %t206 = icmp sge i64 %t204, 0
  br i1 %t206, label %bb47, label %bb48
bb47:
  %t208 = load ptr, ptr %l4, !tbaa !29
  store ptr %t208, ptr %l112, !tbaa !29
  %t209 = load ptr, ptr %l2, !tbaa !29
  %t211 = getelementptr %"compiler/ast:If", ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t214 = icmp eq ptr %t212, null
  br i1 %t214, label %bb49, label %bb50
bb48:
  br label %bb53
bb49:
  call void @__olang_check_failed(ptr @olang_loc_62c8ad0b34d7b82e_8c827e0bb8ee6f7a)
  unreachable
bb50:
  br label %bb51
bb51:
  %t216 = load ptr, ptr %l2, !tbaa !29
  %t218 = getelementptr %"compiler/ast:If", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t222 = getelementptr %"compiler/ast:Branch", ptr %t219, i32 0, i32 2
  %t223 = load i64, ptr %t222, !tbaa !24
  %t224 = load ptr, ptr %l112, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t224, i64 %t223)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t226 = load ptr, ptr %l2, !tbaa !29
  %t228 = getelementptr %"compiler/ast:If", ptr %t226, i32 0, i32 2
  %t229 = load ptr, ptr %t228, !tbaa !29
  %t231 = icmp eq ptr %t229, null
  br i1 %t231, label %bb54, label %bb55
bb54:
  %t233 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t233, ptr %l123
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t234)
  store ptr %t236, ptr %l125
  br label %bb56
bb55:
  br label %bb62
bb56:
  %t237 = load ptr, ptr %l125, !tbaa !29
  %t239 = getelementptr %"compiler/check:frame", ptr %t237, i32 0, i32 7
  %t240 = load i64, ptr %t239, !tbaa !24
  %t242 = trunc i64 %t240 to i32
  store i32 %t242, ptr %l129, !tbaa !23
  %t244 = icmp sge i64 0, 0
  br i1 %t244, label %bb57, label %bb58
bb57:
  %t246 = icmp sle i64 0, 1152921504606846975
  br i1 %t246, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_3219af0a7bb6371b_608971ab22223c2f)
  unreachable
bb59:
  %t248 = mul i64 0, 8
  %t249 = insertvalue { i64, ptr } undef, i64 0, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t251 = load i32, ptr %l129, !tbaa !23
  %t253 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t251, { i64, ptr } %t250)
  store %"compiler/typed:Block" %t253, ptr %l133
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_3219af0a7bb6371b_608971ab22223c2f)
  unreachable
bb61:
  %t254 = load %"compiler/typed:Block", ptr %l133
  %t255 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t254, ptr %t255
  store { i64, [3 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 0
  store i64 11, ptr %t257
  %t258 = load %"compiler/source:Span", ptr %l123
  %t259 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t258, 0
  %t261 = insertvalue { %"compiler/source:Span", ptr } %t259, ptr %t255, 1
  %t262 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t261, ptr %t262
  %t263 = load { i64, [3 x i64] }, ptr %t256
  %t265 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t263, ptr %t265
  call void @__olang_scope_close(ptr %s0)
  store ptr %t265, ptr %rv
  br label %ret
bb62:
  %t267 = load ptr, ptr %l2, !tbaa !29
  %t269 = getelementptr %"compiler/ast:If", ptr %t267, i32 0, i32 2
  %t270 = load ptr, ptr %t269, !tbaa !29
  store ptr %t270, ptr %l6, !tbaa !29
  %t272 = load ptr, ptr %l6, !tbaa !29
  store ptr %t272, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t273 = load ptr, ptr %l139, !tbaa !29
  %t274 = icmp ne ptr %t273, null
  br i1 %t274, label %bb63, label %bb64
bb63:
  %t276 = load ptr, ptr %l139, !tbaa !29
  %t277 = load i64, ptr %t276, !range !{i64 0, i64 22}
  %t279 = icmp eq i64 %t277, 5
  store i1 %t279, ptr %l140, !tbaa !21
  br label %bb64
bb64:
  %t280 = load i1, ptr %l140, !tbaa !21
  br i1 %t280, label %bb65, label %bb66
bb65:
  %t281 = load ptr, ptr %l6, !tbaa !29
  %t283 = getelementptr { i64, [4 x i64] }, ptr %t281, i32 0, i32 1
  %t284 = getelementptr { %"compiler/source:Span", ptr }, ptr %t283, i32 0, i32 1
  %t285 = load ptr, ptr %t284
  store ptr %t285, ptr %l7, !tbaa !29
  br label %bb67
bb66:
  br label %bb81
bb67:
  %t287 = load ptr, ptr %l7, !tbaa !29
  %t289 = getelementptr %"compiler/ast:If", ptr %t287, i32 0, i32 0
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t292 = icmp eq ptr %t290, null
  br i1 %t292, label %bb68, label %bb69
bb68:
  %t294 = load ptr, ptr %l7, !tbaa !29
  %t296 = getelementptr %"compiler/ast:If", ptr %t294, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = icmp eq ptr %t297, null
  br i1 %t299, label %bb70, label %bb71
bb69:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb73
bb70:
  call void @__olang_check_failed(ptr @olang_loc_9bced391e891fdc0_daecba1c3e9b04cc)
  unreachable
bb71:
  br label %bb72
bb72:
  %t301 = load ptr, ptr %l7, !tbaa !29
  %t303 = getelementptr %"compiler/ast:If", ptr %t301, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Branch", ptr %t304, i32 0, i32 2
  %t308 = load i64, ptr %t307, !tbaa !24
  %t310 = icmp sge i64 %t308, 0
  store i1 %t310, ptr %l148, !tbaa !21
  br label %bb73
bb73:
  %t312 = load i1, ptr %l148, !tbaa !21
  br i1 %t312, label %bb74, label %bb75
bb74:
  %t313 = load ptr, ptr %l4, !tbaa !29
  store ptr %t313, ptr %l157, !tbaa !29
  %t314 = load ptr, ptr %l7, !tbaa !29
  %t316 = getelementptr %"compiler/ast:If", ptr %t314, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t319 = icmp eq ptr %t317, null
  br i1 %t319, label %bb76, label %bb77
bb75:
  br label %bb80
bb76:
  call void @__olang_check_failed(ptr @olang_loc_9bced391e891fdc0_daecba1c3e9b04cc)
  unreachable
bb77:
  br label %bb78
bb78:
  %t321 = load ptr, ptr %l7, !tbaa !29
  %t323 = getelementptr %"compiler/ast:If", ptr %t321, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !29
  %t327 = getelementptr %"compiler/ast:Branch", ptr %t324, i32 0, i32 2
  %t328 = load i64, ptr %t327, !tbaa !24
  %t329 = load ptr, ptr %l157, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t329, i64 %t328)
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb86
bb81:
  br i1 true, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_9c1a82cf7a9ef1a6_f90ba82a8be7d062)
  unreachable
bb86:
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l165, !tbaa !29
  %t332 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t332, ptr %l166
  %t333 = load ptr, ptr %l2, !tbaa !29
  %t335 = getelementptr %"compiler/ast:If", ptr %t333, i32 0, i32 2
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t338 = icmp eq ptr %t336, null
  br i1 %t338, label %bb87, label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_58a847b11cbe2c6a_cfe1571b02fdc8be)
  unreachable
bb88:
  br label %bb89
bb89:
  %t340 = load ptr, ptr %l2, !tbaa !29
  %t342 = getelementptr %"compiler/ast:If", ptr %t340, i32 0, i32 2
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t344 = load ptr, ptr %l165, !tbaa !29
  %t345 = load %"compiler/source:Span", ptr %l166
  %t347 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %t344, %"compiler/source:Span" %t345, ptr %t343)
  store ptr %t347, ptr %l172
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t348 = load ptr, ptr %l172, !tbaa !29
  store ptr %t348, ptr %rv
  br label %ret
bb91:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/check:Checker", ptr %t349, i32 0, i32 145
  %t352 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t355 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t351, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t352)
  store i1 %t355, ptr %l176
  br label %bb92
bb92:
  %t356 = load i1, ptr %l176, !tbaa !21
  br i1 %t356, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l177, !tbaa !21
  br label %bb96
bb94:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t362 = getelementptr %"compiler/generic:Program", ptr %t360, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = getelementptr %"compiler/names:Resolver", ptr %t363, i32 0, i32 16
  %t366 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t369 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t365, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t366)
  store i1 %t369, ptr %l183
  br label %bb95
bb95:
  %t370 = load i1, ptr %l183, !tbaa !21
  store i1 %t370, ptr %l177, !tbaa !21
  br label %bb96
bb96:
  %t371 = load i1, ptr %l177, !tbaa !21
  store i1 %t371, ptr %l8, !tbaa !21
  %t372 = load i1, ptr %l8, !tbaa !21
  br i1 %t372, label %bb97, label %bb98
bb97:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %t374, ptr %t375)
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb100
bb100:
  store i1 false, ptr %l9, !tbaa !21
  %t378 = load i1, ptr %l8, !tbaa !21
  %t380 = xor i1 %t378, true
  br i1 %t380, label %bb101, label %bb102
bb101:
  %t382 = load ptr, ptr %l2, !tbaa !29
  %t384 = getelementptr %"compiler/ast:If", ptr %t382, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !29
  %t387 = icmp eq ptr %t385, null
  br i1 %t387, label %bb103, label %bb104
bb102:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb106
bb103:
  call void @__olang_check_failed(ptr @olang_loc_c2ac910391966871_92a7715ab8ef6a65)
  unreachable
bb104:
  br label %bb105
bb105:
  %t389 = load ptr, ptr %l2, !tbaa !29
  %t391 = getelementptr %"compiler/ast:If", ptr %t389, i32 0, i32 1
  %t392 = load ptr, ptr %t391, !tbaa !29
  %t395 = getelementptr %"compiler/ast:Branch", ptr %t392, i32 0, i32 2
  %t396 = load i64, ptr %t395, !tbaa !24
  %t398 = icmp sge i64 %t396, 0
  store i1 %t398, ptr %l189, !tbaa !21
  br label %bb106
bb106:
  %t400 = load i1, ptr %l189, !tbaa !21
  br i1 %t400, label %bb107, label %bb108
bb107:
  %t401 = load ptr, ptr %l4, !tbaa !29
  store ptr %t401, ptr %l199, !tbaa !29
  %t402 = load ptr, ptr %l2, !tbaa !29
  %t404 = getelementptr %"compiler/ast:If", ptr %t402, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t407 = icmp eq ptr %t405, null
  br i1 %t407, label %bb109, label %bb110
bb108:
  store i1 false, ptr %l198, !tbaa !21
  br label %bb113
bb109:
  call void @__olang_check_failed(ptr @olang_loc_c2ac910391966871_92a7715ab8ef6a65)
  unreachable
bb110:
  br label %bb111
bb111:
  %t409 = load ptr, ptr %l2, !tbaa !29
  %t411 = getelementptr %"compiler/ast:If", ptr %t409, i32 0, i32 1
  %t412 = load ptr, ptr %t411, !tbaa !29
  %t415 = getelementptr %"compiler/ast:Branch", ptr %t412, i32 0, i32 2
  %t416 = load i64, ptr %t415, !tbaa !24
  %t417 = load ptr, ptr %l199, !tbaa !29
  %t419 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %t417, i64 %t416)
  store i1 %t419, ptr %l207
  br label %bb112
bb112:
  %t420 = load i1, ptr %l207, !tbaa !21
  store i1 %t420, ptr %l198, !tbaa !21
  br label %bb113
bb113:
  %t421 = load i1, ptr %l198, !tbaa !21
  br i1 %t421, label %bb114, label %bb115
bb114:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t422)
  store ptr %t424, ptr %l209
  br label %bb116
bb115:
  br label %bb150
bb116:
  %t425 = load ptr, ptr %l209, !tbaa !29
  %t427 = getelementptr %"compiler/check:frame", ptr %t425, i32 0, i32 4
  %t428 = getelementptr %"compiler/generic:Context", ptr %t427, i32 0, i32 2
  %t430 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %t428)
  store i64 %t430, ptr %l212
  br label %bb117
bb117:
  %t431 = load i64, ptr %l212, !tbaa !24
  %t432 = icmp sgt i64 %t431, 0
  br i1 %t432, label %bb118, label %bb119
bb118:
  store i64 -1, ptr %l214, !tbaa !24
  br label %bb125
bb119:
  %t434 = load ptr, ptr %l0, !tbaa !29
  store ptr %t434, ptr %l215, !tbaa !29
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t435)
  store ptr %t437, ptr %l217
  br label %bb120
bb120:
  %t438 = load ptr, ptr %l217, !tbaa !29
  %t440 = getelementptr %"compiler/check:frame", ptr %t438, i32 0, i32 1
  %t441 = load i64, ptr %t440, !tbaa !24
  store i64 %t441, ptr %l219, !tbaa !24
  %t442 = load ptr, ptr %l2, !tbaa !29
  %t444 = getelementptr %"compiler/ast:If", ptr %t442, i32 0, i32 0
  %t445 = load ptr, ptr %t444, !tbaa !29
  %t447 = icmp eq ptr %t445, null
  br i1 %t447, label %bb121, label %bb122
bb121:
  call void @__olang_check_failed(ptr @olang_loc_ccb3ed4617d06259_8e58603f3b63faf5)
  unreachable
bb122:
  br label %bb123
bb123:
  %t449 = load ptr, ptr %l2, !tbaa !29
  %t451 = getelementptr %"compiler/ast:If", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t453 = load ptr, ptr %l215, !tbaa !29
  %t454 = load i64, ptr %l219, !tbaa !24
  %t456 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %t453, i64 %t454, ptr %t452)
  store i64 %t456, ptr %l225
  br label %bb124
bb124:
  %t457 = load i64, ptr %l225, !tbaa !24
  store i64 %t457, ptr %l214, !tbaa !24
  br label %bb125
bb125:
  %t458 = load i64, ptr %l214, !tbaa !24
  store i64 %t458, ptr %l10, !tbaa !24
  %t459 = load i64, ptr %l10, !tbaa !24
  %t461 = icmp sge i64 %t459, 0
  br i1 %t461, label %bb126, label %bb127
bb126:
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 106
  store ptr %t465, ptr %l229, !tbaa !29
  %t466 = load i64, ptr %l10, !tbaa !24
  store i64 %t466, ptr %l230, !tbaa !24
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t467)
  store ptr %t469, ptr %l232
  br label %bb128
bb127:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t470)
  store ptr %t472, ptr %l254
  br label %bb139
bb128:
  %t473 = load ptr, ptr %l232, !tbaa !29
  %t475 = getelementptr %"compiler/check:frame", ptr %t473, i32 0, i32 2
  %t476 = load i64, ptr %t475, !tbaa !24
  store i64 %t476, ptr %l234, !tbaa !24
  %t477 = load ptr, ptr %l2, !tbaa !29
  %t479 = getelementptr %"compiler/ast:If", ptr %t477, i32 0, i32 0
  %t480 = load ptr, ptr %t479, !tbaa !29
  %t482 = icmp eq ptr %t480, null
  br i1 %t482, label %bb129, label %bb130
bb129:
  call void @__olang_check_failed(ptr @olang_loc_c77fa73b8d335132_2d868ec26eb5ab4e)
  unreachable
bb130:
  br label %bb131
bb131:
  %t484 = load ptr, ptr %l2, !tbaa !29
  %t486 = getelementptr %"compiler/ast:If", ptr %t484, i32 0, i32 0
  %t487 = load ptr, ptr %t486, !tbaa !29
  %t489 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t487)
  store %"compiler/source:Span" %t489, ptr %l240
  br label %bb132
bb132:
  %t490 = getelementptr %"compiler/source:Span", ptr %l240, i32 0, i32 0
  %t491 = load i32, ptr %t490, !tbaa !23
  store i32 %t491, ptr %l241, !tbaa !23
  %t492 = load ptr, ptr %l2, !tbaa !29
  store ptr %t492, ptr %l242, !tbaa !29
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t493)
  store ptr %t495, ptr %l244
  br label %bb133
bb133:
  %t496 = load ptr, ptr %l244, !tbaa !29
  %t498 = getelementptr %"compiler/check:frame", ptr %t496, i32 0, i32 0
  %t499 = load i64, ptr %t498, !tbaa !24
  store i64 %t499, ptr %l246, !tbaa !24
  %t500 = ptrtoint ptr %v0 to i64
  store i64 %t500, ptr %l247, !tbaa !24
  %t501 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aAsk_2e5
  br i1 %t501, label %bb134, label %bb135
bb134:
  %t503 = call ptr @__olang_region_make(ptr %v0)
  %t504 = ptrtoint ptr %t503 to i64
  store i64 %t504, ptr %l247, !tbaa !24
  br label %bb135
bb135:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/check:Checker", ptr %t505, i32 0, i32 143
  %t508 = load i64, ptr %l247
  %t509 = inttoptr i64 %t508 to ptr
  %t511 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %t509, ptr %t507)
  store { i64, ptr } %t511, ptr %l251
  br label %bb136
bb136:
  %t512 = load i64, ptr %l230, !tbaa !24
  %t513 = load i64, ptr %l234, !tbaa !24
  %t514 = load i32, ptr %l241, !tbaa !23
  %t515 = load ptr, ptr %l242, !tbaa !29
  %t516 = load i64, ptr %l246, !tbaa !24
  %t517 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t518 = call %"compiler/check:Ask" @compiler_2fcheck_3aAsk_2ector(ptr %v1, ptr %v0, ptr %v0, i64 %t512, i64 %t513, i32 %t514, ptr %t515, i64 %t516, { i64, ptr } %t517)
  store %"compiler/check:Ask" %t518, ptr %l252
  br label %bb137
bb137:
  %t519 = load ptr, ptr %l229, !tbaa !29
  %t520 = load %"compiler/check:Ask", ptr %l252
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2ePush_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v0, ptr %t519, %"compiler/check:Ask" %t520)
  br label %bb138
bb138:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb149
bb139:
  %t521 = load ptr, ptr %l254, !tbaa !29
  %t523 = getelementptr %"compiler/check:frame", ptr %t521, i32 0, i32 4
  %t524 = getelementptr %"compiler/generic:Context", ptr %t523, i32 0, i32 2
  %t526 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %t524)
  store i64 %t526, ptr %l257
  br label %bb140
bb140:
  %t527 = load i64, ptr %l257, !tbaa !24
  %t528 = icmp sgt i64 %t527, 0
  br i1 %t528, label %bb141, label %bb142
bb141:
  store i1 true, ptr %l259, !tbaa !21
  br label %bb144
bb142:
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t531 = load ptr, ptr %l2, !tbaa !29
  %t533 = getelementptr %"compiler/ast:If", ptr %t531, i32 0, i32 0
  %t534 = load ptr, ptr %t533, !tbaa !29
  %t537 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t530, ptr %t534)
  store i1 %t537, ptr %l263
  br label %bb143
bb143:
  %t538 = load i1, ptr %l263, !tbaa !21
  %t539 = xor i1 %t538, true
  store i1 %t539, ptr %l259, !tbaa !21
  br label %bb144
bb144:
  %t541 = load i1, ptr %l259, !tbaa !21
  br i1 %t541, label %bb145, label %bb146
bb145:
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t543 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %t542, ptr %t543)
  br label %bb147
bb146:
  br label %bb148
bb147:
  br label %bb148
bb148:
  br label %bb149
bb149:
  br label %bb150
bb150:
  %t546 = load ptr, ptr %l2, !tbaa !29
  %t548 = getelementptr %"compiler/ast:If", ptr %t546, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !29
  %t551 = icmp eq ptr %t549, null
  br i1 %t551, label %bb151, label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_b9205633ccf2d073_299d3206908c6fff)
  unreachable
bb152:
  br label %bb153
bb153:
  %t553 = load ptr, ptr %l2, !tbaa !29
  %t555 = getelementptr %"compiler/ast:If", ptr %t553, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !29
  %t559 = getelementptr %"compiler/ast:Branch", ptr %t556, i32 0, i32 2
  %t560 = load i64, ptr %t559, !tbaa !24
  %t562 = icmp sge i64 %t560, 0
  br i1 %t562, label %bb154, label %bb155
bb154:
  %t564 = load ptr, ptr %l4, !tbaa !29
  store ptr %t564, ptr %l276, !tbaa !29
  %t565 = load ptr, ptr %l2, !tbaa !29
  %t567 = getelementptr %"compiler/ast:If", ptr %t565, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !29
  %t570 = icmp eq ptr %t568, null
  br i1 %t570, label %bb156, label %bb157
bb155:
  store i1 false, ptr %l275, !tbaa !21
  br label %bb160
bb156:
  call void @__olang_check_failed(ptr @olang_loc_b9205633ccf2d073_299d3206908c6fff)
  unreachable
bb157:
  br label %bb158
bb158:
  %t572 = load ptr, ptr %l2, !tbaa !29
  %t574 = getelementptr %"compiler/ast:If", ptr %t572, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !29
  %t578 = getelementptr %"compiler/ast:Branch", ptr %t575, i32 0, i32 2
  %t579 = load i64, ptr %t578, !tbaa !24
  %t580 = load ptr, ptr %l276, !tbaa !29
  %t582 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsDropped(ptr %v0, ptr %t580, i64 %t579)
  store i1 %t582, ptr %l284
  br label %bb159
bb159:
  %t583 = load i1, ptr %l284, !tbaa !21
  store i1 %t583, ptr %l275, !tbaa !21
  br label %bb160
bb160:
  %t584 = load i1, ptr %l275, !tbaa !21
  br i1 %t584, label %bb161, label %bb162
bb161:
  %t585 = load ptr, ptr %l2, !tbaa !29
  %t587 = getelementptr %"compiler/ast:If", ptr %t585, i32 0, i32 2
  %t588 = load ptr, ptr %t587, !tbaa !29
  %t590 = icmp eq ptr %t588, null
  br i1 %t590, label %bb163, label %bb164
bb162:
  br label %bb176
bb163:
  %t592 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t592, ptr %l288
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t593)
  store ptr %t595, ptr %l290
  br label %bb165
bb164:
  br label %bb171
bb165:
  %t596 = load ptr, ptr %l290, !tbaa !29
  %t598 = getelementptr %"compiler/check:frame", ptr %t596, i32 0, i32 7
  %t599 = load i64, ptr %t598, !tbaa !24
  %t601 = trunc i64 %t599 to i32
  store i32 %t601, ptr %l294, !tbaa !23
  %t603 = icmp sge i64 0, 0
  br i1 %t603, label %bb166, label %bb167
bb166:
  %t605 = icmp sle i64 0, 1152921504606846975
  br i1 %t605, label %bb168, label %bb169
bb167:
  call void @__olang_check_failed(ptr @olang_loc_eff2823a07ce70e4_5c5dc5480f6f06d8)
  unreachable
bb168:
  %t607 = mul i64 0, 8
  %t608 = insertvalue { i64, ptr } undef, i64 0, 0
  %t609 = insertvalue { i64, ptr } %t608, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t610 = load i32, ptr %l294, !tbaa !23
  %t612 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t610, { i64, ptr } %t609)
  store %"compiler/typed:Block" %t612, ptr %l298
  br label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_eff2823a07ce70e4_5c5dc5480f6f06d8)
  unreachable
bb170:
  %t613 = load %"compiler/typed:Block", ptr %l298
  %t614 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t613, ptr %t614
  store { i64, [3 x i64] } zeroinitializer, ptr %t615
  %t616 = getelementptr { i64, [3 x i64] }, ptr %t615, i32 0, i32 0
  store i64 11, ptr %t616
  %t617 = load %"compiler/source:Span", ptr %l288
  %t618 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t617, 0
  %t620 = insertvalue { %"compiler/source:Span", ptr } %t618, ptr %t614, 1
  %t621 = getelementptr { i64, [3 x i64] }, ptr %t615, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t620, ptr %t621
  %t622 = load { i64, [3 x i64] }, ptr %t615
  %t624 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t622, ptr %t624
  call void @__olang_scope_close(ptr %s0)
  store ptr %t624, ptr %rv
  br label %ret
bb171:
  %t626 = load ptr, ptr %l0, !tbaa !29
  store ptr %t626, ptr %l302, !tbaa !29
  %t627 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t627, ptr %l303
  %t628 = load ptr, ptr %l2, !tbaa !29
  %t630 = getelementptr %"compiler/ast:If", ptr %t628, i32 0, i32 2
  %t631 = load ptr, ptr %t630, !tbaa !29
  %t633 = icmp eq ptr %t631, null
  br i1 %t633, label %bb172, label %bb173
bb172:
  call void @__olang_check_failed(ptr @olang_loc_2925a2ee61841cf5_31e6aa96f1b04059)
  unreachable
bb173:
  br label %bb174
bb174:
  %t635 = load ptr, ptr %l2, !tbaa !29
  %t637 = getelementptr %"compiler/ast:If", ptr %t635, i32 0, i32 2
  %t638 = load ptr, ptr %t637, !tbaa !29
  %t639 = load ptr, ptr %l302, !tbaa !29
  %t640 = load %"compiler/source:Span", ptr %l303
  %t642 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %t639, %"compiler/source:Span" %t640, ptr %t638)
  store ptr %t642, ptr %l309
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s0)
  %t643 = load ptr, ptr %l309, !tbaa !29
  store ptr %t643, ptr %rv
  br label %ret
bb176:
  %t644 = load ptr, ptr %l2, !tbaa !29
  %t646 = getelementptr %"compiler/ast:If", ptr %t644, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !29
  %t649 = icmp eq ptr %t647, null
  br i1 %t649, label %bb177, label %bb178
bb177:
  call void @__olang_check_failed(ptr @olang_loc_c853d17194d5cd4e_2cb2648c67132f32)
  unreachable
bb178:
  br label %bb179
bb179:
  %t651 = load ptr, ptr %l2, !tbaa !29
  %t653 = getelementptr %"compiler/ast:If", ptr %t651, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !29
  %t657 = getelementptr %"compiler/ast:Branch", ptr %t654, i32 0, i32 2
  %t658 = load i64, ptr %t657, !tbaa !24
  %t660 = icmp sge i64 %t658, 0
  br i1 %t660, label %bb180, label %bb181
bb180:
  %t662 = load ptr, ptr %l2, !tbaa !29
  %t664 = getelementptr %"compiler/ast:If", ptr %t662, i32 0, i32 2
  %t665 = load ptr, ptr %t664, !tbaa !29
  %t667 = icmp eq ptr %t665, null
  %t669 = xor i1 %t667, true
  store i1 %t669, ptr %l318, !tbaa !21
  br label %bb182
bb181:
  store i1 false, ptr %l318, !tbaa !21
  br label %bb182
bb182:
  %t671 = load i1, ptr %l318, !tbaa !21
  br i1 %t671, label %bb183, label %bb184
bb183:
  %t672 = load ptr, ptr %l0, !tbaa !29
  store ptr %t672, ptr %l324, !tbaa !29
  %t673 = load ptr, ptr %l2, !tbaa !29
  %t675 = getelementptr %"compiler/ast:If", ptr %t673, i32 0, i32 2
  %t676 = load ptr, ptr %t675, !tbaa !29
  %t678 = icmp eq ptr %t676, null
  br i1 %t678, label %bb185, label %bb186
bb184:
  store i1 false, ptr %l323, !tbaa !21
  br label %bb189
bb185:
  call void @__olang_check_failed(ptr @olang_loc_c853d17194d5cd4e_2cb2648c67132f32)
  unreachable
bb186:
  br label %bb187
bb187:
  %t680 = load ptr, ptr %l2, !tbaa !29
  %t682 = getelementptr %"compiler/ast:If", ptr %t680, i32 0, i32 2
  %t683 = load ptr, ptr %t682, !tbaa !29
  %t684 = load ptr, ptr %l324, !tbaa !29
  %t686 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseDropped(ptr %v0, ptr %v1, ptr %t684, ptr %t683)
  store i1 %t686, ptr %l330
  br label %bb188
bb188:
  %t687 = load i1, ptr %l330, !tbaa !21
  store i1 %t687, ptr %l323, !tbaa !21
  br label %bb189
bb189:
  %t688 = load i1, ptr %l323, !tbaa !21
  br i1 %t688, label %bb190, label %bb191
bb190:
  %t689 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t689, ptr %l331
  %t690 = load ptr, ptr %l0, !tbaa !29
  store ptr %t690, ptr %l332, !tbaa !29
  %t691 = load ptr, ptr %l2, !tbaa !29
  %t693 = getelementptr %"compiler/ast:If", ptr %t691, i32 0, i32 1
  %t694 = load ptr, ptr %t693, !tbaa !29
  %t696 = icmp eq ptr %t694, null
  br i1 %t696, label %bb192, label %bb193
bb191:
  br label %bb196
bb192:
  call void @__olang_check_failed(ptr @olang_loc_c46a74b5b6ac91ff_1e531384a6d2ae73)
  unreachable
bb193:
  br label %bb194
bb194:
  %t698 = load ptr, ptr %l2, !tbaa !29
  %t700 = getelementptr %"compiler/ast:If", ptr %t698, i32 0, i32 1
  %t701 = load ptr, ptr %t700, !tbaa !29
  %t702 = load ptr, ptr %l332, !tbaa !29
  %t704 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %t702, ptr %t701)
  store ptr %t704, ptr %l338
  br label %bb195
bb195:
  store { i64, [3 x i64] } zeroinitializer, ptr %t705
  %t706 = getelementptr { i64, [3 x i64] }, ptr %t705, i32 0, i32 0
  store i64 11, ptr %t706
  %t707 = load %"compiler/source:Span", ptr %l331
  %t708 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t707, 0
  %t709 = load ptr, ptr %l338, !tbaa !29
  %t710 = insertvalue { %"compiler/source:Span", ptr } %t708, ptr %t709, 1
  %t711 = getelementptr { i64, [3 x i64] }, ptr %t705, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t710, ptr %t711
  %t712 = load { i64, [3 x i64] }, ptr %t705
  %t714 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t712, ptr %t714
  call void @__olang_scope_close(ptr %s0)
  store ptr %t714, ptr %rv
  br label %ret
bb196:
  %t716 = load ptr, ptr %l2, !tbaa !29
  %t718 = getelementptr %"compiler/ast:If", ptr %t716, i32 0, i32 1
  %t719 = load ptr, ptr %t718, !tbaa !29
  %t721 = icmp eq ptr %t719, null
  br i1 %t721, label %bb197, label %bb198
bb197:
  call void @__olang_check_failed(ptr @olang_loc_25279634f75294e0_6b7144c0722904a4)
  unreachable
bb198:
  br label %bb199
bb199:
  %t723 = load ptr, ptr %l2, !tbaa !29
  %t725 = getelementptr %"compiler/ast:If", ptr %t723, i32 0, i32 1
  %t726 = load ptr, ptr %t725, !tbaa !29
  %t729 = getelementptr %"compiler/ast:Branch", ptr %t726, i32 0, i32 2
  %t730 = load i64, ptr %t729, !tbaa !24
  %t732 = icmp sge i64 %t730, 0
  br i1 %t732, label %bb200, label %bb201
bb200:
  %t734 = load ptr, ptr %l4, !tbaa !29
  store ptr %t734, ptr %l350, !tbaa !29
  %t735 = load ptr, ptr %l2, !tbaa !29
  %t737 = getelementptr %"compiler/ast:If", ptr %t735, i32 0, i32 1
  %t738 = load ptr, ptr %t737, !tbaa !29
  %t740 = icmp eq ptr %t738, null
  br i1 %t740, label %bb202, label %bb203
bb201:
  store i1 false, ptr %l349, !tbaa !21
  br label %bb206
bb202:
  call void @__olang_check_failed(ptr @olang_loc_25279634f75294e0_6b7144c0722904a4)
  unreachable
bb203:
  br label %bb204
bb204:
  %t742 = load ptr, ptr %l2, !tbaa !29
  %t744 = getelementptr %"compiler/ast:If", ptr %t742, i32 0, i32 1
  %t745 = load ptr, ptr %t744, !tbaa !29
  %t748 = getelementptr %"compiler/ast:Branch", ptr %t745, i32 0, i32 2
  %t749 = load i64, ptr %t748, !tbaa !24
  %t750 = load ptr, ptr %l350, !tbaa !29
  %t752 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %t750, i64 %t749)
  store i1 %t752, ptr %l358
  br label %bb205
bb205:
  %t753 = load i1, ptr %l358, !tbaa !21
  store i1 %t753, ptr %l349, !tbaa !21
  br label %bb206
bb206:
  %t754 = load i1, ptr %l349, !tbaa !21
  br i1 %t754, label %bb207, label %bb208
bb207:
  %t755 = load ptr, ptr %l4, !tbaa !29
  store ptr %t755, ptr %l360, !tbaa !29
  %t756 = load ptr, ptr %l2, !tbaa !29
  %t758 = getelementptr %"compiler/ast:If", ptr %t756, i32 0, i32 1
  %t759 = load ptr, ptr %t758, !tbaa !29
  %t761 = icmp eq ptr %t759, null
  br i1 %t761, label %bb209, label %bb210
bb208:
  store i1 false, ptr %l359, !tbaa !21
  br label %bb217
bb209:
  call void @__olang_check_failed(ptr @olang_loc_25279634f75294e0_6b7144c0722904a4)
  unreachable
bb210:
  br label %bb211
bb211:
  %t763 = load ptr, ptr %l2, !tbaa !29
  %t765 = getelementptr %"compiler/ast:If", ptr %t763, i32 0, i32 1
  %t766 = load ptr, ptr %t765, !tbaa !29
  %t769 = getelementptr %"compiler/ast:Branch", ptr %t766, i32 0, i32 2
  %t770 = load i64, ptr %t769, !tbaa !24
  %t771 = load ptr, ptr %l360, !tbaa !29
  %t773 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %t771, i64 %t770)
  store i1 %t773, ptr %l368
  br label %bb212
bb212:
  %t774 = load i1, ptr %l368, !tbaa !21
  br i1 %t774, label %bb213, label %bb214
bb213:
  store i1 true, ptr %l369, !tbaa !21
  br label %bb216
bb214:
  %t775 = load ptr, ptr %l0, !tbaa !29
  %t776 = load ptr, ptr %l2, !tbaa !29
  %t778 = getelementptr %"compiler/ast:If", ptr %t776, i32 0, i32 2
  %t779 = load ptr, ptr %t778, !tbaa !29
  %t782 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseHolds(ptr %v0, ptr %v1, ptr %t775, ptr %t779)
  store i1 %t782, ptr %l373
  br label %bb215
bb215:
  %t783 = load i1, ptr %l373, !tbaa !21
  store i1 %t783, ptr %l369, !tbaa !21
  br label %bb216
bb216:
  %t784 = load i1, ptr %l369, !tbaa !21
  store i1 %t784, ptr %l359, !tbaa !21
  br label %bb217
bb217:
  %t785 = load i1, ptr %l359, !tbaa !21
  br i1 %t785, label %bb218, label %bb219
bb218:
  %t786 = load ptr, ptr %l0, !tbaa !29
  %t787 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t786, %"compiler/source:Span" %t787, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d6, i32 0, i32 1) })
  br label %bb220
bb219:
  br label %bb227
bb220:
  %t790 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t790, ptr %l376
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t793 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t791)
  store ptr %t793, ptr %l378
  br label %bb221
bb221:
  %t794 = load ptr, ptr %l378, !tbaa !29
  %t796 = getelementptr %"compiler/check:frame", ptr %t794, i32 0, i32 7
  %t797 = load i64, ptr %t796, !tbaa !24
  %t799 = trunc i64 %t797 to i32
  store i32 %t799, ptr %l382, !tbaa !23
  %t801 = icmp sge i64 0, 0
  br i1 %t801, label %bb222, label %bb223
bb222:
  %t803 = icmp sle i64 0, 1152921504606846975
  br i1 %t803, label %bb224, label %bb225
bb223:
  call void @__olang_check_failed(ptr @olang_loc_38a4aac7c394d73f_8d843069a2363733)
  unreachable
bb224:
  %t805 = mul i64 0, 8
  %t806 = insertvalue { i64, ptr } undef, i64 0, 0
  %t807 = insertvalue { i64, ptr } %t806, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t808 = load i32, ptr %l382, !tbaa !23
  %t810 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v2, ptr %v2, i32 %t808, { i64, ptr } %t807)
  store %"compiler/typed:Block" %t810, ptr %l386
  br label %bb226
bb225:
  call void @__olang_check_failed(ptr @olang_loc_38a4aac7c394d73f_8d843069a2363733)
  unreachable
bb226:
  %t811 = load %"compiler/typed:Block", ptr %l386
  %t812 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:Block" %t811, ptr %t812
  store { i64, [3 x i64] } zeroinitializer, ptr %t813
  %t814 = getelementptr { i64, [3 x i64] }, ptr %t813, i32 0, i32 0
  store i64 11, ptr %t814
  %t815 = load %"compiler/source:Span", ptr %l376
  %t816 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t815, 0
  %t818 = insertvalue { %"compiler/source:Span", ptr } %t816, ptr %t812, 1
  %t819 = getelementptr { i64, [3 x i64] }, ptr %t813, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t818, ptr %t819
  %t820 = load { i64, [3 x i64] }, ptr %t813
  %t822 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t820, ptr %t822
  call void @__olang_scope_close(ptr %s0)
  store ptr %t822, ptr %rv
  br label %ret
bb227:
  %t824 = load ptr, ptr %l0, !tbaa !29
  store ptr %t824, ptr %l390, !tbaa !29
  %t825 = load ptr, ptr %l2, !tbaa !29
  %t827 = getelementptr %"compiler/ast:If", ptr %t825, i32 0, i32 0
  %t828 = load ptr, ptr %t827, !tbaa !29
  %t830 = icmp eq ptr %t828, null
  br i1 %t830, label %bb228, label %bb229
bb228:
  call void @__olang_check_failed(ptr @olang_loc_129174e89ad23b8a_c281ac2402d9bb86)
  unreachable
bb229:
  br label %bb230
bb230:
  %t832 = load ptr, ptr %l2, !tbaa !29
  %t834 = getelementptr %"compiler/ast:If", ptr %t832, i32 0, i32 0
  %t835 = load ptr, ptr %t834, !tbaa !29
  %t836 = load ptr, ptr %l390, !tbaa !29
  %t838 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstCond(ptr %v0, ptr %v1, ptr %t836, ptr %t835)
  store i64 %t838, ptr %l396
  br label %bb231
bb231:
  %t839 = load i64, ptr %l396, !tbaa !24
  store i64 %t839, ptr %l11, !tbaa !24
  %t840 = load i64, ptr %l11, !tbaa !24
  %t842 = icmp sge i64 %t840, 0
  br i1 %t842, label %bb232, label %bb233
bb232:
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t845 = load %"compiler/source:Span", ptr %l1
  %t846 = load ptr, ptr %l2, !tbaa !29
  %t847 = load i64, ptr %l11, !tbaa !24
  %t849 = icmp eq i64 %t847, 1
  %t854 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecidedIf(ptr %v0, ptr %v1, ptr %v2, ptr %t844, %"compiler/source:Span" %t845, ptr %t846, i1 %t849)
  store ptr %t854, ptr %l404
  br label %bb234
bb233:
  br label %bb235
bb234:
  call void @__olang_scope_close(ptr %s0)
  %t855 = load ptr, ptr %l404, !tbaa !29
  store ptr %t855, ptr %rv
  br label %ret
bb235:
  %t856 = load i1, ptr %l9, !tbaa !21
  %t858 = xor i1 %t856, true
  br i1 %t858, label %bb236, label %bb237
bb236:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t861 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %t860, ptr %t861)
  br label %bb238
bb237:
  br label %bb239
bb238:
  br label %bb239
bb239:
  %t864 = load ptr, ptr %l0, !tbaa !29
  store ptr %t864, ptr %l409, !tbaa !29
  %t865 = load ptr, ptr %l2, !tbaa !29
  %t867 = getelementptr %"compiler/ast:If", ptr %t865, i32 0, i32 0
  %t868 = load ptr, ptr %t867, !tbaa !29
  %t870 = icmp eq ptr %t868, null
  br i1 %t870, label %bb240, label %bb241
bb240:
  call void @__olang_check_failed(ptr @olang_loc_aaca5398e8f6066a_f405ea46c1055e66)
  unreachable
bb241:
  br label %bb242
bb242:
  %t872 = load ptr, ptr %l2, !tbaa !29
  %t874 = getelementptr %"compiler/ast:If", ptr %t872, i32 0, i32 0
  %t875 = load ptr, ptr %t874, !tbaa !29
  %t876 = load ptr, ptr %l409, !tbaa !29
  %t878 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %t876, ptr %t875)
  store ptr %t878, ptr %l415
  br label %bb243
bb243:
  %t879 = load ptr, ptr %l415, !tbaa !29
  store ptr %t879, ptr %l12, !tbaa !29
  %t880 = load i1, ptr %l8, !tbaa !21
  br i1 %t880, label %bb244, label %bb245
bb244:
  %t882 = load ptr, ptr %l12, !tbaa !29
  %t885 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t882)
  store i32 %t885, ptr %l420
  br label %bb246
bb245:
  store i1 false, ptr %l417, !tbaa !21
  br label %bb247
bb246:
  %t886 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t887 = load i32, ptr %l420, !tbaa !23
  %t889 = icmp eq i32 %t887, %t886
  store i1 %t889, ptr %l417, !tbaa !21
  br label %bb247
bb247:
  %t891 = load i1, ptr %l417, !tbaa !21
  br i1 %t891, label %bb248, label %bb249
bb248:
  %t892 = load ptr, ptr %l0, !tbaa !29
  store ptr %t892, ptr %l423, !tbaa !29
  %t893 = load ptr, ptr %l0, !tbaa !29
  store ptr %t893, ptr %l424, !tbaa !29
  %t894 = load ptr, ptr %l2, !tbaa !29
  %t896 = getelementptr %"compiler/ast:If", ptr %t894, i32 0, i32 0
  %t897 = load ptr, ptr %t896, !tbaa !29
  %t899 = icmp eq ptr %t897, null
  br i1 %t899, label %bb250, label %bb251
bb249:
  br label %bb256
bb250:
  call void @__olang_check_failed(ptr @olang_loc_14ce9ceb5dce4271_aff89a24b099384d)
  unreachable
bb251:
  br label %bb252
bb252:
  %t901 = load ptr, ptr %l2, !tbaa !29
  %t903 = getelementptr %"compiler/ast:If", ptr %t901, i32 0, i32 0
  %t904 = load ptr, ptr %t903, !tbaa !29
  %t905 = load ptr, ptr %l424, !tbaa !29
  %t907 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %t905, ptr %t904)
  store %"compiler/source:Span" %t907, ptr %l430
  br label %bb253
bb253:
  %t908 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConditionConstant(ptr %v0)
  store %"compiler/diagmsg:Msg" %t908, ptr %l431
  br label %bb254
bb254:
  %t909 = load ptr, ptr %l423, !tbaa !29
  %t910 = load %"compiler/source:Span", ptr %l430
  %t911 = load %"compiler/diagmsg:Msg", ptr %l431
  %t912 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t909, %"compiler/source:Span" %t910, %"compiler/diagmsg:Msg" %t911)
  store i64 %t912, ptr %l432
  br label %bb255
bb255:
  br label %bb256
bb256:
  %t913 = load ptr, ptr %l0, !tbaa !29
  store ptr %t913, ptr %l433, !tbaa !29
  %t914 = load ptr, ptr %l2, !tbaa !29
  %t916 = getelementptr %"compiler/ast:If", ptr %t914, i32 0, i32 1
  %t917 = load ptr, ptr %t916, !tbaa !29
  %t919 = icmp eq ptr %t917, null
  br i1 %t919, label %bb257, label %bb258
bb257:
  call void @__olang_check_failed(ptr @olang_loc_6f3b4b685ddeb67c_7b5ce21143ef4c38)
  unreachable
bb258:
  br label %bb259
bb259:
  %t921 = load ptr, ptr %l2, !tbaa !29
  %t923 = getelementptr %"compiler/ast:If", ptr %t921, i32 0, i32 1
  %t924 = load ptr, ptr %t923, !tbaa !29
  store ptr %t924, ptr %l438, !tbaa !29
  %t925 = load ptr, ptr %l2, !tbaa !29
  %t927 = getelementptr %"compiler/ast:If", ptr %t925, i32 0, i32 0
  %t928 = load ptr, ptr %t927, !tbaa !29
  %t930 = icmp eq ptr %t928, null
  br i1 %t930, label %bb260, label %bb261
bb260:
  call void @__olang_check_failed(ptr @olang_loc_6f3b4b685ddeb67c_7b5ce21143ef4c38)
  unreachable
bb261:
  br label %bb262
bb262:
  %t932 = load ptr, ptr %l2, !tbaa !29
  %t934 = getelementptr %"compiler/ast:If", ptr %t932, i32 0, i32 0
  %t935 = load ptr, ptr %t934, !tbaa !29
  %t936 = load ptr, ptr %l433, !tbaa !29
  %t937 = load ptr, ptr %l438, !tbaa !29
  %t939 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedBranch(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t936, ptr %t937, ptr %t935, i1 true)
  store ptr %t939, ptr %l444
  br label %bb263
bb263:
  %t940 = load ptr, ptr %l444, !tbaa !29
  store ptr %t940, ptr %l13, !tbaa !29
  store ptr null, ptr %l14, !tbaa !29
  %t941 = load ptr, ptr %l2, !tbaa !29
  %t943 = getelementptr %"compiler/ast:If", ptr %t941, i32 0, i32 2
  %t944 = load ptr, ptr %t943, !tbaa !29
  %t946 = icmp eq ptr %t944, null
  %t948 = xor i1 %t946, true
  br i1 %t948, label %bb264, label %bb265
bb264:
  %t950 = load ptr, ptr %l2, !tbaa !29
  %t952 = getelementptr %"compiler/ast:If", ptr %t950, i32 0, i32 2
  %t953 = load ptr, ptr %t952, !tbaa !29
  store ptr %t953, ptr %l15, !tbaa !29
  %t955 = load ptr, ptr %l15, !tbaa !29
  store ptr %t955, ptr %l451, !tbaa !29
  store i1 false, ptr %l452, !tbaa !21
  %t956 = load ptr, ptr %l451, !tbaa !29
  %t957 = icmp ne ptr %t956, null
  br i1 %t957, label %bb266, label %bb267
bb265:
  br label %bb301
bb266:
  %t959 = load ptr, ptr %l451, !tbaa !29
  %t960 = load i64, ptr %t959, !range !{i64 0, i64 22}
  %t962 = icmp eq i64 %t960, 5
  store i1 %t962, ptr %l452, !tbaa !21
  br label %bb267
bb267:
  %t963 = load i1, ptr %l452, !tbaa !21
  br i1 %t963, label %bb268, label %bb269
bb268:
  %t964 = load ptr, ptr %l15, !tbaa !29
  %t966 = getelementptr { i64, [4 x i64] }, ptr %t964, i32 0, i32 1
  %t967 = getelementptr { %"compiler/source:Span", ptr }, ptr %t966, i32 0, i32 0
  %t968 = load %"compiler/source:Span", ptr %t967
  store %"compiler/source:Span" %t968, ptr %l16
  %t970 = load ptr, ptr %l15, !tbaa !29
  %t972 = getelementptr { i64, [4 x i64] }, ptr %t970, i32 0, i32 1
  %t973 = getelementptr { %"compiler/source:Span", ptr }, ptr %t972, i32 0, i32 1
  %t974 = load ptr, ptr %t973
  store ptr %t974, ptr %l17, !tbaa !29
  br label %bb270
bb269:
  br label %bb290
bb270:
  %t976 = load ptr, ptr %l17, !tbaa !29
  %t978 = getelementptr %"compiler/ast:If", ptr %t976, i32 0, i32 0
  %t979 = load ptr, ptr %t978, !tbaa !29
  %t981 = icmp eq ptr %t979, null
  br i1 %t981, label %bb271, label %bb272
bb271:
  %t983 = load ptr, ptr %l0, !tbaa !29
  store ptr %t983, ptr %l462, !tbaa !29
  %t984 = load ptr, ptr %l17, !tbaa !29
  %t986 = getelementptr %"compiler/ast:If", ptr %t984, i32 0, i32 1
  %t987 = load ptr, ptr %t986, !tbaa !29
  %t989 = icmp eq ptr %t987, null
  br i1 %t989, label %bb273, label %bb274
bb272:
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t993 = getelementptr %"compiler/check:Checker", ptr %t991, i32 0, i32 37
  %t995 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t993)
  store i64 %t995, ptr %l477
  br label %bb280
bb273:
  call void @__olang_check_failed(ptr @olang_loc_e7da762e638de5eb_7df0529e92f5f857)
  unreachable
bb274:
  br label %bb275
bb275:
  %t996 = load ptr, ptr %l17, !tbaa !29
  %t998 = getelementptr %"compiler/ast:If", ptr %t996, i32 0, i32 1
  %t999 = load ptr, ptr %t998, !tbaa !29
  store ptr %t999, ptr %l467, !tbaa !29
  %t1000 = load ptr, ptr %l2, !tbaa !29
  %t1002 = getelementptr %"compiler/ast:If", ptr %t1000, i32 0, i32 0
  %t1003 = load ptr, ptr %t1002, !tbaa !29
  %t1005 = icmp eq ptr %t1003, null
  br i1 %t1005, label %bb276, label %bb277
bb276:
  call void @__olang_check_failed(ptr @olang_loc_e7da762e638de5eb_7df0529e92f5f857)
  unreachable
bb277:
  br label %bb278
bb278:
  %t1007 = load ptr, ptr %l2, !tbaa !29
  %t1009 = getelementptr %"compiler/ast:If", ptr %t1007, i32 0, i32 0
  %t1010 = load ptr, ptr %t1009, !tbaa !29
  %t1011 = load ptr, ptr %l462, !tbaa !29
  %t1012 = load ptr, ptr %l467, !tbaa !29
  %t1014 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedBranch(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t1011, ptr %t1012, ptr %t1010, i1 false)
  store ptr %t1014, ptr %l473
  br label %bb279
bb279:
  %t1015 = load ptr, ptr %l473, !tbaa !29
  store ptr %t1015, ptr %l14, !tbaa !29
  br label %bb289
bb280:
  %t1017 = load i64, ptr %l477, !tbaa !24
  store i64 %t1017, ptr %l18, !tbaa !24
  %t1018 = load ptr, ptr %l0, !tbaa !29
  %t1019 = load %"compiler/source:Span", ptr %l16
  %t1023 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t1018, i32 1, %"compiler/source:Span" %t1019)
  store { i64, i64, i64 } %t1023, ptr %l481
  br label %bb281
bb281:
  %t1024 = load { i64, i64, i64 }, ptr %l481
  store { i64, i64, i64 } %t1024, ptr %l19
  %t1025 = getelementptr { i64, i64, i64 }, ptr %l19, i32 0, i32 0
  %t1026 = load i64, ptr %t1025, !tbaa !24
  store i64 %t1026, ptr %l20, !tbaa !24
  %t1028 = getelementptr { i64, i64, i64 }, ptr %l19, i32 0, i32 1
  %t1029 = load i64, ptr %t1028, !tbaa !24
  store i64 %t1029, ptr %l21, !tbaa !24
  %t1031 = getelementptr { i64, i64, i64 }, ptr %l19, i32 0, i32 2
  %t1032 = load i64, ptr %t1031, !tbaa !24
  store i64 %t1032, ptr %l22, !tbaa !24
  %t1034 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1034, ptr %l485, !tbaa !29
  %t1035 = load ptr, ptr %l2, !tbaa !29
  %t1037 = getelementptr %"compiler/ast:If", ptr %t1035, i32 0, i32 0
  %t1038 = load ptr, ptr %t1037, !tbaa !29
  %t1040 = icmp eq ptr %t1038, null
  br i1 %t1040, label %bb282, label %bb283
bb282:
  call void @__olang_check_failed(ptr @olang_loc_8ed32cf5e7258066_ffd10e9c2d5e46a)
  unreachable
bb283:
  br label %bb284
bb284:
  %t1042 = load ptr, ptr %l2, !tbaa !29
  %t1044 = getelementptr %"compiler/ast:If", ptr %t1042, i32 0, i32 0
  %t1045 = load ptr, ptr %t1044, !tbaa !29
  %t1046 = load i64, ptr %l20, !tbaa !24
  %t1047 = load ptr, ptr %l485, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %t1047, ptr %t1045, i1 false, i64 %t1046)
  br label %bb285
bb285:
  %t1050 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1050, ptr %l492, !tbaa !29
  %t1051 = load ptr, ptr %l0, !tbaa !29
  %t1052 = load %"compiler/source:Span", ptr %l16
  %t1053 = load ptr, ptr %l17, !tbaa !29
  %t1057 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifOf(ptr %v0, ptr %v1, ptr %v0, ptr %t1051, %"compiler/source:Span" %t1052, ptr %t1053)
  store ptr %t1057, ptr %l496
  br label %bb286
bb286:
  %t1058 = load ptr, ptr %l492, !tbaa !29
  %t1059 = load ptr, ptr %l496, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1058, ptr %t1059)
  br label %bb287
bb287:
  %t1060 = load ptr, ptr %l0, !tbaa !29
  %t1061 = load i64, ptr %l20, !tbaa !24
  %t1062 = load i64, ptr %l21, !tbaa !24
  %t1063 = load i64, ptr %l22, !tbaa !24
  %t1064 = load i64, ptr %l18, !tbaa !24
  %t1070 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t1060, i64 %t1061, i64 %t1062, i64 %t1063, i64 %t1064)
  store ptr %t1070, ptr %l502
  br label %bb288
bb288:
  %t1071 = load ptr, ptr %l502, !tbaa !29
  store ptr %t1071, ptr %l14, !tbaa !29
  br label %bb289
bb289:
  br label %bb300
bb290:
  br i1 true, label %bb291, label %bb292
bb291:
  br label %bb293
bb292:
  br label %bb299
bb293:
  %t1073 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1073, ptr %l504, !tbaa !29
  %t1074 = load ptr, ptr %l2, !tbaa !29
  %t1076 = getelementptr %"compiler/ast:If", ptr %t1074, i32 0, i32 2
  %t1077 = load ptr, ptr %t1076, !tbaa !29
  %t1079 = icmp eq ptr %t1077, null
  br i1 %t1079, label %bb294, label %bb295
bb294:
  call void @__olang_check_failed(ptr @olang_loc_4ac5dcd3d6b95a4d_7a015a3c37ae2071)
  unreachable
bb295:
  br label %bb296
bb296:
  %t1081 = load ptr, ptr %l2, !tbaa !29
  %t1083 = getelementptr %"compiler/ast:If", ptr %t1081, i32 0, i32 2
  %t1084 = load ptr, ptr %t1083, !tbaa !29
  %t1086 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t1084)
  store %"compiler/source:Span" %t1086, ptr %l510
  br label %bb297
bb297:
  %t1087 = load ptr, ptr %l504, !tbaa !29
  %t1088 = load %"compiler/source:Span", ptr %l510
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t1087, %"compiler/source:Span" %t1088, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb298
bb298:
  br label %bb300
bb299:
  call void @__olang_check_failed(ptr @olang_loc_21133b69e759422f_5605435c6f182a13)
  unreachable
bb300:
  br label %bb301
bb301:
  %t1089 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1089, ptr %l511
  %t1090 = load ptr, ptr %l12, !tbaa !29
  %t1091 = load ptr, ptr %l13, !tbaa !29
  %t1092 = load ptr, ptr %l14, !tbaa !29
  %t1096 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t1090, ptr %t1091, ptr %t1092)
  store %"compiler/typed:If" %t1096, ptr %l515
  br label %bb302
bb302:
  %t1097 = load %"compiler/typed:If", ptr %l515
  %t1098 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:If" %t1097, ptr %t1098
  store { i64, [3 x i64] } zeroinitializer, ptr %t1099
  %t1100 = getelementptr { i64, [3 x i64] }, ptr %t1099, i32 0, i32 0
  store i64 3, ptr %t1100
  %t1101 = load %"compiler/source:Span", ptr %l511
  %t1102 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1101, 0
  %t1104 = insertvalue { %"compiler/source:Span", ptr } %t1102, ptr %t1098, 1
  %t1105 = getelementptr { i64, [3 x i64] }, ptr %t1099, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1104, ptr %t1105
  %t1106 = load { i64, [3 x i64] }, ptr %t1099
  %t1108 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t1106, ptr %t1108
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1108, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimplSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
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
  %l15 = alloca i32
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l37 = alloca %"compiler/generic:Binding"
  %l39 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca i64
  %l70 = alloca i32
  %l71 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
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
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t4, i64 %t5)
  store i32 %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load i32, ptr %l15, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t10)
  store i64 %t12, ptr %l17
  br label %bb2
bb2:
  %t13 = load i64, ptr %l17, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l21
  br label %bb3
bb3:
  %t22 = load i64, ptr %l21, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l24, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l29
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l24, !tbaa !29
  %t40 = load i32, ptr %l29, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t39, i32 %t40)
  store { i64, ptr } %t41, ptr %l30
  br label %bb5
bb5:
  %t42 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t42, ptr %l6, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = icmp eq i64 %t45, 0
  br i1 %t47, label %bb6, label %bb7
bb6:
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t49, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t51, i64 %t52)
  store %"compiler/generic:Binding" %t55, ptr %l37
  br label %bb9
bb9:
  %t56 = load %"compiler/generic:Binding", ptr %l37
  store %"compiler/generic:Binding" %t56, ptr %l7
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t58, ptr %l39, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 0
  %t62 = load i32, ptr %t61, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t57, i32 %t62, i32 %a2, ptr %l7, i1 false, i1 true)
  br label %bb10
bb10:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t71, ptr %l7)
  br label %bb11
bb11:
  %t74 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb12
bb12:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t89 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t89, ptr %l53, !tbaa !27
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i32, ptr %t93, i64 %t90
  %t95 = load i32, ptr %t94, !tbaa !33
  %t98 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t101 = icmp eq i32 %t95, %t98
  br i1 %t101, label %bb16, label %bb17
bb16:
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t103, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb12
bb20:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  store ptr %t112, ptr %l63, !tbaa !29
  %t113 = load i32, ptr %l3, !tbaa !23
  store i32 %t113, ptr %l64, !tbaa !23
  %t114 = load i64, ptr %l4, !tbaa !24
  store i64 %t114, ptr %l65, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = getelementptr %"compiler/generic:Binding", ptr %l7, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t120, { i64, ptr } %t122)
  store i32 %t125, ptr %l70
  br label %bb21
bb21:
  %t126 = load ptr, ptr %l63, !tbaa !29
  %t127 = load i32, ptr %l64, !tbaa !23
  %t128 = load i64, ptr %l65, !tbaa !24
  %t129 = load i32, ptr %l70, !tbaa !23
  %t130 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t126, i32 %t127, i64 %t128, i32 %t129)
  store i32 %t130, ptr %l71
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t131 = load i32, ptr %l71, !tbaa !23
  store i32 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l17 = alloca i64
  %l22 = alloca ptr
  %l24 = alloca i32
  %l26 = alloca i32
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %l41 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l2, !tbaa !24
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
  store ptr %t14, ptr %l3, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v1, ptr %t22, ptr %t23, { i64, ptr } %t24)
  store i64 %t28, ptr %l17
  br label %bb6
bb6:
  %t29 = load i64, ptr %l17, !tbaa !24
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b5ab37aa4b0f5a53_2b9c0df8242d94bf)
  unreachable
bb12:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp sge i64 %t30, 0
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  store ptr %t39, ptr %l22, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t40)
  store i32 %t42, ptr %l24
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load i32, ptr %l24, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t44, i32 %t45, i64 %t43)
  store i32 %t47, ptr %l26
  br label %bb16
bb16:
  %t48 = load i32, ptr %l26, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l28, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t53)
  store ptr %t55, ptr %l30
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l30, !tbaa !29
  %t58 = getelementptr %"compiler/check:frame", ptr %t56, i32 0, i32 4
  store ptr %t58, ptr %l32, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t60)
  store i32 %t62, ptr %l35
  br label %bb19
bb19:
  %t63 = load ptr, ptr %l28, !tbaa !29
  %t64 = load ptr, ptr %l32, !tbaa !29
  %t65 = load ptr, ptr %l33, !tbaa !29
  %t66 = load i32, ptr %l35, !tbaa !23
  %t67 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v0, ptr %v1, ptr %t63, ptr %t64, ptr %t65, i32 %t66)
  store i32 %t67, ptr %l36
  br label %bb20
bb20:
  %t68 = load i32, ptr %l36, !tbaa !23
  store i32 %t68, ptr %l5, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l5, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l41
  br label %bb21
bb21:
  %t79 = load i32, ptr %l41, !range !{i32 0, i32 33}
  %t81 = trunc i64 26 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb22, label %bb23
bb22:
  %t84 = load i32, ptr %l5, !tbaa !23
  store i32 %t84, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca %"compiler/check:laneVals"
  %rv = alloca %"compiler/check:laneVals"
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %v1)
  store %"compiler/check:laneVals" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 80, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"compiler/check:laneVals", ptr %l4
  %t4 = load ptr, ptr %lp3
  store %"compiler/check:laneVals" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %lp3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHoldLeaves(ptr %v0, ptr %v1, ptr %t5, i64 %t6, ptr %t7)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %lp3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %v1, ptr %t11, %"compiler/source:Span" %a1, i64 %t13, ptr %t14)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %lp3
  %t20 = load %"compiler/check:laneVals", ptr %t19
  store %"compiler/check:laneVals" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:laneVals", ptr %rv
  ret %"compiler/check:laneVals" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/diagmsg:Msg"
  %l17 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %t1, ptr %a1, i32 %t3)
  store %"compiler/source:Span" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t8, ptr %l3
  %t9 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = icmp sge i32 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t15, ptr %l11
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t16, i32 %t17)
  store { i64, ptr } %t20, ptr %l14
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t21 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueParam(ptr %v0, ptr %v0, { i64, ptr } %t27)
  store %"compiler/diagmsg:Msg" %t29, ptr %l16
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l10, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l11
  %t32 = load %"compiler/diagmsg:Msg", ptr %l16
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l17
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoClearMade(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
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
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 7
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Make", ptr %t21, i32 0, i32 6
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l6, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_929b44a27af4e606_c6f0275d053ca0d2)
  unreachable
bb14:
  %t26 = load i1, ptr %l6, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca i1
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 116
  %t4 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l4
  %t6 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %v2, ptr %l4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t7, ptr %lp2
  %t8 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6
  %t9 = load ptr, ptr %lp2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, ptr %t9
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = ptrtoint ptr %v0 to i64
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = call ptr @__olang_region_make(ptr %v0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l8, !tbaa !24
  br label %bb3
bb3:
  %t16 = load i64, ptr %l8
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %t17)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t18, ptr %l10
  br label %bb4
bb4:
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l8
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 2
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr null
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr %t28
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr %t34
  %t41 = icmp eq ptr %t40, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t41)
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 116
  %t44 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l12
  %t45 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  %t46 = load ptr, ptr %l7, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %t47
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 2
  %t51 = load { i64, ptr }, ptr %t50
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = call ptr @__olang_region_or(ptr %t52, ptr null)
  %t54 = icmp ne ptr %t53, null
  %t55 = select i1 %t54, ptr %t53, ptr null
  %t56 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = call ptr @__olang_region_or(ptr %t58, ptr null)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr %t55
  %t62 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = icmp ne ptr %t65, null
  %t67 = select i1 %t66, ptr %t65, ptr %t61
  call void @__olang_region_drop(ptr %t67)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l12
  br label %bb8
bb8:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t72 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsFixed(ptr %v0, ptr %v1, ptr %t68, ptr %a1)
  store i1 %t72, ptr %l16
  br label %bb9
bb9:
  %t73 = load i1, ptr %l16, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb10, label %bb11
bb10:
  store i32 65536, ptr %l18, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l19, !tbaa !29
  %t77 = ptrtoint ptr %v0 to i64
  store i64 %t77, ptr %l20, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t78, label %bb12, label %bb13
bb11:
  br label %bb19
bb12:
  %t80 = call ptr @__olang_region_make(ptr %v0)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l20, !tbaa !24
  br label %bb13
bb13:
  %t82 = load ptr, ptr %lp2
  %t83 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t82
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t83, ptr %l22
  %t84 = load i64, ptr %l20
  %t85 = inttoptr i64 %t84 to ptr
  %t87 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t85, ptr %l22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t87, ptr %l24
  br label %bb14
bb14:
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t88, label %bb15, label %bb16
bb15:
  %t90 = load i64, ptr %l20
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = call ptr @__olang_region_or(ptr %t94, ptr null)
  %t96 = icmp ne ptr %t95, null
  %t97 = select i1 %t96, ptr %t95, ptr null
  %t98 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 1
  %t99 = load { i64, ptr }, ptr %t98
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = call ptr @__olang_region_or(ptr %t100, ptr null)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr %t97
  %t104 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr null)
  %t108 = icmp ne ptr %t107, null
  %t109 = select i1 %t108, ptr %t107, ptr %t103
  %t110 = icmp eq ptr %t109, %t91
  call void @__olang_region_settle(ptr %t91, i1 %t110)
  br label %bb16
bb16:
  %t111 = load ptr, ptr %l19, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 116
  %t113 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t113, ptr %l26
  %t114 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  %t115 = load ptr, ptr %l19, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %t116
  %t117 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t117, label %bb17, label %bb18
bb17:
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 2
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr %t124
  %t131 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr %t130
  call void @__olang_region_drop(ptr %t136)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l26
  br label %bb18
bb18:
  %t137 = load i32, ptr %l18, !tbaa !23
  %t138 = insertvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } zeroinitializer, i32 %t137, 0
  store { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t138, ptr %rv
  br label %ret
bb19:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 116
  %t142 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t141
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t142, ptr %l29
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l30, !tbaa !29
  %t144 = ptrtoint ptr %v0 to i64
  store i64 %t144, ptr %l31, !tbaa !24
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t145, label %bb20, label %bb21
bb20:
  %t147 = call ptr @__olang_region_make(ptr %v0)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l31, !tbaa !24
  br label %bb21
bb21:
  %t149 = load ptr, ptr %lp2
  %t150 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t149
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t150, ptr %l33
  %t151 = load i64, ptr %l31
  %t152 = inttoptr i64 %t151 to ptr
  %t154 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t152, ptr %l33)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t154, ptr %l35
  br label %bb22
bb22:
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t155, label %bb23, label %bb24
bb23:
  %t157 = load i64, ptr %l31
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 2
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr null
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t164
  %t171 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35, i32 0, i32 0
  %t172 = load { i64, ptr }, ptr %t171
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = call ptr @__olang_region_or(ptr %t173, ptr null)
  %t175 = icmp ne ptr %t174, null
  %t176 = select i1 %t175, ptr %t174, ptr %t170
  %t177 = icmp eq ptr %t176, %t158
  call void @__olang_region_settle(ptr %t158, i1 %t177)
  br label %bb24
bb24:
  %t178 = load ptr, ptr %l30, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 116
  %t180 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t179
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t180, ptr %l37
  %t181 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  %t182 = load ptr, ptr %l30, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t181, ptr %t183
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aChecker_2e116
  br i1 %t184, label %bb25, label %bb26
bb25:
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 2
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = icmp ne ptr %t189, null
  %t191 = select i1 %t190, ptr %t189, ptr null
  %t192 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 1
  %t193 = load { i64, ptr }, ptr %t192
  %t194 = extractvalue { i64, ptr } %t193, 1
  %t195 = call ptr @__olang_region_or(ptr %t194, ptr null)
  %t196 = icmp ne ptr %t195, null
  %t197 = select i1 %t196, ptr %t195, ptr %t191
  %t198 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198
  %t200 = extractvalue { i64, ptr } %t199, 1
  %t201 = call ptr @__olang_region_or(ptr %t200, ptr null)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr %t197
  call void @__olang_region_drop(ptr %t203)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l37
  br label %bb26
bb26:
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  %t205 = insertvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } zeroinitializer, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, 1
  store { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t205, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }, ptr %rv
  ret { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorMethod(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:opShape"
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l14 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l37 = alloca i1
  %l42 = alloca i64
  %l50 = alloca i32
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i1
  %l80 = alloca i64
  %l84 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l92 = alloca i32
  %l96 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l102 = alloca i1
  %l106 = alloca i1
  %l111 = alloca i32
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l116 = alloca ptr
  %l117 = alloca { i64, ptr }
  %l119 = alloca %"compiler/diagmsg:Msg"
  %l122 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca %"compiler/source:Span"
  %l128 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l130 = alloca %"compiler/diagmsg:Msg"
  %l133 = alloca i1
  %l136 = alloca ptr
  %l141 = alloca i32
  %l142 = alloca { i64, ptr }
  %l145 = alloca i1
  %l148 = alloca i1
  %l150 = alloca ptr
  %l151 = alloca %"compiler/source:Span"
  %l152 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l155 = alloca %"compiler/diagmsg:Msg"
  %l157 = alloca i1
  %l158 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca %"compiler/source:Span"
  %l164 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l166 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i1
  %l169 = alloca i1
  %l170 = alloca i32
  %l172 = alloca i32
  %l174 = alloca ptr
  %l175 = alloca %"compiler/source:Span"
  %l176 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l178 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i1
  %l181 = alloca i1
  %l183 = alloca i1
  %l185 = alloca { i64, ptr }
  %l187 = alloca i1
  %l189 = alloca i1
  %l191 = alloca i1
  %l193 = alloca { i64, ptr }
  %l195 = alloca i1
  %l199 = alloca i1
  %l202 = alloca ptr
  %l205 = alloca ptr
  %l207 = alloca { i64, ptr }
  %l209 = alloca i32
  %l210 = alloca i32
  %l213 = alloca ptr
  %l215 = alloca { i64, ptr }
  %l217 = alloca i32
  %l218 = alloca i32
  %l219 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca ptr
  %l224 = alloca { i64, ptr }
  %l225 = alloca %"compiler/diagmsg:Msg"
  %l226 = alloca ptr
  %l229 = alloca i32
  %l231 = alloca i32
  %l232 = alloca i1
  %l234 = alloca ptr
  %l235 = alloca %"compiler/source:Span"
  %l236 = alloca ptr
  %l237 = alloca { i64, ptr }
  %l238 = alloca %"compiler/diagmsg:Msg"
  %l240 = alloca ptr
  %l241 = alloca %"compiler/source:Span"
  %l242 = alloca ptr
  %l243 = alloca { i64, ptr }
  %l245 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
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
  store ptr %t8, ptr %l18
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l18, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Func", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %t13, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t10, i32 %t14)
  store { i64, ptr } %t17, ptr %l22
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp eq i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v0, ptr %s0, ptr %t25, { i64, ptr } %t26)
  store { i64, ptr } %t29, ptr %l28
  br label %bb6
bb6:
  %t30 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Func", ptr %t31, i32 0, i32 3
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/ast:Sig", ptr %t34, i32 0, i32 6
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommutesRule(ptr %v0, ptr %v0, ptr %s0, ptr %t39, i64 %t40, ptr %t41, { i64, ptr } %t42)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t47, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t49, ptr %l37
  br label %bb11
bb11:
  %t50 = load i1, ptr %l37, !tbaa !21
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  %t53 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyShape(ptr %v0, ptr %v0, ptr %t51, i64 %t52, ptr %t53)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t57 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t59 = call i64 @compiler_2fcheck_2eopShapeOf(ptr %s0, { i64, ptr } %t57)
  store i64 %t59, ptr %l42
  br label %bb16
bb16:
  %t60 = load i64, ptr %l42, !tbaa !24
  store i64 %t60, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t67 = getelementptr [23 x %"compiler/check:opShape"], ptr @G_2ecompiler_2fcheck_2eOpShapes, i64 0, i64 %t65
  %t68 = load %"compiler/check:opShape", ptr %t67
  store %"compiler/check:opShape" %t68, ptr %l6
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t77 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t73, i64 %t74)
  store i32 %t77, ptr %l50
  br label %bb20
bb20:
  %t78 = load i32, ptr %l50, !tbaa !23
  store i32 %t78, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  store ptr %t84, ptr %l53, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l7, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l58
  br label %bb21
bb21:
  %t95 = load ptr, ptr %l53, !tbaa !29
  %t96 = load i32, ptr %l58, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t95, i32 %t96)
  store { i64, ptr } %t97, ptr %l59
  br label %bb22
bb22:
  %t98 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t98, ptr %l8, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t103 = sub i64 %t101, 1
  store i64 %t103, ptr %l9, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t105, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t107, ptr %l64
  br label %bb23
bb23:
  %t108 = load i1, ptr %l64, !tbaa !21
  br i1 %t108, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb27
bb25:
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t111 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t109, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t111, ptr %l67
  br label %bb26
bb26:
  %t112 = load i1, ptr %l67, !tbaa !21
  store i1 %t112, ptr %l65, !tbaa !21
  br label %bb27
bb27:
  %t113 = load i1, ptr %l65, !tbaa !21
  br i1 %t113, label %bb28, label %bb29
bb28:
  %t116 = load i64, ptr %l9, !tbaa !24
  %t117 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  %t121 = icmp sge i64 %t116, %t118
  store i1 %t121, ptr %l69, !tbaa !21
  br label %bb30
bb29:
  %t123 = load i64, ptr %l9, !tbaa !24
  %t124 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 1
  %t125 = load i64, ptr %t124, !tbaa !24
  %t128 = icmp eq i64 %t123, %t125
  store i1 %t128, ptr %l69, !tbaa !21
  br label %bb30
bb30:
  %t130 = load i1, ptr %l69, !tbaa !21
  %t131 = xor i1 %t130, true
  br i1 %t131, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  br label %bb33
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i64, ptr %l1, !tbaa !24
  %t140 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t136, i64 %t137)
  store i64 %t140, ptr %l80
  br label %bb34
bb34:
  %t141 = load i64, ptr %l80, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t148 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t142, i64 -1, i64 %t141, i32 %t144, i32 0)
  store ptr %t148, ptr %l84
  br label %bb35
bb35:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t153 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t149, ptr %t150)
  store %"compiler/source:Span" %t153, ptr %l87
  br label %bb36
bb36:
  %t154 = load %"compiler/source:Span", ptr %l87
  store %"compiler/source:Span" %t154, ptr %l12
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %l7, !tbaa !23
  %t164 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l92
  br label %bb37
bb37:
  %t165 = load i32, ptr %l92, !tbaa !23
  store i32 %t165, ptr %l13, !tbaa !23
  %t166 = load i32, ptr %l13, !tbaa !23
  %t167 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t170 = icmp eq i32 %t166, %t167
  br i1 %t170, label %bb38, label %bb39
bb38:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l96, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t173, ptr %l97
  %t174 = load ptr, ptr %l2, !tbaa !29
  store ptr %t174, ptr %l98, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t175, ptr %l99, !tbaa !27
  %t176 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnHere(ptr %v0, ptr %v0, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t176, ptr %l100
  br label %bb40
bb39:
  %t177 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 2
  %t178 = load i1, ptr %t177, !tbaa !21
  br i1 %t178, label %bb42, label %bb43
bb40:
  %t180 = load ptr, ptr %l96, !tbaa !29
  %t181 = load %"compiler/source:Span", ptr %l97
  %t182 = load ptr, ptr %l98, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t184 = load %"compiler/diagmsg:Msg", ptr %l100
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t180, %"compiler/source:Span" %t181, ptr %t182, { i64, ptr } %t183, %"compiler/diagmsg:Msg" %t184)
  br label %bb41
bb41:
  br label %bb138
bb42:
  %t185 = load i32, ptr %l13, !tbaa !23
  %t186 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t189 = icmp eq i32 %t185, %t186
  br i1 %t189, label %bb44, label %bb45
bb43:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb48
bb44:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb47
bb45:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  %t197 = load i32, ptr %l13, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t196, i32 %t197)
  store i32 %t200, ptr %l111
  br label %bb46
bb46:
  %t201 = load i32, ptr %l111, !range !{i32 0, i32 33}
  %t203 = trunc i64 22 to i32
  %t204 = icmp eq i32 %t201, %t203
  store i1 %t204, ptr %l106, !tbaa !21
  br label %bb47
bb47:
  %t206 = load i1, ptr %l106, !tbaa !21
  store i1 %t206, ptr %l102, !tbaa !21
  br label %bb48
bb48:
  %t207 = load i1, ptr %l102, !tbaa !21
  br i1 %t207, label %bb49, label %bb50
bb49:
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l114, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t209, ptr %l115
  %t210 = load ptr, ptr %l2, !tbaa !29
  store ptr %t210, ptr %l116, !tbaa !29
  %t211 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t211, ptr %l117, !tbaa !27
  %t212 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  %t214 = load ptr, ptr @__olang_prog_scope
  %t216 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperatorResult(ptr %t214, ptr %v0, { i64, ptr } %t213)
  store %"compiler/diagmsg:Msg" %t216, ptr %l119
  br label %bb51
bb50:
  %t217 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 2
  %t218 = load i1, ptr %t217, !tbaa !21
  %t220 = xor i1 %t218, true
  br i1 %t220, label %bb53, label %bb54
bb51:
  %t222 = load ptr, ptr %l114, !tbaa !29
  %t223 = load %"compiler/source:Span", ptr %l115
  %t224 = load ptr, ptr %l116, !tbaa !29
  %t225 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t226 = load %"compiler/diagmsg:Msg", ptr %l119
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t222, %"compiler/source:Span" %t223, ptr %t224, { i64, ptr } %t225, %"compiler/diagmsg:Msg" %t226)
  br label %bb52
bb52:
  br label %bb137
bb53:
  %t227 = load i32, ptr %l13, !tbaa !23
  %t228 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t231 = icmp ne i32 %t227, %t228
  store i1 %t231, ptr %l122, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb55
bb55:
  %t233 = load i1, ptr %l122, !tbaa !21
  br i1 %t233, label %bb56, label %bb57
bb56:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l126, !tbaa !29
  %t235 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t235, ptr %l127
  %t236 = load ptr, ptr %l2, !tbaa !29
  store ptr %t236, ptr %l128, !tbaa !29
  %t237 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t237, ptr %l129, !tbaa !27
  %t238 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetatResult(ptr %v0)
  store %"compiler/diagmsg:Msg" %t238, ptr %l130
  br label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s11
  %t239 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 3
  %t240 = load i1, ptr %t239, !tbaa !21
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb60, label %bb61
bb58:
  %t244 = load ptr, ptr %l126, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l127
  %t246 = load ptr, ptr %l128, !tbaa !29
  %t247 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t248 = load %"compiler/diagmsg:Msg", ptr %l130
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t244, %"compiler/source:Span" %t245, ptr %t246, { i64, ptr } %t247, %"compiler/diagmsg:Msg" %t248)
  br label %bb59
bb59:
  br label %bb136
bb60:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/check:Checker", ptr %t249, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !29
  %t254 = getelementptr %"compiler/generic:Program", ptr %t252, i32 0, i32 2
  store ptr %t254, ptr %l136, !tbaa !29
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/check:Checker", ptr %t255, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !29
  %t260 = getelementptr %"compiler/generic:Program", ptr %t258, i32 0, i32 2
  %t261 = load i32, ptr %l7, !tbaa !23
  %t264 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t260, i32 %t261)
  store i32 %t264, ptr %l141
  br label %bb62
bb61:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb64
bb62:
  %t265 = load ptr, ptr %l136, !tbaa !29
  %t266 = load i32, ptr %l141, !tbaa !23
  %t267 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s11, ptr %t265, i32 %t266)
  store { i64, ptr } %t267, ptr %l142
  br label %bb63
bb63:
  %t268 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t268, 0
  %t271 = icmp sgt i64 %t269, 0
  store i1 %t271, ptr %l133, !tbaa !21
  br label %bb64
bb64:
  %t273 = load i1, ptr %l133, !tbaa !21
  br i1 %t273, label %bb65, label %bb66
bb65:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i32, ptr %l7, !tbaa !23
  %t278 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t274, i32 %t275)
  store i1 %t278, ptr %l148
  br label %bb67
bb66:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb68
bb67:
  %t279 = load i1, ptr %l148, !tbaa !21
  %t280 = xor i1 %t279, true
  store i1 %t280, ptr %l145, !tbaa !21
  br label %bb68
bb68:
  %t282 = load i1, ptr %l145, !tbaa !21
  br i1 %t282, label %bb69, label %bb70
bb69:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l150, !tbaa !29
  %t284 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t284, ptr %l151
  %t285 = load ptr, ptr %l2, !tbaa !29
  store ptr %t285, ptr %l152, !tbaa !29
  %t286 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t286, ptr %l153, !tbaa !27
  %t287 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  %t289 = load ptr, ptr @__olang_prog_scope
  %t291 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %t289, ptr %v0, { i64, ptr } %t288)
  store %"compiler/diagmsg:Msg" %t291, ptr %l155
  br label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s13
  %t292 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t293 = load { i64, ptr }, ptr %t292, !tbaa !27
  %t294 = load ptr, ptr @__olang_prog_scope
  %t296 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t294, ptr %s13, { i64, ptr } %t293, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t296, ptr %l157
  br label %bb73
bb71:
  %t297 = load ptr, ptr %l150, !tbaa !29
  %t298 = load %"compiler/source:Span", ptr %l151
  %t299 = load ptr, ptr %l152, !tbaa !29
  %t300 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t301 = load %"compiler/diagmsg:Msg", ptr %l155
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t297, %"compiler/source:Span" %t298, ptr %t299, { i64, ptr } %t300, %"compiler/diagmsg:Msg" %t301)
  br label %bb72
bb72:
  br label %bb135
bb73:
  %t302 = load i1, ptr %l157, !tbaa !21
  br i1 %t302, label %bb74, label %bb75
bb74:
  %t303 = load i32, ptr %l13, !tbaa !23
  %t304 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t307 = icmp ne i32 %t303, %t304
  store i1 %t307, ptr %l158, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb76
bb76:
  %t309 = load i1, ptr %l158, !tbaa !21
  br i1 %t309, label %bb77, label %bb78
bb77:
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l162, !tbaa !29
  %t311 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t311, ptr %l163
  %t312 = load ptr, ptr %l2, !tbaa !29
  store ptr %t312, ptr %l164, !tbaa !29
  %t313 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t313, ptr %l165, !tbaa !27
  %t314 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLessNotBool(ptr %v0)
  store %"compiler/diagmsg:Msg" %t314, ptr %l166
  br label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s15
  %t315 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t316 = load { i64, ptr }, ptr %t315, !tbaa !27
  %t317 = load ptr, ptr @__olang_prog_scope
  %t319 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t317, ptr %s15, { i64, ptr } %t316, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t319, ptr %l168
  br label %bb81
bb79:
  %t320 = load ptr, ptr %l162, !tbaa !29
  %t321 = load %"compiler/source:Span", ptr %l163
  %t322 = load ptr, ptr %l164, !tbaa !29
  %t323 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t324 = load %"compiler/diagmsg:Msg", ptr %l166
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t320, %"compiler/source:Span" %t321, ptr %t322, { i64, ptr } %t323, %"compiler/diagmsg:Msg" %t324)
  br label %bb80
bb80:
  br label %bb134
bb81:
  %t325 = load i1, ptr %l168, !tbaa !21
  br i1 %t325, label %bb82, label %bb83
bb82:
  %t326 = load i32, ptr %l13, !tbaa !23
  store i32 %t326, ptr %l170, !tbaa !23
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t327)
  store i32 %t329, ptr %l172
  br label %bb84
bb83:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb85
bb84:
  %t330 = load i32, ptr %l170, !tbaa !23
  %t331 = load i32, ptr %l172, !tbaa !23
  %t332 = icmp ne i32 %t330, %t331
  store i1 %t332, ptr %l169, !tbaa !21
  br label %bb85
bb85:
  %t334 = load i1, ptr %l169, !tbaa !21
  br i1 %t334, label %bb86, label %bb87
bb86:
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l174, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t336, ptr %l175
  %t337 = load ptr, ptr %l2, !tbaa !29
  store ptr %t337, ptr %l176, !tbaa !29
  %t338 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t338, ptr %l177, !tbaa !27
  %t339 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLenShape(ptr %v0)
  store %"compiler/diagmsg:Msg" %t339, ptr %l178
  br label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s17
  %t340 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t341 = load { i64, ptr }, ptr %t340, !tbaa !27
  %t342 = load ptr, ptr @__olang_prog_scope
  %t344 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t342, ptr %s17, { i64, ptr } %t341, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t344, ptr %l180
  br label %bb90
bb88:
  %t345 = load ptr, ptr %l174, !tbaa !29
  %t346 = load %"compiler/source:Span", ptr %l175
  %t347 = load ptr, ptr %l176, !tbaa !29
  %t348 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t349 = load %"compiler/diagmsg:Msg", ptr %l178
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t345, %"compiler/source:Span" %t346, ptr %t347, { i64, ptr } %t348, %"compiler/diagmsg:Msg" %t349)
  br label %bb89
bb89:
  br label %bb133
bb90:
  %t350 = load i1, ptr %l180, !tbaa !21
  br i1 %t350, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l181, !tbaa !21
  br label %bb94
bb92:
  %t351 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  %t353 = load ptr, ptr @__olang_prog_scope
  %t355 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t353, ptr %s17, { i64, ptr } %t352, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t355, ptr %l183
  br label %bb93
bb93:
  %t356 = load i1, ptr %l183, !tbaa !21
  store i1 %t356, ptr %l181, !tbaa !21
  br label %bb94
bb94:
  %t357 = load i1, ptr %l181, !tbaa !21
  br i1 %t357, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s18
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t359, ptr %l185, !tbaa !27
  %t360 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !27
  %t362 = getelementptr i32, ptr %t361, i64 0
  %t363 = load i32, ptr %t362, !tbaa !33
  %t366 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t358, i32 %t363)
  store i1 %t366, ptr %l187
  br label %bb97
bb96:
  br label %bb132
bb97:
  %t367 = load i1, ptr %l187, !tbaa !21
  store i1 %t367, ptr %l14, !tbaa !21
  %t368 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t369 = load { i64, ptr }, ptr %t368, !tbaa !27
  %t370 = load ptr, ptr @__olang_prog_scope
  %t372 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t370, ptr %s18, { i64, ptr } %t369, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t372, ptr %l189
  br label %bb98
bb98:
  %t373 = load i1, ptr %l189, !tbaa !21
  br i1 %t373, label %bb99, label %bb100
bb99:
  %t374 = load i1, ptr %l14, !tbaa !21
  br i1 %t374, label %bb101, label %bb102
bb100:
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l226, !tbaa !29
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load i32, ptr %l13, !tbaa !23
  %t381 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t377, i32 %t378)
  store i32 %t381, ptr %l229
  br label %bb118
bb101:
  store i1 true, ptr %l191, !tbaa !21
  br label %bb104
bb102:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t383 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t383, ptr %l193, !tbaa !27
  %t384 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = getelementptr i32, ptr %t385, i64 1
  %t387 = load i32, ptr %t386, !tbaa !33
  %t390 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t382, i32 %t387)
  store i1 %t390, ptr %l195
  br label %bb103
bb103:
  %t391 = load i1, ptr %l195, !tbaa !21
  store i1 %t391, ptr %l191, !tbaa !21
  br label %bb104
bb104:
  %t392 = load i1, ptr %l191, !tbaa !21
  store i1 %t392, ptr %l14, !tbaa !21
  %t393 = load i32, ptr %l13, !tbaa !23
  %t394 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t397 = icmp ne i32 %t393, %t394
  br i1 %t397, label %bb105, label %bb106
bb105:
  store i1 true, ptr %l199, !tbaa !21
  br label %bb112
bb106:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t404 = getelementptr %"compiler/generic:Program", ptr %t402, i32 0, i32 2
  store ptr %t404, ptr %l202, !tbaa !29
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/generic:Program", ptr %t408, i32 0, i32 2
  store ptr %t410, ptr %l205, !tbaa !29
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t412, ptr %l207, !tbaa !27
  %t413 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !27
  %t415 = getelementptr i32, ptr %t414, i64 0
  %t416 = load i32, ptr %t415, !tbaa !33
  %t419 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t411, i32 %t416)
  store i32 %t419, ptr %l209
  br label %bb107
bb107:
  %t420 = load ptr, ptr %l205, !tbaa !29
  %t421 = load i32, ptr %l209, !tbaa !23
  %t422 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t420, i32 %t421)
  store i32 %t422, ptr %l210
  br label %bb108
bb108:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/check:Checker", ptr %t423, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !29
  %t428 = getelementptr %"compiler/generic:Program", ptr %t426, i32 0, i32 2
  store ptr %t428, ptr %l213, !tbaa !29
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t430, ptr %l215, !tbaa !27
  %t431 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = getelementptr i32, ptr %t432, i64 1
  %t434 = load i32, ptr %t433, !tbaa !33
  %t437 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t429, i32 %t434)
  store i32 %t437, ptr %l217
  br label %bb109
bb109:
  %t438 = load ptr, ptr %l213, !tbaa !29
  %t439 = load i32, ptr %l217, !tbaa !23
  %t440 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t438, i32 %t439)
  store i32 %t440, ptr %l218
  br label %bb110
bb110:
  %t441 = load ptr, ptr %l202, !tbaa !29
  %t442 = load i32, ptr %l210, !tbaa !23
  %t443 = load i32, ptr %l218, !tbaa !23
  %t444 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t441, i32 %t442, i32 %t443)
  store i1 %t444, ptr %l219
  br label %bb111
bb111:
  %t445 = load i1, ptr %l219, !tbaa !21
  %t446 = xor i1 %t445, true
  store i1 %t446, ptr %l199, !tbaa !21
  br label %bb112
bb112:
  %t448 = load i1, ptr %l199, !tbaa !21
  br i1 %t448, label %bb113, label %bb114
bb113:
  %t449 = load ptr, ptr %l0, !tbaa !29
  store ptr %t449, ptr %l221, !tbaa !29
  %t450 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t450, ptr %l222
  %t451 = load ptr, ptr %l2, !tbaa !29
  store ptr %t451, ptr %l223, !tbaa !29
  %t452 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t452, ptr %l224, !tbaa !27
  %t453 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEqShape(ptr %v0)
  store %"compiler/diagmsg:Msg" %t453, ptr %l225
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t454 = load ptr, ptr %l221, !tbaa !29
  %t455 = load %"compiler/source:Span", ptr %l222
  %t456 = load ptr, ptr %l223, !tbaa !29
  %t457 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t458 = load %"compiler/diagmsg:Msg", ptr %l225
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t454, %"compiler/source:Span" %t455, ptr %t456, { i64, ptr } %t457, %"compiler/diagmsg:Msg" %t458)
  br label %bb116
bb116:
  br label %bb117
bb117:
  br label %bb126
bb118:
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t459)
  store i32 %t461, ptr %l231
  br label %bb119
bb119:
  %t462 = load ptr, ptr %l226, !tbaa !29
  %t463 = load i32, ptr %l229, !tbaa !23
  %t464 = load i32, ptr %l231, !tbaa !23
  %t465 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t462, i32 %t463, i32 %t464)
  store i1 %t465, ptr %l232
  br label %bb120
bb120:
  %t466 = load i1, ptr %l232, !tbaa !21
  %t467 = xor i1 %t466, true
  br i1 %t467, label %bb121, label %bb122
bb121:
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l234, !tbaa !29
  %t470 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t470, ptr %l235
  %t471 = load ptr, ptr %l2, !tbaa !29
  store ptr %t471, ptr %l236, !tbaa !29
  %t472 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t472, ptr %l237, !tbaa !27
  %t473 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrShape(ptr %v0)
  store %"compiler/diagmsg:Msg" %t473, ptr %l238
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t474 = load ptr, ptr %l234, !tbaa !29
  %t475 = load %"compiler/source:Span", ptr %l235
  %t476 = load ptr, ptr %l236, !tbaa !29
  %t477 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t478 = load %"compiler/diagmsg:Msg", ptr %l238
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t474, %"compiler/source:Span" %t475, ptr %t476, { i64, ptr } %t477, %"compiler/diagmsg:Msg" %t478)
  br label %bb124
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  %t479 = load i1, ptr %l14, !tbaa !21
  br i1 %t479, label %bb127, label %bb128
bb127:
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l240, !tbaa !29
  %t482 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t482, ptr %l241
  %t483 = load ptr, ptr %l2, !tbaa !29
  store ptr %t483, ptr %l242, !tbaa !29
  %t484 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t484, ptr %l243, !tbaa !27
  %t485 = getelementptr %"compiler/check:opShape", ptr %l6, i32 0, i32 0
  %t486 = load { i64, ptr }, ptr %t485, !tbaa !27
  %t487 = load ptr, ptr @__olang_prog_scope
  %t489 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEqStrWrites(ptr %t487, ptr %v0, { i64, ptr } %t486)
  store %"compiler/diagmsg:Msg" %t489, ptr %l245
  br label %bb129
bb128:
  br label %bb131
bb129:
  %t490 = load ptr, ptr %l240, !tbaa !29
  %t491 = load %"compiler/source:Span", ptr %l241
  %t492 = load ptr, ptr %l242, !tbaa !29
  %t493 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t494 = load %"compiler/diagmsg:Msg", ptr %l245
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v0, ptr %s0, ptr %v0, ptr %t490, %"compiler/source:Span" %t491, ptr %t492, { i64, ptr } %t493, %"compiler/diagmsg:Msg" %t494)
  br label %bb130
bb130:
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s18)
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s17)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s15)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s13)
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s11)
  br label %bb136
bb136:
  br label %bb137
bb137:
  br label %bb138
bb138:
  %t495 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t495)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
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

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"compiler/check:reflList"
  %l5 = alloca { { i64, ptr }, { i64, ptr } }
  %l6 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca i1
  %l17 = alloca %"compiler/check:reflVal"
  %l20 = alloca %"compiler/check:reflList"
  %l23 = alloca %"compiler/check:reflVal"
  %l28 = alloca %"compiler/check:reflVal"
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca { { i64, ptr }, { i64, ptr } }
  %l42 = alloca i1
  %l43 = alloca %"compiler/check:reflVal"
  %l46 = alloca %"compiler/check:reflVal"
  %l47 = alloca %"compiler/check:reflVal"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflVal"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a2)
  store { i64, ptr } %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load i1, ptr %l11, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  %t13 = extractvalue { i64, ptr } %a3, 0
  %t15 = icmp ne i64 %t13, 0
  store i1 %t15, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t18, ptr %l17
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load %"compiler/check:reflVal", ptr %l17
  store %"compiler/check:reflVal" %t19, ptr %rv
  br label %ret
bb9:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t20, ptr %a1)
  store %"compiler/check:reflList" %t24, ptr %l20
  br label %bb10
bb10:
  %t25 = load %"compiler/check:reflList", ptr %l20
  store %"compiler/check:reflList" %t25, ptr %l4
  %t26 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 0
  %t27 = load i1, ptr %t26, !tbaa !21
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t31, ptr %l23
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load %"compiler/check:reflVal", ptr %l23
  store %"compiler/check:reflVal" %t32, ptr %rv
  br label %ret
bb14:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 148
  store i1 true, ptr %t35, !tbaa !21
  %t36 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 1
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t41 = icmp eq i32 %t37, %t38
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t43, ptr %l28
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load %"compiler/check:reflVal", ptr %l28
  store %"compiler/check:reflVal" %t44, ptr %rv
  br label %ret
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l30, !tbaa !29
  %t49 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  store i32 %t50, ptr %l31, !tbaa !23
  %t51 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 2
  %t52 = load i64, ptr %t51, !tbaa !24
  store i64 %t52, ptr %l32, !tbaa !24
  %t53 = getelementptr %"compiler/check:reflList", ptr %l4, i32 0, i32 3
  %t54 = load i64, ptr %t53, !tbaa !24
  store i64 %t54, ptr %l33, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t55)
  store ptr %t57, ptr %l35
  br label %bb19
bb19:
  %t58 = load ptr, ptr %l35, !tbaa !29
  %t60 = getelementptr %"compiler/check:frame", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load ptr, ptr %l30, !tbaa !29
  %t63 = load i32, ptr %l31, !tbaa !23
  %t64 = load i64, ptr %l32, !tbaa !24
  %t65 = load i64, ptr %l33, !tbaa !24
  %t67 = call { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %s0, ptr %t62, i32 %t63, i64 %t64, i64 %t65, i64 %t61)
  store { { i64, ptr }, { i64, ptr } } %t67, ptr %l38
  br label %bb20
bb20:
  %t68 = load { { i64, ptr }, { i64, ptr } }, ptr %l38
  store { { i64, ptr }, { i64, ptr } } %t68, ptr %l5
  %t69 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l6, !tbaa !27
  %t72 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 1
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t73, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t77, ptr %l42
  br label %bb21
bb21:
  %t78 = load i1, ptr %l42, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v3, i64 %t81)
  store %"compiler/check:reflVal" %t83, ptr %l46
  br label %bb24
bb23:
  %t84 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v3)
  store %"compiler/check:reflVal" %t84, ptr %l47
  br label %bb25
bb24:
  %t85 = load %"compiler/check:reflVal", ptr %l46
  store %"compiler/check:reflVal" %t85, ptr %l43
  br label %bb26
bb25:
  %t86 = load %"compiler/check:reflVal", ptr %l47
  store %"compiler/check:reflVal" %t86, ptr %l43
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load %"compiler/check:reflVal", ptr %l43
  store %"compiler/check:reflVal" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/check:roArg"
  %l14 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca %"compiler/check:roArg"
  %l20 = alloca ptr
  %l21 = alloca %"compiler/typed:Local"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca %"compiler/check:roFn"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca %"compiler/typed:Local"
  %l34 = alloca { i64, ptr }
  %l38 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l66 = alloca i64
  %l68 = alloca i64
  %l73 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %l77 = alloca i1
  %l78 = alloca i1
  %l82 = alloca i1
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca %"compiler/check:roArg"
  %l104 = alloca ptr
  %l107 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l108 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i64
  %l117 = alloca i64
  %l119 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca %"compiler/typed:Local"
  %l128 = alloca ptr
  %l129 = alloca { i64, [3 x i64] }
  %l130 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca i64
  %l141 = alloca ptr
  %l142 = alloca i64
  %l149 = alloca { i64, [3 x i64] }
  %l152 = alloca { i64, ptr }
  %l154 = alloca %"compiler/diagmsg:Msg"
  %l160 = alloca i64
  %l162 = alloca i64
  %l167 = alloca %"compiler/check:roArg"
  %l169 = alloca ptr
  %l172 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l173 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i64
  %l182 = alloca i64
  %l184 = alloca ptr
  %l188 = alloca i32
  %l189 = alloca %"compiler/typed:Local"
  %l193 = alloca ptr
  %l194 = alloca { i64, [3 x i64] }
  %l195 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca %"compiler/diagmsg:Msg"
  %l201 = alloca i64
  %l205 = alloca ptr
  %l206 = alloca i64
  %l213 = alloca { i64, [3 x i64] }
  %l216 = alloca { i64, ptr }
  %l218 = alloca %"compiler/diagmsg:Msg"
  %l223 = alloca i64
  %l225 = alloca i64
  %l230 = alloca %"compiler/check:roFn"
  %l234 = alloca ptr
  %l238 = alloca i64
  %l242 = alloca i64
  %l245 = alloca i64
  %l264 = alloca ptr
  %l267 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l268 = alloca i1
  %l270 = alloca ptr
  %l274 = alloca i32
  %l275 = alloca %"compiler/typed:Local"
  %l278 = alloca { i64, ptr }
  %l282 = alloca ptr
  %l283 = alloca { i64, [3 x i64] }
  %l284 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l289 = alloca %"compiler/diagmsg:Msg"
  %l290 = alloca i64
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %t245 = alloca { i64, [3 x i64] }, align 8
  %t405 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleDeep(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  store i64 0, ptr %l1, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 84
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H67a76800a926d51a69ae01614492ac41(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l38
  br label %bb2
bb2:
  %t8 = load i64, ptr %l38, !tbaa !24
  %t9 = add i64 %t8, 1
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l46, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l46, !tbaa !24
  store i64 %t37, ptr %l43, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l43, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb34
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l6, !tbaa !24
  store i1 false, ptr %l7, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 84
  store ptr %t59, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l9, !tbaa !24
  store i64 %t61, ptr %l66, !tbaa !24
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H67a76800a926d51a69ae01614492ac41(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l68
  br label %bb14
bb14:
  %t65 = load i64, ptr %l66, !tbaa !24
  %t66 = load i64, ptr %l68, !tbaa !24
  %t67 = icmp slt i64 %t65, %t66
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  br label %bb29
bb16:
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l8, !tbaa !29
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = call %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__Hba570a70bf3ed1beae1003f5c2a372b5(ptr %v0, ptr %t71, i64 %t72)
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t75, ptr %l73
  br label %bb18
bb18:
  %t76 = load %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l73
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t76, ptr %l10
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 83
  %t80 = getelementptr %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l10, i32 0, i32 1
  %t81 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t80
  %t84 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t79, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t81)
  store i1 %t84, ptr %l77
  br label %bb19
bb19:
  %t85 = load i1, ptr %l77, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 83
  %t89 = getelementptr %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l10, i32 0, i32 0
  %t90 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t89
  %t93 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t88, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t90)
  store i1 %t93, ptr %l82
  br label %bb22
bb21:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb23
bb22:
  %t94 = load i1, ptr %l82, !tbaa !21
  %t95 = xor i1 %t94, true
  store i1 %t95, ptr %l78, !tbaa !21
  br label %bb23
bb23:
  %t97 = load i1, ptr %l78, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 83
  %t101 = getelementptr %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l10, i32 0, i32 0
  %t102 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t101
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t100, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t102, i1 true)
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb13
bb29:
  %t109 = load i1, ptr %l7, !tbaa !21
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t113 = load i64, ptr %l5, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l5, !tbaa !24
  br label %bb9
bb34:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 85
  store ptr %t119, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t121 = load i64, ptr %l12, !tbaa !24
  store i64 %t121, ptr %l95, !tbaa !24
  %t122 = load ptr, ptr %l11, !tbaa !29
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eLen_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l97
  br label %bb36
bb36:
  %t125 = load i64, ptr %l95, !tbaa !24
  %t126 = load i64, ptr %l97, !tbaa !24
  %t127 = icmp slt i64 %t125, %t126
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb38:
  br label %bb39
bb39:
  %t131 = load ptr, ptr %l11, !tbaa !29
  %t132 = load i64, ptr %l12, !tbaa !24
  %t135 = call %"compiler/check:roArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eAt_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v0, ptr %t131, i64 %t132)
  store %"compiler/check:roArg" %t135, ptr %l102
  br label %bb40
bb40:
  %t136 = load %"compiler/check:roArg", ptr %l102
  store %"compiler/check:roArg" %t136, ptr %l13
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 83
  store ptr %t139, ptr %l104, !tbaa !29
  %t140 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 0
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 1
  %t143 = load i64, ptr %t142, !tbaa !24
  %t146 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s10, i64 %t141, i64 %t143)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t146, ptr %l107
  br label %bb41
bb41:
  %t147 = load ptr, ptr %l104, !tbaa !29
  %t148 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l107
  %t149 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t147, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t148)
  store i1 %t149, ptr %l108
  br label %bb42
bb42:
  %t150 = load i1, ptr %l108, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb44:
  br label %bb45
bb45:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 14
  %t156 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 0
  %t157 = load i64, ptr %t156, !tbaa !24
  %t160 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t155, i64 %t157)
  store ptr %t160, ptr %l113
  br label %bb46
bb46:
  %t161 = load ptr, ptr %l113, !tbaa !29
  store ptr %t161, ptr %l14, !tbaa !29
  %t162 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 1
  %t163 = load i64, ptr %t162, !tbaa !24
  store i64 %t163, ptr %l114, !tbaa !24
  %t164 = load ptr, ptr %l14, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Body", ptr %t164, i32 0, i32 5
  %t168 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t166)
  store i64 %t168, ptr %l117
  br label %bb47
bb47:
  %t169 = load i64, ptr %l114, !tbaa !24
  %t170 = load i64, ptr %l117, !tbaa !24
  %t171 = icmp sge i64 %t169, %t170
  br i1 %t171, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb49:
  br label %bb50
bb50:
  %t173 = load ptr, ptr %l14, !tbaa !29
  store ptr %t173, ptr %l119, !tbaa !29
  %t174 = load ptr, ptr %l14, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Body", ptr %t174, i32 0, i32 5
  %t177 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 1
  %t178 = load i64, ptr %t177, !tbaa !24
  %t181 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t176, i64 %t178)
  store i32 %t181, ptr %l123
  br label %bb51
bb51:
  %t182 = load ptr, ptr %l119, !tbaa !29
  %t183 = load i32, ptr %l123, !tbaa !23
  %t184 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t182, i32 %t183)
  store %"compiler/typed:Local" %t184, ptr %l124
  br label %bb52
bb52:
  %t185 = load %"compiler/typed:Local", ptr %l124
  store %"compiler/typed:Local" %t185, ptr %l15
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/check:Checker", ptr %t186, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t191 = getelementptr %"compiler/generic:Program", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/load:Loader", ptr %t192, i32 0, i32 4
  %t195 = load ptr, ptr %t194, !tbaa !29
  store ptr %t195, ptr %l128, !tbaa !29
  %t196 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 2
  %t197 = load { i64, [3 x i64] }, ptr %t196
  store { i64, [3 x i64] } %t197, ptr %l129
  %t198 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 3
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l130, !tbaa !27
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t202 = load i32, ptr %t201, !tbaa !23
  %t205 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t200, i32 %t202)
  store { i64, ptr } %t205, ptr %l133
  br label %bb53
bb53:
  %t206 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 4
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  %t208 = getelementptr %"compiler/check:roArg", ptr %l13, i32 0, i32 5
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t214 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyArg(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t210, { i64, ptr } %t211, { i64, ptr } %t207, { i64, ptr } %t209)
  store %"compiler/diagmsg:Msg" %t214, ptr %l136
  br label %bb54
bb54:
  %t215 = load ptr, ptr %l128, !tbaa !29
  %t216 = load { i64, [3 x i64] }, ptr %l129
  %t217 = load %"compiler/diagmsg:Msg", ptr %l136
  %t218 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t215, { i64, [3 x i64] } %t216, %"compiler/diagmsg:Msg" %t217)
  store i64 %t218, ptr %l137
  br label %bb55
bb55:
  %t219 = load i64, ptr %l137, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = getelementptr %"compiler/load:Loader", ptr %t226, i32 0, i32 4
  %t229 = load ptr, ptr %t228, !tbaa !29
  store ptr %t229, ptr %l141, !tbaa !29
  store i64 %t219, ptr %l142, !tbaa !24
  %t231 = load ptr, ptr %l14, !tbaa !29
  %t233 = getelementptr %"compiler/typed:Body", ptr %t231, i32 0, i32 3
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 1
  %t236 = getelementptr %"compiler/source:Span", ptr %t235, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t240 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 1
  %t241 = getelementptr %"compiler/source:Span", ptr %t240, i32 0, i32 1
  %t242 = load i32, ptr %t241, !tbaa !23
  %t244 = sext i32 %t242 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 0
  store i64 3, ptr %t246
  %t248 = insertvalue { i64, i64, i64 } undef, i64 %t234, 0
  %t250 = insertvalue { i64, i64, i64 } %t248, i64 %t239, 1
  %t252 = insertvalue { i64, i64, i64 } %t250, i64 %t244, 2
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 1
  store { i64, i64, i64 } %t252, ptr %t253
  %t254 = load { i64, [3 x i64] }, ptr %t245
  store { i64, [3 x i64] } %t254, ptr %l149
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Local", ptr %l15, i32 0, i32 0
  %t257 = load i32, ptr %t256, !tbaa !23
  %t260 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t255, i32 %t257)
  store { i64, ptr } %t260, ptr %l152
  br label %bb56
bb56:
  %t261 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t262 = extractvalue { i64, ptr } %t261, 0
  %t263 = extractvalue { i64, ptr } %t261, 1
  %t264 = mul i64 %t262, 1
  %t265 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t264)
  call void @llvm.memcpy.p0.p0.i64(ptr %t265, ptr %t263, i64 %t264, i1 false)
  %t266 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  %t269 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v0, { i64, ptr } %t267)
  store %"compiler/diagmsg:Msg" %t269, ptr %l154
  br label %bb57
bb57:
  %t270 = load ptr, ptr %l141, !tbaa !29
  %t271 = load i64, ptr %l142, !tbaa !24
  %t272 = load { i64, [3 x i64] }, ptr %l149
  %t273 = load %"compiler/diagmsg:Msg", ptr %l154
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t270, i64 %t271, { i64, [3 x i64] } %t272, %"compiler/diagmsg:Msg" %t273)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb59:
  %t274 = load i64, ptr %l12, !tbaa !24
  %t276 = add i64 %t274, 1
  store i64 %t276, ptr %l12, !tbaa !24
  br label %bb35
bb60:
  %t278 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrReceivers(ptr %v0, ptr %t278)
  br label %bb61
bb61:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/check:Checker", ptr %t280, i32 0, i32 92
  store ptr %t282, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb62
bb62:
  store %olang.scope zeroinitializer, ptr %s15
  %t284 = load i64, ptr %l18, !tbaa !24
  store i64 %t284, ptr %l160, !tbaa !24
  %t285 = load ptr, ptr %l17, !tbaa !29
  %t287 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eLen_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %t285)
  store i64 %t287, ptr %l162
  br label %bb63
bb63:
  %t288 = load i64, ptr %l160, !tbaa !24
  %t289 = load i64, ptr %l162, !tbaa !24
  %t290 = icmp slt i64 %t288, %t289
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s15)
  br label %bb87
bb65:
  br label %bb66
bb66:
  %t294 = load ptr, ptr %l17, !tbaa !29
  %t295 = load i64, ptr %l18, !tbaa !24
  %t298 = call %"compiler/check:roArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eAt_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v0, ptr %t294, i64 %t295)
  store %"compiler/check:roArg" %t298, ptr %l167
  br label %bb67
bb67:
  %t299 = load %"compiler/check:roArg", ptr %l167
  store %"compiler/check:roArg" %t299, ptr %l19
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/check:Checker", ptr %t300, i32 0, i32 83
  store ptr %t302, ptr %l169, !tbaa !29
  %t303 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 0
  %t304 = load i64, ptr %t303, !tbaa !24
  %t305 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 1
  %t306 = load i64, ptr %t305, !tbaa !24
  %t309 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s15, i64 %t304, i64 %t306)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t309, ptr %l172
  br label %bb68
bb68:
  %t310 = load ptr, ptr %l169, !tbaa !29
  %t311 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l172
  %t312 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t310, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t311)
  store i1 %t312, ptr %l173
  br label %bb69
bb69:
  %t313 = load i1, ptr %l173, !tbaa !21
  %t314 = xor i1 %t313, true
  br i1 %t314, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb71:
  br label %bb72
bb72:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/check:Checker", ptr %t316, i32 0, i32 14
  %t319 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 0
  %t320 = load i64, ptr %t319, !tbaa !24
  %t323 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t318, i64 %t320)
  store ptr %t323, ptr %l178
  br label %bb73
bb73:
  %t324 = load ptr, ptr %l178, !tbaa !29
  store ptr %t324, ptr %l20, !tbaa !29
  %t325 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 1
  %t326 = load i64, ptr %t325, !tbaa !24
  store i64 %t326, ptr %l179, !tbaa !24
  %t327 = load ptr, ptr %l20, !tbaa !29
  %t329 = getelementptr %"compiler/typed:Body", ptr %t327, i32 0, i32 5
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t329)
  store i64 %t331, ptr %l182
  br label %bb74
bb74:
  %t332 = load i64, ptr %l179, !tbaa !24
  %t333 = load i64, ptr %l182, !tbaa !24
  %t334 = icmp sge i64 %t332, %t333
  br i1 %t334, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb76:
  br label %bb77
bb77:
  %t336 = load ptr, ptr %l20, !tbaa !29
  store ptr %t336, ptr %l184, !tbaa !29
  %t337 = load ptr, ptr %l20, !tbaa !29
  %t339 = getelementptr %"compiler/typed:Body", ptr %t337, i32 0, i32 5
  %t340 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 1
  %t341 = load i64, ptr %t340, !tbaa !24
  %t344 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t339, i64 %t341)
  store i32 %t344, ptr %l188
  br label %bb78
bb78:
  %t345 = load ptr, ptr %l184, !tbaa !29
  %t346 = load i32, ptr %l188, !tbaa !23
  %t347 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t345, i32 %t346)
  store %"compiler/typed:Local" %t347, ptr %l189
  br label %bb79
bb79:
  %t348 = load %"compiler/typed:Local", ptr %l189
  store %"compiler/typed:Local" %t348, ptr %l21
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/check:Checker", ptr %t349, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = getelementptr %"compiler/generic:Program", ptr %t352, i32 0, i32 0
  %t355 = load ptr, ptr %t354, !tbaa !29
  %t357 = getelementptr %"compiler/load:Loader", ptr %t355, i32 0, i32 4
  %t358 = load ptr, ptr %t357, !tbaa !29
  store ptr %t358, ptr %l193, !tbaa !29
  %t359 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 2
  %t360 = load { i64, [3 x i64] }, ptr %t359
  store { i64, [3 x i64] } %t360, ptr %l194
  %t361 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 3
  %t362 = load { i64, ptr }, ptr %t361, !tbaa !27
  store { i64, ptr } %t362, ptr %l195, !tbaa !27
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t365 = load i32, ptr %t364, !tbaa !23
  %t368 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t363, i32 %t365)
  store { i64, ptr } %t368, ptr %l198
  br label %bb80
bb80:
  %t369 = getelementptr %"compiler/check:roArg", ptr %l19, i32 0, i32 4
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !27
  %t371 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t374 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefKept(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t371, { i64, ptr } %t372, { i64, ptr } %t370)
  store %"compiler/diagmsg:Msg" %t374, ptr %l200
  br label %bb81
bb81:
  %t375 = load ptr, ptr %l193, !tbaa !29
  %t376 = load { i64, [3 x i64] }, ptr %l194
  %t377 = load %"compiler/diagmsg:Msg", ptr %l200
  %t378 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t375, { i64, [3 x i64] } %t376, %"compiler/diagmsg:Msg" %t377)
  store i64 %t378, ptr %l201
  br label %bb82
bb82:
  %t379 = load i64, ptr %l201, !tbaa !24
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 0
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/load:Loader", ptr %t386, i32 0, i32 4
  %t389 = load ptr, ptr %t388, !tbaa !29
  store ptr %t389, ptr %l205, !tbaa !29
  store i64 %t379, ptr %l206, !tbaa !24
  %t391 = load ptr, ptr %l20, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Body", ptr %t391, i32 0, i32 3
  %t394 = load i64, ptr %t393, !tbaa !24
  %t395 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t396 = getelementptr %"compiler/source:Span", ptr %t395, i32 0, i32 0
  %t397 = load i32, ptr %t396, !tbaa !23
  %t399 = sext i32 %t397 to i64
  %t400 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t401 = getelementptr %"compiler/source:Span", ptr %t400, i32 0, i32 1
  %t402 = load i32, ptr %t401, !tbaa !23
  %t404 = sext i32 %t402 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t405
  %t406 = getelementptr { i64, [3 x i64] }, ptr %t405, i32 0, i32 0
  store i64 3, ptr %t406
  %t408 = insertvalue { i64, i64, i64 } undef, i64 %t394, 0
  %t410 = insertvalue { i64, i64, i64 } %t408, i64 %t399, 1
  %t412 = insertvalue { i64, i64, i64 } %t410, i64 %t404, 2
  %t413 = getelementptr { i64, [3 x i64] }, ptr %t405, i32 0, i32 1
  store { i64, i64, i64 } %t412, ptr %t413
  %t414 = load { i64, [3 x i64] }, ptr %t405
  store { i64, [3 x i64] } %t414, ptr %l213
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t417 = load i32, ptr %t416, !tbaa !23
  %t420 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t415, i32 %t417)
  store { i64, ptr } %t420, ptr %l216
  br label %bb83
bb83:
  %t421 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 0
  %t423 = extractvalue { i64, ptr } %t421, 1
  %t424 = mul i64 %t422, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t425, ptr %t423, i64 %t424, i1 false)
  %t426 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  %t429 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v0, { i64, ptr } %t427)
  store %"compiler/diagmsg:Msg" %t429, ptr %l218
  br label %bb84
bb84:
  %t430 = load ptr, ptr %l205, !tbaa !29
  %t431 = load i64, ptr %l206, !tbaa !24
  %t432 = load { i64, [3 x i64] }, ptr %l213
  %t433 = load %"compiler/diagmsg:Msg", ptr %l218
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t430, i64 %t431, { i64, [3 x i64] } %t432, %"compiler/diagmsg:Msg" %t433)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb86:
  %t434 = load i64, ptr %l18, !tbaa !24
  %t436 = add i64 %t434, 1
  store i64 %t436, ptr %l18, !tbaa !24
  br label %bb62
bb87:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/check:Checker", ptr %t438, i32 0, i32 86
  store ptr %t440, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb88
bb88:
  %t442 = load i64, ptr %l24, !tbaa !24
  store i64 %t442, ptr %l223, !tbaa !24
  %t443 = load ptr, ptr %l23, !tbaa !29
  %t445 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eLen_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %t443)
  store i64 %t445, ptr %l225
  br label %bb89
bb89:
  %t446 = load i64, ptr %l223, !tbaa !24
  %t447 = load i64, ptr %l225, !tbaa !24
  %t448 = icmp slt i64 %t446, %t447
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb90, label %bb91
bb90:
  br label %bb120
bb91:
  br label %bb92
bb92:
  %t452 = load ptr, ptr %l23, !tbaa !29
  %t453 = load i64, ptr %l24, !tbaa !24
  %t456 = call %"compiler/check:roFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eAt_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t452, i64 %t453)
  store %"compiler/check:roFn" %t456, ptr %l230
  br label %bb93
bb93:
  %t457 = load %"compiler/check:roFn", ptr %l230
  store %"compiler/check:roFn" %t457, ptr %l25
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/check:Checker", ptr %t458, i32 0, i32 14
  %t461 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 0
  %t462 = load i64, ptr %t461, !tbaa !24
  %t465 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t460, i64 %t462)
  store ptr %t465, ptr %l234
  br label %bb94
bb94:
  %t466 = load ptr, ptr %l234, !tbaa !29
  store ptr %t466, ptr %l26, !tbaa !29
  %t467 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 1
  %t468 = load i64, ptr %t467, !tbaa !24
  store i64 %t468, ptr %l27, !tbaa !24
  %t470 = load ptr, ptr %l26, !tbaa !29
  %t472 = getelementptr %"compiler/typed:Body", ptr %t470, i32 0, i32 5
  %t474 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t472)
  store i64 %t474, ptr %l238
  br label %bb95
bb95:
  %t475 = load i64, ptr %l238, !tbaa !24
  store i64 %t475, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t476 = load i64, ptr %l28, !tbaa !24
  %t477 = load i64, ptr %l27, !tbaa !24
  %t480 = icmp sgt i64 %t476, %t477
  br i1 %t480, label %bb96, label %bb97
bb96:
  %t482 = load i64, ptr %l29, !tbaa !24
  %t484 = icmp sgt i64 %t482, 0
  br i1 %t484, label %bb98, label %bb99
bb97:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb101
bb98:
  %t486 = load i64, ptr %l28, !tbaa !24
  %t487 = load i64, ptr %l27, !tbaa !24
  %t490 = sub i64 %t486, %t487
  %t491 = load i64, ptr %l29, !tbaa !24
  %t494 = add i64 %t490, %t491
  %t496 = sub i64 %t494, 1
  %t497 = load i64, ptr %l29, !tbaa !24
  %t500 = sdiv i64 %t496, %t497
  store i64 %t500, ptr %l245, !tbaa !24
  br label %bb100
bb99:
  store i64 0, ptr %l245, !tbaa !24
  br label %bb100
bb100:
  %t502 = load i64, ptr %l245, !tbaa !24
  store i64 %t502, ptr %l242, !tbaa !24
  br label %bb101
bb101:
  %t503 = load i64, ptr %l242, !tbaa !24
  store i64 %t503, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb102
bb102:
  store %olang.scope zeroinitializer, ptr %s22
  %t504 = load i64, ptr %l31, !tbaa !24
  %t505 = load i64, ptr %l30, !tbaa !24
  %t508 = icmp slt i64 %t504, %t505
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb103, label %bb104
bb103:
  call void @__olang_scope_close(ptr %s22)
  br label %bb118
bb104:
  br label %bb105
bb105:
  %t512 = load i64, ptr %l27, !tbaa !24
  %t513 = load i64, ptr %l31, !tbaa !24
  %t514 = load i64, ptr %l29, !tbaa !24
  %t517 = mul i64 %t513, %t514
  %t520 = add i64 %t512, %t517
  store i64 %t520, ptr %l32, !tbaa !24
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t524 = getelementptr %"compiler/check:Checker", ptr %t522, i32 0, i32 83
  store ptr %t524, ptr %l264, !tbaa !29
  %t525 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 0
  %t526 = load i64, ptr %t525, !tbaa !24
  %t527 = load i64, ptr %l32, !tbaa !24
  %t530 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s22, i64 %t526, i64 %t527)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t530, ptr %l267
  br label %bb106
bb106:
  %t531 = load ptr, ptr %l264, !tbaa !29
  %t532 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l267
  %t533 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t531, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t532)
  store i1 %t533, ptr %l268
  br label %bb107
bb107:
  %t534 = load i1, ptr %l268, !tbaa !21
  %t535 = xor i1 %t534, true
  br i1 %t535, label %bb108, label %bb109
bb108:
  call void @__olang_scope_close(ptr %s22)
  br label %bb117
bb109:
  br label %bb110
bb110:
  %t537 = load ptr, ptr %l26, !tbaa !29
  store ptr %t537, ptr %l270, !tbaa !29
  %t538 = load ptr, ptr %l26, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Body", ptr %t538, i32 0, i32 5
  %t541 = load i64, ptr %l32, !tbaa !24
  %t544 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t540, i64 %t541)
  store i32 %t544, ptr %l274
  br label %bb111
bb111:
  %t545 = load ptr, ptr %l270, !tbaa !29
  %t546 = load i32, ptr %l274, !tbaa !23
  %t547 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t545, i32 %t546)
  store %"compiler/typed:Local" %t547, ptr %l275
  br label %bb112
bb112:
  %t548 = load %"compiler/typed:Local", ptr %l275
  store %"compiler/typed:Local" %t548, ptr %l33
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = getelementptr %"compiler/typed:Local", ptr %l33, i32 0, i32 2
  %t551 = load i32, ptr %t550, !tbaa !23
  %t554 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %s22, ptr %t549, i32 0, i32 %t551)
  store { i64, ptr } %t554, ptr %l278
  br label %bb113
bb113:
  %t555 = load { i64, ptr }, ptr %l278, !tbaa !27
  store { i64, ptr } %t555, ptr %l34, !tbaa !27
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr %"compiler/check:Checker", ptr %t556, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !29
  %t561 = getelementptr %"compiler/generic:Program", ptr %t559, i32 0, i32 0
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/load:Loader", ptr %t562, i32 0, i32 4
  %t565 = load ptr, ptr %t564, !tbaa !29
  store ptr %t565, ptr %l282, !tbaa !29
  %t566 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 2
  %t567 = load { i64, [3 x i64] }, ptr %t566
  store { i64, [3 x i64] } %t567, ptr %l283
  %t568 = getelementptr %"compiler/check:roFn", ptr %l25, i32 0, i32 3
  %t569 = load { i64, ptr }, ptr %t568, !tbaa !27
  store { i64, ptr } %t569, ptr %l284, !tbaa !27
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = getelementptr %"compiler/typed:Local", ptr %l33, i32 0, i32 0
  %t572 = load i32, ptr %t571, !tbaa !23
  %t575 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t570, i32 %t572)
  store { i64, ptr } %t575, ptr %l287
  br label %bb114
bb114:
  %t576 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t577 = load { i64, ptr }, ptr %l284, !tbaa !27
  %t578 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t580 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyFuncValue(ptr %v0, ptr %v0, ptr %s22, ptr %v0, { i64, ptr } %t577, { i64, ptr } %t578, { i64, ptr } %t576)
  store %"compiler/diagmsg:Msg" %t580, ptr %l289
  br label %bb115
bb115:
  %t581 = load ptr, ptr %l282, !tbaa !29
  %t582 = load { i64, [3 x i64] }, ptr %l283
  %t583 = load %"compiler/diagmsg:Msg", ptr %l289
  %t584 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t581, { i64, [3 x i64] } %t582, %"compiler/diagmsg:Msg" %t583)
  store i64 %t584, ptr %l290
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s22)
  br label %bb118
bb117:
  %t585 = load i64, ptr %l31, !tbaa !24
  %t587 = add i64 %t585, 1
  store i64 %t587, ptr %l31, !tbaa !24
  br label %bb102
bb118:
  br label %bb119
bb119:
  %t589 = load i64, ptr %l24, !tbaa !24
  %t591 = add i64 %t589, 1
  store i64 %t591, ptr %l24, !tbaa !24
  br label %bb88
bb120:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroSettleDeep(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/check:roDeepArg"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l50 = alloca i64
  %l52 = alloca i64
  %l57 = alloca %"compiler/check:roDeepArg"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca i64
  %l73 = alloca ptr
  %l76 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l79 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l80 = alloca %"std/pair:Pair.b139c4f75a6545712256427180a82a06"
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 90
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l17, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H48754b4fa56ee3a8c3b855086bca91dc(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l19
  br label %bb2
bb2:
  %t9 = load i64, ptr %l17, !tbaa !24
  %t10 = load i64, ptr %l19, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H015c7298d54f1d140374736283ef15ae(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t19, ptr %l24
  br label %bb6
bb6:
  %t20 = load %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l24
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t20, ptr %l3
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l25
  br label %bb7
bb7:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l4
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l3, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = getelementptr %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l3, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v0, ptr %s2, ptr %t23, i64 %t25, ptr %t27, ptr %l4)
  br label %bb8
bb8:
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s4
  %t33 = load i64, ptr %l6, !tbaa !24
  store i64 %t33, ptr %l31, !tbaa !24
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t34)
  store i64 %t36, ptr %l33
  br label %bb10
bb10:
  %t37 = load i64, ptr %l31, !tbaa !24
  %t38 = load i64, ptr %l33, !tbaa !24
  %t39 = icmp slt i64 %t37, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb18
bb12:
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t43, i64 %t44)
  store i64 %t47, ptr %l38
  br label %bb14
bb14:
  %t48 = load i64, ptr %l38, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 83
  store ptr %t51, ptr %l40, !tbaa !29
  %t52 = getelementptr %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l3, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t57 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s4, i64 %t53, i64 %t48)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t57, ptr %l43
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l40, !tbaa !29
  %t59 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l43
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t58, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t59, i1 true)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb17
bb17:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l6, !tbaa !24
  br label %bb9
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l2, !tbaa !24
  br label %bb1
bb20:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 91
  store ptr %t70, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s8
  %t72 = load i64, ptr %l9, !tbaa !24
  store i64 %t72, ptr %l50, !tbaa !24
  %t73 = load ptr, ptr %l8, !tbaa !29
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2eLen__H5c673d8ec2e4412819235760f9452f00(ptr %v0, ptr %t73)
  store i64 %t75, ptr %l52
  br label %bb22
bb22:
  %t76 = load i64, ptr %l50, !tbaa !24
  %t77 = load i64, ptr %l52, !tbaa !24
  %t78 = icmp slt i64 %t76, %t77
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s8)
  br label %bb42
bb24:
  br label %bb25
bb25:
  %t82 = load ptr, ptr %l8, !tbaa !29
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = call %"compiler/check:roDeepArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2eAt_3ccompiler_2fcheck_3aroDeepArg_3e(ptr %v0, ptr %v0, ptr %t82, i64 %t83)
  store %"compiler/check:roDeepArg" %t86, ptr %l57
  br label %bb26
bb26:
  %t87 = load %"compiler/check:roDeepArg", ptr %l57
  store %"compiler/check:roDeepArg" %t87, ptr %l10
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s8, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l58
  br label %bb27
bb27:
  %t89 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l11
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:roDeepArg", ptr %l10, i32 0, i32 0
  %t92 = load i64, ptr %t91, !tbaa !24
  %t93 = getelementptr %"compiler/check:roDeepArg", ptr %l10, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v0, ptr %s8, ptr %t90, i64 %t92, ptr %t94, ptr %l11)
  br label %bb28
bb28:
  store ptr %l11, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s10
  %t100 = load i64, ptr %l13, !tbaa !24
  store i64 %t100, ptr %l64, !tbaa !24
  %t101 = load ptr, ptr %l12, !tbaa !29
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s8, ptr %t101)
  store i64 %t103, ptr %l66
  br label %bb30
bb30:
  %t104 = load i64, ptr %l64, !tbaa !24
  %t105 = load i64, ptr %l66, !tbaa !24
  %t106 = icmp slt i64 %t104, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s10)
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t110 = load ptr, ptr %l12, !tbaa !29
  %t111 = load i64, ptr %l13, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s8, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l71
  br label %bb34
bb34:
  %t115 = load i64, ptr %l71, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 84
  store ptr %t118, ptr %l73, !tbaa !29
  %t119 = getelementptr %"compiler/check:roDeepArg", ptr %l10, i32 0, i32 0
  %t120 = load i64, ptr %t119, !tbaa !24
  %t124 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s10, i64 %t120, i64 %t115)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t124, ptr %l76
  br label %bb35
bb35:
  %t125 = getelementptr %"compiler/check:roDeepArg", ptr %l10, i32 0, i32 2
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = getelementptr %"compiler/check:roDeepArg", ptr %l10, i32 0, i32 3
  %t128 = load i64, ptr %t127, !tbaa !24
  %t131 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s10, i64 %t126, i64 %t128)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t131, ptr %l79
  br label %bb36
bb36:
  %t132 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l76
  %t133 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l79
  %t134 = call %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %s10, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t132, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t133)
  store %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t134, ptr %l80
  br label %bb37
bb37:
  %t135 = load ptr, ptr %l73, !tbaa !29
  %t136 = load %"std/pair:Pair.b139c4f75a6545712256427180a82a06", ptr %l80
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H9be680f663aa81558c844970355ca108(ptr %v0, ptr %t135, %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %t136)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s10)
  br label %bb39
bb39:
  %t137 = load i64, ptr %l13, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l13, !tbaa !24
  br label %bb29
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb41:
  %t141 = load i64, ptr %l9, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l9, !tbaa !24
  br label %bb21
bb42:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l16 = alloca { i64, ptr }
  %l19 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t29 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l7, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l4, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store %"compiler/source:Span" %a1, ptr %l11
  store i32 %a2, ptr %l12, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 37
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store { i64, ptr } %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t26 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %t24, ptr %t22, i1 false)
  store %"compiler/typed:Seq" %t26, ptr %l19
  br label %bb6
bb6:
  %t27 = load %"compiler/typed:Seq", ptr %l19
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t27, ptr %t28
  store { i64, [5 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 0
  store i64 12, ptr %t30
  %t31 = load %"compiler/source:Span", ptr %l11
  %t32 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t31, 0
  %t33 = load i32, ptr %l12, !tbaa !23
  %t34 = insertvalue { %"compiler/source:Span", i32, ptr } %t32, i32 %t33, 1
  %t36 = insertvalue { %"compiler/source:Span", i32, ptr } %t34, ptr %t28, 2
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t36, ptr %t37
  %t38 = load { i64, [5 x i64] }, ptr %t29
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t38, ptr %t40
  store ptr %t40, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleAllViews(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l15 = alloca ptr
  %l19 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 76
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 78
  store ptr %t6, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l7, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l9
  br label %bb3
bb3:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %t18, i64 %t19)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t22, ptr %l14
  br label %bb7
bb7:
  %t23 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t23, ptr %l3
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l15, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 14
  %t28 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t27, i64 %t29)
  store ptr %t32, ptr %l19
  br label %bb8
bb8:
  %t33 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = load ptr, ptr %l15, !tbaa !29
  %t36 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleViews(ptr %v0, ptr %v0, ptr %t35, ptr %t36, i64 %t34)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t38 = load i64, ptr %l2, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l2, !tbaa !24
  br label %bb2
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 76
  %t45 = load i1, ptr %t44, !tbaa !21
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb12, label %bb13
bb12:
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb1
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetDecls(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i1 %a3, i1 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca { i64, [3 x i64] }
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l34 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l52 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca { i64, [3 x i64] }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca i64
  %l72 = alloca i32
  %l75 = alloca ptr
  %l80 = alloca ptr
  %l82 = alloca %"compiler/source:Span"
  %l85 = alloca ptr
  %l91 = alloca { i64, [3 x i64] }
  %l95 = alloca { i64, ptr }
  %l97 = alloca %"compiler/diagmsg:Msg"
  %l98 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l127 = alloca { i64, ptr }
  %l137 = alloca i1
  %l139 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l150 = alloca { i64, [3 x i64] }
  %l154 = alloca { i64, ptr }
  %l156 = alloca %"compiler/diagmsg:Msg"
  %l157 = alloca i64
  %l163 = alloca ptr
  %l169 = alloca { i64, [3 x i64] }
  %l172 = alloca { i64, ptr }
  %l173 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca i64
  %l178 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca { i64, [3 x i64] }
  %l183 = alloca { i64, ptr }
  %l184 = alloca %"compiler/diagmsg:Msg"
  %l185 = alloca i64
  %l188 = alloca ptr
  %l189 = alloca i1
  %l194 = alloca ptr
  %l195 = alloca i64
  %l196 = alloca ptr
  %l197 = alloca ptr
  %l198 = alloca i1
  %l199 = alloca i1
  %l202 = alloca ptr
  %l203 = alloca i64
  %l209 = alloca %"compiler/source:Span"
  %l211 = alloca i64
  %s4 = alloca %olang.scope
  %t88 = alloca { i64, [3 x i64] }, align 8
  %t148 = alloca { i64, [3 x i64] }, align 8
  %t284 = alloca { i64, [3 x i64] }, align 8
  %t335 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i1 %a3, ptr %l3
  store i1 %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 10
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l34
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l34, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 4
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l6, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/load:Loader", ptr %t31, i32 0, i32 4
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l7, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l10, !tbaa !24
  br label %bb5
bb5:
  %t42 = load i64, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l10, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb6, label %bb7
bb6:
  br label %bb91
bb7:
  br label %bb8
bb8:
  %t50 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t50, ptr %l48, !tbaa !27
  %t51 = load i64, ptr %l9, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  store ptr %t56, ptr %l11, !tbaa !29
  %t58 = load ptr, ptr %l11, !tbaa !29
  store ptr %t58, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t59 = load ptr, ptr %l51, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb9, label %bb10
bb9:
  %t62 = load ptr, ptr %l51, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 11}
  %t65 = icmp eq i64 %t63, 8
  store i1 %t65, ptr %l52, !tbaa !21
  br label %bb10
bb10:
  %t66 = load i1, ptr %l52, !tbaa !21
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t67 = load ptr, ptr %l11, !tbaa !29
  %t69 = getelementptr { i64, [8 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t69, i32 0, i32 0
  %t71 = load %"compiler/source:Span", ptr %t70
  store %"compiler/source:Span" %t71, ptr %l12
  %t73 = load ptr, ptr %l11, !tbaa !29
  %t75 = getelementptr { i64, [8 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t75, i32 0, i32 1
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l13, !tbaa !29
  br label %bb13
bb12:
  br label %bb72
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t79 = load i64, ptr %l6, !tbaa !24
  %t80 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t84 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 1
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = sext i32 %t85 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 0
  store i64 3, ptr %t89
  %t91 = insertvalue { i64, i64, i64 } undef, i64 %t79, 0
  %t93 = insertvalue { i64, i64, i64 } %t91, i64 %t83, 1
  %t95 = insertvalue { i64, i64, i64 } %t93, i64 %t87, 2
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 1
  store { i64, i64, i64 } %t95, ptr %t96
  %t97 = load { i64, [3 x i64] }, ptr %t88
  store { i64, [3 x i64] } %t97, ptr %l14
  %t99 = load i1, ptr %l3, !tbaa !21
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb14, label %bb15
bb14:
  %t103 = load ptr, ptr %l7, !tbaa !29
  store ptr %t103, ptr %l67, !tbaa !29
  %t104 = load { i64, [3 x i64] }, ptr %l14
  store { i64, [3 x i64] } %t104, ptr %l68
  %t105 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetPlace(ptr %v0)
  store %"compiler/diagmsg:Msg" %t105, ptr %l69
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t106 = load ptr, ptr %l67, !tbaa !29
  %t107 = load { i64, [3 x i64] }, ptr %l68
  %t108 = load %"compiler/diagmsg:Msg", ptr %l69
  %t109 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t106, { i64, [3 x i64] } %t107, %"compiler/diagmsg:Msg" %t108)
  store i64 %t109, ptr %l70
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb18:
  %t110 = load ptr, ptr %l13, !tbaa !29
  %t112 = call i32 @compiler_2fcheck_2esetName(ptr %v1, ptr %t110)
  store i32 %t112, ptr %l72
  br label %bb19
bb19:
  %t113 = load i32, ptr %l72, !tbaa !23
  store i32 %t113, ptr %l15, !tbaa !23
  %t114 = load i32, ptr %l15, !tbaa !23
  %t116 = icmp ne i32 %t114, 0
  br i1 %t116, label %bb20, label %bb21
bb20:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t122 = load i64, ptr %l1, !tbaa !24
  %t123 = load i32, ptr %l15, !tbaa !23
  %t127 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %s4, ptr %t121, i64 %t122, i32 %t123)
  store ptr %t127, ptr %l80
  br label %bb22
bb21:
  store ptr null, ptr %l75, !tbaa !29
  br label %bb23
bb22:
  %t128 = load ptr, ptr %l80, !tbaa !29
  store ptr %t128, ptr %l75, !tbaa !29
  br label %bb23
bb23:
  %t129 = load ptr, ptr %l75, !tbaa !29
  store ptr %t129, ptr %l16, !tbaa !29
  %t130 = load ptr, ptr %l13, !tbaa !29
  %t132 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t130)
  store %"compiler/source:Span" %t132, ptr %l82
  br label %bb24
bb24:
  %t133 = load %"compiler/source:Span", ptr %l82
  store %"compiler/source:Span" %t133, ptr %l17
  %t134 = load ptr, ptr %l16, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb25, label %bb26
bb25:
  %t138 = load ptr, ptr %l7, !tbaa !29
  store ptr %t138, ptr %l85, !tbaa !29
  %t139 = load i64, ptr %l6, !tbaa !24
  %t140 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  %t144 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t145 = load i32, ptr %t144, !tbaa !23
  %t147 = sext i32 %t145 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [3 x i64] }, ptr %t148, i32 0, i32 0
  store i64 3, ptr %t149
  %t151 = insertvalue { i64, i64, i64 } undef, i64 %t139, 0
  %t153 = insertvalue { i64, i64, i64 } %t151, i64 %t143, 1
  %t155 = insertvalue { i64, i64, i64 } %t153, i64 %t147, 2
  %t156 = getelementptr { i64, [3 x i64] }, ptr %t148, i32 0, i32 1
  store { i64, i64, i64 } %t155, ptr %t156
  %t157 = load { i64, [3 x i64] }, ptr %t148
  store { i64, [3 x i64] } %t157, ptr %l91
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i64, ptr %l6, !tbaa !24
  %t160 = load %"compiler/source:Span", ptr %l17
  %t164 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %v0, ptr %t158, i64 %t159, %"compiler/source:Span" %t160)
  store { i64, ptr } %t164, ptr %l95
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t165 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 0
  %t167 = extractvalue { i64, ptr } %t165, 1
  %t168 = mul i64 %t166, 1
  %t169 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t168)
  call void @llvm.memcpy.p0.p0.i64(ptr %t169, ptr %t167, i64 %t168, i1 false)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t173 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %v0, ptr %v0, { i64, ptr } %t171)
  store %"compiler/diagmsg:Msg" %t173, ptr %l97
  br label %bb28
bb28:
  %t174 = load ptr, ptr %l85, !tbaa !29
  %t175 = load { i64, [3 x i64] }, ptr %l91
  %t176 = load %"compiler/diagmsg:Msg", ptr %l97
  %t177 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t174, { i64, [3 x i64] } %t175, %"compiler/diagmsg:Msg" %t176)
  store i64 %t177, ptr %l98
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb30:
  store i64 -1, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t178 = load ptr, ptr %l16, !tbaa !29
  %t180 = getelementptr %"compiler/ast:VarDecl", ptr %t178, i32 0, i32 0
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  store i64 %t183, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t185 = load i64, ptr %l20, !tbaa !24
  %t186 = load i64, ptr %l19, !tbaa !24
  %t189 = icmp sgt i64 %t185, %t186
  br i1 %t189, label %bb31, label %bb32
bb31:
  %t191 = load i64, ptr %l21, !tbaa !24
  %t193 = icmp sgt i64 %t191, 0
  br i1 %t193, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb36
bb33:
  %t195 = load i64, ptr %l20, !tbaa !24
  %t196 = load i64, ptr %l19, !tbaa !24
  %t199 = sub i64 %t195, %t196
  %t200 = load i64, ptr %l21, !tbaa !24
  %t203 = add i64 %t199, %t200
  %t205 = sub i64 %t203, 1
  %t206 = load i64, ptr %l21, !tbaa !24
  %t209 = sdiv i64 %t205, %t206
  store i64 %t209, ptr %l108, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb35
bb35:
  %t211 = load i64, ptr %l108, !tbaa !24
  store i64 %t211, ptr %l105, !tbaa !24
  br label %bb36
bb36:
  %t212 = load i64, ptr %l105, !tbaa !24
  store i64 %t212, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb37
bb37:
  %t213 = load i64, ptr %l23, !tbaa !24
  %t214 = load i64, ptr %l22, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb38, label %bb39
bb38:
  br label %bb45
bb39:
  br label %bb40
bb40:
  %t221 = load i64, ptr %l19, !tbaa !24
  %t222 = load i64, ptr %l23, !tbaa !24
  %t223 = load i64, ptr %l21, !tbaa !24
  %t226 = mul i64 %t222, %t223
  %t229 = add i64 %t221, %t226
  store i64 %t229, ptr %l24, !tbaa !24
  %t231 = load ptr, ptr %l16, !tbaa !29
  %t233 = getelementptr %"compiler/ast:VarDecl", ptr %t231, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l127, !tbaa !27
  %t235 = load i64, ptr %l24, !tbaa !24
  %t237 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr i32, ptr %t238, i64 %t235
  %t240 = load i32, ptr %t239, !tbaa !33
  %t241 = load i32, ptr %l15, !tbaa !23
  %t244 = icmp eq i32 %t240, %t241
  br i1 %t244, label %bb41, label %bb42
bb41:
  %t246 = load i64, ptr %l24, !tbaa !24
  store i64 %t246, ptr %l18, !tbaa !24
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t248 = load i64, ptr %l23, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l23, !tbaa !24
  br label %bb37
bb45:
  %t252 = load i64, ptr %l18, !tbaa !24
  %t254 = icmp slt i64 %t252, 0
  br i1 %t254, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb48
bb47:
  %t256 = load ptr, ptr %l16, !tbaa !29
  %t258 = getelementptr %"compiler/ast:VarDecl", ptr %t256, i32 0, i32 1
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l139, !tbaa !27
  %t260 = load i64, ptr %l18, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr %"compiler/source:Span", ptr %t263, i64 %t260
  %t265 = getelementptr %"compiler/source:Span", ptr %t264, i32 0, i32 0
  %t266 = load i32, ptr %t265, !tbaa !23
  %t267 = getelementptr %"compiler/source:Span", ptr %l12, i32 0, i32 0
  %t268 = load i32, ptr %t267, !tbaa !23
  %t271 = icmp sgt i32 %t266, %t268
  store i1 %t271, ptr %l137, !tbaa !21
  br label %bb48
bb48:
  %t273 = load i1, ptr %l137, !tbaa !21
  br i1 %t273, label %bb49, label %bb50
bb49:
  %t274 = load ptr, ptr %l7, !tbaa !29
  store ptr %t274, ptr %l144, !tbaa !29
  %t275 = load i64, ptr %l6, !tbaa !24
  %t276 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t277 = load i32, ptr %t276, !tbaa !23
  %t279 = sext i32 %t277 to i64
  %t280 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t281 = load i32, ptr %t280, !tbaa !23
  %t283 = sext i32 %t281 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t284
  %t285 = getelementptr { i64, [3 x i64] }, ptr %t284, i32 0, i32 0
  store i64 3, ptr %t285
  %t287 = insertvalue { i64, i64, i64 } undef, i64 %t275, 0
  %t289 = insertvalue { i64, i64, i64 } %t287, i64 %t279, 1
  %t291 = insertvalue { i64, i64, i64 } %t289, i64 %t283, 2
  %t292 = getelementptr { i64, [3 x i64] }, ptr %t284, i32 0, i32 1
  store { i64, i64, i64 } %t291, ptr %t292
  %t293 = load { i64, [3 x i64] }, ptr %t284
  store { i64, [3 x i64] } %t293, ptr %l150
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i64, ptr %l6, !tbaa !24
  %t296 = load %"compiler/source:Span", ptr %l17
  %t300 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %v0, ptr %t294, i64 %t295, %"compiler/source:Span" %t296)
  store { i64, ptr } %t300, ptr %l154
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t301 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 0
  %t303 = extractvalue { i64, ptr } %t301, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t309 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %v0, ptr %v0, { i64, ptr } %t307)
  store %"compiler/diagmsg:Msg" %t309, ptr %l156
  br label %bb52
bb52:
  %t310 = load ptr, ptr %l144, !tbaa !29
  %t311 = load { i64, [3 x i64] }, ptr %l150
  %t312 = load %"compiler/diagmsg:Msg", ptr %l156
  %t313 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t310, { i64, [3 x i64] } %t311, %"compiler/diagmsg:Msg" %t312)
  store i64 %t313, ptr %l157
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb54:
  %t314 = load i64, ptr %l18, !tbaa !24
  %t315 = load ptr, ptr %l16, !tbaa !29
  %t317 = getelementptr %"compiler/ast:VarDecl", ptr %t315, i32 0, i32 3
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t323 = icmp slt i64 %t314, %t320
  br i1 %t323, label %bb55, label %bb56
bb55:
  %t325 = load ptr, ptr %l7, !tbaa !29
  store ptr %t325, ptr %l163, !tbaa !29
  %t326 = load i64, ptr %l6, !tbaa !24
  %t327 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t328 = load i32, ptr %t327, !tbaa !23
  %t330 = sext i32 %t328 to i64
  %t331 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t332 = load i32, ptr %t331, !tbaa !23
  %t334 = sext i32 %t332 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t335
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 0
  store i64 3, ptr %t336
  %t338 = insertvalue { i64, i64, i64 } undef, i64 %t326, 0
  %t340 = insertvalue { i64, i64, i64 } %t338, i64 %t330, 1
  %t342 = insertvalue { i64, i64, i64 } %t340, i64 %t334, 2
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t335, i32 0, i32 1
  store { i64, i64, i64 } %t342, ptr %t343
  %t344 = load { i64, [3 x i64] }, ptr %t335
  store { i64, [3 x i64] } %t344, ptr %l169
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i32, ptr %l15, !tbaa !23
  %t349 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t345, i32 %t346)
  store { i64, ptr } %t349, ptr %l172
  br label %bb57
bb56:
  br label %bb60
bb57:
  %t350 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t351 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetHasValue(ptr %v0, ptr %v0, { i64, ptr } %t350)
  store %"compiler/diagmsg:Msg" %t351, ptr %l173
  br label %bb58
bb58:
  %t352 = load ptr, ptr %l163, !tbaa !29
  %t353 = load { i64, [3 x i64] }, ptr %l169
  %t354 = load %"compiler/diagmsg:Msg", ptr %l173
  %t355 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t352, { i64, [3 x i64] } %t353, %"compiler/diagmsg:Msg" %t354)
  store i64 %t355, ptr %l174
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s4)
  br label %bb90
bb60:
  %t356 = load i1, ptr %l4, !tbaa !21
  br i1 %t356, label %bb61, label %bb62
bb61:
  %t358 = load ptr, ptr %l5, !tbaa !29
  %t359 = load i32, ptr %l15, !tbaa !23
  %t362 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v2, ptr %t358, i32 %t359)
  store i1 %t362, ptr %l178
  br label %bb63
bb62:
  br label %bb71
bb63:
  %t363 = load i1, ptr %l178, !tbaa !21
  br i1 %t363, label %bb64, label %bb65
bb64:
  %t364 = load ptr, ptr %l7, !tbaa !29
  store ptr %t364, ptr %l179, !tbaa !29
  %t365 = load { i64, [3 x i64] }, ptr %l14
  store { i64, [3 x i64] } %t365, ptr %l180
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load i32, ptr %l15, !tbaa !23
  %t370 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t366, i32 %t367)
  store { i64, ptr } %t370, ptr %l183
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t371 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t372 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTwice(ptr %v0, ptr %v0, { i64, ptr } %t371)
  store %"compiler/diagmsg:Msg" %t372, ptr %l184
  br label %bb67
bb67:
  %t373 = load ptr, ptr %l179, !tbaa !29
  %t374 = load { i64, [3 x i64] }, ptr %l180
  %t375 = load %"compiler/diagmsg:Msg", ptr %l184
  %t376 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t373, { i64, [3 x i64] } %t374, %"compiler/diagmsg:Msg" %t375)
  store i64 %t376, ptr %l185
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t377 = load ptr, ptr %l5, !tbaa !29
  %t378 = load i32, ptr %l15, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v2, ptr %t377, i32 %t378, i1 true)
  br label %bb70
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s4)
  br label %bb89
bb72:
  %t381 = load ptr, ptr %l11, !tbaa !29
  store ptr %t381, ptr %l188, !tbaa !29
  store i1 false, ptr %l189, !tbaa !21
  %t382 = load ptr, ptr %l188, !tbaa !29
  %t383 = icmp ne ptr %t382, null
  br i1 %t383, label %bb73, label %bb74
bb73:
  %t385 = load ptr, ptr %l188, !tbaa !29
  %t386 = load i64, ptr %t385, !range !{i64 0, i64 11}
  %t388 = icmp eq i64 %t386, 7
  store i1 %t388, ptr %l189, !tbaa !21
  br label %bb74
bb74:
  %t389 = load i1, ptr %l189, !tbaa !21
  br i1 %t389, label %bb75, label %bb76
bb75:
  %t390 = load ptr, ptr %l11, !tbaa !29
  %t392 = getelementptr { i64, [8 x i64] }, ptr %t390, i32 0, i32 1
  %t393 = getelementptr { %"compiler/source:Span", ptr }, ptr %t392, i32 0, i32 1
  %t394 = load ptr, ptr %t393
  store ptr %t394, ptr %l25, !tbaa !29
  br label %bb77
bb76:
  br label %bb84
bb77:
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l194, !tbaa !29
  %t397 = load i64, ptr %l1, !tbaa !24
  store i64 %t397, ptr %l195, !tbaa !24
  %t398 = load ptr, ptr %l25, !tbaa !29
  store ptr %t398, ptr %l196, !tbaa !29
  %t399 = load ptr, ptr %l25, !tbaa !29
  store ptr %t399, ptr %l197, !tbaa !29
  %t400 = load i1, ptr %l3, !tbaa !21
  store i1 %t400, ptr %l198, !tbaa !21
  %t401 = load i1, ptr %l4, !tbaa !21
  store i1 %t401, ptr %l199, !tbaa !21
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/check:Checker", ptr %t402, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !29
  %t407 = getelementptr %"compiler/generic:Program", ptr %t405, i32 0, i32 0
  %t408 = load ptr, ptr %t407, !tbaa !29
  store ptr %t408, ptr %l202, !tbaa !29
  %t409 = load i64, ptr %l1, !tbaa !24
  store i64 %t409, ptr %l203, !tbaa !24
  %t410 = load ptr, ptr %l25, !tbaa !29
  %t412 = getelementptr %"compiler/ast:TopIf", ptr %t410, i32 0, i32 0
  %t413 = load ptr, ptr %t412, !tbaa !29
  %t415 = icmp eq ptr %t413, null
  br i1 %t415, label %bb78, label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_c6f64016a09fc530_b8b2abed7e41fd2c)
  unreachable
bb79:
  br label %bb80
bb80:
  %t417 = load ptr, ptr %l25, !tbaa !29
  %t419 = getelementptr %"compiler/ast:TopIf", ptr %t417, i32 0, i32 0
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t420)
  store %"compiler/source:Span" %t422, ptr %l209
  br label %bb81
bb81:
  %t423 = getelementptr %"compiler/source:Span", ptr %l209, i32 0, i32 0
  %t424 = load i32, ptr %t423, !tbaa !23
  %t425 = load ptr, ptr %l202, !tbaa !29
  %t426 = load i64, ptr %l203, !tbaa !24
  %t428 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t425, i64 %t426, i32 %t424)
  store i64 %t428, ptr %l211
  br label %bb82
bb82:
  %t429 = load ptr, ptr %l5, !tbaa !29
  %t430 = load ptr, ptr %l194, !tbaa !29
  %t431 = load i64, ptr %l195, !tbaa !24
  %t432 = load ptr, ptr %l196, !tbaa !29
  %t433 = load ptr, ptr %l197, !tbaa !29
  %t434 = load i1, ptr %l198, !tbaa !21
  %t435 = load i1, ptr %l199, !tbaa !21
  %t436 = load i64, ptr %l211, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIf(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t430, i64 %t431, ptr %t432, ptr %t433, i1 %t434, i1 %t435, i64 %t436, i64 0, ptr %t429)
  br label %bb83
bb83:
  br label %bb89
bb84:
  br i1 true, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_37fb0db160a44e56_e10956c528b68142)
  unreachable
bb89:
  br label %bb90
bb90:
  %t438 = load i64, ptr %l9, !tbaa !24
  %t440 = add i64 %t438, 1
  store i64 %t440, ptr %l9, !tbaa !24
  br label %bb5
bb91:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitArgumentError(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l12 = alloca i1
  %l33 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i1
  %l60 = alloca ptr
  %l66 = alloca ptr
  %l73 = alloca { i64, [3 x i64] }
  %l77 = alloca { i64, ptr }
  %l78 = alloca %"compiler/diagmsg:Msg"
  %l79 = alloca i64
  %s3 = alloca %olang.scope
  %t151 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 5
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb2:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Func", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Sig", ptr %t14, i32 0, i32 5
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8ab389c63541d9ff_202a64879438b95b)
  unreachable
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Func", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Sig", ptr %t24, i32 0, i32 5
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t30 = getelementptr %"compiler/ast:ContractBlock", ptr %t27, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t37 = load i1, ptr %l12, !tbaa !21
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Func", ptr %t38, i32 0, i32 3
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/ast:Sig", ptr %t41, i32 0, i32 3
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  store i64 %t48, ptr %l5, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t58, ptr %l33, !tbaa !27
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr ptr, ptr %t62, i64 %t59
  %t64 = load ptr, ptr %t63, !tbaa !39
  store ptr %t64, ptr %l6, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l6, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Path", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l38, !tbaa !27
  %t71 = load ptr, ptr %l6, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Path", ptr %t71, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t78 = sub i64 %t76, 1
  %t80 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 %t78
  %t83 = load i32, ptr %t82, !tbaa !33
  %t86 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t66, i32 %t83)
  store { i64, ptr } %t86, ptr %l44
  br label %bb14
bb14:
  %t87 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t87, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t88, ptr %l45
  br label %bb15
bb15:
  %t89 = load i1, ptr %l45, !tbaa !21
  br i1 %t89, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t90 = load i64, ptr %l4, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l4, !tbaa !24
  br label %bb10
bb20:
  %t94 = load ptr, ptr %l2, !tbaa !29
  %t96 = getelementptr %"compiler/ast:Func", ptr %t94, i32 0, i32 3
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Sig", ptr %t97, i32 0, i32 5
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_eb70ab4575e7dce0_566bdfa95b3dee6c)
  unreachable
bb22:
  br label %bb23
bb23:
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t106 = getelementptr %"compiler/ast:Func", ptr %t104, i32 0, i32 3
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/ast:Sig", ptr %t107, i32 0, i32 5
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t113 = getelementptr %"compiler/ast:ContractBlock", ptr %t110, i32 0, i32 0
  %t114 = load %"compiler/source:Span", ptr %t113
  store %"compiler/source:Span" %t114, ptr %l7
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/load:Loader", ptr %t122, i32 0, i32 4
  %t125 = load ptr, ptr %t124, !tbaa !29
  store ptr %t125, ptr %l60, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/load:Loader", ptr %t132, i32 0, i32 10
  %t138 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t134, i64 %a1)
  store ptr %t138, ptr %l66
  br label %bb24
bb24:
  %t139 = load ptr, ptr %l66, !tbaa !29
  %t141 = getelementptr %"compiler/load:Module", ptr %t139, i32 0, i32 4
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t144 = load i32, ptr %t143, !tbaa !23
  %t146 = sext i32 %t144 to i64
  %t147 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = sext i32 %t148 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 0
  store i64 3, ptr %t152
  %t154 = insertvalue { i64, i64, i64 } undef, i64 %t142, 0
  %t156 = insertvalue { i64, i64, i64 } %t154, i64 %t146, 1
  %t158 = insertvalue { i64, i64, i64 } %t156, i64 %t150, 2
  %t159 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 1
  store { i64, i64, i64 } %t158, ptr %t159
  %t160 = load { i64, [3 x i64] }, ptr %t151
  store { i64, [3 x i64] } %t160, ptr %l73
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l2, !tbaa !29
  %t164 = getelementptr %"compiler/ast:Func", ptr %t162, i32 0, i32 2
  %t165 = load i32, ptr %t164, !tbaa !23
  %t168 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t161, i32 %t165)
  store { i64, ptr } %t168, ptr %l77
  br label %bb25
bb25:
  %t169 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t170 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsArgumentError(ptr %v0, ptr %v0, { i64, ptr } %t169)
  store %"compiler/diagmsg:Msg" %t170, ptr %l78
  br label %bb26
bb26:
  %t171 = load ptr, ptr %l60, !tbaa !29
  %t172 = load { i64, [3 x i64] }, ptr %l73
  %t173 = load %"compiler/diagmsg:Msg", ptr %l78
  %t174 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t171, { i64, [3 x i64] } %t172, %"compiler/diagmsg:Msg" %t173)
  store i64 %t174, ptr %l79
  br label %bb27
bb27:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnySlot" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:AnySlot"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/generic:AnySlot" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp slt i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t16, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l9, !tbaa !29
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store ptr %t24, ptr %l15
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l15, !tbaa !29
  store ptr %t25, ptr %l2, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TypeDecl", ptr %t30, i32 0, i32 3
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  store i1 %t35, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l18, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  store ptr null, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TypeDecl", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l3, !tbaa !29
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l25, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 5}
  %t51 = icmp eq i64 %t49, 2
  store i1 %t51, ptr %l26, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr { i64, [6 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t55, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56
  store { i64, ptr } %t57, ptr %l4, !tbaa !27
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t59 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 2
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t66 = icmp slt i64 %t60, %t63
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t68, ptr %l36, !tbaa !27
  %t69 = getelementptr %"compiler/generic:AnySlot", ptr %l1, i32 0, i32 2
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l35, !tbaa !29
  br label %bb19
bb18:
  store ptr null, ptr %l35, !tbaa !29
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l35, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store ptr null, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_b6a47344f78098a_9e5fbaf70b0ac586)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca %"compiler/names:Ref"
  %l27 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i32
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 10
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t31, i64 %a1)
  store ptr %t35, ptr %l19
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load ptr, ptr %l13, !tbaa !29
  %t45 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t42, i64 %t39, i32 %t41)
  store %"compiler/names:Ref" %t45, ptr %l23
  br label %bb7
bb7:
  %t46 = load %"compiler/names:Ref", ptr %l23
  store %"compiler/names:Ref" %t46, ptr %l4
  %t47 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 9}
  %t50 = trunc i64 4 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t55 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = icmp slt i64 %t56, 0
  store i1 %t58, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t60 = load i1, ptr %l27, !tbaa !21
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t61 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 9}
  %t64 = trunc i64 7 to i32
  %t65 = icmp eq i32 %t62, %t64
  %t67 = xor i1 %t65, true
  store i1 %t67, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l35, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t82 = load i64, ptr %t81, !tbaa !24
  %t86 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t78, i64 %t80, i64 %t82)
  store i32 %t86, ptr %l40
  br label %bb14
bb14:
  %t87 = load ptr, ptr %l35, !tbaa !29
  %t88 = load i32, ptr %l40, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t89, ptr %l41
  br label %bb15
bb15:
  %t90 = load i32, ptr %l41, !range !{i32 0, i32 6}
  %t92 = trunc i64 3 to i32
  %t93 = icmp eq i32 %t90, %t92
  store i1 %t93, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_763b8bf7b0207b18_a2106654b6caec64)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i32
  %lp16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l43 = alloca i64
  %l46 = alloca i64
  %l48 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l87 = alloca i1
  %l90 = alloca i32
  %l93 = alloca i1
  %l95 = alloca i1
  %l102 = alloca ptr
  %l106 = alloca ptr
  %l109 = alloca i64
  %l114 = alloca i64
  %l123 = alloca i32
  %l125 = alloca i1
  %l128 = alloca i1
  %l129 = alloca i1
  %l131 = alloca i1
  %l132 = alloca i1
  %l136 = alloca i1
  %l141 = alloca i1
  %l146 = alloca i32
  %l147 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l154 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l165 = alloca ptr
  %l172 = alloca ptr
  %l180 = alloca i1
  %l181 = alloca i1
  %l185 = alloca ptr
  %l193 = alloca i64
  %l194 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l201 = alloca %"compiler/source:Span"
  %l202 = alloca i32
  %l204 = alloca ptr
  %l206 = alloca { i64, ptr }
  %l209 = alloca %"compiler/typed:Try"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t388 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 43
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  store i1 %t6, ptr %l5, !tbaa !21
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 43
  store i1 false, ptr %t10, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t11)
  store ptr %t13, ptr %l28
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l28, !tbaa !29
  store ptr %t14, ptr %l6, !tbaa !29
  %t15 = load ptr, ptr %l6, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 28
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l31
  br label %bb2
bb2:
  %t20 = load i64, ptr %l31, !tbaa !24
  store i64 %t20, ptr %l7, !tbaa !24
  %t21 = load ptr, ptr %l6, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 16
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l8, !tbaa !24
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t27 = load ptr, ptr %l34, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb3, label %bb4
bb3:
  %t30 = load ptr, ptr %l34, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 30}
  %t33 = icmp eq i64 %t31, 2
  store i1 %t33, ptr %l35, !tbaa !21
  br label %bb4
bb4:
  %t34 = load i1, ptr %l35, !tbaa !21
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr }, ptr %t37, i32 0, i32 0
  %t39 = load %"compiler/source:Span", ptr %t38
  store %"compiler/source:Span" %t39, ptr %l9
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l40, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t42, ptr %l41
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryParens(ptr %v0)
  store %"compiler/diagmsg:Msg" %t43, ptr %l42
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l40, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l41
  %t46 = load %"compiler/diagmsg:Msg", ptr %l42
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t44, %"compiler/source:Span" %t45, %"compiler/diagmsg:Msg" %t46)
  store i64 %t47, ptr %l43
  br label %bb9
bb9:
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fd60765d84d8653f_8f5cfc6948292c73)
  unreachable
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t52 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i64 %t52, ptr %l46
  br label %bb16
bb16:
  %t53 = load i64, ptr %l46, !tbaa !24
  %t54 = icmp sge i64 %t53, 0
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l48, !tbaa !29
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t57)
  store %"compiler/source:Span" %t59, ptr %l50
  br label %bb19
bb18:
  br label %bb25
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l51, !tbaa !29
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t61)
  store %"compiler/source:Span" %t63, ptr %l53
  br label %bb20
bb20:
  %t64 = load ptr, ptr %l51, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l53
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t64, %"compiler/source:Span" %t65)
  store { i64, ptr } %t66, ptr %l54
  br label %bb21
bb21:
  %t67 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryOnCaught(ptr %v0, ptr %v0, { i64, ptr } %t67)
  store %"compiler/diagmsg:Msg" %t68, ptr %l55
  br label %bb22
bb22:
  %t69 = load ptr, ptr %l48, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l50
  %t71 = load %"compiler/diagmsg:Msg", ptr %l55
  %t72 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t69, %"compiler/source:Span" %t70, %"compiler/diagmsg:Msg" %t71)
  store i64 %t72, ptr %l56
  br label %bb23
bb23:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  %t77 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t73, %"compiler/source:Span" %t74)
  store ptr %t77, ptr %l59
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t78 = load ptr, ptr %l59, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
bb25:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 130
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l62
  br label %bb26
bb26:
  %t84 = load i64, ptr %l62, !tbaa !24
  store i64 %t84, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/load:Loader", ptr %t91, i32 0, i32 4
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l67
  br label %bb27
bb27:
  %t97 = load i64, ptr %l67, !tbaa !24
  store i64 %t97, ptr %l11, !tbaa !24
  %t98 = load ptr, ptr %l6, !tbaa !29
  store ptr %t98, ptr %l68, !tbaa !29
  %t99 = load ptr, ptr %l68, !tbaa !29
  %t100 = getelementptr %"compiler/check:frame", ptr %t99, i32 0, i32 15
  %t101 = load i64, ptr %t100, !tbaa !24
  %t103 = add i64 %t101, 1
  %t105 = load ptr, ptr %l68, !tbaa !29
  %t106 = getelementptr %"compiler/check:frame", ptr %t105, i32 0, i32 15
  store i64 %t103, ptr %t106, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t110 = load i32, ptr %l4, !tbaa !23
  %t114 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %t107, ptr %t108, i32 %t110)
  store ptr %t114, ptr %l75
  br label %bb28
bb28:
  %t115 = load ptr, ptr %l75, !tbaa !29
  store ptr %t115, ptr %l12, !tbaa !29
  %t116 = load ptr, ptr %l6, !tbaa !29
  store ptr %t116, ptr %l76, !tbaa !29
  %t117 = load ptr, ptr %l76, !tbaa !29
  %t118 = getelementptr %"compiler/check:frame", ptr %t117, i32 0, i32 15
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = sub i64 %t119, 1
  %t123 = load ptr, ptr %l76, !tbaa !29
  %t124 = getelementptr %"compiler/check:frame", ptr %t123, i32 0, i32 15
  store i64 %t121, ptr %t124, !tbaa !24
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t127 = getelementptr %"compiler/check:frame", ptr %t125, i32 0, i32 16
  %t128 = load i64, ptr %t127, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = icmp ne i64 %t128, %t129
  %t134 = load ptr, ptr %l6, !tbaa !29
  %t135 = load i64, ptr %l8, !tbaa !24
  %t138 = getelementptr %"compiler/check:frame", ptr %t134, i32 0, i32 16
  store i64 %t135, ptr %t138, !tbaa !24
  %t141 = xor i1 %t132, true
  br i1 %t141, label %bb29, label %bb30
bb29:
  %t143 = load ptr, ptr %l12, !tbaa !29
  %t146 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t143)
  store i32 %t146, ptr %l90
  br label %bb31
bb30:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb32
bb31:
  %t147 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t148 = load i32, ptr %l90, !tbaa !23
  %t150 = icmp ne i32 %t148, %t147
  store i1 %t150, ptr %l87, !tbaa !21
  br label %bb32
bb32:
  %t152 = load i1, ptr %l87, !tbaa !21
  br i1 %t152, label %bb33, label %bb34
bb33:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %t153)
  store i1 %t155, ptr %l95
  br label %bb35
bb34:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb36
bb35:
  %t156 = load i1, ptr %l95, !tbaa !21
  %t157 = xor i1 %t156, true
  store i1 %t157, ptr %l93, !tbaa !21
  br label %bb36
bb36:
  %t159 = load i1, ptr %l93, !tbaa !21
  br i1 %t159, label %bb37, label %bb38
bb37:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enothingFails(ptr %v0, ptr %t160, %"compiler/source:Span" %t161)
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t164 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t168 = icmp eq i64 %t166, 0
  br i1 %t168, label %bb40, label %bb41
bb40:
  %t170 = load ptr, ptr %l12, !tbaa !29
  store ptr %t170, ptr %l102, !tbaa !29
  br label %bb43
bb41:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l1
  %t176 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t172, %"compiler/source:Span" %t173)
  store ptr %t176, ptr %l106
  br label %bb42
bb42:
  %t177 = load ptr, ptr %l106, !tbaa !29
  store ptr %t177, ptr %l102, !tbaa !29
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t178 = load ptr, ptr %l102, !tbaa !29
  store ptr %t178, ptr %rv
  br label %ret
bb44:
  %t179 = load ptr, ptr %l6, !tbaa !29
  %t181 = getelementptr %"compiler/check:frame", ptr %t179, i32 0, i32 28
  %t183 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t181)
  store i64 %t183, ptr %l109
  br label %bb45
bb45:
  %t184 = load i64, ptr %l109, !tbaa !24
  store i64 %t184, ptr %l14, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 0
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/load:Loader", ptr %t191, i32 0, i32 4
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t194)
  store i64 %t196, ptr %l114
  br label %bb46
bb46:
  %t197 = load i64, ptr %l11, !tbaa !24
  %t198 = load i64, ptr %l114, !tbaa !24
  %t200 = icmp eq i64 %t198, %t197
  br i1 %t200, label %bb47, label %bb48
bb47:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t204 = load i64, ptr %l7, !tbaa !24
  %t205 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v2, ptr %t202, { i64, ptr } %t203, i64 %t204, i64 %t205)
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb50
bb50:
  %t210 = load ptr, ptr %l12, !tbaa !29
  %t213 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t210)
  store i32 %t213, ptr %l123
  br label %bb51
bb51:
  %t214 = load i32, ptr %l123, !tbaa !23
  store i32 %t214, ptr %l15, !tbaa !23
  %t215 = load i1, ptr %l5, !tbaa !21
  br i1 %t215, label %bb52, label %bb53
bb52:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l15, !tbaa !23
  %t221 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %t217, i32 %t218)
  store i1 %t221, ptr %l128
  br label %bb54
bb53:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb55
bb54:
  %t222 = load i1, ptr %l128, !tbaa !21
  store i1 %t222, ptr %l125, !tbaa !21
  br label %bb55
bb55:
  %t223 = load i1, ptr %l125, !tbaa !21
  br i1 %t223, label %bb56, label %bb57
bb56:
  %t224 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t226 = call i1 @compiler_2fcheck_2enullDefault(ptr %v2, { i64, ptr } %t224)
  store i1 %t226, ptr %l131
  br label %bb58
bb57:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb59
bb58:
  %t227 = load i1, ptr %l131, !tbaa !21
  store i1 %t227, ptr %l129, !tbaa !21
  br label %bb59
bb59:
  %t228 = load i1, ptr %l129, !tbaa !21
  br i1 %t228, label %bb60, label %bb61
bb60:
  %t229 = load i32, ptr %l4, !tbaa !23
  %t230 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t233 = icmp eq i32 %t229, %t230
  br i1 %t233, label %bb62, label %bb63
bb61:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb66
bb62:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb65
bb63:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/check:Checker", ptr %t235, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t240 = getelementptr %"compiler/generic:Program", ptr %t238, i32 0, i32 2
  %t241 = load i32, ptr %l4, !tbaa !23
  %t244 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t240, i32 %t241)
  store i1 %t244, ptr %l141
  br label %bb64
bb64:
  %t245 = load i1, ptr %l141, !tbaa !21
  store i1 %t245, ptr %l136, !tbaa !21
  br label %bb65
bb65:
  %t246 = load i1, ptr %l136, !tbaa !21
  store i1 %t246, ptr %l132, !tbaa !21
  br label %bb66
bb66:
  %t247 = load i1, ptr %l132, !tbaa !21
  br i1 %t247, label %bb67, label %bb68
bb67:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/check:Checker", ptr %t248, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t253 = getelementptr %"compiler/generic:Program", ptr %t251, i32 0, i32 2
  %t254 = load i32, ptr %l15, !tbaa !23
  %t257 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t253, i32 %t254)
  store i32 %t257, ptr %l146
  br label %bb69
bb68:
  br label %bb70
bb69:
  %t258 = load i32, ptr %l146, !tbaa !23
  store i32 %t258, ptr %l15, !tbaa !23
  br label %bb70
bb70:
  %t259 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t259, ptr %l147
  br label %bb71
bb71:
  %t260 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t260, ptr %lp16
  %t261 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147
  %t262 = load ptr, ptr %lp16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t261, ptr %t262
  %t263 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t267 = icmp sgt i64 %t265, 0
  br i1 %t267, label %bb72, label %bb73
bb72:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i64, ptr %l7, !tbaa !24
  %t271 = load i64, ptr %l14, !tbaa !24
  %t275 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %v3, ptr %t269, i64 %t270, i64 %t271)
  store { i64, ptr } %t275, ptr %l154
  br label %bb74
bb73:
  br label %bb83
bb74:
  %t276 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t276, ptr %l17, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t277, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t279 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t279, 0
  store i64 %t281, ptr %l20, !tbaa !24
  br label %bb75
bb75:
  %t283 = load i64, ptr %l19, !tbaa !24
  %t284 = load i64, ptr %l20, !tbaa !24
  %t287 = icmp slt i64 %t283, %t284
  %t289 = xor i1 %t287, true
  br i1 %t289, label %bb76, label %bb77
bb76:
  br label %bb82
bb77:
  br label %bb78
bb78:
  %t291 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t291, ptr %l162, !tbaa !27
  %t292 = load i64, ptr %l19, !tbaa !24
  %t294 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr ptr, ptr %t295, i64 %t292
  %t297 = load ptr, ptr %t296, !tbaa !39
  %t299 = load ptr, ptr %lp16
  store ptr %t299, ptr %l165, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i32, ptr %l15, !tbaa !23
  %t303 = load i1, ptr %l5, !tbaa !21
  %t304 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t305 = load ptr, ptr %lp16
  %t312 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %v0, ptr %t300, ptr %t297, i32 %t302, i1 %t303, { i64, ptr } %t304, ptr %t305)
  store ptr %t312, ptr %l172
  br label %bb79
bb79:
  %t313 = load ptr, ptr %l165, !tbaa !29
  %t314 = load ptr, ptr %l172, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v3, ptr %v0, ptr %t313, ptr %t314)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t315 = load i64, ptr %l19, !tbaa !24
  %t317 = add i64 %t315, 1
  store i64 %t317, ptr %l19, !tbaa !24
  br label %bb75
bb82:
  br label %bb83
bb83:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t321 = load ptr, ptr %lp16
  %t322 = load i1, ptr %l5, !tbaa !21
  %t323 = load i32, ptr %l15, !tbaa !23
  %t329 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseRules(ptr %v0, ptr %v2, ptr %v3, ptr %t319, { i64, ptr } %t320, ptr %t321, i1 %t322, i32 %t323)
  store i1 %t329, ptr %l180
  br label %bb84
bb84:
  %t330 = load i1, ptr %l180, !tbaa !21
  br i1 %t330, label %bb85, label %bb86
bb85:
  %t331 = load i1, ptr %l5, !tbaa !21
  store i1 %t331, ptr %l181, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb87
bb87:
  %t333 = load i1, ptr %l181, !tbaa !21
  br i1 %t333, label %bb88, label %bb89
bb88:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load %"compiler/source:Span", ptr %l1
  %t338 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t334, %"compiler/source:Span" %t335)
  store ptr %t338, ptr %l185
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_scope_close(ptr %s0)
  %t339 = load ptr, ptr %l185, !tbaa !29
  store ptr %t339, ptr %rv
  br label %ret
bb91:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i64, ptr %l10, !tbaa !24
  %t342 = load ptr, ptr %lp16
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandlesContracts(ptr %v0, ptr %v3, ptr %t340, i64 %t341, ptr %t342)
  br label %bb92
bb92:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load i64, ptr %l7, !tbaa !24
  %t348 = load i64, ptr %l14, !tbaa !24
  %t349 = load ptr, ptr %lp16
  %t354 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v3, ptr %t346, i64 %t347, i64 %t348, ptr %t349)
  store i64 %t354, ptr %l193
  br label %bb93
bb93:
  %t355 = load i64, ptr %l193, !tbaa !24
  store i64 %t355, ptr %l22, !tbaa !24
  %t356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t356, ptr %l194, !tbaa !29
  %t357 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t358 = load i32, ptr %t357, !tbaa !23
  %t359 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t360 = load i32, ptr %t359, !tbaa !23
  %t362 = add i32 %t360, 3
  %t365 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t358, i32 %t362)
  store %"compiler/source:Span" %t365, ptr %l198
  br label %bb94
bb94:
  %t366 = load i64, ptr %l7, !tbaa !24
  %t367 = load i64, ptr %l22, !tbaa !24
  %t368 = load ptr, ptr %l194, !tbaa !29
  %t369 = load %"compiler/source:Span", ptr %l198
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %t368, %"compiler/source:Span" %t369, i64 %t366, i64 %t367)
  br label %bb95
bb95:
  %t372 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t372, ptr %l201
  %t373 = load i32, ptr %l15, !tbaa !23
  store i32 %t373, ptr %l202, !tbaa !23
  %t374 = load ptr, ptr %l12, !tbaa !29
  store ptr %t374, ptr %l204, !tbaa !29
  %t376 = load ptr, ptr %lp16
  %t378 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v3, ptr %v3, ptr %t376)
  store { i64, ptr } %t378, ptr %l206
  br label %bb96
bb96:
  %t379 = load i64, ptr %l22, !tbaa !24
  %t381 = icmp sgt i64 %t379, 0
  %t382 = load ptr, ptr %l204, !tbaa !29
  %t383 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t385 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %t382, { i64, ptr } %t383, i1 false, i1 false, i1 %t381)
  store %"compiler/typed:Try" %t385, ptr %l209
  br label %bb97
bb97:
  %t386 = load %"compiler/typed:Try", ptr %l209
  %t387 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store %"compiler/typed:Try" %t386, ptr %t387
  store { i64, [5 x i64] } zeroinitializer, ptr %t388
  %t389 = getelementptr { i64, [5 x i64] }, ptr %t388, i32 0, i32 0
  store i64 14, ptr %t389
  %t390 = load %"compiler/source:Span", ptr %l201
  %t391 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t390, 0
  %t392 = load i32, ptr %l202, !tbaa !23
  %t393 = insertvalue { %"compiler/source:Span", i32, ptr } %t391, i32 %t392, 1
  %t395 = insertvalue { %"compiler/source:Span", i32, ptr } %t393, ptr %t387, 2
  %t396 = getelementptr { i64, [5 x i64] }, ptr %t388, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t395, ptr %t396
  %t397 = load { i64, [5 x i64] }, ptr %t388
  %t399 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t397, ptr %t399
  call void @__olang_scope_close(ptr %s0)
  store ptr %t399, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeArgMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  store i1 %t13, ptr %l9
  br label %bb5
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %t5, ptr %t6)
  store i1 %t9, ptr %l7
  br label %bb4
bb3:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb5
bb4:
  %t10 = load i1, ptr %l7, !tbaa !21
  store i1 %t10, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %t12, ptr %t13, i1 false)
  store i64 %t16, ptr %l11
  br label %bb8
bb7:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb9
bb8:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = icmp sge i64 %t17, 0
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb9
bb9:
  %t20 = load i1, ptr %l8, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca ptr
  %l40 = alloca ptr
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 28
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
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17, i32 %t19)
  store ptr %t23, ptr %l16
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l16, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 30}
  %t32 = icmp eq i64 %t30, 29
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t36, i32 0, i32 0
  %t38 = load %"compiler/source:Span", ptr %t37
  store %"compiler/source:Span" %t38, ptr %l4
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t42, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43
  store { i64, ptr } %t44, ptr %l5, !tbaa !27
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t47, ptr %l26
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t48, ptr %l27, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l33
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i32, ptr %l33, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t62, ptr %l34
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l25, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l26
  %t65 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t66 = load i32, ptr %l34, !tbaa !23
  %t67 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %t63, %"compiler/source:Span" %t64, { i64, ptr } %t65, i32 %t66)
  store ptr %t67, ptr %l35
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l35, !tbaa !29
  store ptr %t68, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t76 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t69, ptr %t70, i32 %t72)
  store ptr %t76, ptr %l40
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l40, !tbaa !29
  store ptr %t77, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_25d34c17bb450b97_945eabbb6879394b)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i1
  %l25 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %wh1 = alloca ptr
  %wc1 = alloca ptr
  %ws1 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s1, ptr %a0)
  %t8 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t7, 0, 1
  %t9 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t7, 0, 0
  store ptr %t8, ptr %wh1
  store ptr %t9, ptr %wc1
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t7, ptr %l10
  br label %bb2
bb2:
  %t10 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l10
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t10, ptr %l2
  br label %bb3
bb3:
  %t12 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s1, ptr %l2)
  %t13 = extractvalue { i32, ptr } %t12, 1
  %t14 = extractvalue { i32, ptr } %t12, 0
  store i32 %t14, ptr %l14
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store ptr %t13, ptr %l13
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l13, !tbaa !29
  store ptr %t17, ptr %l11, !tbaa !29
  br label %bb7
bb5:
  %t18 = load i32, ptr %l14, !tbaa !23
  %t19 = ashr i32 %t18, 16
  %t21 = icmp eq i32 %t19, 1
  store i1 %t21, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  br label %bb16
bb7:
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t25 = getelementptr %"compiler/ast:VarDecl", ptr %t22, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t40, ptr %l25, !tbaa !27
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr %"compiler/source:Span", ptr %t44, i64 %t41
  %t46 = load %"compiler/source:Span", ptr %t45
  %t48 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v1, ptr %t48, %"compiler/source:Span" %t46)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  br label %bb15
bb15:
  br label %bb3
bb16:
  store i32 0, ptr %ws1
  br label %wend1
wend1.c0:
  call void @__olang_scope_close(ptr %s1)
  %t56 = load ptr, ptr %lp1
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %rv
  br label %ret
wend1:
  %t59 = load ptr, ptr %wh1
  %t60 = load ptr, ptr %wc1
  %t61 = call ptr @llvm.coro.promise(ptr %t59, i32 8, i1 false)
  %t62 = getelementptr { { i32, ptr }, i32 }, ptr %t61, i32 0, i32 1
  store i32 2, ptr %t62
  %t63 = call { i32, ptr } %t60(ptr %t59, ptr null)
  %t64 = load i32, ptr %ws1
  switch i32 %t64, label %wend1.c0 [ ]
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fcheck_2eisArrayMake(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
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
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 2 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_f62b02ebb614301c_75e9b5b90c5bfe48)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2enameIndex(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
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
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i32, ptr %t21, i64 %t18
  %t23 = load i32, ptr %t22, !tbaa !33
  %t29 = icmp eq i32 %t23, %a1
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l5, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb9:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"is null" }>, align 8
@.d1 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"is not null" }>, align 8
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
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
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
@.d3 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"a declared number's constructor of this shape (T29d)" }>, align 8
@.d4 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"a constructor of this kind" }>, align 8
declare i64 @llvm.cttz.i64(i64, i1)
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

@.d5 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"the checker asked for a frame with none open" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler_2fcheck_3aAsk_2e5 = weak hidden constant i1 false
@.d6 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"an if the build decides, still undecided (S8b, B9c)" }>, align 8
@.d7 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an else of this kind" }>, align 8
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

@olang_2esole_2ecompiler_2fcheck_3aChecker_2e116 = weak hidden constant i1 false
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d11 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an operator's method" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Less" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ArgumentError" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
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
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epower(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrCompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare i1 @compiler_2fcheck_2eisNullLit(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNullCompared(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseCompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopnd(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/check:factsMark" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsHeld(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epushFacts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsDrop(ptr %v0, ptr %a0, %"compiler/check:factsMark" %a1)
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDivideByZero(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2enumberLitsOnly(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShiftUnadapted(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLiteralExprNoValue(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoMeet(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitBeside(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, ptr %a3, i32 %a4, %"compiler/source:Span" %a5, i1 %a6)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopParam(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_a245edc164872a99_7db9d56e029b164d = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@olang_loc_2b2e21654e3310f6_a1c2a2453bd05f02 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4, ptr %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstHoldsItself(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstImmutUnique(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeContexts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewBody(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypes(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edtorBody(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePrimCtorParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_1a21871eed64942d_5f8df5778525f19 = external constant [0 x i8]
@olang_loc_c58696bc0c2f7b46_a4aa6b3b7860c7f2 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_dbcdd42e40c3e4ce_a7e80860aca3d0ca = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_e814c7d90a97c3f7_92d0ddc6cf15478b = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatElem(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_fbaa832dc504c3cf_460d6afe77a0b033 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtUsed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eallWords(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadFieldUnnarrowed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c47153cd0729ef18_9d6ac816410ff05c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
@olang_loc_fd7c4531a6f9112_8820f62eca2e3ad6 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_a622476533ee0612_1aeb16e8ac1e1db6 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchBlock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecidedIf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3)
@olang_loc_319f2f7a6670a39_e028e643a90bcd1d = external constant [0 x i8]
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_856dc584101bc984_5c32a185ff63a848 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropElse(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6de95c363ba43753_b985f35754c3cc67 = external constant [0 x i8]
@olang_loc_62c8ad0b34d7b82e_8c827e0bb8ee6f7a = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3219af0a7bb6371b_608971ab22223c2f = external constant [0 x i8]
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@olang_loc_9bced391e891fdc0_daecba1c3e9b04cc = external constant [0 x i8]
@olang_loc_9c1a82cf7a9ef1a6_f90ba82a8be7d062 = external constant [0 x i8]
@olang_loc_58a847b11cbe2c6a_cfe1571b02fdc8be = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c2ac910391966871_92a7715ab8ef6a65 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %a0)
@olang_loc_ccb3ed4617d06259_8e58603f3b63faf5 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_c77fa73b8d335132_2d868ec26eb5ab4e = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/check:Ask" @compiler_2fcheck_3aAsk_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, i32 %a2, ptr %a3, i64 %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2ePush_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:Ask" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b9205633ccf2d073_299d3206908c6fff = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsDropped(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_eff2823a07ce70e4_5c5dc5480f6f06d8 = external constant [0 x i8]
@olang_loc_2925a2ee61841cf5_31e6aa96f1b04059 = external constant [0 x i8]
@olang_loc_c853d17194d5cd4e_2cb2648c67132f32 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseDropped(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c46a74b5b6ac91ff_1e531384a6d2ae73 = external constant [0 x i8]
@olang_loc_25279634f75294e0_6b7144c0722904a4 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelseHolds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_38a4aac7c394d73f_8d843069a2363733 = external constant [0 x i8]
@olang_loc_129174e89ad23b8a_c281ac2402d9bb86 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstCond(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_aaca5398e8f6066a_f405ea46c1055e66 = external constant [0 x i8]
@olang_loc_14ce9ceb5dce4271_aff89a24b099384d = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConditionConstant(ptr %v0)
@olang_loc_6f3b4b685ddeb67c_7b5ce21143ef4c38 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowedBranch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
@olang_loc_e7da762e638de5eb_7df0529e92f5f857 = external constant [0 x i8]
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@olang_loc_8ed32cf5e7258066_ffd10e9c2d5e46a = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
@olang_loc_4ac5dcd3d6b95a4d_7a015a3c37ae2071 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
@olang_loc_21133b69e759422f_5605435c6f182a13 = external constant [0 x i8]
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_b5ab37aa4b0f5a53_2b9c0df8242d94bf = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare %"compiler/check:laneVals" @compiler_2fcheck_3alaneVals_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneHoldLeaves(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLength(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutBefore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMutOnValueParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_929b44a27af4e606_c6f0275d053ca0d2 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsFixed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommutesRule(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyShape(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2fcheck_2eopShapeOf(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2fcheck_2eOpShapes = external constant <{ [8 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [16 x i8] }>
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoreturnHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperatorResult(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSetatResult(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLessNotBool(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLenShape(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEqShape(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrShape(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEqStrWrites(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_37e2897bc2167462_b245f142cb8d96e6 = external constant [0 x i8]
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervInt(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H67a76800a926d51a69ae01614492ac41(ptr %v0, ptr %a0)
declare %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__Hba570a70bf3ed1beae1003f5c2a372b5(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eLen_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %a0)
declare %"compiler/check:roArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroArg_3e_2eAt_3ccompiler_2fcheck_3aroArg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyCopyArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrReceivers(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyRefKept(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eLen_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %a0)
declare %"compiler/check:roFn" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2eAt_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFix(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReadOnlyFuncValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H48754b4fa56ee3a8c3b855086bca91dc(ptr %v0, ptr %a0)
declare %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H015c7298d54f1d140374736283ef15ae(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2eLen__H5c673d8ec2e4412819235760f9452f00(ptr %v0, ptr %a0)
declare %"compiler/check:roDeepArg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroDeepArg_3e_2eAt_3ccompiler_2fcheck_3aroDeepArg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/pair:Pair.b139c4f75a6545712256427180a82a06" @std_2fpair_3aPair_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cstd_2fpair_3aPair__H9be680f663aa81558c844970355ca108(ptr %v0, ptr %a0, %"std/pair:Pair.b139c4f75a6545712256427180a82a06" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetPlace(ptr %v0)
declare i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc2(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTarget(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetHasValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTopSetTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_c6f64016a09fc530_b8b2abed7e41fd2c = external constant [0 x i8]
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4, i1 %a5, i64 %a6, i64 %a7, ptr %a8)
@olang_loc_37fb0db160a44e56_e10956c528b68142 = external constant [0 x i8]
@olang_loc_8ab389c63541d9ff_202a64879438b95b = external constant [0 x i8]
@olang_loc_eb70ab4575e7dce0_566bdfa95b3dee6c = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eContractNeedsArgumentError(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_b6a47344f78098a_9e5fbaf70b0ac586 = external constant [0 x i8]
@olang_loc_763b8bf7b0207b18_a2106654b6caec64 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryParens(ptr %v0)
@olang_loc_fd60765d84d8653f_8f5cfc6948292c73 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTryOnCaught(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aContractAsk_3e_2eLe_H3dc16594b41531049b330439cbeee191(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopiesDiffer(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enothingFails(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2enullDefault(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaksBetween(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclause(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, i1 %a3, { i64, ptr } %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandlesContracts(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaught(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eescapes(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2eToAr_H1af1cf80015c73411d038ac8256aec52(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emutOnValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evariadicArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, i32 %a3)
@olang_loc_25d34c17bb450b97_945eabbb6879394b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_f62b02ebb614301c_75e9b5b90c5bfe48 = external constant [0 x i8]

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
