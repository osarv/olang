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
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/cond:Value" = type { i32, i64, double, i64, i64, i1, i1 }
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
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:EmbedAsk" = type { i64, i64, i32 }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/check:ownerAt" = type { i32, i1 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"std/pair:Pair.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"compiler/check:elemsShape" = type { { i64, ptr }, i64 }
%"compiler/check:typeCase" = type { i1, i1, i32, i64, i64, i1 }
%"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/check:landing" = type { i64, i64, %"compiler/source:Span", i32, i64 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
define dso_local i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  %l15 = alloca i1
  %l21 = alloca i1
  %l28 = alloca i1
  %l34 = alloca i1
  %l43 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_a9a67ea0f55a9fd6_c8a9f61f3588e5fa)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopBranch", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2fcheck_2esetsName(ptr %v0, { i64, ptr } %t24, i32 %t25)
  store i1 %t28, ptr %l15
  br label %bb6
bb6:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %l6, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l6, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TopIf", ptr %t32, i32 0, i32 2
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopIf", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_e1ba8a7d77c00bbd_a1a07f262c2a0481)
  unreachable
bb14:
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l28
  br label %bb16
bb16:
  %t56 = load i1, ptr %l28, !tbaa !21
  store i1 %t56, ptr %l21, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l21, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/ast:TopIf", ptr %t59, i32 0, i32 3
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/ast:TopIf", ptr %t68, i32 0, i32 3
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_ab29c5a5257e6e8_1714322fbb357b4c)
  unreachable
bb24:
  br label %bb25
bb25:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/ast:TopIf", ptr %t75, i32 0, i32 3
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t81 = getelementptr %"compiler/ast:TopBranch", ptr %t78, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call i1 @compiler_2fcheck_2esetsName(ptr %v0, { i64, ptr } %t82, i32 %t83)
  store i1 %t86, ptr %l43
  br label %bb26
bb26:
  %t87 = load i1, ptr %l43, !tbaa !21
  store i1 %t87, ptr %l34, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l34, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l56 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb50
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l18
  br label %bb12
bb12:
  %t28 = load i1, ptr %l18, !tbaa !21
  store i1 %t28, ptr %l6, !tbaa !21
  br label %bb50
bb13:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t33 = load ptr, ptr %l19, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 3
  store i1 %t36, ptr %l20, !tbaa !21
  br label %bb15
bb15:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb16, label %bb17
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l2, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t44)
  store i1 %t46, ptr %l26
  br label %bb19
bb19:
  %t47 = load i1, ptr %l26, !tbaa !21
  store i1 %t47, ptr %l6, !tbaa !21
  br label %bb50
bb20:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb21, label %bb22
bb21:
  %t52 = load ptr, ptr %l27, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 8}
  %t55 = icmp eq i64 %t53, 4
  store i1 %t55, ptr %l28, !tbaa !21
  br label %bb22
bb22:
  %t56 = load i1, ptr %l28, !tbaa !21
  br i1 %t56, label %bb23, label %bb24
bb23:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t59, i32 0, i32 2
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l3, !tbaa !29
  br label %bb25
bb24:
  br label %bb31
bb25:
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Elem", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t66)
  store i1 %t68, ptr %l35
  br label %bb26
bb26:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb27, label %bb28
bb27:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Elem", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t73)
  store i1 %t75, ptr %l39
  br label %bb29
bb28:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb30
bb29:
  %t76 = load i1, ptr %l39, !tbaa !21
  store i1 %t76, ptr %l36, !tbaa !21
  br label %bb30
bb30:
  %t77 = load i1, ptr %l36, !tbaa !21
  store i1 %t77, ptr %l6, !tbaa !21
  br label %bb50
bb31:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t79 = load ptr, ptr %l40, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb32, label %bb33
bb32:
  %t82 = load ptr, ptr %l40, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l41, !tbaa !21
  br label %bb33
bb33:
  %t86 = load i1, ptr %l41, !tbaa !21
  br i1 %t86, label %bb34, label %bb35
bb34:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l4, !tbaa !29
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Payload", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = call i1 @compiler_2fcheck_2eclosedPlace(ptr %v0, ptr %t96)
  store i1 %t98, ptr %l48
  br label %bb37
bb37:
  %t99 = load i1, ptr %l48, !tbaa !21
  store i1 %t99, ptr %l6, !tbaa !21
  br label %bb50
bb38:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t101 = load ptr, ptr %l49, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t104 = load ptr, ptr %l49, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 8}
  %t107 = icmp eq i64 %t105, 6
  store i1 %t107, ptr %l50, !tbaa !21
  br label %bb40
bb40:
  %t108 = load i1, ptr %l50, !tbaa !21
  br i1 %t108, label %bb41, label %bb42
bb41:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t111, i32 0, i32 2
  %t113 = load ptr, ptr %t112
  store ptr %t113, ptr %l5, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = call i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %t115)
  store i1 %t117, ptr %l56
  br label %bb44
bb44:
  %t118 = load i1, ptr %l56, !tbaa !21
  store i1 %t118, ptr %l6, !tbaa !21
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_3ee32a1caa2e355c_4063d0a06727bdc8)
  unreachable
bb50:
  %t119 = load i1, ptr %l6, !tbaa !21
  store i1 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildConst(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/cond:Value"
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca %"compiler/cond:Value"
  %l16 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"compiler/cond:Value"
  %l21 = alloca i32
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca i32
  %l35 = alloca i64
  %l36 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l42 = alloca i32
  %l46 = alloca i32
  %l48 = alloca i32
  %l50 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l58 = alloca i32
  %l62 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l72 = alloca %"compiler/source:Span"
  %l75 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca i32
  %l81 = alloca ptr
  %l94 = alloca ptr
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca ptr
  %t176 = alloca { i64, [2 x i64] }, align 8
  %t184 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 144
  store ptr %t3, ptr %l7, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t4)
  store ptr %t6, ptr %l9
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t9 = getelementptr %"compiler/check:frame", ptr %t7, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t11, i64 %t10, i1 true)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/load:Loader", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t23, i32 %a2)
  store { i64, ptr } %t27, ptr %l19
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t30 = call { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eValueOf(ptr %v0, ptr %v0, ptr %t28, { i64, ptr } %t29)
  %t31 = extractvalue { i32, %"compiler/cond:Value" } %t30, 1
  %t32 = extractvalue { i32, %"compiler/cond:Value" } %t30, 0
  store i32 %t32, ptr %l21
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb5, label %ok.34, !prof !99
ok.34:
  store %"compiler/cond:Value" %t31, ptr %l20
  br label %bb4
bb4:
  %t35 = load %"compiler/cond:Value", ptr %l20
  store %"compiler/cond:Value" %t35, ptr %l12
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t36, %"compiler/source:Span" %t37, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t40, %"compiler/source:Span" %t41)
  store ptr %t44, ptr %l26
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l26, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
bb9:
  %t46 = load %"compiler/cond:Value", ptr %l12
  store %"compiler/cond:Value" %t46, ptr %l3
  %t47 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 6
  %t48 = load i1, ptr %t47, !tbaa !21
  store i1 %t48, ptr %l4, !tbaa !21
  %t50 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t51 = load i32, ptr %t50, !range !{i32 0, i32 5}
  %t53 = trunc i64 1 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb10, label %bb11
bb10:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t57, ptr %l31
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t58, ptr %l32, !tbaa !23
  %t59 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t60 = load i64, ptr %t59, !tbaa !24
  %t62 = icmp ne i64 %t60, 0
  br i1 %t62, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  store i64 1, ptr %l35, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb14
bb14:
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = load %"compiler/source:Span", ptr %l31
  %t66 = load i32, ptr %l32, !tbaa !23
  %t67 = load i64, ptr %l35, !tbaa !24
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t64, %"compiler/source:Span" %t65, i32 %t66, i64 %t67)
  store ptr %t68, ptr %l36
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l36, !tbaa !29
  store ptr %t69, ptr %rv
  br label %ret
bb16:
  %t70 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t71 = load i32, ptr %t70, !range !{i32 0, i32 5}
  %t73 = trunc i64 2 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l39, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t77, ptr %l40
  %t78 = load i1, ptr %l4, !tbaa !21
  br i1 %t78, label %bb19, label %bb20
bb18:
  br label %bb25
bb19:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s3, ptr %t85, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t87, ptr %l46
  br label %bb21
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t88)
  store i32 %t90, ptr %l48
  br label %bb22
bb21:
  %t91 = load i32, ptr %l46, !tbaa !23
  store i32 %t91, ptr %l42, !tbaa !23
  br label %bb23
bb22:
  %t92 = load i32, ptr %l48, !tbaa !23
  store i32 %t92, ptr %l42, !tbaa !23
  br label %bb23
bb23:
  %t93 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 1
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load ptr, ptr %l39, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l40
  %t97 = load i32, ptr %l42, !tbaa !23
  %t99 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t95, %"compiler/source:Span" %t96, i32 %t97, i64 %t94)
  store ptr %t99, ptr %l50
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  %t100 = load ptr, ptr %l50, !tbaa !29
  store ptr %t100, ptr %rv
  br label %ret
bb25:
  %t101 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t102 = load i32, ptr %t101, !range !{i32 0, i32 5}
  %t104 = trunc i64 3 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l53, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t108, ptr %l54
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s4, ptr %t114, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t116, ptr %l58
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t117 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 2
  %t118 = load double, ptr %t117, !tbaa !26
  %t120 = bitcast double %t118 to i64
  %t122 = load ptr, ptr %l53, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l54
  %t124 = load i32, ptr %l58, !tbaa !23
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t122, %"compiler/source:Span" %t123, i32 %t124, i64 %t120)
  store ptr %t126, ptr %l62
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  %t127 = load ptr, ptr %l62, !tbaa !29
  store ptr %t127, ptr %rv
  br label %ret
bb30:
  %t128 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 0
  %t129 = load i32, ptr %t128, !range !{i32 0, i32 5}
  %t131 = trunc i64 4 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb31, label %bb32
bb31:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/load:Loader", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/cond:Consts", ptr %t143, i32 0, i32 6
  %t146 = getelementptr %"compiler/cond:Value", ptr %l3, i32 0, i32 3
  %t147 = load i64, ptr %t146, !tbaa !24
  %t150 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t145, i64 %t147)
  store { i64, ptr } %t150, ptr %l71
  br label %bb33
bb32:
  br label %bb37
bb33:
  %t151 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t151, ptr %l5, !tbaa !27
  %t152 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t152, ptr %l72
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  store ptr %t158, ptr %l75, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t159)
  store i32 %t161, ptr %l77
  br label %bb34
bb34:
  %t162 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t163 = load ptr, ptr %l75, !tbaa !29
  %t164 = load i32, ptr %l77, !tbaa !23
  %t166 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t163, i32 %t164, i64 %t162)
  store i32 %t166, ptr %l79
  br label %bb35
bb35:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t167)
  store ptr %t169, ptr %l81
  br label %bb36
bb36:
  %t170 = load ptr, ptr %l81, !tbaa !29
  %t172 = getelementptr %"compiler/check:frame", ptr %t170, i32 0, i32 2
  %t173 = load i64, ptr %t172, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [2 x i64] }, ptr %t176, i32 0, i32 0
  store i64 1, ptr %t177
  %t179 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t174, 0
  %t180 = getelementptr { i64, [2 x i64] }, ptr %t176, i32 0, i32 1
  store { { i64, ptr } } %t179, ptr %t180
  %t181 = load { i64, [2 x i64] }, ptr %t176
  %t183 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t181, ptr %t183
  store { i64, [5 x i64] } zeroinitializer, ptr %t184
  %t185 = getelementptr { i64, [5 x i64] }, ptr %t184, i32 0, i32 0
  store i64 1, ptr %t185
  %t186 = load %"compiler/source:Span", ptr %l72
  %t187 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t186, 0
  %t188 = load i32, ptr %l79, !tbaa !23
  %t189 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t187, i32 %t188, 1
  %t191 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t189, i64 %t173, 2
  %t193 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t191, ptr %t183, 3
  %t194 = getelementptr { i64, [5 x i64] }, ptr %t184, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t193, ptr %t194
  %t195 = load { i64, [5 x i64] }, ptr %t184
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t195, ptr %t197
  store ptr %t197, ptr %rv
  br label %ret
bb37:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t199, %"compiler/source:Span" %t200, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb38
bb38:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load %"compiler/source:Span", ptr %l1
  %t207 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t203, %"compiler/source:Span" %t204)
  store ptr %t207, ptr %l94
  br label %bb39
bb39:
  %t208 = load ptr, ptr %l94, !tbaa !29
  store ptr %t208, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuildDefaulted(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i1
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %a1)
  store ptr %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l10, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/load:Module", ptr %t15, i32 0, i32 3
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 2
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t23, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t25, ptr %l16
  br label %bb4
bb4:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb9
bb7:
  %t30 = getelementptr %"compiler/ast:VarDecl", ptr %a3, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v1, ptr %t31)
  store i1 %t33, ptr %l20
  br label %bb8
bb8:
  %t34 = load i1, ptr %l20, !tbaa !21
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t35 = load i1, ptr %l17, !tbaa !21
  br i1 %t35, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/load:Loader", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t51 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t47, i32 %a2)
  store { i64, ptr } %t51, ptr %l28
  br label %bb13
bb13:
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t54 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefined(ptr %v0, ptr %v0, ptr %t52, { i64, ptr } %t53)
  store i1 %t54, ptr %l29
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i32
  %l27 = alloca i1
  %l30 = alloca i1
  %l36 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i32
  %l50 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t3 = trunc i64 94 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t8 = trunc i64 95 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l9, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t12, ptr %t13)
  store i32 %t16, ptr %l14
  br label %bb6
bb5:
  br label %bb22
bb6:
  %t17 = load i32, ptr %l14, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t18 = load i32, ptr %l4, !tbaa !23
  %t20 = icmp ne i32 %t18, 0
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v2, ptr %t22, ptr %t23)
  store i1 %t26, ptr %l20
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb9:
  %t27 = load i1, ptr %l20, !tbaa !21
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load i32, ptr %l4, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t35 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v2, ptr %t31, ptr %t32)
  store i32 %t35, ptr %l24
  br label %bb14
bb14:
  %t36 = load i32, ptr %l24, !tbaa !23
  store i32 %t36, ptr %l5, !tbaa !23
  %t37 = load i32, ptr %l5, !tbaa !23
  %t39 = icmp ne i32 %t37, 0
  br i1 %t39, label %bb15, label %bb16
bb15:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t45 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  store i1 %t45, ptr %l30
  br label %bb17
bb16:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb18
bb17:
  %t46 = load i1, ptr %l30, !tbaa !21
  store i1 %t46, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l27, !tbaa !21
  br i1 %t47, label %bb19, label %bb20
bb19:
  %t48 = load i32, ptr %l5, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  store i32 0, ptr %rv
  br label %ret
bb22:
  %t51 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t53 = trunc i64 45 to i32
  %t54 = icmp eq i32 %t51, %t53
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb23, label %bb24
bb23:
  %t58 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t60 = trunc i64 46 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l36, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb25
bb25:
  %t65 = load i1, ptr %l36, !tbaa !21
  br i1 %t65, label %bb26, label %bb27
bb26:
  store i32 0, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t71 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  store i32 %t71, ptr %l43
  br label %bb29
bb29:
  %t72 = load i32, ptr %l43, !tbaa !23
  store i32 %t72, ptr %l6, !tbaa !23
  %t73 = load i32, ptr %l6, !tbaa !23
  %t75 = icmp ne i32 %t73, 0
  br i1 %t75, label %bb30, label %bb31
bb30:
  %t77 = load i32, ptr %l6, !tbaa !23
  store i32 %t77, ptr %l46, !tbaa !23
  br label %bb33
bb31:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t83 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v2, ptr %t79, ptr %t80)
  store i32 %t83, ptr %l50
  br label %bb32
bb32:
  %t84 = load i32, ptr %l50, !tbaa !23
  store i32 %t84, ptr %l46, !tbaa !23
  br label %bb33
bb33:
  %t85 = load i32, ptr %l46, !tbaa !23
  store i32 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  %l32 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t2, ptr %t3, i32 %t5)
  store ptr %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t10)
  store %"compiler/source:Span" %t12, ptr %l11
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l11
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t13, ptr %t14, %"compiler/source:Span" %t15)
  store ptr %t16, ptr %l12
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l12, !tbaa !29
  store ptr %t17, ptr %l2, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t18)
  store i32 %t21, ptr %l15
  br label %bb4
bb4:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %l3, !tbaa !23
  %t23 = load i32, ptr %l3, !tbaa !23
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t27 = icmp ne i32 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i32, ptr %l3, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t33 = icmp ne i32 %t29, %t30
  store i1 %t33, ptr %l19, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t37)
  store %"compiler/source:Span" %t39, ptr %l25
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l28
  br label %bb11
bb11:
  %t45 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %v0, ptr %v0, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t53, ptr %l30
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l25
  %t56 = load %"compiler/diagmsg:Msg", ptr %l30
  %t57 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t54, %"compiler/source:Span" %t55, %"compiler/diagmsg:Msg" %t56)
  store i64 %t57, ptr %l31
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l32, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t59)
  store %"compiler/source:Span" %t61, ptr %l34
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l34
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t62, %"compiler/source:Span" %t63)
  store ptr %t64, ptr %l35
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l35, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
bb16:
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %lp6 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca i32
  %l14 = alloca i32
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i32
  %l31 = alloca { i64, ptr }
  %l36 = alloca i1
  %l41 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i1
  %l52 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l61 = alloca i1
  %l66 = alloca i64
  %l68 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l77 = alloca i32
  %l83 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %a2)
  store i32 %t11, ptr %l12
  br label %bb2
bb2:
  %t12 = load i32, ptr %l12, !tbaa !23
  store i32 %t12, ptr %l4, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t13, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d5, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d6, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t15, ptr %l14
  br label %bb3
bb3:
  %t16 = load i32, ptr %l14, !tbaa !23
  store i32 %t16, ptr %l5, !tbaa !23
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 0, i64 8)
  store ptr %t17, ptr %lp6
  %t19 = load ptr, ptr %lp6
  store [0 x i32] zeroinitializer, ptr %t19
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t29, ptr %l20
  br label %bb4
bb4:
  %t30 = load i1, ptr %l20, !tbaa !21
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l4, !tbaa !23
  %t40 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l26
  br label %bb7
bb6:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  %t41 = load i1, ptr %l26, !tbaa !21
  %t42 = xor i1 %t41, true
  store i1 %t42, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t44 = load i1, ptr %l21, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %t45, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i32 %t47, ptr %l29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t48 = load i32, ptr %l5, !tbaa !23
  %t49 = mul i64 2, 4
  %t50 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t49)
  %t51 = insertvalue { i64, ptr } undef, i64 2, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l31, !tbaa !27
  %t53 = load i32, ptr %l29, !tbaa !23
  %t54 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  store i32 %t53, ptr %t56, !tbaa !33
  %t58 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i32, ptr %t59, i64 1
  store i32 %t48, ptr %t60, !tbaa !33
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t61 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
bb12:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l3, !tbaa !23
  %t71 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t71, ptr %l36
  br label %bb13
bb13:
  %t72 = load i1, ptr %l36, !tbaa !21
  br i1 %t72, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load i32, ptr %l4, !tbaa !23
  %t82 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t78, i32 %t79)
  store i64 %t82, ptr %l41
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l3, !tbaa !23
  %t92 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t88, i32 %t89)
  store i64 %t92, ptr %l46
  br label %bb17
bb17:
  %t93 = load i64, ptr %l41, !tbaa !24
  %t94 = load i64, ptr %l46, !tbaa !24
  %t95 = icmp slt i64 %t93, %t94
  br i1 %t95, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  %t97 = load i32, ptr %l4, !tbaa !23
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = icmp ne i32 %t97, %t98
  store i1 %t101, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t103 = load i1, ptr %l48, !tbaa !21
  br i1 %t103, label %bb21, label %bb22
bb21:
  %t104 = load i32, ptr %l5, !tbaa !23
  %t105 = mul i64 1, 4
  %t106 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 1, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l54, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 0
  store i32 %t104, ptr %t112, !tbaa !33
  %t113 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t113, ptr %l52, !tbaa !27
  br label %bb23
bb22:
  %t114 = load ptr, ptr %lp6
  %t116 = insertvalue { i64, ptr } undef, i64 0, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t114, 1
  store { i64, ptr } %t117, ptr %l52, !tbaa !27
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t119 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
bb24:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  %t126 = load i32, ptr %l4, !tbaa !23
  %t129 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t125, i32 %t126)
  store i1 %t129, ptr %l61
  br label %bb25
bb25:
  %t130 = load i1, ptr %l61, !tbaa !21
  br i1 %t130, label %bb26, label %bb27
bb26:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l4, !tbaa !23
  %t140 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t136, i32 %t137)
  store i64 %t140, ptr %l66
  br label %bb28
bb27:
  br label %bb32
bb28:
  %t141 = load i64, ptr %l66, !tbaa !24
  %t142 = icmp sle i64 %t141, 16
  br i1 %t142, label %bb29, label %bb30
bb29:
  %t144 = load i32, ptr %l5, !tbaa !23
  %t145 = mul i64 1, 4
  %t146 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 1, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l70, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 0
  store i32 %t144, ptr %t152, !tbaa !33
  %t153 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t153, ptr %l68, !tbaa !27
  br label %bb31
bb30:
  %t154 = load ptr, ptr %lp6
  %t156 = insertvalue { i64, ptr } undef, i64 0, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t154, 1
  store { i64, ptr } %t157, ptr %l68, !tbaa !27
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t159 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t159, ptr %rv
  br label %ret
bb32:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/check:Checker", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t164 = load i32, ptr %l3, !tbaa !23
  %t165 = load i32, ptr %l4, !tbaa !23
  %t169 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t163, i32 %t164, i32 %t165)
  store i32 %t169, ptr %l77
  br label %bb33
bb33:
  %t170 = load i32, ptr %l4, !tbaa !23
  %t171 = load i32, ptr %l77, !tbaa !23
  %t173 = icmp eq i32 %t171, %t170
  br i1 %t173, label %bb34, label %bb35
bb34:
  %t175 = load ptr, ptr %lp6
  %t177 = insertvalue { i64, ptr } undef, i64 0, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t178, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t180 = load i32, ptr %l5, !tbaa !23
  %t181 = mul i64 1, 4
  %t182 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t181)
  %t183 = insertvalue { i64, ptr } undef, i64 1, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  store { i64, ptr } %t184, ptr %l83, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr i32, ptr %t187, i64 0
  store i32 %t180, ptr %t188, !tbaa !33
  call void @__olang_scope_close(ptr %s0)
  %t189 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t189, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectCond(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, i64, i64 }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca { i64, i64, i64 }
  %l24 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l44 = alloca ptr
  %l46 = alloca %"compiler/typed:If"
  %t41 = alloca { i64, [3 x i64] }, align 8
  %t80 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v0, ptr %t1, ptr %a2)
  store ptr %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l12, !tbaa !29
  store ptr %t6, ptr %l3, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 37
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  %t18 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t13, i32 1, %"compiler/source:Span" %t14)
  store { i64, i64, i64 } %t18, ptr %l19
  br label %bb3
bb3:
  %t19 = load { i64, i64, i64 }, ptr %l19
  store { i64, i64, i64 } %t19, ptr %l5
  %t20 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l7, !tbaa !24
  %t26 = getelementptr { i64, i64, i64 }, ptr %l5, i32 0, i32 2
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l8, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 37
  store ptr %t31, ptr %l24, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t32, ptr %l25
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i64 0)
  store ptr %t39, ptr %l29
  br label %bb4
bb4:
  %t40 = load ptr, ptr %l29, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 0
  store i64 6, ptr %t42
  %t43 = load %"compiler/source:Span", ptr %l25
  %t44 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t43, 0
  %t46 = insertvalue { %"compiler/source:Span", ptr } %t44, ptr %t40, 1
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t41, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t46, ptr %t47
  %t48 = load { i64, [3 x i64] }, ptr %t41
  %t50 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t48, ptr %t50
  %t51 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t51, ptr %t50)
  br label %bb5
bb5:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t63 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t53, i64 %t54, i64 %t55, i64 %t56, i64 %t57)
  store ptr %t63, ptr %l38
  br label %bb6
bb6:
  %t64 = load ptr, ptr %l38, !tbaa !29
  store ptr %t64, ptr %l9, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l39, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t66, ptr %l40
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l1
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v0, ptr %v0, ptr %t67, %"compiler/source:Span" %t68, ptr %t69)
  store ptr %t73, ptr %l44
  br label %bb7
bb7:
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t75 = load ptr, ptr %l44, !tbaa !29
  %t77 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t75, ptr %t74, ptr null)
  store %"compiler/typed:If" %t77, ptr %l46
  br label %bb8
bb8:
  %t78 = load %"compiler/typed:If", ptr %l46
  %t79 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t78, ptr %t79
  store { i64, [3 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 0
  store i64 3, ptr %t81
  %t82 = load %"compiler/source:Span", ptr %l40
  %t83 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t82, 0
  %t85 = insertvalue { %"compiler/source:Span", ptr } %t83, ptr %t79, 1
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t80, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t85, ptr %t86
  %t87 = load { i64, [3 x i64] }, ptr %t80
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t87, ptr %t89
  %t90 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t90, ptr %t89)
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclsIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca i64
  %l50 = alloca i1
  %l55 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l4, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:TopIf", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb9
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cd06913e2f5eb0d4_3977f9e98d534b08)
  unreachable
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:TopIf", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t30 = getelementptr %"compiler/ast:TopBranch", ptr %t27, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp sgt i64 %t33, 0
  store i1 %t35, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l13, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l23, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  store i64 %t39, ptr %l24, !tbaa !24
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr %"compiler/ast:TopIf", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb12, label %bb13
bb11:
  br label %bb16
bb12:
  call void @__olang_check_failed(ptr @olang_loc_cd06913e2f5eb0d4_3977f9e98d534b08)
  unreachable
bb13:
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/ast:TopIf", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t53 = getelementptr %"compiler/ast:TopBranch", ptr %t50, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t55 = load ptr, ptr %l23, !tbaa !29
  %t56 = load i64, ptr %l24, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %t55, i64 %t56, { i64, ptr } %t54)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t60 = getelementptr %"compiler/ast:TopIf", ptr %t58, i32 0, i32 2
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = icmp eq ptr %t61, null
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb17, label %bb18
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l36, !tbaa !29
  %t68 = load i64, ptr %l1, !tbaa !24
  store i64 %t68, ptr %l37, !tbaa !24
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr %"compiler/ast:TopIf", ptr %t69, i32 0, i32 2
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = icmp eq ptr %t72, null
  br i1 %t74, label %bb19, label %bb20
bb18:
  br label %bb23
bb19:
  call void @__olang_check_failed(ptr @olang_loc_40b85daad0e541e3_3cdd9f152c967927)
  unreachable
bb20:
  br label %bb21
bb21:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/ast:TopIf", ptr %t76, i32 0, i32 2
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i64, ptr %l3, !tbaa !24
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = add i64 %t81, 1
  %t84 = load ptr, ptr %l36, !tbaa !29
  %t85 = load i64, ptr %l37, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclsIf(ptr %v0, ptr %v1, ptr %t84, i64 %t85, ptr %t79, i64 %t80, i64 %t83)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr %"compiler/ast:TopIf", ptr %t89, i32 0, i32 3
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb24, label %bb25
bb24:
  %t98 = load i64, ptr %l3, !tbaa !24
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = add i64 %t99, 1
  %t104 = icmp eq i64 %t98, %t101
  store i1 %t104, ptr %l50, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb26
bb26:
  %t106 = load i1, ptr %l50, !tbaa !21
  br i1 %t106, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t109 = getelementptr %"compiler/ast:TopIf", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb29, label %bb30
bb28:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb32
bb29:
  call void @__olang_check_failed(ptr @olang_loc_17f9884e4c50a862_1761fccd5f6f3c76)
  unreachable
bb30:
  br label %bb31
bb31:
  %t114 = load ptr, ptr %l2, !tbaa !29
  %t116 = getelementptr %"compiler/ast:TopIf", ptr %t114, i32 0, i32 3
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t120 = getelementptr %"compiler/ast:TopBranch", ptr %t117, i32 0, i32 1
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t125 = icmp sgt i64 %t123, 0
  store i1 %t125, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t127 = load i1, ptr %l55, !tbaa !21
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l65, !tbaa !29
  %t129 = load i64, ptr %l1, !tbaa !24
  store i64 %t129, ptr %l66, !tbaa !24
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr %"compiler/ast:TopIf", ptr %t130, i32 0, i32 3
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  br i1 %t135, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  call void @__olang_check_failed(ptr @olang_loc_17f9884e4c50a862_1761fccd5f6f3c76)
  unreachable
bb36:
  br label %bb37
bb37:
  %t137 = load ptr, ptr %l2, !tbaa !29
  %t139 = getelementptr %"compiler/ast:TopIf", ptr %t137, i32 0, i32 3
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t143 = getelementptr %"compiler/ast:TopBranch", ptr %t140, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  %t145 = load ptr, ptr %l65, !tbaa !29
  %t146 = load i64, ptr %l66, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %t145, i64 %t146, { i64, ptr } %t144)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eembed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l15 = alloca i64
  %l16 = alloca { { i64, ptr }, { i64, ptr } }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca i32
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca i32
  %l33 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca i1
  %l55 = alloca { i64, ptr }
  %l56 = alloca %"std/prelude/text:StringBuilder"
  %l64 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l75 = alloca i64
  %l81 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l86 = alloca i1
  %l87 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %l98 = alloca i64
  %l99 = alloca { i64, ptr }
  %l101 = alloca i1
  %l102 = alloca ptr
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l106 = alloca i64
  %l108 = alloca ptr
  %l110 = alloca i64
  %l111 = alloca ptr
  %l113 = alloca i32
  %l114 = alloca i64
  %l117 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca %"compiler/diagmsg:Msg"
  %l121 = alloca i64
  %l124 = alloca ptr
  %l129 = alloca %"compiler/check:EmbedAsk"
  %l137 = alloca { { i64, ptr }, { i64, ptr } }
  %l139 = alloca { i64, ptr }
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l143 = alloca i1
  %l145 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l149 = alloca { i64, ptr }
  %l152 = alloca %"compiler/diagmsg:Msg"
  %l153 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  %t36 = alloca { i64, [2 x i64] }, align 8
  %t44 = alloca { i64, [5 x i64] }, align 8
  %t357 = alloca { i64, [2 x i64] }, align 8
  %t365 = alloca { i64, [5 x i64] }, align 8
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
  store ptr %t3, ptr %l20
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l20, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  store ptr %t10, ptr %l23, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t16, i32 7, i32 0)
  store i32 %t18, ptr %l27
  br label %bb2
bb2:
  %t19 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t20 = load ptr, ptr %l23, !tbaa !29
  %t21 = load i32, ptr %l27, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t20, i32 %t21, i64 %t19)
  store i32 %t23, ptr %l29
  br label %bb3
bb3:
  %t24 = load i32, ptr %l29, !tbaa !23
  store i32 %t24, ptr %l4, !tbaa !23
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l30
  %t26 = load i32, ptr %l4, !tbaa !23
  store i32 %t26, ptr %l31, !tbaa !23
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr %"compiler/check:frame", ptr %t27, i32 0, i32 2
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l33, !tbaa !24
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb4, label %bb5
bb4:
  %t33 = mul i64 0, 1
  %t34 = insertvalue { i64, ptr } undef, i64 0, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 0
  store i64 1, ptr %t37
  %t39 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t35, 0
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 1
  store { { i64, ptr } } %t39, ptr %t40
  %t41 = load { i64, [2 x i64] }, ptr %t36
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t41, ptr %t43
  store { i64, [5 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 0
  store i64 1, ptr %t45
  %t46 = load %"compiler/source:Span", ptr %l30
  %t47 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t46, 0
  %t48 = load i32, ptr %l31, !tbaa !23
  %t49 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t47, i32 %t48, 1
  %t50 = load i64, ptr %l33, !tbaa !24
  %t51 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t49, i64 %t50, 2
  %t53 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t51, ptr %t43, 3
  %t54 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t53, ptr %t54
  %t55 = load { i64, [5 x i64] }, ptr %t44
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t56, ptr %lp5
  %t58 = load ptr, ptr %lp5
  store { i64, [5 x i64] } %t55, ptr %t58
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t59, ptr %l40, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l41, !tbaa !24
  %t62 = load i64, ptr %l41, !tbaa !24
  %t63 = mul i64 %t62, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t63)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l42, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = load i64, ptr %l41, !tbaa !24
  %t72 = mul i64 %t71, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t68, ptr %t70, i64 %t72, i1 false)
  %t73 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t73, ptr %l6, !tbaa !27
  %t74 = load ptr, ptr %l2, !tbaa !29
  store ptr %t74, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t75 = load ptr, ptr %l43, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_2d16f3aa36d067c5_95008946090581a1)
  unreachable
bb6:
  %t78 = load ptr, ptr %l43, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 30}
  %t81 = icmp eq i64 %t79, 1
  store i1 %t81, ptr %l44, !tbaa !21
  br label %bb7
bb7:
  %t82 = load i1, ptr %l44, !tbaa !21
  br i1 %t82, label %bb8, label %bb9
bb8:
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32 }, ptr %t85, i32 0, i32 1
  %t87 = load i32, ptr %t86, !range !{i32 0, i32 114}
  %t89 = trunc i64 5 to i32
  %t90 = icmp eq i32 %t87, %t89
  store i1 %t90, ptr %l47, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb10
bb10:
  %t92 = load i1, ptr %l47, !tbaa !21
  br i1 %t92, label %bb11, label %bb12
bb11:
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32 }, ptr %t95, i32 0, i32 0
  %t97 = load %"compiler/source:Span", ptr %t96
  store %"compiler/source:Span" %t97, ptr %l7
  br label %bb13
bb12:
  br label %bb27
bb13:
  store %olang.scope zeroinitializer, ptr %s1
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l7
  %t103 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %s1, ptr %t99, %"compiler/source:Span" %t100)
  store { i64, ptr } %t103, ptr %l55
  br label %bb14
bb14:
  %t104 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t104, ptr %l8, !tbaa !27
  %t105 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s1)
  store %"std/prelude/text:StringBuilder" %t105, ptr %l56
  br label %bb15
bb15:
  %t106 = load %"std/prelude/text:StringBuilder", ptr %l56
  store %"std/prelude/text:StringBuilder" %t106, ptr %l9
  %t107 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t107, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t113 = load i64, ptr %l11, !tbaa !24
  %t114 = load i64, ptr %l12, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t121 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t121, ptr %l64, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i8, ptr %t125, i64 %t122
  %t127 = load i8, ptr %t126, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s1, ptr %l9, i8 %t127)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t133 = load i64, ptr %l11, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l11, !tbaa !24
  br label %bb16
bb22:
  %t138 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s1, ptr %s0, ptr %l9)
  store { i64, ptr } %t138, ptr %l73
  br label %bb23
bb23:
  %t139 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  %t141 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l75, !tbaa !24
  %t144 = load i64, ptr %l75, !tbaa !24
  %t145 = icmp eq i64 %t140, %t144
  br i1 %t145, label %bb24, label %bb25
bb24:
  %t147 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = load i64, ptr %l75, !tbaa !24
  %t152 = mul i64 %t151, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t148, ptr %t150, i64 %t152, i1 false)
  br label %bb26
bb25:
  %t153 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t153, ptr %l6, !tbaa !27
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s1)
  br label %bb61
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb60
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t154 = load ptr, ptr %l3, !tbaa !29
  %t156 = getelementptr %"compiler/check:frame", ptr %t154, i32 0, i32 2
  %t157 = load i64, ptr %t156, !tbaa !24
  %t158 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t159 = load i32, ptr %t158, !tbaa !23
  %t161 = sext i32 %t159 to i64
  %t164 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s5, i64 %t157, i64 %t161)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t164, ptr %l81
  br label %bb31
bb31:
  %t165 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l81
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t165, ptr %l14
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 56
  %t172 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  %t175 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4b90e82c7a9c5937397e46eef988cfe3(ptr %v0, ptr %t171, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t172)
  store i1 %t175, ptr %l86
  br label %bb32
bb32:
  %t176 = load i1, ptr %l86, !tbaa !21
  br i1 %t176, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/check:Checker", ptr %t177, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 56
  %t183 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  %t186 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H031c7c147cc8ce0b988dd3fed8d142ad(ptr %v0, ptr %s6, ptr %t182, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t183)
  %t187 = extractvalue { i32, { i64, ptr } } %t186, 1
  %t188 = extractvalue { i32, { i64, ptr } } %t186, 0
  store i32 %t188, ptr %l93
  %t189 = icmp ne i32 %t188, 0
  br i1 %t189, label %bb36, label %ok.190, !prof !99
ok.190:
  store { i64, ptr } %t187, ptr %l92
  br label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t191, ptr %l108, !tbaa !29
  %t192 = load ptr, ptr %l3, !tbaa !29
  %t194 = getelementptr %"compiler/check:frame", ptr %t192, i32 0, i32 1
  %t195 = load i64, ptr %t194, !tbaa !24
  store i64 %t195, ptr %l110, !tbaa !24
  %t196 = load ptr, ptr %l2, !tbaa !29
  store ptr %t196, ptr %l111, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t197)
  store i32 %t199, ptr %l113
  br label %bb49
bb35:
  %t200 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t200, ptr %l87, !tbaa !27
  br label %bb38
bb36:
  br label %bb37
bb37:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l87, !tbaa !27
  br label %bb38
bb38:
  %t201 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t201, ptr %l94, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  %t204 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 0
  store i64 %t205, ptr %l96, !tbaa !24
  %t207 = load i64, ptr %l96, !tbaa !24
  %t208 = icmp eq i64 %t203, %t207
  br i1 %t208, label %bb39, label %bb40
bb39:
  %t210 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = load i64, ptr %l96, !tbaa !24
  %t215 = mul i64 %t214, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t211, ptr %t213, i64 %t215, i1 false)
  br label %bb41
bb40:
  %t216 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 0
  store i64 %t217, ptr %l98, !tbaa !24
  %t218 = load i64, ptr %l98, !tbaa !24
  %t219 = mul i64 %t218, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t219)
  %t221 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  store { i64, ptr } %t222, ptr %l99, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = load i64, ptr %l98, !tbaa !24
  %t228 = mul i64 %t227, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t224, ptr %t226, i64 %t228, i1 false)
  %t229 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t229, ptr %l6, !tbaa !27
  br label %bb41
bb41:
  %t230 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t232 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s6, { i64, ptr } %t230, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t232, ptr %l101
  br label %bb42
bb42:
  %t233 = load i1, ptr %l101, !tbaa !21
  br i1 %t233, label %bb43, label %bb44
bb43:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l102, !tbaa !29
  %t235 = load ptr, ptr %l2, !tbaa !29
  %t237 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t235)
  store %"compiler/source:Span" %t237, ptr %l104
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t238 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUndecided(ptr %v0)
  store %"compiler/diagmsg:Msg" %t238, ptr %l105
  br label %bb46
bb46:
  %t239 = load ptr, ptr %l102, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l104
  %t241 = load %"compiler/diagmsg:Msg", ptr %l105
  %t242 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t239, %"compiler/source:Span" %t240, %"compiler/diagmsg:Msg" %t241)
  store i64 %t242, ptr %l106
  br label %bb47
bb47:
  %t243 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t243, ptr %rv
  br label %ret
bb48:
  call void @__olang_scope_close(ptr %s6)
  br label %bb59
bb49:
  %t245 = load ptr, ptr %l108, !tbaa !29
  %t246 = load i64, ptr %l110, !tbaa !24
  %t247 = load ptr, ptr %l111, !tbaa !29
  %t248 = load i32, ptr %l113, !tbaa !23
  %t249 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v1, ptr %t245, i64 %t246, ptr %t247, i32 %t248)
  store i64 %t249, ptr %l114
  br label %bb50
bb50:
  %t250 = load i64, ptr %l114, !tbaa !24
  store i64 %t250, ptr %l15, !tbaa !24
  %t251 = load i64, ptr %l15, !tbaa !24
  %t253 = icmp slt i64 %t251, 0
  br i1 %t253, label %bb51, label %bb52
bb51:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l117, !tbaa !29
  %t256 = load ptr, ptr %l2, !tbaa !29
  %t258 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t256)
  store %"compiler/source:Span" %t258, ptr %l119
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t259 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUnknown(ptr %v0)
  store %"compiler/diagmsg:Msg" %t259, ptr %l120
  br label %bb54
bb54:
  %t260 = load ptr, ptr %l117, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l119
  %t262 = load %"compiler/diagmsg:Msg", ptr %l120
  %t263 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t260, %"compiler/source:Span" %t261, %"compiler/diagmsg:Msg" %t262)
  store i64 %t263, ptr %l121
  br label %bb55
bb55:
  %t264 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t264, ptr %rv
  br label %ret
bb56:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/check:Checker", ptr %t266, i32 0, i32 107
  store ptr %t268, ptr %l124, !tbaa !29
  %t269 = load i64, ptr %l15, !tbaa !24
  %t270 = load ptr, ptr %l3, !tbaa !29
  %t272 = getelementptr %"compiler/check:frame", ptr %t270, i32 0, i32 2
  %t273 = load i64, ptr %t272, !tbaa !24
  %t274 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t275 = load i32, ptr %t274, !tbaa !23
  %t279 = call %"compiler/check:EmbedAsk" @compiler_2fcheck_3aEmbedAsk_2ector(ptr %s8, i64 %t269, i64 %t273, i32 %t275)
  store %"compiler/check:EmbedAsk" %t279, ptr %l129
  br label %bb57
bb57:
  %t280 = load ptr, ptr %l124, !tbaa !29
  %t281 = load %"compiler/check:EmbedAsk", ptr %l129
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2ePush_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v0, ptr %t280, %"compiler/check:EmbedAsk" %t281)
  br label %bb58
bb58:
  %t282 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t282, ptr %rv
  br label %ret
bb59:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_1d0e70c978300aa7_2a4aae738133c57b)
  unreachable
bb61:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 0
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t291 = load ptr, ptr %l3, !tbaa !29
  %t293 = getelementptr %"compiler/check:frame", ptr %t291, i32 0, i32 1
  %t294 = load i64, ptr %t293, !tbaa !24
  %t295 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t299 = call { { i64, ptr }, { i64, ptr } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbed(ptr %v0, ptr %s0, ptr %v0, ptr %t290, i64 %t294, { i64, ptr } %t295)
  store { { i64, ptr }, { i64, ptr } } %t299, ptr %l137
  br label %bb62
bb62:
  %t300 = load { { i64, ptr }, { i64, ptr } }, ptr %l137
  store { { i64, ptr }, { i64, ptr } } %t300, ptr %l16
  %t301 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l16, i32 0, i32 0
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l17, !tbaa !27
  %t304 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l16, i32 0, i32 1
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  store { i64, ptr } %t305, ptr %l139, !tbaa !27
  %t306 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t306, 0
  store i64 %t307, ptr %l140, !tbaa !24
  %t308 = load i64, ptr %l140, !tbaa !24
  %t309 = mul i64 %t308, 1
  %t310 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t309)
  %t311 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t310, 1
  store { i64, ptr } %t312, ptr %l141, !tbaa !27
  %t313 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = load i64, ptr %l140, !tbaa !24
  %t318 = mul i64 %t317, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t314, ptr %t316, i64 %t318, i1 false)
  %t319 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t319, ptr %l18, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t322 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t320, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t322, ptr %l143
  br label %bb63
bb63:
  %t323 = load i1, ptr %l143, !tbaa !21
  %t324 = xor i1 %t323, true
  br i1 %t324, label %bb64, label %bb65
bb64:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l145, !tbaa !29
  %t327 = load ptr, ptr %l2, !tbaa !29
  %t329 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t327)
  store %"compiler/source:Span" %t329, ptr %l147
  br label %bb66
bb65:
  br label %bb70
bb66:
  %t330 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t332 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %v0, { i64, ptr } %t330)
  store { i64, ptr } %t332, ptr %l149
  br label %bb67
bb67:
  %t333 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t334 = extractvalue { i64, ptr } %t333, 0
  %t335 = extractvalue { i64, ptr } %t333, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t340 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t343 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedNotRead(ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t339, { i64, ptr } %t340)
  store %"compiler/diagmsg:Msg" %t343, ptr %l152
  br label %bb68
bb68:
  %t344 = load ptr, ptr %l145, !tbaa !29
  %t345 = load %"compiler/source:Span", ptr %l147
  %t346 = load %"compiler/diagmsg:Msg", ptr %l152
  %t347 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t344, %"compiler/source:Span" %t345, %"compiler/diagmsg:Msg" %t346)
  store i64 %t347, ptr %l153
  br label %bb69
bb69:
  %t348 = load ptr, ptr %lp5
  call void @__olang_scope_close(ptr %s0)
  store ptr %t348, ptr %rv
  br label %ret
bb70:
  %t350 = load %"compiler/source:Span", ptr %l1
  %t351 = load i32, ptr %l4, !tbaa !23
  %t352 = load ptr, ptr %l3, !tbaa !29
  %t354 = getelementptr %"compiler/check:frame", ptr %t352, i32 0, i32 2
  %t355 = load i64, ptr %t354, !tbaa !24
  %t356 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [2 x i64] }, ptr %t357, i32 0, i32 0
  store i64 1, ptr %t358
  %t360 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t356, 0
  %t361 = getelementptr { i64, [2 x i64] }, ptr %t357, i32 0, i32 1
  store { { i64, ptr } } %t360, ptr %t361
  %t362 = load { i64, [2 x i64] }, ptr %t357
  %t364 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t362, ptr %t364
  store { i64, [5 x i64] } zeroinitializer, ptr %t365
  %t366 = getelementptr { i64, [5 x i64] }, ptr %t365, i32 0, i32 0
  store i64 1, ptr %t366
  %t368 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t350, 0
  %t370 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t368, i32 %t351, 1
  %t372 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t370, i64 %t355, 2
  %t374 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t372, ptr %t364, 3
  %t375 = getelementptr { i64, [5 x i64] }, ptr %t365, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t374, ptr %t375
  %t376 = load { i64, [5 x i64] }, ptr %t365
  %t378 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t376, ptr %t378
  call void @__olang_scope_close(ptr %s0)
  store ptr %t378, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i32
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l23 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca i1
  %l39 = alloca ptr
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca i1
  %l57 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca i1
  %l76 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca ptr
  %l82 = alloca i64
  %l85 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l93 = alloca i32
  %l96 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l98 = alloca ptr
  %l99 = alloca i32
  %l102 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l110 = alloca i1
  %l113 = alloca i32
  %l116 = alloca ptr
  %l118 = alloca %"compiler/source:Span"
  %l119 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca %"compiler/diagmsg:Msg"
  %l130 = alloca i64
  %l134 = alloca ptr
  %l140 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  %t55 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i32, ptr %l19, !tbaa !23
  store i32 %t6, ptr %l7, !tbaa !23
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t7)
  store %"compiler/source:Span" %t9, ptr %l21
  br label %bb2
bb2:
  %t10 = load %"compiler/source:Span", ptr %l21
  store %"compiler/source:Span" %t10, ptr %l8
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t12 = load ptr, ptr %l22, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l22, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 30}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l23, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32 }, ptr %t22, i32 0, i32 0
  %t24 = load %"compiler/source:Span", ptr %t23
  store %"compiler/source:Span" %t24, ptr %l9
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32 }, ptr %t28, i32 0, i32 1
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l10, !tbaa !23
  br label %bb7
bb6:
  br label %bb18
bb7:
  %t34 = xor i1 %a6, true
  br i1 %t34, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l10, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t36, i32 %t37)
  store { i64, ptr } %t40, ptr %l34
  br label %bb10
bb9:
  br label %bb17
bb10:
  %t41 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t41, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t42, ptr %l35
  br label %bb11
bb11:
  %t43 = load i1, ptr %l35, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l9
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t44, %"compiler/source:Span" %t45, i32 %t46, i64 1)
  store ptr %t50, ptr %l39
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  %t51 = load ptr, ptr %l39, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load %"compiler/source:Span", ptr %l9
  %t54 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 0
  store i64 3, ptr %t56
  %t58 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t53, 0
  %t60 = insertvalue { %"compiler/source:Span", i32 } %t58, i32 %t54, 1
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t60, ptr %t61
  %t62 = load { i64, [4 x i64] }, ptr %t55
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t62, ptr %t64
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t66 = load i32, ptr %l3, !tbaa !23
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t68 = load i64, ptr %l5, !tbaa !24
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v4, ptr %v2, ptr %v3, ptr %v4, ptr %t52, ptr %t64, ptr %t65, i32 %t66, ptr %t67, i64 %t68)
  store ptr %t75, ptr %l49
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t76 = load ptr, ptr %l49, !tbaa !29
  store ptr %t76, ptr %rv
  br label %ret
bb17:
  br label %bb67
bb18:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t78 = load ptr, ptr %l50, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l50, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 30}
  %t84 = icmp eq i64 %t82, 14
  store i1 %t84, ptr %l51, !tbaa !21
  br label %bb20
bb20:
  %t85 = load i1, ptr %l51, !tbaa !21
  br i1 %t85, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb29
bb23:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t88 = load i32, ptr %l7, !tbaa !23
  %t92 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t86, ptr %t87, i32 %t88)
  store i64 %t92, ptr %l57
  br label %bb24
bb24:
  %t93 = load i64, ptr %l57, !tbaa !24
  store i64 %t93, ptr %l11, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t96 = icmp sge i64 %t94, 0
  br i1 %t96, label %bb25, label %bb26
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l8
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t101 = load i64, ptr %l11, !tbaa !24
  %t106 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v2, ptr %v4, ptr %t98, %"compiler/source:Span" %t99, ptr %t100, i64 %t101)
  store ptr %t106, ptr %l64
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t107 = load ptr, ptr %l64, !tbaa !29
  store ptr %t107, ptr %rv
  br label %ret
bb28:
  br label %bb67
bb29:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t109 = load ptr, ptr %l65, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb30, label %bb31
bb30:
  %t112 = load ptr, ptr %l65, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 30}
  %t115 = icmp eq i64 %t113, 12
  store i1 %t115, ptr %l66, !tbaa !21
  br label %bb31
bb31:
  %t116 = load i1, ptr %l66, !tbaa !21
  br i1 %t116, label %bb32, label %bb33
bb32:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l12, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t125, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126
  store { i64, ptr } %t127, ptr %l13, !tbaa !27
  br label %bb34
bb33:
  br label %bb62
bb34:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l12, !tbaa !29
  %t131 = load i32, ptr %l7, !tbaa !23
  %t135 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t129, ptr %t130, i32 %t131)
  store i64 %t135, ptr %l76
  br label %bb35
bb35:
  %t136 = load i64, ptr %l76, !tbaa !24
  store i64 %t136, ptr %l14, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = icmp sge i64 %t137, 0
  br i1 %t139, label %bb36, label %bb37
bb36:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l79, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t142, ptr %l80
  %t143 = load ptr, ptr %l12, !tbaa !29
  store ptr %t143, ptr %l81, !tbaa !29
  %t144 = load i64, ptr %l14, !tbaa !24
  store i64 %t144, ptr %l82, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t149 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPatterns(ptr %v0, ptr %v1, ptr %v1, ptr %t145, { i64, ptr } %t146)
  store { i64, ptr } %t149, ptr %l85
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t151 = load i32, ptr %l3, !tbaa !23
  %t152 = load ptr, ptr %l4, !tbaa !29
  %t153 = load i64, ptr %l5, !tbaa !24
  %t154 = load ptr, ptr %l79, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l80
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load i64, ptr %l82, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t163 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t154, %"compiler/source:Span" %t155, ptr %t156, i64 %t157, { i64, ptr } %t158, ptr %t150, i32 %t151, ptr %t152, i64 %t153)
  store ptr %t163, ptr %l90
  br label %bb39
bb39:
  %t164 = load ptr, ptr %l90, !tbaa !29
  store ptr %t164, ptr %rv
  br label %ret
bb40:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l12, !tbaa !29
  %t169 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %t165, ptr %t166)
  store i32 %t169, ptr %l93
  br label %bb41
bb41:
  %t170 = load i32, ptr %l93, !tbaa !23
  store i32 %t170, ptr %l15, !tbaa !23
  %t171 = load i32, ptr %l15, !tbaa !23
  %t173 = icmp sge i32 %t171, 0
  br i1 %t173, label %bb42, label %bb43
bb42:
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l96, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t176, ptr %l97
  %t177 = load ptr, ptr %l12, !tbaa !29
  store ptr %t177, ptr %l98, !tbaa !29
  %t178 = load i32, ptr %l15, !tbaa !23
  store i32 %t178, ptr %l99, !tbaa !23
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t183 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPatterns(ptr %v0, ptr %v1, ptr %v1, ptr %t179, { i64, ptr } %t180)
  store { i64, ptr } %t183, ptr %l102
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t184 = load ptr, ptr %l2, !tbaa !29
  %t185 = load i32, ptr %l3, !tbaa !23
  %t186 = load ptr, ptr %l4, !tbaa !29
  %t187 = load i64, ptr %l5, !tbaa !24
  %t188 = load ptr, ptr %l96, !tbaa !29
  %t189 = load %"compiler/source:Span", ptr %l97
  %t190 = load ptr, ptr %l98, !tbaa !29
  %t191 = load i32, ptr %l99, !tbaa !23
  %t192 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t197 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t188, %"compiler/source:Span" %t189, ptr %t190, i32 %t191, { i64, ptr } %t192, ptr %t184, i32 %t185, ptr %t186, i64 %t187)
  store ptr %t197, ptr %l107
  br label %bb45
bb45:
  %t198 = load ptr, ptr %l107, !tbaa !29
  store ptr %t198, ptr %rv
  br label %ret
bb46:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l12, !tbaa !29
  %t203 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %t199, ptr %t200)
  store i1 %t203, ptr %l110
  br label %bb47
bb47:
  %t204 = load i1, ptr %l110, !tbaa !21
  br i1 %t204, label %bb48, label %bb49
bb48:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load ptr, ptr %l12, !tbaa !29
  %t209 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenEnum(ptr %v0, ptr %v1, ptr %t205, ptr %t206)
  store i32 %t209, ptr %l113
  br label %bb50
bb49:
  br label %bb61
bb50:
  %t210 = load i32, ptr %l113, !tbaa !23
  store i32 %t210, ptr %l16, !tbaa !23
  %t211 = load i32, ptr %l16, !tbaa !23
  %t213 = icmp sge i32 %t211, 0
  br i1 %t213, label %bb51, label %bb52
bb51:
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l116, !tbaa !29
  %t216 = load ptr, ptr %l1, !tbaa !29
  %t218 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t216)
  store %"compiler/source:Span" %t218, ptr %l118
  br label %bb53
bb52:
  br label %bb60
bb53:
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l119, !tbaa !29
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l3, !tbaa !23
  %t224 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t220, i32 %t221)
  store i32 %t224, ptr %l122
  br label %bb54
bb54:
  %t225 = load ptr, ptr %l119, !tbaa !29
  %t226 = load i32, ptr %l122, !tbaa !23
  %t227 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t225, i32 %t226)
  store { i64, ptr } %t227, ptr %l123
  br label %bb55
bb55:
  %t228 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 0
  %t230 = extractvalue { i64, ptr } %t228, 1
  %t231 = mul i64 %t229, 1
  %t232 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t231)
  call void @llvm.memcpy.p0.p0.i64(ptr %t232, ptr %t230, i64 %t231, i1 false)
  %t233 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t234 = insertvalue { i64, ptr } %t233, ptr %t232, 1
  store { i64, ptr } %t234, ptr %l124, !tbaa !27
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i32, ptr %l16, !tbaa !23
  %t239 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t235, i32 %t236)
  store { i64, ptr } %t239, ptr %l127
  br label %bb56
bb56:
  %t240 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t240, 0
  %t242 = extractvalue { i64, ptr } %t240, 1
  %t243 = mul i64 %t241, 1
  %t244 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t244, ptr %t242, i64 %t243, i1 false)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  %t247 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t249 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t247, { i64, ptr } %t246)
  store %"compiler/diagmsg:Msg" %t249, ptr %l129
  br label %bb57
bb57:
  %t250 = load ptr, ptr %l116, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l118
  %t252 = load %"compiler/diagmsg:Msg", ptr %l129
  %t253 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t250, %"compiler/source:Span" %t251, %"compiler/diagmsg:Msg" %t252)
  store i64 %t253, ptr %l130
  br label %bb58
bb58:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l8
  %t256 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t254, %"compiler/source:Span" %t255, i32 %t256, i64 0)
  store ptr %t260, ptr %l134
  br label %bb59
bb59:
  %t261 = load ptr, ptr %l134, !tbaa !29
  store ptr %t261, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_d21fae414ff68ab0_be44aac3c4a6c53c)
  unreachable
bb67:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load %"compiler/source:Span", ptr %l8
  %t264 = load ptr, ptr %l2, !tbaa !29
  %t265 = load ptr, ptr %l1, !tbaa !29
  %t266 = load i32, ptr %l3, !tbaa !23
  %t272 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v2, ptr %v1, ptr %v4, ptr %t262, %"compiler/source:Span" %t263, ptr %t264, ptr %t265, i32 %t266)
  store ptr %t272, ptr %l140
  br label %bb68
bb68:
  %t273 = load ptr, ptr %l140, !tbaa !29
  store ptr %t273, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldReadable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i64
  %l26 = alloca i32
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca i1
  %l39 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca i1
  %l50 = alloca i1
  %l56 = alloca ptr
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
  %t3 = getelementptr %"compiler/check:fieldSet", ptr %t1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp slt i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t8, i32 %a2)
  store { i64, ptr } %t12, ptr %l11
  br label %bb3
bb3:
  %t13 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t13, ptr %l12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 0
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t17)
  store i1 %t19, ptr %l14
  br label %bb4
bb4:
  %t20 = load i1, ptr %l14, !tbaa !21
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb9
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 16
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l18
  br label %bb8
bb8:
  %t27 = load i64, ptr %l18, !tbaa !24
  %t28 = icmp eq i64 %t27, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/check:fieldSet", ptr %t38, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t37, i32 %t41)
  store i32 %t44, ptr %l26
  br label %bb13
bb13:
  %t45 = load i32, ptr %l26, !tbaa !23
  store i32 %t45, ptr %l3, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t51, i32 %t52)
  store i64 %t55, ptr %l31
  br label %bb14
bb14:
  %t56 = load i64, ptr %l31, !tbaa !24
  store i64 %t56, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  store i64 %t57, ptr %l32, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t58)
  store ptr %t60, ptr %l34
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l34, !tbaa !29
  %t63 = getelementptr %"compiler/check:frame", ptr %t61, i32 0, i32 1
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = load i64, ptr %l32, !tbaa !24
  %t67 = icmp eq i64 %t65, %t64
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb21
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l3, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l44
  br label %bb18
bb18:
  %t80 = load ptr, ptr %l39, !tbaa !29
  %t81 = load i32, ptr %l44, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t80, i32 %t81)
  store { i64, ptr } %t82, ptr %l45
  br label %bb19
bb19:
  %t83 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t83, ptr %l46, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i8, ptr %t85, i64 0
  %t87 = load i8, ptr %t86, !tbaa !32
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t87)
  store i1 %t89, ptr %l48
  br label %bb20
bb20:
  %t90 = load i1, ptr %l48, !tbaa !21
  %t91 = xor i1 %t90, true
  store i1 %t91, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t93 = load i1, ptr %l38, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb25
bb23:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/load:Loader", ptr %t100, i32 0, i32 10
  %t103 = load i64, ptr %l4, !tbaa !24
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t102, i64 %t103)
  store ptr %t106, ptr %l56
  br label %bb24
bb24:
  %t107 = load ptr, ptr %l56, !tbaa !29
  %t109 = getelementptr %"compiler/load:Module", ptr %t107, i32 0, i32 30
  %t110 = load i1, ptr %t109, !tbaa !21
  store i1 %t110, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t112 = load i1, ptr %l50, !tbaa !21
  store i1 %t112, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenLambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i1
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca %"compiler/typed:Local"
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca ptr
  %l26 = alloca i64
  %lp27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l39 = alloca i64
  %l51 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca i32
  %l68 = alloca i32
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i64
  %l74 = alloca %"compiler/generic:Context"
  %l76 = alloca %"compiler/generic:Context"
  %l78 = alloca %"compiler/generic:Context"
  %l84 = alloca ptr
  %l87 = alloca ptr
  %l90 = alloca i32
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l96 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l103 = alloca i64
  %l108 = alloca ptr
  %l114 = alloca %"compiler/typed:Local"
  %l119 = alloca ptr
  %l120 = alloca ptr
  %l125 = alloca %"compiler/typed:Local"
  %l126 = alloca i32
  %l129 = alloca ptr
  %l132 = alloca i32
  %l142 = alloca ptr
  %l143 = alloca %"compiler/typed:Capture"
  %l158 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca i64
  %l163 = alloca i64
  %l168 = alloca i32
  %l175 = alloca %"compiler/typed:Local"
  %l178 = alloca i1
  %l181 = alloca { i64, ptr }
  %l182 = alloca i1
  %l183 = alloca ptr
  %l186 = alloca i64
  %l190 = alloca i64
  %l196 = alloca ptr
  %l199 = alloca i32
  %l200 = alloca i1
  %l202 = alloca ptr
  %l211 = alloca i32
  %l215 = alloca ptr
  %l219 = alloca i1
  %l222 = alloca i1
  %l223 = alloca i1
  %l226 = alloca i1
  %l235 = alloca ptr
  %l238 = alloca i1
  %l239 = alloca i1
  %l244 = alloca i1
  %l245 = alloca { i64, [1 x i64] }
  %l254 = alloca i64
  %l273 = alloca i1
  %l282 = alloca { i64, ptr }
  %l284 = alloca ptr
  %l297 = alloca { i64, ptr }
  %l298 = alloca %"compiler/typed:Block"
  %l300 = alloca i1
  %l309 = alloca { i64, ptr }
  %l317 = alloca ptr
  %l318 = alloca ptr
  %l322 = alloca %"compiler/source:Span"
  %l323 = alloca ptr
  %l327 = alloca { i64, ptr }
  %l328 = alloca %"compiler/typed:Block"
  %l330 = alloca ptr
  %l334 = alloca ptr
  %l337 = alloca { i64, ptr }
  %l342 = alloca %"compiler/source:Span"
  %l343 = alloca i32
  %l346 = alloca i32
  %l347 = alloca { i64, ptr }
  %l351 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca ptr
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t93 = alloca %"compiler/generic:Context", align 8
  %t282 = alloca { i64, [1 x i64] }, align 8
  %t311 = alloca { i64, [4 x i64] }, align 8
  %t341 = alloca { i64, [1 x i64] }, align 8
  %t517 = alloca { i64, [4 x i64] }, align 8
  %t554 = alloca { i64, [1 x i64] }, align 8
  %t558 = alloca { i64, [1 x i64] }, align 8
  %t587 = alloca { i64, [3 x i64] }, align 8
  %t783 = alloca { i64, [4 x i64] }, align 8
  %t795 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 0
  %t4 = load %"compiler/source:Span", ptr %t3
  store %"compiler/source:Span" %t4, ptr %l5
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l36
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l36, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 16
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l39
  br label %bb2
bb2:
  %t15 = load i64, ptr %l39, !tbaa !24
  %t16 = sub i64 %t15, 1
  store i64 %t16, ptr %l7, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l6, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = trunc i64 %t22 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 4, ptr %t27
  %t29 = insertvalue { i32 } undef, i32 %t24, 0
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  store { i32 } %t29, ptr %t30
  %t31 = load { i64, [2 x i64] }, ptr %t26
  %t32 = load i32, ptr %l2, !tbaa !23
  %t33 = load ptr, ptr %l6, !tbaa !29
  %t35 = getelementptr %"compiler/check:frame", ptr %t33, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = load %"compiler/source:Span", ptr %l5
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t18, { i64, [2 x i64] } %t31, i32 %t32, i64 %t36, %"compiler/source:Span" %t37)
  store i64 %t43, ptr %l51
  br label %bb3
bb3:
  %t44 = load i64, ptr %l51, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 19
  %t48 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t47, i64 %t48, i64 1)
  br label %bb4
bb4:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l55, !tbaa !29
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l56, !tbaa !24
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr %"compiler/check:frame", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l58, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l2, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l63
  br label %bb5
bb5:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l2, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l68
  br label %bb6
bb6:
  %t77 = load ptr, ptr %l55, !tbaa !29
  %t78 = load i64, ptr %l56, !tbaa !24
  %t79 = load i64, ptr %l58, !tbaa !24
  %t80 = load i32, ptr %l63, !tbaa !23
  %t81 = load i32, ptr %l68, !tbaa !23
  %t82 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t77, i64 %t78, i64 %t79, i32 %t80, i32 %t81)
  store ptr %t82, ptr %l69
  br label %bb7
bb7:
  %t83 = load ptr, ptr %l69, !tbaa !29
  store ptr %t83, ptr %l9, !tbaa !29
  %t84 = load ptr, ptr %l9, !tbaa !29
  store ptr %t84, ptr %l70, !tbaa !29
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l71, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t86, label %bb8, label %bb9
bb8:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l71, !tbaa !24
  br label %bb9
bb9:
  %t90 = load ptr, ptr %l6, !tbaa !29
  %t92 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l74, ptr %t92, i64 160, i1 false)
  %t94 = load i64, ptr %l71
  %t95 = inttoptr i64 %t94 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t93, ptr %t95, ptr %l74)
  call void @llvm.memmove.p0.p0.i64(ptr %l76, ptr %t93, i64 160, i1 false)
  br label %bb10
bb10:
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t97, label %bb11, label %bb12
bb11:
  %t99 = load i64, ptr %l71
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t102 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t101, i32 0, i32 2
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr null
  %t108 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 1
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t107
  %t115 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 3
  %t116 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t115, i32 0, i32 0
  %t117 = load { i64, ptr }, ptr %t116
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr %t114
  %t122 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t123 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t122, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t121
  %t129 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t130 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t129, i32 0, i32 1
  %t131 = load { i64, ptr }, ptr %t130
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = call ptr @__olang_region_or(ptr %t132, ptr null)
  %t134 = icmp ne ptr %t133, null
  %t135 = select i1 %t134, ptr %t133, ptr %t128
  %t136 = getelementptr %"compiler/generic:Context", ptr %l76, i32 0, i32 2
  %t137 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t136, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr %t135
  %t143 = icmp eq ptr %t142, %t100
  call void @__olang_region_settle(ptr %t100, i1 %t143)
  br label %bb12
bb12:
  %t144 = load ptr, ptr %l70, !tbaa !29
  %t145 = getelementptr %"compiler/check:frame", ptr %t144, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l78, ptr %t145, i64 160, i1 false)
  %t146 = load ptr, ptr %l70, !tbaa !29
  %t147 = getelementptr %"compiler/check:frame", ptr %t146, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %l76, i64 160, i1 false)
  %t148 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t148, label %bb13, label %bb14
bb13:
  %t150 = getelementptr %"compiler/generic:Context", ptr %l78, i32 0, i32 3
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t150, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"compiler/generic:Context", ptr %l78, i32 0, i32 3
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t157, i32 0, i32 1
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr %t156
  %t164 = getelementptr %"compiler/generic:Context", ptr %l78, i32 0, i32 3
  %t165 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t164, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = call ptr @__olang_region_or(ptr %t167, ptr null)
  %t169 = icmp ne ptr %t168, null
  %t170 = select i1 %t169, ptr %t168, ptr %t163
  %t171 = getelementptr %"compiler/generic:Context", ptr %l78, i32 0, i32 2
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t171, i32 0, i32 2
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = icmp ne ptr %t175, null
  %t177 = select i1 %t176, ptr %t175, ptr %t170
  %t178 = getelementptr %"compiler/generic:Context", ptr %l78, i32 0, i32 2
  %t179 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t178, i32 0, i32 1
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = icmp ne ptr %t182, null
  %t184 = select i1 %t183, ptr %t182, ptr %t177
  %t185 = getelementptr %"compiler/generic:Context", ptr %l78, i32 0, i32 2
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t185, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = icmp ne ptr %t189, null
  %t191 = select i1 %t190, ptr %t189, ptr %t184
  call void @__olang_region_drop(ptr %t191)
  store %"compiler/generic:Context" zeroinitializer, ptr %l78
  br label %bb14
bb14:
  %t192 = load ptr, ptr %l9, !tbaa !29
  %t193 = load i64, ptr %l7, !tbaa !24
  %t196 = getelementptr %"compiler/check:frame", ptr %t192, i32 0, i32 19
  store i64 %t193, ptr %t196, !tbaa !24
  %t197 = load ptr, ptr %l9, !tbaa !29
  %t199 = getelementptr %"compiler/check:frame", ptr %t197, i32 0, i32 20
  store i1 true, ptr %t199, !tbaa !21
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t200)
  store ptr %t202, ptr %l84
  br label %bb15
bb15:
  %t203 = load ptr, ptr %l84, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Body", ptr %t203, i32 0, i32 14
  store i1 true, ptr %t205, !tbaa !21
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t206)
  store ptr %t208, ptr %l87
  br label %bb16
bb16:
  %t209 = load %"compiler/source:Span", ptr %l5
  %t210 = load ptr, ptr %l87, !tbaa !29
  %t213 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t210, i32 -1, i32 0, %"compiler/source:Span" %t209)
  store i32 %t213, ptr %l90
  br label %bb17
bb17:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t214)
  store ptr %t216, ptr %l92
  br label %bb18
bb18:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/check:Checker", ptr %t217, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !29
  store ptr %t220, ptr %l94, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t221)
  store ptr %t223, ptr %l96
  br label %bb19
bb19:
  %t224 = load ptr, ptr %l96, !tbaa !29
  %t226 = getelementptr %"compiler/typed:Body", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %t226, !tbaa !23
  %t228 = load ptr, ptr %l94, !tbaa !29
  %t230 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t228, i32 %t227)
  store { i64, ptr } %t230, ptr %l99
  br label %bb20
bb20:
  %t231 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 0
  %t233 = extractvalue { i64, ptr } %t231, 1
  %t234 = mul i64 %t232, 8
  %t235 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t234)
  call void @llvm.memcpy.p0.p0.i64(ptr %t235, ptr %t233, i64 %t234, i1 false)
  %t236 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  %t238 = load ptr, ptr %l92, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t238, { i64, ptr } %t237)
  br label %bb21
bb21:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/check:Checker", ptr %t240, i32 0, i32 37
  %t244 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t242)
  store i64 %t244, ptr %l103
  br label %bb22
bb22:
  %t245 = load i64, ptr %l103, !tbaa !24
  store i64 %t245, ptr %l10, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/check:Checker", ptr %t246, i32 0, i32 14
  %t249 = load ptr, ptr %l6, !tbaa !29
  %t251 = getelementptr %"compiler/check:frame", ptr %t249, i32 0, i32 0
  %t252 = load i64, ptr %t251, !tbaa !24
  %t255 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t248, i64 %t252)
  store ptr %t255, ptr %l108
  br label %bb23
bb23:
  %t256 = load ptr, ptr %l108, !tbaa !29
  store ptr %t256, ptr %l11, !tbaa !29
  %t257 = load i64, ptr %l4, !tbaa !24
  %t259 = icmp sge i64 %t257, 0
  br i1 %t259, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s1
  %t261 = load ptr, ptr %l11, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Body", ptr %t261, i32 0, i32 7
  %t264 = load i64, ptr %l4, !tbaa !24
  %t267 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t263, i64 %t264)
  store %"compiler/typed:Local" %t267, ptr %l114
  br label %bb26
bb25:
  br label %bb34
bb26:
  %t268 = getelementptr %"compiler/typed:Local", ptr %l114, i32 0, i32 2
  %t269 = load i32, ptr %t268, !tbaa !23
  store i32 %t269, ptr %l12, !tbaa !23
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/check:Checker", ptr %t271, i32 0, i32 14
  %t274 = load i64, ptr %l8, !tbaa !24
  %t277 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t273, i64 %t274)
  store ptr %t277, ptr %l119
  br label %bb27
bb27:
  %t278 = load ptr, ptr %l119, !tbaa !29
  store ptr %t278, ptr %l13, !tbaa !29
  %t279 = load ptr, ptr %l13, !tbaa !29
  store ptr %t279, ptr %l120, !tbaa !29
  %t280 = load %"compiler/source:Span", ptr %l5
  %t281 = load i32, ptr %l12, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t282
  %t283 = getelementptr { i64, [1 x i64] }, ptr %t282, i32 0, i32 0
  store i64 4, ptr %t283
  %t284 = load { i64, [1 x i64] }, ptr %t282
  %t289 = call %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %s1, i32 0, %"compiler/source:Span" %t280, i32 %t281, i32 0, i32 5, { i64, [1 x i64] } %t284)
  store %"compiler/typed:Local" %t289, ptr %l125
  br label %bb28
bb28:
  %t290 = load ptr, ptr %l120, !tbaa !29
  %t291 = load %"compiler/typed:Local", ptr %l125
  %t292 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %t290, %"compiler/typed:Local" %t291)
  store i32 %t292, ptr %l126
  br label %bb29
bb29:
  %t293 = load i32, ptr %l126, !tbaa !23
  %t294 = sext i32 %t293 to i64
  store i64 %t294, ptr %l14, !tbaa !24
  %t296 = load ptr, ptr %l9, !tbaa !29
  %t298 = getelementptr %"compiler/check:frame", ptr %t296, i32 0, i32 30
  store ptr %t298, ptr %l129, !tbaa !29
  %t299 = load i64, ptr %l14, !tbaa !24
  %t301 = trunc i64 %t299 to i32
  store i32 %t301, ptr %l132, !tbaa !23
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l5
  %t305 = load %"compiler/source:Span", ptr %l5
  %t306 = load i32, ptr %l12, !tbaa !23
  %t307 = load i64, ptr %l4, !tbaa !24
  %t309 = trunc i64 %t307 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t311
  %t312 = getelementptr { i64, [4 x i64] }, ptr %t311, i32 0, i32 0
  store i64 0, ptr %t312
  %t314 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t305, 0
  %t316 = insertvalue { %"compiler/source:Span", i32, i32 } %t314, i32 %t306, 1
  %t318 = insertvalue { %"compiler/source:Span", i32, i32 } %t316, i32 %t309, 2
  %t319 = getelementptr { i64, [4 x i64] }, ptr %t311, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t318, ptr %t319
  %t320 = load { i64, [4 x i64] }, ptr %t311
  %t322 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t320, ptr %t322
  %t326 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t303, %"compiler/source:Span" %t304, ptr %t322)
  store ptr %t326, ptr %l142
  br label %bb30
bb30:
  %t327 = load i32, ptr %l132, !tbaa !23
  %t328 = load ptr, ptr %l142, !tbaa !29
  %t329 = call %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v0, i32 %t327, ptr %t328)
  store %"compiler/typed:Capture" %t329, ptr %l143
  br label %bb31
bb31:
  %t330 = load %"compiler/typed:Capture", ptr %l143
  %t331 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store %"compiler/typed:Capture" %t330, ptr %t331
  %t332 = load ptr, ptr %l129, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v0, ptr %t332, ptr %t331)
  br label %bb32
bb32:
  %t334 = load ptr, ptr %l13, !tbaa !29
  %t336 = getelementptr %"compiler/typed:Body", ptr %t334, i32 0, i32 6
  %t337 = load i64, ptr %l14, !tbaa !24
  %t339 = trunc i64 %t337 to i32
  store { i64, [1 x i64] } zeroinitializer, ptr %t341
  %t342 = getelementptr { i64, [1 x i64] }, ptr %t341, i32 0, i32 0
  store i64 4, ptr %t342
  %t344 = insertvalue { i32 } undef, i32 %t339, 0
  %t345 = getelementptr { i64, [1 x i64] }, ptr %t341, i32 0, i32 1
  store { i32 } %t344, ptr %t345
  %t346 = load { i64, [1 x i64] }, ptr %t341
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t336, { i64, [1 x i64] } %t346)
  br label %bb33
bb33:
  %t349 = load ptr, ptr %l13, !tbaa !29
  %t350 = load i64, ptr %l14, !tbaa !24
  %t352 = trunc i64 %t350 to i32
  %t356 = getelementptr %"compiler/typed:Body", ptr %t349, i32 0, i32 15
  store i32 %t352, ptr %t356, !tbaa !23
  %t357 = load ptr, ptr %l13, !tbaa !29
  %t359 = getelementptr %"compiler/typed:Body", ptr %t357, i32 0, i32 16
  store i1 true, ptr %t359, !tbaa !21
  %t360 = load ptr, ptr %l9, !tbaa !29
  %t361 = load i64, ptr %l14, !tbaa !24
  %t364 = getelementptr %"compiler/check:frame", ptr %t360, i32 0, i32 21
  store i64 %t361, ptr %t364, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb34:
  %t365 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t365, ptr %l158
  br label %bb35
bb35:
  %t366 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l158
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t366, ptr %l15
  store i1 true, ptr %l16, !tbaa !21
  store i64 -1, ptr %l17, !tbaa !24
  %t367 = load ptr, ptr %l11, !tbaa !29
  %t369 = getelementptr %"compiler/typed:Body", ptr %t367, i32 0, i32 5
  store ptr %t369, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb36
bb36:
  store %olang.scope zeroinitializer, ptr %s3
  %t371 = load i64, ptr %l19, !tbaa !24
  store i64 %t371, ptr %l161, !tbaa !24
  %t372 = load ptr, ptr %l18, !tbaa !29
  %t374 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t372)
  store i64 %t374, ptr %l163
  br label %bb37
bb37:
  %t375 = load i64, ptr %l161, !tbaa !24
  %t376 = load i64, ptr %l163, !tbaa !24
  %t377 = icmp slt i64 %t375, %t376
  %t379 = xor i1 %t377, true
  br i1 %t379, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %bb93
bb39:
  br label %bb40
bb40:
  %t381 = load ptr, ptr %l18, !tbaa !29
  %t382 = load i64, ptr %l19, !tbaa !24
  %t385 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t381, i64 %t382)
  store i32 %t385, ptr %l168
  br label %bb41
bb41:
  %t386 = load i32, ptr %l168, !tbaa !23
  %t387 = load i64, ptr %l17, !tbaa !24
  %t389 = add i64 %t387, 1
  store i64 %t389, ptr %l17, !tbaa !24
  %t391 = load ptr, ptr %l11, !tbaa !29
  %t393 = getelementptr %"compiler/typed:Body", ptr %t391, i32 0, i32 7
  %t396 = sext i32 %t386 to i64
  %t399 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t393, i64 %t396)
  store %"compiler/typed:Local" %t399, ptr %l175
  br label %bb42
bb42:
  %t400 = load %"compiler/typed:Local", ptr %l175
  store %"compiler/typed:Local" %t400, ptr %l21
  %t401 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t402 = load i32, ptr %t401, !tbaa !23
  %t404 = icmp eq i32 %t402, 0
  br i1 %t404, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb47
bb44:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t408 = load i32, ptr %t407, !tbaa !23
  %t411 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t406, i32 %t408)
  store { i64, ptr } %t411, ptr %l181
  br label %bb45
bb45:
  %t412 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t413 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t412, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t413, ptr %l182
  br label %bb46
bb46:
  %t414 = load i1, ptr %l182, !tbaa !21
  store i1 %t414, ptr %l178, !tbaa !21
  br label %bb47
bb47:
  %t415 = load i1, ptr %l178, !tbaa !21
  br i1 %t415, label %bb48, label %bb49
bb48:
  store i1 false, ptr %l16, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb92
bb49:
  br label %bb50
bb50:
  %t416 = load ptr, ptr %l0, !tbaa !29
  store ptr %t416, ptr %l183, !tbaa !29
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = getelementptr %"compiler/check:Checker", ptr %t417, i32 0, i32 16
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t419)
  store i64 %t421, ptr %l186
  br label %bb51
bb51:
  %t422 = load i64, ptr %l186, !tbaa !24
  %t423 = sub i64 %t422, 1
  %t424 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t425 = load i32, ptr %t424, !tbaa !23
  %t426 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t427 = load %"compiler/source:Span", ptr %t426
  %t428 = load ptr, ptr %l183, !tbaa !29
  %t432 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %t428, i64 %t423, i32 %t425, %"compiler/source:Span" %t427)
  store i64 %t432, ptr %l190
  br label %bb52
bb52:
  %t433 = load i64, ptr %l190, !tbaa !24
  store i64 %t433, ptr %l22, !tbaa !24
  %t434 = load i64, ptr %l22, !tbaa !24
  %t436 = icmp slt i64 %t434, 0
  br i1 %t436, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s3)
  br label %bb92
bb54:
  br label %bb55
bb55:
  %t438 = load i64, ptr %l17, !tbaa !24
  %t442 = icmp eq i64 %t438, %a3
  br i1 %t442, label %bb56, label %bb57
bb56:
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l196, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load i64, ptr %l22, !tbaa !24
  %t449 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t445, i64 %t446)
  store i32 %t449, ptr %l199
  br label %bb58
bb57:
  br label %bb65
bb58:
  %t450 = load ptr, ptr %l196, !tbaa !29
  %t451 = load i32, ptr %l199, !tbaa !23
  %t452 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t450, i32 %t451)
  store i1 %t452, ptr %l200
  br label %bb59
bb59:
  %t453 = load i1, ptr %l200, !tbaa !21
  br i1 %t453, label %bb60, label %bb61
bb60:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t454)
  store ptr %t456, ptr %l202
  br label %bb62
bb61:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t459 = load %"compiler/source:Span", ptr %t458
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t457, %"compiler/source:Span" %t459, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb63
bb62:
  %t462 = load ptr, ptr %l202, !tbaa !29
  %t463 = load i64, ptr %l22, !tbaa !24
  %t465 = trunc i64 %t463 to i32
  %t469 = getelementptr %"compiler/typed:Body", ptr %t462, i32 0, i32 15
  store i32 %t465, ptr %t469, !tbaa !23
  br label %bb64
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i64, ptr %l22, !tbaa !24
  %t474 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t470, i64 %t471)
  store i32 %t474, ptr %l211
  br label %bb66
bb66:
  %t475 = load i32, ptr %l211, !tbaa !23
  store i32 %t475, ptr %l23, !tbaa !23
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t478 = load %"compiler/source:Span", ptr %t477
  %t479 = load i64, ptr %l22, !tbaa !24
  %t483 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t476, %"compiler/source:Span" %t478, i64 %t479)
  store ptr %t483, ptr %l215
  br label %bb67
bb67:
  %t484 = load ptr, ptr %l215, !tbaa !29
  store ptr %t484, ptr %l24, !tbaa !29
  %t485 = load i32, ptr %l23, !tbaa !23
  %t486 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t487 = load i32, ptr %t486, !tbaa !23
  %t490 = icmp ne i32 %t485, %t487
  br i1 %t490, label %bb68, label %bb69
bb68:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t493 = load i32, ptr %l23, !tbaa !23
  %t496 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t492, i32 %t493)
  store i1 %t496, ptr %l222
  br label %bb70
bb69:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb71
bb70:
  %t497 = load i1, ptr %l222, !tbaa !21
  store i1 %t497, ptr %l219, !tbaa !21
  br label %bb71
bb71:
  %t498 = load i1, ptr %l219, !tbaa !21
  br i1 %t498, label %bb72, label %bb73
bb72:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t501 = load i32, ptr %t500, !tbaa !23
  %t504 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t499, i32 %t501)
  store i1 %t504, ptr %l226
  br label %bb74
bb73:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb75
bb74:
  %t505 = load i1, ptr %l226, !tbaa !21
  %t506 = xor i1 %t505, true
  store i1 %t506, ptr %l223, !tbaa !21
  br label %bb75
bb75:
  %t508 = load i1, ptr %l223, !tbaa !21
  br i1 %t508, label %bb76, label %bb77
bb76:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t511 = load %"compiler/source:Span", ptr %t510
  %t512 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t513 = load %"compiler/source:Span", ptr %t512
  %t514 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t515 = load i32, ptr %t514, !tbaa !23
  %t516 = load ptr, ptr %l24, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t517
  %t518 = getelementptr { i64, [4 x i64] }, ptr %t517, i32 0, i32 0
  store i64 2, ptr %t518
  %t520 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t513, 0
  %t522 = insertvalue { %"compiler/source:Span", i32, ptr } %t520, i32 %t515, 1
  %t524 = insertvalue { %"compiler/source:Span", i32, ptr } %t522, ptr %t516, 2
  %t525 = getelementptr { i64, [4 x i64] }, ptr %t517, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t524, ptr %t525
  %t526 = load { i64, [4 x i64] }, ptr %t517
  %t528 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t526, ptr %t528
  %t532 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t509, %"compiler/source:Span" %t511, ptr %t528)
  store ptr %t532, ptr %l235
  br label %bb78
bb77:
  br label %bb79
bb78:
  %t533 = load ptr, ptr %l235, !tbaa !29
  store ptr %t533, ptr %l24, !tbaa !29
  br label %bb79
bb79:
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t536 = load i32, ptr %t535, !tbaa !23
  %t539 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t534, i32 %t536)
  store i1 %t539, ptr %l238
  br label %bb80
bb80:
  %t540 = load i1, ptr %l238, !tbaa !21
  br i1 %t540, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l239, !tbaa !21
  br label %bb84
bb82:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t543 = getelementptr %"compiler/check:Checker", ptr %t541, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !29
  %t546 = getelementptr %"compiler/generic:Program", ptr %t544, i32 0, i32 2
  %t547 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t548 = load i32, ptr %t547, !tbaa !23
  %t551 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t546, i32 %t548)
  store i1 %t551, ptr %l244
  br label %bb83
bb83:
  %t552 = load i1, ptr %l244, !tbaa !21
  store i1 %t552, ptr %l239, !tbaa !21
  br label %bb84
bb84:
  %t553 = load i1, ptr %l239, !tbaa !21
  br i1 %t553, label %bb85, label %bb86
bb85:
  store { i64, [1 x i64] } zeroinitializer, ptr %t554
  %t555 = getelementptr { i64, [1 x i64] }, ptr %t554, i32 0, i32 0
  store i64 4, ptr %t555
  %t556 = load { i64, [1 x i64] }, ptr %t554
  store { i64, [1 x i64] } %t556, ptr %l245
  br label %bb87
bb86:
  store { i64, [1 x i64] } zeroinitializer, ptr %t558
  %t559 = getelementptr { i64, [1 x i64] }, ptr %t558, i32 0, i32 0
  store i64 0, ptr %t559
  %t560 = load { i64, [1 x i64] }, ptr %t558
  store { i64, [1 x i64] } %t560, ptr %l245
  br label %bb87
bb87:
  %t562 = load { i64, [1 x i64] }, ptr %l245
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t565 = load i32, ptr %t564, !tbaa !23
  %t566 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t567 = load %"compiler/source:Span", ptr %t566
  %t568 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t569 = load i32, ptr %t568, !tbaa !23
  %t577 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t563, i32 %t565, %"compiler/source:Span" %t567, i32 %t569, i32 1, { i64, [1 x i64] } %t562)
  store i64 %t577, ptr %l254
  br label %bb88
bb88:
  %t578 = load i64, ptr %l254, !tbaa !24
  store i64 %t578, ptr %l26, !tbaa !24
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t581 = load %"compiler/source:Span", ptr %t580
  %t582 = load i64, ptr %l26, !tbaa !24
  %t584 = trunc i64 %t582 to i32
  %t586 = load ptr, ptr %l24, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t587
  %t588 = getelementptr { i64, [3 x i64] }, ptr %t587, i32 0, i32 0
  store i64 0, ptr %t588
  %t590 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t581, 0
  %t592 = insertvalue { %"compiler/source:Span", i32, ptr } %t590, i32 %t584, 1
  %t594 = insertvalue { %"compiler/source:Span", i32, ptr } %t592, ptr %t586, 2
  %t595 = getelementptr { i64, [3 x i64] }, ptr %t587, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t594, ptr %t595
  %t596 = load { i64, [3 x i64] }, ptr %t587
  %t598 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t596, ptr %t598
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t579, ptr %t598)
  br label %bb89
bb89:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load i64, ptr %l26, !tbaa !24
  %t603 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 1
  %t604 = load %"compiler/source:Span", ptr %t603
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %t601, i64 %t602, %"compiler/source:Span" %t604, i1 true)
  br label %bb90
bb90:
  %t608 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l15, i64 %t608)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s3)
  br label %bb92
bb92:
  %t611 = load i64, ptr %l19, !tbaa !24
  %t613 = add i64 %t611, 1
  store i64 %t613, ptr %l19, !tbaa !24
  br label %bb36
bb93:
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t616 = load ptr, ptr %l6, !tbaa !29
  %t618 = getelementptr %"compiler/check:frame", ptr %t616, i32 0, i32 0
  %t619 = load i64, ptr %t618, !tbaa !24
  %t622 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %t615, i64 %t619)
  store i1 %t622, ptr %l273
  br label %bb94
bb94:
  %t623 = load i1, ptr %l273, !tbaa !21
  br i1 %t623, label %bb95, label %bb96
bb95:
  %t624 = load i1, ptr %l16, !tbaa !21
  br i1 %t624, label %bb97, label %bb98
bb96:
  br label %bb102
bb97:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t627 = load ptr, ptr %l6, !tbaa !29
  %t629 = getelementptr %"compiler/check:frame", ptr %t627, i32 0, i32 0
  %t630 = load i64, ptr %t629, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecks(ptr %v0, ptr %s0, ptr %t626, i64 %t630, ptr %l15, i1 true)
  br label %bb99
bb98:
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t635 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t634, %"compiler/source:Span" %t635, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d18, i32 0, i32 1) })
  br label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t638 = load ptr, ptr %l1, !tbaa !29
  %t640 = getelementptr %"compiler/ast:Func", ptr %t638, i32 0, i32 4
  %t641 = load { i64, ptr }, ptr %t640, !tbaa !27
  store { i64, ptr } %t641, ptr %l282, !tbaa !27
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t644 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t642)
  store ptr %t644, ptr %l284
  br label %bb103
bb103:
  %t645 = load ptr, ptr %l284, !tbaa !29
  %t647 = getelementptr %"compiler/check:frame", ptr %t645, i32 0, i32 43
  %t648 = load { i64, ptr }, ptr %l282, !tbaa !27
  call void @compiler_2fcheck_2estoredIn(ptr %v1, ptr %v0, { i64, ptr } %t648, ptr %t647)
  br label %bb104
bb104:
  %t650 = load ptr, ptr %l1, !tbaa !29
  %t652 = getelementptr %"compiler/ast:Func", ptr %t650, i32 0, i32 4
  %t653 = load { i64, ptr }, ptr %t652, !tbaa !27
  %t655 = extractvalue { i64, ptr } %t653, 0
  %t657 = icmp sgt i64 %t655, 0
  br i1 %t657, label %bb105, label %bb106
bb105:
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t660 = load ptr, ptr %l1, !tbaa !29
  %t662 = getelementptr %"compiler/ast:Func", ptr %t660, i32 0, i32 4
  %t663 = load { i64, ptr }, ptr %t662, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t659, { i64, ptr } %t663)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  %t666 = load ptr, ptr %l0, !tbaa !29
  %t668 = getelementptr %"compiler/check:Checker", ptr %t666, i32 0, i32 37
  %t669 = load i64, ptr %l10, !tbaa !24
  %t672 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t668, i64 %t669)
  store { i64, ptr } %t672, ptr %l297
  br label %bb109
bb109:
  %t673 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t674 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t673)
  store %"compiler/typed:Block" %t674, ptr %l298
  br label %bb110
bb110:
  %t675 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store ptr %t675, ptr %lp27
  %t676 = load %"compiler/typed:Block", ptr %l298
  %t677 = load ptr, ptr %lp27
  store %"compiler/typed:Block" %t676, ptr %t677
  %t678 = load ptr, ptr %lp27
  %t680 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t678)
  store i1 %t680, ptr %l300
  br label %bb111
bb111:
  %t681 = load i1, ptr %l300, !tbaa !21
  %t682 = xor i1 %t681, true
  br i1 %t682, label %bb112, label %bb113
bb112:
  store %olang.scope zeroinitializer, ptr %s15
  %t684 = load ptr, ptr %lp27
  %t685 = getelementptr %"compiler/typed:Block", ptr %t684, i32 0, i32 1
  %t686 = load { i64, ptr }, ptr %t685, !tbaa !27
  store { i64, ptr } %t686, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t688 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t690 = extractvalue { i64, ptr } %t688, 0
  store i64 %t690, ptr %l30, !tbaa !24
  br label %bb114
bb113:
  br label %bb126
bb114:
  %t692 = load i64, ptr %l29, !tbaa !24
  %t693 = load i64, ptr %l30, !tbaa !24
  %t696 = icmp slt i64 %t692, %t693
  %t698 = xor i1 %t696, true
  br i1 %t698, label %bb115, label %bb116
bb115:
  br label %bb120
bb116:
  br label %bb117
bb117:
  %t700 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t700, ptr %l309, !tbaa !27
  %t701 = load i64, ptr %l29, !tbaa !24
  %t703 = getelementptr { i64, ptr }, ptr %l309, i32 0, i32 1
  %t704 = load ptr, ptr %t703, !tbaa !27
  %t705 = getelementptr ptr, ptr %t704, i64 %t701
  %t706 = load ptr, ptr %t705, !tbaa !39
  %t708 = load ptr, ptr %l0, !tbaa !29
  %t710 = getelementptr %"compiler/check:Checker", ptr %t708, i32 0, i32 37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t710, ptr %t706)
  br label %bb118
bb118:
  br label %bb119
bb119:
  %t714 = load i64, ptr %l29, !tbaa !24
  %t716 = add i64 %t714, 1
  store i64 %t716, ptr %l29, !tbaa !24
  br label %bb114
bb120:
  %t718 = load ptr, ptr %l0, !tbaa !29
  store ptr %t718, ptr %l317, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  store ptr %t719, ptr %l318, !tbaa !29
  %t720 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t721 = load i32, ptr %t720, !tbaa !23
  %t723 = sub i32 %t721, 1
  %t724 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t725 = load i32, ptr %t724, !tbaa !23
  %t728 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s15, i32 %t723, i32 %t725)
  store %"compiler/source:Span" %t728, ptr %l322
  br label %bb121
bb121:
  %t729 = load ptr, ptr %l318, !tbaa !29
  %t730 = load %"compiler/source:Span", ptr %l322
  %t731 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenEnd(ptr %v0, ptr %v0, ptr %t729, %"compiler/source:Span" %t730)
  store ptr %t731, ptr %l323
  br label %bb122
bb122:
  %t732 = load ptr, ptr %l317, !tbaa !29
  %t733 = load ptr, ptr %l323, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t732, ptr %t733)
  br label %bb123
bb123:
  %t734 = load ptr, ptr %l0, !tbaa !29
  %t736 = getelementptr %"compiler/check:Checker", ptr %t734, i32 0, i32 37
  %t737 = load i64, ptr %l10, !tbaa !24
  %t740 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t736, i64 %t737)
  store { i64, ptr } %t740, ptr %l327
  br label %bb124
bb124:
  %t741 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t742 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t741)
  store %"compiler/typed:Block" %t742, ptr %l328
  br label %bb125
bb125:
  %t743 = load %"compiler/typed:Block", ptr %l328
  %t744 = load ptr, ptr %lp27
  store %"compiler/typed:Block" %t743, ptr %t744
  call void @__olang_scope_close(ptr %s15)
  br label %bb126
bb126:
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t747 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t745)
  store ptr %t747, ptr %l330
  br label %bb127
bb127:
  %t748 = load ptr, ptr %l330, !tbaa !29
  %t749 = load ptr, ptr %lp27
  %t752 = getelementptr %"compiler/typed:Body", ptr %t748, i32 0, i32 11
  store ptr %t749, ptr %t752, !tbaa !29
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t755 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t753)
  store ptr %t755, ptr %l334
  br label %bb128
bb128:
  %t756 = load ptr, ptr %l334, !tbaa !29
  %t758 = getelementptr %"compiler/check:frame", ptr %t756, i32 0, i32 30
  %t760 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v2, ptr %t758)
  store { i64, ptr } %t760, ptr %l337
  br label %bb129
bb129:
  %t761 = load { i64, ptr }, ptr %l337, !tbaa !27
  store { i64, ptr } %t761, ptr %l32, !tbaa !27
  %t762 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t762)
  br label %bb130
bb130:
  %t764 = load ptr, ptr %l0, !tbaa !29
  %t766 = getelementptr %"compiler/check:Checker", ptr %t764, i32 0, i32 19
  %t767 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t766, i64 %t767, i64 2)
  br label %bb131
bb131:
  %t770 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t770, ptr %l342
  %t771 = load i32, ptr %l2, !tbaa !23
  store i32 %t771, ptr %l343, !tbaa !23
  %t772 = load i64, ptr %l8, !tbaa !24
  %t774 = trunc i64 %t772 to i32
  store i32 %t774, ptr %l346, !tbaa !23
  %t776 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t776, ptr %l347, !tbaa !27
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t778 = load %"compiler/source:Span", ptr %l5
  %t782 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t777, i32 5, %"compiler/source:Span" %t778)
  store i32 %t782, ptr %l351
  br label %bb132
bb132:
  store { i64, [4 x i64] } zeroinitializer, ptr %t783
  %t784 = getelementptr { i64, [4 x i64] }, ptr %t783, i32 0, i32 0
  store i64 1, ptr %t784
  %t785 = load i32, ptr %l346, !tbaa !23
  %t786 = insertvalue { i32, { i64, ptr }, i32 } undef, i32 %t785, 0
  %t787 = load { i64, ptr }, ptr %l347, !tbaa !27
  %t788 = insertvalue { i32, { i64, ptr }, i32 } %t786, { i64, ptr } %t787, 1
  %t789 = load i32, ptr %l351, !tbaa !23
  %t790 = insertvalue { i32, { i64, ptr }, i32 } %t788, i32 %t789, 2
  %t791 = getelementptr { i64, [4 x i64] }, ptr %t783, i32 0, i32 1
  store { i32, { i64, ptr }, i32 } %t790, ptr %t791
  %t792 = load { i64, [4 x i64] }, ptr %t783
  %t794 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t792, ptr %t794
  store { i64, [5 x i64] } zeroinitializer, ptr %t795
  %t796 = getelementptr { i64, [5 x i64] }, ptr %t795, i32 0, i32 0
  store i64 15, ptr %t796
  %t797 = load %"compiler/source:Span", ptr %l342
  %t798 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t797, 0
  %t799 = load i32, ptr %l343, !tbaa !23
  %t800 = insertvalue { %"compiler/source:Span", i32, ptr } %t798, i32 %t799, 1
  %t802 = insertvalue { %"compiler/source:Span", i32, ptr } %t800, ptr %t794, 2
  %t803 = getelementptr { i64, [5 x i64] }, ptr %t795, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t802, ptr %t803
  %t804 = load { i64, [5 x i64] }, ptr %t795
  %t806 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t804, ptr %t806
  call void @__olang_scope_close(ptr %s0)
  store ptr %t806, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, { i64, ptr } %a4, { i64, ptr } %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca %"compiler/names:Ref"
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca %"compiler/names:Ref"
  %l21 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l39 = alloca %"compiler/names:Ref"
  %l42 = alloca i1
  %l45 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l61 = alloca i1
  %l64 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %l82 = alloca ptr
  %l86 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca %"compiler/source:Span"
  %l91 = alloca i32
  %l98 = alloca i32
  %l104 = alloca ptr
  %l111 = alloca ptr
  %l119 = alloca i64
  %l124 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l136 = alloca %"compiler/source:Span"
  %l137 = alloca i64
  %l138 = alloca { i64, ptr }
  %l143 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca i1
  %l155 = alloca i64
  %l159 = alloca i64
  %l164 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l174 = alloca ptr
  %l175 = alloca %"compiler/source:Span"
  %l176 = alloca %"compiler/source:Span"
  %l179 = alloca { i64, ptr }
  %l181 = alloca %"compiler/source:Span"
  %l182 = alloca i64
  %l183 = alloca { i64, ptr }
  %l188 = alloca ptr
  %l190 = alloca ptr
  %l191 = alloca i1
  %l202 = alloca ptr
  %l204 = alloca ptr
  %l208 = alloca %"compiler/names:Ref"
  %l211 = alloca i1
  %l214 = alloca i1
  %l216 = alloca ptr
  %l217 = alloca %"compiler/source:Span"
  %l218 = alloca %"compiler/source:Span"
  %l221 = alloca { i64, ptr }
  %l223 = alloca %"compiler/source:Span"
  %l229 = alloca ptr
  %l237 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca %"compiler/source:Span"
  %l246 = alloca i32
  %l248 = alloca i32
  %l254 = alloca ptr
  %l259 = alloca i1
  %l263 = alloca i1
  %l267 = alloca ptr
  %l272 = alloca i1
  %l273 = alloca ptr
  %l274 = alloca i32
  %l275 = alloca { i64, ptr }
  %l277 = alloca %"compiler/source:Span"
  %l278 = alloca i1
  %l282 = alloca ptr
  %l289 = alloca ptr
  %l293 = alloca i1
  %l296 = alloca i1
  %l298 = alloca i1
  %l301 = alloca i32
  %l303 = alloca ptr
  %l304 = alloca %"compiler/source:Span"
  %l305 = alloca ptr
  %l306 = alloca i32
  %l307 = alloca %"compiler/source:Span"
  %l310 = alloca { i64, ptr }
  %l312 = alloca %"compiler/source:Span"
  %l316 = alloca ptr
  %l322 = alloca ptr
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca ptr
  %t154 = alloca i64
  %t165 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l7
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l8, !tbaa !23
  br label %bb5
bb4:
  br label %bb67
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l33, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l35
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l35, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l33, !tbaa !29
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t38, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l39
  br label %bb7
bb7:
  %t42 = load %"compiler/names:Ref", ptr %l39
  store %"compiler/names:Ref" %t42, ptr %l9
  %t43 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 9}
  %t46 = trunc i64 7 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l8, !tbaa !23
  %t53 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t49, i32 %t50)
  store { i64, ptr } %t53, ptr %l45
  br label %bb10
bb9:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb12
bb10:
  %t54 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t55 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t54, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t55, ptr %l46
  br label %bb11
bb11:
  %t56 = load i1, ptr %l46, !tbaa !21
  store i1 %t56, ptr %l42, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l42, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = icmp eq i64 %t60, 1
  store i1 %t62, ptr %l47, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb15
bb15:
  %t64 = load i1, ptr %l47, !tbaa !21
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t67, ptr %l53, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr ptr, ptr %t69, i64 0
  %t71 = load ptr, ptr %t70, !tbaa !39
  %t72 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t79 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayCall(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t65, %"compiler/source:Span" %t66, ptr %t71, { i64, ptr } %t72, i32 %a6)
  store ptr %t79, ptr %l57
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t80 = load ptr, ptr %l57, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t80, ptr %rv
  br label %ret
bb19:
  %t82 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 9}
  %t85 = trunc i64 7 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb20, label %bb21
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l8, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l64
  br label %bb22
bb21:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb24
bb22:
  %t93 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t93, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t94, ptr %l65
  br label %bb23
bb23:
  %t95 = load i1, ptr %l65, !tbaa !21
  store i1 %t95, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t96 = load i1, ptr %l61, !tbaa !21
  br i1 %t96, label %bb25, label %bb26
bb25:
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t101 = icmp sgt i64 %t99, 1
  store i1 %t101, ptr %l66, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t103 = load i1, ptr %l66, !tbaa !21
  br i1 %t103, label %bb28, label %bb29
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l70, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t105, ptr %l71, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr ptr, ptr %t107, i64 1
  %t109 = load ptr, ptr %t108, !tbaa !39
  %t111 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t109)
  store %"compiler/source:Span" %t111, ptr %l73
  br label %bb30
bb29:
  br label %bb35
bb30:
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTooManyArgs(ptr %v0, i64 %t114)
  store %"compiler/diagmsg:Msg" %t116, ptr %l76
  br label %bb31
bb31:
  %t117 = load ptr, ptr %l70, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l73
  %t119 = load %"compiler/diagmsg:Msg", ptr %l76
  %t120 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t117, %"compiler/source:Span" %t118, %"compiler/diagmsg:Msg" %t119)
  store i64 %t120, ptr %l77
  br label %bb32
bb32:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t121, { i64, ptr } %t122)
  br label %bb33
bb33:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load %"compiler/source:Span", ptr %l1
  %t129 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t125, %"compiler/source:Span" %t126)
  store ptr %t129, ptr %l82
  br label %bb34
bb34:
  %t130 = load ptr, ptr %l82, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t130, ptr %rv
  br label %ret
bb35:
  %t132 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t133 = load i32, ptr %t132, !range !{i32 0, i32 9}
  %t135 = trunc i64 4 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb36, label %bb37
bb36:
  %t138 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 2
  %t139 = load i64, ptr %t138, !tbaa !24
  %t141 = icmp sge i64 %t139, 0
  store i1 %t141, ptr %l86, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb38
bb38:
  %t143 = load i1, ptr %l86, !tbaa !21
  br i1 %t143, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s4
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l89, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t145, ptr %l90
  %t146 = load i32, ptr %l8, !tbaa !23
  store i32 %t146, ptr %l91, !tbaa !23
  %t147 = icmp sge i64 1, 0
  br i1 %t147, label %bb41, label %bb42
bb40:
  br label %bb51
bb41:
  %t149 = icmp sle i64 1, 2305843009213693951
  br i1 %t149, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_c5fa9ed16f12f7a5_64c2edcd3bb7e401)
  unreachable
bb43:
  %t151 = mul i64 1, 4
  %t152 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t151)
  %t153 = load i32, ptr %l91, !tbaa !23
  store i64 0, ptr %t154
  br label %fill.155
fill.155:
  %t158 = load i64, ptr %t154
  %t159 = icmp slt i64 %t158, 1
  br i1 %t159, label %fillb.156, label %filld.157
fillb.156:
  %t160 = getelementptr i32, ptr %t152, i64 %t158
  store i32 %t153, ptr %t160
  %t161 = add i64 %t158, 1
  store i64 %t161, ptr %t154
  br label %fill.155
filld.157:
  %t162 = insertvalue { i64, ptr } undef, i64 1, 0
  %t163 = insertvalue { i64, ptr } %t162, ptr %t152, 1
  %t164 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [5 x i64] }, ptr %t165, i32 0, i32 0
  store i64 0, ptr %t166
  %t167 = load %"compiler/source:Span", ptr %l90
  %t168 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t167, 0
  %t170 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t168, { i64, ptr } %t163, 1
  %t172 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t170, { i64, ptr } %t164, 2
  %t173 = getelementptr { i64, [5 x i64] }, ptr %t165, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t172, ptr %t173
  %t174 = load { i64, [5 x i64] }, ptr %t165
  %t176 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 48, i64 8)
  store { i64, [5 x i64] } %t174, ptr %t176
  %t177 = load ptr, ptr %l89, !tbaa !29
  %t179 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %s4, ptr %t177, ptr %t176)
  store i32 %t179, ptr %l98
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_c5fa9ed16f12f7a5_64c2edcd3bb7e401)
  unreachable
bb45:
  %t180 = load i32, ptr %l98, !tbaa !23
  store i32 %t180, ptr %l10, !tbaa !23
  %t181 = load i32, ptr %l10, !tbaa !23
  %t182 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t185 = icmp eq i32 %t181, %t182
  br i1 %t185, label %bb46, label %bb47
bb46:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t187, %"compiler/source:Span" %t188)
  store ptr %t191, ptr %l104
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t192 = load ptr, ptr %l104, !tbaa !29
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  store ptr %t192, ptr %rv
  br label %ret
bb49:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load %"compiler/source:Span", ptr %l1
  %t196 = load %"compiler/source:Span", ptr %l7
  %t197 = load i32, ptr %l10, !tbaa !23
  %t198 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v3, ptr %v4, ptr %t194, %"compiler/source:Span" %t195, %"compiler/source:Span" %t196, i32 %t197, { i64, ptr } %t198)
  store ptr %t204, ptr %l111
  br label %bb50
bb50:
  %t205 = load ptr, ptr %l111, !tbaa !29
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  store ptr %t205, ptr %rv
  br label %ret
bb51:
  %t207 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 0
  %t208 = load i32, ptr %t207, !range !{i32 0, i32 9}
  %t210 = trunc i64 3 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb52, label %bb53
bb52:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t217 = getelementptr %"compiler/names:Ref", ptr %l9, i32 0, i32 1
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = load i32, ptr %l8, !tbaa !23
  %t223 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t216, i64 %t218, i32 %t219)
  store i64 %t223, ptr %l119
  br label %bb54
bb53:
  br label %bb66
bb54:
  %t224 = load i64, ptr %l119, !tbaa !24
  store i64 %t224, ptr %l11, !tbaa !24
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i64, ptr %l11, !tbaa !24
  %t227 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t228 = load %"compiler/source:Span", ptr %l2
  %t233 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v2, ptr %v4, ptr %t225, i64 %t226, { i64, ptr } %t227, %"compiler/source:Span" %t228)
  store { i64, ptr } %t233, ptr %l124
  br label %bb55
bb55:
  %t234 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t234, ptr %l12, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 0
  %t239 = icmp eq i64 %t237, 0
  br i1 %t239, label %bb56, label %bb57
bb56:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t241, { i64, ptr } %t242)
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l1
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t245, %"compiler/source:Span" %t246)
  store ptr %t249, ptr %l132
  br label %bb59
bb59:
  %t250 = load ptr, ptr %l132, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t250, ptr %rv
  br label %ret
bb60:
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l134, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t253, ptr %l135
  %t254 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t254, ptr %l136
  %t255 = load i64, ptr %l11, !tbaa !24
  store i64 %t255, ptr %l137, !tbaa !24
  %t256 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t256, ptr %l138, !tbaa !27
  %t257 = icmp sge i64 0, 0
  br i1 %t257, label %bb61, label %bb62
bb61:
  %t259 = icmp sle i64 0, 1152921504606846975
  br i1 %t259, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_b174354d9e16fd38_b3c97c50613a8cf4)
  unreachable
bb63:
  %t261 = mul i64 0, 8
  %t262 = insertvalue { i64, ptr } undef, i64 0, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t264 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t265 = load ptr, ptr %l134, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l135
  %t267 = load %"compiler/source:Span", ptr %l136
  %t268 = load i64, ptr %l137, !tbaa !24
  %t269 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t272 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v3, ptr %v0, ptr %v4, ptr %v4, ptr %t265, %"compiler/source:Span" %t266, %"compiler/source:Span" %t267, i64 %t268, ptr null, { i64, ptr } %t269, { i64, ptr } %t263, { i64, ptr } %t264)
  store ptr %t272, ptr %l143
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_b174354d9e16fd38_b3c97c50613a8cf4)
  unreachable
bb65:
  %t273 = load ptr, ptr %l143, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t273, ptr %rv
  br label %ret
bb66:
  call void @__olang_scope_close(ptr %s1)
  br label %bb160
bb67:
  %t275 = load ptr, ptr %l3, !tbaa !29
  store ptr %t275, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t276 = load ptr, ptr %l145, !tbaa !29
  %t277 = icmp ne ptr %t276, null
  br i1 %t277, label %bb68, label %bb69
bb68:
  %t279 = load ptr, ptr %l145, !tbaa !29
  %t280 = load i64, ptr %t279, !range !{i64 0, i64 30}
  %t282 = icmp eq i64 %t280, 14
  store i1 %t282, ptr %l146, !tbaa !21
  br label %bb69
bb69:
  %t283 = load i1, ptr %l146, !tbaa !21
  br i1 %t283, label %bb70, label %bb71
bb70:
  %t284 = load ptr, ptr %l3, !tbaa !29
  %t286 = getelementptr { i64, [4 x i64] }, ptr %t284, i32 0, i32 1
  %t287 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t286, i32 0, i32 0
  %t288 = load %"compiler/source:Span", ptr %t287
  store %"compiler/source:Span" %t288, ptr %l13
  %t290 = load ptr, ptr %l3, !tbaa !29
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t292, i32 0, i32 2
  %t294 = load i32, ptr %t293
  store i32 %t294, ptr %l14, !tbaa !23
  br label %bb72
bb71:
  br label %bb90
bb72:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l3, !tbaa !29
  %t300 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t296, ptr %t297)
  store i64 %t300, ptr %l155
  br label %bb73
bb73:
  %t301 = load i64, ptr %l155, !tbaa !24
  %t302 = icmp sge i64 %t301, 0
  br i1 %t302, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s8
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load ptr, ptr %l3, !tbaa !29
  %t308 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %t304, ptr %t305)
  store i64 %t308, ptr %l159
  br label %bb76
bb75:
  br label %bb90
bb76:
  %t309 = load i64, ptr %l159, !tbaa !24
  store i64 %t309, ptr %l15, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load i64, ptr %l15, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t313 = load %"compiler/source:Span", ptr %l2
  %t318 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v2, ptr %v4, ptr %t310, i64 %t311, { i64, ptr } %t312, %"compiler/source:Span" %t313)
  store { i64, ptr } %t318, ptr %l164
  br label %bb77
bb77:
  %t319 = load { i64, ptr }, ptr %l164, !tbaa !27
  store { i64, ptr } %t319, ptr %l16, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t324 = icmp eq i64 %t322, 0
  br i1 %t324, label %bb78, label %bb79
bb78:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t326, { i64, ptr } %t327)
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load %"compiler/source:Span", ptr %l1
  %t334 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t330, %"compiler/source:Span" %t331)
  store ptr %t334, ptr %l172
  br label %bb81
bb81:
  %t335 = load ptr, ptr %l172, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  store ptr %t335, ptr %rv
  br label %ret
bb82:
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l174, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t338, ptr %l175
  %t339 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t339, ptr %l176
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i32, ptr %l14, !tbaa !23
  %t344 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s8, ptr %t340, i32 %t341)
  store { i64, ptr } %t344, ptr %l179
  br label %bb83
bb83:
  %t345 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t346 = extractvalue { i64, ptr } %t345, 0
  %t347 = load %"compiler/source:Span", ptr %l176
  %t349 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t347, i64 %t346)
  store %"compiler/source:Span" %t349, ptr %l181
  br label %bb84
bb84:
  %t350 = load i64, ptr %l15, !tbaa !24
  store i64 %t350, ptr %l182, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t351, ptr %l183, !tbaa !27
  %t352 = icmp sge i64 0, 0
  br i1 %t352, label %bb85, label %bb86
bb85:
  %t354 = icmp sle i64 0, 1152921504606846975
  br i1 %t354, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_8ebb37c5c90e9f1b_48dd25e04e404e97)
  unreachable
bb87:
  %t356 = mul i64 0, 8
  %t357 = insertvalue { i64, ptr } undef, i64 0, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t359 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t360 = load ptr, ptr %l174, !tbaa !29
  %t361 = load %"compiler/source:Span", ptr %l175
  %t362 = load %"compiler/source:Span", ptr %l181
  %t363 = load i64, ptr %l182, !tbaa !24
  %t364 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t367 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v3, ptr %v0, ptr %v4, ptr %v4, ptr %t360, %"compiler/source:Span" %t361, %"compiler/source:Span" %t362, i64 %t363, ptr null, { i64, ptr } %t364, { i64, ptr } %t358, { i64, ptr } %t359)
  store ptr %t367, ptr %l188
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_8ebb37c5c90e9f1b_48dd25e04e404e97)
  unreachable
bb89:
  %t368 = load ptr, ptr %l188, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  store ptr %t368, ptr %rv
  br label %ret
bb90:
  %t370 = load ptr, ptr %l3, !tbaa !29
  store ptr %t370, ptr %l190, !tbaa !29
  store i1 false, ptr %l191, !tbaa !21
  %t371 = load ptr, ptr %l190, !tbaa !29
  %t372 = icmp ne ptr %t371, null
  br i1 %t372, label %bb91, label %bb92
bb91:
  %t374 = load ptr, ptr %l190, !tbaa !29
  %t375 = load i64, ptr %t374, !range !{i64 0, i64 30}
  %t377 = icmp eq i64 %t375, 14
  store i1 %t377, ptr %l191, !tbaa !21
  br label %bb92
bb92:
  %t378 = load i1, ptr %l191, !tbaa !21
  br i1 %t378, label %bb93, label %bb94
bb93:
  %t379 = load ptr, ptr %l3, !tbaa !29
  %t381 = getelementptr { i64, [4 x i64] }, ptr %t379, i32 0, i32 1
  %t382 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t381, i32 0, i32 0
  %t383 = load %"compiler/source:Span", ptr %t382
  store %"compiler/source:Span" %t383, ptr %l17
  %t385 = load ptr, ptr %l3, !tbaa !29
  %t387 = getelementptr { i64, [4 x i64] }, ptr %t385, i32 0, i32 1
  %t388 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t387, i32 0, i32 1
  %t389 = load ptr, ptr %t388
  store ptr %t389, ptr %l18, !tbaa !29
  %t391 = load ptr, ptr %l3, !tbaa !29
  %t393 = getelementptr { i64, [4 x i64] }, ptr %t391, i32 0, i32 1
  %t394 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t393, i32 0, i32 2
  %t395 = load i32, ptr %t394
  store i32 %t395, ptr %l19, !tbaa !23
  br label %bb95
bb94:
  br label %bb155
bb95:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = getelementptr %"compiler/generic:Program", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  store ptr %t403, ptr %l202, !tbaa !29
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t404)
  store ptr %t406, ptr %l204
  br label %bb96
bb96:
  %t407 = load ptr, ptr %l204, !tbaa !29
  %t409 = getelementptr %"compiler/check:frame", ptr %t407, i32 0, i32 2
  %t410 = load i64, ptr %t409, !tbaa !24
  %t411 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 1
  %t412 = load i32, ptr %t411, !tbaa !23
  %t413 = load ptr, ptr %l202, !tbaa !29
  %t416 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t413, i64 %t410, i32 %t412)
  store %"compiler/names:Ref" %t416, ptr %l208
  br label %bb97
bb97:
  %t417 = load %"compiler/names:Ref", ptr %l208
  store %"compiler/names:Ref" %t417, ptr %l20
  %t418 = getelementptr %"compiler/names:Ref", ptr %l20, i32 0, i32 0
  %t419 = load i32, ptr %t418, !range !{i32 0, i32 9}
  %t421 = trunc i64 0 to i32
  %t422 = icmp eq i32 %t419, %t421
  br i1 %t422, label %bb98, label %bb99
bb98:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load ptr, ptr %l18, !tbaa !29
  %t428 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %t424, ptr %t425)
  store i1 %t428, ptr %l214
  br label %bb100
bb99:
  store i1 false, ptr %l211, !tbaa !21
  br label %bb101
bb100:
  %t429 = load i1, ptr %l214, !tbaa !21
  %t430 = xor i1 %t429, true
  store i1 %t430, ptr %l211, !tbaa !21
  br label %bb101
bb101:
  %t432 = load i1, ptr %l211, !tbaa !21
  br i1 %t432, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s11
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l216, !tbaa !29
  %t434 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t434, ptr %l217
  %t435 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t435, ptr %l218
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i32, ptr %l19, !tbaa !23
  %t440 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s11, ptr %t436, i32 %t437)
  store { i64, ptr } %t440, ptr %l221
  br label %bb104
bb103:
  br label %bb110
bb104:
  %t441 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t442 = extractvalue { i64, ptr } %t441, 0
  %t443 = load %"compiler/source:Span", ptr %l218
  %t445 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t443, i64 %t442)
  store %"compiler/source:Span" %t445, ptr %l223
  br label %bb105
bb105:
  %t446 = load ptr, ptr %l18, !tbaa !29
  %t447 = load i32, ptr %l19, !tbaa !23
  %t448 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t449 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t450 = load %"compiler/source:Span", ptr %l2
  %t451 = load ptr, ptr %l216, !tbaa !29
  %t452 = load %"compiler/source:Span", ptr %l217
  %t453 = load %"compiler/source:Span", ptr %l223
  %t459 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderCall(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %v4, ptr %t451, %"compiler/source:Span" %t452, %"compiler/source:Span" %t453, ptr %t446, i32 %t447, { i64, ptr } %t448, { i64, ptr } %t449, %"compiler/source:Span" %t450)
  store ptr %t459, ptr %l229
  br label %bb106
bb106:
  %t460 = load ptr, ptr %l229, !tbaa !29
  store ptr %t460, ptr %l21, !tbaa !29
  %t461 = load ptr, ptr %l21, !tbaa !29
  %t463 = icmp eq ptr %t461, null
  %t465 = xor i1 %t463, true
  br i1 %t465, label %bb107, label %bb108
bb107:
  %t467 = load ptr, ptr %l21, !tbaa !29
  call void @__olang_scope_close(ptr %s11)
  store ptr %t467, ptr %rv
  br label %ret
bb108:
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s11)
  br label %bb110
bb110:
  %t470 = getelementptr %"compiler/names:Ref", ptr %l20, i32 0, i32 0
  %t471 = load i32, ptr %t470, !range !{i32 0, i32 9}
  %t473 = trunc i64 4 to i32
  %t474 = icmp eq i32 %t471, %t473
  br i1 %t474, label %bb111, label %bb112
bb111:
  %t476 = getelementptr %"compiler/names:Ref", ptr %l20, i32 0, i32 2
  %t477 = load i64, ptr %t476, !tbaa !24
  %t479 = icmp sge i64 %t477, 0
  store i1 %t479, ptr %l237, !tbaa !21
  br label %bb113
bb112:
  store i1 false, ptr %l237, !tbaa !21
  br label %bb113
bb113:
  %t481 = load i1, ptr %l237, !tbaa !21
  br i1 %t481, label %bb114, label %bb115
bb114:
  %t482 = load ptr, ptr %l0, !tbaa !29
  store ptr %t482, ptr %l240, !tbaa !29
  %t483 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t483, ptr %l241
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/check:Checker", ptr %t484, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !29
  %t488 = getelementptr %"compiler/names:Ref", ptr %l20, i32 0, i32 1
  %t489 = load i64, ptr %t488, !tbaa !24
  %t490 = getelementptr %"compiler/names:Ref", ptr %l20, i32 0, i32 2
  %t491 = load i64, ptr %t490, !tbaa !24
  %t495 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t487, i64 %t489, i64 %t491)
  store i32 %t495, ptr %l246
  br label %bb116
bb115:
  br label %bb140
bb116:
  %t496 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t497 = load ptr, ptr %l240, !tbaa !29
  %t498 = load %"compiler/source:Span", ptr %l241
  %t499 = load i32, ptr %l246, !tbaa !23
  %t501 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v2, ptr %t497, %"compiler/source:Span" %t498, i32 %t499, { i64, ptr } %t496)
  store i32 %t501, ptr %l248
  br label %bb117
bb117:
  %t502 = load i32, ptr %l248, !tbaa !23
  store i32 %t502, ptr %l22, !tbaa !23
  %t503 = load i32, ptr %l22, !tbaa !23
  %t504 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t507 = icmp eq i32 %t503, %t504
  br i1 %t507, label %bb118, label %bb119
bb118:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load %"compiler/source:Span", ptr %l1
  %t513 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t509, %"compiler/source:Span" %t510)
  store ptr %t513, ptr %l254
  br label %bb120
bb119:
  br label %bb121
bb120:
  %t514 = load ptr, ptr %l254, !tbaa !29
  store ptr %t514, ptr %rv
  br label %ret
bb121:
  %t516 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t518 = extractvalue { i64, ptr } %t516, 0
  %t520 = icmp sgt i64 %t518, 0
  br i1 %t520, label %bb122, label %bb123
bb122:
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t523 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t524 = load i32, ptr %l22, !tbaa !23
  %t528 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunendedArgs(ptr %v0, ptr %v2, ptr %t522, { i64, ptr } %t523, i32 %t524)
  store i1 %t528, ptr %l263
  br label %bb124
bb123:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb125
bb124:
  %t529 = load i1, ptr %l263, !tbaa !21
  %t530 = xor i1 %t529, true
  store i1 %t530, ptr %l259, !tbaa !21
  br label %bb125
bb125:
  %t532 = load i1, ptr %l259, !tbaa !21
  br i1 %t532, label %bb126, label %bb127
bb126:
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t534 = load %"compiler/source:Span", ptr %l1
  %t537 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t533, %"compiler/source:Span" %t534)
  store ptr %t537, ptr %l267
  br label %bb128
bb127:
  br label %bb129
bb128:
  %t538 = load ptr, ptr %l267, !tbaa !29
  store ptr %t538, ptr %rv
  br label %ret
bb129:
  %t540 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t540, 0
  %t544 = icmp sgt i64 %t542, 0
  br i1 %t544, label %bb130, label %bb131
bb130:
  %t546 = load ptr, ptr %l0, !tbaa !29
  store ptr %t546, ptr %l273, !tbaa !29
  %t547 = load i32, ptr %l22, !tbaa !23
  store i32 %t547, ptr %l274, !tbaa !23
  %t548 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t548, ptr %l275, !tbaa !27
  %t549 = getelementptr { i64, ptr }, ptr %l275, i32 0, i32 1
  %t550 = load ptr, ptr %t549, !tbaa !27
  %t551 = getelementptr ptr, ptr %t550, i64 0
  %t552 = load ptr, ptr %t551, !tbaa !39
  %t554 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t552)
  store %"compiler/source:Span" %t554, ptr %l277
  br label %bb132
bb131:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb134
bb132:
  %t555 = load ptr, ptr %l273, !tbaa !29
  %t556 = load i32, ptr %l274, !tbaa !23
  %t557 = load %"compiler/source:Span", ptr %l277
  %t558 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %t555, i32 %t556, %"compiler/source:Span" %t557)
  store i1 %t558, ptr %l278
  br label %bb133
bb133:
  %t559 = load i1, ptr %l278, !tbaa !21
  %t560 = xor i1 %t559, true
  store i1 %t560, ptr %l272, !tbaa !21
  br label %bb134
bb134:
  %t562 = load i1, ptr %l272, !tbaa !21
  br i1 %t562, label %bb135, label %bb136
bb135:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load %"compiler/source:Span", ptr %l1
  %t567 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t563, %"compiler/source:Span" %t564)
  store ptr %t567, ptr %l282
  br label %bb137
bb136:
  br label %bb138
bb137:
  %t568 = load ptr, ptr %l282, !tbaa !29
  store ptr %t568, ptr %rv
  br label %ret
bb138:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l1
  %t572 = load %"compiler/source:Span", ptr %l17
  %t573 = load i32, ptr %l22, !tbaa !23
  %t574 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t580 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v3, ptr %v4, ptr %t570, %"compiler/source:Span" %t571, %"compiler/source:Span" %t572, i32 %t573, { i64, ptr } %t574)
  store ptr %t580, ptr %l289
  br label %bb139
bb139:
  %t581 = load ptr, ptr %l289, !tbaa !29
  store ptr %t581, ptr %rv
  br label %ret
bb140:
  %t583 = getelementptr %"compiler/names:Ref", ptr %l20, i32 0, i32 0
  %t584 = load i32, ptr %t583, !range !{i32 0, i32 9}
  %t586 = trunc i64 0 to i32
  %t587 = icmp eq i32 %t584, %t586
  br i1 %t587, label %bb141, label %bb142
bb141:
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t590 = load ptr, ptr %l18, !tbaa !29
  %t593 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %t589, ptr %t590)
  store i1 %t593, ptr %l296
  br label %bb143
bb142:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb144
bb143:
  %t594 = load i1, ptr %l296, !tbaa !21
  %t595 = xor i1 %t594, true
  store i1 %t595, ptr %l293, !tbaa !21
  br label %bb144
bb144:
  %t597 = load i1, ptr %l293, !tbaa !21
  br i1 %t597, label %bb145, label %bb146
bb145:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t599 = load ptr, ptr %l18, !tbaa !29
  %t602 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t598, ptr %t599)
  store i32 %t602, ptr %l301
  br label %bb147
bb146:
  store i1 false, ptr %l298, !tbaa !21
  br label %bb148
bb147:
  %t603 = load i32, ptr %l301, !tbaa !23
  %t604 = icmp slt i32 %t603, 0
  store i1 %t604, ptr %l298, !tbaa !21
  br label %bb148
bb148:
  %t606 = load i1, ptr %l298, !tbaa !21
  br i1 %t606, label %bb149, label %bb150
bb149:
  store %olang.scope zeroinitializer, ptr %s17
  %t607 = load ptr, ptr %l0, !tbaa !29
  store ptr %t607, ptr %l303, !tbaa !29
  %t608 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t608, ptr %l304
  %t609 = load ptr, ptr %l18, !tbaa !29
  store ptr %t609, ptr %l305, !tbaa !29
  %t610 = load i32, ptr %l19, !tbaa !23
  store i32 %t610, ptr %l306, !tbaa !23
  %t611 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t611, ptr %l307
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load i32, ptr %l19, !tbaa !23
  %t616 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s17, ptr %t612, i32 %t613)
  store { i64, ptr } %t616, ptr %l310
  br label %bb151
bb150:
  br label %bb154
bb151:
  %t617 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t618 = extractvalue { i64, ptr } %t617, 0
  %t619 = load %"compiler/source:Span", ptr %l307
  %t621 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t619, i64 %t618)
  store %"compiler/source:Span" %t621, ptr %l312
  br label %bb152
bb152:
  %t622 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t623 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t624 = load %"compiler/source:Span", ptr %l2
  %t625 = load ptr, ptr %l303, !tbaa !29
  %t626 = load %"compiler/source:Span", ptr %l304
  %t627 = load ptr, ptr %l305, !tbaa !29
  %t628 = load i32, ptr %l306, !tbaa !23
  %t629 = load %"compiler/source:Span", ptr %l312
  %t633 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %v4, ptr %t625, %"compiler/source:Span" %t626, ptr %t627, i32 %t628, %"compiler/source:Span" %t629, { i64, ptr } %t622, { i64, ptr } %t623, %"compiler/source:Span" %t624)
  store ptr %t633, ptr %l316
  br label %bb153
bb153:
  %t634 = load ptr, ptr %l316, !tbaa !29
  call void @__olang_scope_close(ptr %s17)
  store ptr %t634, ptr %rv
  br label %ret
bb154:
  br label %bb160
bb155:
  br i1 true, label %bb156, label %bb157
bb156:
  br label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb160
bb159:
  call void @__olang_check_failed(ptr @olang_loc_843da5fbbb4bd33d_31eebeb3e62ff6f1)
  unreachable
bb160:
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t637 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t636, %"compiler/source:Span" %t637, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb161
bb161:
  %t640 = load ptr, ptr %l0, !tbaa !29
  %t641 = load %"compiler/source:Span", ptr %l1
  %t644 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t640, %"compiler/source:Span" %t641)
  store ptr %t644, ptr %l322
  br label %bb162
bb162:
  %t645 = load ptr, ptr %l322, !tbaa !29
  store ptr %t645, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l10 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca i1
  %l25 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 14
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 14
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l16
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 1
  %t27 = load { i64, [2 x i64] }, ptr %t26
  store { i64, [2 x i64] } %t27, ptr %l2
  %t29 = load { i64, [2 x i64] }, ptr %l2
  %t31 = extractvalue { i64, [2 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t35 = getelementptr { i64 }, ptr %t34, i32 0, i32 0
  %t36 = load i64, ptr %t35
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb11
bb10:
  br label %bb14
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  store ptr %t43, ptr %l25, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t47, i64 %t48)
  store i32 %t51, ptr %l29
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = load i32, ptr %l29, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t52, i32 %t53)
  store { i64, ptr } %t54, ptr %l30
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  %t58 = icmp sgt i64 %t56, 0
  store i1 %t58, ptr %l19, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9109cadfb541186e_2a46ab96c2b41f0a)
  unreachable
bb19:
  %t60 = load i1, ptr %l19, !tbaa !21
  store i1 %t60, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstanceWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/check:ownerAt"
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca %"compiler/check:ownerAt"
  %l14 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 13
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
  store i32 -1, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_fee5565d650674df_3b318d0e6ee4625b)
  unreachable
bb11:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  store %"compiler/check:ownerAt" %t15, ptr %l10
  br label %bb12
bb12:
  %t16 = load %"compiler/check:ownerAt", ptr %l10
  store %"compiler/check:ownerAt" %t16, ptr %l2
  %t17 = getelementptr %"compiler/check:ownerAt", ptr %l2, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t19 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t22 = icmp eq i32 %t18, %t19
  br i1 %t22, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb15
bb14:
  %t24 = getelementptr %"compiler/check:ownerAt", ptr %l2, i32 0, i32 1
  %t25 = load i1, ptr %t24, !tbaa !21
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb15
bb15:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb19
bb17:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:ownerAt", ptr %l2, i32 0, i32 0
  %t30 = load i32, ptr %t29, !tbaa !23
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t28, i32 %t30)
  store i1 %t33, ptr %l19
  br label %bb18
bb18:
  %t34 = load i1, ptr %l19, !tbaa !21
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb19
bb19:
  %t35 = load i1, ptr %l16, !tbaa !21
  br i1 %t35, label %bb20, label %bb21
bb20:
  store i32 -1, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t37 = getelementptr %"compiler/check:ownerAt", ptr %l2, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  store i32 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i1
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
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i32, ptr %l7, !tbaa !23
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t14, ptr %l8
  br label %bb2
bb2:
  %t15 = load i1, ptr %l8, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i1
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
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t14 = trunc i64 4 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l15
  br label %bb8
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l11, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 39
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

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i32
  %l30 = alloca i1
  %l38 = alloca i32
  %l40 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i32
  %l83 = alloca i32
  %l86 = alloca i1
  %l95 = alloca i64
  %l98 = alloca i64
  %l100 = alloca i64
  %l105 = alloca ptr
  %l108 = alloca i32
  %l109 = alloca i64
  %l114 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca i64
  %l123 = alloca i32
  %l130 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l19, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l21
  br label %bb3
bb3:
  %t11 = load i64, ptr %l19, !tbaa !24
  %t12 = load i64, ptr %l21, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb58
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l26
  br label %bb7
bb7:
  %t22 = load i32, ptr %l26, !tbaa !23
  store i32 %t22, ptr %l5, !tbaa !23
  %t23 = load i32, ptr %l5, !tbaa !23
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t27 = icmp eq i32 %t23, %t24
  br i1 %t27, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  %t29 = load i32, ptr %l5, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  store i1 %t33, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l30, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  br label %bb57
bb12:
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l38
  br label %bb14
bb14:
  %t46 = load i32, ptr %l38, !tbaa !23
  store i32 %t46, ptr %l6, !tbaa !23
  store i64 -1, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t47 = load ptr, ptr %lp2
  %t49 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t47)
  store i64 %t49, ptr %l40
  br label %bb15
bb15:
  %t50 = load i64, ptr %l40, !tbaa !24
  store i64 %t50, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp sgt i64 %t51, %t52
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp sgt i64 %t57, 0
  br i1 %t59, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb21
bb18:
  %t61 = load i64, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = sub i64 %t61, %t62
  %t66 = load i64, ptr %l10, !tbaa !24
  %t69 = add i64 %t65, %t66
  %t71 = sub i64 %t69, 1
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = sdiv i64 %t71, %t72
  store i64 %t75, ptr %l47, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb20
bb20:
  %t77 = load i64, ptr %l47, !tbaa !24
  store i64 %t77, ptr %l44, !tbaa !24
  br label %bb21
bb21:
  %t78 = load i64, ptr %l44, !tbaa !24
  store i64 %t78, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb22
bb22:
  %t79 = load i64, ptr %l12, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb23, label %bb24
bb23:
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = mul i64 %t88, %t89
  %t95 = add i64 %t87, %t92
  store i64 %t95, ptr %l13, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  store ptr %t102, ptr %l67, !tbaa !29
  %t103 = load ptr, ptr %lp2
  %t104 = load i64, ptr %l13, !tbaa !24
  %t107 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t103, i64 %t104)
  store i32 %t107, ptr %l70
  br label %bb26
bb26:
  %t108 = load ptr, ptr %l67, !tbaa !29
  %t109 = load i32, ptr %l70, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t108, i32 %t109)
  store i32 %t110, ptr %l71
  br label %bb27
bb27:
  %t111 = load i32, ptr %l6, !tbaa !23
  %t112 = load i32, ptr %l71, !tbaa !23
  %t114 = icmp eq i32 %t112, %t111
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t116 = load i64, ptr %l13, !tbaa !24
  store i64 %t116, ptr %l7, !tbaa !24
  br label %bb30
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t118 = load i64, ptr %l12, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l12, !tbaa !24
  br label %bb22
bb32:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t124 = icmp slt i64 %t122, 0
  br i1 %t124, label %bb33, label %bb34
bb33:
  %t126 = load ptr, ptr %lp2
  %t127 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t126, i32 %t127)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb57
bb36:
  %t130 = load ptr, ptr %lp2
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t130, i64 %t131)
  store i32 %t134, ptr %l83
  br label %bb37
bb37:
  %t135 = load i32, ptr %l6, !tbaa !23
  %t136 = load i32, ptr %l83, !tbaa !23
  %t138 = icmp eq i32 %t136, %t135
  br i1 %t138, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb40
bb39:
  %t140 = load i32, ptr %l5, !tbaa !23
  %t141 = load i32, ptr %l6, !tbaa !23
  %t144 = icmp eq i32 %t140, %t141
  store i1 %t144, ptr %l86, !tbaa !21
  br label %bb40
bb40:
  %t146 = load i1, ptr %l86, !tbaa !21
  br i1 %t146, label %bb41, label %bb42
bb41:
  %t147 = load ptr, ptr %lp2
  %t148 = load i64, ptr %l7, !tbaa !24
  %t149 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t147, i64 %t148, i32 %t149)
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb57
bb44:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i32, ptr %l6, !tbaa !23
  %t157 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %t153, i32 %t154)
  store i64 %t157, ptr %l95
  br label %bb45
bb45:
  %t158 = load i64, ptr %l95, !tbaa !24
  store i64 %t158, ptr %l14, !tbaa !24
  %t159 = load i64, ptr %l14, !tbaa !24
  %t161 = icmp sge i64 %t159, 64
  br i1 %t161, label %bb46, label %bb47
bb46:
  %t163 = sub i64 0, 1
  store i64 %t163, ptr %l98, !tbaa !65
  br label %bb48
bb47:
  %t165 = load i64, ptr %l14, !tbaa !24
  store i64 %t165, ptr %l100, !tbaa !24
  %t166 = load i64, ptr %l100, !tbaa !24
  %t167 = load i64, ptr %l100, !tbaa !24
  %t168 = shl i64 1, %t167
  %t170 = sub i64 %t168, 1
  store i64 %t170, ptr %l98, !tbaa !65
  br label %bb48
bb48:
  %t172 = load i64, ptr %l98, !tbaa !65
  store i64 %t172, ptr %l15, !tbaa !65
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/check:Checker", ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Program", ptr %t176, i32 0, i32 2
  store ptr %t178, ptr %l105, !tbaa !29
  %t179 = load ptr, ptr %lp2
  %t180 = load i64, ptr %l7, !tbaa !24
  %t183 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t179, i64 %t180)
  store i32 %t183, ptr %l108
  br label %bb49
bb49:
  %t184 = load ptr, ptr %l105, !tbaa !29
  %t185 = load i32, ptr %l108, !tbaa !23
  %t186 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t184, i32 %t185)
  store i64 %t186, ptr %l109
  br label %bb50
bb50:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l5, !tbaa !23
  %t196 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t192, i32 %t193)
  store i64 %t196, ptr %l114
  br label %bb51
bb51:
  %t197 = load i64, ptr %l109, !tbaa !65
  %t198 = load i64, ptr %l114, !tbaa !65
  %t199 = or i64 %t197, %t198
  %t200 = load i64, ptr %l15, !tbaa !65
  %t203 = and i64 %t199, %t200
  store i64 %t203, ptr %l16, !tbaa !65
  %t205 = load ptr, ptr %lp2
  store ptr %t205, ptr %l118, !tbaa !29
  %t206 = load i64, ptr %l7, !tbaa !24
  store i64 %t206, ptr %l119, !tbaa !24
  %t207 = load i64, ptr %l16, !tbaa !65
  %t208 = load i64, ptr %l15, !tbaa !65
  %t211 = icmp eq i64 %t207, %t208
  br i1 %t211, label %bb52, label %bb53
bb52:
  %t213 = load i32, ptr %l6, !tbaa !23
  store i32 %t213, ptr %l123, !tbaa !23
  br label %bb55
bb53:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/generic:Program", ptr %t218, i32 0, i32 2
  %t221 = load i32, ptr %l6, !tbaa !23
  %t222 = load i64, ptr %l16, !tbaa !65
  %t226 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t220, i32 %t221, i64 %t222)
  store i32 %t226, ptr %l130
  br label %bb54
bb54:
  %t227 = load i32, ptr %l130, !tbaa !23
  store i32 %t227, ptr %l123, !tbaa !23
  br label %bb55
bb55:
  %t228 = load ptr, ptr %l118, !tbaa !29
  %t229 = load i64, ptr %l119, !tbaa !24
  %t230 = load i32, ptr %l123, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t228, i64 %t229, i32 %t230)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t231 = load i64, ptr %l4, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l4, !tbaa !24
  br label %bb2
bb58:
  %t235 = load ptr, ptr %lp2
  %t236 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t235
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i1
  %l21 = alloca i1
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca %"compiler/names:Ref"
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
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l2
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t23, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t29, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp ne i64 %t35, 1
  br i1 %t37, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t43 = icmp sgt i64 %t41, 0
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l28, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t54)
  store ptr %t56, ptr %l30
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t59 = getelementptr %"compiler/check:frame", ptr %t57, i32 0, i32 2
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load ptr, ptr %l28, !tbaa !29
  %t66 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t63, i64 %t60, i32 %t62)
  store %"compiler/names:Ref" %t66, ptr %l34
  br label %bb16
bb16:
  %t67 = getelementptr %"compiler/names:Ref", ptr %l34, i32 0, i32 0
  %t68 = load i32, ptr %t67, !range !{i32 0, i32 9}
  %t70 = trunc i64 8 to i32
  %t71 = icmp eq i32 %t68, %t70
  store i1 %t71, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_968ede9ca4457b20_d4cd8e7344b6f50c)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoreturnSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l24 = alloca %"compiler/source:Span"
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
  %t9 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d22, i32 0, i32 1) })
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb3, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l9
  br label %bb2
bb2:
  %t14 = load i64, ptr %l9, !tbaa !24
  store i64 %t14, ptr %l7, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l7, !tbaa !24
  store i64 %t15, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t16, 0
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load %"compiler/source:Span", ptr %l1
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/source:Span" %t20, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t22 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t24, 2
  %t28 = trunc i64 %t26 to i32
  %t31 = add i32 %t23, %t28
  %t32 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 10
  %t38 = trunc i64 %t36 to i32
  %t41 = add i32 %t33, %t38
  %t44 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t31, i32 %t41)
  store %"compiler/source:Span" %t44, ptr %l24
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load %"compiler/source:Span", ptr %l24
  store %"compiler/source:Span" %t45, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamsOn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/generic:Binding"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l27 = alloca i64
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca %"compiler/generic:Binding"
  %l42 = alloca i1
  %l47 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i32
  %l82 = alloca { i64, ptr }
  %l85 = alloca i32
  %l90 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l16, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l19, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t16, i64 %t17)
  store i32 %t20, ptr %l23
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l19, !tbaa !29
  %t22 = load i32, ptr %l23, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t23, ptr %l24
  br label %bb2
bb2:
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = load i32, ptr %l24, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t26, ptr %l25
  br label %bb3
bb3:
  %t27 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l27, !tbaa !24
  %t31 = load i64, ptr %l27, !tbaa !24
  %t32 = icmp sge i64 %t31, 0
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = load i64, ptr %l27, !tbaa !24
  %t35 = icmp sle i64 %t34, 2305843009213693951
  br i1 %t35, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_aac959024b9d6f15_55461456e770b1d1)
  unreachable
bb6:
  %t37 = load i64, ptr %l27, !tbaa !24
  %t38 = mul i64 %t37, 4
  %t39 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t42 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t42, ptr %lp4
  %t44 = load ptr, ptr %lp4
  store { i64, ptr } %t41, ptr %t44, !tbaa !27
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t45)
  store i64 %t47, ptr %l32
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_aac959024b9d6f15_55461456e770b1d1)
  unreachable
bb8:
  %t48 = load i64, ptr %l32, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l36
  br label %bb9
bb9:
  %t57 = load i64, ptr %l36, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t58, i64 %t59)
  store %"compiler/generic:Binding" %t62, ptr %l39
  br label %bb10
bb10:
  %t63 = load %"compiler/generic:Binding", ptr %l39
  store %"compiler/generic:Binding" %t63, ptr %l7
  %t64 = load i64, ptr %l6, !tbaa !24
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t72 = icmp sgt i64 %t70, 0
  store i1 %t72, ptr %l42, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb13
bb13:
  %t74 = load i1, ptr %l42, !tbaa !21
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t76, ptr %l47, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i32, ptr %t78, i64 0
  %t80 = load i32, ptr %t79, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %s0, ptr %t75, i32 %t80, i32 %a2, ptr %l7, i1 false, i1 true)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l8, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  store i64 %t88, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb18, label %bb19
bb18:
  %t96 = load i64, ptr %l10, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb23
bb20:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l10, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l59, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb22
bb22:
  %t116 = load i64, ptr %l59, !tbaa !24
  store i64 %t116, ptr %l56, !tbaa !24
  br label %bb23
bb23:
  %t117 = load i64, ptr %l56, !tbaa !24
  store i64 %t117, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb24
bb24:
  %t118 = load i64, ptr %l12, !tbaa !24
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb25, label %bb26
bb25:
  br label %bb34
bb26:
  br label %bb27
bb27:
  %t126 = load i64, ptr %l8, !tbaa !24
  %t127 = load i64, ptr %l12, !tbaa !24
  %t128 = load i64, ptr %l10, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  store i64 %t134, ptr %l13, !tbaa !24
  %t136 = load i64, ptr %l13, !tbaa !24
  store i64 %t136, ptr %l77, !tbaa !24
  %t137 = load i64, ptr %l6, !tbaa !24
  %t139 = icmp eq i64 %t137, 0
  br i1 %t139, label %bb28, label %bb29
bb28:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t142, ptr %l82, !tbaa !27
  %t143 = load i64, ptr %l13, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i32, ptr %t146, i64 %t143
  %t148 = load i32, ptr %t147, !tbaa !33
  %t151 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t141, i32 %t148)
  store i32 %t151, ptr %l85
  br label %bb30
bb29:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t154 = load i64, ptr %l13, !tbaa !24
  %t159 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v0, ptr %s0, ptr %t152, { i64, ptr } %t153, i64 %t154, ptr %l7)
  store i32 %t159, ptr %l90
  br label %bb31
bb30:
  %t160 = load i32, ptr %l85, !tbaa !23
  store i32 %t160, ptr %l80, !tbaa !23
  br label %bb32
bb31:
  %t161 = load i32, ptr %l90, !tbaa !23
  store i32 %t161, ptr %l80, !tbaa !23
  br label %bb32
bb32:
  %t162 = load i32, ptr %l80, !tbaa !23
  %t163 = load ptr, ptr %lp4
  %t164 = load i64, ptr %l77, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i32, ptr %t166, i64 %t164
  store i32 %t162, ptr %t167, !tbaa !33
  br label %bb33
bb33:
  %t168 = load i64, ptr %l12, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l12, !tbaa !24
  br label %bb24
bb34:
  %t172 = load ptr, ptr %lp4
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t173, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i32
  %l21 = alloca i64
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca i1
  %l86 = alloca i32
  %l90 = alloca i64
  %l97 = alloca ptr
  %l100 = alloca i32
  %l102 = alloca i1
  %l107 = alloca i1
  %l111 = alloca ptr
  %l117 = alloca ptr
  %l118 = alloca ptr
  %l119 = alloca i1
  %l130 = alloca i32
  %l134 = alloca i64
  %l146 = alloca ptr
  %l149 = alloca i32
  %l161 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca ptr
  %l171 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca ptr
  %l184 = alloca i1
  %l201 = alloca ptr
  %l202 = alloca ptr
  %l203 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca %"compiler/source:Span"
  %l210 = alloca %"compiler/diagmsg:Msg"
  %l211 = alloca i64
  %l215 = alloca ptr
  %l216 = alloca ptr
  %l217 = alloca i1
  %l225 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t2 = load ptr, ptr %l29, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l29, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l30, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l30, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span" }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l6
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load %"compiler/source:Span", ptr %l6
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t16, %"compiler/source:Span" %t17, i32 %t18, i64 1)
  store ptr %t22, ptr %l38
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l38, !tbaa !29
  store ptr %t23, ptr %rv
  br label %ret
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t25 = load ptr, ptr %l39, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l39, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 9}
  %t31 = icmp eq i64 %t29, 5
  store i1 %t31, ptr %l40, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l40, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t35, i32 0, i32 0
  %t37 = load %"compiler/source:Span", ptr %t36
  store %"compiler/source:Span" %t37, ptr %l7
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l8, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t47, i32 0, i32 2
  %t49 = load i32, ptr %t48
  store i32 %t49, ptr %l9, !tbaa !23
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t53, i32 0, i32 3
  %t55 = load %"compiler/source:Span", ptr %t54
  store %"compiler/source:Span" %t55, ptr %l10
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l7
  %t59 = load ptr, ptr %l8, !tbaa !29
  %t60 = load i32, ptr %l9, !tbaa !23
  %t61 = load %"compiler/source:Span", ptr %l10
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load i32, ptr %l3, !tbaa !23
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t57, %"compiler/source:Span" %t58, ptr %t59, i32 %t60, %"compiler/source:Span" %t61, ptr %t62, i32 %t63, ptr %t64)
  store ptr %t73, ptr %l59
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l59, !tbaa !29
  store ptr %t74, ptr %rv
  br label %ret
bb14:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t76 = load ptr, ptr %l60, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb15, label %bb16
bb15:
  %t79 = load ptr, ptr %l60, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 9}
  %t82 = icmp eq i64 %t80, 3
  store i1 %t82, ptr %l61, !tbaa !21
  br label %bb16
bb16:
  %t83 = load i1, ptr %l61, !tbaa !21
  br i1 %t83, label %bb17, label %bb18
bb17:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32 }, ptr %t86, i32 0, i32 0
  %t88 = load %"compiler/source:Span", ptr %t87
  store %"compiler/source:Span" %t88, ptr %l11
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", i32 }, ptr %t92, i32 0, i32 1
  %t94 = load i32, ptr %t93
  store i32 %t94, ptr %l12, !tbaa !23
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l11
  %t98 = load i32, ptr %l12, !tbaa !23
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t100 = load i32, ptr %l3, !tbaa !23
  %t101 = load ptr, ptr %l4, !tbaa !29
  %t102 = load i64, ptr %l5, !tbaa !24
  %t110 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindPattern(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t96, %"compiler/source:Span" %t97, i32 %t98, ptr %t99, i32 %t100, ptr %t101, i64 %t102)
  store ptr %t110, ptr %l75
  br label %bb20
bb20:
  %t111 = load ptr, ptr %l75, !tbaa !29
  store ptr %t111, ptr %rv
  br label %ret
bb21:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t113 = load ptr, ptr %l76, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb22, label %bb23
bb22:
  %t116 = load ptr, ptr %l76, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 9}
  %t119 = icmp eq i64 %t117, 1
  store i1 %t119, ptr %l77, !tbaa !21
  br label %bb23
bb23:
  %t120 = load i1, ptr %l77, !tbaa !21
  br i1 %t120, label %bb24, label %bb25
bb24:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr }, ptr %t123, i32 0, i32 0
  %t125 = load %"compiler/source:Span", ptr %t124
  store %"compiler/source:Span" %t125, ptr %l13
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", ptr }, ptr %t129, i32 0, i32 1
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l14, !tbaa !29
  br label %bb26
bb25:
  br label %bb43
bb26:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l3, !tbaa !23
  %t137 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l86
  br label %bb27
bb27:
  %t138 = load i32, ptr %l86, !tbaa !23
  store i32 %t138, ptr %l15, !tbaa !23
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l14, !tbaa !29
  %t141 = load i32, ptr %l15, !tbaa !23
  %t145 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t139, ptr %t140, i32 %t141)
  store i64 %t145, ptr %l90
  br label %bb28
bb28:
  %t146 = load i64, ptr %l90, !tbaa !24
  store i64 %t146, ptr %l16, !tbaa !24
  %t147 = load i64, ptr %l16, !tbaa !24
  %t149 = icmp sge i64 %t147, 0
  br i1 %t149, label %bb29, label %bb30
bb29:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load %"compiler/source:Span", ptr %l13
  %t153 = load ptr, ptr %l2, !tbaa !29
  %t154 = load i64, ptr %l16, !tbaa !24
  %t159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v2, ptr %v4, ptr %t151, %"compiler/source:Span" %t152, ptr %t153, i64 %t154)
  store ptr %t159, ptr %l97
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t160 = load ptr, ptr %l97, !tbaa !29
  store ptr %t160, ptr %rv
  br label %ret
bb32:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l14, !tbaa !29
  %t165 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t161, ptr %t162)
  store i32 %t165, ptr %l100
  br label %bb33
bb33:
  %t166 = load i32, ptr %l100, !tbaa !23
  %t167 = icmp slt i32 %t166, 0
  br i1 %t167, label %bb34, label %bb35
bb34:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l13
  %t171 = load ptr, ptr %l14, !tbaa !29
  %t172 = load i32, ptr %l15, !tbaa !23
  %t177 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCasePath(ptr %v0, ptr %v1, ptr %t169, %"compiler/source:Span" %t170, ptr %t171, i32 %t172)
  store i1 %t177, ptr %l107
  br label %bb36
bb35:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb37
bb36:
  %t178 = load i1, ptr %l107, !tbaa !21
  store i1 %t178, ptr %l102, !tbaa !21
  br label %bb37
bb37:
  %t179 = load i1, ptr %l102, !tbaa !21
  br i1 %t179, label %bb38, label %bb39
bb38:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load %"compiler/source:Span", ptr %l13
  %t182 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t186 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t180, %"compiler/source:Span" %t181, i32 %t182, i64 0)
  store ptr %t186, ptr %l111
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t187 = load ptr, ptr %l111, !tbaa !29
  store ptr %t187, ptr %rv
  br label %ret
bb41:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load %"compiler/source:Span", ptr %l13
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t191 = load ptr, ptr %l14, !tbaa !29
  %t192 = load i32, ptr %l3, !tbaa !23
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v2, ptr %v1, ptr %v4, ptr %t188, %"compiler/source:Span" %t189, ptr %t190, ptr %t191, i32 %t192)
  store ptr %t198, ptr %l117
  br label %bb42
bb42:
  %t199 = load ptr, ptr %l117, !tbaa !29
  store ptr %t199, ptr %rv
  br label %ret
bb43:
  %t200 = load ptr, ptr %l1, !tbaa !29
  store ptr %t200, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t201 = load ptr, ptr %l118, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb44, label %bb45
bb44:
  %t204 = load ptr, ptr %l118, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 9}
  %t207 = icmp eq i64 %t205, 2
  store i1 %t207, ptr %l119, !tbaa !21
  br label %bb45
bb45:
  %t208 = load i1, ptr %l119, !tbaa !21
  br i1 %t208, label %bb46, label %bb47
bb46:
  %t209 = load ptr, ptr %l1, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t211, i32 0, i32 0
  %t213 = load %"compiler/source:Span", ptr %t212
  store %"compiler/source:Span" %t213, ptr %l17
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t217, i32 0, i32 1
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l18, !tbaa !29
  %t221 = load ptr, ptr %l1, !tbaa !29
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t223, i32 0, i32 2
  %t225 = load { i64, ptr }, ptr %t224
  store { i64, ptr } %t225, ptr %l19, !tbaa !27
  br label %bb48
bb47:
  br label %bb61
bb48:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load i32, ptr %l3, !tbaa !23
  %t231 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t227, i32 %t228)
  store i32 %t231, ptr %l130
  br label %bb49
bb49:
  %t232 = load i32, ptr %l130, !tbaa !23
  store i32 %t232, ptr %l20, !tbaa !23
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load ptr, ptr %l18, !tbaa !29
  %t235 = load i32, ptr %l20, !tbaa !23
  %t239 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t233, ptr %t234, i32 %t235)
  store i64 %t239, ptr %l134
  br label %bb50
bb50:
  %t240 = load i64, ptr %l134, !tbaa !24
  store i64 %t240, ptr %l21, !tbaa !24
  %t241 = load i64, ptr %l21, !tbaa !24
  %t243 = icmp sge i64 %t241, 0
  br i1 %t243, label %bb51, label %bb52
bb51:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l17
  %t247 = load ptr, ptr %l18, !tbaa !29
  %t248 = load i64, ptr %l21, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t250 = load ptr, ptr %l2, !tbaa !29
  %t251 = load i32, ptr %l3, !tbaa !23
  %t252 = load ptr, ptr %l4, !tbaa !29
  %t253 = load i64, ptr %l5, !tbaa !24
  %t263 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t245, %"compiler/source:Span" %t246, ptr %t247, i64 %t248, { i64, ptr } %t249, ptr %t250, i32 %t251, ptr %t252, i64 %t253)
  store ptr %t263, ptr %l146
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t264 = load ptr, ptr %l146, !tbaa !29
  store ptr %t264, ptr %rv
  br label %ret
bb54:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load ptr, ptr %l18, !tbaa !29
  %t269 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %t265, ptr %t266)
  store i32 %t269, ptr %l149
  br label %bb55
bb55:
  %t270 = load i32, ptr %l149, !tbaa !23
  store i32 %t270, ptr %l22, !tbaa !23
  %t271 = load i32, ptr %l22, !tbaa !23
  %t273 = icmp sge i32 %t271, 0
  br i1 %t273, label %bb56, label %bb57
bb56:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l17
  %t277 = load ptr, ptr %l18, !tbaa !29
  %t278 = load i32, ptr %l22, !tbaa !23
  %t279 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t280 = load ptr, ptr %l2, !tbaa !29
  %t281 = load i32, ptr %l3, !tbaa !23
  %t282 = load ptr, ptr %l4, !tbaa !29
  %t283 = load i64, ptr %l5, !tbaa !24
  %t293 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t275, %"compiler/source:Span" %t276, ptr %t277, i32 %t278, { i64, ptr } %t279, ptr %t280, i32 %t281, ptr %t282, i64 %t283)
  store ptr %t293, ptr %l161
  br label %bb58
bb57:
  br label %bb59
bb58:
  %t294 = load ptr, ptr %l161, !tbaa !29
  store ptr %t294, ptr %rv
  br label %ret
bb59:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load %"compiler/source:Span", ptr %l17
  %t297 = load ptr, ptr %l18, !tbaa !29
  %t298 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t299 = load ptr, ptr %l2, !tbaa !29
  %t300 = load i32, ptr %l3, !tbaa !23
  %t301 = load i32, ptr %l20, !tbaa !23
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v4, ptr %t295, %"compiler/source:Span" %t296, ptr %t297, { i64, ptr } %t298, ptr %t299, i32 %t300, i32 %t301)
  store ptr %t309, ptr %l169
  br label %bb60
bb60:
  %t310 = load ptr, ptr %l169, !tbaa !29
  store ptr %t310, ptr %rv
  br label %ret
bb61:
  %t311 = load ptr, ptr %l1, !tbaa !29
  store ptr %t311, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t312 = load ptr, ptr %l170, !tbaa !29
  %t313 = icmp ne ptr %t312, null
  br i1 %t313, label %bb62, label %bb63
bb62:
  %t315 = load ptr, ptr %l170, !tbaa !29
  %t316 = load i64, ptr %t315, !range !{i64 0, i64 9}
  %t318 = icmp eq i64 %t316, 4
  store i1 %t318, ptr %l171, !tbaa !21
  br label %bb63
bb63:
  %t319 = load i1, ptr %l171, !tbaa !21
  br i1 %t319, label %bb64, label %bb65
bb64:
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = getelementptr { i64, [4 x i64] }, ptr %t320, i32 0, i32 1
  %t323 = getelementptr { %"compiler/source:Span", ptr }, ptr %t322, i32 0, i32 1
  %t324 = load ptr, ptr %t323
  store ptr %t324, ptr %l23, !tbaa !29
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load ptr, ptr %l23, !tbaa !29
  %t328 = load ptr, ptr %l2, !tbaa !29
  %t329 = load i32, ptr %l3, !tbaa !23
  %t330 = load ptr, ptr %l4, !tbaa !29
  %t331 = load i64, ptr %l5, !tbaa !24
  %t338 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t326, ptr %t327, ptr %t328, i32 %t329, ptr %t330, i64 %t331, i1 true)
  store ptr %t338, ptr %l182
  br label %bb67
bb67:
  %t339 = load ptr, ptr %l182, !tbaa !29
  store ptr %t339, ptr %rv
  br label %ret
bb68:
  %t340 = load ptr, ptr %l1, !tbaa !29
  store ptr %t340, ptr %l183, !tbaa !29
  store i1 false, ptr %l184, !tbaa !21
  %t341 = load ptr, ptr %l183, !tbaa !29
  %t342 = icmp ne ptr %t341, null
  br i1 %t342, label %bb69, label %bb70
bb69:
  %t344 = load ptr, ptr %l183, !tbaa !29
  %t345 = load i64, ptr %t344, !range !{i64 0, i64 9}
  %t347 = icmp eq i64 %t345, 6
  store i1 %t347, ptr %l184, !tbaa !21
  br label %bb70
bb70:
  %t348 = load i1, ptr %l184, !tbaa !21
  br i1 %t348, label %bb71, label %bb72
bb71:
  %t349 = load ptr, ptr %l1, !tbaa !29
  %t351 = getelementptr { i64, [4 x i64] }, ptr %t349, i32 0, i32 1
  %t352 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t351, i32 0, i32 0
  %t353 = load %"compiler/source:Span", ptr %t352
  store %"compiler/source:Span" %t353, ptr %l24
  %t355 = load ptr, ptr %l1, !tbaa !29
  %t357 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 1
  %t358 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t357, i32 0, i32 1
  %t359 = load ptr, ptr %t358
  store ptr %t359, ptr %l25, !tbaa !29
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = getelementptr { i64, [4 x i64] }, ptr %t361, i32 0, i32 1
  %t364 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t363, i32 0, i32 2
  %t365 = load { i64, ptr }, ptr %t364
  store { i64, ptr } %t365, ptr %l26, !tbaa !27
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load %"compiler/source:Span", ptr %l24
  %t369 = load ptr, ptr %l25, !tbaa !29
  %t370 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t371 = load ptr, ptr %l2, !tbaa !29
  %t372 = load i32, ptr %l3, !tbaa !23
  %t373 = load ptr, ptr %l4, !tbaa !29
  %t374 = load i64, ptr %l5, !tbaa !24
  %t383 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t367, %"compiler/source:Span" %t368, ptr %t369, { i64, ptr } %t370, ptr %t371, i32 %t372, ptr %t373, i64 %t374)
  store ptr %t383, ptr %l201
  br label %bb74
bb74:
  %t384 = load ptr, ptr %l201, !tbaa !29
  store ptr %t384, ptr %rv
  br label %ret
bb75:
  %t385 = load ptr, ptr %l1, !tbaa !29
  store ptr %t385, ptr %l202, !tbaa !29
  store i1 false, ptr %l203, !tbaa !21
  %t386 = load ptr, ptr %l202, !tbaa !29
  %t387 = icmp ne ptr %t386, null
  br i1 %t387, label %bb76, label %bb77
bb76:
  %t389 = load ptr, ptr %l202, !tbaa !29
  %t390 = load i64, ptr %t389, !range !{i64 0, i64 9}
  %t392 = icmp eq i64 %t390, 7
  store i1 %t392, ptr %l203, !tbaa !21
  br label %bb77
bb77:
  %t393 = load i1, ptr %l203, !tbaa !21
  br i1 %t393, label %bb78, label %bb79
bb78:
  %t394 = load ptr, ptr %l1, !tbaa !29
  %t396 = getelementptr { i64, [4 x i64] }, ptr %t394, i32 0, i32 1
  %t397 = getelementptr { %"compiler/source:Span", i32 }, ptr %t396, i32 0, i32 0
  %t398 = load %"compiler/source:Span", ptr %t397
  store %"compiler/source:Span" %t398, ptr %l27
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l208, !tbaa !29
  %t401 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t401, ptr %l209
  %t402 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestNotHere(ptr %v0)
  store %"compiler/diagmsg:Msg" %t402, ptr %l210
  br label %bb81
bb81:
  %t403 = load ptr, ptr %l208, !tbaa !29
  %t404 = load %"compiler/source:Span", ptr %l209
  %t405 = load %"compiler/diagmsg:Msg", ptr %l210
  %t406 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t403, %"compiler/source:Span" %t404, %"compiler/diagmsg:Msg" %t405)
  store i64 %t406, ptr %l211
  br label %bb82
bb82:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load %"compiler/source:Span", ptr %l27
  %t409 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t413 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t407, %"compiler/source:Span" %t408, i32 %t409, i64 0)
  store ptr %t413, ptr %l215
  br label %bb83
bb83:
  %t414 = load ptr, ptr %l215, !tbaa !29
  store ptr %t414, ptr %rv
  br label %ret
bb84:
  %t415 = load ptr, ptr %l1, !tbaa !29
  store ptr %t415, ptr %l216, !tbaa !29
  store i1 false, ptr %l217, !tbaa !21
  %t416 = load ptr, ptr %l216, !tbaa !29
  %t417 = icmp ne ptr %t416, null
  br i1 %t417, label %bb85, label %bb86
bb85:
  %t419 = load ptr, ptr %l216, !tbaa !29
  %t420 = load i64, ptr %t419, !range !{i64 0, i64 9}
  %t422 = icmp eq i64 %t420, 8
  store i1 %t422, ptr %l217, !tbaa !21
  br label %bb86
bb86:
  %t423 = load i1, ptr %l217, !tbaa !21
  br i1 %t423, label %bb87, label %bb88
bb87:
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr { i64, [4 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t426, i32 0, i32 0
  %t428 = load %"compiler/source:Span", ptr %t427
  store %"compiler/source:Span" %t428, ptr %l28
  br label %bb89
bb88:
  br label %bb91
bb89:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load %"compiler/source:Span", ptr %l28
  %t432 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t436 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t430, %"compiler/source:Span" %t431, i32 %t432, i64 0)
  store ptr %t436, ptr %l225
  br label %bb90
bb90:
  %t437 = load ptr, ptr %l225, !tbaa !29
  store ptr %t437, ptr %rv
  br label %ret
bb91:
  call void @__olang_check_failed(ptr @olang_loc_2bba12d772c132ef_de888473626934f3)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/generic:Desc" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/generic:Desc"
  %l4 = alloca { i32, { i64, ptr } }
  %l5 = alloca i32
  %l6 = alloca %"compiler/generic:Desc"
  %l8 = alloca i32
  %l12 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i64
  %l29 = alloca ptr
  %l33 = alloca { i32, { i64, ptr } }
  %l38 = alloca %"compiler/generic:Desc"
  %l45 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i64
  %l58 = alloca ptr
  %l67 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/generic:Desc" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/generic:Desc", ptr %l2
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamDefault(ptr %v0, ptr %s0, ptr %t1, %"compiler/generic:Desc" %t2)
  store ptr %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l12, !tbaa !29
  %t9 = icmp eq ptr %t6, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l15, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l16
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/generic:Desc", ptr %l2
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %v0, ptr %t13, %"compiler/generic:Desc" %t14)
  store { i64, ptr } %t17, ptr %l19
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t18 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  %t20 = extractvalue { i64, ptr } %t18, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l20, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t25, i32 %t27)
  store { i64, ptr } %t30, ptr %l23
  br label %bb5
bb5:
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t38 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoDefault(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t38, { i64, ptr } %t37)
  store %"compiler/diagmsg:Msg" %t40, ptr %l25
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l15, !tbaa !29
  %t42 = load %"compiler/source:Span", ptr %l16
  %t43 = load %"compiler/diagmsg:Msg", ptr %l25
  %t44 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t41, %"compiler/source:Span" %t42, %"compiler/diagmsg:Msg" %t43)
  store i64 %t44, ptr %l26
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l1
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t45, %"compiler/source:Span" %t46)
  store ptr %t49, ptr %l29
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load ptr, ptr %l29, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
bb9:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load %"compiler/generic:Desc", ptr %l2
  %t58 = call { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %s0, ptr %t54, %"compiler/generic:Desc" %t55)
  store { i32, { i64, ptr } } %t58, ptr %l33
  br label %bb10
bb10:
  %t59 = load { i32, { i64, ptr } }, ptr %l33
  store { i32, { i64, ptr } } %t59, ptr %l4
  %t60 = getelementptr { i32, { i64, ptr } }, ptr %l4, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  store i32 %t61, ptr %l5, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 1
  %t68 = load i32, ptr %t67, !tbaa !23
  %t71 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t66, i32 %t68)
  store %"compiler/generic:Desc" %t71, ptr %l38
  br label %bb11
bb11:
  %t72 = load %"compiler/generic:Desc", ptr %l38
  store %"compiler/generic:Desc" %t72, ptr %l6
  %t73 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 0
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t78 = icmp eq i64 %t74, %t75
  br i1 %t78, label %bb12, label %bb13
bb12:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 2
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t83, i64 %t85)
  store ptr %t88, ptr %l45
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t89 = load ptr, ptr %l45, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Func", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  %t96 = xor i1 %t94, true
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l50, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t99, ptr %l51
  %t100 = getelementptr %"compiler/generic:Desc", ptr %l6, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  store i64 %t101, ptr %l52, !tbaa !24
  %t102 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 3
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l53, !tbaa !24
  br i1 %t96, label %bb15, label %bb16
bb15:
  store i64 1, ptr %l55, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb17
bb17:
  %t106 = load i64, ptr %l53, !tbaa !24
  %t107 = load i64, ptr %l55, !tbaa !24
  %t108 = add i64 %t106, %t107
  %t109 = load i32, ptr %l5, !tbaa !23
  %t110 = load ptr, ptr %l50, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l51
  %t112 = load i64, ptr %l52, !tbaa !24
  %t115 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v1, ptr %t110, %"compiler/source:Span" %t111, i64 %t112, i64 %t108, i1 false, i32 %t109, i32 0)
  store ptr %t115, ptr %l58
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t116 = load ptr, ptr %l58, !tbaa !29
  store ptr %t116, ptr %rv
  br label %ret
bb19:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 23
  %t120 = load i32, ptr %t119, !tbaa !23
  store i32 %t120, ptr %l8, !tbaa !23
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 1
  %t124 = load i32, ptr %t123, !tbaa !23
  %t127 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 23
  store i32 %t124, ptr %t127, !tbaa !23
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l1
  %t130 = getelementptr %"compiler/generic:Desc", ptr %l2, i32 0, i32 3
  %t131 = load i64, ptr %t130, !tbaa !24
  %t132 = load i32, ptr %l5, !tbaa !23
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorDefault(ptr %v0, ptr %v1, ptr %t128, %"compiler/source:Span" %t129, i64 %t131, i32 %t132)
  store ptr %t137, ptr %l67
  br label %bb20
bb20:
  %t138 = load ptr, ptr %l67, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load i32, ptr %l8, !tbaa !23
  %t143 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 23
  store i32 %t140, ptr %t143, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store ptr %t138, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca ptr
  %l29 = alloca i1
  %l37 = alloca i1
  %l47 = alloca i1
  %l48 = alloca ptr
  %l59 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Arm", ptr %t26, i32 0, i32 4
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Arm", ptr %t36, i32 0, i32 4
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  br i1 %t41, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_9ffee6a4e1a43bc2_8f88457b20f170fe)
  unreachable
bb8:
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Arm", ptr %t43, i32 0, i32 4
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t47, ptr %t46)
  store i1 %t49, ptr %l29
  br label %bb10
bb10:
  %t50 = load i1, ptr %l29, !tbaa !21
  store i1 %t50, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l22, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb1
bb16:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Match", ptr %t57, i32 0, i32 2
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Match", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb22
bb19:
  call void @__olang_check_failed(ptr @olang_loc_ce05aca7270627a9_4d670951fa414da5)
  unreachable
bb20:
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Match", ptr %t73, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Arm", ptr %t76, i32 0, i32 4
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = icmp eq ptr %t80, null
  %t84 = xor i1 %t82, true
  store i1 %t84, ptr %l37, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l37, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l48, !tbaa !29
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Match", ptr %t88, i32 0, i32 2
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  br i1 %t93, label %bb25, label %bb26
bb24:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb32
bb25:
  call void @__olang_check_failed(ptr @olang_loc_ce05aca7270627a9_4d670951fa414da5)
  unreachable
bb26:
  br label %bb27
bb27:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Match", ptr %t95, i32 0, i32 2
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Arm", ptr %t98, i32 0, i32 4
  %t102 = load ptr, ptr %t101, !tbaa !29
  store ptr %t102, ptr %l6, !tbaa !29
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_ce05aca7270627a9_4d670951fa414da5)
  unreachable
bb29:
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %t109, ptr %t108)
  store i1 %t111, ptr %l59
  br label %bb31
bb31:
  %t112 = load i1, ptr %l59, !tbaa !21
  store i1 %t112, ptr %l47, !tbaa !21
  br label %bb32
bb32:
  %t113 = load i1, ptr %l47, !tbaa !21
  store i1 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroResult(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca i1
  %l12 = alloca i1
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i1
  %l20 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca %"std/pair:Pair.1eb2466213689e002f25e81e83536e78"
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
  store i1 true, ptr %l12, !tbaa !21
  br label %bb10
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l13, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t21)
  store i32 %t24, ptr %l16
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i32, ptr %l16, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %t25, i32 %t26)
  store i1 %t27, ptr %l17
  br label %bb9
bb9:
  %t28 = load i1, ptr %l17, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l12, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l12, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 89
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t35)
  store ptr %t37, ptr %l22
  br label %bb14
bb14:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t40 = getelementptr %"compiler/check:frame", ptr %t38, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t45 = call %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, ptr %v0, i64 %t41, ptr %t42)
  store %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t45, ptr %l26
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l20, !tbaa !29
  %t47 = load %"std/pair:Pair.1eb2466213689e002f25e81e83536e78", ptr %l26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H316d0dfdbceeb7b188a6719f0ad8fbbe(ptr %v0, ptr %v0, ptr %t46, %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %t47)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqLongest(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l23 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l10
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t13, i64 %t14)
  store { i64, ptr } %t17, ptr %l15
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 0
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %s2, ptr %a0, ptr %t24)
  store ptr %t27, ptr %l19
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l19, !tbaa !29
  store ptr %t28, ptr %l6, !tbaa !29
  %t29 = load ptr, ptr %l6, !tbaa !29
  %t31 = getelementptr %"compiler/check:elemsShape", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, -1
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"compiler/check:elemsShape", ptr %t36, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = getelementptr %"compiler/check:elemsShape", ptr %t48, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l4, !tbaa !24
  br label %bb1
bb15:
  %t59 = load i64, ptr %l2, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextBeside(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i1
  %l12 = alloca i32
  %l16 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l28 = alloca ptr
  %l33 = alloca i32
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fcheck_2eisData(ptr %v1, ptr %a2)
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
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l12
  br label %bb4
bb4:
  %t17 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t19 = trunc i64 19 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  store i1 %t22, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l7, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  store ptr %t30, ptr %l19, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = load i32, ptr %l22, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t38, ptr %l23
  br label %bb9
bb9:
  %t39 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t41 = trunc i64 19 to i32
  %t42 = icmp eq i32 %t39, %t41
  %t44 = xor i1 %t42, true
  store i1 %t44, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l16, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l28, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l33
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  store ptr %t64, ptr %l36, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l39
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l36, !tbaa !29
  %t71 = load i32, ptr %l39, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l40
  br label %bb16
bb16:
  %t73 = load ptr, ptr %l28, !tbaa !29
  %t74 = load i32, ptr %l33, !tbaa !23
  %t75 = load i32, ptr %l40, !tbaa !23
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t73, i32 %t74, i32 %t75)
  store i1 %t76, ptr %l41
  br label %bb17
bb17:
  %t77 = load i1, ptr %l41, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitWritten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca %"compiler/names:Ref"
  %l26 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca ptr
  %l37 = alloca %"compiler/names:Ref"
  %l41 = alloca i1
  %l47 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i32
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca { i64, ptr }
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i64
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
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l18
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t38, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l22
  br label %bb7
bb7:
  %t42 = load %"compiler/names:Ref", ptr %l22
  store %"compiler/names:Ref" %t42, ptr %l5
  %t43 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = icmp sgt i64 %t45, 1
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 9}
  %t52 = trunc i64 0 to i32
  %t53 = icmp eq i32 %t50, %t52
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb10
bb10:
  %t55 = load i1, ptr %l26, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  store ptr %t62, ptr %l31, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t63)
  store ptr %t65, ptr %l33
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t66 = load ptr, ptr %l33, !tbaa !29
  %t68 = getelementptr %"compiler/check:frame", ptr %t66, i32 0, i32 2
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  %t72 = load ptr, ptr %l31, !tbaa !29
  %t75 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t72, i64 %t69, i32 %t71)
  store %"compiler/names:Ref" %t75, ptr %l37
  br label %bb14
bb14:
  %t76 = load %"compiler/names:Ref", ptr %l37
  store %"compiler/names:Ref" %t76, ptr %l5
  br label %bb15
bb15:
  %t77 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t78 = load i32, ptr %t77, !range !{i32 0, i32 9}
  %t80 = trunc i64 4 to i32
  %t81 = icmp eq i32 %t78, %t80
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb18
bb17:
  %t85 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = icmp slt i64 %t86, 0
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb18
bb18:
  %t90 = load i1, ptr %l41, !tbaa !21
  br i1 %t90, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  store ptr %t97, ptr %l47, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t105 = load i64, ptr %t104, !tbaa !24
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t101, i64 %t103, i64 %t105)
  store i32 %t109, ptr %l52
  br label %bb22
bb22:
  %t110 = load ptr, ptr %l47, !tbaa !29
  %t111 = load i32, ptr %l52, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t110, i32 %t111)
  store i32 %t112, ptr %l53
  br label %bb23
bb23:
  %t113 = load i32, ptr %l53, !range !{i32 0, i32 6}
  %t115 = trunc i64 3 to i32
  %t116 = icmp eq i32 %t113, %t115
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb24, label %bb25
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l58, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t122, ptr %l59
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l60, !tbaa !29
  %t126 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %a2)
  store %"compiler/source:Span" %t126, ptr %l62
  br label %bb27
bb27:
  %t127 = load ptr, ptr %l60, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l62
  %t129 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128)
  store { i64, ptr } %t129, ptr %l63
  br label %bb28
bb28:
  %t130 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t131 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitNotAType(ptr %v0, ptr %v0, { i64, ptr } %t130)
  store %"compiler/diagmsg:Msg" %t131, ptr %l64
  br label %bb29
bb29:
  %t132 = load ptr, ptr %l58, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l59
  %t134 = load %"compiler/diagmsg:Msg", ptr %l64
  %t135 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t132, %"compiler/source:Span" %t133, %"compiler/diagmsg:Msg" %t134)
  store i64 %t135, ptr %l65
  br label %bb30
bb30:
  store i1 true, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_aee2bc7202aed69e_9c3c63eda25ac602)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseHolds(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:typeCase" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/check:typeCase"
  %l2 = alloca i32
  %l4 = alloca %"compiler/generic:Binding"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l28 = alloca %"compiler/generic:Binding"
  %l37 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l63 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l83 = alloca i32
  %l85 = alloca ptr
  %l86 = alloca i32
  %l87 = alloca i64
  %l92 = alloca i32
  %l93 = alloca i32
  %l99 = alloca i1
  %l107 = alloca i1
  %l110 = alloca ptr
  %l115 = alloca i32
  %l120 = alloca i64
  %l124 = alloca i32
  %l130 = alloca i1
  %l132 = alloca i1
  %l138 = alloca i1
  %l146 = alloca i32
  %l152 = alloca i64
  %l155 = alloca i64
  %l173 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l185 = alloca ptr
  %l186 = alloca i32
  %l187 = alloca i64
  %l192 = alloca i32
  %l193 = alloca i32
  %l195 = alloca i1
  %l198 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l204 = alloca i64
  %l208 = alloca i64
  %l211 = alloca i64
  %l230 = alloca ptr
  %l233 = alloca i32
  %l234 = alloca { i64, ptr }
  %l237 = alloca %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa"
  %s0 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/check:typeCase" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 4
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t2, i64 %t4)
  store %"compiler/generic:Binding" %t7, ptr %l28
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:Binding", ptr %l28
  store %"compiler/generic:Binding" %t8, ptr %l4
  %t9 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 1
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  %t17 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = icmp eq i64 %t18, 0
  br i1 %t20, label %bb38, label %bb39
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t27 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t28 = load i32, ptr %t27, !tbaa !23
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyBound(ptr %v0, ptr %s0, ptr %t25, i32 %t26, i32 %t28, ptr %l4)
  store i64 %t33, ptr %l37
  br label %bb6
bb5:
  br label %bb28
bb6:
  store i64 0, ptr %l5, !tbaa !24
  %t34 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
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
  store i64 0, ptr %l42, !tbaa !24
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
  store i64 %t61, ptr %l45, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l45, !tbaa !24
  store i64 %t63, ptr %l42, !tbaa !24
  br label %bb12
bb12:
  %t64 = load i64, ptr %l42, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  br label %bb27
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l63, !tbaa !27
  %t85 = load i64, ptr %l10, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i32, ptr %t88, i64 %t85
  %t90 = load i32, ptr %t89, !tbaa !33
  %t91 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t94 = icmp eq i32 %t90, %t91
  br i1 %t94, label %bb17, label %bb18
bb17:
  %t96 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 5
  %t97 = load i1, ptr %t96, !tbaa !21
  store i1 %t97, ptr %l68, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb19
bb19:
  %t99 = load i1, ptr %l68, !tbaa !21
  br i1 %t99, label %bb20, label %bb21
bb20:
  %t100 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l70, !tbaa !27
  %t102 = load i64, ptr %l10, !tbaa !24
  %t103 = load i32, ptr %l2, !tbaa !23
  %t106 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i32, ptr %t107, i64 %t102
  store i32 %t103, ptr %t108, !tbaa !33
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t109 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l73, !tbaa !27
  %t111 = load i64, ptr %l10, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i32, ptr %t114, i64 %t111
  %t116 = load i32, ptr %t115, !tbaa !33
  %t117 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t120 = icmp eq i32 %t116, %t117
  br i1 %t120, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t123 = load i64, ptr %l9, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l9, !tbaa !24
  br label %bb13
bb27:
  br label %bb28
bb28:
  %t127 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t128 = load i64, ptr %t127, !tbaa !24
  %t130 = icmp sgt i64 %t128, 0
  br i1 %t130, label %bb29, label %bb30
bb29:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  store ptr %t135, ptr %l85, !tbaa !29
  %t136 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t137 = load i32, ptr %t136, !tbaa !23
  store i32 %t137, ptr %l86, !tbaa !23
  %t138 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 4
  %t139 = load i64, ptr %t138, !tbaa !24
  store i64 %t139, ptr %l87, !tbaa !24
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/check:Checker", ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t145, { i64, ptr } %t147)
  store i32 %t150, ptr %l92
  br label %bb31
bb30:
  %t151 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t152 = load i32, ptr %t151, !tbaa !23
  store i32 %t152, ptr %l83, !tbaa !23
  br label %bb33
bb31:
  %t154 = load ptr, ptr %l85, !tbaa !29
  %t155 = load i32, ptr %l86, !tbaa !23
  %t156 = load i64, ptr %l87, !tbaa !24
  %t157 = load i32, ptr %l92, !tbaa !23
  %t158 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t154, i32 %t155, i64 %t156, i32 %t157)
  store i32 %t158, ptr %l93
  br label %bb32
bb32:
  %t159 = load i32, ptr %l93, !tbaa !23
  store i32 %t159, ptr %l83, !tbaa !23
  br label %bb33
bb33:
  %t160 = load i32, ptr %l83, !tbaa !23
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = load i32, ptr %l2, !tbaa !23
  %t170 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %t164, i32 %t165, i32 %t160)
  store i1 %t170, ptr %l99
  br label %bb34
bb34:
  %t171 = load i1, ptr %l99, !tbaa !21
  %t172 = xor i1 %t171, true
  br i1 %t172, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb81
bb38:
  %t175 = load i32, ptr %l2, !tbaa !23
  store i32 %t175, ptr %l12, !tbaa !23
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l2, !tbaa !23
  %t181 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t177, i32 %t178)
  store i1 %t181, ptr %l107
  br label %bb40
bb39:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !29
  %t186 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t187 = load i32, ptr %t186, !tbaa !23
  %t188 = load i32, ptr %l2, !tbaa !23
  %t193 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %s0, ptr %t185, i32 %t187, i32 %t188, ptr %l4, i1 false, i1 false)
  store i32 %t193, ptr %l146
  %t194 = icmp ne i32 %t193, 0
  br i1 %t194, label %bb56, label %ok.195, !prof !99
ok.195:
  br label %bb55
bb40:
  %t196 = load i1, ptr %l107, !tbaa !21
  br i1 %t196, label %bb41, label %bb42
bb41:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  store ptr %t202, ptr %l110, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/generic:Program", ptr %t206, i32 0, i32 2
  %t209 = load i32, ptr %l2, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l115
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t218 = getelementptr %"compiler/generic:Program", ptr %t216, i32 0, i32 2
  %t219 = load i32, ptr %l2, !tbaa !23
  %t222 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t218, i32 %t219)
  store i64 %t222, ptr %l120
  br label %bb44
bb44:
  %t223 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t225 = xor i64 %t223, -1
  %t226 = load i64, ptr %l120, !tbaa !24
  %t228 = and i64 %t226, %t225
  %t229 = load ptr, ptr %l110, !tbaa !29
  %t230 = load i32, ptr %l115, !tbaa !23
  %t232 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t229, i32 %t230, i64 %t228)
  store i32 %t232, ptr %l124
  br label %bb45
bb45:
  %t233 = load i32, ptr %l124, !tbaa !23
  store i32 %t233, ptr %l12, !tbaa !23
  br label %bb46
bb46:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  %t240 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t241 = load i32, ptr %t240, !tbaa !23
  %t242 = load i32, ptr %l2, !tbaa !23
  %t246 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t239, i32 %t241, i32 %t242)
  store i1 %t246, ptr %l130
  br label %bb47
bb47:
  %t247 = load i1, ptr %l130, !tbaa !21
  %t248 = xor i1 %t247, true
  br i1 %t248, label %bb48, label %bb49
bb48:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/check:Checker", ptr %t250, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t255 = getelementptr %"compiler/generic:Program", ptr %t253, i32 0, i32 2
  %t256 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t257 = load i32, ptr %t256, !tbaa !23
  %t258 = load i32, ptr %l12, !tbaa !23
  %t262 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t255, i32 %t257, i32 %t258)
  store i1 %t262, ptr %l138
  br label %bb50
bb49:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb51
bb50:
  %t263 = load i1, ptr %l138, !tbaa !21
  %t264 = xor i1 %t263, true
  store i1 %t264, ptr %l132, !tbaa !21
  br label %bb51
bb51:
  %t266 = load i1, ptr %l132, !tbaa !21
  br i1 %t266, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  br label %bb80
bb55:
  br label %bb58
bb56:
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb58:
  store i64 0, ptr %l13, !tbaa !24
  %t269 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 3
  %t270 = load i64, ptr %t269, !tbaa !24
  store i64 %t270, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t272 = load i64, ptr %l14, !tbaa !24
  %t273 = load i64, ptr %l13, !tbaa !24
  %t276 = icmp sgt i64 %t272, %t273
  br i1 %t276, label %bb59, label %bb60
bb59:
  %t278 = load i64, ptr %l15, !tbaa !24
  %t280 = icmp sgt i64 %t278, 0
  br i1 %t280, label %bb61, label %bb62
bb60:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb64
bb61:
  %t282 = load i64, ptr %l14, !tbaa !24
  %t283 = load i64, ptr %l13, !tbaa !24
  %t286 = sub i64 %t282, %t283
  %t287 = load i64, ptr %l15, !tbaa !24
  %t290 = add i64 %t286, %t287
  %t292 = sub i64 %t290, 1
  %t293 = load i64, ptr %l15, !tbaa !24
  %t296 = sdiv i64 %t292, %t293
  store i64 %t296, ptr %l155, !tbaa !24
  br label %bb63
bb62:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb63
bb63:
  %t298 = load i64, ptr %l155, !tbaa !24
  store i64 %t298, ptr %l152, !tbaa !24
  br label %bb64
bb64:
  %t299 = load i64, ptr %l152, !tbaa !24
  store i64 %t299, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb65
bb65:
  %t300 = load i64, ptr %l17, !tbaa !24
  %t301 = load i64, ptr %l16, !tbaa !24
  %t304 = icmp slt i64 %t300, %t301
  %t306 = xor i1 %t304, true
  br i1 %t306, label %bb66, label %bb67
bb66:
  br label %bb73
bb67:
  br label %bb68
bb68:
  %t308 = load i64, ptr %l13, !tbaa !24
  %t309 = load i64, ptr %l17, !tbaa !24
  %t310 = load i64, ptr %l15, !tbaa !24
  %t313 = mul i64 %t309, %t310
  %t316 = add i64 %t308, %t313
  %t318 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l173, !tbaa !27
  %t322 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr i32, ptr %t323, i64 %t316
  %t325 = load i32, ptr %t324, !tbaa !33
  %t326 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t329 = icmp eq i32 %t325, %t326
  br i1 %t329, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t332 = load i64, ptr %l17, !tbaa !24
  %t334 = add i64 %t332, 1
  store i64 %t334, ptr %l17, !tbaa !24
  br label %bb65
bb73:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/check:Checker", ptr %t336, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t341 = getelementptr %"compiler/generic:Program", ptr %t339, i32 0, i32 2
  store ptr %t341, ptr %l183, !tbaa !29
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/check:Checker", ptr %t342, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !29
  store ptr %t345, ptr %l185, !tbaa !29
  %t346 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 2
  %t347 = load i32, ptr %t346, !tbaa !23
  store i32 %t347, ptr %l186, !tbaa !23
  %t348 = getelementptr %"compiler/check:typeCase", ptr %l1, i32 0, i32 4
  %t349 = load i64, ptr %t348, !tbaa !24
  store i64 %t349, ptr %l187, !tbaa !24
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/check:Checker", ptr %t350, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !29
  %t355 = getelementptr %"compiler/generic:Program", ptr %t353, i32 0, i32 2
  %t356 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t360 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t355, { i64, ptr } %t357)
  store i32 %t360, ptr %l192
  br label %bb74
bb74:
  %t361 = load ptr, ptr %l185, !tbaa !29
  %t362 = load i32, ptr %l186, !tbaa !23
  %t363 = load i64, ptr %l187, !tbaa !24
  %t364 = load i32, ptr %l192, !tbaa !23
  %t365 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t361, i32 %t362, i64 %t363, i32 %t364)
  store i32 %t365, ptr %l193
  br label %bb75
bb75:
  %t366 = load i32, ptr %l2, !tbaa !23
  %t367 = load ptr, ptr %l183, !tbaa !29
  %t368 = load i32, ptr %l193, !tbaa !23
  %t370 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t367, i32 %t368, i32 %t366)
  store i1 %t370, ptr %l195
  br label %bb76
bb76:
  %t371 = load i1, ptr %l195, !tbaa !21
  %t372 = xor i1 %t371, true
  br i1 %t372, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t375 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %l198
  br label %bb82
bb82:
  %t376 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l198
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t376, ptr %l19
  %t377 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %s0, ptr %t377, ptr %a3, ptr %l19, i1 false)
  br label %bb83
bb83:
  store i64 0, ptr %l20, !tbaa !24
  %t384 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l19)
  store i64 %t384, ptr %l204
  br label %bb84
bb84:
  %t385 = load i64, ptr %l204, !tbaa !24
  store i64 %t385, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t386 = load i64, ptr %l21, !tbaa !24
  %t387 = load i64, ptr %l20, !tbaa !24
  %t390 = icmp sgt i64 %t386, %t387
  br i1 %t390, label %bb85, label %bb86
bb85:
  %t392 = load i64, ptr %l22, !tbaa !24
  %t394 = icmp sgt i64 %t392, 0
  br i1 %t394, label %bb87, label %bb88
bb86:
  store i64 0, ptr %l208, !tbaa !24
  br label %bb90
bb87:
  %t396 = load i64, ptr %l21, !tbaa !24
  %t397 = load i64, ptr %l20, !tbaa !24
  %t400 = sub i64 %t396, %t397
  %t401 = load i64, ptr %l22, !tbaa !24
  %t404 = add i64 %t400, %t401
  %t406 = sub i64 %t404, 1
  %t407 = load i64, ptr %l22, !tbaa !24
  %t410 = sdiv i64 %t406, %t407
  store i64 %t410, ptr %l211, !tbaa !24
  br label %bb89
bb88:
  store i64 0, ptr %l211, !tbaa !24
  br label %bb89
bb89:
  %t412 = load i64, ptr %l211, !tbaa !24
  store i64 %t412, ptr %l208, !tbaa !24
  br label %bb90
bb90:
  %t413 = load i64, ptr %l208, !tbaa !24
  store i64 %t413, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb91
bb91:
  store %olang.scope zeroinitializer, ptr %s21
  %t414 = load i64, ptr %l24, !tbaa !24
  %t415 = load i64, ptr %l23, !tbaa !24
  %t418 = icmp slt i64 %t414, %t415
  %t420 = xor i1 %t418, true
  br i1 %t420, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s21)
  br label %bb99
bb93:
  br label %bb94
bb94:
  %t422 = load i64, ptr %l20, !tbaa !24
  %t423 = load i64, ptr %l24, !tbaa !24
  %t424 = load i64, ptr %l22, !tbaa !24
  %t427 = mul i64 %t423, %t424
  %t430 = add i64 %t422, %t427
  store i64 %t430, ptr %l25, !tbaa !24
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/check:Checker", ptr %t432, i32 0, i32 155
  store ptr %t434, ptr %l230, !tbaa !29
  %t435 = load i64, ptr %l25, !tbaa !24
  %t438 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l19, i64 %t435)
  store i32 %t438, ptr %l233
  br label %bb95
bb95:
  %t439 = getelementptr %"compiler/generic:Binding", ptr %l4, i32 0, i32 2
  %t440 = load { i64, ptr }, ptr %t439, !tbaa !27
  store { i64, ptr } %t440, ptr %l234, !tbaa !27
  %t441 = load i64, ptr %l25, !tbaa !24
  %t443 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t444 = load ptr, ptr %t443, !tbaa !27
  %t445 = getelementptr i32, ptr %t444, i64 %t441
  %t446 = load i32, ptr %t445, !tbaa !33
  %t447 = load i32, ptr %l233, !tbaa !23
  %t449 = call %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %s21, i32 %t447, i32 %t446)
  store %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t449, ptr %l237
  br label %bb96
bb96:
  %t450 = load ptr, ptr %l230, !tbaa !29
  %t451 = load %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa", ptr %l237
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Habcf70cf374eb3bb03a96803ac10570d(ptr %v0, ptr %t450, %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %t451)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s21)
  br label %bb98
bb98:
  %t452 = load i64, ptr %l24, !tbaa !24
  %t454 = add i64 %t452, 1
  store i64 %t454, ptr %l24, !tbaa !24
  br label %bb91
bb99:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypedHole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/names:Entry"
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca %"compiler/diagmsg:Msg"
  %l19 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca ptr
  %l28 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l29 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l31 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l32 = alloca i32
  %l34 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca i1
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca i64
  %l64 = alloca ptr
  %l66 = alloca ptr
  %l70 = alloca %"compiler/typed:Local"
  %l72 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca ptr
  %l88 = alloca i64
  %l90 = alloca i64
  %l95 = alloca %"compiler/names:Entry"
  %l98 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca ptr
  %l106 = alloca i32
  %l108 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i64
  %l114 = alloca { i64, ptr }
  %l120 = alloca i64
  %l123 = alloca ptr
  %l124 = alloca %"compiler/source:Span"
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l133 = alloca i64
  %l136 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l16, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t8, ptr %l17
  %t9 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypedHoleUntyped(ptr %v0)
  store %"compiler/diagmsg:Msg" %t9, ptr %l18
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l17
  %t12 = load %"compiler/diagmsg:Msg", ptr %l18
  %t13 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t10, %"compiler/source:Span" %t11, %"compiler/diagmsg:Msg" %t12)
  store i64 %t13, ptr %l19
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l1
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t14, %"compiler/source:Span" %t15)
  store ptr %t18, ptr %l22
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load ptr, ptr %l22, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
bb6:
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l23
  br label %bb7
bb7:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l3
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t22)
  store ptr %t24, ptr %l25
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l25, !tbaa !29
  %t27 = getelementptr %"compiler/check:frame", ptr %t25, i32 0, i32 8
  %t29 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v0, ptr %t27)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t29, ptr %l28
  br label %bb9
bb9:
  %t30 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l28
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t30, ptr %l4
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t32 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %l4)
  %t33 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t32, 1
  %t34 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t32, 0
  store i32 %t34, ptr %l32
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb12, label %ok.36, !prof !99
ok.36:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t33, ptr %l31
  br label %bb11
bb11:
  %t37 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l31
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t37, ptr %l29
  br label %bb14
bb12:
  %t38 = load i32, ptr %l32, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  store i1 %t41, ptr %l34, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb14:
  %t42 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l29
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t42, ptr %l5
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l5, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t43, i32 %t45)
  store { i64, ptr } %t48, ptr %l37
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t49, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t50, ptr %l38
  br label %bb16
bb16:
  %t51 = load i1, ptr %l38, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l41, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l5, i32 0, i32 1
  %t57 = load i64, ptr %t56, !tbaa !24
  %t60 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t55, i64 %t57)
  store i32 %t60, ptr %l44
  br label %bb19
bb18:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb21
bb19:
  %t61 = load i32, ptr %l2, !tbaa !23
  %t62 = load ptr, ptr %l41, !tbaa !29
  %t63 = load i32, ptr %l44, !tbaa !23
  %t65 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholeFits(ptr %v0, ptr %t62, i32 %t63, i32 %t61)
  store i1 %t65, ptr %l46
  br label %bb20
bb20:
  %t66 = load i1, ptr %l46, !tbaa !21
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb22, label %bb23
bb22:
  %t68 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l5, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t69)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  br label %bb10
bb27:
  %t72 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_24, 0
  %t73 = insertvalue { ptr, ptr } %t72, ptr null, 1
  %t76 = extractvalue { ptr, ptr } %t73, 0
  %t77 = extractvalue { ptr, ptr } %t73, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, ptr %l3, ptr %t76, ptr %t77)
  br label %bb28
bb28:
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l51
  br label %bb29
bb29:
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l6
  store ptr %l3, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t81 = load i64, ptr %l8, !tbaa !24
  store i64 %t81, ptr %l53, !tbaa !24
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t82)
  store i64 %t84, ptr %l55
  br label %bb31
bb31:
  %t85 = load i64, ptr %l53, !tbaa !24
  %t86 = load i64, ptr %l55, !tbaa !24
  %t87 = icmp slt i64 %t85, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb43
bb33:
  br label %bb34
bb34:
  %t91 = load ptr, ptr %l7, !tbaa !29
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l60
  br label %bb35
bb35:
  %t96 = load i64, ptr %l60, !tbaa !24
  store i64 %t96, ptr %l9, !tbaa !24
  store ptr %l6, ptr %l61, !tbaa !29
  %t97 = ptrtoint ptr %s0 to i64
  store i64 %t97, ptr %l62, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t98, label %bb36, label %bb37
bb36:
  %t100 = call ptr @__olang_region_make(ptr %s0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l62, !tbaa !24
  br label %bb37
bb37:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l64, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t103)
  store ptr %t105, ptr %l66
  br label %bb38
bb38:
  %t106 = load ptr, ptr %l66, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Body", ptr %t106, i32 0, i32 7
  %t109 = load i64, ptr %l9, !tbaa !24
  %t112 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t108, i64 %t109)
  store %"compiler/typed:Local" %t112, ptr %l70
  br label %bb39
bb39:
  %t113 = getelementptr %"compiler/typed:Local", ptr %l70, i32 0, i32 0
  %t114 = load i32, ptr %t113, !tbaa !23
  %t115 = load ptr, ptr %l64, !tbaa !29
  %t117 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s6, ptr %t115, i32 %t114)
  store { i64, ptr } %t117, ptr %l72
  br label %bb40
bb40:
  %t118 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = load i64, ptr %l62
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = call ptr @__olang_scope_alloc(ptr %t122, i64 %t120)
  call void @olang_textcopy(ptr %t123, ptr %t119, i64 %t120)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t127 = load i64, ptr %l62
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = extractvalue { i64, ptr } %t125, 0
  %t130 = extractvalue { i64, ptr } %t125, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %t128, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t135 = load ptr, ptr %l61, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t135, { i64, ptr } %t134)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s6)
  br label %bb42
bb42:
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l8, !tbaa !24
  br label %bb30
bb43:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/names:Resolver", ptr %t147, i32 0, i32 1
  store ptr %t149, ptr %l80, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t150)
  store ptr %t152, ptr %l82
  br label %bb44
bb44:
  %t153 = load ptr, ptr %l82, !tbaa !29
  %t155 = getelementptr %"compiler/check:frame", ptr %t153, i32 0, i32 1
  %t156 = load i64, ptr %t155, !tbaa !24
  %t157 = load ptr, ptr %l80, !tbaa !29
  %t159 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t157, i64 %t156)
  store ptr %t159, ptr %l85
  br label %bb45
bb45:
  %t160 = load ptr, ptr %l85, !tbaa !29
  %t162 = getelementptr %"compiler/names:Table", ptr %t160, i32 0, i32 0
  store ptr %t162, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb46
bb46:
  %t164 = load i64, ptr %l11, !tbaa !24
  store i64 %t164, ptr %l88, !tbaa !24
  %t165 = load ptr, ptr %l10, !tbaa !29
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t165)
  store i64 %t167, ptr %l90
  br label %bb47
bb47:
  %t168 = load i64, ptr %l88, !tbaa !24
  %t169 = load i64, ptr %l90, !tbaa !24
  %t170 = icmp slt i64 %t168, %t169
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb48, label %bb49
bb48:
  br label %bb66
bb49:
  br label %bb50
bb50:
  %t174 = load ptr, ptr %l10, !tbaa !29
  %t175 = load i64, ptr %l11, !tbaa !24
  %t178 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t174, i64 %t175)
  store %"compiler/names:Entry" %t178, ptr %l95
  br label %bb51
bb51:
  %t179 = load %"compiler/names:Entry", ptr %l95
  store %"compiler/names:Entry" %t179, ptr %l12
  %t180 = getelementptr %"compiler/names:Entry", ptr %l12, i32 0, i32 2
  %t181 = load i32, ptr %t180, !range !{i32 0, i32 9}
  %t183 = trunc i64 2 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb52, label %bb53
bb52:
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l99, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l100, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t188)
  store ptr %t190, ptr %l102
  br label %bb54
bb53:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb57
bb54:
  %t191 = load ptr, ptr %l102, !tbaa !29
  %t193 = getelementptr %"compiler/check:frame", ptr %t191, i32 0, i32 1
  %t194 = load i64, ptr %t193, !tbaa !24
  %t195 = getelementptr %"compiler/names:Entry", ptr %l12, i32 0, i32 0
  %t196 = load i32, ptr %t195, !tbaa !23
  %t197 = load ptr, ptr %l100, !tbaa !29
  %t200 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %t197, i64 %t194, i32 %t196)
  store i32 %t200, ptr %l106
  br label %bb55
bb55:
  %t201 = load i32, ptr %l2, !tbaa !23
  %t202 = load ptr, ptr %l99, !tbaa !29
  %t203 = load i32, ptr %l106, !tbaa !23
  %t205 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholeFits(ptr %v0, ptr %t202, i32 %t203, i32 %t201)
  store i1 %t205, ptr %l108
  br label %bb56
bb56:
  %t206 = load i1, ptr %l108, !tbaa !21
  store i1 %t206, ptr %l98, !tbaa !21
  br label %bb57
bb57:
  %t207 = load i1, ptr %l98, !tbaa !21
  br i1 %t207, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l6, ptr %l109, !tbaa !29
  %t208 = ptrtoint ptr %s0 to i64
  store i64 %t208, ptr %l110, !tbaa !24
  %t209 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t209, label %bb60, label %bb61
bb59:
  br label %bb64
bb60:
  %t211 = call ptr @__olang_region_make(ptr %s0)
  %t212 = ptrtoint ptr %t211 to i64
  store i64 %t212, ptr %l110, !tbaa !24
  br label %bb61
bb61:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/names:Entry", ptr %l12, i32 0, i32 0
  %t215 = load i32, ptr %t214, !tbaa !23
  %t218 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s11, ptr %t213, i32 %t215)
  store { i64, ptr } %t218, ptr %l114
  br label %bb62
bb62:
  %t219 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t222 = load i64, ptr %l110
  %t223 = inttoptr i64 %t222 to ptr
  %t224 = call ptr @__olang_scope_alloc(ptr %t223, i64 %t221)
  call void @olang_textcopy(ptr %t224, ptr %t220, i64 %t221)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t228 = load i64, ptr %l110
  %t229 = inttoptr i64 %t228 to ptr
  %t230 = extractvalue { i64, ptr } %t226, 0
  %t231 = extractvalue { i64, ptr } %t226, 1
  %t232 = mul i64 %t230, 1
  %t233 = call ptr @__olang_scope_alloc(ptr %t229, i64 %t232)
  call void @llvm.memcpy.p0.p0.i64(ptr %t233, ptr %t231, i64 %t232, i1 false)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  %t236 = load ptr, ptr %l109, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t236, { i64, ptr } %t235)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t238 = load i64, ptr %l11, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l11, !tbaa !24
  br label %bb46
bb66:
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t243, ptr %l120
  br label %bb67
bb67:
  %t244 = load i64, ptr %l120, !tbaa !24
  %t245 = icmp sgt i64 %t244, 8
  br i1 %t245, label %bb68, label %bb69
bb68:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H88f30ae03b1b7707751e39c47edff247(ptr %s0, ptr %l6, i64 8)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l123, !tbaa !29
  %t249 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t249, ptr %l124
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i32, ptr %l2, !tbaa !23
  %t254 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t250, i32 %t251)
  store { i64, ptr } %t254, ptr %l127
  br label %bb72
bb72:
  %t255 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 0
  %t257 = extractvalue { i64, ptr } %t255, 1
  %t258 = mul i64 %t256, 1
  %t259 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t258)
  call void @llvm.memcpy.p0.p0.i64(ptr %t259, ptr %t257, i64 %t258, i1 false)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  store { i64, ptr } %t261, ptr %l128, !tbaa !27
  %t263 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v0, ptr %v0, ptr %l6, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store { i64, ptr } %t263, ptr %l130
  br label %bb73
bb73:
  %t264 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  %t266 = extractvalue { i64, ptr } %t264, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  %t271 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t273 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypedHole(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t271, { i64, ptr } %t270)
  store %"compiler/diagmsg:Msg" %t273, ptr %l132
  br label %bb74
bb74:
  %t274 = load ptr, ptr %l123, !tbaa !29
  %t275 = load %"compiler/source:Span", ptr %l124
  %t276 = load %"compiler/diagmsg:Msg", ptr %l132
  %t277 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t274, %"compiler/source:Span" %t275, %"compiler/diagmsg:Msg" %t276)
  store i64 %t277, ptr %l133
  br label %bb75
bb75:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l1
  %t282 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t278, %"compiler/source:Span" %t279)
  store ptr %t282, ptr %l136
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  %t283 = load ptr, ptr %l136, !tbaa !29
  store ptr %t283, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l7, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l9
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l9, !tbaa !29
  %t15 = getelementptr %"compiler/check:frame", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l7, !tbaa !29
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t17, i64 %t16)
  store ptr %t19, ptr %l12
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 3
  %t23 = load i1, ptr %t22, !tbaa !21
  br i1 %t23, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l17, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 3
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb14
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l24, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l25, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t46)
  store i32 %t48, ptr %l27
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l25, !tbaa !29
  %t50 = load i32, ptr %l27, !tbaa !23
  %t51 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t51, ptr %l28
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t53 = load i32, ptr %l28, !tbaa !23
  %t54 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t52, i32 %t53)
  store i1 %t54, ptr %l29
  br label %bb13
bb13:
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %l16, !tbaa !21
  br label %bb26
bb14:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 8}
  %t63 = icmp eq i64 %t61, 6
  store i1 %t63, ptr %l31, !tbaa !21
  br label %bb16
bb16:
  %t64 = load i1, ptr %l31, !tbaa !21
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l3, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l3, !tbaa !29
  %t75 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnSlice(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  store i1 %t75, ptr %l38
  br label %bb20
bb20:
  %t76 = load i1, ptr %l38, !tbaa !21
  store i1 %t76, ptr %l16, !tbaa !21
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_b2735ee686977dce_6cfd672f66c8ceea)
  unreachable
bb26:
  %t77 = load i1, ptr %l16, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eeffectOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t3 = trunc i64 25 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb9
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t8 = trunc i64 26 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t13 = trunc i64 27 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t18 = trunc i64 28 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb19
bb10:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t23 = trunc i64 29 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_d652d3791394a9d9_f08137453595c3ad)
  unreachable
bb19:
  %t26 = load i1, ptr %l1, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2etryExisting(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i1
  %l19 = alloca i1
  %l29 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l44 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Try", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Try", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_fa22773c0ed7d28e_9744d977b6aff1d2)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Try", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t20)
  store i1 %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load i1, ptr %l19, !tbaa !21
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Try", ptr %t26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb12, label %bb13
bb12:
  br label %bb26
bb13:
  br label %bb14
bb14:
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t43, ptr %l29, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 %t44
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t53 = getelementptr %"compiler/typed:Clause", ptr %t49, i32 0, i32 4
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t68, ptr %l40, !tbaa !27
  %t69 = load i64, ptr %l6, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t78 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t74)
  store i1 %t78, ptr %l44
  br label %bb19
bb19:
  %t79 = load i1, ptr %l44, !tbaa !21
  br i1 %t79, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l6, !tbaa !24
  br label %bb15
bb24:
  br label %bb25
bb25:
  %t85 = load i64, ptr %l2, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l2, !tbaa !24
  br label %bb11
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:landing" @compiler_2fcheck_3alanding_2ector(ptr %v0, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/check:landing"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/check:landing" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/check:landing" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/check:landing" %t14, %"compiler/source:Span" %a2, 2
  %t18 = insertvalue %"compiler/check:landing" %t16, i32 %a3, 3
  %t20 = insertvalue %"compiler/check:landing" %t18, i64 %a4, 4
  store %"compiler/check:landing" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:landing", ptr %rv
  ret %"compiler/check:landing" %rr
}

define dso_local %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %v0, i1 %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:reflList"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:reflList" undef, i1 %a0, 0
  %t12 = insertvalue %"compiler/check:reflList" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/check:reflList" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:reflList" %t14, i64 %a3, 3
  store %"compiler/check:reflList" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflList", ptr %rv
  ret %"compiler/check:reflList" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"a build constant without a value" }>, align 8
@.d1 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
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
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
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
@.d3 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"a build constant of this kind (B10)" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
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
@.d5 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"std/prelude/number" }>, align 8
@.d6 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"NumberError" }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Overflow" }>, align 8
@.d8 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"std/prelude/number" }>, align 8
@.d9 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"NumberError" }>, align 8
@.d10 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Invalid" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@__olang_empty_array = external constant [16 x i64]
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\00" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d17 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"a generator borrowing its elements from a parameter held by value" }>, align 8
@.d18 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"a generator with a contract and an unnamed parameter" }>, align 8
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d20 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d21 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a generic call of this kind" }>, align 8
@.d22 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c") noreturn" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
define internal i1 @olang_lambda_24(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = icmp slt i64 %a0, %a1
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
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
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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

@olang_loc_a9a67ea0f55a9fd6_c8a9f61f3588e5fa = external constant [0 x i8]
declare i1 @compiler_2fcheck_2esetsName(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_e1ba8a7d77c00bbd_a1a07f262c2a0481 = external constant [0 x i8]
@olang_loc_ab29c5a5257e6e8_1714322fbb357b4c = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eclosedExpr(ptr %v0, ptr %a0)
@olang_loc_3ee32a1caa2e355c_4063d0a06727bdc8 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, %"compiler/cond:Value" } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eValueOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefined(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaughtIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_cd06913e2f5eb0d4_3977f9e98d534b08 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edecls(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_40b85daad0e541e3_3cdd9f152c967927 = external constant [0 x i8]
@olang_loc_17f9884e4c50a862_1761fccd5f6f3c76 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_2d16f3aa36d067c5_95008946090581a1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H4b90e82c7a9c5937397e46eef988cfe3(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H031c7c147cc8ce0b988dd3fed8d142ad(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUndecided(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedPathUnknown(ptr %v0)
declare %"compiler/check:EmbedAsk" @compiler_2fcheck_3aEmbedAsk_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aEmbedAsk_3e_2ePush_3ccompiler_2fcheck_3aEmbedAsk_3e(ptr %v0, ptr %a0, %"compiler/check:EmbedAsk" %a1)
@olang_loc_1d0e70c978300aa7_2a4aae738133c57b = external constant [0 x i8]
declare { { i64, ptr }, { i64, ptr } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmbedNotRead(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPatterns(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, ptr %a5, i32 %a6, ptr %a7, i64 %a8)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4, ptr %a5, i32 %a6, ptr %a7, i64 %a8)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenEnum(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseValueType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_d21fae414ff68ab0_be44aac3c4a6c53c = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, i32 %a4)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2ePus_Hdab9bd3c8945274d6e7197d4fb29356b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropOnExit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasContract(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econtractChecks(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3)
declare void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenEnd(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArrayTooManyArgs(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_c5fa9ed16f12f7a5_64c2edcd3bb7e401 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstruct(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexplicitArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
@olang_loc_b174354d9e16fd38_b3c97c50613a8cf4 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
@olang_loc_8ebb37c5c90e9f1b_48dd25e04e404e97 = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eapplyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunendedArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einstancesMet(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7)
@olang_loc_843da5fbbb4bd33d_31eebeb3e62ff6f1 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_9109cadfb541186e_2a46ab96c2b41f0a = external constant [0 x i8]
@olang_loc_fee5565d650674df_3b318d0e6ee4625b = external constant [0 x i8]
declare %"compiler/check:ownerAt" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownerOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fcheck_2eLaneMagic = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e09b0660792e8b62_512dd44834885876 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordCount(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_968ede9ca4457b20_d4cd8e7344b6f50c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_aac959024b9d6f15_55461456e770b1d1 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundParam(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, ptr %a5, i32 %a6, ptr %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, i32 %a4, ptr %a5, i64 %a6)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrongCasePath(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5, i32 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemsPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5, ptr %a6, i64 %a7)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestNotHere(ptr %v0)
@olang_loc_2bba12d772c132ef_de888473626934f3 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescName(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoDefault(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5, i32 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3)
@olang_loc_9ffee6a4e1a43bc2_8f88457b20f170fe = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCopied(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ce05aca7270627a9_4d670951fa414da5 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsWritable(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H316d0dfdbceeb7b188a6719f0ad8fbbe(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.1eb2466213689e002f25e81e83536e78" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eisData(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitNotAType(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_aee2bc7202aed69e_9c3c63eda25ac602 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Habcf70cf374eb3bb03a96803ac10570d(ptr %v0, ptr %a0, %"std/pair:Pair.91de8c8eb84d52d1e58996aec31d85aa" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypedHoleUntyped(ptr %v0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholeFits(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H88f30ae03b1b7707751e39c47edff247(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypedHole(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnSlice(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b2735ee686977dce_6cfd672f66c8ceea = external constant [0 x i8]
@olang_loc_d652d3791394a9d9_f08137453595c3ad = external constant [0 x i8]
@olang_loc_fa22773c0ed7d28e_9744d977b6aff1d2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %a0)

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
