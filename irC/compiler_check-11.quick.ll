source_filename = "compiler_check-11.quick.ll"
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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/check:nullNarrow" = type { { i64, ptr }, i64, i1 }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/check:errNarrow" = type { i32, i32, i64, i1 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Bind" = type { i32, ptr }
%"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/check:atRec" = type { i64, i64, ptr, i32 }
%"compiler/check:factRead" = type { i64, i64, { i64, ptr }, i1, i64, %"compiler/source:Span", { i64, ptr } }
define dso_local i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l14 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i1
  %l41 = alloca i1
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
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb7
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/ast:TopIf", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_555450387d5e0d0e_fcfc730d79d494b2)
  unreachable
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/ast:TopIf", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t21 = getelementptr %"compiler/ast:TopBranch", ptr %t18, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %t22, i32 %t23)
  store i1 %t26, ptr %l14
  br label %bb6
bb6:
  %t27 = load i1, ptr %l14, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l5, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
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
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_65e6047404e548b5_230b9180471a5d9)
  unreachable
bb14:
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l27
  br label %bb16
bb16:
  %t56 = load i1, ptr %l27, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/ast:TopIf", ptr %t57, i32 0, i32 3
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/ast:TopIf", ptr %t66, i32 0, i32 3
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb24
bb20:
  call void @__olang_check_failed(ptr @olang_loc_9781a02214179da0_3bbb534184ea6a24)
  unreachable
bb21:
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TopIf", ptr %t73, i32 0, i32 3
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TopBranch", ptr %t76, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %t80, i32 %t81)
  store i1 %t84, ptr %l41
  br label %bb23
bb23:
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %l32, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l32, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 20
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load i64, ptr %l6, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eViewsOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l9 = alloca i1
  %l11 = alloca i64
  %l14 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca i64
  %l27 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l37 = alloca i64
  %l41 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = sext i32 %t7 to i64
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 14
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l14
  br label %bb3
bb3:
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l14, !tbaa !24
  %t17 = icmp sge i64 %t15, %t16
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 14
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l21
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l21, !tbaa !29
  store ptr %t30, ptr %l2, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v0, ptr %t31, ptr %t32)
  store i64 %t35, ptr %l24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l24, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp sge i64 %t37, 0
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 7
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t49, i64 %t50)
  %t54 = extractvalue { i32, i64 } %t53, 1
  %t55 = extractvalue { i32, i64 } %t53, 0
  store i32 %t55, ptr %l34
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb13, label %ok.57, !prof !99
ok.57:
  store i64 %t54, ptr %l33
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t58 = load i64, ptr %l33, !tbaa !24
  store i64 %t58, ptr %l27, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb15
bb15:
  %t59 = load i64, ptr %l27, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
bb16:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 1
  %t63 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t63, ptr %l4
  %t65 = load { i64, [2 x i64] }, ptr %l4
  %t67 = extractvalue { i64, [2 x i64] } %t65, 0
  %t68 = icmp eq i64 %t67, 0
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t71 = getelementptr { i64 }, ptr %t70, i32 0, i32 0
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb24
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/load:Loader", ptr %t80, i32 0, i32 6
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t82, i64 %t83)
  %t87 = extractvalue { i32, i64 } %t86, 1
  %t88 = extractvalue { i32, i64 } %t86, 0
  store i32 %t88, ptr %l48
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb21, label %ok.90, !prof !99
ok.90:
  store i64 %t87, ptr %l47
  br label %bb20
bb20:
  %t91 = load i64, ptr %l47, !tbaa !24
  store i64 %t91, ptr %l41, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l41, !tbaa !24
  store i64 %t92, ptr %l37, !tbaa !24
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f6ac6f37bd028998_7777cf96519f6a94)
  unreachable
bb29:
  %t93 = load i64, ptr %l37, !tbaa !24
  store i64 %t93, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l30 = alloca %"compiler/names:Ref"
  %l34 = alloca i1
  %l39 = alloca ptr
  %l41 = alloca ptr
  %l45 = alloca %"compiler/names:Ref"
  %l48 = alloca i1
  %l54 = alloca { i64, ptr }
  %l60 = alloca i1
  %l63 = alloca i1
  %l66 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l76 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l82 = alloca { i64, ptr }
  %l83 = alloca %"compiler/diagmsg:Msg"
  %l84 = alloca i64
  %l90 = alloca i32
  %l95 = alloca i1
  %l97 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l101 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l110 = alloca i64
  %l112 = alloca i64
  %l113 = alloca %"compiler/diagmsg:Msg"
  %l114 = alloca i64
  %l123 = alloca { i64, ptr }
  %l127 = alloca i1
  %l131 = alloca i1
  %l138 = alloca i32
  %l141 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l147 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l152 = alloca %"compiler/diagmsg:Msg"
  %l153 = alloca i64
  %l156 = alloca ptr
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca ptr
  %l161 = alloca %"compiler/source:Span"
  %l162 = alloca { i64, ptr }
  %l163 = alloca %"compiler/diagmsg:Msg"
  %l164 = alloca i64
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
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
  br label %bb74
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l24, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t35)
  store ptr %t37, ptr %l26
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l26, !tbaa !29
  %t40 = getelementptr %"compiler/check:frame", ptr %t38, i32 0, i32 2
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t47 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t44, i64 %t41, i32 %t43)
  store %"compiler/names:Ref" %t47, ptr %l30
  br label %bb7
bb7:
  %t48 = load %"compiler/names:Ref", ptr %l30
  store %"compiler/names:Ref" %t48, ptr %l5
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp sgt i64 %t51, 1
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t56 = load i32, ptr %t55, !range !{i32 0, i32 9}
  %t58 = trunc i64 0 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l34, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l39, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t69)
  store ptr %t71, ptr %l41
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t72 = load ptr, ptr %l41, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t81 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t78, i64 %t75, i32 %t77)
  store %"compiler/names:Ref" %t81, ptr %l45
  br label %bb14
bb14:
  %t82 = load %"compiler/names:Ref", ptr %l45
  store %"compiler/names:Ref" %t82, ptr %l5
  br label %bb15
bb15:
  %t83 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 9}
  %t86 = trunc i64 0 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t93 = icmp eq i64 %t91, 1
  store i1 %t93, ptr %l48, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb18
bb18:
  %t95 = load i1, ptr %l48, !tbaa !21
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l2
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l54, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 0
  %t102 = load i32, ptr %t101, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t96, %"compiler/source:Span" %t97, i32 %t102)
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  %t107 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t108 = load i32, ptr %t107, !range !{i32 0, i32 9}
  %t110 = trunc i64 4 to i32
  %t111 = icmp eq i32 %t108, %t110
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb25
bb24:
  %t115 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  store i1 %t118, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t120 = load i1, ptr %l60, !tbaa !21
  br i1 %t120, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb30
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  store ptr %t126, ptr %l66, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t131 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t134 = load i64, ptr %t133, !tbaa !24
  %t138 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t130, i64 %t132, i64 %t134)
  store i32 %t138, ptr %l71
  br label %bb28
bb28:
  %t139 = load ptr, ptr %l66, !tbaa !29
  %t140 = load i32, ptr %l71, !tbaa !23
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t141, ptr %l72
  br label %bb29
bb29:
  %t142 = load i32, ptr %l72, !range !{i32 0, i32 6}
  %t144 = trunc i64 3 to i32
  %t145 = icmp eq i32 %t142, %t144
  %t147 = xor i1 %t145, true
  store i1 %t147, ptr %l63, !tbaa !21
  br label %bb30
bb30:
  %t149 = load i1, ptr %l63, !tbaa !21
  br i1 %t149, label %bb31, label %bb32
bb31:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l76, !tbaa !29
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t151)
  store %"compiler/source:Span" %t153, ptr %l78
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l79, !tbaa !29
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t155)
  store %"compiler/source:Span" %t157, ptr %l81
  br label %bb34
bb34:
  %t158 = load ptr, ptr %l79, !tbaa !29
  %t159 = load %"compiler/source:Span", ptr %l81
  %t160 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t158, %"compiler/source:Span" %t159)
  store { i64, ptr } %t160, ptr %l82
  br label %bb35
bb35:
  %t161 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t162 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotTrait(ptr %v0, ptr %v0, { i64, ptr } %t161)
  store %"compiler/diagmsg:Msg" %t162, ptr %l83
  br label %bb36
bb36:
  %t163 = load ptr, ptr %l76, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l78
  %t165 = load %"compiler/diagmsg:Msg", ptr %l83
  %t166 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t163, %"compiler/source:Span" %t164, %"compiler/diagmsg:Msg" %t165)
  store i64 %t166, ptr %l84
  br label %bb37
bb37:
  store i1 false, ptr %rv
  br label %ret
bb38:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t172 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t173 = load i64, ptr %t172, !tbaa !24
  %t174 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t175 = load i64, ptr %t174, !tbaa !24
  %t179 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t171, i64 %t173, i64 %t175)
  store i32 %t179, ptr %l90
  br label %bb39
bb39:
  %t180 = load i32, ptr %l90, !tbaa !23
  store i32 %t180, ptr %l6, !tbaa !23
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t185 = load i32, ptr %l6, !tbaa !23
  %t186 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t190 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %t184, i32 %t185, { i64, ptr } %t186)
  store i1 %t190, ptr %l95
  br label %bb40
bb40:
  %t191 = load i1, ptr %l95, !tbaa !21
  %t192 = xor i1 %t191, true
  br i1 %t192, label %bb41, label %bb42
bb41:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l97, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t195)
  store %"compiler/source:Span" %t197, ptr %l99
  br label %bb43
bb42:
  br label %bb49
bb43:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t199, ptr %l101, !tbaa !27
  %t200 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t204 = sub i64 %t202, 1
  %t206 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i32, ptr %t207, i64 %t204
  %t209 = load i32, ptr %t208, !tbaa !33
  %t212 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t198, i32 %t209)
  store { i64, ptr } %t212, ptr %l106
  br label %bb44
bb44:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/check:Checker", ptr %t213, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t217 = load i32, ptr %l6, !tbaa !23
  %t220 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t216, i32 %t217)
  store i64 %t220, ptr %l110
  br label %bb45
bb45:
  %t221 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t223 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t221)
  store i64 %t223, ptr %l112
  br label %bb46
bb46:
  %t224 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t225 = load i64, ptr %l110, !tbaa !24
  %t226 = load i64, ptr %l112, !tbaa !24
  %t227 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v0, { i64, ptr } %t224, i64 %t225, i64 %t226)
  store %"compiler/diagmsg:Msg" %t227, ptr %l113
  br label %bb47
bb47:
  %t228 = load ptr, ptr %l97, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l99
  %t230 = load %"compiler/diagmsg:Msg", ptr %l113
  %t231 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t228, %"compiler/source:Span" %t229, %"compiler/diagmsg:Msg" %t230)
  store i64 %t231, ptr %l114
  br label %bb48
bb48:
  store i1 false, ptr %rv
  br label %ret
bb49:
  %t233 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t233, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 0
  store i64 %t237, ptr %l9, !tbaa !24
  br label %bb50
bb50:
  %t239 = load i64, ptr %l8, !tbaa !24
  %t240 = load i64, ptr %l9, !tbaa !24
  %t243 = icmp slt i64 %t239, %t240
  %t245 = xor i1 %t243, true
  br i1 %t245, label %bb51, label %bb52
bb51:
  br label %bb63
bb52:
  br label %bb53
bb53:
  %t247 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t247, ptr %l123, !tbaa !27
  %t248 = load i64, ptr %l8, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr ptr, ptr %t251, i64 %t248
  %t253 = load ptr, ptr %t252, !tbaa !39
  store ptr %t253, ptr %l10, !tbaa !29
  %t255 = load ptr, ptr %l10, !tbaa !29
  %t257 = call i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v1, ptr %t255)
  store i1 %t257, ptr %l127
  br label %bb54
bb54:
  %t258 = load i1, ptr %l127, !tbaa !21
  br i1 %t258, label %bb55, label %bb56
bb55:
  br label %bb62
bb56:
  br label %bb57
bb57:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l10, !tbaa !29
  %t264 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t259, ptr %t260)
  store i1 %t264, ptr %l131
  br label %bb58
bb58:
  %t265 = load i1, ptr %l131, !tbaa !21
  %t266 = xor i1 %t265, true
  br i1 %t266, label %bb59, label %bb60
bb59:
  store i1 false, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t269 = load i64, ptr %l8, !tbaa !24
  %t271 = add i64 %t269, 1
  store i64 %t271, ptr %l8, !tbaa !24
  br label %bb50
bb63:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i32, ptr %l6, !tbaa !23
  %t277 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRequired(ptr %v0, ptr %t273, i32 %t274, i64 0)
  store i32 %t277, ptr %l138
  br label %bb64
bb64:
  %t278 = load i32, ptr %l138, !tbaa !23
  store i32 %t278, ptr %l11, !tbaa !23
  %t279 = load i32, ptr %l11, !tbaa !23
  %t281 = icmp ne i32 %t279, 0
  br i1 %t281, label %bb65, label %bb66
bb65:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l141, !tbaa !29
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t284)
  store %"compiler/source:Span" %t286, ptr %l143
  br label %bb67
bb66:
  br label %bb73
bb67:
  %t287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t287, ptr %l144, !tbaa !29
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t288)
  store %"compiler/source:Span" %t290, ptr %l146
  br label %bb68
bb68:
  %t291 = load ptr, ptr %l144, !tbaa !29
  %t292 = load %"compiler/source:Span", ptr %l146
  %t293 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t291, %"compiler/source:Span" %t292)
  store { i64, ptr } %t293, ptr %l147
  br label %bb69
bb69:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i32, ptr %l11, !tbaa !23
  %t298 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t294, i32 %t295)
  store { i64, ptr } %t298, ptr %l150
  br label %bb70
bb70:
  %t299 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t299, 0
  %t301 = extractvalue { i64, ptr } %t299, 1
  %t302 = mul i64 %t300, 1
  %t303 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t302)
  call void @llvm.memcpy.p0.p0.i64(ptr %t303, ptr %t301, i64 %t302, i1 false)
  %t304 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr %t303, 1
  %t306 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t308 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOfBuilderTrait(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t306, { i64, ptr } %t305)
  store %"compiler/diagmsg:Msg" %t308, ptr %l152
  br label %bb71
bb71:
  %t309 = load ptr, ptr %l141, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l143
  %t311 = load %"compiler/diagmsg:Msg", ptr %l152
  %t312 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t309, %"compiler/source:Span" %t310, %"compiler/diagmsg:Msg" %t311)
  store i64 %t312, ptr %l153
  br label %bb72
bb72:
  store i1 false, ptr %rv
  br label %ret
bb73:
  store i1 true, ptr %rv
  br label %ret
bb74:
  br i1 true, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb83
bb77:
  %t315 = load ptr, ptr %l0, !tbaa !29
  store ptr %t315, ptr %l156, !tbaa !29
  %t316 = load ptr, ptr %l1, !tbaa !29
  %t318 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t316)
  store %"compiler/source:Span" %t318, ptr %l158
  br label %bb78
bb78:
  %t319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t319, ptr %l159, !tbaa !29
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t320)
  store %"compiler/source:Span" %t322, ptr %l161
  br label %bb79
bb79:
  %t323 = load ptr, ptr %l159, !tbaa !29
  %t324 = load %"compiler/source:Span", ptr %l161
  %t325 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t323, %"compiler/source:Span" %t324)
  store { i64, ptr } %t325, ptr %l162
  br label %bb80
bb80:
  %t326 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t327 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotTrait(ptr %v0, ptr %v0, { i64, ptr } %t326)
  store %"compiler/diagmsg:Msg" %t327, ptr %l163
  br label %bb81
bb81:
  %t328 = load ptr, ptr %l156, !tbaa !29
  %t329 = load %"compiler/source:Span", ptr %l158
  %t330 = load %"compiler/diagmsg:Msg", ptr %l163
  %t331 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t328, %"compiler/source:Span" %t329, %"compiler/diagmsg:Msg" %t330)
  store i64 %t331, ptr %l164
  br label %bb82
bb82:
  store i1 false, ptr %rv
  br label %ret
bb83:
  call void @__olang_check_failed(ptr @olang_loc_f1dda0dd7850fdf4_6d8deef1a8ceb3f0)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l42 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t31 = alloca { i64, [4 x i64] }, align 8
  %t42 = alloca { i64, [4 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t105 = alloca { i64, [4 x i64] }, align 8
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
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l18
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t27, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t28, ptr %l19
  br label %bb7
bb7:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load %"compiler/source:Span", ptr %l2
  store { i64, [4 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 0
  store i64 0, ptr %t32
  %t34 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t30, 0
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span" } %t34, ptr %t35
  %t36 = load { i64, [4 x i64] }, ptr %t31
  %t38 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t36, ptr %t38
  store ptr %t38, ptr %l20, !tbaa !29
  br label %bb10
bb9:
  %t40 = load %"compiler/source:Span", ptr %l2
  %t41 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t42
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 0
  store i64 3, ptr %t43
  %t45 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t40, 0
  %t47 = insertvalue { %"compiler/source:Span", i32 } %t45, i32 %t41, 1
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t47, ptr %t48
  %t49 = load { i64, [4 x i64] }, ptr %t42
  %t51 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t49, ptr %t51
  store ptr %t51, ptr %l20, !tbaa !29
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l20, !tbaa !29
  store ptr %t53, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  br label %bb24
bb11:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t55 = load ptr, ptr %l28, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 30}
  %t61 = icmp eq i64 %t59, 26
  store i1 %t61, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t62 = load i1, ptr %l29, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 0
  %t67 = load %"compiler/source:Span", ptr %t66
  store %"compiler/source:Span" %t67, ptr %l4
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 1
  %t73 = load i32, ptr %t72
  store i32 %t73, ptr %l5, !tbaa !23
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l6, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t81 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t81, ptr %l38
  %t82 = load i32, ptr %l5, !tbaa !23
  store i32 %t82, ptr %l39, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l6, !tbaa !29
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPattern(ptr %v0, ptr %v1, ptr %v2, ptr %t83, ptr %t84)
  store ptr %t87, ptr %l42
  br label %bb17
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 8, ptr %t89
  %t90 = load %"compiler/source:Span", ptr %l38
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t90, 0
  %t92 = load i32, ptr %l39, !tbaa !23
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } %t91, i32 %t92, 1
  %t94 = load ptr, ptr %l42, !tbaa !29
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr } %t93, ptr %t94, 2
  %t96 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t95, ptr %t96
  %t97 = load { i64, [4 x i64] }, ptr %t88
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t97, ptr %t99
  store ptr %t99, ptr %l7, !tbaa !29
  br label %bb24
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l46
  br label %bb22
bb22:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 0
  store i64 4, ptr %t106
  %t107 = load %"compiler/source:Span", ptr %l46
  %t108 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t107, 0
  %t110 = insertvalue { %"compiler/source:Span", ptr } %t108, ptr %t104, 1
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t110, ptr %t111
  %t112 = load { i64, [4 x i64] }, ptr %t105
  %t114 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t112, ptr %t114
  store ptr %t114, ptr %l7, !tbaa !29
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_b78a810d1a1c5501_e464ed0c2b3f2415)
  unreachable
bb24:
  %t116 = load ptr, ptr %l7, !tbaa !29
  store ptr %t116, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2, i32 %a1)
  store i32 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t8 = load i32, ptr %l6, !tbaa !23
  %t9 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i32, ptr %l7, !tbaa !23
  store i32 %t10, ptr %l2, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l12
  br label %bb3
bb3:
  %t21 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t23 = trunc i64 19 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = load i32, ptr %l2, !tbaa !23
  store i32 %t26, ptr %l15, !tbaa !23
  br label %bb6
bb5:
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t28, ptr %l15, !tbaa !23
  br label %bb6
bb6:
  %t30 = load i32, ptr %l15, !tbaa !23
  store i32 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l25 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca i1
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2epastAway(ptr %v1, ptr %v2, ptr %a1)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 3
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = call ptr @compiler_2fcheck_2ewholeTemp(ptr %v2, ptr %v2, ptr %t20)
  store ptr %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l16, !tbaa !29
  store ptr %t23, ptr %l8, !tbaa !29
  br label %bb20
bb8:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t25 = load ptr, ptr %l17, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l17, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 5
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l18, !tbaa !21
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Promote", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2epastAway(ptr %v2, ptr %v2, ptr %t42)
  store ptr %t44, ptr %l25
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l25, !tbaa !29
  store ptr %t45, ptr %l8, !tbaa !29
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store ptr null, ptr %l8, !tbaa !29
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_943b293e8fd49f1f_6252e979531a6d2b)
  unreachable
bb20:
  %t47 = load ptr, ptr %l8, !tbaa !29
  store ptr %t47, ptr %l5, !tbaa !29
  %t48 = load ptr, ptr %l5, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  br i1 %t50, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb24
bb22:
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t56 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatCallee(ptr %v0, ptr %v2, ptr %a0, ptr %t53)
  store i1 %t56, ptr %l32
  br label %bb23
bb23:
  %t57 = load i1, ptr %l32, !tbaa !21
  %t58 = xor i1 %t57, true
  store i1 %t58, ptr %l29, !tbaa !21
  br label %bb24
bb24:
  %t60 = load i1, ptr %l29, !tbaa !21
  br i1 %t60, label %bb25, label %bb26
bb25:
  store ptr null, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t62 = load ptr, ptr %l5, !tbaa !29
  store ptr %t62, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a2)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 11
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_76c98d42818871e4_51853c380fcafc70)
  unreachable
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 11
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Block", ptr %t26, i32 0, i32 1
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  store i64 %t34, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  br label %bb38
bb10:
  br label %bb11
bb11:
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t44, ptr %l30, !tbaa !27
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr ptr, ptr %t48, i64 %t45
  %t50 = load ptr, ptr %t49, !tbaa !39
  store ptr %t50, ptr %l7, !tbaa !29
  %t52 = load ptr, ptr %l7, !tbaa !29
  store ptr %t52, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t53 = load ptr, ptr %l33, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load ptr, ptr %l33, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 17}
  %t59 = icmp eq i64 %t57, 1
  store i1 %t59, ptr %l34, !tbaa !21
  br label %bb13
bb13:
  %t60 = load i1, ptr %l34, !tbaa !21
  br i1 %t60, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l7, !tbaa !29
  %t63 = getelementptr { i64, [3 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t63, i32 0, i32 1
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l8, !tbaa !29
  %t67 = load ptr, ptr %l7, !tbaa !29
  %t69 = getelementptr { i64, [3 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t69, i32 0, i32 2
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l9, !tbaa !29
  br label %bb16
bb15:
  br label %bb30
bb16:
  %t73 = load ptr, ptr %l8, !tbaa !29
  store ptr %t73, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t74 = load ptr, ptr %l41, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t77 = load ptr, ptr %l41, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 8}
  %t80 = icmp eq i64 %t78, 1
  store i1 %t80, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t81 = load i1, ptr %l42, !tbaa !21
  br i1 %t81, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t84 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v0, ptr %t82, ptr %t83, ptr %t84)
  br label %bb22
bb22:
  br label %bb29
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t91 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v0, ptr %t89, ptr %t90, ptr %t91)
  br label %bb27
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_5b6dfd884f12314a_d55d816e86cc2196)
  unreachable
bb29:
  br label %bb36
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t98 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v0, ptr %t96, ptr %t97, ptr %t98)
  br label %bb34
bb34:
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_fdeda218c1a4d1e1_676c59a9a8adaaad)
  unreachable
bb36:
  br label %bb37
bb37:
  %t103 = load i64, ptr %l5, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l5, !tbaa !24
  br label %bb8
bb38:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindsType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %s1 = alloca %olang.scope
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %t17)
  store { i64, ptr } %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t21, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t22, ptr %l12
  br label %bb7
bb7:
  %t23 = load i1, ptr %l12, !tbaa !21
  %t24 = xor i1 %t23, true
  call void @__olang_scope_close(ptr %s1)
  store i1 %t24, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_357157b7b16ebf19_d0077534c0a9b60d)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyAttrs(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l41 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l86 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l112 = alloca ptr
  %l113 = alloca i1
  %l129 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t2 = load ptr, ptr %l27, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l27, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l28, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l28, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [6 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/ast:StructBody", ptr %t16, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t33, ptr %l41, !tbaa !27
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 %t34
  %t39 = load ptr, ptr %t38, !tbaa !39
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = getelementptr %"compiler/ast:Param", ptr %t39, i32 0, i32 4
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t41, i64 %t42, { i64, ptr } %t46)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb6
bb12:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr %"compiler/ast:StructBody", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  store i64 %t61, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb14, label %bb15
bb14:
  br label %bb30
bb15:
  br label %bb16
bb16:
  %t71 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t71, ptr %l58, !tbaa !27
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr ptr, ptr %t75, i64 %t72
  %t77 = load ptr, ptr %t76, !tbaa !39
  store ptr %t77, ptr %l11, !tbaa !29
  %t79 = load ptr, ptr %l11, !tbaa !29
  store ptr %t79, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t80 = load ptr, ptr %l61, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb17, label %bb18
bb17:
  %t83 = load ptr, ptr %l61, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 22}
  %t86 = icmp eq i64 %t84, 1
  store i1 %t86, ptr %l62, !tbaa !21
  br label %bb18
bb18:
  %t87 = load i1, ptr %l62, !tbaa !21
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t88 = load ptr, ptr %l11, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", ptr }, ptr %t90, i32 0, i32 1
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l12, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l1, !tbaa !24
  %t96 = load ptr, ptr %l12, !tbaa !29
  %t98 = getelementptr %"compiler/ast:VarDecl", ptr %t96, i32 0, i32 6
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t94, i64 %t95, { i64, ptr } %t99)
  br label %bb22
bb22:
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
  call void @__olang_check_failed(ptr @olang_loc_975dab88aa27b035_9179ffefefe8db69)
  unreachable
bb28:
  br label %bb29
bb29:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l9, !tbaa !24
  br label %bb13
bb30:
  br label %bb72
bb31:
  %t107 = load ptr, ptr %l2, !tbaa !29
  store ptr %t107, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t108 = load ptr, ptr %l73, !tbaa !29
  %t109 = icmp ne ptr %t108, null
  br i1 %t109, label %bb32, label %bb33
bb32:
  %t111 = load ptr, ptr %l73, !tbaa !29
  %t112 = load i64, ptr %t111, !range !{i64 0, i64 5}
  %t114 = icmp eq i64 %t112, 1
  store i1 %t114, ptr %l74, !tbaa !21
  br label %bb33
bb33:
  %t115 = load i1, ptr %l74, !tbaa !21
  br i1 %t115, label %bb34, label %bb35
bb34:
  %t116 = load ptr, ptr %l2, !tbaa !29
  %t118 = getelementptr { i64, [6 x i64] }, ptr %t116, i32 0, i32 1
  %t119 = getelementptr { { i64, ptr }, ptr }, ptr %t118, i32 0, i32 0
  %t120 = load { i64, ptr }, ptr %t119
  store { i64, ptr } %t120, ptr %l13, !tbaa !27
  br label %bb36
bb35:
  br label %bb51
bb36:
  %t122 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t122, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  store i64 %t126, ptr %l16, !tbaa !24
  br label %bb37
bb37:
  %t128 = load i64, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l16, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb38, label %bb39
bb38:
  br label %bb50
bb39:
  br label %bb40
bb40:
  %t136 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t136, ptr %l86, !tbaa !27
  %t137 = load i64, ptr %l15, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr ptr, ptr %t140, i64 %t137
  %t142 = load ptr, ptr %t141, !tbaa !39
  store ptr %t142, ptr %l17, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l1, !tbaa !24
  %t146 = load ptr, ptr %l17, !tbaa !29
  %t148 = getelementptr %"compiler/ast:CaseDecl", ptr %t146, i32 0, i32 5
  %t149 = load { i64, ptr }, ptr %t148, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t144, i64 %t145, { i64, ptr } %t149)
  br label %bb41
bb41:
  %t153 = load ptr, ptr %l17, !tbaa !29
  %t155 = getelementptr %"compiler/ast:CaseDecl", ptr %t153, i32 0, i32 2
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  store i64 %t160, ptr %l20, !tbaa !24
  br label %bb42
bb42:
  %t162 = load i64, ptr %l19, !tbaa !24
  %t163 = load i64, ptr %l20, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb43, label %bb44
bb43:
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t170 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t170, ptr %l101, !tbaa !27
  %t171 = load i64, ptr %l19, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr ptr, ptr %t174, i64 %t171
  %t176 = load ptr, ptr %t175, !tbaa !39
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l1, !tbaa !24
  %t182 = getelementptr %"compiler/ast:Param", ptr %t176, i32 0, i32 4
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t178, i64 %t179, { i64, ptr } %t183)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t187 = load i64, ptr %l19, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l19, !tbaa !24
  br label %bb42
bb48:
  br label %bb49
bb49:
  %t191 = load i64, ptr %l15, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l15, !tbaa !24
  br label %bb37
bb50:
  br label %bb72
bb51:
  %t195 = load ptr, ptr %l2, !tbaa !29
  store ptr %t195, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t196 = load ptr, ptr %l112, !tbaa !29
  %t197 = icmp ne ptr %t196, null
  br i1 %t197, label %bb52, label %bb53
bb52:
  %t199 = load ptr, ptr %l112, !tbaa !29
  %t200 = load i64, ptr %t199, !range !{i64 0, i64 5}
  %t202 = icmp eq i64 %t200, 3
  store i1 %t202, ptr %l113, !tbaa !21
  br label %bb53
bb53:
  %t203 = load i1, ptr %l113, !tbaa !21
  br i1 %t203, label %bb54, label %bb55
bb54:
  %t204 = load ptr, ptr %l2, !tbaa !29
  %t206 = getelementptr { i64, [6 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { ptr, ptr }, ptr %t206, i32 0, i32 1
  %t208 = load ptr, ptr %t207
  store ptr %t208, ptr %l22, !tbaa !29
  br label %bb56
bb55:
  br label %bb67
bb56:
  %t210 = load ptr, ptr %l22, !tbaa !29
  %t212 = icmp eq ptr %t210, null
  br i1 %t212, label %bb57, label %bb58
bb57:
  br label %ret
bb58:
  br label %bb59
bb59:
  %t214 = load ptr, ptr %l22, !tbaa !29
  %t216 = getelementptr %"compiler/ast:Func", ptr %t214, i32 0, i32 3
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/ast:Sig", ptr %t217, i32 0, i32 0
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t222 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 0
  store i64 %t224, ptr %l25, !tbaa !24
  br label %bb60
bb60:
  %t226 = load i64, ptr %l24, !tbaa !24
  %t227 = load i64, ptr %l25, !tbaa !24
  %t230 = icmp slt i64 %t226, %t227
  %t232 = xor i1 %t230, true
  br i1 %t232, label %bb61, label %bb62
bb61:
  br label %bb66
bb62:
  br label %bb63
bb63:
  %t234 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t234, ptr %l129, !tbaa !27
  %t235 = load i64, ptr %l24, !tbaa !24
  %t237 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr ptr, ptr %t238, i64 %t235
  %t240 = load ptr, ptr %t239, !tbaa !39
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i64, ptr %l1, !tbaa !24
  %t246 = getelementptr %"compiler/ast:Param", ptr %t240, i32 0, i32 4
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %t242, i64 %t243, { i64, ptr } %t247)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t251 = load i64, ptr %l24, !tbaa !24
  %t253 = add i64 %t251, 1
  store i64 %t253, ptr %l24, !tbaa !24
  br label %bb60
bb66:
  br label %bb72
bb67:
  br i1 true, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_56f34cbe69cc2144_1c22b0ab9b9be498)
  unreachable
bb72:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:Origin"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca i1
  %l46 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l57 = alloca %"compiler/generic:Origin"
  %l69 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l89 = alloca i32
  %l91 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load i64, ptr %l16, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 64, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l23, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l23, !tbaa !24
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l20, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l46, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t64, i64 %t65)
  store i32 %t68, ptr %l50
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l46, !tbaa !29
  %t70 = load i32, ptr %l50, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l51
  br label %bb15
bb15:
  %t72 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t75 = icmp eq i64 %t73, 0
  store i1 %t75, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l43, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t82 = load i64, ptr %l2, !tbaa !24
  %t85 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/generic:Origin" %t85, ptr %l57
  br label %bb20
bb20:
  %t86 = load %"compiler/generic:Origin", ptr %l57
  store %"compiler/generic:Origin" %t86, ptr %l10
  %t87 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = icmp slt i64 %t88, 0
  br i1 %t90, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t92 = load i64, ptr %l2, !tbaa !24
  store i64 %t92, ptr %l3, !tbaa !24
  %t94 = getelementptr %"compiler/generic:Origin", ptr %l10, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  store i64 %t95, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l8, !tbaa !24
  br label %bb8
bb25:
  %t101 = load i64, ptr %l3, !tbaa !24
  %t103 = icmp slt i64 %t101, 0
  br i1 %t103, label %bb26, label %bb27
bb26:
  store i64 -1, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  store ptr %t111, ptr %l69, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t116 = load i64, ptr %l3, !tbaa !24
  %t119 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t115, i64 %t116)
  store i32 %t119, ptr %l73
  br label %bb29
bb29:
  %t120 = load ptr, ptr %l69, !tbaa !29
  %t121 = load i32, ptr %l73, !tbaa !23
  %t122 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t120, i32 %t121)
  store { i64, ptr } %t122, ptr %l74
  br label %bb30
bb30:
  %t123 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t123, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  store i64 %t126, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  %t128 = load i64, ptr %l12, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t136 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t136, ptr %l81, !tbaa !27
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 %t137
  %t142 = load i32, ptr %t141, !tbaa !33
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/generic:Program", ptr %t147, i32 0, i32 2
  store ptr %t149, ptr %l86, !tbaa !29
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t154 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t150, i32 %t142)
  store i32 %t154, ptr %l89
  br label %bb35
bb35:
  %t156 = load ptr, ptr %l86, !tbaa !29
  %t157 = load i32, ptr %l89, !tbaa !23
  %t159 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t156, i32 %t157, i32 %a1)
  store i1 %t159, ptr %l91
  br label %bb36
bb36:
  %t160 = load i1, ptr %l91, !tbaa !21
  br i1 %t160, label %bb37, label %bb38
bb37:
  %t161 = load i64, ptr %l3, !tbaa !24
  store i64 %t161, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t163 = load i64, ptr %l12, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l12, !tbaa !24
  br label %bb31
bb41:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseNameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i32
  %l9 = alloca { i64, ptr }
  %l13 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:CaseDecl", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"compiler/source:Span", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/ast:CaseDecl", ptr %t6, i32 0, i32 0
  %t9 = getelementptr %"compiler/source:Span", ptr %t8, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/ast:CaseDecl", ptr %t12, i32 0, i32 1
  %t15 = load i32, ptr %t14, !tbaa !23
  %t18 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %a0, i32 %t15)
  store { i64, ptr } %t18, ptr %l9
  br label %bb1
bb1:
  %t19 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  %t22 = trunc i64 %t20 to i32
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = add i32 %t23, %t22
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t26, i32 %t25)
  store %"compiler/source:Span" %t28, ptr %l13
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t29, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuteParam(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i64
  %l11 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l4, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load i32, ptr %l7, !tbaa !23
  %t12 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %t9, i32 %t10, i32 %a2)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr %l1, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %t14, i64 %t15, i32 %t13)
  store i32 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i32, ptr %l11, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l12 = alloca ptr
  %l17 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 40
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l3, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 40
  store i1 false, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i1, ptr %l3, !tbaa !21
  %t17 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr1(ptr %v0, ptr %v1, ptr %v2, ptr %t9, ptr %a1, i32 %a2, i1 %t12)
  store ptr %t17, ptr %l12
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l12, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  %t19 = load i1, ptr %l3, !tbaa !21
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l4, !tbaa !29
  store ptr %t21, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v2, ptr %v2, ptr %t23, ptr %t24)
  store ptr %t27, ptr %l17
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l17, !tbaa !29
  store ptr %t28, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l31 = alloca i64
  %l34 = alloca i64
  %l60 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca ptr
  %l71 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l72 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca i32
  %l77 = alloca i1
  %l86 = alloca { i64, ptr }
  %l92 = alloca i64
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %wh7 = alloca ptr
  %wc7 = alloca ptr
  %ws7 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l21
  br label %bb1
bb1:
  %t9 = load i1, ptr %l21, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s1, ptr %t13, i32 %t14)
  store { i64, ptr } %t17, ptr %l25
  br label %bb4
bb3:
  br label %bb20
bb4:
  %t18 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb10
bb7:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l34, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l34, !tbaa !24
  store i64 %t49, ptr %l31, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l31, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l8, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 %t69
  %t74 = load i32, ptr %t73, !tbaa !33
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = icmp eq i32 %t74, %t75
  br i1 %t78, label %bb15, label %bb16
bb15:
  %t80 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t80, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb11
bb19:
  call void @__olang_scope_close(ptr %s1)
  store i64 -1, ptr %rv
  br label %ret
bb20:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l60, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l1, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l65
  br label %bb21
bb21:
  %t98 = load ptr, ptr %l60, !tbaa !29
  %t99 = load i32, ptr %l65, !tbaa !23
  %t100 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v0, ptr %t98, i32 %t99)
  store ptr %t100, ptr %l66
  br label %bb22
bb22:
  %t101 = load ptr, ptr %l66, !tbaa !29
  store ptr %t101, ptr %l10, !tbaa !29
  %t102 = load ptr, ptr %l10, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb23, label %bb24
bb23:
  store i64 -1, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  store i64 0, ptr %l11, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s7
  %t107 = load ptr, ptr %l10, !tbaa !29
  %t109 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s7, ptr %t107)
  %t110 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t109, 0, 1
  %t111 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t109, 0, 0
  store ptr %t110, ptr %wh7
  store ptr %t111, ptr %wc7
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t109, ptr %l71
  br label %bb26
bb26:
  %t112 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l71
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t112, ptr %l12
  br label %bb27
bb27:
  %t114 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s7, ptr %l12)
  %t115 = extractvalue { i32, ptr } %t114, 1
  %t116 = extractvalue { i32, ptr } %t114, 0
  store i32 %t116, ptr %l75
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb29, label %ok.118, !prof !99
ok.118:
  store ptr %t115, ptr %l74
  br label %bb28
bb28:
  %t119 = load ptr, ptr %l74, !tbaa !29
  store ptr %t119, ptr %l72, !tbaa !29
  br label %bb31
bb29:
  %t120 = load i32, ptr %l75, !tbaa !23
  %t121 = ashr i32 %t120, 16
  %t123 = icmp eq i32 %t121, 1
  store i1 %t123, ptr %l77, !tbaa !21
  br label %bb30
bb30:
  br label %bb42
bb31:
  %t124 = load ptr, ptr %l72, !tbaa !29
  %t127 = getelementptr %"compiler/ast:VarDecl", ptr %t124, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l16, !tbaa !24
  br label %bb32
bb32:
  %t134 = load i64, ptr %l15, !tbaa !24
  %t135 = load i64, ptr %l16, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb33, label %bb34
bb33:
  br label %bb40
bb34:
  br label %bb35
bb35:
  %t142 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t142, ptr %l86, !tbaa !27
  %t143 = load i64, ptr %l15, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr i32, ptr %t146, i64 %t143
  %t148 = load i32, ptr %t147, !tbaa !33
  %t151 = load i32, ptr %l2, !tbaa !23
  %t154 = icmp eq i32 %t148, %t151
  br i1 %t154, label %bb36, label %bb37
bb36:
  %t156 = load i64, ptr %l11, !tbaa !24
  store i64 %t156, ptr %l92, !tbaa !24
  store i32 0, ptr %ws7
  br label %wend7
wend7.c0:
  call void @__olang_scope_close(ptr %s7)
  %t157 = load i64, ptr %l92, !tbaa !24
  store i64 %t157, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l11, !tbaa !24
  br label %bb39
bb39:
  %t162 = load i64, ptr %l15, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l15, !tbaa !24
  br label %bb32
bb40:
  br label %bb41
bb41:
  br label %bb27
bb42:
  store i32 1, ptr %ws7
  br label %wend7
wend7.c1:
  call void @__olang_scope_close(ptr %s7)
  store i64 -1, ptr %rv
  br label %ret
wend7:
  %t167 = load ptr, ptr %wh7
  %t168 = load ptr, ptr %wc7
  %t169 = call ptr @llvm.coro.promise(ptr %t167, i32 8, i1 false)
  %t170 = getelementptr { { i32, ptr }, i32 }, ptr %t169, i32 0, i32 1
  store i32 2, ptr %t170
  %t171 = call { i32, ptr } %t168(ptr %t167, ptr null)
  %t172 = load i32, ptr %ws7
  switch i32 %t172, label %wend7.c0 [ i32 1, label %wend7.c1 ]
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnNameAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i64
  %l23 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l39 = alloca i64
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i32
  %l68 = alloca i64
  %l80 = alloca ptr
  %rv = alloca { i64, [3 x i64] }
  %t179 = alloca { i64, [3 x i64] }, align 8
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
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l13, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l17
  br label %bb2
bb2:
  %t18 = load i64, ptr %l17, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l23
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l23, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 6
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a78beee7b0d01a06_c23e8f3cd3901b22)
  unreachable
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/source:Source", ptr %t41, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t47, i32 %t51)
  store { i64, ptr } %t54, ptr %l34
  br label %bb7
bb7:
  %t55 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t55, ptr %l6, !tbaa !27
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Func", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb8, label %bb9
bb8:
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr %"compiler/ast:Func", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  br i1 %t70, label %bb10, label %bb11
bb9:
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Func", ptr %t72, i32 0, i32 0
  %t75 = getelementptr %"compiler/source:Span", ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  %t78 = sext i32 %t76 to i64
  %t80 = add i64 %t78, 2
  store i64 %t80, ptr %l39, !tbaa !24
  br label %bb13
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a9ac84188a5d3ced_8a30b05829c2589)
  unreachable
bb11:
  br label %bb12
bb12:
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Param", ptr %t85, i32 0, i32 0
  %t89 = getelementptr %"compiler/source:Span", ptr %t88, i32 0, i32 1
  %t90 = load i32, ptr %t89, !tbaa !23
  %t92 = sext i32 %t90 to i64
  store i64 %t92, ptr %l39, !tbaa !24
  br label %bb13
bb13:
  %t94 = load i64, ptr %l39, !tbaa !24
  store i64 %t94, ptr %l7, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t95, ptr %l53, !tbaa !27
  %t96 = load i64, ptr %l7, !tbaa !24
  store i64 %t96, ptr %l54, !tbaa !24
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Func", ptr %t97, i32 0, i32 0
  %t100 = getelementptr %"compiler/source:Span", ptr %t99, i32 0, i32 1
  %t101 = load i32, ptr %t100, !tbaa !23
  %t103 = sext i32 %t101 to i64
  store i64 %t103, ptr %l57, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l58, !tbaa !24
  %t106 = load i64, ptr %l54, !tbaa !24
  %t107 = icmp sge i64 %t106, 0
  br i1 %t107, label %bb14, label %bb15
bb14:
  %t109 = load i64, ptr %l54, !tbaa !24
  %t110 = load i64, ptr %l57, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d343f6dbe85f33a0_61dfe5c423c7544c)
  unreachable
bb16:
  %t113 = load i64, ptr %l57, !tbaa !24
  %t114 = load i64, ptr %l58, !tbaa !24
  %t115 = icmp sle i64 %t113, %t114
  br i1 %t115, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_d343f6dbe85f33a0_61dfe5c423c7544c)
  unreachable
bb18:
  %t117 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l54, !tbaa !24
  %t120 = load i64, ptr %l57, !tbaa !24
  %t121 = getelementptr i8, ptr %t118, i64 %t119
  %t122 = sub i64 %t120, %t119
  %t123 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t125 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t128 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v0, { i64, ptr } %t124, { i64, ptr } %t125)
  %t129 = extractvalue { i32, i64 } %t128, 1
  %t130 = extractvalue { i32, i64 } %t128, 0
  store i32 %t130, ptr %l65
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb21, label %ok.132, !prof !99
ok.132:
  store i64 %t129, ptr %l64
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d343f6dbe85f33a0_61dfe5c423c7544c)
  unreachable
bb20:
  %t133 = load i64, ptr %l64, !tbaa !24
  store i64 %t133, ptr %l52, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t134 = load i64, ptr %l52, !tbaa !24
  store i64 %t134, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l8, !tbaa !24
  %t137 = icmp slt i64 %t135, 0
  br i1 %t137, label %bb24, label %bb25
bb24:
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr %"compiler/ast:Func", ptr %t139, i32 0, i32 0
  %t142 = getelementptr %"compiler/source:Span", ptr %t141, i32 0, i32 0
  %t143 = load i32, ptr %t142, !tbaa !23
  %t145 = sext i32 %t143 to i64
  store i64 %t145, ptr %l68, !tbaa !24
  br label %bb26
bb25:
  %t147 = load i64, ptr %l7, !tbaa !24
  %t148 = load i64, ptr %l8, !tbaa !24
  %t151 = add i64 %t147, %t148
  store i64 %t151, ptr %l68, !tbaa !24
  br label %bb26
bb26:
  %t153 = load i64, ptr %l68, !tbaa !24
  store i64 %t153, ptr %l9, !tbaa !24
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 0
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/load:Loader", ptr %t160, i32 0, i32 10
  %t163 = load i64, ptr %l3, !tbaa !24
  %t166 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t162, i64 %t163)
  store ptr %t166, ptr %l80
  br label %bb27
bb27:
  %t167 = load ptr, ptr %l80, !tbaa !29
  %t169 = getelementptr %"compiler/load:Module", ptr %t167, i32 0, i32 4
  %t170 = load i64, ptr %t169, !tbaa !24
  %t171 = load i64, ptr %l9, !tbaa !24
  %t172 = load i64, ptr %l9, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t178 = add i64 %t172, %t175
  store { i64, [3 x i64] } zeroinitializer, ptr %t179
  %t180 = getelementptr { i64, [3 x i64] }, ptr %t179, i32 0, i32 0
  store i64 3, ptr %t180
  %t182 = insertvalue { i64, i64, i64 } undef, i64 %t170, 0
  %t184 = insertvalue { i64, i64, i64 } %t182, i64 %t171, 1
  %t186 = insertvalue { i64, i64, i64 } %t184, i64 %t178, 2
  %t187 = getelementptr { i64, [3 x i64] }, ptr %t179, i32 0, i32 1
  store { i64, i64, i64 } %t186, ptr %t187
  %t188 = load { i64, [3 x i64] }, ptr %t179
  store { i64, [3 x i64] } %t188, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/names:Ref"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca %"compiler/names:Ref"
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca ptr
  %l44 = alloca ptr
  %l48 = alloca %"compiler/names:Ref"
  %l55 = alloca i64
  %rv = alloca i64
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
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l20
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t38, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l24
  br label %bb7
bb7:
  %t42 = load %"compiler/names:Ref", ptr %l24
  store %"compiler/names:Ref" %t42, ptr %l4
  %t43 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 9}
  %t46 = trunc i64 3 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load i32, ptr %l3, !tbaa !23
  %t59 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t52, i64 %t54, i32 %t55)
  store i64 %t59, ptr %l31
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t60 = load i64, ptr %l31, !tbaa !24
  store i64 %t60, ptr %rv
  br label %ret
bb11:
  br label %bb29
bb12:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 30}
  %t68 = icmp eq i64 %t66, 14
  store i1 %t68, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t69 = load i1, ptr %l33, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t72, i32 0, i32 0
  %t74 = load %"compiler/source:Span", ptr %t73
  store %"compiler/source:Span" %t74, ptr %l5
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t78, i32 0, i32 2
  %t80 = load i32, ptr %t79
  store i32 %t80, ptr %l6, !tbaa !23
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  store ptr %t88, ptr %l42, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t89)
  store ptr %t91, ptr %l44
  br label %bb18
bb18:
  %t92 = load ptr, ptr %l44, !tbaa !29
  %t94 = getelementptr %"compiler/check:frame", ptr %t92, i32 0, i32 2
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t97 = load i32, ptr %t96, !tbaa !23
  %t98 = load ptr, ptr %l42, !tbaa !29
  %t101 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t98, i64 %t95, i32 %t97)
  store %"compiler/names:Ref" %t101, ptr %l48
  br label %bb19
bb19:
  %t102 = load %"compiler/names:Ref", ptr %l48
  store %"compiler/names:Ref" %t102, ptr %l7
  %t103 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t104 = load i32, ptr %t103, !range !{i32 0, i32 9}
  %t106 = trunc i64 3 to i32
  %t107 = icmp eq i32 %t104, %t106
  br i1 %t107, label %bb20, label %bb21
bb20:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = load i32, ptr %l6, !tbaa !23
  %t119 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t112, i64 %t114, i32 %t115)
  store i64 %t119, ptr %l55
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t120 = load i64, ptr %l55, !tbaa !24
  store i64 %t120, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_2ff0d7eb2fd53f26_264ec5bdf8203eea)
  unreachable
bb29:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAdd(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2ePush_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %t3, %"compiler/check:laneNode" %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 39
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  store i64 %t13, ptr %rv
  br label %ret
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
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
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 37
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalNote(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l14 = alloca %"compiler/typed:Local"
  %l16 = alloca ptr
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i32
  %l27 = alloca %"compiler/source:Span"
  %l33 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i64
  %l41 = alloca { i64, [3 x i64] }
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca { i64, [3 x i64] }
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca ptr
  %l89 = alloca i64
  %l92 = alloca { i64, [3 x i64] }
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l107 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t5)
  store ptr %t7, ptr %l10
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l10, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 7
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t10, i64 %t11)
  store %"compiler/typed:Local" %t14, ptr %l14
  br label %bb5
bb5:
  %t15 = load %"compiler/typed:Local", ptr %l14
  store %"compiler/typed:Local" %t15, ptr %l4
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l16
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l16, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t22, i64 %t23)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26, ptr %l20
  br label %bb7
bb7:
  %t27 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t27, ptr %l5
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 32
  %t31 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t34 = call { i32, %"compiler/source:Span" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7d5384a5030fc995e793b3fe1f57e776(ptr %v0, ptr %t30, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31)
  %t35 = extractvalue { i32, %"compiler/source:Span" } %t34, 1
  %t36 = extractvalue { i32, %"compiler/source:Span" } %t34, 0
  store i32 %t36, ptr %l26
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb9, label %ok.38, !prof !99
ok.38:
  store %"compiler/source:Span" %t35, ptr %l25
  br label %bb8
bb8:
  %t39 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t39, ptr %l21
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t40 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t40, ptr %l27
  br label %bb11
bb11:
  %t41 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t41, ptr %l21
  br label %bb12
bb12:
  %t42 = load %"compiler/source:Span", ptr %l21
  store %"compiler/source:Span" %t42, ptr %l6
  %t43 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = icmp sge i32 %t44, 0
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 33
  %t51 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t54 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t50, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51)
  store i1 %t54, ptr %l33
  br label %bb15
bb14:
  br label %bb34
bb15:
  %t55 = load i1, ptr %l33, !tbaa !21
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 4
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l37, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  store i64 %t66, ptr %l38, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l6
  %t71 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t67, %"compiler/source:Span" %t68)
  store { i64, [3 x i64] } %t71, ptr %l41
  br label %bb18
bb17:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/load:Loader", ptr %t78, i32 0, i32 4
  %t81 = load ptr, ptr %t80, !tbaa !29
  store ptr %t81, ptr %l61, !tbaa !29
  %t82 = load i64, ptr %l1, !tbaa !24
  store i64 %t82, ptr %l62, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l6
  %t87 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t83, %"compiler/source:Span" %t84)
  store { i64, [3 x i64] } %t87, ptr %l65
  br label %bb25
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t93 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t88, i32 %t90)
  store { i64, ptr } %t93, ptr %l44
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t96 = load i32, ptr %t95, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t94, i32 %t96)
  store { i64, ptr } %t99, ptr %l47
  br label %bb20
bb20:
  %t100 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 0
  %t102 = extractvalue { i64, ptr } %t100, 1
  %t103 = mul i64 %t101, 1
  %t104 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t104, ptr %t102, i64 %t103, i1 false)
  %t105 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  store { i64, ptr } %t106, ptr %l48, !tbaa !27
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l3, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t107, i32 %t108)
  store { i64, ptr } %t111, ptr %l51
  br label %bb21
bb21:
  %t112 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l52, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l3, !tbaa !23
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t119, i32 %t120)
  store { i64, ptr } %t123, ptr %l55
  br label %bb22
bb22:
  %t124 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t135 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralRangeExpr(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t131, { i64, ptr } %t132, { i64, ptr } %t133, { i64, ptr } %t130)
  store %"compiler/diagmsg:Msg" %t135, ptr %l57
  br label %bb23
bb23:
  %t136 = load ptr, ptr %l37, !tbaa !29
  %t137 = load i64, ptr %l38, !tbaa !24
  %t138 = load { i64, [3 x i64] }, ptr %l41
  %t139 = load %"compiler/diagmsg:Msg", ptr %l57
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t136, i64 %t137, { i64, [3 x i64] } %t138, %"compiler/diagmsg:Msg" %t139)
  br label %bb24
bb24:
  br label %bb33
bb25:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t142 = load i32, ptr %t141, !tbaa !23
  %t145 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t140, i32 %t142)
  store { i64, ptr } %t145, ptr %l68
  br label %bb26
bb26:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t146, i32 %t148)
  store { i64, ptr } %t151, ptr %l71
  br label %bb27
bb27:
  %t152 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  %t154 = extractvalue { i64, ptr } %t152, 1
  %t155 = mul i64 %t153, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t156, ptr %t154, i64 %t155, i1 false)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  store { i64, ptr } %t158, ptr %l72, !tbaa !27
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr %l3, !tbaa !23
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t159, i32 %t160)
  store { i64, ptr } %t163, ptr %l75
  br label %bb28
bb28:
  %t164 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = mul i64 %t165, 1
  %t168 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t168, ptr %t166, i64 %t167, i1 false)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l76, !tbaa !27
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l6
  %t175 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t171, %"compiler/source:Span" %t172)
  store { i64, ptr } %t175, ptr %l79
  br label %bb29
bb29:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l3, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t176, i32 %t177)
  store { i64, ptr } %t180, ptr %l82
  br label %bb30
bb30:
  %t181 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t193 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralRange(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t188, { i64, ptr } %t189, { i64, ptr } %t190, { i64, ptr } %t191, { i64, ptr } %t187)
  store %"compiler/diagmsg:Msg" %t193, ptr %l84
  br label %bb31
bb31:
  %t194 = load ptr, ptr %l61, !tbaa !29
  %t195 = load i64, ptr %l62, !tbaa !24
  %t196 = load { i64, [3 x i64] }, ptr %l65
  %t197 = load %"compiler/diagmsg:Msg", ptr %l84
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t194, i64 %t195, { i64, [3 x i64] } %t196, %"compiler/diagmsg:Msg" %t197)
  br label %bb32
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/check:Checker", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = getelementptr %"compiler/generic:Program", ptr %t201, i32 0, i32 0
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t206 = getelementptr %"compiler/load:Loader", ptr %t204, i32 0, i32 4
  %t207 = load ptr, ptr %t206, !tbaa !29
  store ptr %t207, ptr %l88, !tbaa !29
  %t208 = load i64, ptr %l1, !tbaa !24
  store i64 %t208, ptr %l89, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 1
  %t211 = load %"compiler/source:Span", ptr %t210
  %t214 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t209, %"compiler/source:Span" %t211)
  store { i64, [3 x i64] } %t214, ptr %l92
  br label %bb35
bb35:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t217 = load i32, ptr %t216, !tbaa !23
  %t220 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t215, i32 %t217)
  store { i64, ptr } %t220, ptr %l95
  br label %bb36
bb36:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t223 = load i32, ptr %t222, !tbaa !23
  %t226 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t221, i32 %t223)
  store { i64, ptr } %t226, ptr %l98
  br label %bb37
bb37:
  %t227 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 0
  %t229 = extractvalue { i64, ptr } %t227, 1
  %t230 = mul i64 %t228, 1
  %t231 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t230)
  call void @llvm.memcpy.p0.p0.i64(ptr %t231, ptr %t229, i64 %t230, i1 false)
  %t232 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t231, 1
  store { i64, ptr } %t233, ptr %l99, !tbaa !27
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 0
  %t236 = load i32, ptr %t235, !tbaa !23
  %t239 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t234, i32 %t236)
  store { i64, ptr } %t239, ptr %l102
  br label %bb38
bb38:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load i32, ptr %l3, !tbaa !23
  %t244 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t240, i32 %t241)
  store { i64, ptr } %t244, ptr %l105
  br label %bb39
bb39:
  %t245 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  %t247 = extractvalue { i64, ptr } %t245, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  %t252 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t256 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralLocal(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t252, { i64, ptr } %t253, { i64, ptr } %t254, { i64, ptr } %t251)
  store %"compiler/diagmsg:Msg" %t256, ptr %l107
  br label %bb40
bb40:
  %t257 = load ptr, ptr %l88, !tbaa !29
  %t258 = load i64, ptr %l89, !tbaa !24
  %t259 = load { i64, [3 x i64] }, ptr %l92
  %t260 = load %"compiler/diagmsg:Msg", ptr %l107
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t257, i64 %t258, { i64, [3 x i64] } %t259, %"compiler/diagmsg:Msg" %t260)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emakesOwner(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l15 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i1
  %l32 = alloca i32
  %l38 = alloca ptr
  %l39 = alloca i32
  %l44 = alloca i32
  %l45 = alloca i1
  %l50 = alloca i32
  %l53 = alloca i1
  %l58 = alloca i32
  %l63 = alloca i32
  %rv = alloca i1
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
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = load i32, ptr %l9, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load i32, ptr %l10, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l15
  br label %bb3
bb3:
  %t26 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t28 = trunc i64 25 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l20, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  store i32 %t37, ptr %l21, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l26
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t48 = load ptr, ptr %l20, !tbaa !29
  %t49 = load i32, ptr %l21, !tbaa !23
  %t50 = load i32, ptr %l26, !tbaa !23
  %t51 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t48, i32 %t49, i32 %t50)
  store i1 %t51, ptr %l27
  br label %bb7
bb7:
  %t52 = load i1, ptr %l27, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l32
  br label %bb9
bb9:
  %t63 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t65 = trunc i64 18 to i32
  %t66 = icmp eq i32 %t63, %t65
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb10, label %bb11
bb10:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  store ptr %t75, ptr %l38, !tbaa !29
  %t76 = load i32, ptr %l3, !tbaa !23
  store i32 %t76, ptr %l39, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l44
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t87 = load ptr, ptr %l38, !tbaa !29
  %t88 = load i32, ptr %l39, !tbaa !23
  %t89 = load i32, ptr %l44, !tbaa !23
  %t90 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t87, i32 %t88, i32 %t89)
  store i1 %t90, ptr %l45
  br label %bb13
bb13:
  %t91 = load i1, ptr %l45, !tbaa !21
  store i1 %t91, ptr %rv
  br label %ret
bb14:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l50
  br label %bb15
bb15:
  %t102 = load i32, ptr %l50, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb16, label %bb17
bb16:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l3, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l58
  br label %bb18
bb17:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb20
bb18:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l2, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l63
  br label %bb19
bb19:
  %t127 = load i32, ptr %l58, !tbaa !23
  %t128 = load i32, ptr %l63, !tbaa !23
  %t129 = icmp eq i32 %t127, %t128
  store i1 %t129, ptr %l53, !tbaa !21
  br label %bb20
bb20:
  %t131 = load i1, ptr %l53, !tbaa !21
  store i1 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedArgUnknown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"compiler/msgs:Nearest"
  %l22 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca %"compiler/source:Span"
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca %"compiler/diagmsg:Msg"
  %l63 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
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
  %t7 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s0, { i64, ptr } %t6)
  store %"compiler/msgs:Nearest" %t7, ptr %l13
  br label %bb2
bb2:
  %t8 = load %"compiler/msgs:Nearest", ptr %l13
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t8, ptr %t9
  store ptr %t9, ptr %l5, !tbaa !29
  store { i64, ptr } %a3, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l8, !tbaa !24
  br label %bb3
bb3:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l8, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb4, label %bb5
bb4:
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t25, ptr %l22, !tbaa !27
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l9, !tbaa !29
  %t33 = load ptr, ptr %l9, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Param", ptr %t33, i32 0, i32 3
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = load ptr, ptr %l5, !tbaa !29
  store ptr %t42, ptr %l29, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l9, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Param", ptr %t44, i32 0, i32 1
  %t47 = load i32, ptr %t46, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t43, i32 %t47)
  store { i64, ptr } %t50, ptr %l33
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s0, ptr %v0, ptr %t51, { i64, ptr } %t52)
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l7, !tbaa !24
  br label %bb3
bb13:
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/msgs:Nearest", ptr %t57, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l40, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t67, ptr %l41
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l2, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t68, i32 %t69)
  store { i64, ptr } %t72, ptr %l44
  br label %bb16
bb15:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l53, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t74, ptr %l54
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l57
  br label %bb20
bb16:
  %t80 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  store { i64, ptr } %t86, ptr %l45, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t89 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v2, ptr %v0, { i64, ptr } %t87)
  store { i64, ptr } %t89, ptr %l47
  br label %bb17
bb17:
  %t90 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t99 = getelementptr %"compiler/msgs:Nearest", ptr %t97, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t104 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgUnknownMeant(ptr %v0, ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t101, { i64, ptr } %t96, { i64, ptr } %t100)
  store %"compiler/diagmsg:Msg" %t104, ptr %l51
  br label %bb18
bb18:
  %t105 = load ptr, ptr %l40, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l41
  %t107 = load %"compiler/diagmsg:Msg", ptr %l51
  %t108 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t105, %"compiler/source:Span" %t106, %"compiler/diagmsg:Msg" %t107)
  store i64 %t108, ptr %l52
  br label %bb19
bb19:
  br label %bb24
bb20:
  %t109 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  store { i64, ptr } %t115, ptr %l58, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t118 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v2, ptr %v0, { i64, ptr } %t116)
  store { i64, ptr } %t118, ptr %l60
  br label %bb21
bb21:
  %t119 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  %t121 = extractvalue { i64, ptr } %t119, 1
  %t122 = mul i64 %t120, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t122)
  call void @llvm.memcpy.p0.p0.i64(ptr %t123, ptr %t121, i64 %t122, i1 false)
  %t124 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  %t126 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgUnknown(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t126, { i64, ptr } %t125)
  store %"compiler/diagmsg:Msg" %t128, ptr %l62
  br label %bb22
bb22:
  %t129 = load ptr, ptr %l53, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l54
  %t131 = load %"compiler/diagmsg:Msg", ptr %l62
  %t132 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t129, %"compiler/source:Span" %t130, %"compiler/diagmsg:Msg" %t131)
  store i64 %t132, ptr %l63
  br label %bb23
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l8 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t10 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %t3, i32 2, ptr %a2, ptr null)
  store ptr %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l8, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprogramOrigin(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/generic:Origin"
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [3 x i64] }
  %l13 = alloca i64
  %l15 = alloca i32
  %l18 = alloca %"compiler/generic:Origin"
  %l22 = alloca %"compiler/generic:Origin"
  %l26 = alloca %"compiler/generic:Origin"
  %l31 = alloca i64
  %l34 = alloca i64
  %l65 = alloca i1
  %l73 = alloca %"compiler/generic:Origin"
  %l80 = alloca %"compiler/generic:Origin"
  %rv = alloca { i64, [3 x i64] }
  %t32 = alloca { i64, [3 x i64] }, align 8
  %t99 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i64, ptr %l13, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorInstance(ptr %v0, ptr %t5)
  store i32 %t7, ptr %l15
  br label %bb2
bb2:
  %t8 = load i32, ptr %l15, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t16, i64 %t17)
  store %"compiler/generic:Origin" %t20, ptr %l22
  br label %bb5
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %t24, i32 %t25)
  store %"compiler/generic:Origin" %t28, ptr %l26
  br label %bb6
bb5:
  %t29 = load %"compiler/generic:Origin", ptr %l22
  store %"compiler/generic:Origin" %t29, ptr %l18
  br label %bb7
bb6:
  %t30 = load %"compiler/generic:Origin", ptr %l26
  store %"compiler/generic:Origin" %t30, ptr %l18
  br label %bb7
bb7:
  %t31 = load %"compiler/generic:Origin", ptr %l18
  store %"compiler/generic:Origin" %t31, ptr %l3
  store { i64, [3 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [3 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [3 x i64] }, ptr %t32
  store { i64, [3 x i64] } %t34, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  store i64 64, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb13
bb10:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l34, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l34, !tbaa !24
  store i64 %t62, ptr %l31, !tbaa !24
  br label %bb13
bb13:
  %t63 = load i64, ptr %l31, !tbaa !24
  store i64 %t63, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb15, label %bb16
bb15:
  br label %bb34
bb16:
  br label %bb17
bb17:
  %t72 = load i64, ptr %l5, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l10, !tbaa !24
  %t82 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = icmp slt i64 %t83, 0
  br i1 %t85, label %bb18, label %bb19
bb18:
  br label %bb34
bb19:
  br label %bb20
bb20:
  %t87 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 1
  %t90 = getelementptr %"compiler/source:Span", ptr %t89, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t94 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 1
  %t95 = getelementptr %"compiler/source:Span", ptr %t94, i32 0, i32 1
  %t96 = load i32, ptr %t95, !tbaa !23
  %t98 = sext i32 %t96 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t99
  %t100 = getelementptr { i64, [3 x i64] }, ptr %t99, i32 0, i32 0
  store i64 3, ptr %t100
  %t102 = insertvalue { i64, i64, i64 } undef, i64 %t88, 0
  %t104 = insertvalue { i64, i64, i64 } %t102, i64 %t93, 1
  %t106 = insertvalue { i64, i64, i64 } %t104, i64 %t98, 2
  %t107 = getelementptr { i64, [3 x i64] }, ptr %t99, i32 0, i32 1
  store { i64, i64, i64 } %t106, ptr %t107
  %t108 = load { i64, [3 x i64] }, ptr %t99
  store { i64, [3 x i64] } %t108, ptr %l11
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/load:Loader", ptr %t116, i32 0, i32 4
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t120 = load { i64, [3 x i64] }, ptr %l11
  %t123 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %t119, { i64, [3 x i64] } %t120)
  store i1 %t123, ptr %l65
  br label %bb21
bb21:
  %t124 = load i1, ptr %l65, !tbaa !21
  %t125 = xor i1 %t124, true
  br i1 %t125, label %bb22, label %bb23
bb22:
  %t127 = load { i64, [3 x i64] }, ptr %l11
  store { i64, [3 x i64] } %t127, ptr %l4
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t129 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 2
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = icmp sge i64 %t130, 0
  br i1 %t132, label %bb25, label %bb26
bb25:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 2
  %t139 = load i64, ptr %t138, !tbaa !24
  %t142 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t137, i64 %t139)
  store %"compiler/generic:Origin" %t142, ptr %l73
  br label %bb27
bb26:
  %t143 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 3
  %t144 = load i32, ptr %t143, !tbaa !23
  %t145 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t148 = icmp ne i32 %t144, %t145
  br i1 %t148, label %bb28, label %bb29
bb27:
  %t150 = load %"compiler/generic:Origin", ptr %l73
  store %"compiler/generic:Origin" %t150, ptr %l3
  br label %bb32
bb28:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Origin", ptr %l3, i32 0, i32 3
  %t156 = load i32, ptr %t155, !tbaa !23
  %t159 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %t154, i32 %t156)
  store %"compiler/generic:Origin" %t159, ptr %l80
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t160 = load %"compiler/generic:Origin", ptr %l80
  store %"compiler/generic:Origin" %t160, ptr %l3
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t161 = load i64, ptr %l9, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l9, !tbaa !24
  br label %bb14
bb34:
  %t165 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t165, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraisedArgs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
  %l72 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t2, ptr %lp5
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t4 = load ptr, ptr %lp5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t5, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb37
bb4:
  br label %bb5
bb5:
  %t19 = load i64, ptr %l7, !tbaa !24
  store i64 %t19, ptr %l9, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l10, !tbaa !29
  store i32 0, ptr %l11, !tbaa !23
  %t29 = load ptr, ptr %l10, !tbaa !29
  store ptr %t29, ptr %l12, !tbaa !29
  %t31 = load ptr, ptr %l10, !tbaa !29
  store ptr %t31, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t32 = load ptr, ptr %l29, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l29, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 26
  store i1 %t38, ptr %l30, !tbaa !21
  br label %bb7
bb7:
  %t39 = load i1, ptr %l30, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l10, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l13, !tbaa !23
  %t46 = load ptr, ptr %l10, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l14, !tbaa !29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t52 = load i32, ptr %l13, !tbaa !23
  store i32 %t52, ptr %l11, !tbaa !23
  %t54 = load ptr, ptr %l14, !tbaa !29
  store ptr %t54, ptr %l12, !tbaa !29
  br label %bb22
bb11:
  %t56 = load ptr, ptr %l10, !tbaa !29
  store ptr %t56, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t57 = load ptr, ptr %l39, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb12, label %bb13
bb12:
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 30}
  %t63 = icmp eq i64 %t61, 0
  store i1 %t63, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t64 = load i1, ptr %l40, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t65 = load ptr, ptr %l10, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32 }, ptr %t67, i32 0, i32 1
  %t69 = load i32, ptr %t68
  store i32 %t69, ptr %l15, !tbaa !23
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t71 = load i32, ptr %l15, !tbaa !23
  store i32 %t71, ptr %l11, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_761ecce271a1def0_6ef2889dc9577e64)
  unreachable
bb22:
  %t73 = load i32, ptr %l11, !tbaa !23
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t74, ptr %l47, !tbaa !27
  %t75 = load i64, ptr %l9, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 %t75
  %t80 = load ptr, ptr %t79, !tbaa !39
  %t82 = getelementptr %"compiler/ast:Param", ptr %t80, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t86 = icmp ne i32 %t73, %t83
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l52, !tbaa !29
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t91 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t89)
  store %"compiler/source:Span" %t91, ptr %l54
  br label %bb25
bb24:
  br label %bb34
bb25:
  store { i64, ptr } %a2, ptr %l55, !tbaa !27
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = call { i64, ptr } @compiler_2fcheck_2efieldNames(ptr %v0, ptr %v2, ptr %v0, ptr %t93, { i64, ptr } %t94)
  store { i64, ptr } %t97, ptr %l58
  br label %bb26
bb26:
  %t98 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  %t100 = extractvalue { i64, ptr } %t98, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t107 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedFieldsDiffer(ptr %v1, ptr %v0, ptr %v0, { i64, ptr } %t105, { i64, ptr } %t104)
  store %"compiler/diagmsg:Msg" %t107, ptr %l60
  br label %bb27
bb27:
  %t108 = load ptr, ptr %l52, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l54
  %t110 = load %"compiler/diagmsg:Msg", ptr %l60
  %t111 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t108, %"compiler/source:Span" %t109, %"compiler/diagmsg:Msg" %t110)
  store i64 %t111, ptr %l61
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v3, ptr %t112, { i64, ptr } %t113)
  br label %bb29
bb29:
  %t116 = icmp sge i64 0, 0
  br i1 %t116, label %bb30, label %bb31
bb30:
  %t118 = icmp sle i64 0, 1152921504606846975
  br i1 %t118, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a7c6fed1dc036a32_295e341353c4274e)
  unreachable
bb32:
  %t120 = mul i64 0, 8
  %t121 = insertvalue { i64, ptr } undef, i64 0, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a7c6fed1dc036a32_295e341353c4274e)
  unreachable
bb34:
  %t124 = load ptr, ptr %lp5
  %t125 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v3, ptr %t124, ptr %t125)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb2
bb37:
  %t132 = load ptr, ptr %lp5
  %t134 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v4, ptr %v4, ptr %t132)
  store { i64, ptr } %t134, ptr %l72
  br label %bb38
bb38:
  %t135 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t135, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca i32
  %l6 = alloca i32
  %rv = alloca ptr
  %t15 = alloca { i64, [4 x i64] }, align 8
  %t27 = alloca { i64, [5 x i64] }, align 8
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load %"compiler/source:Span", ptr %l1
  %t8 = load i32, ptr %l3, !tbaa !23
  %t9 = load %"compiler/source:Span", ptr %l1
  %t10 = load i32, ptr %l3, !tbaa !23
  %t11 = load i64, ptr %l2, !tbaa !24
  %t13 = trunc i64 %t11 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 0
  store i64 0, ptr %t16
  %t18 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t9, 0
  %t20 = insertvalue { %"compiler/source:Span", i32, i32 } %t18, i32 %t10, 1
  %t22 = insertvalue { %"compiler/source:Span", i32, i32 } %t20, i32 %t13, 2
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t22, ptr %t23
  %t24 = load { i64, [4 x i64] }, ptr %t15
  %t26 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t24, ptr %t26
  store { i64, [5 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 0
  store i64 2, ptr %t28
  %t30 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t7, 0
  %t32 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t30, i32 %t8, 1
  %t34 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t32, ptr %t26, 2
  %t35 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t34, i32 -1, 3
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t27, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t35, ptr %t36
  %t37 = load { i64, [5 x i64] }, ptr %t27
  %t39 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t37, ptr %t39
  store ptr %t39, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l8 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 88
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t4, i64 %t5)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  %t11 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t9, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10)
  store i1 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %t14, i64 %t15, i64 %t16)
  store i1 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i1, ptr %l13, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 19
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t24, i64 %t25)
  store i64 %t28, ptr %l18
  br label %bb9
bb8:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb10
bb9:
  %t29 = load i64, ptr %l18, !tbaa !24
  %t30 = icmp ne i64 %t29, 2
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t32 = load i1, ptr %l14, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l6 = alloca i1
  %l8 = alloca ptr
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load i1, ptr %l6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 80
  store ptr %t10, ptr %l8, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t11, i64 %t12)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t15, ptr %l11
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i32 %t20, ptr %l14
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l8, !tbaa !29
  %t22 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  %t23 = load i32, ptr %l14, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc59e30334647acda8fe9b2b02a632dfd(ptr %v0, ptr %t21, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t22, i32 %t23)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  %t26 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v1, ptr %t24, i64 %t25, ptr %t26)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 80
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t8 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t4, i64 %a1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t11 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H77423593ceb02e5da917ccb6013316ec(ptr %v0, ptr %t9, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10)
  store i1 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i1, ptr %l7, !tbaa !21
  store i1 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroNeed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l18 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s2 = alloca %olang.scope
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t10 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOf(ptr %v0, ptr %v1, ptr %t5, ptr %t6)
  store i64 %t10, ptr %l8
  br label %bb4
bb4:
  %t11 = load i64, ptr %l8, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 83
  store ptr %t18, ptr %l12, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l14
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t25, i64 %t26)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t29, ptr %l18
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l12, !tbaa !29
  %t31 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t30, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, i1 true)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTempBase(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l51 = alloca i1
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
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 3
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l11, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t26 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTempBase(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t26, ptr %l19
  br label %bb9
bb9:
  %t27 = load i1, ptr %l19, !tbaa !21
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb36
bb10:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 8}
  %t35 = icmp eq i64 %t33, 4
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb13, label %bb14
bb13:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Elem", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTempBase(ptr %v0, ptr %v1, ptr %t43, ptr %t47)
  store i1 %t51, ptr %l30
  br label %bb16
bb16:
  %t52 = load i1, ptr %l30, !tbaa !21
  store i1 %t52, ptr %l9, !tbaa !21
  br label %bb36
bb17:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t54 = load ptr, ptr %l31, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l31, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 5
  store i1 %t60, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l32, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Payload", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTempBase(ptr %v0, ptr %v1, ptr %t68, ptr %t72)
  store i1 %t76, ptr %l41
  br label %bb23
bb23:
  %t77 = load i1, ptr %l41, !tbaa !21
  store i1 %t77, ptr %l9, !tbaa !21
  br label %bb36
bb24:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t79 = load ptr, ptr %l42, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l42, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 6
  store i1 %t85, ptr %l43, !tbaa !21
  br label %bb26
bb26:
  %t86 = load i1, ptr %l43, !tbaa !21
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t89, i32 0, i32 2
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l5, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t98 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %t93, ptr %t94)
  store i1 %t98, ptr %l51
  br label %bb30
bb30:
  %t99 = load i1, ptr %l51, !tbaa !21
  store i1 %t99, ptr %l9, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_19fb235390dd08bf_74b3a6d5c5264653)
  unreachable
bb36:
  %t100 = load i1, ptr %l9, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i32
  %l27 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca i1
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l45 = alloca ptr
  %l49 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/diagmsg:Msg"
  %l63 = alloca i64
  %l64 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca ptr
  %l82 = alloca i64
  %l83 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca i64
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l107 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca i1
  %l126 = alloca i64
  %l128 = alloca ptr
  %l131 = alloca ptr
  %l132 = alloca i1
  %l144 = alloca ptr
  %l145 = alloca %"compiler/source:Span"
  %l146 = alloca %"compiler/diagmsg:Msg"
  %l147 = alloca i64
  %l152 = alloca ptr
  %l155 = alloca i32
  %l158 = alloca ptr
  %l159 = alloca %"compiler/source:Span"
  %l160 = alloca %"compiler/source:Span"
  %l163 = alloca i32
  %l166 = alloca ptr
  %l169 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l175 = alloca ptr
  %l176 = alloca i1
  %l183 = alloca ptr
  %l185 = alloca ptr
  %l186 = alloca i1
  %l195 = alloca i1
  %l197 = alloca i1
  %l202 = alloca ptr
  %l204 = alloca ptr
  %l206 = alloca %"compiler/source:Span"
  %l207 = alloca %"compiler/diagmsg:Msg"
  %l208 = alloca i64
  %l213 = alloca ptr
  %l215 = alloca ptr
  %l216 = alloca ptr
  %l220 = alloca i1
  %l224 = alloca ptr
  %l225 = alloca { i64, ptr }
  %l226 = alloca i64
  %l229 = alloca i64
  %l236 = alloca ptr
  %l240 = alloca i1
  %l241 = alloca ptr
  %l242 = alloca { i64, ptr }
  %l243 = alloca ptr
  %l244 = alloca ptr
  %l247 = alloca i32
  %l248 = alloca ptr
  %l256 = alloca { i64, ptr }
  %l264 = alloca i1
  %l267 = alloca ptr
  %l269 = alloca %"compiler/source:Span"
  %l270 = alloca %"compiler/diagmsg:Msg"
  %l271 = alloca i64
  %l272 = alloca ptr
  %l278 = alloca i1
  %l280 = alloca ptr
  %l282 = alloca %"compiler/source:Span"
  %l283 = alloca %"compiler/diagmsg:Msg"
  %l284 = alloca i64
  %l285 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l287 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l293 = alloca i32
  %l295 = alloca i64
  %l297 = alloca i1
  %l299 = alloca ptr
  %l303 = alloca ptr
  %l307 = alloca i32
  %l310 = alloca i1
  %l311 = alloca i1
  %l314 = alloca i1
  %l315 = alloca i1
  %l320 = alloca i1
  %l321 = alloca i1
  %l326 = alloca i32
  %l331 = alloca i32
  %l337 = alloca i32
  %l345 = alloca { i64, ptr }
  %l348 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l350 = alloca ptr
  %l352 = alloca i1
  %l357 = alloca i1
  %l368 = alloca { i64, ptr }
  %l372 = alloca ptr
  %l380 = alloca i1
  %l382 = alloca ptr
  %l384 = alloca %"compiler/source:Span"
  %l386 = alloca { i64, ptr }
  %l391 = alloca ptr
  %l393 = alloca i32
  %l395 = alloca { i64, ptr }
  %l397 = alloca { i64, ptr }
  %l401 = alloca { i64, ptr }
  %l403 = alloca %"compiler/diagmsg:Msg"
  %l404 = alloca i64
  %l409 = alloca i1
  %l411 = alloca ptr
  %l413 = alloca %"compiler/source:Span"
  %l414 = alloca i64
  %l417 = alloca { i64, ptr }
  %l418 = alloca i1
  %l419 = alloca ptr
  %l420 = alloca ptr
  %l421 = alloca i32
  %l423 = alloca i64
  %l425 = alloca ptr
  %l426 = alloca %"compiler/typed:TaskClause"
  %l428 = alloca ptr
  %l430 = alloca %"compiler/source:Span"
  %l431 = alloca i64
  %l434 = alloca { i64, ptr }
  %l435 = alloca i1
  %l439 = alloca %"compiler/typed:Clause"
  %l445 = alloca i64
  %l454 = alloca { i64, ptr }
  %l468 = alloca i64
  %l470 = alloca i1
  %l473 = alloca i64
  %l476 = alloca ptr
  %l480 = alloca i64
  %l482 = alloca ptr
  %l483 = alloca %"compiler/source:Span"
  %l484 = alloca ptr
  %l485 = alloca { i64, ptr }
  %l486 = alloca ptr
  %l489 = alloca i32
  %l490 = alloca ptr
  %l491 = alloca %"compiler/source:Span"
  %l493 = alloca { i64, ptr }
  %l494 = alloca ptr
  %l496 = alloca { i64, ptr }
  %l500 = alloca i32
  %l501 = alloca %"compiler/typed:Spawn"
  %l505 = alloca ptr
  %s0 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %t261 = alloca { i64, [3 x i64] }, align 8
  %t993 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l45, !tbaa !29
  %t2 = load ptr, ptr %l45, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 41
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l45, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 41
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t10)
  store ptr %t12, ptr %l49
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l49, !tbaa !29
  store ptr %t13, ptr %l4, !tbaa !29
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t16 = getelementptr %"compiler/check:frame", ptr %t14, i32 0, i32 34
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 38
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l56
  br label %bb4
bb3:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb5
bb4:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 37
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = load i64, ptr %l56, !tbaa !24
  %t32 = icmp sle i64 %t30, %t29
  store i1 %t32, ptr %l53, !tbaa !21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l53, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l60, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t36, ptr %l61
  %t37 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnInDefer(ptr %v0)
  store %"compiler/diagmsg:Msg" %t37, ptr %l62
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t38 = load ptr, ptr %l60, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l61
  %t40 = load %"compiler/diagmsg:Msg", ptr %l62
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t38, %"compiler/source:Span" %t39, %"compiler/diagmsg:Msg" %t40)
  store i64 %t41, ptr %l63
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l64, !tbaa !29
  %t43 = load ptr, ptr %l64, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 41
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = sub i64 %t45, 1
  %t49 = load ptr, ptr %l64, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 41
  store i64 %t47, ptr %t50, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t51, i32 0, i32 38
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l69
  br label %bb11
bb11:
  %t56 = load i64, ptr %l69, !tbaa !24
  %t57 = icmp eq i64 %t56, 0
  br i1 %t57, label %bb12, label %bb13
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l71, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t60, ptr %l72
  %t61 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnOutsideJoin(ptr %v0)
  store %"compiler/diagmsg:Msg" %t61, ptr %l73
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t62 = load ptr, ptr %l71, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l72
  %t64 = load %"compiler/diagmsg:Msg", ptr %l73
  %t65 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t62, %"compiler/source:Span" %t63, %"compiler/diagmsg:Msg" %t64)
  store i64 %t65, ptr %l74
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l75, !tbaa !29
  %t67 = load ptr, ptr %l75, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 41
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = sub i64 %t69, 1
  %t73 = load ptr, ptr %l75, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 41
  store i64 %t71, ptr %t74, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 38
  store ptr %t77, ptr %l79, !tbaa !29
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/check:frame", ptr %t78, i32 0, i32 38
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l82
  br label %bb17
bb17:
  %t83 = load i64, ptr %l82, !tbaa !24
  %t84 = sub i64 %t83, 1
  store i64 %t84, ptr %l83, !tbaa !24
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = getelementptr %"compiler/check:frame", ptr %t85, i32 0, i32 38
  store ptr %t87, ptr %l85, !tbaa !29
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = getelementptr %"compiler/check:frame", ptr %t88, i32 0, i32 38
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t90)
  store i64 %t92, ptr %l88
  br label %bb18
bb18:
  %t93 = load i64, ptr %l88, !tbaa !24
  %t94 = sub i64 %t93, 1
  %t95 = load ptr, ptr %l85, !tbaa !29
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t95, i64 %t94)
  store i64 %t97, ptr %l90
  br label %bb19
bb19:
  %t98 = load i64, ptr %l90, !tbaa !24
  %t99 = add i64 %t98, 1
  %t100 = load ptr, ptr %l79, !tbaa !29
  %t101 = load i64, ptr %l83, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t100, i64 %t101, i64 %t99)
  br label %bb20
bb20:
  %t103 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t103, ptr %l92
  br label %bb21
bb21:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %t105
  store ptr %t105, ptr %l5, !tbaa !29
  %t107 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t107, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t114 = load i64, ptr %l8, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb23, label %bb24
bb23:
  br label %bb29
bb24:
  br label %bb25
bb25:
  %t121 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t121, ptr %l101, !tbaa !27
  %t122 = load i64, ptr %l7, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 %t122
  %t127 = load ptr, ptr %t126, !tbaa !39
  %t129 = load ptr, ptr %l5, !tbaa !29
  store ptr %t129, ptr %l104, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t134 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v0, ptr %t130, ptr %t127)
  store ptr %t134, ptr %l107
  br label %bb26
bb26:
  %t135 = load ptr, ptr %l104, !tbaa !29
  %t136 = load ptr, ptr %l107, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eP_Ha5c233616e2ae02d7fe37742cfaef2c2(ptr %v0, ptr %v0, ptr %t135, ptr %t136)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t137 = load i64, ptr %l7, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l7, !tbaa !24
  br label %bb22
bb29:
  store i1 false, ptr %l10, !tbaa !21
  %t141 = load ptr, ptr %l3, !tbaa !29
  store ptr %t141, ptr %l11, !tbaa !29
  %t143 = icmp sge i64 0, 0
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = icmp sle i64 0, 1152921504606846975
  br i1 %t145, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_e10ca684bef0956d_f742028d37a3af11)
  unreachable
bb32:
  %t147 = mul i64 0, 8
  %t148 = insertvalue { i64, ptr } undef, i64 0, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t149, ptr %l12, !tbaa !27
  %t151 = load ptr, ptr %l3, !tbaa !29
  store ptr %t151, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t152 = load ptr, ptr %l114, !tbaa !29
  %t153 = icmp ne ptr %t152, null
  br i1 %t153, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_e10ca684bef0956d_f742028d37a3af11)
  unreachable
bb34:
  %t155 = load ptr, ptr %l114, !tbaa !29
  %t156 = load i64, ptr %t155, !range !{i64 0, i64 30}
  %t158 = icmp eq i64 %t156, 21
  store i1 %t158, ptr %l115, !tbaa !21
  br label %bb35
bb35:
  %t159 = load i1, ptr %l115, !tbaa !21
  br i1 %t159, label %bb36, label %bb37
bb36:
  %t160 = load ptr, ptr %l3, !tbaa !29
  %t162 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 1
  %t163 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t162, i32 0, i32 1
  %t164 = load ptr, ptr %t163
  store ptr %t164, ptr %l13, !tbaa !29
  %t166 = load ptr, ptr %l3, !tbaa !29
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t168, i32 0, i32 2
  %t170 = load { i64, ptr }, ptr %t169
  store { i64, ptr } %t170, ptr %l14, !tbaa !27
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i1 true, ptr %l10, !tbaa !21
  %t172 = load ptr, ptr %l13, !tbaa !29
  store ptr %t172, ptr %l11, !tbaa !29
  %t174 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t174, ptr %l12, !tbaa !27
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_c3afd3921db70d3f_27f9f6390ccac16b)
  unreachable
bb44:
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t178 = getelementptr %"compiler/check:frame", ptr %t176, i32 0, i32 28
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t178)
  store i64 %t180, ptr %l126
  br label %bb45
bb45:
  %t181 = load i64, ptr %l126, !tbaa !24
  store i64 %t181, ptr %l15, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 42
  store i32 0, ptr %t184, !tbaa !23
  %t185 = load ptr, ptr %l4, !tbaa !29
  store ptr %t185, ptr %l128, !tbaa !29
  %t186 = load ptr, ptr %l128, !tbaa !29
  %t187 = getelementptr %"compiler/check:frame", ptr %t186, i32 0, i32 15
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = add i64 %t188, 1
  %t192 = load ptr, ptr %l128, !tbaa !29
  %t193 = getelementptr %"compiler/check:frame", ptr %t192, i32 0, i32 15
  store i64 %t190, ptr %t193, !tbaa !24
  store ptr null, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t194 = load ptr, ptr %l11, !tbaa !29
  store ptr %t194, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t195 = load ptr, ptr %l131, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb46, label %bb47
bb46:
  %t198 = load ptr, ptr %l131, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 30}
  %t201 = icmp eq i64 %t199, 22
  store i1 %t201, ptr %l132, !tbaa !21
  br label %bb47
bb47:
  %t202 = load i1, ptr %l132, !tbaa !21
  br i1 %t202, label %bb48, label %bb49
bb48:
  %t203 = load ptr, ptr %l11, !tbaa !29
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr }, ptr %t205, i32 0, i32 0
  %t207 = load %"compiler/source:Span", ptr %t206
  store %"compiler/source:Span" %t207, ptr %l18
  %t209 = load ptr, ptr %l11, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", ptr }, ptr %t211, i32 0, i32 1
  %t213 = load ptr, ptr %t212
  store ptr %t213, ptr %l19, !tbaa !29
  br label %bb50
bb49:
  br label %bb71
bb50:
  %t215 = load ptr, ptr %l19, !tbaa !29
  %t217 = getelementptr %"compiler/ast:Func", ptr %t215, i32 0, i32 3
  %t218 = load ptr, ptr %t217, !tbaa !29
  %t220 = getelementptr %"compiler/ast:Sig", ptr %t218, i32 0, i32 0
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb51, label %bb52
bb51:
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l144, !tbaa !29
  %t228 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t228, ptr %l145
  %t229 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnLambdaParams(ptr %v0)
  store %"compiler/diagmsg:Msg" %t229, ptr %l146
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t230 = load ptr, ptr %l144, !tbaa !29
  %t231 = load %"compiler/source:Span", ptr %l145
  %t232 = load %"compiler/diagmsg:Msg", ptr %l146
  %t233 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t230, %"compiler/source:Span" %t231, %"compiler/diagmsg:Msg" %t232)
  store i64 %t233, ptr %l147
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load %"compiler/source:Span", ptr %l18
  %t236 = load ptr, ptr %l19, !tbaa !29
  %t237 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t242 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v2, ptr %v0, ptr %t234, %"compiler/source:Span" %t235, ptr %t236, i32 %t237)
  store ptr %t242, ptr %l152
  br label %bb56
bb56:
  %t243 = load ptr, ptr %l152, !tbaa !29
  store ptr %t243, ptr %l20, !tbaa !29
  %t244 = load ptr, ptr %l20, !tbaa !29
  %t247 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t244)
  store i32 %t247, ptr %l155
  br label %bb57
bb57:
  %t248 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t249 = load i32, ptr %l155, !tbaa !23
  %t251 = icmp ne i32 %t249, %t248
  br i1 %t251, label %bb58, label %bb59
bb58:
  %t253 = load ptr, ptr %l0, !tbaa !29
  store ptr %t253, ptr %l158, !tbaa !29
  %t254 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t254, ptr %l159
  %t255 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t255, ptr %l160
  %t256 = load ptr, ptr %l20, !tbaa !29
  %t259 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t256)
  store i32 %t259, ptr %l163
  br label %bb60
bb59:
  br label %bb70
bb60:
  %t260 = load ptr, ptr %l20, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t261
  %t262 = getelementptr { i64, [3 x i64] }, ptr %t261, i32 0, i32 0
  store i64 2, ptr %t262
  %t264 = insertvalue { ptr } undef, ptr %t260, 0
  %t265 = getelementptr { i64, [3 x i64] }, ptr %t261, i32 0, i32 1
  store { ptr } %t264, ptr %t265
  %t266 = load { i64, [3 x i64] }, ptr %t261
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t266, ptr %t268
  store ptr %t268, ptr %l166, !tbaa !29
  %t269 = icmp sge i64 0, 0
  br i1 %t269, label %bb61, label %bb62
bb61:
  %t271 = icmp sle i64 0, 1152921504606846975
  br i1 %t271, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_da760de622febe3_df78aa298e2a00e7)
  unreachable
bb63:
  %t273 = mul i64 0, 8
  %t274 = insertvalue { i64, ptr } undef, i64 0, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t275, ptr %l169, !tbaa !27
  %t276 = icmp sge i64 0, 0
  br i1 %t276, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_da760de622febe3_df78aa298e2a00e7)
  unreachable
bb65:
  %t278 = icmp sle i64 0, 1152921504606846975
  br i1 %t278, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_da760de622febe3_df78aa298e2a00e7)
  unreachable
bb67:
  %t280 = mul i64 0, 8
  %t281 = insertvalue { i64, ptr } undef, i64 0, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t283 = load ptr, ptr %l158, !tbaa !29
  %t284 = load %"compiler/source:Span", ptr %l159
  %t285 = load %"compiler/source:Span", ptr %l160
  %t286 = load i32, ptr %l163, !tbaa !23
  %t287 = load ptr, ptr %l166, !tbaa !29
  %t288 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t283, %"compiler/source:Span" %t284, %"compiler/source:Span" %t285, i32 %t286, ptr %t287, i64 -1, ptr null, { i64, ptr } %t288, { i64, ptr } %t282)
  store ptr %t290, ptr %l173
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_da760de622febe3_df78aa298e2a00e7)
  unreachable
bb69:
  %t291 = load ptr, ptr %l173, !tbaa !29
  store ptr %t291, ptr %l16, !tbaa !29
  br label %bb70
bb70:
  br label %bb100
bb71:
  %t293 = load ptr, ptr %l11, !tbaa !29
  store ptr %t293, ptr %l175, !tbaa !29
  store i1 false, ptr %l176, !tbaa !21
  %t294 = load ptr, ptr %l175, !tbaa !29
  %t295 = icmp ne ptr %t294, null
  br i1 %t295, label %bb72, label %bb73
bb72:
  %t297 = load ptr, ptr %l175, !tbaa !29
  %t298 = load i64, ptr %t297, !range !{i64 0, i64 30}
  %t300 = icmp eq i64 %t298, 12
  store i1 %t300, ptr %l176, !tbaa !21
  br label %bb73
bb73:
  %t301 = load i1, ptr %l176, !tbaa !21
  br i1 %t301, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load ptr, ptr %l11, !tbaa !29
  %t305 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t302, ptr %t303, i32 %t305)
  store ptr %t309, ptr %l183
  br label %bb77
bb77:
  %t310 = load ptr, ptr %l183, !tbaa !29
  store ptr %t310, ptr %l16, !tbaa !29
  br label %bb100
bb78:
  %t312 = load ptr, ptr %l11, !tbaa !29
  store ptr %t312, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t313 = load ptr, ptr %l185, !tbaa !29
  %t314 = icmp ne ptr %t313, null
  br i1 %t314, label %bb79, label %bb80
bb79:
  %t316 = load ptr, ptr %l185, !tbaa !29
  %t317 = load i64, ptr %t316, !range !{i64 0, i64 30}
  %t319 = icmp eq i64 %t317, 4
  store i1 %t319, ptr %l186, !tbaa !21
  br label %bb80
bb80:
  %t320 = load i1, ptr %l186, !tbaa !21
  br i1 %t320, label %bb81, label %bb82
bb81:
  %t321 = load ptr, ptr %l11, !tbaa !29
  %t323 = getelementptr { i64, [4 x i64] }, ptr %t321, i32 0, i32 1
  %t324 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t323, i32 0, i32 1
  %t325 = load i32, ptr %t324, !range !{i32 0, i32 114}
  store i32 %t325, ptr %l21
  %t327 = load ptr, ptr %l11, !tbaa !29
  %t329 = getelementptr { i64, [4 x i64] }, ptr %t327, i32 0, i32 1
  %t330 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t329, i32 0, i32 2
  %t331 = load ptr, ptr %t330
  store ptr %t331, ptr %l22, !tbaa !29
  br label %bb83
bb82:
  br label %bb91
bb83:
  %t333 = load i32, ptr %l21, !range !{i32 0, i32 114}
  %t335 = trunc i64 96 to i32
  %t336 = icmp eq i32 %t333, %t335
  br i1 %t336, label %bb84, label %bb85
bb84:
  %t338 = load ptr, ptr %l22, !tbaa !29
  %t340 = call i1 @compiler_2fcheck_2ecallLike(ptr %v2, ptr %t338)
  store i1 %t340, ptr %l197
  br label %bb86
bb85:
  store i1 false, ptr %l195, !tbaa !21
  br label %bb87
bb86:
  %t341 = load i1, ptr %l197, !tbaa !21
  store i1 %t341, ptr %l195, !tbaa !21
  br label %bb87
bb87:
  %t342 = load i1, ptr %l195, !tbaa !21
  br i1 %t342, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l17, !tbaa !21
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load ptr, ptr %l11, !tbaa !29
  %t346 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t350 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t343, ptr %t344, i32 %t346)
  store ptr %t350, ptr %l202
  br label %bb90
bb89:
  br label %bb91
bb90:
  %t351 = load ptr, ptr %l202, !tbaa !29
  store ptr %t351, ptr %l16, !tbaa !29
  br label %bb100
bb91:
  br i1 true, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb99
bb94:
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l204, !tbaa !29
  %t354 = load ptr, ptr %l11, !tbaa !29
  %t356 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t354)
  store %"compiler/source:Span" %t356, ptr %l206
  br label %bb95
bb95:
  %t357 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnNotCall(ptr %v0)
  store %"compiler/diagmsg:Msg" %t357, ptr %l207
  br label %bb96
bb96:
  %t358 = load ptr, ptr %l204, !tbaa !29
  %t359 = load %"compiler/source:Span", ptr %l206
  %t360 = load %"compiler/diagmsg:Msg", ptr %l207
  %t361 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t358, %"compiler/source:Span" %t359, %"compiler/diagmsg:Msg" %t360)
  store i64 %t361, ptr %l208
  br label %bb97
bb97:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load ptr, ptr %l11, !tbaa !29
  %t365 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t369 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t362, ptr %t363, i32 %t365)
  store ptr %t369, ptr %l213
  br label %bb98
bb98:
  br label %bb100
bb99:
  call void @__olang_check_failed(ptr @olang_loc_5ca7d448b00003f5_5d17299a767670c1)
  unreachable
bb100:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t370)
  store ptr %t372, ptr %l215
  br label %bb101
bb101:
  %t373 = load ptr, ptr %l215, !tbaa !29
  store ptr %t373, ptr %l4, !tbaa !29
  %t374 = load ptr, ptr %l4, !tbaa !29
  store ptr %t374, ptr %l216, !tbaa !29
  %t375 = load ptr, ptr %l216, !tbaa !29
  %t376 = getelementptr %"compiler/check:frame", ptr %t375, i32 0, i32 15
  %t377 = load i64, ptr %t376, !tbaa !24
  %t379 = sub i64 %t377, 1
  %t381 = load ptr, ptr %l216, !tbaa !29
  %t382 = getelementptr %"compiler/check:frame", ptr %t381, i32 0, i32 15
  store i64 %t379, ptr %t382, !tbaa !24
  %t383 = load i1, ptr %l10, !tbaa !21
  br i1 %t383, label %bb102, label %bb103
bb102:
  %t385 = load ptr, ptr %l16, !tbaa !29
  %t387 = icmp eq ptr %t385, null
  %t389 = xor i1 %t387, true
  store i1 %t389, ptr %l220, !tbaa !21
  br label %bb104
bb103:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb104
bb104:
  %t391 = load i1, ptr %l220, !tbaa !21
  br i1 %t391, label %bb105, label %bb106
bb105:
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l224, !tbaa !29
  %t393 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t393, ptr %l225, !tbaa !27
  %t394 = load i64, ptr %l15, !tbaa !24
  store i64 %t394, ptr %l226, !tbaa !24
  %t395 = load ptr, ptr %l4, !tbaa !29
  %t397 = getelementptr %"compiler/check:frame", ptr %t395, i32 0, i32 28
  %t399 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t397)
  store i64 %t399, ptr %l229
  br label %bb107
bb106:
  br label %bb109
bb107:
  %t400 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = call ptr @__olang_scope_of(ptr %t401, ptr null)
  %t403 = ptrtoint ptr %t402 to i64
  %t405 = inttoptr i64 %t403 to ptr
  %t406 = load ptr, ptr %l224, !tbaa !29
  %t407 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t408 = load i64, ptr %l226, !tbaa !24
  %t409 = load i64, ptr %l229, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %t405, ptr %t406, { i64, ptr } %t407, i64 %t408, i64 %t409)
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t410 = load ptr, ptr %l4, !tbaa !29
  %t412 = getelementptr %"compiler/check:frame", ptr %t410, i32 0, i32 28
  %t413 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t412, i64 %t413)
  br label %bb110
bb110:
  %t416 = load ptr, ptr %l16, !tbaa !29
  %t418 = icmp eq ptr %t416, null
  br i1 %t418, label %bb111, label %bb112
bb111:
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l236, !tbaa !29
  %t421 = load ptr, ptr %l236, !tbaa !29
  %t422 = getelementptr %"compiler/check:Checker", ptr %t421, i32 0, i32 41
  %t423 = load i64, ptr %t422, !tbaa !24
  %t425 = sub i64 %t423, 1
  %t427 = load ptr, ptr %l236, !tbaa !29
  %t428 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 41
  store i64 %t425, ptr %t428, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb112:
  br label %bb113
bb113:
  %t429 = load ptr, ptr %l16, !tbaa !29
  %t431 = call i1 @compiler_2fcheck_2edispatched(ptr %v0, ptr %t429)
  store i1 %t431, ptr %l240
  br label %bb114
bb114:
  %t432 = load i1, ptr %l240, !tbaa !21
  br i1 %t432, label %bb115, label %bb116
bb115:
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l241, !tbaa !29
  %t434 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t434, ptr %l242, !tbaa !27
  %t435 = load ptr, ptr %l3, !tbaa !29
  store ptr %t435, ptr %l243, !tbaa !29
  %t436 = load ptr, ptr %l11, !tbaa !29
  store ptr %t436, ptr %l244, !tbaa !29
  %t437 = load ptr, ptr %l16, !tbaa !29
  %t440 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t437)
  store i32 %t440, ptr %l247
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t441 = load ptr, ptr %l241, !tbaa !29
  %t442 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t443 = load ptr, ptr %l243, !tbaa !29
  %t444 = load ptr, ptr %l244, !tbaa !29
  %t445 = load i32, ptr %l247, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanySpawned(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t441, { i64, ptr } %t442, ptr %t443, ptr %t444, i32 %t445)
  br label %bb118
bb118:
  %t446 = load ptr, ptr %l0, !tbaa !29
  store ptr %t446, ptr %l248, !tbaa !29
  %t447 = load ptr, ptr %l248, !tbaa !29
  %t448 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 41
  %t449 = load i64, ptr %t448, !tbaa !24
  %t451 = sub i64 %t449, 1
  %t453 = load ptr, ptr %l248, !tbaa !29
  %t454 = getelementptr %"compiler/check:Checker", ptr %t453, i32 0, i32 41
  store i64 %t451, ptr %t454, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb119:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/check:Checker", ptr %t455, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/check:Checker", ptr %t461, i32 0, i32 42
  %t464 = load i32, ptr %t463, !tbaa !23
  %t467 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t460, i32 %t464)
  store { i64, ptr } %t467, ptr %l256
  br label %bb120
bb120:
  %t468 = load { i64, ptr }, ptr %l256, !tbaa !27
  store { i64, ptr } %t468, ptr %l23, !tbaa !27
  %t469 = load i1, ptr %l17, !tbaa !21
  br i1 %t469, label %bb121, label %bb122
bb121:
  %t471 = icmp sge i64 0, 0
  br i1 %t471, label %bb123, label %bb124
bb122:
  br label %bb127
bb123:
  %t473 = icmp sle i64 0, 2305843009213693951
  br i1 %t473, label %bb125, label %bb126
bb124:
  call void @__olang_check_failed(ptr @olang_loc_a0a2b29f181c5519_be518ce768fc1fe5)
  unreachable
bb125:
  %t475 = mul i64 0, 4
  %t476 = insertvalue { i64, ptr } undef, i64 0, 0
  %t477 = insertvalue { i64, ptr } %t476, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t477, ptr %l23, !tbaa !27
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_a0a2b29f181c5519_be518ce768fc1fe5)
  unreachable
bb127:
  %t479 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t483 = icmp sgt i64 %t481, 0
  br i1 %t483, label %bb128, label %bb129
bb128:
  %t485 = load i1, ptr %l10, !tbaa !21
  %t487 = xor i1 %t485, true
  store i1 %t487, ptr %l264, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb130
bb130:
  %t489 = load i1, ptr %l264, !tbaa !21
  br i1 %t489, label %bb131, label %bb132
bb131:
  %t490 = load ptr, ptr %l0, !tbaa !29
  store ptr %t490, ptr %l267, !tbaa !29
  %t491 = load ptr, ptr %l11, !tbaa !29
  %t493 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t491)
  store %"compiler/source:Span" %t493, ptr %l269
  br label %bb133
bb132:
  br label %bb136
bb133:
  %t494 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFallible(ptr %v0)
  store %"compiler/diagmsg:Msg" %t494, ptr %l270
  br label %bb134
bb134:
  %t495 = load ptr, ptr %l267, !tbaa !29
  %t496 = load %"compiler/source:Span", ptr %l269
  %t497 = load %"compiler/diagmsg:Msg", ptr %l270
  %t498 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t495, %"compiler/source:Span" %t496, %"compiler/diagmsg:Msg" %t497)
  store i64 %t498, ptr %l271
  br label %bb135
bb135:
  %t499 = load ptr, ptr %l4, !tbaa !29
  store ptr %t499, ptr %l272, !tbaa !29
  %t500 = load ptr, ptr %l272, !tbaa !29
  %t501 = getelementptr %"compiler/check:frame", ptr %t500, i32 0, i32 41
  %t502 = load i64, ptr %t501, !tbaa !24
  %t504 = add i64 %t502, 1
  %t506 = load ptr, ptr %l272, !tbaa !29
  %t507 = getelementptr %"compiler/check:frame", ptr %t506, i32 0, i32 41
  store i64 %t504, ptr %t507, !tbaa !24
  br label %bb136
bb136:
  %t508 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t510 = extractvalue { i64, ptr } %t508, 0
  %t512 = icmp eq i64 %t510, 0
  br i1 %t512, label %bb137, label %bb138
bb137:
  %t514 = load i1, ptr %l10, !tbaa !21
  store i1 %t514, ptr %l278, !tbaa !21
  br label %bb139
bb138:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb139
bb139:
  %t516 = load i1, ptr %l278, !tbaa !21
  br i1 %t516, label %bb140, label %bb141
bb140:
  %t517 = load ptr, ptr %l0, !tbaa !29
  store ptr %t517, ptr %l280, !tbaa !29
  %t518 = load ptr, ptr %l3, !tbaa !29
  %t520 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t518)
  store %"compiler/source:Span" %t520, ptr %l282
  br label %bb142
bb141:
  br label %bb145
bb142:
  %t521 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnTryInfallible(ptr %v0)
  store %"compiler/diagmsg:Msg" %t521, ptr %l283
  br label %bb143
bb143:
  %t522 = load ptr, ptr %l280, !tbaa !29
  %t523 = load %"compiler/source:Span", ptr %l282
  %t524 = load %"compiler/diagmsg:Msg", ptr %l283
  %t525 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t522, %"compiler/source:Span" %t523, %"compiler/diagmsg:Msg" %t524)
  store i64 %t525, ptr %l284
  br label %bb144
bb144:
  br label %bb145
bb145:
  %t526 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aTaskClause_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t526, ptr %l285
  br label %bb146
bb146:
  %t527 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l285
  %t528 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t527, ptr %t528
  store ptr %t528, ptr %l24, !tbaa !29
  %t530 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t530, ptr %l287
  br label %bb147
bb147:
  %t531 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l287
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t531, ptr %l25
  %t532 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t532, 0
  %t536 = icmp sgt i64 %t534, 0
  br i1 %t536, label %bb148, label %bb149
bb148:
  store %olang.scope zeroinitializer, ptr %s24
  %t538 = load ptr, ptr %l16, !tbaa !29
  %t541 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t538)
  store i32 %t541, ptr %l293
  br label %bb150
bb149:
  br label %bb237
bb150:
  %t542 = load i32, ptr %l293, !tbaa !23
  store i32 %t542, ptr %l26, !tbaa !23
  %t543 = load ptr, ptr %l5, !tbaa !29
  %t545 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %t543)
  store i64 %t545, ptr %l295
  br label %bb151
bb151:
  %t546 = load i64, ptr %l295, !tbaa !24
  %t547 = icmp eq i64 %t546, 1
  br i1 %t547, label %bb152, label %bb153
bb152:
  %t549 = load ptr, ptr %l5, !tbaa !29
  %t551 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %s24, ptr %t549, i64 0)
  store ptr %t551, ptr %l299
  br label %bb154
bb153:
  store i1 false, ptr %l297, !tbaa !21
  br label %bb155
bb154:
  %t552 = load ptr, ptr %l299, !tbaa !29
  %t553 = icmp eq ptr %t552, null
  %t555 = xor i1 %t553, true
  store i1 %t555, ptr %l297, !tbaa !21
  br label %bb155
bb155:
  %t557 = load i1, ptr %l297, !tbaa !21
  br i1 %t557, label %bb156, label %bb157
bb156:
  %t558 = load ptr, ptr %l5, !tbaa !29
  %t560 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v0, ptr %t558, i64 0)
  store ptr %t560, ptr %l303
  br label %bb158
bb157:
  br label %bb181
bb158:
  %t561 = load ptr, ptr %l303, !tbaa !29
  store ptr %t561, ptr %l27, !tbaa !29
  %t562 = load ptr, ptr %l27, !tbaa !29
  %t564 = icmp eq ptr %t562, null
  br i1 %t564, label %bb159, label %bb160
bb159:
  call void @__olang_check_failed(ptr @olang_loc_ebab815881a318c_398bac8a238c0b80)
  unreachable
bb160:
  br label %bb161
bb161:
  %t566 = load ptr, ptr %l27, !tbaa !29
  %t568 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t566)
  store i32 %t568, ptr %l307
  br label %bb162
bb162:
  %t569 = load i32, ptr %l307, !tbaa !23
  store i32 %t569, ptr %l28, !tbaa !23
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load i32, ptr %l26, !tbaa !23
  %t574 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t570, i32 %t571)
  store i1 %t574, ptr %l310
  br label %bb163
bb163:
  %t575 = load i1, ptr %l310, !tbaa !21
  br i1 %t575, label %bb164, label %bb165
bb164:
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t577 = load i32, ptr %l28, !tbaa !23
  %t580 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t576, i32 %t577)
  store i1 %t580, ptr %l314
  br label %bb166
bb165:
  store i1 false, ptr %l311, !tbaa !21
  br label %bb167
bb166:
  %t581 = load i1, ptr %l314, !tbaa !21
  store i1 %t581, ptr %l311, !tbaa !21
  br label %bb167
bb167:
  %t582 = load i1, ptr %l311, !tbaa !21
  br i1 %t582, label %bb168, label %bb169
bb168:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"compiler/check:Checker", ptr %t583, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !29
  %t588 = getelementptr %"compiler/generic:Program", ptr %t586, i32 0, i32 2
  %t589 = load i32, ptr %l28, !tbaa !23
  %t592 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t588, i32 %t589)
  store i1 %t592, ptr %l320
  br label %bb170
bb169:
  store i1 false, ptr %l315, !tbaa !21
  br label %bb171
bb170:
  %t593 = load i1, ptr %l320, !tbaa !21
  store i1 %t593, ptr %l315, !tbaa !21
  br label %bb171
bb171:
  %t594 = load i1, ptr %l315, !tbaa !21
  br i1 %t594, label %bb172, label %bb173
bb172:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t597 = getelementptr %"compiler/check:Checker", ptr %t595, i32 0, i32 1
  %t598 = load ptr, ptr %t597, !tbaa !29
  %t600 = getelementptr %"compiler/generic:Program", ptr %t598, i32 0, i32 2
  %t601 = load i32, ptr %l28, !tbaa !23
  %t604 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t600, i32 %t601)
  store i32 %t604, ptr %l326
  br label %bb174
bb173:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb176
bb174:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/check:Checker", ptr %t605, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !29
  %t610 = getelementptr %"compiler/generic:Program", ptr %t608, i32 0, i32 2
  %t611 = load i32, ptr %l26, !tbaa !23
  %t614 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t610, i32 %t611)
  store i32 %t614, ptr %l331
  br label %bb175
bb175:
  %t615 = load i32, ptr %l326, !tbaa !23
  %t616 = load i32, ptr %l331, !tbaa !23
  %t617 = icmp eq i32 %t615, %t616
  store i1 %t617, ptr %l321, !tbaa !21
  br label %bb176
bb176:
  %t619 = load i1, ptr %l321, !tbaa !21
  br i1 %t619, label %bb177, label %bb178
bb177:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/check:Checker", ptr %t620, i32 0, i32 1
  %t623 = load ptr, ptr %t622, !tbaa !29
  %t625 = getelementptr %"compiler/generic:Program", ptr %t623, i32 0, i32 2
  %t626 = load i32, ptr %l26, !tbaa !23
  %t629 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t625, i32 %t626)
  store i32 %t629, ptr %l337
  br label %bb179
bb178:
  br label %bb180
bb179:
  %t630 = load i32, ptr %l337, !tbaa !23
  store i32 %t630, ptr %l26, !tbaa !23
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t631 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t631, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t633 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t635 = extractvalue { i64, ptr } %t633, 0
  store i64 %t635, ptr %l31, !tbaa !24
  br label %bb182
bb182:
  store %olang.scope zeroinitializer, ptr %s28
  %t637 = load i64, ptr %l30, !tbaa !24
  %t638 = load i64, ptr %l31, !tbaa !24
  %t641 = icmp slt i64 %t637, %t638
  %t643 = xor i1 %t641, true
  br i1 %t643, label %bb183, label %bb184
bb183:
  call void @__olang_scope_close(ptr %s28)
  br label %bb236
bb184:
  br label %bb185
bb185:
  %t645 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t645, ptr %l345, !tbaa !27
  %t646 = load i64, ptr %l30, !tbaa !24
  %t648 = getelementptr { i64, ptr }, ptr %l345, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !27
  %t650 = getelementptr ptr, ptr %t649, i64 %t646
  %t651 = load ptr, ptr %t650, !tbaa !39
  store ptr %t651, ptr %l32, !tbaa !29
  %t653 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ector(ptr %s28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t653, ptr %l348
  br label %bb186
bb186:
  %t654 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l348
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t654, ptr %l33
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load ptr, ptr %l32, !tbaa !29
  store ptr %t656, ptr %l350, !tbaa !29
  %t657 = load ptr, ptr %l350, !tbaa !29
  %t658 = call ptr @__olang_scope_of(ptr %t657, ptr null)
  %t659 = ptrtoint ptr %t658 to i64
  %t661 = inttoptr i64 %t659 to ptr
  %t663 = load ptr, ptr %l350, !tbaa !29
  %t664 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloneBinding(ptr %v0, ptr %t661, ptr %t655, ptr %t663)
  store i1 %t664, ptr %l352
  br label %bb187
bb187:
  %t665 = load i1, ptr %l352, !tbaa !21
  store i1 %t665, ptr %l34, !tbaa !21
  %t666 = load ptr, ptr %l32, !tbaa !29
  %t668 = getelementptr %"compiler/ast:Catch", ptr %t666, i32 0, i32 1
  %t669 = load { i64, ptr }, ptr %t668, !tbaa !27
  %t671 = extractvalue { i64, ptr } %t669, 0
  %t673 = icmp sgt i64 %t671, 0
  br i1 %t673, label %bb188, label %bb189
bb188:
  %t675 = load i1, ptr %l34, !tbaa !21
  %t677 = xor i1 %t675, true
  store i1 %t677, ptr %l357, !tbaa !21
  br label %bb190
bb189:
  store i1 false, ptr %l357, !tbaa !21
  br label %bb190
bb190:
  %t679 = load i1, ptr %l357, !tbaa !21
  br i1 %t679, label %bb191, label %bb192
bb191:
  %t680 = load ptr, ptr %l32, !tbaa !29
  %t682 = getelementptr %"compiler/ast:Catch", ptr %t680, i32 0, i32 1
  %t683 = load { i64, ptr }, ptr %t682, !tbaa !27
  store { i64, ptr } %t683, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t685 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t687 = extractvalue { i64, ptr } %t685, 0
  store i64 %t687, ptr %l37, !tbaa !24
  br label %bb193
bb192:
  br label %bb200
bb193:
  %t689 = load i64, ptr %l36, !tbaa !24
  %t690 = load i64, ptr %l37, !tbaa !24
  %t693 = icmp slt i64 %t689, %t690
  %t695 = xor i1 %t693, true
  br i1 %t695, label %bb194, label %bb195
bb194:
  br label %bb199
bb195:
  br label %bb196
bb196:
  %t697 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t697, ptr %l368, !tbaa !27
  %t698 = load i64, ptr %l36, !tbaa !24
  %t700 = getelementptr { i64, ptr }, ptr %l368, i32 0, i32 1
  %t701 = load ptr, ptr %t700, !tbaa !27
  %t702 = getelementptr ptr, ptr %t701, i64 %t698
  %t703 = load ptr, ptr %t702, !tbaa !39
  %t705 = load ptr, ptr %l0, !tbaa !29
  store ptr %t703, ptr %l372, !tbaa !29
  %t707 = load ptr, ptr %l372, !tbaa !29
  %t708 = call ptr @__olang_scope_of(ptr %t707, ptr null)
  %t709 = ptrtoint ptr %t708 to i64
  %t711 = inttoptr i64 %t709 to ptr
  %t713 = load ptr, ptr %l372, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchItem(ptr %v0, ptr %t711, ptr %s28, ptr %t705, ptr %t713, ptr %l33)
  br label %bb197
bb197:
  br label %bb198
bb198:
  %t715 = load i64, ptr %l36, !tbaa !24
  %t717 = add i64 %t715, 1
  store i64 %t717, ptr %l36, !tbaa !24
  br label %bb193
bb199:
  br label %bb200
bb200:
  %t719 = load ptr, ptr %l32, !tbaa !29
  %t721 = getelementptr %"compiler/ast:Catch", ptr %t719, i32 0, i32 5
  %t722 = load i32, ptr %t721, !tbaa !23
  %t724 = icmp ne i32 %t722, 0
  br i1 %t724, label %bb201, label %bb202
bb201:
  store i1 true, ptr %l380, !tbaa !21
  br label %bb203
bb202:
  %t726 = load i1, ptr %l34, !tbaa !21
  store i1 %t726, ptr %l380, !tbaa !21
  br label %bb203
bb203:
  %t728 = load i1, ptr %l380, !tbaa !21
  br i1 %t728, label %bb204, label %bb205
bb204:
  %t729 = load ptr, ptr %l0, !tbaa !29
  store ptr %t729, ptr %l382, !tbaa !29
  %t730 = load i1, ptr %l34, !tbaa !21
  br i1 %t730, label %bb206, label %bb207
bb205:
  br label %bb215
bb206:
  %t732 = load ptr, ptr %l32, !tbaa !29
  %t734 = getelementptr %"compiler/ast:Catch", ptr %t732, i32 0, i32 1
  %t735 = load { i64, ptr }, ptr %t734, !tbaa !27
  store { i64, ptr } %t735, ptr %l386, !tbaa !27
  %t736 = getelementptr { i64, ptr }, ptr %l386, i32 0, i32 1
  %t737 = load ptr, ptr %t736, !tbaa !27
  %t738 = getelementptr ptr, ptr %t737, i64 0
  %t739 = load ptr, ptr %t738, !tbaa !39
  %t741 = getelementptr %"compiler/ast:Path", ptr %t739, i32 0, i32 0
  %t742 = load %"compiler/source:Span", ptr %t741
  store %"compiler/source:Span" %t742, ptr %l384
  br label %bb208
bb207:
  %t744 = load ptr, ptr %l32, !tbaa !29
  %t746 = getelementptr %"compiler/ast:Catch", ptr %t744, i32 0, i32 6
  %t747 = load %"compiler/source:Span", ptr %t746
  store %"compiler/source:Span" %t747, ptr %l384
  br label %bb208
bb208:
  %t749 = load ptr, ptr %l0, !tbaa !29
  store ptr %t749, ptr %l391, !tbaa !29
  %t750 = load i1, ptr %l34, !tbaa !21
  br i1 %t750, label %bb209, label %bb210
bb209:
  %t752 = load ptr, ptr %l32, !tbaa !29
  %t754 = getelementptr %"compiler/ast:Catch", ptr %t752, i32 0, i32 1
  %t755 = load { i64, ptr }, ptr %t754, !tbaa !27
  store { i64, ptr } %t755, ptr %l395, !tbaa !27
  %t756 = getelementptr { i64, ptr }, ptr %l395, i32 0, i32 1
  %t757 = load ptr, ptr %t756, !tbaa !27
  %t758 = getelementptr ptr, ptr %t757, i64 0
  %t759 = load ptr, ptr %t758, !tbaa !39
  %t761 = getelementptr %"compiler/ast:Path", ptr %t759, i32 0, i32 1
  %t762 = load { i64, ptr }, ptr %t761, !tbaa !27
  store { i64, ptr } %t762, ptr %l397, !tbaa !27
  %t763 = getelementptr { i64, ptr }, ptr %l397, i32 0, i32 1
  %t764 = load ptr, ptr %t763, !tbaa !27
  %t765 = getelementptr i32, ptr %t764, i64 0
  %t766 = load i32, ptr %t765, !tbaa !33
  store i32 %t766, ptr %l393, !tbaa !23
  br label %bb211
bb210:
  %t768 = load ptr, ptr %l32, !tbaa !29
  %t770 = getelementptr %"compiler/ast:Catch", ptr %t768, i32 0, i32 5
  %t771 = load i32, ptr %t770, !tbaa !23
  store i32 %t771, ptr %l393, !tbaa !23
  br label %bb211
bb211:
  %t773 = load ptr, ptr %l391, !tbaa !29
  %t774 = load i32, ptr %l393, !tbaa !23
  %t775 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t773, i32 %t774)
  store { i64, ptr } %t775, ptr %l401
  br label %bb212
bb212:
  %t776 = load { i64, ptr }, ptr %l401, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t776, 0
  %t778 = extractvalue { i64, ptr } %t776, 1
  %t779 = mul i64 %t777, 1
  %t780 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t779)
  call void @llvm.memcpy.p0.p0.i64(ptr %t780, ptr %t778, i64 %t779, i1 false)
  %t781 = insertvalue { i64, ptr } undef, i64 %t777, 0
  %t782 = insertvalue { i64, ptr } %t781, ptr %t780, 1
  %t784 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNameInTask(ptr %v0, ptr %v0, { i64, ptr } %t782)
  store %"compiler/diagmsg:Msg" %t784, ptr %l403
  br label %bb213
bb213:
  %t785 = load ptr, ptr %l382, !tbaa !29
  %t786 = load %"compiler/source:Span", ptr %l384
  %t787 = load %"compiler/diagmsg:Msg", ptr %l403
  %t788 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t785, %"compiler/source:Span" %t786, %"compiler/diagmsg:Msg" %t787)
  store i64 %t788, ptr %l404
  br label %bb214
bb214:
  br label %bb215
bb215:
  %t789 = load ptr, ptr %l32, !tbaa !29
  %t791 = getelementptr %"compiler/ast:Catch", ptr %t789, i32 0, i32 1
  %t792 = load { i64, ptr }, ptr %t791, !tbaa !27
  %t794 = extractvalue { i64, ptr } %t792, 0
  %t796 = icmp eq i64 %t794, 0
  br i1 %t796, label %bb216, label %bb217
bb216:
  store i1 true, ptr %l409, !tbaa !21
  br label %bb218
bb217:
  %t798 = load i1, ptr %l34, !tbaa !21
  store i1 %t798, ptr %l409, !tbaa !21
  br label %bb218
bb218:
  %t800 = load i1, ptr %l409, !tbaa !21
  store i1 %t800, ptr %l39, !tbaa !21
  %t801 = load ptr, ptr %l24, !tbaa !29
  store ptr %t801, ptr %l411, !tbaa !29
  %t802 = load ptr, ptr %l32, !tbaa !29
  %t804 = getelementptr %"compiler/ast:Catch", ptr %t802, i32 0, i32 0
  %t805 = load %"compiler/source:Span", ptr %t804
  store %"compiler/source:Span" %t805, ptr %l413
  %t806 = ptrtoint ptr %v0 to i64
  store i64 %t806, ptr %l414, !tbaa !24
  %t807 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aTaskClause_2e1
  br i1 %t807, label %bb219, label %bb220
bb219:
  %t809 = call ptr @__olang_region_make(ptr %v0)
  %t810 = ptrtoint ptr %t809 to i64
  store i64 %t810, ptr %l414, !tbaa !24
  br label %bb220
bb220:
  %t811 = load i64, ptr %l414
  %t812 = inttoptr i64 %t811 to ptr
  %t814 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eToArray_3ccompiler_2ftyped_3aItem_3e(ptr %s28, ptr %t812, ptr %l33)
  store { i64, ptr } %t814, ptr %l417
  br label %bb221
bb221:
  %t815 = load i1, ptr %l39, !tbaa !21
  store i1 %t815, ptr %l418, !tbaa !21
  %t816 = load ptr, ptr %l0, !tbaa !29
  store ptr %t816, ptr %l419, !tbaa !29
  %t817 = load ptr, ptr %l32, !tbaa !29
  store ptr %t817, ptr %l420, !tbaa !29
  %t818 = load i32, ptr %l26, !tbaa !23
  store i32 %t818, ptr %l421, !tbaa !23
  %t819 = load ptr, ptr %l5, !tbaa !29
  %t821 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %t819)
  store i64 %t821, ptr %l423
  br label %bb222
bb222:
  %t822 = load ptr, ptr %l420, !tbaa !29
  %t823 = call ptr @__olang_scope_of(ptr %t822, ptr null)
  %t824 = ptrtoint ptr %t823 to i64
  %t826 = inttoptr i64 %t824 to ptr
  %t827 = load ptr, ptr %l419, !tbaa !29
  %t828 = load ptr, ptr %l420, !tbaa !29
  %t829 = load i32, ptr %l421, !tbaa !23
  %t830 = load i64, ptr %l423, !tbaa !24
  %t831 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseHandler(ptr %v0, ptr %t826, ptr %v0, ptr %t827, ptr %t828, i32 %t829, i64 %t830)
  store ptr %t831, ptr %l425
  br label %bb223
bb223:
  %t832 = load %"compiler/source:Span", ptr %l413
  %t833 = load { i64, ptr }, ptr %l417, !tbaa !27
  %t834 = load i1, ptr %l418, !tbaa !21
  %t835 = load ptr, ptr %l425, !tbaa !29
  %t836 = call %"compiler/typed:TaskClause" @compiler_2ftyped_3aTaskClause_2ector(ptr %v0, ptr %v0, ptr %v0, %"compiler/source:Span" %t832, { i64, ptr } %t833, i1 %t834, ptr %t835)
  store %"compiler/typed:TaskClause" %t836, ptr %l426
  br label %bb224
bb224:
  %t837 = load %"compiler/typed:TaskClause", ptr %l426
  %t838 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store %"compiler/typed:TaskClause" %t837, ptr %t838
  %t839 = load ptr, ptr %l411, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aTaskClause_26_3e_2e_H70975c58788d810dba7712b4ee87a08c(ptr %v0, ptr %v0, ptr %t839, ptr %t838)
  br label %bb225
bb225:
  store ptr %l25, ptr %l428, !tbaa !29
  %t841 = load ptr, ptr %l32, !tbaa !29
  %t843 = getelementptr %"compiler/ast:Catch", ptr %t841, i32 0, i32 0
  %t844 = load %"compiler/source:Span", ptr %t843
  store %"compiler/source:Span" %t844, ptr %l430
  %t845 = ptrtoint ptr %s0 to i64
  store i64 %t845, ptr %l431, !tbaa !24
  %t846 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aClause_2e1
  br i1 %t846, label %bb226, label %bb227
bb226:
  %t848 = call ptr @__olang_region_make(ptr %s0)
  %t849 = ptrtoint ptr %t848 to i64
  store i64 %t849, ptr %l431, !tbaa !24
  br label %bb227
bb227:
  %t850 = load i64, ptr %l431
  %t851 = inttoptr i64 %t850 to ptr
  %t853 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eToArray_3ccompiler_2ftyped_3aItem_3e(ptr %s28, ptr %t851, ptr %l33)
  store { i64, ptr } %t853, ptr %l434
  br label %bb228
bb228:
  %t854 = load i1, ptr %l39, !tbaa !21
  store i1 %t854, ptr %l435, !tbaa !21
  %t855 = icmp sge i64 0, 0
  br i1 %t855, label %bb229, label %bb230
bb229:
  %t857 = icmp sle i64 0, 1152921504606846975
  br i1 %t857, label %bb231, label %bb232
bb230:
  call void @__olang_check_failed(ptr @olang_loc_e78286934eafcc6f_802ae2752731a35b)
  unreachable
bb231:
  %t859 = mul i64 0, 8
  %t860 = insertvalue { i64, ptr } undef, i64 0, 0
  %t861 = insertvalue { i64, ptr } %t860, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t862 = load %"compiler/source:Span", ptr %l430
  %t863 = load { i64, ptr }, ptr %l434, !tbaa !27
  %t864 = load i1, ptr %l435, !tbaa !21
  %t866 = call %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %s0, ptr %s0, ptr %s0, ptr %s0, %"compiler/source:Span" %t862, { i64, ptr } %t863, i1 %t864, ptr null, { i64, ptr } %t861, i64 -1, i32 0)
  store %"compiler/typed:Clause" %t866, ptr %l439
  br label %bb233
bb232:
  call void @__olang_check_failed(ptr @olang_loc_e78286934eafcc6f_802ae2752731a35b)
  unreachable
bb233:
  %t867 = load %"compiler/typed:Clause", ptr %l439
  %t868 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 72, i64 8)
  store %"compiler/typed:Clause" %t867, ptr %t868
  %t869 = load ptr, ptr %l428, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %s0, ptr %s0, ptr %t869, ptr %t868)
  br label %bb234
bb234:
  call void @__olang_scope_close(ptr %s28)
  br label %bb235
bb235:
  %t871 = load i64, ptr %l30, !tbaa !24
  %t873 = add i64 %t871, 1
  store i64 %t873, ptr %l30, !tbaa !24
  br label %bb182
bb236:
  call void @__olang_scope_close(ptr %s24)
  br label %bb237
bb237:
  %t875 = load ptr, ptr %l4, !tbaa !29
  %t877 = getelementptr %"compiler/check:frame", ptr %t875, i32 0, i32 40
  %t879 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t877)
  store i64 %t879, ptr %l445
  br label %bb238
bb238:
  %t880 = load i64, ptr %l445, !tbaa !24
  store i64 %t880, ptr %l40, !tbaa !24
  %t881 = load i1, ptr %l10, !tbaa !21
  br i1 %t881, label %bb239, label %bb240
bb239:
  %t883 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t883, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t885 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t887 = extractvalue { i64, ptr } %t885, 0
  store i64 %t887, ptr %l43, !tbaa !24
  br label %bb241
bb240:
  br label %bb248
bb241:
  %t889 = load i64, ptr %l42, !tbaa !24
  %t890 = load i64, ptr %l43, !tbaa !24
  %t893 = icmp slt i64 %t889, %t890
  %t895 = xor i1 %t893, true
  br i1 %t895, label %bb242, label %bb243
bb242:
  br label %bb247
bb243:
  br label %bb244
bb244:
  %t897 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t897, ptr %l454, !tbaa !27
  %t898 = load i64, ptr %l42, !tbaa !24
  %t900 = getelementptr { i64, ptr }, ptr %l454, i32 0, i32 1
  %t901 = load ptr, ptr %t900, !tbaa !27
  %t902 = getelementptr i32, ptr %t901, i64 %t898
  %t903 = load i32, ptr %t902, !tbaa !33
  %t905 = load ptr, ptr %l4, !tbaa !29
  %t907 = getelementptr %"compiler/check:frame", ptr %t905, i32 0, i32 40
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t907, i32 %t903)
  br label %bb245
bb245:
  br label %bb246
bb246:
  %t911 = load i64, ptr %l42, !tbaa !24
  %t913 = add i64 %t911, 1
  store i64 %t913, ptr %l42, !tbaa !24
  br label %bb241
bb247:
  br label %bb248
bb248:
  %t915 = load ptr, ptr %l0, !tbaa !29
  %t916 = load ptr, ptr %l4, !tbaa !29
  %t918 = getelementptr %"compiler/check:frame", ptr %t916, i32 0, i32 40
  %t919 = load i64, ptr %l40, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropTaken(ptr %v0, ptr %v0, ptr %s0, ptr %t915, ptr %t918, i64 %t919, ptr %l25)
  br label %bb249
bb249:
  %t924 = load ptr, ptr %l5, !tbaa !29
  %t926 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %t924)
  store i64 %t926, ptr %l468
  br label %bb250
bb250:
  %t927 = load i64, ptr %l468, !tbaa !24
  %t928 = icmp sgt i64 %t927, 0
  br i1 %t928, label %bb251, label %bb252
bb251:
  %t930 = load ptr, ptr %l4, !tbaa !29
  %t932 = getelementptr %"compiler/check:frame", ptr %t930, i32 0, i32 40
  %t934 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t932)
  store i64 %t934, ptr %l473
  br label %bb253
bb252:
  store i1 false, ptr %l470, !tbaa !21
  br label %bb254
bb253:
  %t935 = load i64, ptr %l40, !tbaa !24
  %t936 = load i64, ptr %l473, !tbaa !24
  %t938 = icmp sgt i64 %t936, %t935
  store i1 %t938, ptr %l470, !tbaa !21
  br label %bb254
bb254:
  %t940 = load i1, ptr %l470, !tbaa !21
  br i1 %t940, label %bb255, label %bb256
bb255:
  %t941 = load ptr, ptr %l4, !tbaa !29
  store ptr %t941, ptr %l476, !tbaa !29
  %t942 = load ptr, ptr %l476, !tbaa !29
  %t943 = getelementptr %"compiler/check:frame", ptr %t942, i32 0, i32 33
  %t944 = load i64, ptr %t943, !tbaa !24
  %t946 = add i64 %t944, 1
  %t948 = load ptr, ptr %l476, !tbaa !29
  %t949 = getelementptr %"compiler/check:frame", ptr %t948, i32 0, i32 33
  store i64 %t946, ptr %t949, !tbaa !24
  br label %bb257
bb256:
  br label %bb257
bb257:
  %t950 = load ptr, ptr %l5, !tbaa !29
  %t952 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %t950)
  store i64 %t952, ptr %l480
  br label %bb258
bb258:
  %t953 = load i64, ptr %l480, !tbaa !24
  %t954 = icmp sgt i64 %t953, 0
  br i1 %t954, label %bb259, label %bb260
bb259:
  %t956 = load ptr, ptr %l0, !tbaa !29
  store ptr %t956, ptr %l482, !tbaa !29
  %t957 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t957, ptr %l483
  %t958 = load ptr, ptr %l3, !tbaa !29
  store ptr %t958, ptr %l484, !tbaa !29
  %t959 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t959, ptr %l485, !tbaa !27
  %t960 = load ptr, ptr %l5, !tbaa !29
  store ptr %t960, ptr %l486, !tbaa !29
  %t961 = load ptr, ptr %l16, !tbaa !29
  %t964 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t961)
  store i32 %t964, ptr %l489
  br label %bb261
bb260:
  br label %bb263
bb261:
  %t965 = load ptr, ptr %l482, !tbaa !29
  %t966 = load %"compiler/source:Span", ptr %l483
  %t967 = load ptr, ptr %l484, !tbaa !29
  %t968 = load { i64, ptr }, ptr %l485, !tbaa !27
  %t969 = load ptr, ptr %l486, !tbaa !29
  %t970 = load i32, ptr %l489, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnTargets(ptr %v0, ptr %v2, ptr %v1, ptr %v0, ptr %t965, %"compiler/source:Span" %t966, ptr %t967, { i64, ptr } %t968, ptr %t969, i32 %t970)
  br label %bb262
bb262:
  br label %bb263
bb263:
  %t971 = load ptr, ptr %l0, !tbaa !29
  store ptr %t971, ptr %l490, !tbaa !29
  %t972 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t972, ptr %l491
  %t973 = load ptr, ptr %l5, !tbaa !29
  %t975 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eT_Hc52cb714df9676093c851daa15f6f747(ptr %v0, ptr %v0, ptr %t973)
  store { i64, ptr } %t975, ptr %l493
  br label %bb264
bb264:
  %t976 = load ptr, ptr %l16, !tbaa !29
  store ptr %t976, ptr %l494, !tbaa !29
  %t977 = load ptr, ptr %l24, !tbaa !29
  %t979 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aTaskClause_26_3e_2e_H788addc5d4e2ce71c84413f6a2c1cfed(ptr %v0, ptr %v0, ptr %t977)
  store { i64, ptr } %t979, ptr %l496
  br label %bb265
bb265:
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t981 = load %"compiler/source:Span", ptr %l1
  %t985 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t980, i32 6, %"compiler/source:Span" %t981)
  store i32 %t985, ptr %l500
  br label %bb266
bb266:
  %t986 = load { i64, ptr }, ptr %l493, !tbaa !27
  %t987 = load ptr, ptr %l494, !tbaa !29
  %t988 = load { i64, ptr }, ptr %l496, !tbaa !27
  %t989 = load i32, ptr %l500, !tbaa !23
  %t990 = call %"compiler/typed:Spawn" @compiler_2ftyped_3aSpawn_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t986, ptr %t987, { i64, ptr } %t988, i32 %t989)
  store %"compiler/typed:Spawn" %t990, ptr %l501
  br label %bb267
bb267:
  %t991 = load %"compiler/typed:Spawn", ptr %l501
  %t992 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store %"compiler/typed:Spawn" %t991, ptr %t992
  store { i64, [3 x i64] } zeroinitializer, ptr %t993
  %t994 = getelementptr { i64, [3 x i64] }, ptr %t993, i32 0, i32 0
  store i64 14, ptr %t994
  %t995 = load %"compiler/source:Span", ptr %l491
  %t996 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t995, 0
  %t998 = insertvalue { %"compiler/source:Span", ptr } %t996, ptr %t992, 1
  %t999 = getelementptr { i64, [3 x i64] }, ptr %t993, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t998, ptr %t999
  %t1000 = load { i64, [3 x i64] }, ptr %t993
  %t1002 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1000, ptr %t1002
  %t1003 = load ptr, ptr %l490, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1003, ptr %t1002)
  br label %bb268
bb268:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1005, ptr %l505, !tbaa !29
  %t1006 = load ptr, ptr %l505, !tbaa !29
  %t1007 = getelementptr %"compiler/check:Checker", ptr %t1006, i32 0, i32 41
  %t1008 = load i64, ptr %t1007, !tbaa !24
  %t1010 = sub i64 %t1008, 1
  %t1012 = load ptr, ptr %l505, !tbaa !29
  %t1013 = getelementptr %"compiler/check:Checker", ptr %t1012, i32 0, i32 41
  store i64 %t1010, ptr %t1013, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca ptr
  %l22 = alloca i1
  %l28 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l35 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
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
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l2, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_7151da8c7014d0c8_6aa5246f01d956ac)
  unreachable
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l3, !tbaa !27
  %t35 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = icmp slt i32 %t36, 0
  br i1 %t38, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb8
bb7:
  %t40 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = trunc i64 %t44 to i32
  %t49 = icmp sgt i32 %t41, %t46
  store i1 %t49, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t51 = load i1, ptr %l22, !tbaa !21
  br i1 %t51, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t52 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t53 = load i32, ptr %t52, !tbaa !23
  %t54 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t55 = load i32, ptr %t54, !tbaa !23
  %t58 = icmp sgt i32 %t53, %t55
  store i1 %t58, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t60 = load i1, ptr %l28, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l33, !tbaa !27
  %t63 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  store i64 %t66, ptr %l35, !tbaa !24
  %t67 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  store i64 %t70, ptr %l37, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l38, !tbaa !24
  %t73 = load i64, ptr %l35, !tbaa !24
  %t74 = icmp sge i64 %t73, 0
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = load i64, ptr %l35, !tbaa !24
  %t77 = load i64, ptr %l37, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_16d25af731eb828d_f9df92790de43871)
  unreachable
bb17:
  %t80 = load i64, ptr %l37, !tbaa !24
  %t81 = load i64, ptr %l38, !tbaa !24
  %t82 = icmp sle i64 %t80, %t81
  br i1 %t82, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_16d25af731eb828d_f9df92790de43871)
  unreachable
bb19:
  %t84 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l35, !tbaa !24
  %t87 = load i64, ptr %l37, !tbaa !24
  %t88 = getelementptr i8, ptr %t85, i64 %t86
  %t89 = sub i64 %t87, %t86
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  store { i64, ptr } %t91, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_16d25af731eb828d_f9df92790de43871)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estepMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca ptr
  %l57 = alloca i32
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i32
  %l66 = alloca { i64, ptr }
  %l67 = alloca %"compiler/source:Span"
  %l69 = alloca { i64, ptr }
  %l70 = alloca i1
  %l71 = alloca ptr
  %l74 = alloca ptr
  %l77 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i32
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i32
  %l89 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca %"compiler/source:Span"
  %l94 = alloca i32
  %l97 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca i1
  %l102 = alloca i64
  %l105 = alloca i32
  %l106 = alloca i64
  %l107 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca ptr
  %l122 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l130 = alloca ptr
  %l131 = alloca %"compiler/source:Span"
  %l132 = alloca ptr
  %l137 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  %t31 = alloca { i64, [4 x i64] }, align 8
  %t89 = alloca { i64, [3 x i64] }, align 8
  %t216 = alloca { i64, [4 x i64] }, align 8
  %t272 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i1, ptr %l13, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l16, !tbaa !29
  %t11 = load i32, ptr %l3, !tbaa !23
  store i32 %t11, ptr %l17, !tbaa !23
  %t12 = load i1, ptr %l4, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l16, !tbaa !29
  %t15 = load i32, ptr %l17, !tbaa !23
  %t16 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t14, i32 %t15, { i64, ptr } %t16, i64 0)
  store i64 %t17, ptr %l20
  br label %bb8
bb8:
  %t18 = load i64, ptr %l20, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sge i64 %t19, 0
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l23, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t24, ptr %l24
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l25
  %t26 = load i64, ptr %l5, !tbaa !24
  store i64 %t26, ptr %l26, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  %t29 = load %"compiler/source:Span", ptr %l1
  %t30 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 0
  store i64 7, ptr %t32
  %t34 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t29, 0
  %t36 = insertvalue { %"compiler/source:Span", i32 } %t34, i32 %t30, 1
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t36, ptr %t37
  %t38 = load { i64, [4 x i64] }, ptr %t31
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t38, ptr %t40
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t27, %"compiler/source:Span" %t28, ptr %t40)
  store ptr %t44, ptr %l33
  br label %bb11
bb10:
  br label %bb27
bb11:
  %t45 = load ptr, ptr %l33, !tbaa !29
  store ptr %t45, ptr %l34, !tbaa !29
  %t46 = icmp sge i64 0, 0
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = icmp sle i64 0, 1152921504606846975
  br i1 %t48, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_fe73ad2ef66395ad_6bb388f528f40629)
  unreachable
bb14:
  %t50 = mul i64 0, 8
  %t51 = insertvalue { i64, ptr } undef, i64 0, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t52, ptr %l37, !tbaa !27
  %t53 = icmp sge i64 0, 0
  br i1 %t53, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_fe73ad2ef66395ad_6bb388f528f40629)
  unreachable
bb16:
  %t55 = icmp sle i64 0, 1152921504606846975
  br i1 %t55, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_fe73ad2ef66395ad_6bb388f528f40629)
  unreachable
bb18:
  %t57 = mul i64 0, 8
  %t58 = insertvalue { i64, ptr } undef, i64 0, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t59, ptr %l40, !tbaa !27
  %t60 = icmp sge i64 0, 0
  br i1 %t60, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_fe73ad2ef66395ad_6bb388f528f40629)
  unreachable
bb20:
  %t62 = icmp sle i64 0, 2305843009213693951
  br i1 %t62, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_97840d8df2a94e80_8f65c6ae19d7bb5c)
  unreachable
bb22:
  %t64 = mul i64 0, 4
  %t65 = insertvalue { i64, ptr } undef, i64 0, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t67 = load ptr, ptr %l23, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l24
  %t69 = load %"compiler/source:Span", ptr %l25
  %t70 = load i64, ptr %l26, !tbaa !24
  %t71 = load ptr, ptr %l34, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t75 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t67, %"compiler/source:Span" %t68, %"compiler/source:Span" %t69, i64 %t70, ptr %t71, { i64, ptr } %t72, { i64, ptr } %t73, { i64, ptr } %t66)
  store ptr %t75, ptr %l44
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_97840d8df2a94e80_8f65c6ae19d7bb5c)
  unreachable
bb24:
  %t76 = load ptr, ptr %l44, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l45, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t78, ptr %l46
  %t79 = load ptr, ptr %l2, !tbaa !29
  store ptr %t79, ptr %l47, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l3, !tbaa !23
  %t83 = load %"compiler/source:Span", ptr %l1
  %t88 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t80, ptr %t76, i32 %t82, %"compiler/source:Span" %t83)
  store ptr %t88, ptr %l52
  br label %bb25
bb25:
  store { i64, [3 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 0
  store i64 1, ptr %t90
  %t91 = load %"compiler/source:Span", ptr %l46
  %t92 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t91, 0
  %t93 = load ptr, ptr %l47, !tbaa !29
  %t94 = insertvalue { %"compiler/source:Span", ptr, ptr } %t92, ptr %t93, 1
  %t95 = load ptr, ptr %l52, !tbaa !29
  %t96 = insertvalue { %"compiler/source:Span", ptr, ptr } %t94, ptr %t95, 2
  %t97 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t96, ptr %t97
  %t98 = load { i64, [3 x i64] }, ptr %t89
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t98, ptr %t100
  %t101 = load ptr, ptr %l45, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t101, ptr %t100)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb27:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l56, !tbaa !29
  %t105 = load i32, ptr %l3, !tbaa !23
  store i32 %t105, ptr %l57, !tbaa !23
  %t106 = load i1, ptr %l4, !tbaa !21
  br i1 %t106, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb30
bb29:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l56, !tbaa !29
  %t109 = load i32, ptr %l57, !tbaa !23
  %t110 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t111 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t108, i32 %t109, { i64, ptr } %t110, i64 1)
  store i64 %t111, ptr %l60
  br label %bb31
bb31:
  %t112 = load i64, ptr %l60, !tbaa !24
  store i64 %t112, ptr %l7, !tbaa !24
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = icmp slt i64 %t113, 0
  br i1 %t115, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s3
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l63, !tbaa !29
  %t118 = load i32, ptr %l3, !tbaa !23
  store i32 %t118, ptr %l64, !tbaa !23
  %t119 = load i1, ptr %l4, !tbaa !21
  br i1 %t119, label %bb34, label %bb35
bb33:
  br label %bb41
bb34:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l66, !tbaa !27
  br label %bb36
bb35:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l66, !tbaa !27
  br label %bb36
bb36:
  %t121 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t121, ptr %l67
  %t122 = load i1, ptr %l4, !tbaa !21
  br i1 %t122, label %bb37, label %bb38
bb37:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb39
bb38:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb39
bb39:
  %t124 = load ptr, ptr %l63, !tbaa !29
  %t125 = load i32, ptr %l64, !tbaa !23
  %t126 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t127 = load %"compiler/source:Span", ptr %l67
  %t128 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t129 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s3, ptr %s3, ptr %t124, i32 %t125, { i64, ptr } %t126, %"compiler/source:Span" %t127, { i64, ptr } %t128, i64 0, i1 false)
  store i1 %t129, ptr %l70
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load i1, ptr %l70, !tbaa !21
  store i1 %t130, ptr %rv
  br label %ret
bb41:
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l71, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l74, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  store ptr %t143, ptr %l77, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t148 = load i64, ptr %l7, !tbaa !24
  %t151 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t147, i64 %t148)
  store i32 %t151, ptr %l81
  br label %bb42
bb42:
  %t152 = load ptr, ptr %l77, !tbaa !29
  %t153 = load i32, ptr %l81, !tbaa !23
  %t154 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t154, ptr %l82
  br label %bb43
bb43:
  %t155 = load ptr, ptr %l74, !tbaa !29
  %t156 = load i32, ptr %l82, !tbaa !23
  %t157 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t155, i32 %t156)
  store { i64, ptr } %t157, ptr %l83
  br label %bb44
bb44:
  %t158 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t158, ptr %l84, !tbaa !27
  %t159 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 1
  %t162 = load i32, ptr %t161, !tbaa !33
  %t163 = load ptr, ptr %l71, !tbaa !29
  %t165 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t163, i32 %t162)
  store i32 %t165, ptr %l86
  br label %bb45
bb45:
  %t166 = load i32, ptr %l86, !tbaa !23
  store i32 %t166, ptr %l8, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr %l8, !tbaa !23
  %t171 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t167, i32 %t168)
  store i1 %t171, ptr %l89
  br label %bb46
bb46:
  %t172 = load i1, ptr %l89, !tbaa !21
  %t173 = xor i1 %t172, true
  br i1 %t173, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l92, !tbaa !29
  %t177 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t177, ptr %l93
  %t178 = load i32, ptr %l8, !tbaa !23
  store i32 %t178, ptr %l94, !tbaa !23
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  store ptr %t184, ptr %l97, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l8, !tbaa !23
  %t189 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l100
  br label %bb50
bb50:
  %t190 = load ptr, ptr %l97, !tbaa !29
  %t191 = load i32, ptr %l100, !tbaa !23
  %t192 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t190, i32 %t191)
  store i1 %t192, ptr %l101
  br label %bb51
bb51:
  %t193 = load i1, ptr %l101, !tbaa !21
  br i1 %t193, label %bb52, label %bb53
bb52:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l8, !tbaa !23
  %t198 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l105
  br label %bb54
bb53:
  store i64 1, ptr %l102, !tbaa !24
  br label %bb56
bb54:
  %t199 = load i32, ptr %l105, !tbaa !23
  %t200 = call i64 @compiler_2fcheck_2efloatBits(i32 %t199, double 0x3ff0000000000000)
  store i64 %t200, ptr %l106
  br label %bb55
bb55:
  %t201 = load i64, ptr %l106, !tbaa !24
  store i64 %t201, ptr %l102, !tbaa !24
  br label %bb56
bb56:
  %t202 = load ptr, ptr %l92, !tbaa !29
  %t203 = load %"compiler/source:Span", ptr %l93
  %t204 = load i32, ptr %l94, !tbaa !23
  %t205 = load i64, ptr %l102, !tbaa !24
  %t206 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t202, %"compiler/source:Span" %t203, i32 %t204, i64 %t205)
  store ptr %t206, ptr %l107
  br label %bb57
bb57:
  %t207 = load ptr, ptr %l107, !tbaa !29
  store ptr %t207, ptr %l9, !tbaa !29
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l108, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t209, ptr %l109
  %t210 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t210, ptr %l110
  %t211 = load i64, ptr %l7, !tbaa !24
  store i64 %t211, ptr %l111, !tbaa !24
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l1
  %t214 = load %"compiler/source:Span", ptr %l1
  %t215 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 0
  store i64 7, ptr %t217
  %t219 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t214, 0
  %t221 = insertvalue { %"compiler/source:Span", i32 } %t219, i32 %t215, 1
  %t222 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t221, ptr %t222
  %t223 = load { i64, [4 x i64] }, ptr %t216
  %t225 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t223, ptr %t225
  %t229 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t212, %"compiler/source:Span" %t213, ptr %t225)
  store ptr %t229, ptr %l118
  br label %bb58
bb58:
  %t230 = load ptr, ptr %l118, !tbaa !29
  store ptr %t230, ptr %l119, !tbaa !29
  %t231 = icmp sge i64 0, 0
  br i1 %t231, label %bb59, label %bb60
bb59:
  %t233 = icmp sle i64 0, 1152921504606846975
  br i1 %t233, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_729de81d3b051823_7dce08f61f50e4bf)
  unreachable
bb61:
  %t235 = mul i64 0, 8
  %t236 = insertvalue { i64, ptr } undef, i64 0, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t237, ptr %l122, !tbaa !27
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l9, !tbaa !29
  %t242 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v0, ptr %v0, ptr %t238, ptr %t239)
  store { i64, ptr } %t242, ptr %l125
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_729de81d3b051823_7dce08f61f50e4bf)
  unreachable
bb63:
  %t243 = icmp sge i64 0, 0
  br i1 %t243, label %bb64, label %bb65
bb64:
  %t245 = icmp sle i64 0, 2305843009213693951
  br i1 %t245, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_97840d8df2a94e80_8f65c6ae19d7bb5c)
  unreachable
bb66:
  %t247 = mul i64 0, 4
  %t248 = insertvalue { i64, ptr } undef, i64 0, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t250 = load ptr, ptr %l108, !tbaa !29
  %t251 = load %"compiler/source:Span", ptr %l109
  %t252 = load %"compiler/source:Span", ptr %l110
  %t253 = load i64, ptr %l111, !tbaa !24
  %t254 = load ptr, ptr %l119, !tbaa !29
  %t255 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t256 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t258 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t250, %"compiler/source:Span" %t251, %"compiler/source:Span" %t252, i64 %t253, ptr %t254, { i64, ptr } %t255, { i64, ptr } %t256, { i64, ptr } %t249)
  store ptr %t258, ptr %l129
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_97840d8df2a94e80_8f65c6ae19d7bb5c)
  unreachable
bb68:
  %t259 = load ptr, ptr %l129, !tbaa !29
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l130, !tbaa !29
  %t261 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t261, ptr %l131
  %t262 = load ptr, ptr %l2, !tbaa !29
  store ptr %t262, ptr %l132, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l3, !tbaa !23
  %t266 = load %"compiler/source:Span", ptr %l1
  %t271 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t263, ptr %t259, i32 %t265, %"compiler/source:Span" %t266)
  store ptr %t271, ptr %l137
  br label %bb69
bb69:
  store { i64, [3 x i64] } zeroinitializer, ptr %t272
  %t273 = getelementptr { i64, [3 x i64] }, ptr %t272, i32 0, i32 0
  store i64 1, ptr %t273
  %t274 = load %"compiler/source:Span", ptr %l131
  %t275 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t274, 0
  %t276 = load ptr, ptr %l132, !tbaa !29
  %t277 = insertvalue { %"compiler/source:Span", ptr, ptr } %t275, ptr %t276, 1
  %t278 = load ptr, ptr %l137, !tbaa !29
  %t279 = insertvalue { %"compiler/source:Span", ptr, ptr } %t277, ptr %t278, 2
  %t280 = getelementptr { i64, [3 x i64] }, ptr %t272, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t279, ptr %t280
  %t281 = load { i64, [3 x i64] }, ptr %t272
  %t283 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t281, ptr %t283
  %t284 = load ptr, ptr %l130, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t284, ptr %t283)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/check:nullNarrow"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"compiler/check:narrowed"
  %l27 = alloca [1 x i32]
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca %"compiler/check:errNarrow"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l49 = alloca ptr
  %l59 = alloca i64
  %l62 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l92 = alloca i64
  %l95 = alloca i64
  %l116 = alloca %"compiler/check:nullNarrow"
  %l118 = alloca i1
  %l119 = alloca { i64, ptr }
  %l124 = alloca i1
  %l126 = alloca { i64, ptr }
  %l130 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i64
  %l138 = alloca %"compiler/check:nullNarrow"
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l144 = alloca i64
  %l148 = alloca i64
  %l151 = alloca i64
  %l172 = alloca %"compiler/check:narrowed"
  %l175 = alloca ptr
  %l179 = alloca %"compiler/typed:Local"
  %l182 = alloca { i64, ptr }
  %l188 = alloca i1
  %l190 = alloca { i64, ptr }
  %l195 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i64
  %l202 = alloca %"compiler/check:narrowed"
  %l207 = alloca i64
  %l211 = alloca i64
  %l214 = alloca i64
  %l235 = alloca %"compiler/check:errNarrow"
  %l238 = alloca i1
  %l239 = alloca { i64, ptr }
  %l242 = alloca ptr
  %l243 = alloca i32
  %l247 = alloca i1
  %l249 = alloca ptr
  %l250 = alloca i64
  %l254 = alloca %"compiler/check:errNarrow"
  %l257 = alloca ptr
  %l258 = alloca i64
  %l263 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l275 = alloca i64
  %l277 = alloca i64
  %l282 = alloca i64
  %l283 = alloca i64
  %l286 = alloca i64
  %l289 = alloca ptr
  %l290 = alloca i64
  %l294 = alloca %"compiler/check:nullNarrow"
  %l295 = alloca { i64, ptr }
  %l299 = alloca %"compiler/check:nullNarrow"
  %l301 = alloca %"compiler/check:nullNarrow"
  %l305 = alloca i64
  %l307 = alloca i64
  %l312 = alloca i64
  %l313 = alloca i64
  %l316 = alloca i64
  %l319 = alloca ptr
  %l320 = alloca i64
  %l324 = alloca %"compiler/check:narrowed"
  %l325 = alloca %"compiler/check:narrowed"
  %l332 = alloca i1
  %l338 = alloca ptr
  %l339 = alloca i64
  %l346 = alloca { i64, ptr }
  %l347 = alloca i64
  %l352 = alloca { i64, ptr }
  %l360 = alloca %"compiler/check:nullNarrow"
  %l361 = alloca ptr
  %l362 = alloca i64
  %l367 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %t410 = alloca i64
  store ptr %a0, ptr %l0
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t7)
  store ptr %t9, ptr %l49
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l49, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 51
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/check:frame", ptr %t16, i32 0, i32 52
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb10
bb7:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l62, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb9
bb9:
  %t51 = load i64, ptr %l62, !tbaa !24
  store i64 %t51, ptr %l59, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l59, !tbaa !24
  store i64 %t52, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb170
bb13:
  br label %bb14
bb14:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l10, !tbaa !24
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = getelementptr %"compiler/check:frame", ptr %t71, i32 0, i32 51
  store { i64, ptr } %t72, ptr %t75, !tbaa !27
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t77, 1
  %t82 = getelementptr %"compiler/check:frame", ptr %t76, i32 0, i32 52
  store i64 %t79, ptr %t82, !tbaa !24
  %t83 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t83, ptr %l85
  br label %bb15
bb15:
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t87 = getelementptr %"compiler/check:frame", ptr %t85, i32 0, i32 50
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t87)
  store i64 %t89, ptr %l88
  br label %bb16
bb16:
  %t90 = load i64, ptr %l88, !tbaa !24
  store i64 %t90, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t91 = load i64, ptr %l13, !tbaa !24
  %t92 = load i64, ptr %l12, !tbaa !24
  %t95 = icmp sgt i64 %t91, %t92
  br i1 %t95, label %bb17, label %bb18
bb17:
  %t97 = load i64, ptr %l14, !tbaa !24
  %t99 = icmp sgt i64 %t97, 0
  br i1 %t99, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb22
bb19:
  %t101 = load i64, ptr %l13, !tbaa !24
  %t102 = load i64, ptr %l12, !tbaa !24
  %t105 = sub i64 %t101, %t102
  %t106 = load i64, ptr %l14, !tbaa !24
  %t109 = add i64 %t105, %t106
  %t111 = sub i64 %t109, 1
  %t112 = load i64, ptr %l14, !tbaa !24
  %t115 = sdiv i64 %t111, %t112
  store i64 %t115, ptr %l95, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb21
bb21:
  %t117 = load i64, ptr %l95, !tbaa !24
  store i64 %t117, ptr %l92, !tbaa !24
  br label %bb22
bb22:
  %t118 = load i64, ptr %l92, !tbaa !24
  store i64 %t118, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l16, !tbaa !24
  %t120 = load i64, ptr %l15, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb24, label %bb25
bb24:
  br label %bb43
bb25:
  br label %bb26
bb26:
  %t127 = load i64, ptr %l12, !tbaa !24
  %t128 = load i64, ptr %l16, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t132 = mul i64 %t128, %t129
  %t135 = add i64 %t127, %t132
  store i64 %t135, ptr %l17, !tbaa !24
  %t137 = load ptr, ptr %l2, !tbaa !29
  %t139 = getelementptr %"compiler/check:frame", ptr %t137, i32 0, i32 50
  %t140 = load i64, ptr %l17, !tbaa !24
  %t143 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v0, ptr %t139, i64 %t140)
  store %"compiler/check:nullNarrow" %t143, ptr %l116
  br label %bb27
bb27:
  %t144 = load %"compiler/check:nullNarrow", ptr %l116
  store %"compiler/check:nullNarrow" %t144, ptr %l18
  %t145 = getelementptr %"compiler/check:nullNarrow", ptr %l18, i32 0, i32 2
  %t146 = load i1, ptr %t145, !tbaa !21
  br i1 %t146, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb31
bb29:
  %t148 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t148, ptr %l119, !tbaa !27
  %t149 = load i64, ptr %l10, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 %t149
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t156 = getelementptr %"compiler/check:nullNarrow", ptr %l18, i32 0, i32 0
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t160 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v1, ptr %v0, ptr %t154, { i64, ptr } %t157)
  store i1 %t160, ptr %l124
  br label %bb30
bb30:
  %t161 = load i1, ptr %l124, !tbaa !21
  %t162 = xor i1 %t161, true
  store i1 %t162, ptr %l118, !tbaa !21
  br label %bb31
bb31:
  %t164 = load i1, ptr %l118, !tbaa !21
  br i1 %t164, label %bb32, label %bb33
bb32:
  br label %bb42
bb33:
  br label %bb34
bb34:
  %t165 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t165, ptr %l126, !tbaa !27
  %t166 = load i64, ptr %l10, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr ptr, ptr %t169, i64 %t166
  %t171 = load ptr, ptr %t170, !tbaa !39
  %t172 = getelementptr %"compiler/check:nullNarrow", ptr %l18, i32 0, i32 0
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t176 = call i1 @compiler_2fcheck_2eassignsWhole(ptr %v1, ptr %v0, ptr %t171, { i64, ptr } %t173)
  store i1 %t176, ptr %l130
  br label %bb35
bb35:
  %t177 = load i1, ptr %l130, !tbaa !21
  br i1 %t177, label %bb36, label %bb37
bb36:
  %t178 = load i64, ptr %l17, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s3, ptr %l11, i64 %t178)
  br label %bb38
bb37:
  %t181 = load ptr, ptr %l2, !tbaa !29
  %t183 = getelementptr %"compiler/check:frame", ptr %t181, i32 0, i32 50
  store ptr %t183, ptr %l134, !tbaa !29
  %t184 = load i64, ptr %l17, !tbaa !24
  store i64 %t184, ptr %l135, !tbaa !24
  %t185 = getelementptr %"compiler/check:nullNarrow", ptr %l18, i32 0, i32 0
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t187 = getelementptr %"compiler/check:nullNarrow", ptr %l18, i32 0, i32 1
  %t188 = load i64, ptr %t187, !tbaa !24
  %t191 = call %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v0, { i64, ptr } %t186, i64 %t188, i1 true)
  store %"compiler/check:nullNarrow" %t191, ptr %l138
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t192 = load ptr, ptr %l134, !tbaa !29
  %t193 = load i64, ptr %l135, !tbaa !24
  %t194 = load %"compiler/check:nullNarrow", ptr %l138
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v0, ptr %t192, i64 %t193, %"compiler/check:nullNarrow" %t194)
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l16, !tbaa !24
  br label %bb23
bb43:
  %t199 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t199, ptr %l141
  br label %bb44
bb44:
  %t200 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l19
  store i64 0, ptr %l20, !tbaa !24
  %t201 = load ptr, ptr %l2, !tbaa !29
  %t203 = getelementptr %"compiler/check:frame", ptr %t201, i32 0, i32 46
  %t205 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t203)
  store i64 %t205, ptr %l144
  br label %bb45
bb45:
  %t206 = load i64, ptr %l144, !tbaa !24
  store i64 %t206, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t207 = load i64, ptr %l21, !tbaa !24
  %t208 = load i64, ptr %l20, !tbaa !24
  %t211 = icmp sgt i64 %t207, %t208
  br i1 %t211, label %bb46, label %bb47
bb46:
  %t213 = load i64, ptr %l22, !tbaa !24
  %t215 = icmp sgt i64 %t213, 0
  br i1 %t215, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb51
bb48:
  %t217 = load i64, ptr %l21, !tbaa !24
  %t218 = load i64, ptr %l20, !tbaa !24
  %t221 = sub i64 %t217, %t218
  %t222 = load i64, ptr %l22, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t227 = sub i64 %t225, 1
  %t228 = load i64, ptr %l22, !tbaa !24
  %t231 = sdiv i64 %t227, %t228
  store i64 %t231, ptr %l151, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l151, !tbaa !24
  br label %bb50
bb50:
  %t233 = load i64, ptr %l151, !tbaa !24
  store i64 %t233, ptr %l148, !tbaa !24
  br label %bb51
bb51:
  %t234 = load i64, ptr %l148, !tbaa !24
  store i64 %t234, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t235 = load i64, ptr %l24, !tbaa !24
  %t236 = load i64, ptr %l23, !tbaa !24
  %t239 = icmp slt i64 %t235, %t236
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb74
bb54:
  br label %bb55
bb55:
  %t243 = load i64, ptr %l20, !tbaa !24
  %t244 = load i64, ptr %l24, !tbaa !24
  %t245 = load i64, ptr %l22, !tbaa !24
  %t248 = mul i64 %t244, %t245
  %t251 = add i64 %t243, %t248
  store i64 %t251, ptr %l25, !tbaa !24
  %t253 = load ptr, ptr %l2, !tbaa !29
  %t255 = getelementptr %"compiler/check:frame", ptr %t253, i32 0, i32 46
  %t256 = load i64, ptr %l25, !tbaa !24
  %t259 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t255, i64 %t256)
  store %"compiler/check:narrowed" %t259, ptr %l172
  br label %bb56
bb56:
  %t260 = load %"compiler/check:narrowed", ptr %l172
  store %"compiler/check:narrowed" %t260, ptr %l26
  %t261 = getelementptr %"compiler/check:narrowed", ptr %l26, i32 0, i32 5
  %t262 = load i1, ptr %t261, !tbaa !21
  br i1 %t262, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb58:
  br label %bb59
bb59:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t264)
  store ptr %t266, ptr %l175
  br label %bb60
bb60:
  %t267 = load ptr, ptr %l175, !tbaa !29
  %t269 = getelementptr %"compiler/typed:Body", ptr %t267, i32 0, i32 7
  %t270 = getelementptr %"compiler/check:narrowed", ptr %l26, i32 0, i32 0
  %t271 = load i64, ptr %t270, !tbaa !24
  %t274 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t269, i64 %t271)
  store %"compiler/typed:Local" %t274, ptr %l179
  br label %bb61
bb61:
  %t275 = getelementptr %"compiler/typed:Local", ptr %l179, i32 0, i32 0
  %t276 = load i32, ptr %t275, !tbaa !23
  %t278 = insertvalue [1 x i32] undef, i32 %t276, 0
  store [1 x i32] %t278, ptr %l27
  %t280 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t280, ptr %l182, !tbaa !27
  %t281 = load i64, ptr %l10, !tbaa !24
  %t283 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr ptr, ptr %t284, i64 %t281
  %t286 = load ptr, ptr %t285, !tbaa !39
  %t289 = insertvalue { i64, ptr } undef, i64 1, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %l27, 1
  %t293 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v1, ptr %s11, ptr %t286, { i64, ptr } %t290)
  store i1 %t293, ptr %l188
  br label %bb62
bb62:
  %t294 = load i1, ptr %l188, !tbaa !21
  %t295 = xor i1 %t294, true
  br i1 %t295, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb64:
  br label %bb65
bb65:
  %t297 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t297, ptr %l190, !tbaa !27
  %t298 = load i64, ptr %l10, !tbaa !24
  %t300 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr ptr, ptr %t301, i64 %t298
  %t303 = load ptr, ptr %t302, !tbaa !39
  %t305 = insertvalue { i64, ptr } undef, i64 1, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %l27, 1
  %t309 = call i1 @compiler_2fcheck_2eassignsWhole(ptr %v1, ptr %s11, ptr %t303, { i64, ptr } %t306)
  store i1 %t309, ptr %l195
  br label %bb66
bb66:
  %t310 = load i1, ptr %l195, !tbaa !21
  br i1 %t310, label %bb67, label %bb68
bb67:
  %t311 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s3, ptr %l19, i64 %t311)
  br label %bb69
bb68:
  %t314 = load ptr, ptr %l2, !tbaa !29
  %t316 = getelementptr %"compiler/check:frame", ptr %t314, i32 0, i32 46
  store ptr %t316, ptr %l199, !tbaa !29
  %t317 = load i64, ptr %l25, !tbaa !24
  store i64 %t317, ptr %l200, !tbaa !24
  %t318 = load %"compiler/check:narrowed", ptr %l26
  %t320 = call %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(%"compiler/check:narrowed" %t318)
  store %"compiler/check:narrowed" %t320, ptr %l202
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t321 = load ptr, ptr %l199, !tbaa !29
  %t322 = load i64, ptr %l200, !tbaa !24
  %t323 = load %"compiler/check:narrowed", ptr %l202
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %t321, i64 %t322, %"compiler/check:narrowed" %t323)
  br label %bb71
bb71:
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb73:
  %t324 = load i64, ptr %l24, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l24, !tbaa !24
  br label %bb52
bb74:
  store i64 0, ptr %l28, !tbaa !24
  %t328 = load ptr, ptr %l2, !tbaa !29
  %t330 = getelementptr %"compiler/check:frame", ptr %t328, i32 0, i32 59
  %t332 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t330)
  store i64 %t332, ptr %l207
  br label %bb75
bb75:
  %t333 = load i64, ptr %l207, !tbaa !24
  store i64 %t333, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t334 = load i64, ptr %l29, !tbaa !24
  %t335 = load i64, ptr %l28, !tbaa !24
  %t338 = icmp sgt i64 %t334, %t335
  br i1 %t338, label %bb76, label %bb77
bb76:
  %t340 = load i64, ptr %l30, !tbaa !24
  %t342 = icmp sgt i64 %t340, 0
  br i1 %t342, label %bb78, label %bb79
bb77:
  store i64 0, ptr %l211, !tbaa !24
  br label %bb81
bb78:
  %t344 = load i64, ptr %l29, !tbaa !24
  %t345 = load i64, ptr %l28, !tbaa !24
  %t348 = sub i64 %t344, %t345
  %t349 = load i64, ptr %l30, !tbaa !24
  %t352 = add i64 %t348, %t349
  %t354 = sub i64 %t352, 1
  %t355 = load i64, ptr %l30, !tbaa !24
  %t358 = sdiv i64 %t354, %t355
  store i64 %t358, ptr %l214, !tbaa !24
  br label %bb80
bb79:
  store i64 0, ptr %l214, !tbaa !24
  br label %bb80
bb80:
  %t360 = load i64, ptr %l214, !tbaa !24
  store i64 %t360, ptr %l211, !tbaa !24
  br label %bb81
bb81:
  %t361 = load i64, ptr %l211, !tbaa !24
  store i64 %t361, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb82
bb82:
  store %olang.scope zeroinitializer, ptr %s18
  %t362 = load i64, ptr %l32, !tbaa !24
  %t363 = load i64, ptr %l31, !tbaa !24
  %t366 = icmp slt i64 %t362, %t363
  %t368 = xor i1 %t366, true
  br i1 %t368, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s18)
  br label %bb101
bb84:
  br label %bb85
bb85:
  %t370 = load i64, ptr %l28, !tbaa !24
  %t371 = load i64, ptr %l32, !tbaa !24
  %t372 = load i64, ptr %l30, !tbaa !24
  %t375 = mul i64 %t371, %t372
  %t378 = add i64 %t370, %t375
  store i64 %t378, ptr %l33, !tbaa !24
  %t380 = load ptr, ptr %l2, !tbaa !29
  %t382 = getelementptr %"compiler/check:frame", ptr %t380, i32 0, i32 59
  %t383 = load i64, ptr %l33, !tbaa !24
  %t386 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %t382, i64 %t383)
  store %"compiler/check:errNarrow" %t386, ptr %l235
  br label %bb86
bb86:
  %t387 = load %"compiler/check:errNarrow", ptr %l235
  store %"compiler/check:errNarrow" %t387, ptr %l34
  %t388 = getelementptr %"compiler/check:errNarrow", ptr %l34, i32 0, i32 3
  %t389 = load i1, ptr %t388, !tbaa !21
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb87, label %bb88
bb87:
  %t393 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t393, ptr %l239, !tbaa !27
  %t394 = load i64, ptr %l10, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr ptr, ptr %t397, i64 %t394
  %t399 = load ptr, ptr %t398, !tbaa !39
  store ptr %t399, ptr %l242, !tbaa !29
  %t401 = getelementptr %"compiler/check:errNarrow", ptr %l34, i32 0, i32 0
  %t402 = load i32, ptr %t401, !tbaa !23
  store i32 %t402, ptr %l243, !tbaa !23
  %t403 = icmp sge i64 1, 0
  br i1 %t403, label %bb89, label %bb90
bb88:
  store i1 false, ptr %l238, !tbaa !21
  br label %bb94
bb89:
  %t405 = icmp sle i64 1, 2305843009213693951
  br i1 %t405, label %bb91, label %bb92
bb90:
  call void @__olang_check_failed(ptr @olang_loc_f0430e4b284237b0_c6243626a46be64)
  unreachable
bb91:
  %t407 = mul i64 1, 4
  %t408 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t407)
  %t409 = load i32, ptr %l243, !tbaa !23
  store i64 0, ptr %t410
  br label %fill.411
fill.411:
  %t414 = load i64, ptr %t410
  %t415 = icmp slt i64 %t414, 1
  br i1 %t415, label %fillb.412, label %filld.413
fillb.412:
  %t416 = getelementptr i32, ptr %t408, i64 %t414
  store i32 %t409, ptr %t416
  %t417 = add i64 %t414, 1
  store i64 %t417, ptr %t410
  br label %fill.411
filld.413:
  %t418 = insertvalue { i64, ptr } undef, i64 1, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t408, 1
  %t420 = load ptr, ptr %l242, !tbaa !29
  %t422 = call i1 @compiler_2fcheck_2estmtAssigns(ptr %v1, ptr %s18, ptr %t420, { i64, ptr } %t419)
  store i1 %t422, ptr %l247
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_f0430e4b284237b0_c6243626a46be64)
  unreachable
bb93:
  %t423 = load i1, ptr %l247, !tbaa !21
  store i1 %t423, ptr %l238, !tbaa !21
  br label %bb94
bb94:
  %t424 = load i1, ptr %l238, !tbaa !21
  br i1 %t424, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s19
  %t425 = load ptr, ptr %l2, !tbaa !29
  %t427 = getelementptr %"compiler/check:frame", ptr %t425, i32 0, i32 59
  store ptr %t427, ptr %l249, !tbaa !29
  %t428 = load i64, ptr %l33, !tbaa !24
  store i64 %t428, ptr %l250, !tbaa !24
  %t429 = getelementptr %"compiler/check:errNarrow", ptr %l34, i32 0, i32 0
  %t430 = load i32, ptr %t429, !tbaa !23
  %t431 = getelementptr %"compiler/check:errNarrow", ptr %l34, i32 0, i32 1
  %t432 = load i32, ptr %t431, !tbaa !23
  %t433 = getelementptr %"compiler/check:errNarrow", ptr %l34, i32 0, i32 2
  %t434 = load i64, ptr %t433, !tbaa !24
  %t438 = call %"compiler/check:errNarrow" @compiler_2fcheck_3aerrNarrow_2ector(ptr %s19, i32 %t430, i32 %t432, i64 %t434, i1 true)
  store %"compiler/check:errNarrow" %t438, ptr %l254
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t439 = load ptr, ptr %l249, !tbaa !29
  %t440 = load i64, ptr %l250, !tbaa !24
  %t441 = load %"compiler/check:errNarrow", ptr %l254
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eSetA_H34a7475a189e9b126454728216b32261(ptr %v0, ptr %t439, i64 %t440, %"compiler/check:errNarrow" %t441)
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s19)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s18)
  br label %bb100
bb100:
  %t442 = load i64, ptr %l32, !tbaa !24
  %t444 = add i64 %t442, 1
  store i64 %t444, ptr %l32, !tbaa !24
  br label %bb82
bb101:
  %t446 = load ptr, ptr %l2, !tbaa !29
  store ptr %t446, ptr %l257, !tbaa !29
  %t447 = ptrtoint ptr %v0 to i64
  store i64 %t447, ptr %l258, !tbaa !24
  %t448 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e48
  br i1 %t448, label %bb102, label %bb103
bb102:
  %t450 = call ptr @__olang_region_make(ptr %v0)
  %t451 = ptrtoint ptr %t450 to i64
  store i64 %t451, ptr %l258, !tbaa !24
  br label %bb103
bb103:
  %t452 = icmp sge i64 0, 0
  br i1 %t452, label %bb104, label %bb105
bb104:
  %t454 = icmp sle i64 0, 2305843009213693951
  br i1 %t454, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_28ca8569d2f90b5d_c88a44871853971)
  unreachable
bb106:
  %t456 = mul i64 0, 4
  %t457 = load i64, ptr %l258
  %t458 = inttoptr i64 %t457 to ptr
  %t459 = insertvalue { i64, ptr } undef, i64 0, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t461 = load ptr, ptr %l257, !tbaa !29
  %t462 = getelementptr %"compiler/check:frame", ptr %t461, i32 0, i32 48
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l263, !tbaa !27
  %t465 = load ptr, ptr %l257, !tbaa !29
  %t466 = getelementptr %"compiler/check:frame", ptr %t465, i32 0, i32 48
  store { i64, ptr } %t460, ptr %t466, !tbaa !27
  %t467 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e48
  br i1 %t467, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_28ca8569d2f90b5d_c88a44871853971)
  unreachable
bb108:
  %t469 = load { i64, ptr }, ptr %l263
  %t470 = extractvalue { i64, ptr } %t469, 1
  call void @__olang_region_release(ptr %t470)
  store { i64, ptr } zeroinitializer, ptr %l263
  br label %bb109
bb109:
  %t471 = load ptr, ptr %l2, !tbaa !29
  %t473 = getelementptr %"compiler/check:frame", ptr %t471, i32 0, i32 49
  store i1 false, ptr %t473, !tbaa !21
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t475, ptr %l267, !tbaa !27
  %t476 = load i64, ptr %l10, !tbaa !24
  %t478 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t479 = load ptr, ptr %t478, !tbaa !27
  %t480 = getelementptr ptr, ptr %t479, i64 %t476
  %t481 = load ptr, ptr %t480, !tbaa !39
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t474, ptr %t481)
  br label %bb110
bb110:
  %t485 = load ptr, ptr %l2, !tbaa !29
  %t487 = getelementptr %"compiler/check:frame", ptr %t485, i32 0, i32 49
  %t488 = load i1, ptr %t487, !tbaa !21
  br i1 %t488, label %bb111, label %bb112
bb111:
  %t490 = load ptr, ptr %l2, !tbaa !29
  %t492 = getelementptr %"compiler/check:frame", ptr %t490, i32 0, i32 49
  store i1 false, ptr %t492, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb170
bb112:
  br label %bb113
bb113:
  store ptr %l11, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb114
bb114:
  %t494 = load i64, ptr %l36, !tbaa !24
  store i64 %t494, ptr %l275, !tbaa !24
  %t495 = load ptr, ptr %l35, !tbaa !29
  %t497 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %t495)
  store i64 %t497, ptr %l277
  br label %bb115
bb115:
  %t498 = load i64, ptr %l275, !tbaa !24
  %t499 = load i64, ptr %l277, !tbaa !24
  %t500 = icmp slt i64 %t498, %t499
  %t502 = xor i1 %t500, true
  br i1 %t502, label %bb116, label %bb117
bb116:
  br label %bb129
bb117:
  br label %bb118
bb118:
  %t504 = load ptr, ptr %l35, !tbaa !29
  %t505 = load i64, ptr %l36, !tbaa !24
  %t508 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %t504, i64 %t505)
  store i64 %t508, ptr %l282
  br label %bb119
bb119:
  %t509 = load i64, ptr %l282, !tbaa !24
  store i64 %t509, ptr %l37, !tbaa !24
  %t510 = load i64, ptr %l37, !tbaa !24
  store i64 %t510, ptr %l283, !tbaa !24
  %t511 = load ptr, ptr %l2, !tbaa !29
  %t513 = getelementptr %"compiler/check:frame", ptr %t511, i32 0, i32 50
  %t515 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %t513)
  store i64 %t515, ptr %l286
  br label %bb120
bb120:
  %t516 = load i64, ptr %l283, !tbaa !24
  %t517 = load i64, ptr %l286, !tbaa !24
  %t518 = icmp slt i64 %t516, %t517
  br i1 %t518, label %bb121, label %bb122
bb121:
  store %olang.scope zeroinitializer, ptr %s24
  %t520 = load ptr, ptr %l2, !tbaa !29
  %t522 = getelementptr %"compiler/check:frame", ptr %t520, i32 0, i32 50
  store ptr %t522, ptr %l289, !tbaa !29
  %t523 = load i64, ptr %l37, !tbaa !24
  store i64 %t523, ptr %l290, !tbaa !24
  %t524 = load ptr, ptr %l2, !tbaa !29
  %t526 = getelementptr %"compiler/check:frame", ptr %t524, i32 0, i32 50
  %t527 = load i64, ptr %l37, !tbaa !24
  %t530 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v0, ptr %t526, i64 %t527)
  store %"compiler/check:nullNarrow" %t530, ptr %l294
  br label %bb123
bb122:
  br label %bb127
bb123:
  %t531 = getelementptr %"compiler/check:nullNarrow", ptr %l294, i32 0, i32 0
  %t532 = load { i64, ptr }, ptr %t531, !tbaa !27
  store { i64, ptr } %t532, ptr %l295, !tbaa !27
  %t533 = load ptr, ptr %l2, !tbaa !29
  %t535 = getelementptr %"compiler/check:frame", ptr %t533, i32 0, i32 50
  %t536 = load i64, ptr %l37, !tbaa !24
  %t539 = call %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %s24, ptr %t535, i64 %t536)
  store %"compiler/check:nullNarrow" %t539, ptr %l299
  br label %bb124
bb124:
  %t540 = getelementptr %"compiler/check:nullNarrow", ptr %l299, i32 0, i32 1
  %t541 = load i64, ptr %t540, !tbaa !24
  %t542 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t544 = call %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v0, { i64, ptr } %t542, i64 %t541, i1 true)
  store %"compiler/check:nullNarrow" %t544, ptr %l301
  br label %bb125
bb125:
  %t545 = load ptr, ptr %l289, !tbaa !29
  %t546 = load i64, ptr %l290, !tbaa !24
  %t547 = load %"compiler/check:nullNarrow", ptr %l301
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v0, ptr %t545, i64 %t546, %"compiler/check:nullNarrow" %t547)
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s24)
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t548 = load i64, ptr %l36, !tbaa !24
  %t550 = add i64 %t548, 1
  store i64 %t550, ptr %l36, !tbaa !24
  br label %bb114
bb129:
  store ptr %l19, ptr %l38, !tbaa !29
  store i64 0, ptr %l39, !tbaa !24
  br label %bb130
bb130:
  %t553 = load i64, ptr %l39, !tbaa !24
  store i64 %t553, ptr %l305, !tbaa !24
  %t554 = load ptr, ptr %l38, !tbaa !29
  %t556 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %t554)
  store i64 %t556, ptr %l307
  br label %bb131
bb131:
  %t557 = load i64, ptr %l305, !tbaa !24
  %t558 = load i64, ptr %l307, !tbaa !24
  %t559 = icmp slt i64 %t557, %t558
  %t561 = xor i1 %t559, true
  br i1 %t561, label %bb132, label %bb133
bb132:
  br label %bb144
bb133:
  br label %bb134
bb134:
  %t563 = load ptr, ptr %l38, !tbaa !29
  %t564 = load i64, ptr %l39, !tbaa !24
  %t567 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %t563, i64 %t564)
  store i64 %t567, ptr %l312
  br label %bb135
bb135:
  %t568 = load i64, ptr %l312, !tbaa !24
  store i64 %t568, ptr %l40, !tbaa !24
  %t569 = load i64, ptr %l40, !tbaa !24
  store i64 %t569, ptr %l313, !tbaa !24
  %t570 = load ptr, ptr %l2, !tbaa !29
  %t572 = getelementptr %"compiler/check:frame", ptr %t570, i32 0, i32 46
  %t574 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t572)
  store i64 %t574, ptr %l316
  br label %bb136
bb136:
  %t575 = load i64, ptr %l313, !tbaa !24
  %t576 = load i64, ptr %l316, !tbaa !24
  %t577 = icmp slt i64 %t575, %t576
  br i1 %t577, label %bb137, label %bb138
bb137:
  %t579 = load ptr, ptr %l2, !tbaa !29
  %t581 = getelementptr %"compiler/check:frame", ptr %t579, i32 0, i32 46
  store ptr %t581, ptr %l319, !tbaa !29
  %t582 = load i64, ptr %l40, !tbaa !24
  store i64 %t582, ptr %l320, !tbaa !24
  %t583 = load ptr, ptr %l2, !tbaa !29
  %t585 = getelementptr %"compiler/check:frame", ptr %t583, i32 0, i32 46
  %t586 = load i64, ptr %l40, !tbaa !24
  %t589 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t585, i64 %t586)
  store %"compiler/check:narrowed" %t589, ptr %l324
  br label %bb139
bb138:
  br label %bb142
bb139:
  %t590 = load %"compiler/check:narrowed", ptr %l324
  %t591 = call %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(%"compiler/check:narrowed" %t590)
  store %"compiler/check:narrowed" %t591, ptr %l325
  br label %bb140
bb140:
  %t592 = load ptr, ptr %l319, !tbaa !29
  %t593 = load i64, ptr %l320, !tbaa !24
  %t594 = load %"compiler/check:narrowed", ptr %l325
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %t592, i64 %t593, %"compiler/check:narrowed" %t594)
  br label %bb141
bb141:
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t595 = load i64, ptr %l39, !tbaa !24
  %t597 = add i64 %t595, 1
  store i64 %t597, ptr %l39, !tbaa !24
  br label %bb130
bb144:
  %t599 = load ptr, ptr %l2, !tbaa !29
  %t601 = getelementptr %"compiler/check:frame", ptr %t599, i32 0, i32 48
  %t602 = load { i64, ptr }, ptr %t601, !tbaa !27
  %t604 = extractvalue { i64, ptr } %t602, 0
  %t606 = icmp sgt i64 %t604, 0
  br i1 %t606, label %bb145, label %bb146
bb145:
  %t608 = load ptr, ptr %l2, !tbaa !29
  %t610 = getelementptr %"compiler/check:frame", ptr %t608, i32 0, i32 48
  %t611 = load { i64, ptr }, ptr %t610, !tbaa !27
  %t613 = extractvalue { i64, ptr } %t611, 0
  %t615 = icmp eq i64 %t613, 1
  store i1 %t615, ptr %l332, !tbaa !21
  br label %bb147
bb146:
  store i1 false, ptr %l332, !tbaa !21
  br label %bb147
bb147:
  %t617 = load i1, ptr %l332, !tbaa !21
  br i1 %t617, label %bb148, label %bb149
bb148:
  %t618 = load ptr, ptr %l2, !tbaa !29
  %t620 = getelementptr %"compiler/check:frame", ptr %t618, i32 0, i32 50
  store ptr %t620, ptr %l338, !tbaa !29
  %t621 = ptrtoint ptr %v0 to i64
  store i64 %t621, ptr %l339, !tbaa !24
  %t622 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3anullNarrow_2e0
  br i1 %t622, label %bb150, label %bb151
bb149:
  br label %bb168
bb150:
  %t624 = call ptr @__olang_region_make(ptr %v0)
  %t625 = ptrtoint ptr %t624 to i64
  store i64 %t625, ptr %l339, !tbaa !24
  br label %bb151
bb151:
  %t626 = load ptr, ptr %l2, !tbaa !29
  %t628 = getelementptr %"compiler/check:frame", ptr %t626, i32 0, i32 48
  %t629 = load { i64, ptr }, ptr %t628, !tbaa !27
  store { i64, ptr } %t629, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t631 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t633 = extractvalue { i64, ptr } %t631, 0
  store i64 %t633, ptr %l43, !tbaa !24
  %t635 = load i64, ptr %l43, !tbaa !24
  %t637 = mul i64 %t635, 4
  %t638 = load i64, ptr %l339
  %t639 = inttoptr i64 %t638 to ptr
  %t640 = call ptr @__olang_scope_alloc(ptr %t639, i64 %t637)
  %t641 = insertvalue { i64, ptr } undef, i64 %t635, 0
  %t642 = insertvalue { i64, ptr } %t641, ptr %t640, 1
  store { i64, ptr } %t642, ptr %l346, !tbaa !27
  store i64 0, ptr %l347, !tbaa !24
  br label %bb152
bb152:
  %t643 = load i64, ptr %l42, !tbaa !24
  %t644 = load i64, ptr %l43, !tbaa !24
  %t647 = icmp slt i64 %t643, %t644
  %t649 = xor i1 %t647, true
  br i1 %t649, label %bb153, label %bb154
bb153:
  br label %bb157
bb154:
  br label %bb155
bb155:
  %t651 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t651, ptr %l352, !tbaa !27
  %t652 = load i64, ptr %l42, !tbaa !24
  %t654 = getelementptr { i64, ptr }, ptr %l352, i32 0, i32 1
  %t655 = load ptr, ptr %t654, !tbaa !27
  %t656 = getelementptr i32, ptr %t655, i64 %t652
  %t657 = load i32, ptr %t656, !tbaa !33
  %t661 = load i64, ptr %l347, !tbaa !24
  %t662 = getelementptr { i64, ptr }, ptr %l346, i32 0, i32 1
  %t663 = load ptr, ptr %t662, !tbaa !27
  %t664 = getelementptr i32, ptr %t663, i64 %t661
  store i32 %t657, ptr %t664, !tbaa !33
  %t665 = load i64, ptr %l347, !tbaa !24
  %t666 = add i64 %t665, 1
  store i64 %t666, ptr %l347, !tbaa !24
  br label %bb156
bb156:
  %t667 = load i64, ptr %l42, !tbaa !24
  %t669 = add i64 %t667, 1
  store i64 %t669, ptr %l42, !tbaa !24
  br label %bb152
bb157:
  %t671 = load ptr, ptr %l2, !tbaa !29
  %t673 = getelementptr %"compiler/check:frame", ptr %t671, i32 0, i32 7
  %t674 = load i64, ptr %t673, !tbaa !24
  %t675 = load { i64, ptr }, ptr %l346, !tbaa !27
  %t677 = call %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v0, { i64, ptr } %t675, i64 %t674, i1 false)
  store %"compiler/check:nullNarrow" %t677, ptr %l360
  br label %bb158
bb158:
  %t678 = load ptr, ptr %l338, !tbaa !29
  %t679 = load %"compiler/check:nullNarrow", ptr %l360
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ePus_H6cb9d90d121a5c1d081cb085b656665f(ptr %v0, ptr %v0, ptr %t678, %"compiler/check:nullNarrow" %t679)
  br label %bb159
bb159:
  %t680 = load ptr, ptr %l2, !tbaa !29
  store ptr %t680, ptr %l361, !tbaa !29
  %t681 = ptrtoint ptr %v0 to i64
  store i64 %t681, ptr %l362, !tbaa !24
  %t682 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e48
  br i1 %t682, label %bb160, label %bb161
bb160:
  %t684 = call ptr @__olang_region_make(ptr %v0)
  %t685 = ptrtoint ptr %t684 to i64
  store i64 %t685, ptr %l362, !tbaa !24
  br label %bb161
bb161:
  %t686 = icmp sge i64 0, 0
  br i1 %t686, label %bb162, label %bb163
bb162:
  %t688 = icmp sle i64 0, 2305843009213693951
  br i1 %t688, label %bb164, label %bb165
bb163:
  call void @__olang_check_failed(ptr @olang_loc_8296d6abcbfdbd1e_e4e071066943c4d2)
  unreachable
bb164:
  %t690 = mul i64 0, 4
  %t691 = load i64, ptr %l362
  %t692 = inttoptr i64 %t691 to ptr
  %t693 = insertvalue { i64, ptr } undef, i64 0, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t695 = load ptr, ptr %l361, !tbaa !29
  %t696 = getelementptr %"compiler/check:frame", ptr %t695, i32 0, i32 48
  %t697 = load { i64, ptr }, ptr %t696, !tbaa !27
  store { i64, ptr } %t697, ptr %l367, !tbaa !27
  %t699 = load ptr, ptr %l361, !tbaa !29
  %t700 = getelementptr %"compiler/check:frame", ptr %t699, i32 0, i32 48
  store { i64, ptr } %t694, ptr %t700, !tbaa !27
  %t701 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e48
  br i1 %t701, label %bb166, label %bb167
bb165:
  call void @__olang_check_failed(ptr @olang_loc_8296d6abcbfdbd1e_e4e071066943c4d2)
  unreachable
bb166:
  %t703 = load { i64, ptr }, ptr %l367
  %t704 = extractvalue { i64, ptr } %t703, 1
  call void @__olang_region_release(ptr %t704)
  store { i64, ptr } zeroinitializer, ptr %l367
  br label %bb167
bb167:
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s3)
  br label %bb169
bb169:
  %t705 = load i64, ptr %l9, !tbaa !24
  %t707 = add i64 %t705, 1
  store i64 %t707, ptr %l9, !tbaa !24
  br label %bb11
bb170:
  %t709 = load ptr, ptr %l2, !tbaa !29
  %t710 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t713 = getelementptr %"compiler/check:frame", ptr %t709, i32 0, i32 51
  store { i64, ptr } %t710, ptr %t713, !tbaa !27
  %t714 = load ptr, ptr %l2, !tbaa !29
  %t715 = load i64, ptr %l4, !tbaa !24
  %t718 = getelementptr %"compiler/check:frame", ptr %t714, i32 0, i32 52
  store i64 %t715, ptr %t718, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitSets(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l40 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca i32
  %l50 = alloca i32
  %l54 = alloca { i64, ptr }
  %l58 = alloca %"compiler/source:Span"
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TypeDecl", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  store i1 %t10, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l11, !tbaa !21
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
  store ptr %t18, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 5}
  %t25 = icmp eq i64 %t23, 2
  store i1 %t25, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l18, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr { i64, [6 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t29, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  br label %bb11
bb10:
  br label %bb30
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t33, i64 -1, i64 %a1, i32 %t35, i32 0)
  store ptr %t39, ptr %l26
  br label %bb12
bb12:
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb14, label %bb15
bb14:
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l34, !tbaa !27
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t55
  %t60 = load ptr, ptr %t59, !tbaa !39
  store ptr %t60, ptr %l8, !tbaa !29
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Func", ptr %t62, i32 0, i32 3
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/ast:Sig", ptr %t65, i32 0, i32 2
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l8, !tbaa !29
  %t72 = getelementptr %"compiler/ast:Func", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Sig", ptr %t73, i32 0, i32 3
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t80 = icmp eq i64 %t78, 0
  store i1 %t80, ptr %l40, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb19
bb19:
  %t82 = load i1, ptr %l40, !tbaa !21
  br i1 %t82, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l46, !tbaa !29
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = getelementptr %"compiler/ast:Func", ptr %t84, i32 0, i32 0
  %t87 = getelementptr %"compiler/source:Span", ptr %t86, i32 0, i32 0
  %t88 = load i32, ptr %t87, !tbaa !23
  store i32 %t88, ptr %l48, !tbaa !23
  %t89 = load ptr, ptr %l8, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Func", ptr %t89, i32 0, i32 0
  %t92 = getelementptr %"compiler/source:Span", ptr %t91, i32 0, i32 0
  %t93 = load i32, ptr %t92, !tbaa !23
  store i32 %t93, ptr %l50, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l8, !tbaa !29
  %t97 = getelementptr %"compiler/ast:Func", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %t97, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s5, ptr %t94, i32 %t98)
  store { i64, ptr } %t101, ptr %l54
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t102 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  %t105 = trunc i64 %t103 to i32
  %t106 = load i32, ptr %l50, !tbaa !23
  %t108 = add i32 %t106, %t105
  %t109 = load i32, ptr %l48, !tbaa !23
  %t111 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s5, i32 %t109, i32 %t108)
  store %"compiler/source:Span" %t111, ptr %l58
  br label %bb23
bb23:
  %t112 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitErrsUnwritten(ptr %v0)
  store %"compiler/diagmsg:Msg" %t112, ptr %l59
  br label %bb24
bb24:
  %t113 = load ptr, ptr %l46, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l58
  %t115 = load %"compiler/diagmsg:Msg", ptr %l59
  %t116 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t113, %"compiler/source:Span" %t114, %"compiler/diagmsg:Msg" %t115)
  store i64 %t116, ptr %l60
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t117 = load i64, ptr %l6, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l6, !tbaa !24
  br label %bb13
bb28:
  %t121 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t121)
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
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_cc3b7a6e318210b6_464c855cb4a991aa)
  unreachable
bb35:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryBorrowed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l18 = alloca i1
  %l24 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l29 = alloca ptr
  %l37 = alloca ptr
  %l47 = alloca %"compiler/typed:Try"
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  %t95 = alloca { i64, [5 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l4
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb21
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l5, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Try", ptr %t22, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t29 = icmp ne i64 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb12
bb7:
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Try", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_aba8aa6938d7a087_5d05cf2ee38e12b)
  unreachable
bb9:
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Try", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %s1, ptr %t41)
  store ptr %t43, ptr %l24
  br label %bb11
bb11:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = icmp eq ptr %t44, null
  store i1 %t45, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l18, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t49 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t49, ptr %l27
  %t50 = load i32, ptr %l2, !tbaa !23
  store i32 %t50, ptr %l28, !tbaa !23
  store ptr %a0, ptr %l29, !tbaa !29
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Try", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e0d7a6d968754368_2e78c0e3cd1ef5bc)
  unreachable
bb17:
  br label %bb18
bb18:
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Try", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i32, ptr %l2, !tbaa !23
  %t65 = load ptr, ptr %l29, !tbaa !29
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t65, ptr %t62, i32 %t63, %"compiler/source:Span" %a3)
  store ptr %t69, ptr %l37
  br label %bb19
bb19:
  %t70 = load ptr, ptr %l37, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Try", ptr %t71, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Try", ptr %t75, i32 0, i32 2
  %t78 = load i1, ptr %t77, !tbaa !21
  %t79 = load ptr, ptr %l5, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Try", ptr %t79, i32 0, i32 3
  %t82 = load i1, ptr %t81, !tbaa !21
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Try", ptr %t83, i32 0, i32 4
  %t86 = load i1, ptr %t85, !tbaa !21
  %t92 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v2, ptr %v1, ptr %v2, ptr %t70, { i64, ptr } %t74, i1 %t78, i1 %t82, i1 %t86)
  store %"compiler/typed:Try" %t92, ptr %l47
  br label %bb20
bb20:
  %t93 = load %"compiler/typed:Try", ptr %l47
  %t94 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Try" %t93, ptr %t94
  store { i64, [5 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 0
  store i64 14, ptr %t96
  %t97 = load %"compiler/source:Span", ptr %l27
  %t98 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t97, 0
  %t99 = load i32, ptr %l28, !tbaa !23
  %t100 = insertvalue { %"compiler/source:Span", i32, ptr } %t98, i32 %t99, 1
  %t102 = insertvalue { %"compiler/source:Span", i32, ptr } %t100, ptr %t94, 2
  %t103 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t102, ptr %t103
  %t104 = load { i64, [5 x i64] }, ptr %t95
  %t106 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t104, ptr %t106
  call void @__olang_scope_close(ptr %s1)
  store ptr %t106, ptr %rv
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store ptr null, ptr %rv
  br label %ret
bb25:
  call void @__olang_check_failed(ptr @olang_loc_2b61f833cd126364_51d75042885d0038)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCase(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, ptr %a5, i32 %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l19 = alloca ptr
  %l24 = alloca i32
  %l31 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca ptr
  %l44 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l57 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca i32
  %l69 = alloca i64
  %l73 = alloca ptr
  %l78 = alloca %"compiler/typed:Bind"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t101 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a3, ptr %l3
  store ptr %a5, ptr %l5
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l6, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t9 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t7, %"compiler/source:Span" %t8, i32 %t9, i64 0)
  store ptr %t13, ptr %l19
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load ptr, ptr %l19, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t17 = load i32, ptr %l6, !tbaa !23
  %t23 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCaseType(ptr %v0, ptr %v1, ptr %t15, %"compiler/source:Span" %t16, i32 %t17, ptr %a2)
  store i32 %t23, ptr %l24
  br label %bb5
bb5:
  %t24 = load i32, ptr %l24, !tbaa !23
  store i32 %t24, ptr %l8, !tbaa !23
  %t25 = load i32, ptr %l8, !tbaa !23
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t29 = icmp eq i32 %t25, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t31, %"compiler/source:Span" %t32, i32 %t33, i64 0)
  store ptr %t37, ptr %l31
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t38 = load ptr, ptr %l31, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v4, ptr %t39, %"compiler/source:Span" %t40, ptr %t41)
  store ptr %t45, ptr %l35
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l35, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l36, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t48, ptr %l37
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t49, ptr %l38, !tbaa !23
  store i32 44, ptr %l39
  store ptr %t46, ptr %l40, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load %"compiler/source:Span", ptr %l1
  %t53 = load i32, ptr %l8, !tbaa !23
  %t57 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t51, %"compiler/source:Span" %t52, i32 %t53, i64 0)
  store ptr %t57, ptr %l44
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l44, !tbaa !29
  %t59 = load ptr, ptr %l36, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l37
  %t61 = load i32, ptr %l38, !tbaa !23
  %t62 = load i32, ptr %l39, !range !{i32 0, i32 52}
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v4, ptr %v0, ptr %v4, ptr %t59, %"compiler/source:Span" %t60, i32 %t61, i32 %t62, ptr %t63, ptr %t58)
  store ptr %t65, ptr %l46
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l46, !tbaa !29
  store ptr %t66, ptr %l10, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l3, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t67, i32 %t68)
  store { i64, ptr } %t71, ptr %l49
  br label %bb13
bb13:
  %t72 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t72, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t73, ptr %l50
  br label %bb14
bb14:
  %t74 = load i1, ptr %l50, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l52, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t78, ptr %l53
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l1
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t85 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t79, %"compiler/source:Span" %t80, ptr %t81)
  store ptr %t85, ptr %l57
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t86 = load i32, ptr %l8, !tbaa !23
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l53
  %t89 = load ptr, ptr %l57, !tbaa !29
  %t92 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyInstance(ptr %v0, ptr %v2, ptr %v0, ptr %t87, %"compiler/source:Span" %t88, ptr %t89, i32 %t86, i32 0)
  store ptr %t92, ptr %l60
  br label %bb18
bb18:
  %t93 = load ptr, ptr %l60, !tbaa !29
  store ptr %t93, ptr %l11, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l61, !tbaa !29
  %t95 = load i32, ptr %l3, !tbaa !23
  store i32 %t95, ptr %l62, !tbaa !23
  store %"compiler/source:Span" %a4, ptr %l63
  %t97 = load ptr, ptr %l11, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t97)
  store i32 %t100, ptr %l66
  br label %bb19
bb19:
  store { i64, [1 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [1 x i64] }, ptr %t101, i32 0, i32 0
  store i64 4, ptr %t102
  %t103 = load { i64, [1 x i64] }, ptr %t101
  %t104 = load ptr, ptr %l61, !tbaa !29
  %t105 = load i32, ptr %l62, !tbaa !23
  %t106 = load %"compiler/source:Span", ptr %l63
  %t107 = load i32, ptr %l66, !tbaa !23
  %t110 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t104, i32 %t105, %"compiler/source:Span" %t106, i32 %t107, i32 4, { i64, [1 x i64] } %t103)
  store i64 %t110, ptr %l69
  br label %bb20
bb20:
  %t111 = load i64, ptr %l69, !tbaa !24
  store i64 %t111, ptr %l12, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l12, !tbaa !24
  %t114 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v0, ptr %t112, i64 %t113, ptr %t114)
  br label %bb21
bb21:
  store ptr %a7, ptr %l73, !tbaa !29
  %t119 = load i64, ptr %l12, !tbaa !24
  %t121 = trunc i64 %t119 to i32
  %t123 = load ptr, ptr %l11, !tbaa !29
  %t126 = call %"compiler/typed:Bind" @compiler_2ftyped_3aBind_2ector(ptr %v0, ptr %v3, i32 %t121, ptr %t123)
  store %"compiler/typed:Bind" %t126, ptr %l78
  br label %bb22
bb22:
  %t127 = load %"compiler/typed:Bind", ptr %l78
  %t128 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store %"compiler/typed:Bind" %t127, ptr %t128
  %t129 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2ePush_3ccompiler_2ftyped_3aBind_26_3e(ptr %v3, ptr %v3, ptr %t129, ptr %t128)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l10, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t131, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCycle(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca ptr
  %l50 = alloca i1
  %l58 = alloca i64
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  store i1 false, ptr %l3, !tbaa !21
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 16
  store ptr %t5, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l19, !tbaa !24
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l21
  br label %bb3
bb3:
  %t11 = load i64, ptr %l19, !tbaa !24
  %t12 = load i64, ptr %l21, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb33
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l26
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l26, !tbaa !29
  store ptr %t22, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t25 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t30 = icmp eq i64 %t26, %a1
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t32 = load i1, ptr %l3, !tbaa !21
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb13
bb12:
  %t36 = load ptr, ptr %l6, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = icmp slt i64 %t39, 0
  store i1 %t41, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l33, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  br label %bb32
bb15:
  br label %bb16
bb16:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 14
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t49 = getelementptr %"compiler/check:frame", ptr %t47, i32 0, i32 0
  %t50 = load i64, ptr %t49, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t46, i64 %t50)
  store ptr %t53, ptr %l41
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l41, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 1
  %t57 = load { i64, [2 x i64] }, ptr %t56
  %t61 = extractvalue { i64, [2 x i64] } %t57, 0
  %t62 = icmp eq i64 %t61, 6
  br i1 %t62, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = getelementptr %"compiler/check:frame", ptr %t64, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t72 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l2, i64 %t67)
  store i1 %t72, ptr %l50
  br label %bb21
bb21:
  %t73 = load i1, ptr %l50, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t76 = load ptr, ptr %l6, !tbaa !29
  %t78 = getelementptr %"compiler/check:frame", ptr %t76, i32 0, i32 0
  %t79 = load i64, ptr %t78, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t79)
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
  call void @__olang_check_failed(ptr @olang_loc_397e0346551c6f2f_92a3e28505cb4413)
  unreachable
bb31:
  br label %bb32
bb32:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l5, !tbaa !24
  br label %bb2
bb33:
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t87, ptr %l58
  br label %bb34
bb34:
  %t88 = load i64, ptr %l58, !tbaa !24
  %t89 = icmp eq i64 %t88, 0
  br i1 %t89, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb36:
  br label %bb37
bb37:
  %t91 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, ptr %l60
  br label %bb38
bb38:
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t94, ptr %l62
  br label %bb39
bb39:
  %t95 = load i64, ptr %l62, !tbaa !24
  store i64 %t95, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = icmp sgt i64 %t96, %t97
  br i1 %t100, label %bb40, label %bb41
bb40:
  %t102 = load i64, ptr %l12, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb45
bb42:
  %t106 = load i64, ptr %l11, !tbaa !24
  %t107 = load i64, ptr %l10, !tbaa !24
  %t110 = sub i64 %t106, %t107
  %t111 = load i64, ptr %l12, !tbaa !24
  %t114 = add i64 %t110, %t111
  %t116 = sub i64 %t114, 1
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = sdiv i64 %t116, %t117
  store i64 %t120, ptr %l69, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb44
bb44:
  %t122 = load i64, ptr %l69, !tbaa !24
  store i64 %t122, ptr %l66, !tbaa !24
  br label %bb45
bb45:
  %t123 = load i64, ptr %l66, !tbaa !24
  store i64 %t123, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb46
bb46:
  %t124 = load i64, ptr %l14, !tbaa !24
  %t125 = load i64, ptr %l13, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb47, label %bb48
bb47:
  br label %bb52
bb48:
  br label %bb49
bb49:
  %t132 = load i64, ptr %l10, !tbaa !24
  %t133 = load i64, ptr %l14, !tbaa !24
  %t134 = load i64, ptr %l12, !tbaa !24
  %t137 = mul i64 %t133, %t134
  %t140 = add i64 %t132, %t137
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t140)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t145 = load i64, ptr %l14, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l14, !tbaa !24
  br label %bb46
bb52:
  %t149 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aCycle(ptr %v0, ptr %s0, ptr %s0, ptr %t149, ptr %l2, ptr %l9, i64 0)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunwind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l5 = alloca ptr
  %l8 = alloca i64
  %l12 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l15 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l16 = alloca i32
  %l22 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  br label %bb2
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 9
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp sgt i64 %t11, %a1
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb17
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/check:frame", ptr %t17, i32 0, i32 9
  %t21 = call { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__He0d1b669a6d0fad4ef2d0863356e160c(ptr %v0, ptr %t19)
  %t22 = extractvalue { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } %t21, 1
  %t23 = extractvalue { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } %t21, 0
  store i32 %t23, ptr %l16
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb8, label %ok.25, !prof !99
ok.25:
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t22, ptr %l15
  br label %bb7
bb7:
  %t26 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l15
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t26, ptr %l12
  br label %bb10
bb8:
  br label %bb9
bb9:
  br label %ret
bb10:
  %t27 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l12
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t27, ptr %l3
  %t28 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l3, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/check:frame", ptr %t33, i32 0, i32 8
  %t36 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l3, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t40 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H7068c8717e9d582db2941dd2bdd79d55(ptr %v0, ptr %t35, i32 %t37)
  store i1 %t40, ptr %l22
  br label %bb13
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/check:frame", ptr %t41, i32 0, i32 8
  %t44 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l3, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l3, i32 0, i32 1
  %t47 = load i64, ptr %t46, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t43, i32 %t45, i64 %t47)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb2
bb17:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i1
  %l49 = alloca ptr
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l82 = alloca %"compiler/check:atRec"
  %l86 = alloca i1
  %l90 = alloca %"compiler/check:atRec"
  %s6 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
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
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l21
  br label %bb6
bb6:
  %t21 = load i64, ptr %l21, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t23 = load ptr, ptr %l22, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l22, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l23, !tbaa !21
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
  %t44 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v1, ptr %t37, ptr %t41)
  store i64 %t44, ptr %l31
  br label %bb13
bb13:
  %t45 = load i64, ptr %l31, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t47 = load ptr, ptr %l32, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l33, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l33, !tbaa !21
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
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueTemp(ptr %v0, ptr %v1, ptr %t61, ptr %t65)
  store i64 %t68, ptr %l41
  br label %bb20
bb20:
  %t69 = load i64, ptr %l41, !tbaa !24
  store i64 %t69, ptr %rv
  br label %ret
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t71 = load ptr, ptr %l42, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l42, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 6
  store i1 %t77, ptr %l43, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l43, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t81, i32 0, i32 3
  %t83 = load i32, ptr %t82
  store i32 %t83, ptr %l5, !tbaa !23
  br label %bb26
bb25:
  br label %bb49
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t85)
  store ptr %t87, ptr %l49
  br label %bb27
bb27:
  %t88 = load ptr, ptr %l49, !tbaa !29
  %t90 = getelementptr %"compiler/check:frame", ptr %t88, i32 0, i32 0
  %t91 = load i64, ptr %t90, !tbaa !24
  store i64 %t91, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 38
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2eLen_3ccompiler_2fcheck_3aatRec_3e(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l54
  br label %bb28
bb28:
  %t98 = load i64, ptr %l54, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = load i64, ptr %l7, !tbaa !24
  %t103 = icmp sgt i64 %t99, %t100
  br i1 %t103, label %bb29, label %bb30
bb29:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb34
bb31:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = sub i64 %t109, %t110
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = add i64 %t113, %t114
  %t119 = sub i64 %t117, 1
  %t120 = load i64, ptr %l9, !tbaa !24
  %t123 = sdiv i64 %t119, %t120
  store i64 %t123, ptr %l61, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb33
bb33:
  %t125 = load i64, ptr %l61, !tbaa !24
  store i64 %t125, ptr %l58, !tbaa !24
  br label %bb34
bb34:
  %t126 = load i64, ptr %l58, !tbaa !24
  store i64 %t126, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t127 = load i64, ptr %l11, !tbaa !24
  %t128 = load i64, ptr %l10, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb48
bb37:
  br label %bb38
bb38:
  %t135 = load i64, ptr %l7, !tbaa !24
  %t136 = load i64, ptr %l11, !tbaa !24
  %t137 = load i64, ptr %l9, !tbaa !24
  %t140 = mul i64 %t136, %t137
  %t143 = add i64 %t135, %t140
  store i64 %t143, ptr %l12, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/check:Checker", ptr %t145, i32 0, i32 38
  %t148 = load i64, ptr %l12, !tbaa !24
  %t151 = call %"compiler/check:atRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2eAt_3ccompiler_2fcheck_3aatRec_3e(ptr %v0, ptr %s6, ptr %t147, i64 %t148)
  store %"compiler/check:atRec" %t151, ptr %l82
  br label %bb39
bb39:
  %t152 = getelementptr %"compiler/check:atRec", ptr %l82, i32 0, i32 0
  %t153 = load i64, ptr %t152, !tbaa !24
  %t154 = load i64, ptr %l6, !tbaa !24
  %t157 = icmp eq i64 %t153, %t154
  br i1 %t157, label %bb40, label %bb41
bb40:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/check:Checker", ptr %t159, i32 0, i32 38
  %t162 = load i64, ptr %l12, !tbaa !24
  %t165 = call %"compiler/check:atRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2eAt_3ccompiler_2fcheck_3aatRec_3e(ptr %v0, ptr %s6, ptr %t161, i64 %t162)
  store %"compiler/check:atRec" %t165, ptr %l90
  br label %bb42
bb41:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb43
bb42:
  %t166 = getelementptr %"compiler/check:atRec", ptr %l90, i32 0, i32 1
  %t167 = load i64, ptr %t166, !tbaa !24
  %t168 = load i32, ptr %l5, !tbaa !23
  %t170 = sext i32 %t168 to i64
  %t173 = icmp eq i64 %t167, %t170
  store i1 %t173, ptr %l86, !tbaa !21
  br label %bb43
bb43:
  %t175 = load i1, ptr %l86, !tbaa !21
  br i1 %t175, label %bb44, label %bb45
bb44:
  %t176 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  store i64 %t176, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb47
bb47:
  %t178 = load i64, ptr %l11, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l11, !tbaa !24
  br label %bb35
bb48:
  store i64 -1, ptr %rv
  br label %ret
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i64 -1, ptr %rv
  br label %ret
bb53:
  call void @__olang_check_failed(ptr @olang_loc_23a1555ce2701f8c_7c4bd1f4f0b13c68)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca %"compiler/ast:Path"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l2, !tbaa !29
  br label %bb2
bb2:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t20 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l1, i32 %t20)
  br label %bb8
bb8:
  br label %bb23
bb9:
  %t23 = load ptr, ptr %l2, !tbaa !29
  store ptr %t23, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 30}
  %t30 = icmp eq i64 %t28, 14
  store i1 %t30, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t31 = load i1, ptr %l17, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l4, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l5, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t44 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l1, i32 %t44)
  br label %bb15
bb15:
  %t47 = load ptr, ptr %l4, !tbaa !29
  store ptr %t47, ptr %l2, !tbaa !29
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4687f82547dc647_2449c09f4feab02b)
  unreachable
bb21:
  br label %bb22
bb22:
  br label %bb2
bb23:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eRevers_Hae6dce760a5809d9fde696c8bce52839(ptr %s0, ptr %l1)
  br label %bb24
bb24:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t51)
  store %"compiler/source:Span" %t53, ptr %l30
  br label %bb25
bb25:
  %t54 = ptrtoint ptr %v1 to i64
  store i64 %t54, ptr %l31, !tbaa !24
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aPath_2e1
  br i1 %t55, label %bb26, label %bb27
bb26:
  %t57 = call ptr @__olang_region_make(ptr %v1)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l31, !tbaa !24
  br label %bb27
bb27:
  %t59 = load i64, ptr %l31
  %t60 = inttoptr i64 %t59 to ptr
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %t60, ptr %l1)
  store { i64, ptr } %t62, ptr %l34
  br label %bb28
bb28:
  %t63 = load %"compiler/source:Span", ptr %l30
  %t64 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t65 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t63, { i64, ptr } %t64)
  store %"compiler/ast:Path" %t65, ptr %l35
  br label %bb29
bb29:
  %t66 = load %"compiler/ast:Path", ptr %l35
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:Path" %t66, ptr %t67
  call void @__olang_scope_close(ptr %s0)
  store ptr %t67, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2efieldNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l17, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr ptr, ptr %t23, i64 %t20
  %t25 = load ptr, ptr %t24, !tbaa !39
  store ptr %t25, ptr %l7, !tbaa !29
  %t29 = icmp sgt i64 %t17, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb9
bb9:
  store ptr %l2, ptr %l23, !tbaa !29
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Param", ptr %t33, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %t36)
  store { i64, ptr } %t39, ptr %l27
  br label %bb10
bb10:
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l27, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t40, { i64, ptr } %t41)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb2
bb13:
  %t47 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t47, ptr %l31
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v1, ptr %t16, i32 %t17, i1 true)
  br label %bb6
bb6:
  br label %bb20
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredTarget(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  br label %bb13
bb13:
  br label %bb20
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %t39, ptr %t41)
  br label %bb18
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_67e8dc6b8789e10d_d8389ade20250951)
  unreachable
bb20:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:factRead" @compiler_2fcheck_3afactRead_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, { i64, ptr } %a2, i1 %a3, i64 %a4, %"compiler/source:Span" %a5, { i64, ptr } %a6) #0 {
entry:
  %rv = alloca %"compiler/check:factRead"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/check:factRead" undef, i64 %a0, 0
  %t18 = insertvalue %"compiler/check:factRead" %t16, i64 %a1, 1
  %t20 = insertvalue %"compiler/check:factRead" %t18, { i64, ptr } %a2, 2
  %t22 = insertvalue %"compiler/check:factRead" %t20, i1 %a3, 3
  %t24 = insertvalue %"compiler/check:factRead" %t22, i64 %a4, 4
  %t26 = insertvalue %"compiler/check:factRead" %t24, %"compiler/source:Span" %a5, 5
  %t28 = insertvalue %"compiler/check:factRead" %t26, { i64, ptr } %a6, 6
  store %"compiler/check:factRead" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:factRead", ptr %rv
  ret %"compiler/check:factRead" %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
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
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
@__olang_empty_array = external constant [16 x i64]
declare ptr @__olang_scope_of(ptr, ptr) noinline
@olang_2esole_2ecompiler_2ftyped_3aTaskClause_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2ftyped_3aClause_2e1 = weak hidden constant i1 false
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Inc" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Dec" }>, align 8
@.d5 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d6 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Minus" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Inc" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Dec" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'++'" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'--'" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e48 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fcheck_3anullNarrow_2e0 = weak hidden constant i1 false
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@olang_2esole_2ecompiler_2fast_3aPath_2e1 = weak hidden constant i1 false
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
@olang_loc_555450387d5e0d0e_fcfc730d79d494b2 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eassignsAll(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_65e6047404e548b5_230b9180471a5d9 = external constant [0 x i8]
@olang_loc_9781a02214179da0_3bbb534184ea6a24 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f6ac6f37bd028998_7777cf96519f6a94 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyNotTrait(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderRequired(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyOfBuilderTrait(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f1dda0dd7850fdf4_6d8deef1a8ceb3f0 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_b78a810d1a1c5501_e464ed0c2b3f2415 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2epastAway(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ewholeTemp(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_943b293e8fd49f1f_6252e979531a6d2b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_76c98d42818871e4_51853c380fcafc70 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_5b6dfd884f12314a_d55d816e86cc2196 = external constant [0 x i8]
@olang_loc_fdeda218c1a4d1e1_676c59a9a8adaaad = external constant [0 x i8]
@olang_loc_357157b7b16ebf19_d0077534c0a9b60d = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrsChecked(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_975dab88aa27b035_9179ffefefe8db69 = external constant [0 x i8]
@olang_loc_56f34cbe69cc2144_1c22b0ab9b9be498 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a78beee7b0d01a06_c23e8f3cd3901b22 = external constant [0 x i8]
@olang_loc_a9ac84188a5d3ced_8a30b05829c2589 = external constant [0 x i8]
@olang_loc_d343f6dbe85f33a0_61dfe5c423c7544c = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_2ff0d7eb2fd53f26_264ec5bdf8203eea = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2ePush_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:laneNode" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eLen_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eTrunca_Hc8531d0d5535cc9766a27157f9c0b07c(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, %"compiler/source:Span" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7d5384a5030fc995e793b3fe1f57e776(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralRangeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralRange(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLiteralLocal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgUnknownMeant(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNamedArgUnknown(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorInstance(ptr %v0, ptr %a0)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsLibrary(ptr %v0, ptr %a0, { i64, [3 x i64] } %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_761ecce271a1def0_6ef2889dc9577e64 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedFieldsDiffer(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_a7c6fed1dc036a32_295e341353c4274e = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eToArray_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroByArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroName(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc59e30334647acda8fe9b2b02a632dfd(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroTrack(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H77423593ceb02e5da917ccb6013316ec(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eparamOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
@olang_loc_19fb235390dd08bf_74b3a6d5c5264653 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnInDefer(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnOutsideJoin(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ediscardOr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eP_Ha5c233616e2ae02d7fe37742cfaef2c2(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e10ca684bef0956d_f742028d37a3af11 = external constant [0 x i8]
@olang_loc_c3afd3921db70d3f_27f9f6390ccac16b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnLambdaParams(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elambda(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
@olang_loc_da760de622febe3_df78aa298e2a00e7 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
declare i1 @compiler_2fcheck_2ecallLike(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnNotCall(ptr %v0)
@olang_loc_5ca7d448b00003f5_5d17299a767670c1 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eproduced(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2edispatched(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanySpawned(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3, i32 %a4)
@olang_loc_a0a2b29f181c5519_be518ce768fc1fe5 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFallible(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnTryInfallible(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aTaskClause_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eL_H6a486a18542e18ee3475c3237c5a5335(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eA_Hf8c35f4f5353320ac1e6ff0719acdfb7(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ebab815881a318c_398bac8a238c0b80 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloneBinding(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCatchNameInTask(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eToArray_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseHandler(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare %"compiler/typed:TaskClause" @compiler_2ftyped_3aTaskClause_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aTaskClause_26_3e_2e_H70975c58788d810dba7712b4ee87a08c(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e78286934eafcc6f_802ae2752731a35b = external constant [0 x i8]
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aClause_26_3e_2ePush_Hc64f4d0e64077a33423ff9c4e583894f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropTaken(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnTargets(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_3f_26_3e_2eT_Hc52cb714df9676093c851daa15f6f747(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aTaskClause_26_3e_2e_H788addc5d4e2ce71c84413f6a2c1cfed(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Spawn" @compiler_2ftyped_3aSpawn_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, i32 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7151da8c7014d0c8_6aa5246f01d956ac = external constant [0 x i8]
@olang_loc_16d25af731eb828d_f9df92790de43871 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_fe73ad2ef66395ad_6bb388f528f40629 = external constant [0 x i8]
@olang_loc_97840d8df2a94e80_8f65c6ae19d7bb5c = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2efloatBits(i32 %a0, double %a1)
@olang_loc_729de81d3b051823_7dce08f61f50e4bf = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eLen_H4b13e48b0a317e727dbe35330ad8712a(ptr %v0, ptr %a0)
declare %"compiler/check:nullNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eAt__H22e551fb00043bde3f1f8b2c6007f7cb(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2estmtAssigns(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eassignsWhole(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:nullNarrow" @compiler_2fcheck_3anullNarrow_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2eSet_H93968e49180de2bc6256fae5bb61b442(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:nullNarrow" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:narrowed" @compiler_2fcheck_2ecompiler_2fcheck_3anarrowed_2eKilled(%"compiler/check:narrowed" %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eSetAt_Hd90ea4a0afde5538aa0fe5c36a170321(ptr %v0, ptr %a0, i64 %a1, %"compiler/check:narrowed" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f0430e4b284237b0_c6243626a46be64 = external constant [0 x i8]
declare %"compiler/check:errNarrow" @compiler_2fcheck_3aerrNarrow_2ector(ptr %v0, i32 %a0, i32 %a1, i64 %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eSetA_H34a7475a189e9b126454728216b32261(ptr %v0, ptr %a0, i64 %a1, %"compiler/check:errNarrow" %a2)
@olang_loc_28ca8569d2f90b5d_c88a44871853971 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anullNarrow_3e_2ePus_H6cb9d90d121a5c1d081cb085b656665f(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:nullNarrow" %a1)
@olang_loc_8296d6abcbfdbd1e_e4e071066943c4d2 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTraitErrsUnwritten(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
@olang_loc_cc3b7a6e318210b6_464c855cb4a991aa = external constant [0 x i8]
@olang_loc_aba8aa6938d7a087_5d05cf2ee38e12b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e0d7a6d968754368_2e78c0e3cd1ef5bc = external constant [0 x i8]
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
@olang_loc_2b61f833cd126364_51d75042885d0038 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCaseType(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyInstance(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i32 %a4)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare %"compiler/typed:Bind" @compiler_2ftyped_3aBind_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2ePush_3ccompiler_2ftyped_3aBind_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_Hc8503b2b20cde402cc7bde6f68d96fc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_397e0346551c6f2f_92a3e28505cb4413 = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aCycle(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %a0)
declare { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__He0d1b669a6d0fad4ef2d0863356e160c(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H7068c8717e9d582db2941dd2bdd79d55(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2eLen_3ccompiler_2fcheck_3aatRec_3e(ptr %v0, ptr %a0)
declare %"compiler/check:atRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aatRec_3e_2eAt_3ccompiler_2fcheck_3aatRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_23a1555ce2701f8c_7c4bd1f4f0b13c68 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4687f82547dc647_2449c09f4feab02b = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eRevers_Hae6dce760a5809d9fde696c8bce52839(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare void @compiler_2fcheck_2estoredExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_67e8dc6b8789e10d_d8389ade20250951 = external constant [0 x i8]

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
