source_filename = "compiler_check-30.quick.ll"
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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/effects:Effects" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/effects:Facts", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, { i64, ptr }, i1, %"compiler/source:Span", { i64, ptr }, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:landing" = type { i64, i64, %"compiler/source:Span", i32, i64 }
%"compiler/typed:Landings" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/check:TopAssertAsk" = type { i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/check:fixedInit" = type { ptr, i32 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"compiler/effects:Effects"
  %l13 = alloca %"compiler/effects:Effects"
  %l20 = alloca ptr
  %l22 = alloca i1
  %rv = alloca ptr
  %t19 = alloca %"compiler/effects:Effects", align 8
  %t22 = alloca %"compiler/effects:Effects", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 9
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l6, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 14
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l8
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %l8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l10
  br label %bb3
bb2:
  br label %bb10
bb3:
  %t20 = load ptr, ptr %l6, !tbaa !29
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  call void @compiler_2feffects_3aEffects_2ector(ptr %t19, ptr %v0, ptr %v0, ptr %v0, ptr %t20, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21)
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %t19, i64 1760, i1 false)
  br label %bb4
bb4:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aEffects(ptr %t22, ptr %v0, ptr %l11)
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %t22, i64 1760, i1 false)
  br label %bb5
bb5:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 1760, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t24, ptr %l13, i64 1760, i1 false)
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 9
  store ptr %t24, ptr %t27, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 9
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_76d1a478b1ca441c_29a7b400711a77a8)
  unreachable
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 9
  %t38 = load ptr, ptr %t37, !tbaa !29
  store ptr %t38, ptr %l20, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epureAsked(ptr %v0, ptr %t40)
  store i1 %t42, ptr %l22
  br label %bb9
bb9:
  %t43 = load i1, ptr %l22, !tbaa !21
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t45 = getelementptr %"compiler/effects:Effects", ptr %t44, i32 0, i32 2
  store i1 %t43, ptr %t45, !tbaa !21
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 9
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  br i1 %t51, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9dfa51a2458d7b0b_66a421310d598c7)
  unreachable
bb12:
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 9
  %t56 = load ptr, ptr %t55, !tbaa !29
  store ptr %t56, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eGlobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !tbaa !23
  store i32 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyCopies(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  store ptr %t14, ptr %l9, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i32, ptr %l12, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l13
  br label %bb5
bb5:
  %t23 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t25 = trunc i64 19 to i32
  %t26 = icmp eq i32 %t23, %t25
  store i1 %t26, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l6, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l20 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca %"compiler/names:Ref"
  %l30 = alloca i1
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca %"compiler/names:Ref"
  %l44 = alloca i1
  %l51 = alloca { i64, ptr }
  %l56 = alloca i1
  %l63 = alloca i32
  %l68 = alloca i1
  %l71 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l75 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l84 = alloca i64
  %l86 = alloca i64
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
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
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  br label %bb46
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t35)
  store ptr %t37, ptr %l22
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t40 = getelementptr %"compiler/check:frame", ptr %t38, i32 0, i32 2
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t47 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t44, i64 %t41, i32 %t43)
  store %"compiler/names:Ref" %t47, ptr %l26
  br label %bb7
bb7:
  %t48 = load %"compiler/names:Ref", ptr %l26
  store %"compiler/names:Ref" %t48, ptr %l6
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp sgt i64 %t51, 1
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t56 = load i32, ptr %t55, !range !{i32 0, i32 9}
  %t58 = trunc i64 0 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l35, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t69)
  store ptr %t71, ptr %l37
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load ptr, ptr %l35, !tbaa !29
  %t81 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t78, i64 %t75, i32 %t77)
  store %"compiler/names:Ref" %t81, ptr %l41
  br label %bb14
bb14:
  %t82 = load %"compiler/names:Ref", ptr %l41
  store %"compiler/names:Ref" %t82, ptr %l6
  br label %bb15
bb15:
  %t83 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 9}
  %t86 = trunc i64 0 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t93 = icmp eq i64 %t91, 1
  store i1 %t93, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t95 = load i1, ptr %l44, !tbaa !21
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t96 = load i1, ptr %l2, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb20:
  br label %bb25
bb21:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l3
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 0
  %t104 = load i32, ptr %t103, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t98, %"compiler/source:Span" %t99, i32 %t104)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  %t109 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t110 = load i32, ptr %t109, !range !{i32 0, i32 9}
  %t112 = trunc i64 4 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t115 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = icmp sge i64 %t116, 0
  store i1 %t118, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t120 = load i1, ptr %l56, !tbaa !21
  br i1 %t120, label %bb29, label %bb30
bb29:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 1
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t128 = load i64, ptr %t127, !tbaa !24
  %t132 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t124, i64 %t126, i64 %t128)
  store i32 %t132, ptr %l63
  br label %bb31
bb30:
  br label %bb45
bb31:
  %t133 = load i32, ptr %l63, !tbaa !23
  store i32 %t133, ptr %l7, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = load i32, ptr %l7, !tbaa !23
  %t139 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %t137, i32 %t138, { i64, ptr } %t139)
  store i1 %t143, ptr %l68
  br label %bb32
bb32:
  %t144 = load i1, ptr %l68, !tbaa !21
  %t145 = xor i1 %t144, true
  br i1 %t145, label %bb33, label %bb34
bb33:
  %t147 = load i1, ptr %l2, !tbaa !21
  br i1 %t147, label %bb35, label %bb36
bb34:
  br label %bb44
bb35:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l71, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t150)
  store %"compiler/source:Span" %t152, ptr %l73
  br label %bb37
bb36:
  br label %bb43
bb37:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t154, ptr %l75, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t159 = sub i64 %t157, 1
  %t161 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i32, ptr %t162, i64 %t159
  %t164 = load i32, ptr %t163, !tbaa !33
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t153, i32 %t164)
  store { i64, ptr } %t167, ptr %l80
  br label %bb38
bb38:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t172 = load i32, ptr %l7, !tbaa !23
  %t175 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t171, i32 %t172)
  store i64 %t175, ptr %l84
  br label %bb39
bb39:
  %t176 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t178 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t176)
  store i64 %t178, ptr %l86
  br label %bb40
bb40:
  %t179 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t180 = load i64, ptr %l84, !tbaa !24
  %t181 = load i64, ptr %l86, !tbaa !24
  %t182 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v0, { i64, ptr } %t179, i64 %t180, i64 %t181)
  store %"compiler/diagmsg:Msg" %t182, ptr %l87
  br label %bb41
bb41:
  %t183 = load ptr, ptr %l71, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l73
  %t185 = load %"compiler/diagmsg:Msg", ptr %l87
  %t186 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184, %"compiler/diagmsg:Msg" %t185)
  store i64 %t186, ptr %l88
  br label %bb42
bb42:
  br label %bb43
bb43:
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  store i1 true, ptr %rv
  br label %ret
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 true, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_cf2e89857dc93528_274c4670bc5b9eac)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/generic:Origin"
  %l3 = alloca i32
  %l4 = alloca i32
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
  store %"compiler/generic:Origin" %t7, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 23
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 42
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %t19, i64 %a1)
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load %"compiler/generic:Origin", ptr %l2
  %t30 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 51
  store %"compiler/generic:Origin" %t27, ptr %t30
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 23
  store i32 %t32, ptr %t35, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l4, !tbaa !23
  %t40 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 42
  store i32 %t37, ptr %t40, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorVarRules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca i32
  %l41 = alloca { i64, ptr }
  %l45 = alloca %"compiler/source:Span"
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l73 = alloca i1
  %l80 = alloca i64
  %l83 = alloca i64
  %l104 = alloca i1
  %l109 = alloca ptr
  %l111 = alloca { i64, ptr }
  %l113 = alloca %"compiler/source:Span"
  %l116 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l122 = alloca %"compiler/diagmsg:Msg"
  %l123 = alloca i64
  %l128 = alloca i1
  %l133 = alloca i1
  %l146 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l175 = alloca %"compiler/source:Span"
  %l179 = alloca { i64, ptr }
  %l180 = alloca %"compiler/source:Span"
  %l183 = alloca ptr
  %l185 = alloca { i64, ptr }
  %l187 = alloca %"compiler/source:Span"
  %l190 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l207 = alloca %"compiler/diagmsg:Msg"
  %l208 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %wh3 = alloca ptr
  %wc3 = alloca ptr
  %ws3 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:StructBody", ptr %t1, i32 0, i32 5
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TypeDecl", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/ast:StructBody", ptr %t19, i32 0, i32 5
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l31, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 0
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l33, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/ast:TypeParam", ptr %t29, i32 0, i32 0
  %t32 = getelementptr %"compiler/source:Span", ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  store i32 %t33, ptr %l35, !tbaa !23
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeParam", ptr %t34, i32 0, i32 0
  %t37 = getelementptr %"compiler/source:Span", ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  store i32 %t38, ptr %l37, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/ast:TypeParam", ptr %t40, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t39, i32 %t43)
  store { i64, ptr } %t46, ptr %l41
  br label %bb6
bb5:
  br label %bb13
bb6:
  %t47 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t47, 0
  %t50 = trunc i64 %t48 to i32
  %t51 = load i32, ptr %l37, !tbaa !23
  %t53 = add i32 %t51, %t50
  %t54 = load i32, ptr %l35, !tbaa !23
  %t56 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t54, i32 %t53)
  store %"compiler/source:Span" %t56, ptr %l45
  br label %bb7
bb7:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/ast:TypeParam", ptr %t58, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t57, i32 %t61)
  store { i64, ptr } %t64, ptr %l49
  br label %bb8
bb8:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/ast:TypeDecl", ptr %t66, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t65, i32 %t69)
  store { i64, ptr } %t72, ptr %l53
  br label %bb9
bb9:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/ast:TypeParam", ptr %t74, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t73, i32 %t77)
  store { i64, ptr } %t80, ptr %l57
  br label %bb10
bb10:
  %t81 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t84 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorVarOfGeneric(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t81, { i64, ptr } %t82, { i64, ptr } %t83)
  store %"compiler/diagmsg:Msg" %t84, ptr %l58
  br label %bb11
bb11:
  %t85 = load ptr, ptr %l33, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l45
  %t87 = load %"compiler/diagmsg:Msg", ptr %l58
  %t88 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t85, %"compiler/source:Span" %t86, %"compiler/diagmsg:Msg" %t87)
  store i64 %t88, ptr %l59
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb13:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t92 = getelementptr %"compiler/ast:StructBody", ptr %t90, i32 0, i32 5
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l62, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 0
  %t97 = load ptr, ptr %t96, !tbaa !39
  %t99 = getelementptr %"compiler/ast:TypeParam", ptr %t97, i32 0, i32 1
  %t100 = load i32, ptr %t99, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t89, i32 %t100)
  store { i64, ptr } %t103, ptr %l65
  br label %bb14
bb14:
  %t104 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t104, ptr %l4, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s3
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v2, ptr %s3, ptr %t105)
  %t108 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t107, 0, 1
  %t109 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t107, 0, 0
  store ptr %t108, ptr %wh3
  store ptr %t109, ptr %wc3
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t107, ptr %l67
  br label %bb15
bb15:
  %t110 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l67
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t110, ptr %l5
  br label %bb16
bb16:
  %t112 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s3, ptr %l5)
  %t113 = extractvalue { i32, ptr } %t112, 1
  %t114 = extractvalue { i32, ptr } %t112, 0
  store i32 %t114, ptr %l71
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb18, label %ok.116, !prof !99
ok.116:
  store ptr %t113, ptr %l70
  br label %bb17
bb17:
  %t117 = load ptr, ptr %l70, !tbaa !29
  store ptr %t117, ptr %l68, !tbaa !29
  br label %bb20
bb18:
  %t118 = load i32, ptr %l71, !tbaa !23
  %t119 = ashr i32 %t118, 16
  %t121 = icmp eq i32 %t119, 1
  store i1 %t121, ptr %l73, !tbaa !21
  br label %bb19
bb19:
  br label %bb82
bb20:
  %t122 = load ptr, ptr %l68, !tbaa !29
  store ptr %t122, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr %"compiler/ast:VarDecl", ptr %t123, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb21, label %bb22
bb21:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb26
bb23:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l7, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l83, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb25
bb25:
  %t156 = load i64, ptr %l83, !tbaa !24
  store i64 %t156, ptr %l80, !tbaa !24
  br label %bb26
bb26:
  %t157 = load i64, ptr %l80, !tbaa !24
  store i64 %t157, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb27
bb27:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb28, label %bb29
bb28:
  br label %bb80
bb29:
  br label %bb30
bb30:
  %t166 = load i64, ptr %l7, !tbaa !24
  %t167 = load i64, ptr %l11, !tbaa !24
  %t168 = load i64, ptr %l9, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l12, !tbaa !24
  %t176 = load ptr, ptr %l6, !tbaa !29
  %t178 = getelementptr %"compiler/ast:VarDecl", ptr %t176, i32 0, i32 2
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  br i1 %t181, label %bb31, label %bb32
bb31:
  %t183 = load ptr, ptr %l6, !tbaa !29
  %t185 = getelementptr %"compiler/ast:VarDecl", ptr %t183, i32 0, i32 3
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t190 = icmp sgt i64 %t188, 0
  store i1 %t190, ptr %l104, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb33
bb33:
  %t192 = load i1, ptr %l104, !tbaa !21
  br i1 %t192, label %bb34, label %bb35
bb34:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l109, !tbaa !29
  %t194 = load ptr, ptr %l6, !tbaa !29
  %t196 = getelementptr %"compiler/ast:VarDecl", ptr %t194, i32 0, i32 1
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  store { i64, ptr } %t197, ptr %l111, !tbaa !27
  %t198 = load i64, ptr %l12, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr %"compiler/source:Span", ptr %t201, i64 %t198
  %t203 = load %"compiler/source:Span", ptr %t202
  store %"compiler/source:Span" %t203, ptr %l113
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l6, !tbaa !29
  %t207 = getelementptr %"compiler/ast:VarDecl", ptr %t205, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l116, !tbaa !27
  %t209 = load i64, ptr %l12, !tbaa !24
  %t211 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i32, ptr %t212, i64 %t209
  %t214 = load i32, ptr %t213, !tbaa !33
  %t217 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t204, i32 %t214)
  store { i64, ptr } %t217, ptr %l119
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t218 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  %t220 = extractvalue { i64, ptr } %t218, 1
  %t221 = mul i64 %t219, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t221)
  call void @llvm.memcpy.p0.p0.i64(ptr %t222, ptr %t220, i64 %t221, i1 false)
  %t223 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  %t225 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t228 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorGenericInferredField(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t224, { i64, ptr } %t225)
  store %"compiler/diagmsg:Msg" %t228, ptr %l122
  br label %bb37
bb37:
  %t229 = load ptr, ptr %l109, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l113
  %t231 = load %"compiler/diagmsg:Msg", ptr %l122
  %t232 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t229, %"compiler/source:Span" %t230, %"compiler/diagmsg:Msg" %t231)
  store i64 %t232, ptr %l123
  br label %bb38
bb38:
  store i32 0, ptr %ws3
  br label %wend3
wend3.c0:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb39:
  %t233 = load ptr, ptr %l6, !tbaa !29
  %t235 = getelementptr %"compiler/ast:VarDecl", ptr %t233, i32 0, i32 2
  %t236 = load ptr, ptr %t235, !tbaa !29
  store ptr %t236, ptr %l13, !tbaa !29
  %t238 = load ptr, ptr %l13, !tbaa !29
  %t240 = icmp eq ptr %t238, null
  br i1 %t240, label %bb40, label %bb41
bb40:
  %t242 = load ptr, ptr %l6, !tbaa !29
  %t244 = getelementptr %"compiler/ast:VarDecl", ptr %t242, i32 0, i32 3
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t249 = icmp eq i64 %t247, 0
  store i1 %t249, ptr %l128, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb42
bb42:
  %t251 = load i1, ptr %l128, !tbaa !21
  br i1 %t251, label %bb43, label %bb44
bb43:
  %t252 = load ptr, ptr %l2, !tbaa !29
  %t254 = getelementptr %"compiler/ast:StructBody", ptr %t252, i32 0, i32 0
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t259 = icmp sgt i64 %t257, 0
  store i1 %t259, ptr %l133, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb45
bb45:
  %t261 = load i1, ptr %l133, !tbaa !21
  br i1 %t261, label %bb46, label %bb47
bb46:
  %t262 = load ptr, ptr %l2, !tbaa !29
  %t264 = getelementptr %"compiler/ast:StructBody", ptr %t262, i32 0, i32 0
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t267 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t267, 0
  store i64 %t269, ptr %l16, !tbaa !24
  br label %bb48
bb47:
  br label %bb57
bb48:
  %t271 = load i64, ptr %l15, !tbaa !24
  %t272 = load i64, ptr %l16, !tbaa !24
  %t275 = icmp slt i64 %t271, %t272
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb49, label %bb50
bb49:
  br label %bb56
bb50:
  br label %bb51
bb51:
  %t279 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t279, ptr %l146, !tbaa !27
  %t280 = load i64, ptr %l15, !tbaa !24
  %t282 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr ptr, ptr %t283, i64 %t280
  %t285 = load ptr, ptr %t284, !tbaa !39
  store ptr %t285, ptr %l17, !tbaa !29
  %t287 = load ptr, ptr %l17, !tbaa !29
  %t289 = getelementptr %"compiler/ast:Param", ptr %t287, i32 0, i32 1
  %t290 = load i32, ptr %t289, !tbaa !23
  %t291 = load ptr, ptr %l6, !tbaa !29
  %t293 = getelementptr %"compiler/ast:VarDecl", ptr %t291, i32 0, i32 0
  %t294 = load { i64, ptr }, ptr %t293, !tbaa !27
  store { i64, ptr } %t294, ptr %l152, !tbaa !27
  %t295 = load i64, ptr %l12, !tbaa !24
  %t297 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr i32, ptr %t298, i64 %t295
  %t300 = load i32, ptr %t299, !tbaa !33
  %t303 = icmp eq i32 %t290, %t300
  br i1 %t303, label %bb52, label %bb53
bb52:
  %t305 = load ptr, ptr %l17, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Param", ptr %t305, i32 0, i32 2
  %t308 = load ptr, ptr %t307, !tbaa !29
  store ptr %t308, ptr %l13, !tbaa !29
  br label %bb54
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t310 = load i64, ptr %l15, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l15, !tbaa !24
  br label %bb48
bb56:
  br label %bb57
bb57:
  %t314 = load ptr, ptr %l13, !tbaa !29
  %t316 = icmp eq ptr %t314, null
  br i1 %t316, label %bb58, label %bb59
bb58:
  br label %bb79
bb59:
  br label %bb60
bb60:
  %t318 = load ptr, ptr %l2, !tbaa !29
  %t320 = getelementptr %"compiler/ast:StructBody", ptr %t318, i32 0, i32 5
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  store { i64, ptr } %t321, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  store i64 %t325, ptr %l20, !tbaa !24
  br label %bb61
bb61:
  %t327 = load i64, ptr %l19, !tbaa !24
  %t328 = load i64, ptr %l20, !tbaa !24
  %t331 = icmp slt i64 %t327, %t328
  %t333 = xor i1 %t331, true
  br i1 %t333, label %bb62, label %bb63
bb62:
  br label %bb78
bb63:
  br label %bb64
bb64:
  %t335 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t335, ptr %l170, !tbaa !27
  %t336 = load i64, ptr %l19, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 %t336
  %t341 = load ptr, ptr %t340, !tbaa !39
  store ptr %t341, ptr %l21, !tbaa !29
  %t343 = load ptr, ptr %l0, !tbaa !29
  store ptr %t343, ptr %l173, !tbaa !29
  %t344 = load ptr, ptr %l13, !tbaa !29
  %t346 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t344)
  store %"compiler/source:Span" %t346, ptr %l175
  br label %bb65
bb65:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load ptr, ptr %l21, !tbaa !29
  %t350 = getelementptr %"compiler/ast:TypeParam", ptr %t348, i32 0, i32 1
  %t351 = load i32, ptr %t350, !tbaa !23
  %t354 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t347, i32 %t351)
  store { i64, ptr } %t354, ptr %l179
  br label %bb66
bb66:
  %t355 = load ptr, ptr %l173, !tbaa !29
  %t356 = load %"compiler/source:Span", ptr %l175
  %t357 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t358 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIn(ptr %v0, ptr %v0, ptr %t355, %"compiler/source:Span" %t356, { i64, ptr } %t357)
  store %"compiler/source:Span" %t358, ptr %l180
  br label %bb67
bb67:
  %t359 = getelementptr %"compiler/source:Span", ptr %l180, i32 0, i32 0
  %t360 = load i32, ptr %t359, !tbaa !23
  %t362 = icmp slt i32 %t360, 0
  br i1 %t362, label %bb68, label %bb69
bb68:
  br label %bb77
bb69:
  br label %bb70
bb70:
  %t364 = load ptr, ptr %l0, !tbaa !29
  store ptr %t364, ptr %l183, !tbaa !29
  %t365 = load ptr, ptr %l6, !tbaa !29
  %t367 = getelementptr %"compiler/ast:VarDecl", ptr %t365, i32 0, i32 1
  %t368 = load { i64, ptr }, ptr %t367, !tbaa !27
  store { i64, ptr } %t368, ptr %l185, !tbaa !27
  %t369 = load i64, ptr %l12, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr %"compiler/source:Span", ptr %t372, i64 %t369
  %t374 = load %"compiler/source:Span", ptr %t373
  store %"compiler/source:Span" %t374, ptr %l187
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load ptr, ptr %l6, !tbaa !29
  %t378 = getelementptr %"compiler/ast:VarDecl", ptr %t376, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l190, !tbaa !27
  %t380 = load i64, ptr %l12, !tbaa !24
  %t382 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr i32, ptr %t383, i64 %t380
  %t385 = load i32, ptr %t384, !tbaa !33
  %t388 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t375, i32 %t385)
  store { i64, ptr } %t388, ptr %l193
  br label %bb71
bb71:
  %t389 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  store { i64, ptr } %t395, ptr %l194, !tbaa !27
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l21, !tbaa !29
  %t399 = getelementptr %"compiler/ast:TypeParam", ptr %t397, i32 0, i32 1
  %t400 = load i32, ptr %t399, !tbaa !23
  %t403 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t396, i32 %t400)
  store { i64, ptr } %t403, ptr %l198
  br label %bb72
bb72:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l1, !tbaa !29
  %t407 = getelementptr %"compiler/ast:TypeDecl", ptr %t405, i32 0, i32 0
  %t408 = load i32, ptr %t407, !tbaa !23
  %t411 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t404, i32 %t408)
  store { i64, ptr } %t411, ptr %l202
  br label %bb73
bb73:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load ptr, ptr %l21, !tbaa !29
  %t415 = getelementptr %"compiler/ast:TypeParam", ptr %t413, i32 0, i32 1
  %t416 = load i32, ptr %t415, !tbaa !23
  %t419 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t412, i32 %t416)
  store { i64, ptr } %t419, ptr %l206
  br label %bb74
bb74:
  %t420 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t422 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t423 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t424 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorFieldNamesVar(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t420, { i64, ptr } %t421, { i64, ptr } %t422, { i64, ptr } %t423)
  store %"compiler/diagmsg:Msg" %t424, ptr %l207
  br label %bb75
bb75:
  %t425 = load ptr, ptr %l183, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l187
  %t427 = load %"compiler/diagmsg:Msg", ptr %l207
  %t428 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t425, %"compiler/source:Span" %t426, %"compiler/diagmsg:Msg" %t427)
  store i64 %t428, ptr %l208
  br label %bb76
bb76:
  store i32 1, ptr %ws3
  br label %wend3
wend3.c1:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb77:
  %t429 = load i64, ptr %l19, !tbaa !24
  %t431 = add i64 %t429, 1
  store i64 %t431, ptr %l19, !tbaa !24
  br label %bb61
bb78:
  br label %bb79
bb79:
  %t433 = load i64, ptr %l11, !tbaa !24
  %t435 = add i64 %t433, 1
  store i64 %t435, ptr %l11, !tbaa !24
  br label %bb27
bb80:
  br label %bb81
bb81:
  br label %bb16
bb82:
  store i32 2, ptr %ws3
  br label %wend3
wend3.c2:
  call void @__olang_scope_close(ptr %s3)
  br label %ret
wend3:
  %t437 = load ptr, ptr %wh3
  %t438 = load ptr, ptr %wc3
  %t439 = call ptr @llvm.coro.promise(ptr %t437, i32 8, i1 false)
  %t440 = getelementptr { { i32, ptr }, i32 }, ptr %t439, i32 0, i32 1
  store i32 2, ptr %t440
  %t441 = call { i32, ptr } %t438(ptr %t437, ptr null)
  %t442 = load i32, ptr %ws3
  switch i32 %t442, label %wend3.c0 [ i32 1, label %wend3.c1 i32 2, label %wend3.c2 ]
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataAsFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l21 = alloca i64
  %l25 = alloca %"compiler/source:Span"
  %l31 = alloca i32
  %l43 = alloca ptr
  %rv = alloca ptr
  %t54 = alloca { i64, [5 x i64] }, align 8
  %t74 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l5
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l6, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t24, i32 0, i32 3
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l7, !tbaa !29
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t32 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  store i64 %t32, ptr %l21
  br label %bb6
bb6:
  %t34 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp ne i64 %t34, %a4
  br i1 %t36, label %bb7, label %bb8
bb7:
  store ptr null, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t39, ptr %l25
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l3, !tbaa !23
  %t47 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t45, i32 %t46, i64 %t47)
  store i32 %t51, ptr %l31
  br label %bb10
bb10:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l7, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 0
  store i64 1, ptr %t55
  %t56 = load %"compiler/source:Span", ptr %l25
  %t57 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t56, 0
  %t58 = load i32, ptr %l31, !tbaa !23
  %t59 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t57, i32 %t58, 1
  %t61 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t59, i64 %t52, 2
  %t63 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t61, ptr %t53, 3
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t63, ptr %t64
  %t65 = load { i64, [5 x i64] }, ptr %t54
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t65, ptr %t67
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l2
  %t71 = load %"compiler/source:Span", ptr %l2
  %t72 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 0
  store i64 2, ptr %t75
  %t77 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t71, 0
  %t79 = insertvalue { %"compiler/source:Span", i32, ptr } %t77, i32 %t72, 1
  %t81 = insertvalue { %"compiler/source:Span", i32, ptr } %t79, ptr %t67, 2
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t81, ptr %t82
  %t83 = load { i64, [4 x i64] }, ptr %t74
  %t85 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t83, ptr %t85
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t69, %"compiler/source:Span" %t70, ptr %t85)
  store ptr %t89, ptr %l43
  br label %bb11
bb11:
  %t90 = load ptr, ptr %l43, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store ptr null, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_3ca681ba130ec9b7_181dd48ce58d3c73)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffSs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffS(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  store i1 %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryAt(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l34 = alloca { i64, ptr }
  %l37 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l34, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = call i1 @compiler_2fcheck_2eisEntry(ptr %v1, ptr %t57)
  store i1 %t59, ptr %l37
  br label %bb11
bb11:
  %t60 = load i1, ptr %l37, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  %t61 = load i64, ptr %l7, !tbaa !24
  store i64 %t61, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l6, !tbaa !24
  br label %bb7
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l8 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca %"compiler/names:Ref"
  %l43 = alloca i64
  %l46 = alloca i1
  %l49 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 16
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 30}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", ptr }, ptr %t21, i32 0, i32 1
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t25, ptr %t26)
  store i32 %t29, ptr %l19
  br label %bb10
bb10:
  %t30 = load i32, ptr %l19, !tbaa !23
  store i32 %t30, ptr %rv
  br label %ret
bb11:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb12, label %bb13
bb12:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 0
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32 }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l3
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32 }, ptr %t48, i32 0, i32 1
  %t50 = load i32, ptr %t49
  store i32 %t50, ptr %l4, !tbaa !23
  br label %bb16
bb15:
  br label %bb31
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l30, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t59)
  store ptr %t61, ptr %l32
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t64 = getelementptr %"compiler/check:frame", ptr %t62, i32 0, i32 2
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t71 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t68, i64 %t65, i32 %t67)
  store %"compiler/names:Ref" %t71, ptr %l36
  br label %bb18
bb18:
  %t72 = getelementptr %"compiler/names:Ref", ptr %l36, i32 0, i32 0
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 9}
  %t75 = trunc i64 1 to i32
  %t76 = icmp eq i32 %t73, %t75
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb19, label %bb20
bb19:
  store i32 0, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l4, !tbaa !23
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t81, i32 %t82)
  store i64 %t85, ptr %l43
  br label %bb22
bb22:
  %t86 = load i64, ptr %l43, !tbaa !24
  store i64 %t86, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t89 = icmp slt i64 %t87, 0
  br i1 %t89, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb27
bb24:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  store ptr %t96, ptr %l49, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t97, i64 %t98)
  store i32 %t101, ptr %l52
  br label %bb25
bb25:
  %t102 = load ptr, ptr %l49, !tbaa !29
  %t103 = load i32, ptr %l52, !tbaa !23
  %t104 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t104, ptr %l53
  br label %bb26
bb26:
  %t105 = load i1, ptr %l53, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l46, !tbaa !21
  br label %bb27
bb27:
  %t108 = load i1, ptr %l46, !tbaa !21
  br i1 %t108, label %bb28, label %bb29
bb28:
  store i32 0, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t110 = load i32, ptr %l4, !tbaa !23
  store i32 %t110, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i32 0, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1281810c6c9fab58_cb57d964fb88648c)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i64
  %l25 = alloca ptr
  %l29 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca %"compiler/typed:Block"
  %l35 = alloca %"compiler/typed:Item"
  %l37 = alloca %"compiler/typed:Item"
  %l41 = alloca { i64, ptr }
  %l43 = alloca %"compiler/typed:Item"
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l50 = alloca %"compiler/typed:Clause"
  %l53 = alloca %"compiler/source:Span"
  %l56 = alloca i32
  %l61 = alloca %"compiler/typed:Try"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t22 = alloca { i64, [3 x i64] }, align 8
  %t70 = alloca i64
  %t127 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d0, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t6, ptr %l11
  br label %bb1
bb1:
  %t7 = load i32, ptr %l11, !tbaa !23
  store i32 %t7, ptr %l4, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 37
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l14
  br label %bb2
bb2:
  %t13 = load i64, ptr %l14, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 37
  %t17 = load %"compiler/source:Span", ptr %l1
  %t20 = trunc i64 %a3 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 0
  store i64 5, ptr %t23
  %t25 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t17, 0
  %t27 = insertvalue { %"compiler/source:Span", i32, i32 } %t25, i32 0, 1
  %t29 = insertvalue { %"compiler/source:Span", i32, i32 } %t27, i32 %t20, 2
  %t30 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t29, ptr %t30
  %t31 = load { i64, [3 x i64] }, ptr %t22
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t31, ptr %t33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t16, ptr %t33)
  br label %bb3
bb3:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t36)
  store ptr %t38, ptr %l25
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t41 = getelementptr %"compiler/check:frame", ptr %t39, i32 0, i32 7
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = trunc i64 %t42 to i32
  store i32 %t44, ptr %l29, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 37
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store { i64, ptr } %t52, ptr %l33
  br label %bb5
bb5:
  %t53 = load i32, ptr %l29, !tbaa !23
  %t54 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t55 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t53, { i64, ptr } %t54)
  store %"compiler/typed:Block" %t55, ptr %l34
  br label %bb6
bb6:
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t56, ptr %lp6
  %t57 = load %"compiler/typed:Block", ptr %l34
  %t58 = load ptr, ptr %lp6
  store %"compiler/typed:Block" %t57, ptr %t58
  store %"compiler/typed:Item" zeroinitializer, ptr %l35
  %t59 = icmp sgt i64 1, 0
  br i1 %t59, label %bb7, label %bb8
bb7:
  %t61 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v2, i32 0, i64 0)
  store %"compiler/typed:Item" %t61, ptr %l37
  br label %bb9
bb8:
  %t62 = icmp sge i64 1, 0
  br i1 %t62, label %bb10, label %bb11
bb9:
  %t64 = load %"compiler/typed:Item", ptr %l37
  store %"compiler/typed:Item" %t64, ptr %l35
  br label %bb8
bb10:
  %t65 = icmp sle i64 1, 576460752303423487
  br i1 %t65, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_8e26fbb1c5557eef_13e6cc5de085742b)
  unreachable
bb12:
  %t67 = mul i64 1, 16
  %t68 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t67)
  %t69 = load %"compiler/typed:Item", ptr %l35
  store i64 0, ptr %t70
  br label %fill.71
fill.71:
  %t74 = load i64, ptr %t70
  %t75 = icmp slt i64 %t74, 1
  br i1 %t75, label %fillb.72, label %filld.73
fillb.72:
  %t76 = getelementptr %"compiler/typed:Item", ptr %t68, i64 %t74
  store %"compiler/typed:Item" %t69, ptr %t76
  %t77 = add i64 %t74, 1
  store i64 %t77, ptr %t70
  br label %fill.71
filld.73:
  %t78 = insertvalue { i64, ptr } undef, i64 1, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t68, 1
  store { i64, ptr } %t79, ptr %l7, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t81, ptr %l41, !tbaa !27
  %t82 = load i32, ptr %l4, !tbaa !23
  %t84 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s0, i32 %t82, i64 -1)
  store %"compiler/typed:Item" %t84, ptr %l43
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8e26fbb1c5557eef_13e6cc5de085742b)
  unreachable
bb14:
  %t85 = load %"compiler/typed:Item", ptr %l43
  %t86 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr %"compiler/typed:Item", ptr %t87, i64 0
  store %"compiler/typed:Item" %t85, ptr %t88
  %t89 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t89, ptr %l44
  %t90 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t90, ptr %l45, !tbaa !27
  %t91 = load ptr, ptr %lp6
  store ptr %t91, ptr %l46, !tbaa !29
  %t92 = icmp sge i64 0, 0
  br i1 %t92, label %bb15, label %bb16
bb15:
  %t94 = icmp sle i64 0, 1152921504606846975
  br i1 %t94, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_6d702b04e725ae1a_71c02c55b3dfc416)
  unreachable
bb17:
  %t96 = mul i64 0, 8
  %t97 = insertvalue { i64, ptr } undef, i64 0, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t99 = load %"compiler/source:Span", ptr %l44
  %t100 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t101 = load ptr, ptr %l46, !tbaa !29
  %t103 = call %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, %"compiler/source:Span" %t99, { i64, ptr } %t100, i1 false, ptr %t101, { i64, ptr } %t98, i64 -1, i32 0)
  store %"compiler/typed:Clause" %t103, ptr %l50
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_6d702b04e725ae1a_71c02c55b3dfc416)
  unreachable
bb19:
  %t104 = load %"compiler/typed:Clause", ptr %l50
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store %"compiler/typed:Clause" %t104, ptr %t105
  %t107 = insertvalue [1 x ptr] undef, ptr %t105, 0
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 8, i64 8)
  store ptr %t108, ptr %lp8
  %t110 = load ptr, ptr %lp8
  store [1 x ptr] %t107, ptr %t110
  %t111 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t111, ptr %l53
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t115 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t112)
  store i32 %t115, ptr %l56
  br label %bb20
bb20:
  %t116 = load ptr, ptr %l2, !tbaa !29
  %t118 = load ptr, ptr %lp8
  %t120 = insertvalue { i64, ptr } undef, i64 1, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  %t124 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v1, ptr %v2, ptr %v2, ptr %t116, { i64, ptr } %t121, i1 false, i1 true, i1 true)
  store %"compiler/typed:Try" %t124, ptr %l61
  br label %bb21
bb21:
  %t125 = load %"compiler/typed:Try", ptr %l61
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Try" %t125, ptr %t126
  store { i64, [5 x i64] } zeroinitializer, ptr %t127
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 0
  store i64 14, ptr %t128
  %t129 = load %"compiler/source:Span", ptr %l53
  %t130 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t129, 0
  %t131 = load i32, ptr %l56, !tbaa !23
  %t132 = insertvalue { %"compiler/source:Span", i32, ptr } %t130, i32 %t131, 1
  %t134 = insertvalue { %"compiler/source:Span", i32, ptr } %t132, ptr %t126, 2
  %t135 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t134, ptr %t135
  %t136 = load { i64, [5 x i64] }, ptr %t127
  %t138 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t136, ptr %t138
  call void @__olang_scope_close(ptr %s0)
  store ptr %t138, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca ptr
  %l18 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i32
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i32, ptr %l2, !tbaa !23
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, i32 %t4)
  store ptr %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t18, ptr %t19, i32 %t21)
  store ptr %t25, ptr %l18
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l18, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t31 = icmp eq i32 %t27, %t28
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l4, !tbaa !29
  store ptr %t33, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load i32, ptr %l2, !tbaa !23
  store i32 %t37, ptr %l25, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t42 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  store %"compiler/source:Span" %t42, ptr %l28
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i32, ptr %l25, !tbaa !23
  %t46 = load %"compiler/source:Span", ptr %l28
  %t47 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t43, ptr %t44, i32 %t45, %"compiler/source:Span" %t46)
  store ptr %t47, ptr %l29
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l29, !tbaa !29
  store ptr %t48, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforRange(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l6 = alloca i32
  %lp7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"compiler/check:litv"
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca %"compiler/check:litv"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i32
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca { i64, ptr }
  %l67 = alloca %"compiler/check:litv"
  %l69 = alloca i1
  %l71 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %l79 = alloca ptr
  %l84 = alloca ptr
  %l86 = alloca %"compiler/source:Span"
  %l87 = alloca ptr
  %l90 = alloca i32
  %l93 = alloca i1
  %l94 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i1
  %l100 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca { i64, ptr }
  %l109 = alloca %"compiler/diagmsg:Msg"
  %l110 = alloca i64
  %l115 = alloca i1
  %l116 = alloca ptr
  %l119 = alloca i32
  %l120 = alloca i1
  %l123 = alloca i32
  %l130 = alloca { i64, ptr }
  %l135 = alloca i32
  %l139 = alloca ptr
  %l140 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l147 = alloca ptr
  %l148 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i1
  %l157 = alloca { i64, ptr }
  %l160 = alloca %"compiler/check:litv"
  %l162 = alloca i1
  %l165 = alloca i1
  %l168 = alloca i1
  %l171 = alloca ptr
  %l172 = alloca { i64, ptr }
  %l174 = alloca %"compiler/source:Span"
  %l175 = alloca %"compiler/diagmsg:Msg"
  %l176 = alloca i64
  %l180 = alloca i64
  %l186 = alloca i64
  %l189 = alloca i64
  %l207 = alloca { i64, ptr }
  %l212 = alloca ptr
  %l213 = alloca ptr
  %l214 = alloca { i64, ptr }
  %l216 = alloca ptr
  %l218 = alloca { i64, ptr }
  %l222 = alloca %"compiler/check:litv"
  %l224 = alloca ptr
  %l226 = alloca ptr
  %l227 = alloca ptr
  %l228 = alloca { i64, ptr }
  %l233 = alloca ptr
  %l234 = alloca i32
  %l235 = alloca { i64, ptr }
  %l238 = alloca %"compiler/source:Span"
  %l239 = alloca ptr
  %l245 = alloca { i64, ptr }
  %l249 = alloca ptr
  %l253 = alloca ptr
  %l257 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l268 = alloca { i64, ptr }
  %l273 = alloca i64
  %l285 = alloca i64
  %l286 = alloca ptr
  %l287 = alloca %"compiler/source:Span"
  %l290 = alloca i32
  %l299 = alloca i64
  %l308 = alloca ptr
  %l309 = alloca %"compiler/source:Span"
  %l310 = alloca i32
  %l311 = alloca i32
  %l315 = alloca ptr
  %l319 = alloca ptr
  %l321 = alloca ptr
  %l322 = alloca ptr
  %l323 = alloca %"compiler/source:Span"
  %l324 = alloca i32
  %l325 = alloca i32
  %l326 = alloca ptr
  %l327 = alloca %"compiler/source:Span"
  %l328 = alloca i32
  %l329 = alloca i32
  %l330 = alloca ptr
  %l334 = alloca ptr
  %l336 = alloca ptr
  %l340 = alloca ptr
  %l342 = alloca ptr
  %l343 = alloca ptr
  %l344 = alloca %"compiler/source:Span"
  %l345 = alloca i32
  %l346 = alloca i32
  %l350 = alloca ptr
  %l354 = alloca ptr
  %l356 = alloca ptr
  %l357 = alloca ptr
  %l358 = alloca %"compiler/source:Span"
  %l359 = alloca i32
  %l360 = alloca i32
  %l364 = alloca ptr
  %l368 = alloca ptr
  %l370 = alloca ptr
  %l371 = alloca %"compiler/source:Span"
  %l372 = alloca i32
  %l373 = alloca ptr
  %l374 = alloca ptr
  %l375 = alloca %"compiler/source:Span"
  %l376 = alloca i32
  %l377 = alloca i32
  %l378 = alloca ptr
  %l382 = alloca ptr
  %l384 = alloca ptr
  %l385 = alloca ptr
  %l389 = alloca ptr
  %l390 = alloca %"compiler/typed:Cond"
  %l394 = alloca %"compiler/source:Span"
  %l395 = alloca i32
  %l396 = alloca ptr
  %l398 = alloca ptr
  %l402 = alloca ptr
  %l403 = alloca %"compiler/typed:Cond"
  %l410 = alloca i64
  %l422 = alloca i64
  %l423 = alloca ptr
  %l424 = alloca %"compiler/source:Span"
  %l427 = alloca i32
  %l431 = alloca ptr
  %l438 = alloca i64
  %l447 = alloca i64
  %l450 = alloca i64
  %l469 = alloca { i64, ptr }
  %l472 = alloca i32
  %l475 = alloca i64
  %l480 = alloca i64
  %l487 = alloca i64
  %l492 = alloca i64
  %l498 = alloca i64
  %l502 = alloca ptr
  %l506 = alloca i64
  %l528 = alloca ptr
  %s21 = alloca %olang.scope
  %rv = alloca ptr
  %t469 = alloca { i64, [3 x i64] }, align 8
  %t502 = alloca { i64, [3 x i64] }, align 8
  %t531 = alloca { i64, [3 x i64] }, align 8
  %t697 = alloca { i64, [5 x i64] }, align 8
  %t728 = alloca { i64, [5 x i64] }, align 8
  %t756 = alloca { i64, [3 x i64] }, align 8
  %t791 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t1, ptr %l6, !tbaa !23
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l53
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t4, ptr %lp7
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t6 = load ptr, ptr %lp7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t7, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = load i64, ptr %l10, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb48
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t21, ptr %l61, !tbaa !27
  %t22 = load i64, ptr %l9, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l11, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l11, !tbaa !29
  %t34 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v2, ptr %t29, ptr %t30)
  store %"compiler/check:litv" %t34, ptr %l67
  br label %bb6
bb6:
  %t35 = load %"compiler/check:litv", ptr %l67
  store %"compiler/check:litv" %t35, ptr %l12
  %t36 = getelementptr %"compiler/check:litv", ptr %l12, i32 0, i32 0
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = getelementptr %"compiler/check:litv", ptr %l12, i32 0, i32 1
  %t40 = load i1, ptr %t39, !tbaa !21
  store i1 %t40, ptr %l69, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb9
bb9:
  %t42 = load i1, ptr %l69, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l71, !tbaa !29
  %t44 = load ptr, ptr %l11, !tbaa !29
  %t46 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t44)
  store %"compiler/source:Span" %t46, ptr %l73
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t47 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRangeNotInt(ptr %v0, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t47, ptr %l74
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l71, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l73
  %t50 = load %"compiler/diagmsg:Msg", ptr %l74
  %t51 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t48, %"compiler/source:Span" %t49, %"compiler/diagmsg:Msg" %t50)
  store i64 %t51, ptr %l75
  br label %bb14
bb14:
  store ptr null, ptr %rv
  br label %ret
bb15:
  %t53 = getelementptr %"compiler/check:litv", ptr %l12, i32 0, i32 0
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb16, label %bb17
bb16:
  %t56 = load ptr, ptr %lp7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v0, ptr %t56, ptr null)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb47
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l79, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l11, !tbaa !29
  %t62 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t59, ptr %t60, i32 %t62)
  store ptr %t66, ptr %l84
  br label %bb20
bb20:
  %t67 = load ptr, ptr %l11, !tbaa !29
  %t69 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t67)
  store %"compiler/source:Span" %t69, ptr %l86
  br label %bb21
bb21:
  %t70 = load ptr, ptr %l79, !tbaa !29
  %t71 = load ptr, ptr %l84, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l86
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t70, ptr %t71, %"compiler/source:Span" %t72)
  store ptr %t73, ptr %l87
  br label %bb22
bb22:
  %t74 = load ptr, ptr %l87, !tbaa !29
  store ptr %t74, ptr %l13, !tbaa !29
  %t75 = load ptr, ptr %l13, !tbaa !29
  %t78 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t75)
  store i32 %t78, ptr %l90
  br label %bb23
bb23:
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t80 = load i32, ptr %l90, !tbaa !23
  %t82 = icmp ne i32 %t80, %t79
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l94, !tbaa !29
  %t85 = load ptr, ptr %l13, !tbaa !29
  %t88 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t85)
  store i32 %t88, ptr %l97
  br label %bb26
bb25:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb28
bb26:
  %t89 = load ptr, ptr %l94, !tbaa !29
  %t90 = load i32, ptr %l97, !tbaa !23
  %t91 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t89, i32 %t90)
  store i1 %t91, ptr %l98
  br label %bb27
bb27:
  %t92 = load i1, ptr %l98, !tbaa !21
  %t93 = xor i1 %t92, true
  store i1 %t93, ptr %l93, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l93, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l100, !tbaa !29
  %t97 = load ptr, ptr %l11, !tbaa !29
  %t99 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t97)
  store %"compiler/source:Span" %t99, ptr %l102
  br label %bb31
bb30:
  br label %bb36
bb31:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l103, !tbaa !29
  %t101 = load ptr, ptr %l13, !tbaa !29
  %t104 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t101)
  store i32 %t104, ptr %l106
  br label %bb32
bb32:
  %t105 = load ptr, ptr %l103, !tbaa !29
  %t106 = load i32, ptr %l106, !tbaa !23
  %t107 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t105, i32 %t106)
  store { i64, ptr } %t107, ptr %l107
  br label %bb33
bb33:
  %t108 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  %t110 = extractvalue { i64, ptr } %t108, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRangeNotInt(ptr %v0, ptr %v0, { i64, ptr } %t114)
  store %"compiler/diagmsg:Msg" %t116, ptr %l109
  br label %bb34
bb34:
  %t117 = load ptr, ptr %l100, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l102
  %t119 = load %"compiler/diagmsg:Msg", ptr %l109
  %t120 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t117, %"compiler/source:Span" %t118, %"compiler/diagmsg:Msg" %t119)
  store i64 %t120, ptr %l110
  br label %bb35
bb35:
  store ptr null, ptr %rv
  br label %ret
bb36:
  %t122 = load i32, ptr %l6, !tbaa !23
  %t123 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t126 = icmp eq i32 %t122, %t123
  br i1 %t126, label %bb37, label %bb38
bb37:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l116, !tbaa !29
  %t129 = load ptr, ptr %l13, !tbaa !29
  %t132 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t129)
  store i32 %t132, ptr %l119
  br label %bb39
bb38:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb41
bb39:
  %t133 = load ptr, ptr %l116, !tbaa !29
  %t134 = load i32, ptr %l119, !tbaa !23
  %t135 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t133, i32 %t134)
  store i1 %t135, ptr %l120
  br label %bb40
bb40:
  %t136 = load i1, ptr %l120, !tbaa !21
  store i1 %t136, ptr %l115, !tbaa !21
  br label %bb41
bb41:
  %t137 = load i1, ptr %l115, !tbaa !21
  br i1 %t137, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l13, !tbaa !29
  %t141 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t138)
  store i32 %t141, ptr %l123
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t142 = load i32, ptr %l123, !tbaa !23
  store i32 %t142, ptr %l6, !tbaa !23
  br label %bb45
bb45:
  %t143 = load ptr, ptr %lp7
  %t144 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v0, ptr %t143, ptr %t144)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t148 = load i64, ptr %l9, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l9, !tbaa !24
  br label %bb2
bb48:
  %t152 = load ptr, ptr %lp7
  %t154 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eToA_H5977ae182b3677451856c63d387aca03(ptr %v0, ptr %v0, ptr %t152)
  store { i64, ptr } %t154, ptr %l130
  br label %bb49
bb49:
  %t155 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t155, ptr %l14, !tbaa !27
  %t156 = load i32, ptr %l6, !tbaa !23
  %t157 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t160 = icmp eq i32 %t156, %t157
  br i1 %t160, label %bb50, label %bb51
bb50:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t162)
  store i32 %t164, ptr %l135
  br label %bb52
bb51:
  br label %bb68
bb52:
  %t165 = load i32, ptr %l135, !tbaa !23
  store i32 %t165, ptr %l6, !tbaa !23
  %t166 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t170 = icmp eq i64 %t168, 1
  br i1 %t170, label %bb53, label %bb54
bb53:
  %t172 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t172, ptr %l140, !tbaa !27
  %t173 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr ptr, ptr %t174, i64 0
  %t176 = load ptr, ptr %t175, !tbaa !39
  store ptr %t176, ptr %l139, !tbaa !29
  br label %bb55
bb54:
  %t178 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t178, ptr %l142, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr ptr, ptr %t180, i64 1
  %t182 = load ptr, ptr %t181, !tbaa !39
  store ptr %t182, ptr %l139, !tbaa !29
  br label %bb55
bb55:
  %t184 = load ptr, ptr %l139, !tbaa !29
  store ptr %t184, ptr %l15, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l144, !tbaa !29
  %t186 = load ptr, ptr %l15, !tbaa !29
  %t188 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t186)
  store %"compiler/source:Span" %t188, ptr %l146
  br label %bb56
bb56:
  %t189 = load %"compiler/source:Span", ptr %l146
  %t190 = load ptr, ptr %l144, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t190, i32 0, i32 34
  store %"compiler/source:Span" %t189, ptr %t191
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l147, !tbaa !29
  %t193 = load ptr, ptr %l15, !tbaa !29
  store ptr %t193, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t194 = load ptr, ptr %l149, !tbaa !29
  %t195 = icmp ne ptr %t194, null
  br i1 %t195, label %bb57, label %bb58
bb57:
  %t197 = load ptr, ptr %l149, !tbaa !29
  %t198 = load i64, ptr %t197, !range !{i64 0, i64 30}
  %t200 = icmp eq i64 %t198, 1
  store i1 %t200, ptr %l150, !tbaa !21
  br label %bb58
bb58:
  %t201 = load i1, ptr %l150, !tbaa !21
  br i1 %t201, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i1 true, ptr %l148, !tbaa !21
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_b274f9b5a1d6f283_4bd77c9dbb9826e7)
  unreachable
bb67:
  %t202 = load i1, ptr %l148, !tbaa !21
  %t203 = load ptr, ptr %l147, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t203, i32 0, i32 35
  store i1 %t202, ptr %t204, !tbaa !21
  br label %bb68
bb68:
  %t205 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t209 = icmp sgt i64 %t207, 2
  br i1 %t209, label %bb69, label %bb70
bb69:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t212, ptr %l157, !tbaa !27
  %t213 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr ptr, ptr %t214, i64 2
  %t216 = load ptr, ptr %t215, !tbaa !39
  %t220 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v2, ptr %t211, ptr %t216)
  store %"compiler/check:litv" %t220, ptr %l160
  br label %bb71
bb70:
  br label %bb87
bb71:
  %t221 = load %"compiler/check:litv", ptr %l160
  store %"compiler/check:litv" %t221, ptr %l16
  %t222 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 0
  %t223 = load i1, ptr %t222, !tbaa !21
  br i1 %t223, label %bb72, label %bb73
bb72:
  %t225 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 1
  %t226 = load i1, ptr %t225, !tbaa !21
  %t228 = xor i1 %t226, true
  store i1 %t228, ptr %l162, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb74
bb74:
  %t230 = load i1, ptr %l162, !tbaa !21
  br i1 %t230, label %bb75, label %bb76
bb75:
  %t231 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 2
  %t232 = load i1, ptr %t231, !tbaa !21
  %t234 = xor i1 %t232, true
  store i1 %t234, ptr %l165, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb77
bb77:
  %t236 = load i1, ptr %l165, !tbaa !21
  br i1 %t236, label %bb78, label %bb79
bb78:
  %t237 = getelementptr %"compiler/check:litv", ptr %l16, i32 0, i32 3
  %t238 = load i64, ptr %t237, !tbaa !24
  %t240 = icmp sle i64 %t238, 0
  store i1 %t240, ptr %l168, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb80
bb80:
  %t242 = load i1, ptr %l168, !tbaa !21
  br i1 %t242, label %bb81, label %bb82
bb81:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l171, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t244, ptr %l172, !tbaa !27
  %t245 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr ptr, ptr %t246, i64 2
  %t248 = load ptr, ptr %t247, !tbaa !39
  %t250 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t248)
  store %"compiler/source:Span" %t250, ptr %l174
  br label %bb83
bb82:
  br label %bb86
bb83:
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRangeStep(ptr %v0)
  store %"compiler/diagmsg:Msg" %t251, ptr %l175
  br label %bb84
bb84:
  %t252 = load ptr, ptr %l171, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l174
  %t254 = load %"compiler/diagmsg:Msg", ptr %l175
  %t255 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t252, %"compiler/source:Span" %t253, %"compiler/diagmsg:Msg" %t254)
  store i64 %t255, ptr %l176
  br label %bb85
bb85:
  store ptr null, ptr %rv
  br label %ret
bb86:
  br label %bb87
bb87:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/check:Checker", ptr %t257, i32 0, i32 36
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t259)
  store i64 %t261, ptr %l180
  br label %bb88
bb88:
  %t262 = load i64, ptr %l180, !tbaa !24
  store i64 %t262, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  %t263 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t263, 0
  store i64 %t265, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t267 = load i64, ptr %l19, !tbaa !24
  %t268 = load i64, ptr %l18, !tbaa !24
  %t271 = icmp sgt i64 %t267, %t268
  br i1 %t271, label %bb89, label %bb90
bb89:
  %t273 = load i64, ptr %l20, !tbaa !24
  %t275 = icmp sgt i64 %t273, 0
  br i1 %t275, label %bb91, label %bb92
bb90:
  store i64 0, ptr %l186, !tbaa !24
  br label %bb94
bb91:
  %t277 = load i64, ptr %l19, !tbaa !24
  %t278 = load i64, ptr %l18, !tbaa !24
  %t281 = sub i64 %t277, %t278
  %t282 = load i64, ptr %l20, !tbaa !24
  %t285 = add i64 %t281, %t282
  %t287 = sub i64 %t285, 1
  %t288 = load i64, ptr %l20, !tbaa !24
  %t291 = sdiv i64 %t287, %t288
  store i64 %t291, ptr %l189, !tbaa !24
  br label %bb93
bb92:
  store i64 0, ptr %l189, !tbaa !24
  br label %bb93
bb93:
  %t293 = load i64, ptr %l189, !tbaa !24
  store i64 %t293, ptr %l186, !tbaa !24
  br label %bb94
bb94:
  %t294 = load i64, ptr %l186, !tbaa !24
  store i64 %t294, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb95
bb95:
  %t295 = load i64, ptr %l22, !tbaa !24
  %t296 = load i64, ptr %l21, !tbaa !24
  %t299 = icmp slt i64 %t295, %t296
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb96, label %bb97
bb96:
  br label %bb112
bb97:
  br label %bb98
bb98:
  %t303 = load i64, ptr %l18, !tbaa !24
  %t304 = load i64, ptr %l22, !tbaa !24
  %t305 = load i64, ptr %l20, !tbaa !24
  %t308 = mul i64 %t304, %t305
  %t311 = add i64 %t303, %t308
  store i64 %t311, ptr %l23, !tbaa !24
  %t313 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t313, ptr %l207, !tbaa !27
  %t314 = load i64, ptr %l23, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr ptr, ptr %t317, i64 %t314
  %t319 = load ptr, ptr %t318, !tbaa !39
  %t321 = icmp eq ptr %t319, null
  br i1 %t321, label %bb99, label %bb100
bb99:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/check:Checker", ptr %t323, i32 0, i32 36
  store ptr %t325, ptr %l212, !tbaa !29
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l213, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t327, ptr %l214, !tbaa !27
  %t328 = load i64, ptr %l23, !tbaa !24
  %t330 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr ptr, ptr %t331, i64 %t328
  %t333 = load ptr, ptr %t332, !tbaa !39
  store ptr %t333, ptr %l216, !tbaa !29
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t335, ptr %l218, !tbaa !27
  %t336 = load i64, ptr %l23, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l218, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 %t336
  %t341 = load ptr, ptr %t340, !tbaa !39
  %t345 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v2, ptr %t334, ptr %t341)
  store %"compiler/check:litv" %t345, ptr %l222
  br label %bb101
bb100:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 36
  store ptr %t348, ptr %l226, !tbaa !29
  %t349 = load ptr, ptr %l0, !tbaa !29
  store ptr %t349, ptr %l227, !tbaa !29
  %t350 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t350, ptr %l228, !tbaa !27
  %t351 = load i64, ptr %l23, !tbaa !24
  %t353 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr ptr, ptr %t354, i64 %t351
  %t356 = load ptr, ptr %t355, !tbaa !39
  store ptr %t356, ptr %l24, !tbaa !29
  %t358 = load ptr, ptr %l24, !tbaa !29
  %t360 = icmp eq ptr %t358, null
  br i1 %t360, label %bb104, label %bb105
bb101:
  %t362 = load i32, ptr %l6, !tbaa !23
  %t363 = load ptr, ptr %l213, !tbaa !29
  %t364 = load ptr, ptr %l216, !tbaa !29
  %t365 = load %"compiler/check:litv", ptr %l222
  %t367 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v2, ptr %v0, ptr %t363, ptr %t364, %"compiler/check:litv" %t365, i32 %t362)
  store ptr %t367, ptr %l224
  br label %bb102
bb102:
  %t368 = load ptr, ptr %l212, !tbaa !29
  %t369 = load ptr, ptr %l224, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t368, ptr %t369)
  br label %bb103
bb103:
  br label %bb110
bb104:
  call void @__olang_check_failed(ptr @olang_loc_81853a8b5abe7edb_5bbff5245f4bcfbf)
  unreachable
bb105:
  br label %bb106
bb106:
  %t370 = load ptr, ptr %l24, !tbaa !29
  store ptr %t370, ptr %l233, !tbaa !29
  %t371 = load i32, ptr %l6, !tbaa !23
  store i32 %t371, ptr %l234, !tbaa !23
  %t372 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t372, ptr %l235, !tbaa !27
  %t373 = load i64, ptr %l23, !tbaa !24
  %t375 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !27
  %t377 = getelementptr ptr, ptr %t376, i64 %t373
  %t378 = load ptr, ptr %t377, !tbaa !39
  %t380 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t378)
  store %"compiler/source:Span" %t380, ptr %l238
  br label %bb107
bb107:
  %t381 = load ptr, ptr %l227, !tbaa !29
  %t382 = load ptr, ptr %l233, !tbaa !29
  %t383 = load i32, ptr %l234, !tbaa !23
  %t384 = load %"compiler/source:Span", ptr %l238
  %t385 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t381, ptr %t382, i32 %t383, %"compiler/source:Span" %t384)
  store ptr %t385, ptr %l239
  br label %bb108
bb108:
  %t386 = load ptr, ptr %l226, !tbaa !29
  %t387 = load ptr, ptr %l239, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t386, ptr %t387)
  br label %bb109
bb109:
  br label %bb110
bb110:
  br label %bb111
bb111:
  %t388 = load i64, ptr %l22, !tbaa !24
  %t390 = add i64 %t388, 1
  store i64 %t390, ptr %l22, !tbaa !24
  br label %bb95
bb112:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/check:Checker", ptr %t392, i32 0, i32 36
  %t395 = load i64, ptr %l17, !tbaa !24
  %t398 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t394, i64 %t395)
  store { i64, ptr } %t398, ptr %l245
  br label %bb113
bb113:
  %t399 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t399, ptr %l25, !tbaa !27
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load %"compiler/source:Span", ptr %l1
  %t402 = load i32, ptr %l6, !tbaa !23
  %t406 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t400, %"compiler/source:Span" %t401, i32 %t402, i64 0)
  store ptr %t406, ptr %l249
  br label %bb114
bb114:
  %t407 = load ptr, ptr %l249, !tbaa !29
  store ptr %t407, ptr %l26, !tbaa !29
  store ptr null, ptr %l27, !tbaa !29
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load %"compiler/source:Span", ptr %l1
  %t410 = load i32, ptr %l6, !tbaa !23
  %t414 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t408, %"compiler/source:Span" %t409, i32 %t410, i64 1)
  store ptr %t414, ptr %l253
  br label %bb115
bb115:
  %t415 = load ptr, ptr %l253, !tbaa !29
  store ptr %t415, ptr %l28, !tbaa !29
  %t416 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t416, 0
  %t420 = icmp eq i64 %t418, 1
  br i1 %t420, label %bb116, label %bb117
bb116:
  %t422 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t422, ptr %l257, !tbaa !27
  %t423 = getelementptr { i64, ptr }, ptr %l257, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !27
  %t425 = getelementptr ptr, ptr %t424, i64 0
  %t426 = load ptr, ptr %t425, !tbaa !39
  store ptr %t426, ptr %l27, !tbaa !29
  br label %bb121
bb117:
  %t429 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t429, ptr %l260, !tbaa !27
  %t430 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = getelementptr ptr, ptr %t431, i64 0
  %t433 = load ptr, ptr %t432, !tbaa !39
  store ptr %t433, ptr %l26, !tbaa !29
  %t435 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t435, ptr %l262, !tbaa !27
  %t436 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = getelementptr ptr, ptr %t437, i64 1
  %t439 = load ptr, ptr %t438, !tbaa !39
  store ptr %t439, ptr %l27, !tbaa !29
  %t442 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t442, 0
  %t446 = icmp sgt i64 %t444, 2
  br i1 %t446, label %bb118, label %bb119
bb118:
  %t448 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t448, ptr %l268, !tbaa !27
  %t449 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !27
  %t451 = getelementptr ptr, ptr %t450, i64 2
  %t452 = load ptr, ptr %t451, !tbaa !39
  store ptr %t452, ptr %l28, !tbaa !29
  br label %bb120
bb119:
  br label %bb120
bb120:
  br label %bb121
bb121:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load %"compiler/source:Span", ptr %l1
  %t456 = load i32, ptr %l6, !tbaa !23
  %t460 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t454, %"compiler/source:Span" %t455, i32 %t456)
  store i64 %t460, ptr %l273
  br label %bb122
bb122:
  %t461 = load i64, ptr %l273, !tbaa !24
  store i64 %t461, ptr %l29, !tbaa !24
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load %"compiler/source:Span", ptr %l1
  %t464 = load i64, ptr %l29, !tbaa !24
  %t466 = trunc i64 %t464 to i32
  %t468 = load ptr, ptr %l26, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t469
  %t470 = getelementptr { i64, [3 x i64] }, ptr %t469, i32 0, i32 0
  store i64 0, ptr %t470
  %t472 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t463, 0
  %t474 = insertvalue { %"compiler/source:Span", i32, ptr } %t472, i32 %t466, 1
  %t476 = insertvalue { %"compiler/source:Span", i32, ptr } %t474, ptr %t468, 2
  %t477 = getelementptr { i64, [3 x i64] }, ptr %t469, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t476, ptr %t477
  %t478 = load { i64, [3 x i64] }, ptr %t469
  %t480 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t478, ptr %t480
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t462, ptr %t480)
  br label %bb123
bb123:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load %"compiler/source:Span", ptr %l1
  %t485 = load i32, ptr %l6, !tbaa !23
  %t489 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t483, %"compiler/source:Span" %t484, i32 %t485)
  store i64 %t489, ptr %l285
  br label %bb124
bb124:
  %t490 = load i64, ptr %l285, !tbaa !24
  store i64 %t490, ptr %l30, !tbaa !24
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l286, !tbaa !29
  %t492 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t492, ptr %l287
  %t493 = load i64, ptr %l30, !tbaa !24
  %t495 = trunc i64 %t493 to i32
  store i32 %t495, ptr %l290, !tbaa !23
  %t497 = load ptr, ptr %l27, !tbaa !29
  %t499 = icmp eq ptr %t497, null
  br i1 %t499, label %bb125, label %bb126
bb125:
  call void @__olang_check_failed(ptr @olang_loc_e4731602e9e5e1a_1dd19577095c0d0e)
  unreachable
bb126:
  br label %bb127
bb127:
  %t501 = load ptr, ptr %l27, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t502
  %t503 = getelementptr { i64, [3 x i64] }, ptr %t502, i32 0, i32 0
  store i64 0, ptr %t503
  %t504 = load %"compiler/source:Span", ptr %l287
  %t505 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t504, 0
  %t506 = load i32, ptr %l290, !tbaa !23
  %t507 = insertvalue { %"compiler/source:Span", i32, ptr } %t505, i32 %t506, 1
  %t509 = insertvalue { %"compiler/source:Span", i32, ptr } %t507, ptr %t501, 2
  %t510 = getelementptr { i64, [3 x i64] }, ptr %t502, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t509, ptr %t510
  %t511 = load { i64, [3 x i64] }, ptr %t502
  %t513 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t511, ptr %t513
  %t514 = load ptr, ptr %l286, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t514, ptr %t513)
  br label %bb128
bb128:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load %"compiler/source:Span", ptr %l1
  %t518 = load i32, ptr %l6, !tbaa !23
  %t522 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t516, %"compiler/source:Span" %t517, i32 %t518)
  store i64 %t522, ptr %l299
  br label %bb129
bb129:
  %t523 = load i64, ptr %l299, !tbaa !24
  store i64 %t523, ptr %l31, !tbaa !24
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load %"compiler/source:Span", ptr %l1
  %t526 = load i64, ptr %l31, !tbaa !24
  %t528 = trunc i64 %t526 to i32
  %t530 = load ptr, ptr %l28, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t531
  %t532 = getelementptr { i64, [3 x i64] }, ptr %t531, i32 0, i32 0
  store i64 0, ptr %t532
  %t534 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t525, 0
  %t536 = insertvalue { %"compiler/source:Span", i32, ptr } %t534, i32 %t528, 1
  %t538 = insertvalue { %"compiler/source:Span", i32, ptr } %t536, ptr %t530, 2
  %t539 = getelementptr { i64, [3 x i64] }, ptr %t531, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t538, ptr %t539
  %t540 = load { i64, [3 x i64] }, ptr %t531
  %t542 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t540, ptr %t542
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t524, ptr %t542)
  br label %bb130
bb130:
  %t545 = load ptr, ptr %l0, !tbaa !29
  store ptr %t545, ptr %l308, !tbaa !29
  %t546 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t546, ptr %l309
  %t547 = load i32, ptr %l6, !tbaa !23
  store i32 %t547, ptr %l310, !tbaa !23
  store i32 4, ptr %l311
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load %"compiler/source:Span", ptr %l1
  %t550 = load i64, ptr %l30, !tbaa !24
  %t554 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t548, %"compiler/source:Span" %t549, i64 %t550)
  store ptr %t554, ptr %l315
  br label %bb131
bb131:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t556 = load %"compiler/source:Span", ptr %l1
  %t557 = load i64, ptr %l29, !tbaa !24
  %t561 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t555, %"compiler/source:Span" %t556, i64 %t557)
  store ptr %t561, ptr %l319
  br label %bb132
bb132:
  %t562 = load ptr, ptr %l319, !tbaa !29
  %t563 = load ptr, ptr %l308, !tbaa !29
  %t564 = load %"compiler/source:Span", ptr %l309
  %t565 = load i32, ptr %l310, !tbaa !23
  %t566 = load i32, ptr %l311, !range !{i32 0, i32 52}
  %t567 = load ptr, ptr %l315, !tbaa !29
  %t569 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t563, %"compiler/source:Span" %t564, i32 %t565, i32 %t566, ptr %t567, ptr %t562)
  store ptr %t569, ptr %l321
  br label %bb133
bb133:
  %t570 = load ptr, ptr %l321, !tbaa !29
  %t571 = load ptr, ptr %l0, !tbaa !29
  store ptr %t571, ptr %l322, !tbaa !29
  %t572 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t572, ptr %l323
  %t573 = load i32, ptr %l6, !tbaa !23
  store i32 %t573, ptr %l324, !tbaa !23
  store i32 4, ptr %l325
  %t574 = load ptr, ptr %l0, !tbaa !29
  store ptr %t574, ptr %l326, !tbaa !29
  %t575 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t575, ptr %l327
  %t576 = load i32, ptr %l6, !tbaa !23
  store i32 %t576, ptr %l328, !tbaa !23
  store i32 3, ptr %l329
  store ptr %t570, ptr %l330, !tbaa !29
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load %"compiler/source:Span", ptr %l1
  %t580 = load i64, ptr %l31, !tbaa !24
  %t584 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t578, %"compiler/source:Span" %t579, i64 %t580)
  store ptr %t584, ptr %l334
  br label %bb134
bb134:
  %t585 = load ptr, ptr %l334, !tbaa !29
  %t586 = load ptr, ptr %l326, !tbaa !29
  %t587 = load %"compiler/source:Span", ptr %l327
  %t588 = load i32, ptr %l328, !tbaa !23
  %t589 = load i32, ptr %l329, !range !{i32 0, i32 52}
  %t590 = load ptr, ptr %l330, !tbaa !29
  %t592 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t586, %"compiler/source:Span" %t587, i32 %t588, i32 %t589, ptr %t590, ptr %t585)
  store ptr %t592, ptr %l336
  br label %bb135
bb135:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load %"compiler/source:Span", ptr %l1
  %t595 = load i32, ptr %l6, !tbaa !23
  %t599 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t593, %"compiler/source:Span" %t594, i32 %t595, i64 1)
  store ptr %t599, ptr %l340
  br label %bb136
bb136:
  %t600 = load ptr, ptr %l340, !tbaa !29
  %t601 = load ptr, ptr %l322, !tbaa !29
  %t602 = load %"compiler/source:Span", ptr %l323
  %t603 = load i32, ptr %l324, !tbaa !23
  %t604 = load i32, ptr %l325, !range !{i32 0, i32 52}
  %t605 = load ptr, ptr %l336, !tbaa !29
  %t607 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t601, %"compiler/source:Span" %t602, i32 %t603, i32 %t604, ptr %t605, ptr %t600)
  store ptr %t607, ptr %l342
  br label %bb137
bb137:
  %t608 = load ptr, ptr %l342, !tbaa !29
  store ptr %t608, ptr %l33, !tbaa !29
  %t609 = load ptr, ptr %l0, !tbaa !29
  store ptr %t609, ptr %l343, !tbaa !29
  %t610 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t610, ptr %l344
  %t611 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t611, ptr %l345, !tbaa !23
  store i32 17, ptr %l346
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load %"compiler/source:Span", ptr %l1
  %t614 = load i64, ptr %l30, !tbaa !24
  %t618 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t612, %"compiler/source:Span" %t613, i64 %t614)
  store ptr %t618, ptr %l350
  br label %bb138
bb138:
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t620 = load %"compiler/source:Span", ptr %l1
  %t621 = load i64, ptr %l29, !tbaa !24
  %t625 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t619, %"compiler/source:Span" %t620, i64 %t621)
  store ptr %t625, ptr %l354
  br label %bb139
bb139:
  %t626 = load ptr, ptr %l354, !tbaa !29
  %t627 = load ptr, ptr %l343, !tbaa !29
  %t628 = load %"compiler/source:Span", ptr %l344
  %t629 = load i32, ptr %l345, !tbaa !23
  %t630 = load i32, ptr %l346, !range !{i32 0, i32 52}
  %t631 = load ptr, ptr %l350, !tbaa !29
  %t633 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t627, %"compiler/source:Span" %t628, i32 %t629, i32 %t630, ptr %t631, ptr %t626)
  store ptr %t633, ptr %l356
  br label %bb140
bb140:
  %t634 = load ptr, ptr %l356, !tbaa !29
  store ptr %t634, ptr %l34, !tbaa !29
  %t635 = load ptr, ptr %l0, !tbaa !29
  store ptr %t635, ptr %l357, !tbaa !29
  %t636 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t636, ptr %l358
  %t637 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t637, ptr %l359, !tbaa !23
  store i32 17, ptr %l360
  %t638 = load ptr, ptr %l0, !tbaa !29
  %t639 = load %"compiler/source:Span", ptr %l1
  %t640 = load i64, ptr %l31, !tbaa !24
  %t644 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t638, %"compiler/source:Span" %t639, i64 %t640)
  store ptr %t644, ptr %l364
  br label %bb141
bb141:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t646 = load %"compiler/source:Span", ptr %l1
  %t647 = load i32, ptr %l6, !tbaa !23
  %t651 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t645, %"compiler/source:Span" %t646, i32 %t647, i64 0)
  store ptr %t651, ptr %l368
  br label %bb142
bb142:
  %t652 = load ptr, ptr %l368, !tbaa !29
  %t653 = load ptr, ptr %l357, !tbaa !29
  %t654 = load %"compiler/source:Span", ptr %l358
  %t655 = load i32, ptr %l359, !tbaa !23
  %t656 = load i32, ptr %l360, !range !{i32 0, i32 52}
  %t657 = load ptr, ptr %l364, !tbaa !29
  %t659 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t653, %"compiler/source:Span" %t654, i32 %t655, i32 %t656, ptr %t657, ptr %t652)
  store ptr %t659, ptr %l370
  br label %bb143
bb143:
  %t660 = load ptr, ptr %l370, !tbaa !29
  %t661 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t661, ptr %l371
  %t662 = load i32, ptr %l6, !tbaa !23
  store i32 %t662, ptr %l372, !tbaa !23
  store ptr %t660, ptr %l373, !tbaa !29
  %t664 = load ptr, ptr %l0, !tbaa !29
  store ptr %t664, ptr %l374, !tbaa !29
  %t665 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t665, ptr %l375
  %t666 = load i32, ptr %l6, !tbaa !23
  store i32 %t666, ptr %l376, !tbaa !23
  store i32 6, ptr %l377
  %t667 = load ptr, ptr %l33, !tbaa !29
  store ptr %t667, ptr %l378, !tbaa !29
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t669 = load %"compiler/source:Span", ptr %l1
  %t670 = load i64, ptr %l31, !tbaa !24
  %t674 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t668, %"compiler/source:Span" %t669, i64 %t670)
  store ptr %t674, ptr %l382
  br label %bb144
bb144:
  %t675 = load ptr, ptr %l382, !tbaa !29
  %t676 = load ptr, ptr %l374, !tbaa !29
  %t677 = load %"compiler/source:Span", ptr %l375
  %t678 = load i32, ptr %l376, !tbaa !23
  %t679 = load i32, ptr %l377, !range !{i32 0, i32 52}
  %t680 = load ptr, ptr %l378, !tbaa !29
  %t682 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t676, %"compiler/source:Span" %t677, i32 %t678, i32 %t679, ptr %t680, ptr %t675)
  store ptr %t682, ptr %l384
  br label %bb145
bb145:
  %t683 = load ptr, ptr %l384, !tbaa !29
  store ptr %t683, ptr %l385, !tbaa !29
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load %"compiler/source:Span", ptr %l1
  %t686 = load i32, ptr %l6, !tbaa !23
  %t690 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t684, %"compiler/source:Span" %t685, i32 %t686, i64 0)
  store ptr %t690, ptr %l389
  br label %bb146
bb146:
  %t691 = load ptr, ptr %l373, !tbaa !29
  %t692 = load ptr, ptr %l385, !tbaa !29
  %t693 = load ptr, ptr %l389, !tbaa !29
  %t694 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t691, ptr %t692, ptr %t693)
  store %"compiler/typed:Cond" %t694, ptr %l390
  br label %bb147
bb147:
  %t695 = load %"compiler/typed:Cond", ptr %l390
  %t696 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Cond" %t695, ptr %t696
  store { i64, [5 x i64] } zeroinitializer, ptr %t697
  %t698 = getelementptr { i64, [5 x i64] }, ptr %t697, i32 0, i32 0
  store i64 11, ptr %t698
  %t699 = load %"compiler/source:Span", ptr %l371
  %t700 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t699, 0
  %t701 = load i32, ptr %l372, !tbaa !23
  %t702 = insertvalue { %"compiler/source:Span", i32, ptr } %t700, i32 %t701, 1
  %t704 = insertvalue { %"compiler/source:Span", i32, ptr } %t702, ptr %t696, 2
  %t705 = getelementptr { i64, [5 x i64] }, ptr %t697, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t704, ptr %t705
  %t706 = load { i64, [5 x i64] }, ptr %t697
  %t708 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t706, ptr %t708
  %t710 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t710, ptr %l394
  %t711 = load i32, ptr %l6, !tbaa !23
  store i32 %t711, ptr %l395, !tbaa !23
  %t712 = load ptr, ptr %l34, !tbaa !29
  store ptr %t712, ptr %l396, !tbaa !29
  store ptr %t708, ptr %l398, !tbaa !29
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t716 = load %"compiler/source:Span", ptr %l1
  %t717 = load i32, ptr %l6, !tbaa !23
  %t721 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t715, %"compiler/source:Span" %t716, i32 %t717, i64 0)
  store ptr %t721, ptr %l402
  br label %bb148
bb148:
  %t722 = load ptr, ptr %l396, !tbaa !29
  %t723 = load ptr, ptr %l398, !tbaa !29
  %t724 = load ptr, ptr %l402, !tbaa !29
  %t725 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t722, ptr %t723, ptr %t724)
  store %"compiler/typed:Cond" %t725, ptr %l403
  br label %bb149
bb149:
  %t726 = load %"compiler/typed:Cond", ptr %l403
  %t727 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Cond" %t726, ptr %t727
  store { i64, [5 x i64] } zeroinitializer, ptr %t728
  %t729 = getelementptr { i64, [5 x i64] }, ptr %t728, i32 0, i32 0
  store i64 11, ptr %t729
  %t730 = load %"compiler/source:Span", ptr %l394
  %t731 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t730, 0
  %t732 = load i32, ptr %l395, !tbaa !23
  %t733 = insertvalue { %"compiler/source:Span", i32, ptr } %t731, i32 %t732, 1
  %t735 = insertvalue { %"compiler/source:Span", i32, ptr } %t733, ptr %t727, 2
  %t736 = getelementptr { i64, [5 x i64] }, ptr %t728, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t735, ptr %t736
  %t737 = load { i64, [5 x i64] }, ptr %t728
  %t739 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t737, ptr %t739
  store ptr %t739, ptr %l37, !tbaa !29
  %t741 = load ptr, ptr %l0, !tbaa !29
  %t742 = load %"compiler/source:Span", ptr %l1
  %t743 = load i32, ptr %l6, !tbaa !23
  %t747 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t741, %"compiler/source:Span" %t742, i32 %t743)
  store i64 %t747, ptr %l410
  br label %bb150
bb150:
  %t748 = load i64, ptr %l410, !tbaa !24
  store i64 %t748, ptr %l38, !tbaa !24
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load %"compiler/source:Span", ptr %l1
  %t751 = load i64, ptr %l38, !tbaa !24
  %t753 = trunc i64 %t751 to i32
  %t755 = load ptr, ptr %l37, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t756
  %t757 = getelementptr { i64, [3 x i64] }, ptr %t756, i32 0, i32 0
  store i64 0, ptr %t757
  %t759 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t750, 0
  %t761 = insertvalue { %"compiler/source:Span", i32, ptr } %t759, i32 %t753, 1
  %t763 = insertvalue { %"compiler/source:Span", i32, ptr } %t761, ptr %t755, 2
  %t764 = getelementptr { i64, [3 x i64] }, ptr %t756, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t763, ptr %t764
  %t765 = load { i64, [3 x i64] }, ptr %t756
  %t767 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t765, ptr %t767
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t749, ptr %t767)
  br label %bb151
bb151:
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t771 = load %"compiler/source:Span", ptr %l1
  %t772 = load i32, ptr %l6, !tbaa !23
  %t776 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t770, %"compiler/source:Span" %t771, i32 %t772)
  store i64 %t776, ptr %l422
  br label %bb152
bb152:
  %t777 = load i64, ptr %l422, !tbaa !24
  store i64 %t777, ptr %l39, !tbaa !24
  %t778 = load ptr, ptr %l0, !tbaa !29
  store ptr %t778, ptr %l423, !tbaa !29
  %t779 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t779, ptr %l424
  %t780 = load i64, ptr %l39, !tbaa !24
  %t782 = trunc i64 %t780 to i32
  store i32 %t782, ptr %l427, !tbaa !23
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t785 = load %"compiler/source:Span", ptr %l1
  %t786 = load i32, ptr %l6, !tbaa !23
  %t790 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t784, %"compiler/source:Span" %t785, i32 %t786, i64 0)
  store ptr %t790, ptr %l431
  br label %bb153
bb153:
  store { i64, [3 x i64] } zeroinitializer, ptr %t791
  %t792 = getelementptr { i64, [3 x i64] }, ptr %t791, i32 0, i32 0
  store i64 0, ptr %t792
  %t793 = load %"compiler/source:Span", ptr %l424
  %t794 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t793, 0
  %t795 = load i32, ptr %l427, !tbaa !23
  %t796 = insertvalue { %"compiler/source:Span", i32, ptr } %t794, i32 %t795, 1
  %t797 = load ptr, ptr %l431, !tbaa !29
  %t798 = insertvalue { %"compiler/source:Span", i32, ptr } %t796, ptr %t797, 2
  %t799 = getelementptr { i64, [3 x i64] }, ptr %t791, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t798, ptr %t799
  %t800 = load { i64, [3 x i64] }, ptr %t791
  %t802 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t800, ptr %t802
  %t803 = load ptr, ptr %l423, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t803, ptr %t802)
  br label %bb154
bb154:
  %t805 = load ptr, ptr %l4, !tbaa !29
  %t807 = icmp eq ptr %t805, null
  %t809 = xor i1 %t807, true
  br i1 %t809, label %bb155, label %bb156
bb155:
  store %olang.scope zeroinitializer, ptr %s21
  %t811 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t813 = extractvalue { i64, ptr } %t811, 0
  store i64 %t813, ptr %l438, !tbaa !24
  %t814 = load i64, ptr %l438, !tbaa !24
  %t815 = icmp sge i64 %t814, 0
  br i1 %t815, label %bb157, label %bb158
bb156:
  br label %bb196
bb157:
  %t817 = load i64, ptr %l438, !tbaa !24
  %t818 = icmp sle i64 %t817, 1152921504606846975
  br i1 %t818, label %bb159, label %bb160
bb158:
  call void @__olang_check_failed(ptr @olang_loc_e4e76d967c258b4f_6c72e4d0b3165dfb)
  unreachable
bb159:
  %t820 = load i64, ptr %l438, !tbaa !24
  %t821 = mul i64 %t820, 8
  %t822 = call ptr @__olang_scope_alloc_zeroed(ptr %s21, i64 %t821)
  %t823 = insertvalue { i64, ptr } undef, i64 %t820, 0
  %t824 = insertvalue { i64, ptr } %t823, ptr %t822, 1
  store { i64, ptr } %t824, ptr %l40, !tbaa !27
  store i1 true, ptr %l41, !tbaa !21
  store i64 0, ptr %l42, !tbaa !24
  %t826 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t828 = extractvalue { i64, ptr } %t826, 0
  store i64 %t828, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t830 = load i64, ptr %l43, !tbaa !24
  %t831 = load i64, ptr %l42, !tbaa !24
  %t834 = icmp sgt i64 %t830, %t831
  br i1 %t834, label %bb161, label %bb162
bb160:
  call void @__olang_check_failed(ptr @olang_loc_e4e76d967c258b4f_6c72e4d0b3165dfb)
  unreachable
bb161:
  %t836 = load i64, ptr %l44, !tbaa !24
  %t838 = icmp sgt i64 %t836, 0
  br i1 %t838, label %bb163, label %bb164
bb162:
  store i64 0, ptr %l447, !tbaa !24
  br label %bb166
bb163:
  %t840 = load i64, ptr %l43, !tbaa !24
  %t841 = load i64, ptr %l42, !tbaa !24
  %t844 = sub i64 %t840, %t841
  %t845 = load i64, ptr %l44, !tbaa !24
  %t848 = add i64 %t844, %t845
  %t850 = sub i64 %t848, 1
  %t851 = load i64, ptr %l44, !tbaa !24
  %t854 = sdiv i64 %t850, %t851
  store i64 %t854, ptr %l450, !tbaa !24
  br label %bb165
bb164:
  store i64 0, ptr %l450, !tbaa !24
  br label %bb165
bb165:
  %t856 = load i64, ptr %l450, !tbaa !24
  store i64 %t856, ptr %l447, !tbaa !24
  br label %bb166
bb166:
  %t857 = load i64, ptr %l447, !tbaa !24
  store i64 %t857, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb167
bb167:
  %t858 = load i64, ptr %l46, !tbaa !24
  %t859 = load i64, ptr %l45, !tbaa !24
  %t862 = icmp slt i64 %t858, %t859
  %t864 = xor i1 %t862, true
  br i1 %t864, label %bb168, label %bb169
bb168:
  br label %bb177
bb169:
  br label %bb170
bb170:
  %t866 = load i64, ptr %l42, !tbaa !24
  %t867 = load i64, ptr %l46, !tbaa !24
  %t868 = load i64, ptr %l44, !tbaa !24
  %t871 = mul i64 %t867, %t868
  %t874 = add i64 %t866, %t871
  store i64 %t874, ptr %l47, !tbaa !24
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t877 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t877, ptr %l469, !tbaa !27
  %t878 = load i64, ptr %l47, !tbaa !24
  %t880 = getelementptr { i64, ptr }, ptr %l469, i32 0, i32 1
  %t881 = load ptr, ptr %t880, !tbaa !27
  %t882 = getelementptr ptr, ptr %t881, i64 %t878
  %t883 = load ptr, ptr %t882, !tbaa !39
  %t886 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v2, ptr %t876, ptr %t883)
  store i32 %t886, ptr %l472
  br label %bb171
bb171:
  %t887 = load i32, ptr %l472, !tbaa !23
  store i32 %t887, ptr %l48, !tbaa !23
  %t888 = load i32, ptr %l48, !tbaa !23
  %t890 = icmp slt i32 %t888, 0
  br i1 %t890, label %bb172, label %bb173
bb172:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb175
bb173:
  %t892 = load i64, ptr %l47, !tbaa !24
  store i64 %t892, ptr %l475, !tbaa !24
  %t893 = load ptr, ptr %l0, !tbaa !29
  %t895 = getelementptr %"compiler/check:Checker", ptr %t893, i32 0, i32 1
  %t896 = load ptr, ptr %t895, !tbaa !29
  %t898 = getelementptr %"compiler/generic:Program", ptr %t896, i32 0, i32 2
  %t899 = load i32, ptr %l48, !tbaa !23
  %t902 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t898, i32 %t899)
  store i64 %t902, ptr %l480
  br label %bb174
bb174:
  %t903 = load i64, ptr %l480, !tbaa !24
  %t904 = load i64, ptr %l475, !tbaa !24
  %t905 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t906 = load ptr, ptr %t905, !tbaa !27
  %t907 = getelementptr i64, ptr %t906, i64 %t904
  store i64 %t903, ptr %t907, !tbaa !34
  br label %bb175
bb175:
  br label %bb176
bb176:
  %t908 = load i64, ptr %l46, !tbaa !24
  %t910 = add i64 %t908, 1
  store i64 %t910, ptr %l46, !tbaa !24
  br label %bb167
bb177:
  %t912 = load i1, ptr %l41, !tbaa !21
  br i1 %t912, label %bb178, label %bb179
bb178:
  %t914 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t916 = extractvalue { i64, ptr } %t914, 0
  %t918 = icmp sgt i64 %t916, 1
  br i1 %t918, label %bb180, label %bb181
bb179:
  br label %bb195
bb180:
  %t920 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t921 = load ptr, ptr %t920, !tbaa !27
  %t922 = getelementptr i64, ptr %t921, i64 0
  %t923 = load i64, ptr %t922, !tbaa !34
  store i64 %t923, ptr %l487, !tbaa !24
  br label %bb182
bb181:
  store i64 0, ptr %l487, !tbaa !24
  br label %bb182
bb182:
  %t925 = load i64, ptr %l487, !tbaa !24
  store i64 %t925, ptr %l49, !tbaa !24
  %t926 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t928 = extractvalue { i64, ptr } %t926, 0
  %t930 = icmp sgt i64 %t928, 1
  br i1 %t930, label %bb183, label %bb184
bb183:
  %t932 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t933 = load ptr, ptr %t932, !tbaa !27
  %t934 = getelementptr i64, ptr %t933, i64 1
  %t935 = load i64, ptr %t934, !tbaa !34
  store i64 %t935, ptr %l492, !tbaa !24
  br label %bb185
bb184:
  %t937 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t938 = load ptr, ptr %t937, !tbaa !27
  %t939 = getelementptr i64, ptr %t938, i64 0
  %t940 = load i64, ptr %t939, !tbaa !34
  store i64 %t940, ptr %l492, !tbaa !24
  br label %bb185
bb185:
  %t942 = load i64, ptr %l492, !tbaa !24
  store i64 %t942, ptr %l50, !tbaa !24
  %t943 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t945 = extractvalue { i64, ptr } %t943, 0
  %t947 = icmp sgt i64 %t945, 2
  br i1 %t947, label %bb186, label %bb187
bb186:
  %t949 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t950 = load ptr, ptr %t949, !tbaa !27
  %t951 = getelementptr i64, ptr %t950, i64 2
  %t952 = load i64, ptr %t951, !tbaa !34
  store i64 %t952, ptr %l498, !tbaa !24
  br label %bb188
bb187:
  store i64 1, ptr %l498, !tbaa !24
  br label %bb188
bb188:
  %t954 = load i64, ptr %l498, !tbaa !24
  store i64 %t954, ptr %l51, !tbaa !24
  %t955 = load i64, ptr %l51, !tbaa !24
  %t957 = icmp sgt i64 %t955, 0
  br i1 %t957, label %bb189, label %bb190
bb189:
  %t959 = load ptr, ptr %l0, !tbaa !29
  store ptr %t959, ptr %l502, !tbaa !29
  %t960 = load i64, ptr %l50, !tbaa !24
  %t961 = load i64, ptr %l49, !tbaa !24
  %t964 = icmp sgt i64 %t960, %t961
  br i1 %t964, label %bb191, label %bb192
bb190:
  br label %bb194
bb191:
  %t966 = load i64, ptr %l50, !tbaa !24
  %t967 = load i64, ptr %l49, !tbaa !24
  %t970 = sub i64 %t966, %t967
  %t971 = load i64, ptr %l51, !tbaa !24
  %t974 = add i64 %t970, %t971
  %t976 = sub i64 %t974, 1
  %t977 = load i64, ptr %l51, !tbaa !24
  %t980 = sdiv i64 %t976, %t977
  store i64 %t980, ptr %l506, !tbaa !24
  br label %bb193
bb192:
  store i64 0, ptr %l506, !tbaa !24
  br label %bb193
bb193:
  %t982 = load i64, ptr %l506, !tbaa !24
  %t983 = load ptr, ptr %l502, !tbaa !29
  %t984 = getelementptr %"compiler/check:Checker", ptr %t983, i32 0, i32 124
  store i64 %t982, ptr %t984, !tbaa !24
  br label %bb194
bb194:
  br label %bb195
bb195:
  call void @__olang_scope_close(ptr %s21)
  br label %bb196
bb196:
  %t985 = load ptr, ptr %l0, !tbaa !29
  %t986 = load %"compiler/source:Span", ptr %l1
  %t988 = load i64, ptr %l39, !tbaa !24
  %t989 = load i64, ptr %l38, !tbaa !24
  %t990 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t991 = load i64, ptr %l29, !tbaa !24
  %t992 = load i64, ptr %l31, !tbaa !24
  %t993 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecounted(ptr %v0, ptr %v1, ptr %v3, ptr %t985, %"compiler/source:Span" %t986, ptr %a2, i64 %t988, i64 %t989, i64 -1, i32 %t990, i64 %t991, i64 %t992, ptr %t993, i32 %a5)
  br label %bb197
bb197:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  %t1006 = load %"compiler/source:Span", ptr %l1
  %t1007 = load i64, ptr %l38, !tbaa !24
  %t1011 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v4, ptr %t1005, %"compiler/source:Span" %t1006, i64 %t1007)
  store ptr %t1011, ptr %l528
  br label %bb198
bb198:
  %t1012 = load ptr, ptr %l528, !tbaa !29
  store ptr %t1012, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egeneratorCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2ftyped_2eCalledBody(ptr %v1, ptr %a1)
  store i64 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i64, ptr %l5, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 14
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t12, i64 %t13)
  store ptr %t16, ptr %l12
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %t17)
  store i64 %t18, ptr %l13
  br label %bb6
bb6:
  %t19 = load i64, ptr %l13, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb11
bb9:
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i64, ptr %l22, !tbaa !24
  %t38 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t36, i64 %t37)
  store i1 %t38, ptr %l23
  br label %bb10
bb10:
  %t39 = load i1, ptr %l23, !tbaa !21
  store i1 %t39, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l16, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l24 = alloca ptr
  %l33 = alloca ptr
  %l35 = alloca %"compiler/generic:Context"
  %l39 = alloca i32
  %l45 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l53 = alloca i1
  %l57 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i32
  %l70 = alloca i32
  %l71 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  %t59 = alloca %"compiler/generic:Context", align 8
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
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l3
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 28
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t15 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t11, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12)
  %t16 = extractvalue { i32, i32 } %t15, 1
  %t17 = extractvalue { i32, i32 } %t15, 0
  store i32 %t17, ptr %l16
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store i32 %t16, ptr %l15
  br label %bb2
bb2:
  %t20 = load i32, ptr %l15, !tbaa !23
  store i32 %t20, ptr %l11, !tbaa !23
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i32 -1, ptr %l11, !tbaa !23
  br label %bb5
bb5:
  %t21 = load i32, ptr %l11, !tbaa !23
  store i32 %t21, ptr %l4, !tbaa !23
  %t22 = load i32, ptr %l4, !tbaa !23
  %t24 = icmp sge i32 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t26, ptr %rv
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
  store ptr %t37, ptr %l24
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l24, !tbaa !29
  store ptr %t38, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t43, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = getelementptr %"compiler/ast:VarDecl", ptr %t45, i32 0, i32 2
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  store ptr %t57, ptr %l33, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t59, ptr %s3, i64 %t58, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t59, i64 160, i1 false)
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t61 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %l35, i64 160, i1 false)
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t63 = load i32, ptr %l2, !tbaa !23
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t68 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %s3, ptr %v0, ptr %t64, ptr %t61, ptr %t62, i32 %t63)
  store i32 %t68, ptr %l39
  br label %bb16
bb16:
  %t69 = load i32, ptr %l39, !tbaa !23
  store i32 %t69, ptr %l4, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 28
  %t73 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t74 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %t72, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t73, i32 %t74)
  br label %bb17
bb17:
  %t78 = load i32, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t78, ptr %rv
  br label %ret
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 27
  %t83 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t86 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t82, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t83)
  %t87 = extractvalue { i32, i64 } %t86, 1
  %t88 = extractvalue { i32, i64 } %t86, 0
  store i32 %t88, ptr %l50
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb20, label %ok.90, !prof !99
ok.90:
  store i64 %t87, ptr %l49
  br label %bb19
bb19:
  %t91 = load i64, ptr %l49, !tbaa !24
  store i64 %t91, ptr %l45, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 -1, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t92 = load i64, ptr %l45, !tbaa !24
  store i64 %t92, ptr %l6, !tbaa !24
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = icmp sge i64 %t93, 0
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 19
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t99, i64 %t100)
  store i64 %t103, ptr %l57
  br label %bb25
bb24:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb26
bb25:
  %t104 = load i64, ptr %l57, !tbaa !24
  %t105 = icmp eq i64 %t104, 1
  store i1 %t105, ptr %l53, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l53, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCycle(ptr %v0, ptr %t108, i64 %t109)
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t112 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t112, ptr %rv
  br label %ret
bb30:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i64, ptr %l1, !tbaa !24
  %t116 = load i32, ptr %l2, !tbaa !23
  %t120 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %t114, i64 %t115, i32 %t116)
  store i64 %t120, ptr %l65
  br label %bb31
bb31:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 28
  %t124 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t127 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %t123, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t124)
  %t128 = extractvalue { i32, i32 } %t127, 1
  %t129 = extractvalue { i32, i32 } %t127, 0
  store i32 %t129, ptr %l71
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb33, label %ok.131, !prof !99
ok.131:
  store i32 %t128, ptr %l70
  br label %bb32
bb32:
  %t132 = load i32, ptr %l70, !tbaa !23
  store i32 %t132, ptr %l66, !tbaa !23
  br label %bb35
bb33:
  br label %bb34
bb34:
  %t133 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t133, ptr %l66, !tbaa !23
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t135 = load i32, ptr %l66, !tbaa !23
  store i32 %t135, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l29 = alloca i1
  %l43 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l58 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l86 = alloca ptr
  %l88 = alloca i1
  %l90 = alloca i1
  %l91 = alloca ptr
  %l93 = alloca %"compiler/source:Span"
  %l96 = alloca i32
  %l97 = alloca i64
  %l99 = alloca ptr
  %l101 = alloca %"compiler/source:Span"
  %l109 = alloca ptr
  %l110 = alloca i64
  %l111 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l115 = alloca ptr
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l124 = alloca i32
  %l125 = alloca i64
  %l138 = alloca ptr
  %rv = alloca ptr
  %t173 = alloca { i64, [3 x i64] }, align 8
  %t231 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l3, !tbaa !21
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t2 = load ptr, ptr %l19, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l19, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l20, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb26
bb5:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 2 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Make", ptr %t26, i32 0, i32 2
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t33 = icmp eq i64 %t31, 0
  store i1 %t33, ptr %l29, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l29, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l2, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Make", ptr %t38, i32 0, i32 2
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb13, label %bb14
bb13:
  br label %bb25
bb14:
  br label %bb15
bb15:
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t55, ptr %l43, !tbaa !27
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr ptr, ptr %t59, i64 %t56
  %t61 = load ptr, ptr %t60, !tbaa !39
  store ptr %t61, ptr %l8, !tbaa !29
  %t63 = load ptr, ptr %l8, !tbaa !29
  %t65 = call i1 @compiler_2fcheck_2epureRead(ptr %v1, ptr %t63)
  store i1 %t65, ptr %l47
  br label %bb16
bb16:
  %t66 = load i1, ptr %l47, !tbaa !21
  br i1 %t66, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb20
bb18:
  %t67 = load ptr, ptr %l8, !tbaa !29
  %t69 = call i1 @compiler_2fcheck_2eisLit(ptr %v1, ptr %t67)
  store i1 %t69, ptr %l50
  br label %bb19
bb19:
  %t70 = load i1, ptr %l50, !tbaa !21
  store i1 %t70, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l48, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb21, label %bb22
bb21:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb12
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t78 = load ptr, ptr %l2, !tbaa !29
  store ptr %t78, ptr %rv
  br label %ret
bb30:
  call void @__olang_check_failed(ptr @olang_loc_317381e6e3d2ca51_b8977c113f1a9cfd)
  unreachable
bb31:
  store i64 %a1, ptr %l9, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 36
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t84)
  store i64 %t86, ptr %l58
  br label %bb32
bb32:
  %t87 = load i64, ptr %l58, !tbaa !24
  store i64 %t87, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb33, label %bb34
bb33:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb38
bb35:
  %t98 = load i64, ptr %l10, !tbaa !24
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l65, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb37
bb37:
  %t114 = load i64, ptr %l65, !tbaa !24
  store i64 %t114, ptr %l62, !tbaa !24
  br label %bb38
bb38:
  %t115 = load i64, ptr %l62, !tbaa !24
  store i64 %t115, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb39
bb39:
  %t116 = load i64, ptr %l13, !tbaa !24
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb40, label %bb41
bb40:
  br label %bb60
bb41:
  br label %bb42
bb42:
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l13, !tbaa !24
  %t126 = load i64, ptr %l11, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l14, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 36
  %t137 = load i64, ptr %l14, !tbaa !24
  %t140 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t136, i64 %t137)
  store ptr %t140, ptr %l86
  br label %bb43
bb43:
  %t141 = load ptr, ptr %l86, !tbaa !29
  store ptr %t141, ptr %l15, !tbaa !29
  %t142 = load i1, ptr %l3, !tbaa !21
  br i1 %t142, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb47
bb45:
  %t144 = load ptr, ptr %l15, !tbaa !29
  %t146 = call i1 @compiler_2fcheck_2eisLit(ptr %v0, ptr %t144)
  store i1 %t146, ptr %l90
  br label %bb46
bb46:
  %t147 = load i1, ptr %l90, !tbaa !21
  store i1 %t147, ptr %l88, !tbaa !21
  br label %bb47
bb47:
  %t148 = load i1, ptr %l88, !tbaa !21
  br i1 %t148, label %bb48, label %bb49
bb48:
  br label %bb59
bb49:
  br label %bb50
bb50:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l91, !tbaa !29
  %t150 = load ptr, ptr %l15, !tbaa !29
  %t152 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t150)
  store %"compiler/source:Span" %t152, ptr %l93
  br label %bb51
bb51:
  %t153 = load ptr, ptr %l15, !tbaa !29
  %t156 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t153)
  store i32 %t156, ptr %l96
  br label %bb52
bb52:
  %t157 = load ptr, ptr %l91, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l93
  %t159 = load i32, ptr %l96, !tbaa !23
  %t160 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t157, %"compiler/source:Span" %t158, i32 %t159)
  store i64 %t160, ptr %l97
  br label %bb53
bb53:
  %t161 = load i64, ptr %l97, !tbaa !24
  store i64 %t161, ptr %l16, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 37
  store ptr %t164, ptr %l99, !tbaa !29
  %t165 = load ptr, ptr %l15, !tbaa !29
  %t167 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t165)
  store %"compiler/source:Span" %t167, ptr %l101
  br label %bb54
bb54:
  %t168 = load i64, ptr %l16, !tbaa !24
  %t170 = trunc i64 %t168 to i32
  %t172 = load ptr, ptr %l15, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 0
  store i64 0, ptr %t174
  %t175 = load %"compiler/source:Span", ptr %l101
  %t176 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t175, 0
  %t178 = insertvalue { %"compiler/source:Span", i32, ptr } %t176, i32 %t170, 1
  %t180 = insertvalue { %"compiler/source:Span", i32, ptr } %t178, ptr %t172, 2
  %t181 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t180, ptr %t181
  %t182 = load { i64, [3 x i64] }, ptr %t173
  %t184 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t182, ptr %t184
  %t185 = load ptr, ptr %l99, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t185, ptr %t184)
  br label %bb55
bb55:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/check:Checker", ptr %t187, i32 0, i32 36
  store ptr %t189, ptr %l109, !tbaa !29
  %t190 = load i64, ptr %l14, !tbaa !24
  store i64 %t190, ptr %l110, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t191, ptr %l111, !tbaa !29
  %t192 = load ptr, ptr %l15, !tbaa !29
  %t194 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t192)
  store %"compiler/source:Span" %t194, ptr %l113
  br label %bb56
bb56:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = load ptr, ptr %l111, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l113
  %t199 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t196, %"compiler/source:Span" %t197, i64 %t195)
  store ptr %t199, ptr %l115
  br label %bb57
bb57:
  %t200 = load ptr, ptr %l109, !tbaa !29
  %t201 = load i64, ptr %l110, !tbaa !24
  %t202 = load ptr, ptr %l115, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t200, i64 %t201, ptr %t202)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t203 = load i64, ptr %l13, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l13, !tbaa !24
  br label %bb39
bb60:
  %t207 = load ptr, ptr %l2, !tbaa !29
  %t209 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t207)
  store %"compiler/source:Span" %t209, ptr %l119
  br label %bb61
bb61:
  %t210 = load %"compiler/source:Span", ptr %l119
  store %"compiler/source:Span" %t210, ptr %l17
  %t211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t211, ptr %l120, !tbaa !29
  %t212 = load %"compiler/source:Span", ptr %l17
  store %"compiler/source:Span" %t212, ptr %l121
  %t213 = load ptr, ptr %l2, !tbaa !29
  %t216 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t213)
  store i32 %t216, ptr %l124
  br label %bb62
bb62:
  %t217 = load ptr, ptr %l120, !tbaa !29
  %t218 = load %"compiler/source:Span", ptr %l121
  %t219 = load i32, ptr %l124, !tbaa !23
  %t220 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t217, %"compiler/source:Span" %t218, i32 %t219)
  store i64 %t220, ptr %l125
  br label %bb63
bb63:
  %t221 = load i64, ptr %l125, !tbaa !24
  store i64 %t221, ptr %l18, !tbaa !24
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 37
  %t225 = load %"compiler/source:Span", ptr %l17
  %t226 = load i64, ptr %l18, !tbaa !24
  %t228 = trunc i64 %t226 to i32
  %t230 = load ptr, ptr %l2, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 0
  store i64 0, ptr %t232
  %t234 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t225, 0
  %t236 = insertvalue { %"compiler/source:Span", i32, ptr } %t234, i32 %t228, 1
  %t238 = insertvalue { %"compiler/source:Span", i32, ptr } %t236, ptr %t230, 2
  %t239 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t238, ptr %t239
  %t240 = load { i64, [3 x i64] }, ptr %t231
  %t242 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t240, ptr %t242
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t224, ptr %t242)
  br label %bb64
bb64:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l17
  %t247 = load i64, ptr %l18, !tbaa !24
  %t251 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t245, %"compiler/source:Span" %t246, i64 %t247)
  store ptr %t251, ptr %l138
  br label %bb65
bb65:
  %t252 = load ptr, ptr %l138, !tbaa !29
  store ptr %t252, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1) #0 {
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
  %t14 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t12, i32 %t13)
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandingsOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:landing"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/typed:Landings"
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca %"compiler/check:landing"
  %l30 = alloca %"compiler/generic:Origin"
  %l31 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i64
  %l45 = alloca i64
  %l50 = alloca %"compiler/check:landing"
  %l59 = alloca i64
  %l64 = alloca i64
  %l69 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l94 = alloca i64
  %l97 = alloca %"compiler/check:landing"
  %l99 = alloca i64
  %l102 = alloca %"compiler/check:landing"
  %l109 = alloca i64
  %l114 = alloca i64
  %l118 = alloca i64
  %l121 = alloca i64
  %l139 = alloca i64
  %l142 = alloca ptr
  %l146 = alloca %"compiler/typed:Local"
  %l148 = alloca i1
  %l154 = alloca %"compiler/typed:Landings"
  %l155 = alloca ptr
  %l162 = alloca i64
  %l166 = alloca i64
  %l169 = alloca i64
  %l187 = alloca { i64, ptr }
  %l193 = alloca %"compiler/check:landing"
  %l194 = alloca { i64, ptr }
  %l197 = alloca i1
  %l198 = alloca { i64, ptr }
  %l202 = alloca ptr
  %l203 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l209 = alloca i64
  %l210 = alloca { i64, ptr }
  %l218 = alloca ptr
  %l225 = alloca { i64, [3 x i64] }
  %l226 = alloca ptr
  %l230 = alloca %"compiler/typed:Local"
  %l232 = alloca { i64, ptr }
  %l235 = alloca { i64, ptr }
  %l237 = alloca %"compiler/diagmsg:Msg"
  %l238 = alloca i64
  %l242 = alloca %"compiler/generic:Origin"
  %l243 = alloca ptr
  %l245 = alloca ptr
  %l249 = alloca i64
  %l250 = alloca ptr
  %l253 = alloca { i64, ptr }
  %l257 = alloca ptr
  %l263 = alloca { i64, [3 x i64] }
  %l264 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l269 = alloca i32
  %l270 = alloca { i64, ptr }
  %l272 = alloca %"compiler/diagmsg:Msg"
  %l273 = alloca i64
  %l277 = alloca ptr
  %l278 = alloca i64
  %l285 = alloca { i64, [3 x i64] }
  %l287 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %t257 = alloca %"compiler/typed:Landings", align 8
  %t415 = alloca { i64, [3 x i64] }, align 8
  %t516 = alloca { i64, [3 x i64] }, align 8
  %t580 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l36
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l36, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l40
  br label %bb5
bb5:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l3
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 66
  store ptr %t20, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l5, !tbaa !24
  store i64 %t22, ptr %l43, !tbaa !24
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l45
  br label %bb7
bb7:
  %t26 = load i64, ptr %l43, !tbaa !24
  %t27 = load i64, ptr %l45, !tbaa !24
  %t28 = icmp slt i64 %t26, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = call %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t32, i64 %t33)
  store %"compiler/check:landing" %t36, ptr %l50
  br label %bb11
bb11:
  %t37 = load %"compiler/check:landing", ptr %l50
  store %"compiler/check:landing" %t37, ptr %l6
  %t38 = getelementptr %"compiler/check:landing", ptr %l6, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp eq i64 %t39, %t40
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load %"compiler/check:landing", ptr %l6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ePush_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3, %"compiler/check:landing" %t45)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l5, !tbaa !24
  br label %bb6
bb17:
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3)
  store i64 %t53, ptr %l59
  br label %bb18
bb18:
  %t54 = load i64, ptr %l59, !tbaa !24
  %t55 = icmp sge i64 %t54, 0
  br i1 %t55, label %bb19, label %bb20
bb19:
  %t57 = load i64, ptr %l59, !tbaa !24
  %t58 = icmp sle i64 %t57, 1152921504606846975
  br i1 %t58, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_16bda6ca9a1e707b_be9520625a008a27)
  unreachable
bb21:
  %t60 = load i64, ptr %l59, !tbaa !24
  %t61 = mul i64 %t60, 8
  %t62 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  store { i64, ptr } %t64, ptr %l7, !tbaa !27
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3)
  store i64 %t67, ptr %l64
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_16bda6ca9a1e707b_be9520625a008a27)
  unreachable
bb23:
  %t68 = load i64, ptr %l64, !tbaa !24
  %t69 = icmp sge i64 %t68, 0
  br i1 %t69, label %bb24, label %bb25
bb24:
  %t71 = load i64, ptr %l64, !tbaa !24
  %t72 = icmp sle i64 %t71, 1152921504606846975
  br i1 %t72, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_4e983fb58f25bfe6_cd4ce7ce5e816e32)
  unreachable
bb26:
  %t74 = load i64, ptr %l64, !tbaa !24
  %t75 = mul i64 %t74, 8
  %t76 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3)
  store i64 %t81, ptr %l69
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4e983fb58f25bfe6_cd4ce7ce5e816e32)
  unreachable
bb28:
  %t82 = load i64, ptr %l69, !tbaa !24
  store i64 %t82, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb29, label %bb30
bb29:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb34
bb31:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l11, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l11, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l76, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb33
bb33:
  %t109 = load i64, ptr %l76, !tbaa !24
  store i64 %t109, ptr %l73, !tbaa !24
  br label %bb34
bb34:
  %t110 = load i64, ptr %l73, !tbaa !24
  store i64 %t110, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb35
bb35:
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb36, label %bb37
bb36:
  br label %bb42
bb37:
  br label %bb38
bb38:
  %t119 = load i64, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l13, !tbaa !24
  %t121 = load i64, ptr %l11, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  store i64 %t127, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  store i64 %t129, ptr %l94, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t133 = call %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3, i64 %t130)
  store %"compiler/check:landing" %t133, ptr %l97
  br label %bb39
bb39:
  %t134 = getelementptr %"compiler/check:landing", ptr %l97, i32 0, i32 1
  %t135 = load i64, ptr %t134, !tbaa !24
  %t137 = load i64, ptr %l94, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i64, ptr %t139, i64 %t137
  store i64 %t135, ptr %t140, !tbaa !34
  %t141 = load i64, ptr %l14, !tbaa !24
  store i64 %t141, ptr %l99, !tbaa !24
  %t142 = load i64, ptr %l14, !tbaa !24
  %t145 = call %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3, i64 %t142)
  store %"compiler/check:landing" %t145, ptr %l102
  br label %bb40
bb40:
  %t146 = getelementptr %"compiler/check:landing", ptr %l102, i32 0, i32 2
  %t147 = getelementptr %"compiler/source:Span", ptr %t146, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = sext i32 %t148 to i64
  %t152 = load i64, ptr %l99, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i64, ptr %t154, i64 %t152
  store i64 %t150, ptr %t155, !tbaa !34
  br label %bb41
bb41:
  %t156 = load i64, ptr %l13, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l13, !tbaa !24
  br label %bb35
bb42:
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t162 = getelementptr %"compiler/typed:Body", ptr %t160, i32 0, i32 7
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t162)
  store i64 %t164, ptr %l109
  br label %bb43
bb43:
  %t165 = load i64, ptr %l109, !tbaa !24
  %t166 = icmp sge i64 %t165, 0
  br i1 %t166, label %bb44, label %bb45
bb44:
  %t168 = load i64, ptr %l109, !tbaa !24
  %t169 = mul i64 %t168, 1
  %t170 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t169)
  %t171 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  store { i64, ptr } %t172, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Body", ptr %t174, i32 0, i32 7
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t176)
  store i64 %t178, ptr %l114
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_473753f75ee23f05_d3984be97624db51)
  unreachable
bb46:
  %t179 = load i64, ptr %l114, !tbaa !24
  store i64 %t179, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t180 = load i64, ptr %l17, !tbaa !24
  %t181 = load i64, ptr %l16, !tbaa !24
  %t184 = icmp sgt i64 %t180, %t181
  br i1 %t184, label %bb47, label %bb48
bb47:
  %t186 = load i64, ptr %l18, !tbaa !24
  %t188 = icmp sgt i64 %t186, 0
  br i1 %t188, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb52
bb49:
  %t190 = load i64, ptr %l17, !tbaa !24
  %t191 = load i64, ptr %l16, !tbaa !24
  %t194 = sub i64 %t190, %t191
  %t195 = load i64, ptr %l18, !tbaa !24
  %t198 = add i64 %t194, %t195
  %t200 = sub i64 %t198, 1
  %t201 = load i64, ptr %l18, !tbaa !24
  %t204 = sdiv i64 %t200, %t201
  store i64 %t204, ptr %l121, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb51
bb51:
  %t206 = load i64, ptr %l121, !tbaa !24
  store i64 %t206, ptr %l118, !tbaa !24
  br label %bb52
bb52:
  %t207 = load i64, ptr %l118, !tbaa !24
  store i64 %t207, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb53
bb53:
  %t208 = load i64, ptr %l20, !tbaa !24
  %t209 = load i64, ptr %l19, !tbaa !24
  %t212 = icmp slt i64 %t208, %t209
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb54, label %bb55
bb54:
  br label %bb60
bb55:
  br label %bb56
bb56:
  %t216 = load i64, ptr %l16, !tbaa !24
  %t217 = load i64, ptr %l20, !tbaa !24
  %t218 = load i64, ptr %l18, !tbaa !24
  %t221 = mul i64 %t217, %t218
  %t224 = add i64 %t216, %t221
  store i64 %t224, ptr %l21, !tbaa !24
  %t226 = load i64, ptr %l21, !tbaa !24
  store i64 %t226, ptr %l139, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 2
  store ptr %t232, ptr %l142, !tbaa !29
  %t233 = load ptr, ptr %l2, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Body", ptr %t233, i32 0, i32 7
  %t236 = load i64, ptr %l21, !tbaa !24
  %t239 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t235, i64 %t236)
  store %"compiler/typed:Local" %t239, ptr %l146
  br label %bb57
bb57:
  %t240 = getelementptr %"compiler/typed:Local", ptr %l146, i32 0, i32 2
  %t241 = load i32, ptr %t240, !tbaa !23
  %t242 = load ptr, ptr %l142, !tbaa !29
  %t244 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t242, i32 %t241)
  store i1 %t244, ptr %l148
  br label %bb58
bb58:
  %t245 = load i1, ptr %l148, !tbaa !21
  %t246 = load i64, ptr %l139, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i1, ptr %t248, i64 %t246
  store i1 %t245, ptr %t249, !tbaa !31
  br label %bb59
bb59:
  %t250 = load i64, ptr %l20, !tbaa !24
  %t252 = add i64 %t250, 1
  store i64 %t252, ptr %l20, !tbaa !24
  br label %bb53
bb60:
  %t254 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t255 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t256 = load { i64, ptr }, ptr %l15, !tbaa !27
  call void @compiler_2ftyped_3aLandings_2ector(ptr %t257, ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t254, { i64, ptr } %t255, { i64, ptr } %t256)
  call void @llvm.memmove.p0.p0.i64(ptr %l154, ptr %t257, i64 616, i1 false)
  br label %bb61
bb61:
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %l154, i64 616, i1 false)
  store ptr %l22, ptr %l155, !tbaa !29
  %t261 = load ptr, ptr %l2, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Body", ptr %t261, i32 0, i32 11
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = icmp eq ptr %t264, null
  br i1 %t266, label %bb62, label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_425e372b56221920_2b3f0385a64c2504)
  unreachable
bb63:
  br label %bb64
bb64:
  %t268 = load ptr, ptr %l2, !tbaa !29
  %t270 = getelementptr %"compiler/typed:Body", ptr %t268, i32 0, i32 11
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t272 = load ptr, ptr %l155, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eBody(ptr %s0, ptr %v0, ptr %t272, ptr %t271)
  br label %bb65
bb65:
  store i64 0, ptr %l23, !tbaa !24
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3)
  store i64 %t275, ptr %l162
  br label %bb66
bb66:
  %t276 = load i64, ptr %l162, !tbaa !24
  store i64 %t276, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t277 = load i64, ptr %l24, !tbaa !24
  %t278 = load i64, ptr %l23, !tbaa !24
  %t281 = icmp sgt i64 %t277, %t278
  br i1 %t281, label %bb67, label %bb68
bb67:
  %t283 = load i64, ptr %l25, !tbaa !24
  %t285 = icmp sgt i64 %t283, 0
  br i1 %t285, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb72
bb69:
  %t287 = load i64, ptr %l24, !tbaa !24
  %t288 = load i64, ptr %l23, !tbaa !24
  %t291 = sub i64 %t287, %t288
  %t292 = load i64, ptr %l25, !tbaa !24
  %t295 = add i64 %t291, %t292
  %t297 = sub i64 %t295, 1
  %t298 = load i64, ptr %l25, !tbaa !24
  %t301 = sdiv i64 %t297, %t298
  store i64 %t301, ptr %l169, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l169, !tbaa !24
  br label %bb71
bb71:
  %t303 = load i64, ptr %l169, !tbaa !24
  store i64 %t303, ptr %l166, !tbaa !24
  br label %bb72
bb72:
  %t304 = load i64, ptr %l166, !tbaa !24
  store i64 %t304, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb73
bb73:
  store %olang.scope zeroinitializer, ptr %s13
  %t305 = load i64, ptr %l27, !tbaa !24
  %t306 = load i64, ptr %l26, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb74, label %bb75
bb74:
  call void @__olang_scope_close(ptr %s13)
  br label %bb110
bb75:
  br label %bb76
bb76:
  %t313 = load i64, ptr %l23, !tbaa !24
  %t314 = load i64, ptr %l27, !tbaa !24
  %t315 = load i64, ptr %l25, !tbaa !24
  %t318 = mul i64 %t314, %t315
  %t321 = add i64 %t313, %t318
  store i64 %t321, ptr %l28, !tbaa !24
  %t323 = getelementptr %"compiler/typed:Landings", ptr %l22, i32 0, i32 3
  %t324 = load { i64, ptr }, ptr %t323, !tbaa !27
  store { i64, ptr } %t324, ptr %l187, !tbaa !27
  %t325 = load i64, ptr %l28, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i1, ptr %t328, i64 %t325
  %t330 = load i1, ptr %t329, !tbaa !31
  %t332 = xor i1 %t330, true
  br i1 %t332, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s13)
  br label %bb109
bb78:
  br label %bb79
bb79:
  %t334 = load i64, ptr %l28, !tbaa !24
  %t337 = call %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %s0, ptr %l3, i64 %t334)
  store %"compiler/check:landing" %t337, ptr %l193
  br label %bb80
bb80:
  %t338 = load %"compiler/check:landing", ptr %l193
  store %"compiler/check:landing" %t338, ptr %l29
  %t339 = getelementptr %"compiler/typed:Landings", ptr %l22, i32 0, i32 5
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  store { i64, ptr } %t340, ptr %l194, !tbaa !27
  %t341 = load i64, ptr %l28, !tbaa !24
  %t343 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr i1, ptr %t344, i64 %t341
  %t346 = load i1, ptr %t345, !tbaa !31
  br i1 %t346, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l197, !tbaa !21
  br label %bb83
bb82:
  %t348 = getelementptr %"compiler/typed:Landings", ptr %l22, i32 0, i32 4
  %t349 = load { i64, ptr }, ptr %t348, !tbaa !27
  store { i64, ptr } %t349, ptr %l198, !tbaa !27
  %t350 = load i64, ptr %l28, !tbaa !24
  %t352 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !27
  %t354 = getelementptr i64, ptr %t353, i64 %t350
  %t355 = load i64, ptr %t354, !tbaa !34
  %t357 = icmp sge i64 %t355, 0
  store i1 %t357, ptr %l197, !tbaa !21
  br label %bb83
bb83:
  %t359 = load i1, ptr %l197, !tbaa !21
  br i1 %t359, label %bb84, label %bb85
bb84:
  %t360 = load ptr, ptr %l0, !tbaa !29
  store ptr %t360, ptr %l202, !tbaa !29
  %t361 = load ptr, ptr %l2, !tbaa !29
  store ptr %t361, ptr %l203, !tbaa !29
  store ptr %l29, ptr %l204, !tbaa !29
  %t362 = getelementptr %"compiler/typed:Landings", ptr %l22, i32 0, i32 5
  %t363 = load { i64, ptr }, ptr %t362, !tbaa !27
  store { i64, ptr } %t363, ptr %l205, !tbaa !27
  %t364 = load i64, ptr %l28, !tbaa !24
  %t366 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr i1, ptr %t367, i64 %t364
  %t369 = load i1, ptr %t368, !tbaa !31
  %t371 = xor i1 %t369, true
  br i1 %t371, label %bb86, label %bb87
bb85:
  br label %bb90
bb86:
  %t373 = getelementptr %"compiler/typed:Landings", ptr %l22, i32 0, i32 4
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !27
  store { i64, ptr } %t374, ptr %l210, !tbaa !27
  %t375 = load i64, ptr %l28, !tbaa !24
  %t377 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr i64, ptr %t378, i64 %t375
  %t380 = load i64, ptr %t379, !tbaa !34
  store i64 %t380, ptr %l209, !tbaa !24
  br label %bb88
bb87:
  store i64 -1, ptr %l209, !tbaa !24
  br label %bb88
bb88:
  %t382 = load ptr, ptr %l202, !tbaa !29
  %t383 = load ptr, ptr %l203, !tbaa !29
  %t384 = load ptr, ptr %l204, !tbaa !29
  %t385 = load i64, ptr %l209, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandedNamed(ptr %v0, ptr %v0, ptr %s13, ptr %t382, ptr %t383, ptr %t384, i64 %t385)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s13)
  br label %bb109
bb90:
  %t386 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 4
  %t387 = load i64, ptr %t386, !tbaa !24
  %t389 = icmp slt i64 %t387, 0
  br i1 %t389, label %bb91, label %bb92
bb91:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/check:Checker", ptr %t391, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t396 = getelementptr %"compiler/generic:Program", ptr %t394, i32 0, i32 0
  %t397 = load ptr, ptr %t396, !tbaa !29
  %t399 = getelementptr %"compiler/load:Loader", ptr %t397, i32 0, i32 4
  %t400 = load ptr, ptr %t399, !tbaa !29
  store ptr %t400, ptr %l218, !tbaa !29
  %t401 = load ptr, ptr %l2, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Body", ptr %t401, i32 0, i32 3
  %t404 = load i64, ptr %t403, !tbaa !24
  %t405 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 2
  %t406 = getelementptr %"compiler/source:Span", ptr %t405, i32 0, i32 0
  %t407 = load i32, ptr %t406, !tbaa !23
  %t409 = sext i32 %t407 to i64
  %t410 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 2
  %t411 = getelementptr %"compiler/source:Span", ptr %t410, i32 0, i32 1
  %t412 = load i32, ptr %t411, !tbaa !23
  %t414 = sext i32 %t412 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t415
  %t416 = getelementptr { i64, [3 x i64] }, ptr %t415, i32 0, i32 0
  store i64 3, ptr %t416
  %t418 = insertvalue { i64, i64, i64 } undef, i64 %t404, 0
  %t420 = insertvalue { i64, i64, i64 } %t418, i64 %t409, 1
  %t422 = insertvalue { i64, i64, i64 } %t420, i64 %t414, 2
  %t423 = getelementptr { i64, [3 x i64] }, ptr %t415, i32 0, i32 1
  store { i64, i64, i64 } %t422, ptr %t423
  %t424 = load { i64, [3 x i64] }, ptr %t415
  store { i64, [3 x i64] } %t424, ptr %l225
  %t425 = load ptr, ptr %l0, !tbaa !29
  store ptr %t425, ptr %l226, !tbaa !29
  %t426 = load ptr, ptr %l2, !tbaa !29
  %t428 = getelementptr %"compiler/typed:Body", ptr %t426, i32 0, i32 7
  %t429 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 1
  %t430 = load i64, ptr %t429, !tbaa !24
  %t433 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t428, i64 %t430)
  store %"compiler/typed:Local" %t433, ptr %l230
  br label %bb93
bb92:
  br label %bb98
bb93:
  %t434 = getelementptr %"compiler/typed:Local", ptr %l230, i32 0, i32 0
  %t435 = load i32, ptr %t434, !tbaa !23
  %t436 = load ptr, ptr %l226, !tbaa !29
  %t438 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t436, i32 %t435)
  store { i64, ptr } %t438, ptr %l232
  br label %bb94
bb94:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 3
  %t441 = load i32, ptr %t440, !tbaa !23
  %t444 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t439, i32 %t441)
  store { i64, ptr } %t444, ptr %l235
  br label %bb95
bb95:
  %t445 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t445, 0
  %t447 = extractvalue { i64, ptr } %t445, 1
  %t448 = mul i64 %t446, 1
  %t449 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t448)
  call void @llvm.memcpy.p0.p0.i64(ptr %t449, ptr %t447, i64 %t448, i1 false)
  %t450 = insertvalue { i64, ptr } undef, i64 %t446, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t449, 1
  %t452 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t454 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueAfter(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t452, { i64, ptr } %t451)
  store %"compiler/diagmsg:Msg" %t454, ptr %l237
  br label %bb96
bb96:
  %t455 = load ptr, ptr %l218, !tbaa !29
  %t456 = load { i64, [3 x i64] }, ptr %l225
  %t457 = load %"compiler/diagmsg:Msg", ptr %l237
  %t458 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t455, { i64, [3 x i64] } %t456, %"compiler/diagmsg:Msg" %t457)
  store i64 %t458, ptr %l238
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s13)
  br label %bb109
bb98:
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t461 = getelementptr %"compiler/check:Checker", ptr %t459, i32 0, i32 1
  %t462 = load ptr, ptr %t461, !tbaa !29
  %t463 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 4
  %t464 = load i64, ptr %t463, !tbaa !24
  %t467 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t462, i64 %t464)
  store %"compiler/generic:Origin" %t467, ptr %l242
  br label %bb99
bb99:
  %t468 = load %"compiler/generic:Origin", ptr %l242
  store %"compiler/generic:Origin" %t468, ptr %l30
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l243, !tbaa !29
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"compiler/check:Checker", ptr %t470, i32 0, i32 1
  %t473 = load ptr, ptr %t472, !tbaa !29
  store ptr %t473, ptr %l245, !tbaa !29
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/check:Checker", ptr %t474, i32 0, i32 1
  %t477 = load ptr, ptr %t476, !tbaa !29
  %t478 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 4
  %t479 = load i64, ptr %t478, !tbaa !24
  %t482 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t477, i64 %t479)
  store i64 %t482, ptr %l249
  br label %bb100
bb100:
  %t483 = load ptr, ptr %l245, !tbaa !29
  %t484 = load i64, ptr %l249, !tbaa !24
  %t485 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s13, ptr %t483, i64 %t484)
  store ptr %t485, ptr %l250
  br label %bb101
bb101:
  %t486 = load ptr, ptr %l250, !tbaa !29
  %t488 = getelementptr %"compiler/ast:Func", ptr %t486, i32 0, i32 2
  %t489 = load i32, ptr %t488, !tbaa !23
  %t490 = load ptr, ptr %l243, !tbaa !29
  %t492 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t490, i32 %t489)
  store { i64, ptr } %t492, ptr %l253
  br label %bb102
bb102:
  %t493 = load { i64, ptr }, ptr %l253, !tbaa !27
  store { i64, ptr } %t493, ptr %l31, !tbaa !27
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/check:Checker", ptr %t494, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !29
  %t499 = getelementptr %"compiler/generic:Program", ptr %t497, i32 0, i32 0
  %t500 = load ptr, ptr %t499, !tbaa !29
  %t502 = getelementptr %"compiler/load:Loader", ptr %t500, i32 0, i32 4
  %t503 = load ptr, ptr %t502, !tbaa !29
  store ptr %t503, ptr %l257, !tbaa !29
  %t504 = getelementptr %"compiler/generic:Origin", ptr %l30, i32 0, i32 0
  %t505 = load i64, ptr %t504, !tbaa !24
  %t506 = getelementptr %"compiler/generic:Origin", ptr %l30, i32 0, i32 1
  %t507 = getelementptr %"compiler/source:Span", ptr %t506, i32 0, i32 0
  %t508 = load i32, ptr %t507, !tbaa !23
  %t510 = sext i32 %t508 to i64
  %t511 = getelementptr %"compiler/generic:Origin", ptr %l30, i32 0, i32 1
  %t512 = getelementptr %"compiler/source:Span", ptr %t511, i32 0, i32 1
  %t513 = load i32, ptr %t512, !tbaa !23
  %t515 = sext i32 %t513 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t516
  %t517 = getelementptr { i64, [3 x i64] }, ptr %t516, i32 0, i32 0
  store i64 3, ptr %t517
  %t519 = insertvalue { i64, i64, i64 } undef, i64 %t505, 0
  %t521 = insertvalue { i64, i64, i64 } %t519, i64 %t510, 1
  %t523 = insertvalue { i64, i64, i64 } %t521, i64 %t515, 2
  %t524 = getelementptr { i64, [3 x i64] }, ptr %t516, i32 0, i32 1
  store { i64, i64, i64 } %t523, ptr %t524
  %t525 = load { i64, [3 x i64] }, ptr %t516
  store { i64, [3 x i64] } %t525, ptr %l263
  %t526 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t526, ptr %l264, !tbaa !27
  %t527 = load ptr, ptr %l0, !tbaa !29
  store ptr %t527, ptr %l265, !tbaa !29
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t529 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 4
  %t530 = load i64, ptr %t529, !tbaa !24
  %t531 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 3
  %t532 = load i32, ptr %t531, !tbaa !23
  %t536 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueArg(ptr %v0, ptr %t528, i64 %t530, i32 %t532)
  store i32 %t536, ptr %l269
  br label %bb103
bb103:
  %t537 = load ptr, ptr %l265, !tbaa !29
  %t538 = load i32, ptr %l269, !tbaa !23
  %t539 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t537, i32 %t538)
  store { i64, ptr } %t539, ptr %l270
  br label %bb104
bb104:
  %t540 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t541 = extractvalue { i64, ptr } %t540, 0
  %t542 = extractvalue { i64, ptr } %t540, 1
  %t543 = mul i64 %t541, 1
  %t544 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t543)
  call void @llvm.memcpy.p0.p0.i64(ptr %t544, ptr %t542, i64 %t543, i1 false)
  %t545 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t544, 1
  %t547 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t549 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueNeedsCopy(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t547, { i64, ptr } %t546)
  store %"compiler/diagmsg:Msg" %t549, ptr %l272
  br label %bb105
bb105:
  %t550 = load ptr, ptr %l257, !tbaa !29
  %t551 = load { i64, [3 x i64] }, ptr %l263
  %t552 = load %"compiler/diagmsg:Msg", ptr %l272
  %t553 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v0, ptr %t550, { i64, [3 x i64] } %t551, %"compiler/diagmsg:Msg" %t552)
  store i64 %t553, ptr %l273
  br label %bb106
bb106:
  %t554 = load i64, ptr %l273, !tbaa !24
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/check:Checker", ptr %t555, i32 0, i32 1
  %t558 = load ptr, ptr %t557, !tbaa !29
  %t560 = getelementptr %"compiler/generic:Program", ptr %t558, i32 0, i32 0
  %t561 = load ptr, ptr %t560, !tbaa !29
  %t563 = getelementptr %"compiler/load:Loader", ptr %t561, i32 0, i32 4
  %t564 = load ptr, ptr %t563, !tbaa !29
  store ptr %t564, ptr %l277, !tbaa !29
  store i64 %t554, ptr %l278, !tbaa !24
  %t566 = load ptr, ptr %l2, !tbaa !29
  %t568 = getelementptr %"compiler/typed:Body", ptr %t566, i32 0, i32 3
  %t569 = load i64, ptr %t568, !tbaa !24
  %t570 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 2
  %t571 = getelementptr %"compiler/source:Span", ptr %t570, i32 0, i32 0
  %t572 = load i32, ptr %t571, !tbaa !23
  %t574 = sext i32 %t572 to i64
  %t575 = getelementptr %"compiler/check:landing", ptr %l29, i32 0, i32 2
  %t576 = getelementptr %"compiler/source:Span", ptr %t575, i32 0, i32 1
  %t577 = load i32, ptr %t576, !tbaa !23
  %t579 = sext i32 %t577 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t580
  %t581 = getelementptr { i64, [3 x i64] }, ptr %t580, i32 0, i32 0
  store i64 3, ptr %t581
  %t583 = insertvalue { i64, i64, i64 } undef, i64 %t569, 0
  %t585 = insertvalue { i64, i64, i64 } %t583, i64 %t574, 1
  %t587 = insertvalue { i64, i64, i64 } %t585, i64 %t579, 2
  %t588 = getelementptr { i64, [3 x i64] }, ptr %t580, i32 0, i32 1
  store { i64, i64, i64 } %t587, ptr %t588
  %t589 = load { i64, [3 x i64] }, ptr %t580
  store { i64, [3 x i64] } %t589, ptr %l285
  %t590 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t592 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t590, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t592, ptr %l287
  br label %bb107
bb107:
  %t593 = load ptr, ptr %l277, !tbaa !29
  %t594 = load i64, ptr %l278, !tbaa !24
  %t595 = load { i64, [3 x i64] }, ptr %l285
  %t596 = load %"compiler/diagmsg:Msg", ptr %l287
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t593, i64 %t594, { i64, [3 x i64] } %t595, %"compiler/diagmsg:Msg" %t596)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s13)
  br label %bb109
bb109:
  %t597 = load i64, ptr %l27, !tbaa !24
  %t599 = add i64 %t597, 1
  store i64 %t599, ptr %l27, !tbaa !24
  br label %bb73
bb110:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/check:laneNode"
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca { i64, i64, i64, i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %lp19 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i64
  %l22 = alloca { i64, i64, i64 }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca { i64, i64, i64, i64, i64 }
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i64
  %l41 = alloca %"compiler/source:Span"
  %l45 = alloca %"compiler/check:laneNode"
  %l52 = alloca ptr
  %l55 = alloca i1
  %l56 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i64
  %l68 = alloca ptr
  %l71 = alloca i64
  %l75 = alloca %"compiler/check:laneVals"
  %l80 = alloca ptr
  %l81 = alloca i32
  %l84 = alloca ptr
  %l86 = alloca i32
  %l88 = alloca i32
  %l89 = alloca i32
  %l93 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i1
  %l101 = alloca ptr
  %l105 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca i32
  %l108 = alloca i32
  %l112 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca %"compiler/source:Span"
  %l116 = alloca i32
  %l118 = alloca ptr
  %l121 = alloca %"compiler/typed:Make"
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l137 = alloca i32
  %l139 = alloca ptr
  %l140 = alloca { i64, i64, i64, i64, i64 }
  %l146 = alloca ptr
  %l147 = alloca %"compiler/source:Span"
  %l148 = alloca i64
  %l149 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca i32
  %l163 = alloca ptr
  %l167 = alloca ptr
  %l169 = alloca %"compiler/typed:Elem"
  %l172 = alloca ptr
  %l173 = alloca %"compiler/source:Span"
  %l174 = alloca ptr
  %l179 = alloca ptr
  %l192 = alloca ptr
  %l198 = alloca i32
  %l201 = alloca i64
  %l205 = alloca { i64, i64, i64 }
  %l209 = alloca ptr
  %l210 = alloca %"compiler/source:Span"
  %l214 = alloca ptr
  %l215 = alloca { i64, i64, i64, i64, i64 }
  %l221 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca i64
  %l224 = alloca ptr
  %l228 = alloca ptr
  %l229 = alloca ptr
  %l230 = alloca ptr
  %l231 = alloca %"compiler/source:Span"
  %l236 = alloca ptr
  %l251 = alloca ptr
  %l252 = alloca %"compiler/source:Span"
  %l253 = alloca i32
  %l257 = alloca ptr
  %l258 = alloca ptr
  %l259 = alloca ptr
  %l263 = alloca i32
  %l265 = alloca %"compiler/typed:Collect"
  %l272 = alloca ptr
  %l273 = alloca %"compiler/source:Span"
  %l278 = alloca ptr
  %l280 = alloca %"compiler/source:Span"
  %l285 = alloca i32
  %l289 = alloca { i64, ptr }
  %l291 = alloca %"compiler/typed:Seq"
  %rv = alloca ptr
  %t196 = alloca { i64, [5 x i64] }, align 8
  %t216 = alloca { i64, [3 x i64] }, align 8
  %t291 = alloca { i64, [4 x i64] }, align 8
  %t316 = alloca { i64, [4 x i64] }, align 8
  %t342 = alloca { i64, [3 x i64] }, align 8
  %t463 = alloca { i64, [3 x i64] }, align 8
  %t527 = alloca { i64, [5 x i64] }, align 8
  %t585 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l36
  br label %bb1
bb1:
  %t6 = load i64, ptr %l36, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  store ptr %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t13)
  store %"compiler/source:Span" %t15, ptr %l41
  br label %bb5
bb5:
  %t16 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t16, ptr %l3
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 39
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/check:laneNode" %t23, ptr %l45
  br label %bb6
bb6:
  %t24 = load %"compiler/check:laneNode", ptr %l45
  store %"compiler/check:laneNode" %t24, ptr %l4
  %t25 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t30 = icmp eq i32 %t26, %t27
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l3
  %t34 = load i64, ptr %l2, !tbaa !24
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v2, ptr %t32, %"compiler/source:Span" %t33, i64 %t34)
  store ptr %t38, ptr %l52
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t39 = load ptr, ptr %l52, !tbaa !29
  store ptr %t39, ptr %rv
  br label %ret
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t42 = load i32, ptr %t41, !tbaa !23
  %t45 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t40, i32 %t42)
  store i1 %t45, ptr %l55
  br label %bb11
bb11:
  %t46 = load i1, ptr %l55, !tbaa !21
  br i1 %t46, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb15
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t54 = load i32, ptr %t53, !tbaa !23
  %t57 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t52, i32 %t54)
  store i1 %t57, ptr %l61
  br label %bb14
bb14:
  %t58 = load i1, ptr %l61, !tbaa !21
  store i1 %t58, ptr %l56, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l56, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l62, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t61, ptr %l63
  %t62 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0)
  store %"compiler/diagmsg:Msg" %t62, ptr %l64
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t63 = load ptr, ptr %l62, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l63
  %t65 = load %"compiler/diagmsg:Msg", ptr %l64
  %t66 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t63, %"compiler/source:Span" %t64, %"compiler/diagmsg:Msg" %t65)
  store i64 %t66, ptr %l65
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l3
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t67, %"compiler/source:Span" %t68)
  store ptr %t71, ptr %l68
  br label %bb20
bb20:
  %t72 = load ptr, ptr %l68, !tbaa !29
  store ptr %t72, ptr %rv
  br label %ret
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 37
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l71
  br label %bb22
bb22:
  %t78 = load i64, ptr %l71, !tbaa !24
  store i64 %t78, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l3
  %t81 = load i64, ptr %l2, !tbaa !24
  %t85 = call %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v2, ptr %t79, %"compiler/source:Span" %t80, i64 %t81)
  store %"compiler/check:laneVals" %t85, ptr %l75
  br label %bb23
bb23:
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 80, i64 8)
  store ptr %t86, ptr %lp6
  %t87 = load %"compiler/check:laneVals", ptr %l75
  %t88 = load ptr, ptr %lp6
  store %"compiler/check:laneVals" %t87, ptr %t88
  store ptr null, ptr %l7, !tbaa !29
  %t89 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t90 = load i64, ptr %t89, !tbaa !24
  %t92 = icmp sge i64 %t90, 0
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l80, !tbaa !29
  %t100 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t101 = load i32, ptr %t100, !tbaa !23
  store i32 %t101, ptr %l81, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  store ptr %t107, ptr %l84, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t108)
  store i32 %t110, ptr %l86
  br label %bb26
bb25:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t118 = load i32, ptr %t117, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t116, i32 %t118, i32 0)
  store i32 %t121, ptr %l198
  br label %bb53
bb26:
  %t122 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = load ptr, ptr %l84, !tbaa !29
  %t125 = load i32, ptr %l86, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t124, i32 %t125, i64 %t123)
  store i32 %t127, ptr %l88
  br label %bb27
bb27:
  %t128 = load ptr, ptr %l80, !tbaa !29
  %t129 = load i32, ptr %l81, !tbaa !23
  %t130 = load i32, ptr %l88, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t128, i32 %t129, i32 %t130)
  store i32 %t131, ptr %l89
  br label %bb28
bb28:
  %t132 = load i32, ptr %l89, !tbaa !23
  store i32 %t132, ptr %l8, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l3
  %t135 = load i32, ptr %l8, !tbaa !23
  %t139 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t133, %"compiler/source:Span" %t134, i32 %t135)
  store i64 %t139, ptr %l93
  br label %bb29
bb29:
  %t140 = load i64, ptr %l93, !tbaa !24
  store i64 %t140, ptr %l9, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 36
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t143)
  store i64 %t145, ptr %l96
  br label %bb30
bb30:
  %t146 = load i64, ptr %l96, !tbaa !24
  store i64 %t146, ptr %l10, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t149 = load i32, ptr %t148, !tbaa !23
  %t152 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %t147, i32 %t149)
  store i1 %t152, ptr %l99
  br label %bb31
bb31:
  %t153 = load i1, ptr %l99, !tbaa !21
  br i1 %t153, label %bb32, label %bb33
bb32:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 36
  store ptr %t156, ptr %l101, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l3
  %t159 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t160 = load i32, ptr %t159, !tbaa !23
  %t164 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v0, ptr %t157, %"compiler/source:Span" %t158, i32 %t160)
  store ptr %t164, ptr %l105
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t165 = load ptr, ptr %l101, !tbaa !29
  %t166 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t165, ptr %t166)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t167 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t167, ptr %l106
  %t168 = load i32, ptr %l8, !tbaa !23
  store i32 %t168, ptr %l107, !tbaa !23
  store i32 3, ptr %l108
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 36
  %t172 = load i64, ptr %l10, !tbaa !24
  %t175 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t171, i64 %t172)
  store { i64, ptr } %t175, ptr %l112
  br label %bb37
bb37:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l113, !tbaa !29
  %t177 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t177, ptr %l114
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t178)
  store i32 %t180, ptr %l116
  br label %bb38
bb38:
  %t181 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = load ptr, ptr %l113, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l114
  %t185 = load i32, ptr %l116, !tbaa !23
  %t187 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184, i32 %t185, i64 %t182)
  store ptr %t187, ptr %l118
  br label %bb39
bb39:
  %t188 = load ptr, ptr %l118, !tbaa !29
  %t189 = load i32, ptr %l108, !range !{i32 0, i32 5}
  %t190 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t193 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 %t189, i64 0, { i64, ptr } %t190, ptr %t188, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t193, ptr %l121
  br label %bb40
bb40:
  %t194 = load %"compiler/typed:Make", ptr %l121
  %t195 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t194, ptr %t195
  store { i64, [5 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 0
  store i64 7, ptr %t197
  %t198 = load %"compiler/source:Span", ptr %l106
  %t199 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t198, 0
  %t200 = load i32, ptr %l107, !tbaa !23
  %t201 = insertvalue { %"compiler/source:Span", i32, ptr } %t199, i32 %t200, 1
  %t203 = insertvalue { %"compiler/source:Span", i32, ptr } %t201, ptr %t195, 2
  %t204 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t203, ptr %t204
  %t205 = load { i64, [5 x i64] }, ptr %t196
  %t206 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store ptr %t206, ptr %lp11
  %t208 = load ptr, ptr %lp11
  store { i64, [5 x i64] } %t205, ptr %t208
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l3
  %t211 = load i64, ptr %l9, !tbaa !24
  %t213 = trunc i64 %t211 to i32
  %t215 = load ptr, ptr %lp11
  store { i64, [3 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [3 x i64] }, ptr %t216, i32 0, i32 0
  store i64 0, ptr %t217
  %t219 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t210, 0
  %t221 = insertvalue { %"compiler/source:Span", i32, ptr } %t219, i32 %t213, 1
  %t223 = insertvalue { %"compiler/source:Span", i32, ptr } %t221, ptr %t215, 2
  %t224 = getelementptr { i64, [3 x i64] }, ptr %t216, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t223, ptr %t224
  %t225 = load { i64, [3 x i64] }, ptr %t216
  %t227 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t225, ptr %t227
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t209, ptr %t227)
  br label %bb41
bb41:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l132, !tbaa !29
  %t231 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t231, ptr %l133
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l134, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t233, ptr %l135
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t234)
  store i32 %t236, ptr %l137
  br label %bb42
bb42:
  %t237 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 9
  %t238 = load i64, ptr %t237, !tbaa !24
  %t239 = load ptr, ptr %l134, !tbaa !29
  %t240 = load %"compiler/source:Span", ptr %l135
  %t241 = load i32, ptr %l137, !tbaa !23
  %t243 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t239, %"compiler/source:Span" %t240, i32 %t241, i64 %t238)
  store ptr %t243, ptr %l139
  br label %bb43
bb43:
  %t244 = load ptr, ptr %l132, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l133
  %t246 = load ptr, ptr %l139, !tbaa !29
  %t247 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t244, %"compiler/source:Span" %t245, ptr %t246, i64 0)
  store { i64, i64, i64, i64, i64 } %t247, ptr %l140
  br label %bb44
bb44:
  %t248 = load { i64, i64, i64, i64, i64 }, ptr %l140
  store { i64, i64, i64, i64, i64 } %t248, ptr %l12
  %t249 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 0
  %t250 = load i64, ptr %t249, !tbaa !24
  store i64 %t250, ptr %l13, !tbaa !24
  %t252 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 1
  %t253 = load i64, ptr %t252, !tbaa !24
  store i64 %t253, ptr %l14, !tbaa !24
  %t255 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 2
  %t256 = load i64, ptr %t255, !tbaa !24
  store i64 %t256, ptr %l15, !tbaa !24
  %t258 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 3
  %t259 = load i64, ptr %t258, !tbaa !24
  store i64 %t259, ptr %l16, !tbaa !24
  %t261 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l12, i32 0, i32 4
  %t262 = load i64, ptr %t261, !tbaa !24
  store i64 %t262, ptr %l17, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l146, !tbaa !29
  %t265 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t265, ptr %l147
  %t266 = load i64, ptr %l2, !tbaa !24
  store i64 %t266, ptr %l148, !tbaa !24
  %t267 = load ptr, ptr %lp6
  store ptr %t267, ptr %l149, !tbaa !29
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l3
  %t270 = load i64, ptr %l13, !tbaa !24
  %t274 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t268, %"compiler/source:Span" %t269, i64 %t270)
  store ptr %t274, ptr %l153
  br label %bb45
bb45:
  %t275 = load ptr, ptr %l146, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l147
  %t277 = load i64, ptr %l148, !tbaa !24
  %t278 = load ptr, ptr %l149, !tbaa !29
  %t279 = load ptr, ptr %l153, !tbaa !29
  %t280 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v0, ptr %v0, ptr %t275, %"compiler/source:Span" %t276, i64 %t277, ptr %t278, ptr %t279)
  store ptr %t280, ptr %l154
  br label %bb46
bb46:
  %t281 = load ptr, ptr %l154, !tbaa !29
  store ptr %t281, ptr %l18, !tbaa !29
  %t282 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t282, ptr %l155
  %t283 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t284 = load i32, ptr %t283, !tbaa !23
  store i32 %t284, ptr %l156, !tbaa !23
  %t285 = load %"compiler/source:Span", ptr %l3
  %t286 = load i32, ptr %l8, !tbaa !23
  %t287 = load i64, ptr %l9, !tbaa !24
  %t289 = trunc i64 %t287 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 0
  store i64 0, ptr %t292
  %t294 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t285, 0
  %t296 = insertvalue { %"compiler/source:Span", i32, i32 } %t294, i32 %t286, 1
  %t298 = insertvalue { %"compiler/source:Span", i32, i32 } %t296, i32 %t289, 2
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t298, ptr %t299
  %t300 = load { i64, [4 x i64] }, ptr %t291
  %t302 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t300, ptr %t302
  store ptr %t302, ptr %l163, !tbaa !29
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/source:Span", ptr %l3
  %t305 = load i64, ptr %l13, !tbaa !24
  %t309 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t303, %"compiler/source:Span" %t304, i64 %t305)
  store ptr %t309, ptr %l167
  br label %bb47
bb47:
  %t310 = load ptr, ptr %l163, !tbaa !29
  %t311 = load ptr, ptr %l167, !tbaa !29
  %t313 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t310, ptr %t311, i32 0)
  store %"compiler/typed:Elem" %t313, ptr %l169
  br label %bb48
bb48:
  %t314 = load %"compiler/typed:Elem", ptr %l169
  %t315 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Elem" %t314, ptr %t315
  store { i64, [4 x i64] } zeroinitializer, ptr %t316
  %t317 = getelementptr { i64, [4 x i64] }, ptr %t316, i32 0, i32 0
  store i64 4, ptr %t317
  %t318 = load %"compiler/source:Span", ptr %l155
  %t319 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t318, 0
  %t320 = load i32, ptr %l156, !tbaa !23
  %t321 = insertvalue { %"compiler/source:Span", i32, ptr } %t319, i32 %t320, 1
  %t323 = insertvalue { %"compiler/source:Span", i32, ptr } %t321, ptr %t315, 2
  %t324 = getelementptr { i64, [4 x i64] }, ptr %t316, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t323, ptr %t324
  %t325 = load { i64, [4 x i64] }, ptr %t316
  %t326 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store ptr %t326, ptr %lp19
  %t328 = load ptr, ptr %lp19
  store { i64, [4 x i64] } %t325, ptr %t328
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l172, !tbaa !29
  %t330 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t330, ptr %l173
  %t331 = load ptr, ptr %lp19
  store ptr %t331, ptr %l174, !tbaa !29
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load ptr, ptr %l18, !tbaa !29
  %t334 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t335 = load i32, ptr %t334, !tbaa !23
  %t336 = load %"compiler/source:Span", ptr %l3
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t332, ptr %t333, i32 %t335, %"compiler/source:Span" %t336)
  store ptr %t341, ptr %l179
  br label %bb49
bb49:
  store { i64, [3 x i64] } zeroinitializer, ptr %t342
  %t343 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 0
  store i64 1, ptr %t343
  %t344 = load %"compiler/source:Span", ptr %l173
  %t345 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t344, 0
  %t346 = load ptr, ptr %l174, !tbaa !29
  %t347 = insertvalue { %"compiler/source:Span", ptr, ptr } %t345, ptr %t346, 1
  %t348 = load ptr, ptr %l179, !tbaa !29
  %t349 = insertvalue { %"compiler/source:Span", ptr, ptr } %t347, ptr %t348, 2
  %t350 = getelementptr { i64, [3 x i64] }, ptr %t342, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t349, ptr %t350
  %t351 = load { i64, [3 x i64] }, ptr %t342
  %t353 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t351, ptr %t353
  %t354 = load ptr, ptr %l172, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t354, ptr %t353)
  br label %bb50
bb50:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l3
  %t358 = load i64, ptr %l13, !tbaa !24
  %t359 = load i64, ptr %l14, !tbaa !24
  %t360 = load i64, ptr %l15, !tbaa !24
  %t361 = load i64, ptr %l16, !tbaa !24
  %t362 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t356, %"compiler/source:Span" %t357, i64 %t358, i64 %t359, i64 %t360, i64 %t361, i64 %t362)
  br label %bb51
bb51:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l3
  %t372 = load i64, ptr %l9, !tbaa !24
  %t376 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t370, %"compiler/source:Span" %t371, i64 %t372)
  store ptr %t376, ptr %l192
  br label %bb52
bb52:
  %t377 = load ptr, ptr %l192, !tbaa !29
  store ptr %t377, ptr %l7, !tbaa !29
  br label %bb67
bb53:
  %t379 = load i32, ptr %l198, !tbaa !23
  store i32 %t379, ptr %l20, !tbaa !23
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 37
  %t384 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t382)
  store i64 %t384, ptr %l201
  br label %bb54
bb54:
  %t385 = load i64, ptr %l201, !tbaa !24
  store i64 %t385, ptr %l21, !tbaa !24
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load %"compiler/source:Span", ptr %l3
  %t391 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t386, i32 9, %"compiler/source:Span" %t387)
  store { i64, i64, i64 } %t391, ptr %l205
  br label %bb55
bb55:
  %t392 = load { i64, i64, i64 }, ptr %l205
  store { i64, i64, i64 } %t392, ptr %l22
  %t393 = getelementptr { i64, i64, i64 }, ptr %l22, i32 0, i32 0
  %t394 = load i64, ptr %t393, !tbaa !24
  store i64 %t394, ptr %l23, !tbaa !24
  %t396 = getelementptr { i64, i64, i64 }, ptr %l22, i32 0, i32 1
  %t397 = load i64, ptr %t396, !tbaa !24
  store i64 %t397, ptr %l24, !tbaa !24
  %t399 = getelementptr { i64, i64, i64 }, ptr %l22, i32 0, i32 2
  %t400 = load i64, ptr %t399, !tbaa !24
  store i64 %t400, ptr %l25, !tbaa !24
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l209, !tbaa !29
  %t403 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t403, ptr %l210
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load %"compiler/source:Span", ptr %l3
  %t406 = load ptr, ptr %lp6
  %t407 = getelementptr %"compiler/check:laneVals", ptr %t406, i32 0, i32 0
  %t408 = load i64, ptr %t407, !tbaa !24
  %t412 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t404, %"compiler/source:Span" %t405, i64 %t408)
  store ptr %t412, ptr %l214
  br label %bb56
bb56:
  %t413 = load ptr, ptr %l209, !tbaa !29
  %t414 = load %"compiler/source:Span", ptr %l210
  %t415 = load ptr, ptr %l214, !tbaa !29
  %t416 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t413, %"compiler/source:Span" %t414, ptr %t415, i64 0)
  store { i64, i64, i64, i64, i64 } %t416, ptr %l215
  br label %bb57
bb57:
  %t417 = load { i64, i64, i64, i64, i64 }, ptr %l215
  store { i64, i64, i64, i64, i64 } %t417, ptr %l26
  %t418 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 0
  %t419 = load i64, ptr %t418, !tbaa !24
  store i64 %t419, ptr %l27, !tbaa !24
  %t421 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 1
  %t422 = load i64, ptr %t421, !tbaa !24
  store i64 %t422, ptr %l28, !tbaa !24
  %t424 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 2
  %t425 = load i64, ptr %t424, !tbaa !24
  store i64 %t425, ptr %l29, !tbaa !24
  %t427 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 3
  %t428 = load i64, ptr %t427, !tbaa !24
  store i64 %t428, ptr %l30, !tbaa !24
  %t430 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l26, i32 0, i32 4
  %t431 = load i64, ptr %t430, !tbaa !24
  store i64 %t431, ptr %l31, !tbaa !24
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l221, !tbaa !29
  %t434 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t434, ptr %l222
  %t435 = load i64, ptr %l2, !tbaa !24
  store i64 %t435, ptr %l223, !tbaa !24
  %t436 = load ptr, ptr %lp6
  store ptr %t436, ptr %l224, !tbaa !29
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l3
  %t439 = load i64, ptr %l27, !tbaa !24
  %t443 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t437, %"compiler/source:Span" %t438, i64 %t439)
  store ptr %t443, ptr %l228
  br label %bb58
bb58:
  %t444 = load ptr, ptr %l221, !tbaa !29
  %t445 = load %"compiler/source:Span", ptr %l222
  %t446 = load i64, ptr %l223, !tbaa !24
  %t447 = load ptr, ptr %l224, !tbaa !29
  %t448 = load ptr, ptr %l228, !tbaa !29
  %t449 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t444, %"compiler/source:Span" %t445, i64 %t446, ptr %t447, ptr %t448)
  store ptr %t449, ptr %l229
  br label %bb59
bb59:
  %t450 = load ptr, ptr %l229, !tbaa !29
  %t451 = load ptr, ptr %l0, !tbaa !29
  store ptr %t451, ptr %l230, !tbaa !29
  %t452 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t452, ptr %l231
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 8
  %t456 = load i32, ptr %t455, !tbaa !23
  %t457 = load %"compiler/source:Span", ptr %l3
  %t462 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t453, ptr %t450, i32 %t456, %"compiler/source:Span" %t457)
  store ptr %t462, ptr %l236
  br label %bb60
bb60:
  store { i64, [3 x i64] } zeroinitializer, ptr %t463
  %t464 = getelementptr { i64, [3 x i64] }, ptr %t463, i32 0, i32 0
  store i64 15, ptr %t464
  %t465 = load %"compiler/source:Span", ptr %l231
  %t466 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t465, 0
  %t467 = load ptr, ptr %l236, !tbaa !29
  %t468 = insertvalue { %"compiler/source:Span", ptr } %t466, ptr %t467, 1
  %t469 = getelementptr { i64, [3 x i64] }, ptr %t463, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t468, ptr %t469
  %t470 = load { i64, [3 x i64] }, ptr %t463
  %t472 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t470, ptr %t472
  %t473 = load ptr, ptr %l230, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t473, ptr %t472)
  br label %bb61
bb61:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load %"compiler/source:Span", ptr %l3
  %t477 = load i64, ptr %l27, !tbaa !24
  %t478 = load i64, ptr %l28, !tbaa !24
  %t479 = load i64, ptr %l29, !tbaa !24
  %t480 = load i64, ptr %l30, !tbaa !24
  %t481 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t475, %"compiler/source:Span" %t476, i64 %t477, i64 %t478, i64 %t479, i64 %t480, i64 %t481)
  br label %bb62
bb62:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l23, !tbaa !24
  %t491 = load i64, ptr %l24, !tbaa !24
  %t492 = load i64, ptr %l25, !tbaa !24
  %t493 = load i64, ptr %l21, !tbaa !24
  %t499 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t489, i64 %t490, i64 %t491, i64 %t492, i64 %t493)
  store ptr %t499, ptr %l251
  br label %bb63
bb63:
  %t500 = load ptr, ptr %l251, !tbaa !29
  store ptr %t500, ptr %l33, !tbaa !29
  %t501 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t501, ptr %l252
  %t502 = load i32, ptr %l20, !tbaa !23
  store i32 %t502, ptr %l253, !tbaa !23
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load %"compiler/source:Span", ptr %l3
  %t505 = load ptr, ptr %lp6
  %t506 = getelementptr %"compiler/check:laneVals", ptr %t505, i32 0, i32 0
  %t507 = load i64, ptr %t506, !tbaa !24
  %t511 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t503, %"compiler/source:Span" %t504, i64 %t507)
  store ptr %t511, ptr %l257
  br label %bb64
bb64:
  %t512 = load ptr, ptr %l257, !tbaa !29
  store ptr %t512, ptr %l258, !tbaa !29
  %t513 = load ptr, ptr %l33, !tbaa !29
  store ptr %t513, ptr %l259, !tbaa !29
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load %"compiler/source:Span", ptr %l3
  %t519 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t514, i32 3, %"compiler/source:Span" %t515)
  store i32 %t519, ptr %l263
  br label %bb65
bb65:
  %t520 = load ptr, ptr %l258, !tbaa !29
  %t521 = load ptr, ptr %l259, !tbaa !29
  %t522 = load i32, ptr %l263, !tbaa !23
  %t524 = call %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %t520, ptr %t521, i32 %t522, i32 0, i1 true)
  store %"compiler/typed:Collect" %t524, ptr %l265
  br label %bb66
bb66:
  %t525 = load %"compiler/typed:Collect", ptr %l265
  %t526 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Collect" %t525, ptr %t526
  store { i64, [5 x i64] } zeroinitializer, ptr %t527
  %t528 = getelementptr { i64, [5 x i64] }, ptr %t527, i32 0, i32 0
  store i64 8, ptr %t528
  %t529 = load %"compiler/source:Span", ptr %l252
  %t530 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t529, 0
  %t531 = load i32, ptr %l253, !tbaa !23
  %t532 = insertvalue { %"compiler/source:Span", i32, ptr } %t530, i32 %t531, 1
  %t534 = insertvalue { %"compiler/source:Span", i32, ptr } %t532, ptr %t526, 2
  %t535 = getelementptr { i64, [5 x i64] }, ptr %t527, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t534, ptr %t535
  %t536 = load { i64, [5 x i64] }, ptr %t527
  %t538 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t536, ptr %t538
  store ptr %t538, ptr %l7, !tbaa !29
  br label %bb67
bb67:
  %t540 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 10
  %t541 = load i32, ptr %t540, !tbaa !23
  %t542 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t545 = icmp ne i32 %t541, %t542
  br i1 %t545, label %bb68, label %bb69
bb68:
  %t547 = load ptr, ptr %l0, !tbaa !29
  store ptr %t547, ptr %l272, !tbaa !29
  %t548 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t548, ptr %l273
  %t549 = load ptr, ptr %l7, !tbaa !29
  %t551 = icmp eq ptr %t549, null
  br i1 %t551, label %bb70, label %bb71
bb69:
  br label %bb74
bb70:
  call void @__olang_check_failed(ptr @olang_loc_34e811dc0ec4ef70_be6d979bbdd0f614)
  unreachable
bb71:
  br label %bb72
bb72:
  %t553 = load ptr, ptr %l7, !tbaa !29
  %t554 = getelementptr %"compiler/check:laneNode", ptr %l4, i32 0, i32 10
  %t555 = load i32, ptr %t554, !tbaa !23
  %t556 = load ptr, ptr %l272, !tbaa !29
  %t557 = load %"compiler/source:Span", ptr %l273
  %t560 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v2, ptr %v2, ptr %t556, %"compiler/source:Span" %t557, ptr %t553, i32 %t555)
  store ptr %t560, ptr %l278
  br label %bb73
bb73:
  %t561 = load ptr, ptr %l278, !tbaa !29
  store ptr %t561, ptr %l7, !tbaa !29
  br label %bb74
bb74:
  %t563 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t563, ptr %l280
  %t564 = load ptr, ptr %l7, !tbaa !29
  %t566 = icmp eq ptr %t564, null
  br i1 %t566, label %bb75, label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_6d548f41f8fa1c4f_7a636e93a1794123)
  unreachable
bb76:
  br label %bb77
bb77:
  %t568 = load ptr, ptr %l7, !tbaa !29
  %t571 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t568)
  store i32 %t571, ptr %l285
  br label %bb78
bb78:
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/check:Checker", ptr %t572, i32 0, i32 37
  %t575 = load i64, ptr %l5, !tbaa !24
  %t578 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t574, i64 %t575)
  store { i64, ptr } %t578, ptr %l289
  br label %bb79
bb79:
  %t579 = load ptr, ptr %l7, !tbaa !29
  %t580 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t582 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t580, ptr %t579, i1 false)
  store %"compiler/typed:Seq" %t582, ptr %l291
  br label %bb80
bb80:
  %t583 = load %"compiler/typed:Seq", ptr %l291
  %t584 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Seq" %t583, ptr %t584
  store { i64, [5 x i64] } zeroinitializer, ptr %t585
  %t586 = getelementptr { i64, [5 x i64] }, ptr %t585, i32 0, i32 0
  store i64 12, ptr %t586
  %t587 = load %"compiler/source:Span", ptr %l280
  %t588 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t587, 0
  %t589 = load i32, ptr %l285, !tbaa !23
  %t590 = insertvalue { %"compiler/source:Span", i32, ptr } %t588, i32 %t589, 1
  %t592 = insertvalue { %"compiler/source:Span", i32, ptr } %t590, ptr %t584, 2
  %t593 = getelementptr { i64, [5 x i64] }, ptr %t585, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t592, ptr %t593
  %t594 = load { i64, [5 x i64] }, ptr %t585
  %t596 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t594, ptr %t596
  store ptr %t596, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/check:reflList"
  %l3 = alloca { { i64, ptr }, { i64, ptr } }
  %lp4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca { { i64, ptr }, { i64, ptr } }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/check:reflList" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t6 = icmp eq i32 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 1152921504606846975
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_5ab97e381db75496_a4ed3933adca62ca)
  unreachable
bb5:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_5ab97e381db75496_a4ed3933adca62ca)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %l14, !tbaa !23
  %t22 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l15, !tbaa !24
  %t24 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l16, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t26)
  store ptr %t28, ptr %l18
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t31 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = load ptr, ptr %l13, !tbaa !29
  %t34 = load i32, ptr %l14, !tbaa !23
  %t35 = load i64, ptr %l15, !tbaa !24
  %t36 = load i64, ptr %l16, !tbaa !24
  %t38 = call { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %s0, ptr %t33, i32 %t34, i64 %t35, i64 %t36, i64 %t32)
  store { { i64, ptr }, { i64, ptr } } %t38, ptr %l21
  br label %bb9
bb9:
  %t39 = load { { i64, ptr }, { i64, ptr } }, ptr %l21
  store { { i64, ptr }, { i64, ptr } } %t39, ptr %l3
  %t40 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l23, !tbaa !24
  %t44 = load i64, ptr %l23, !tbaa !24
  %t45 = mul i64 %t44, 8
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l24, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l23, !tbaa !24
  %t54 = mul i64 %t53, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t55, ptr %lp4
  %t56 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t57 = load ptr, ptr %lp4
  store { i64, ptr } %t56, ptr %t57, !tbaa !27
  %t58 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l3, i32 0, i32 1
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l5, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t61, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t63, ptr %l27
  br label %bb10
bb10:
  %t64 = load i1, ptr %l27, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb11, label %bb12
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l29, !tbaa !29
  store %"compiler/source:Span" %a1, ptr %l30
  %t69 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 2
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = call { i64, ptr } @compiler_2fcheck_2elistName(ptr %v0, i64 %t70)
  store { i64, ptr } %t72, ptr %l32
  br label %bb13
bb12:
  br label %bb21
bb13:
  %t73 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l33, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:reflList", ptr %l2, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t80, i32 %t82)
  store { i64, ptr } %t85, ptr %l36
  br label %bb14
bb14:
  %t86 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t97 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNotList(ptr %v0, ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t94, { i64, ptr } %t92, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t97, ptr %l39
  br label %bb15
bb15:
  %t98 = load ptr, ptr %l29, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l30
  %t100 = load %"compiler/diagmsg:Msg", ptr %l39
  %t101 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t98, %"compiler/source:Span" %t99, %"compiler/diagmsg:Msg" %t100)
  store i64 %t101, ptr %l40
  br label %bb16
bb16:
  %t102 = icmp sge i64 0, 0
  br i1 %t102, label %bb17, label %bb18
bb17:
  %t104 = icmp sle i64 0, 1152921504606846975
  br i1 %t104, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fce01e404a5d04ab_bd3fcfdbd155739f)
  unreachable
bb19:
  %t106 = mul i64 0, 8
  %t107 = insertvalue { i64, ptr } undef, i64 0, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t108, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_fce01e404a5d04ab_bd3fcfdbd155739f)
  unreachable
bb21:
  %t110 = load ptr, ptr %lp4
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca ptr
  %l7 = alloca %"compiler/typed:Local"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  %t10 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t6, i64 %a1)
  store %"compiler/typed:Local" %t10, ptr %l7
  br label %bb2
bb2:
  %t11 = getelementptr %"compiler/typed:Local", ptr %l7, i32 0, i32 2
  %t12 = load i32, ptr %t11, !tbaa !23
  store i32 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca ptr
  %l8 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca { i64, [1 x i64] }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l28 = alloca i1
  %l29 = alloca { i64, [1 x i64] }
  %rv = alloca { i64, [1 x i64] }
  %t5 = alloca { i64, [1 x i64] }, align 8
  %t18 = alloca { i64, [1 x i64] }, align 8
  %t59 = alloca { i64, [1 x i64] }, align 8
  %t63 = alloca { i64, [1 x i64] }, align 8
  %t68 = alloca { i64, [1 x i64] }, align 8
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
  store { i64, [1 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [1 x i64] }, ptr %t5, i32 0, i32 0
  store i64 4, ptr %t6
  %t7 = load { i64, [1 x i64] }, ptr %t5
  store { i64, [1 x i64] } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l7, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 8}
  %t16 = icmp eq i64 %t14, 3
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store { i64, [1 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [1 x i64] }, ptr %t18, i32 0, i32 0
  store i64 1, ptr %t19
  %t20 = load { i64, [1 x i64] }, ptr %t18
  store { i64, [1 x i64] } %t20, ptr %l6
  br label %bb31
bb9:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l13, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l2, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t41 = call { i64, [1 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkOf(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store { i64, [1 x i64] } %t41, ptr %l20
  br label %bb15
bb15:
  %t42 = load { i64, [1 x i64] }, ptr %l20
  store { i64, [1 x i64] } %t42, ptr %l6
  br label %bb31
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 0
  store i1 %t50, ptr %l22, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l22, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  store i1 %t57, ptr %l28
  br label %bb22
bb22:
  %t58 = load i1, ptr %l28, !tbaa !21
  br i1 %t58, label %bb23, label %bb24
bb23:
  store { i64, [1 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [1 x i64] }, ptr %t59, i32 0, i32 0
  store i64 4, ptr %t60
  %t61 = load { i64, [1 x i64] }, ptr %t59
  store { i64, [1 x i64] } %t61, ptr %l29
  br label %bb25
bb24:
  store { i64, [1 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [1 x i64] }, ptr %t63, i32 0, i32 0
  store i64 0, ptr %t64
  %t65 = load { i64, [1 x i64] }, ptr %t63
  store { i64, [1 x i64] } %t65, ptr %l29
  br label %bb25
bb25:
  %t67 = load { i64, [1 x i64] }, ptr %l29
  store { i64, [1 x i64] } %t67, ptr %l6
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, [1 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [1 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t70 = load { i64, [1 x i64] }, ptr %t68
  store { i64, [1 x i64] } %t70, ptr %l6
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_7175167c8688a627_14932d1cc2bc03fb)
  unreachable
bb31:
  %t72 = load { i64, [1 x i64] }, ptr %l6
  store { i64, [1 x i64] } %t72, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullableArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l16 = alloca i1
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
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l5, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb8
bb7:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i1, ptr %l16, !tbaa !21
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l11, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca %"compiler/source:Span"
  %l34 = alloca i1
  %l35 = alloca i32
  %l38 = alloca ptr
  %l43 = alloca i1
  %l44 = alloca i1
  %l49 = alloca i1
  %l56 = alloca ptr
  %l58 = alloca i1
  %l59 = alloca i1
  %l61 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca i1
  %l67 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca i1
  %l74 = alloca i1
  %l75 = alloca i1
  %l78 = alloca i1
  %l81 = alloca i1
  %l83 = alloca i1
  %l86 = alloca i64
  %l88 = alloca i1
  %l89 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i1
  %l94 = alloca i1
  %l95 = alloca ptr
  %l98 = alloca i32
  %l100 = alloca { i64, ptr }
  %l101 = alloca i64
  %l111 = alloca ptr
  %l114 = alloca ptr
  %l117 = alloca ptr
  %l120 = alloca i32
  %l123 = alloca i32
  %l129 = alloca ptr
  %l130 = alloca ptr
  %l133 = alloca ptr
  %l135 = alloca i1
  %l136 = alloca i1
  %l140 = alloca i1
  %l144 = alloca i1
  %l147 = alloca i1
  %l148 = alloca i1
  %l151 = alloca i1
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l164 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l168 = alloca %"compiler/diagmsg:Msg"
  %l169 = alloca i64
  %l173 = alloca ptr
  %l177 = alloca i1
  %l183 = alloca i1
  %l186 = alloca i1
  %l189 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l191 = alloca i32
  %l193 = alloca i32
  %l194 = alloca ptr
  %l196 = alloca ptr
  %l199 = alloca ptr
  %l200 = alloca ptr
  %l201 = alloca %"compiler/source:Span"
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l206 = alloca %"compiler/diagmsg:Msg"
  %l207 = alloca i64
  %l210 = alloca ptr
  %l213 = alloca ptr
  %l214 = alloca %"compiler/source:Span"
  %l217 = alloca { i64, ptr }
  %l219 = alloca %"compiler/diagmsg:Msg"
  %l220 = alloca i64
  %l223 = alloca ptr
  %l227 = alloca i1
  %l235 = alloca ptr
  %l236 = alloca ptr
  %l239 = alloca ptr
  %l248 = alloca ptr
  %l249 = alloca ptr
  %l252 = alloca ptr
  %l259 = alloca ptr
  %l262 = alloca i32
  %l264 = alloca i1
  %l266 = alloca ptr
  %l267 = alloca %"compiler/source:Span"
  %l270 = alloca { i64, ptr }
  %l272 = alloca %"compiler/diagmsg:Msg"
  %l273 = alloca i64
  %l276 = alloca ptr
  %l279 = alloca i1
  %l282 = alloca i1
  %l285 = alloca i1
  %l286 = alloca i1
  %l292 = alloca i1
  %l293 = alloca i1
  %l296 = alloca i64
  %l300 = alloca i1
  %l302 = alloca i1
  %l305 = alloca i1
  %l307 = alloca i1
  %l311 = alloca i1
  %l321 = alloca ptr
  %l322 = alloca ptr
  %l325 = alloca ptr
  %l330 = alloca { i64, ptr }
  %l331 = alloca i1
  %l333 = alloca i1
  %l334 = alloca ptr
  %l337 = alloca i32
  %l339 = alloca { i64, ptr }
  %l340 = alloca %"compiler/source:Span"
  %l342 = alloca { i64, ptr }
  %l343 = alloca { i64, ptr }
  %l345 = alloca i1
  %l348 = alloca ptr
  %l351 = alloca i1
  %l352 = alloca i1
  %l355 = alloca i1
  %l356 = alloca ptr
  %l357 = alloca %"compiler/source:Span"
  %l359 = alloca { i64, ptr }
  %l360 = alloca { i64, ptr }
  %l361 = alloca { i64, ptr }
  %l364 = alloca { i64, ptr }
  %l365 = alloca { i64, ptr }
  %l368 = alloca { i64, ptr }
  %l370 = alloca %"compiler/diagmsg:Msg"
  %l371 = alloca i64
  %l372 = alloca ptr
  %l373 = alloca %"compiler/source:Span"
  %l374 = alloca i32
  %l376 = alloca { i64, ptr }
  %l377 = alloca { i64, ptr }
  %l379 = alloca { i64, ptr }
  %l380 = alloca { i64, ptr }
  %l381 = alloca { i64, ptr }
  %l384 = alloca { i64, ptr }
  %l386 = alloca %"compiler/diagmsg:Msg"
  %l387 = alloca i64
  %l390 = alloca ptr
  %l393 = alloca i1
  %l398 = alloca i1
  %l400 = alloca ptr
  %l401 = alloca %"compiler/source:Span"
  %l403 = alloca { i64, ptr }
  %l404 = alloca { i64, ptr }
  %l405 = alloca { i64, ptr }
  %l408 = alloca { i64, ptr }
  %l410 = alloca %"compiler/diagmsg:Msg"
  %l411 = alloca i64
  %l414 = alloca i1
  %l416 = alloca ptr
  %l417 = alloca %"compiler/source:Span"
  %l419 = alloca { i64, ptr }
  %l420 = alloca { i64, ptr }
  %l421 = alloca { i64, ptr }
  %l424 = alloca { i64, ptr }
  %l426 = alloca %"compiler/diagmsg:Msg"
  %l427 = alloca i64
  %l429 = alloca i1
  %l431 = alloca i1
  %l434 = alloca i1
  %l435 = alloca i1
  %l439 = alloca i1
  %l441 = alloca ptr
  %l442 = alloca %"compiler/source:Span"
  %l445 = alloca { i64, ptr }
  %l446 = alloca { i64, ptr }
  %l448 = alloca { i64, ptr }
  %l449 = alloca { i64, ptr }
  %l450 = alloca { i64, ptr }
  %l452 = alloca { i64, ptr }
  %l455 = alloca %"compiler/diagmsg:Msg"
  %l456 = alloca i64
  %l459 = alloca ptr
  %l462 = alloca ptr
  %l465 = alloca i1
  %l469 = alloca ptr
  %l470 = alloca ptr
  %l471 = alloca %"compiler/source:Span"
  %l472 = alloca i32
  %l474 = alloca i32
  %l475 = alloca ptr
  %l476 = alloca ptr
  %l479 = alloca ptr
  %l488 = alloca i32
  %l491 = alloca ptr
  %l492 = alloca %"compiler/source:Span"
  %l495 = alloca { i64, ptr }
  %l496 = alloca { i64, ptr }
  %l499 = alloca { i64, ptr }
  %l501 = alloca %"compiler/diagmsg:Msg"
  %l502 = alloca i64
  %l505 = alloca ptr
  %l511 = alloca ptr
  %l514 = alloca ptr
  %l520 = alloca ptr
  %l523 = alloca ptr
  %l525 = alloca i1
  %l526 = alloca i1
  %l529 = alloca i1
  %l531 = alloca ptr
  %l532 = alloca %"compiler/source:Span"
  %l534 = alloca { i64, ptr }
  %l535 = alloca { i64, ptr }
  %l536 = alloca { i64, ptr }
  %l539 = alloca { i64, ptr }
  %l541 = alloca %"compiler/diagmsg:Msg"
  %l542 = alloca i64
  %l545 = alloca ptr
  %l547 = alloca i1
  %l549 = alloca i1
  %l552 = alloca i1
  %l553 = alloca i1
  %l557 = alloca i1
  %l559 = alloca ptr
  %l560 = alloca %"compiler/source:Span"
  %l563 = alloca { i64, ptr }
  %l564 = alloca { i64, ptr }
  %l566 = alloca { i64, ptr }
  %l567 = alloca { i64, ptr }
  %l568 = alloca { i64, ptr }
  %l570 = alloca { i64, ptr }
  %l573 = alloca %"compiler/diagmsg:Msg"
  %l574 = alloca i64
  %l577 = alloca ptr
  %l579 = alloca i1
  %l580 = alloca ptr
  %l581 = alloca %"compiler/source:Span"
  %l582 = alloca i32
  %l584 = alloca i32
  %l585 = alloca ptr
  %l587 = alloca ptr
  %l590 = alloca ptr
  %l591 = alloca ptr
  %l592 = alloca %"compiler/source:Span"
  %l593 = alloca i32
  %l595 = alloca i32
  %l596 = alloca ptr
  %l597 = alloca ptr
  %l600 = alloca ptr
  %s3 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  store %"compiler/source:Span" %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t1)
  store i32 %t4, ptr %l20
  br label %bb1
bb1:
  %t5 = load i32, ptr %l20, !tbaa !23
  store i32 %t5, ptr %l8, !tbaa !23
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t6)
  store i32 %t9, ptr %l23
  br label %bb2
bb2:
  %t10 = load i32, ptr %l23, !tbaa !23
  store i32 %t10, ptr %l9, !tbaa !23
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t15 = icmp eq i32 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb5
bb4:
  %t17 = load i32, ptr %l9, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t21 = icmp eq i32 %t17, %t18
  store i1 %t21, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l27, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l31, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t25, ptr %l32
  %t26 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t28 = call i1 @compiler_2fcheck_2ecompares(i32 %t26)
  store i1 %t28, ptr %l34
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t29 = load i1, ptr %l34, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t30, ptr %l35, !tbaa !23
  br label %bb11
bb10:
  %t32 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t32, ptr %l35, !tbaa !23
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l31, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l32
  %t36 = load i32, ptr %l35, !tbaa !23
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t34, %"compiler/source:Span" %t35, i32 %t36, i64 0)
  store ptr %t37, ptr %l38
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l38, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l8, !tbaa !23
  %t48 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l43
  br label %bb14
bb14:
  %t49 = load i1, ptr %l43, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l9, !tbaa !23
  %t59 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t55, i32 %t56)
  store i1 %t59, ptr %l49
  br label %bb17
bb17:
  %t60 = load i1, ptr %l49, !tbaa !21
  store i1 %t60, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t61 = load i1, ptr %l44, !tbaa !21
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l1
  %t64 = load %"compiler/source:Span", ptr %l2
  %t65 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t62, %"compiler/source:Span" %t63, %"compiler/source:Span" %t64, i32 %t65, ptr %t66, ptr %t67)
  store ptr %t74, ptr %l56
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t75 = load ptr, ptr %l56, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb22:
  %t76 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t78 = call i1 @compiler_2fcheck_2elaneTok(i32 %t76)
  store i1 %t78, ptr %l58
  br label %bb23
bb23:
  %t79 = load i1, ptr %l58, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l4, !tbaa !29
  store ptr %t81, ptr %l61, !tbaa !29
  %t82 = load ptr, ptr %l61, !tbaa !29
  %t83 = call ptr @__olang_scope_of(ptr %t82, ptr null)
  %t84 = ptrtoint ptr %t83 to i64
  %t86 = inttoptr i64 %t84 to ptr
  %t88 = load ptr, ptr %l61, !tbaa !29
  %t89 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %t86, ptr %t80, ptr %t88)
  store i64 %t89, ptr %l63
  br label %bb26
bb25:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb39
bb26:
  %t90 = load i64, ptr %l63, !tbaa !24
  %t91 = icmp sge i64 %t90, 0
  br i1 %t91, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb30
bb28:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l5, !tbaa !29
  store ptr %t94, ptr %l67, !tbaa !29
  %t95 = load ptr, ptr %l67, !tbaa !29
  %t96 = call ptr @__olang_scope_of(ptr %t95, ptr null)
  %t97 = ptrtoint ptr %t96 to i64
  %t99 = inttoptr i64 %t97 to ptr
  %t101 = load ptr, ptr %l67, !tbaa !29
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %t99, ptr %t93, ptr %t101)
  store i64 %t102, ptr %l69
  br label %bb29
bb29:
  %t103 = load i64, ptr %l69, !tbaa !24
  %t104 = icmp sge i64 %t103, 0
  store i1 %t104, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t106 = load i1, ptr %l65, !tbaa !21
  br i1 %t106, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb34
bb32:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l8, !tbaa !23
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l74
  br label %bb33
bb33:
  %t112 = load i1, ptr %l74, !tbaa !21
  store i1 %t112, ptr %l71, !tbaa !21
  br label %bb34
bb34:
  %t113 = load i1, ptr %l71, !tbaa !21
  br i1 %t113, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l75, !tbaa !21
  br label %bb38
bb36:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l9, !tbaa !23
  %t118 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t114, i32 %t115)
  store i1 %t118, ptr %l78
  br label %bb37
bb37:
  %t119 = load i1, ptr %l78, !tbaa !21
  store i1 %t119, ptr %l75, !tbaa !21
  br label %bb38
bb38:
  %t120 = load i1, ptr %l75, !tbaa !21
  store i1 %t120, ptr %l59, !tbaa !21
  br label %bb39
bb39:
  %t121 = load i1, ptr %l59, !tbaa !21
  br i1 %t121, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s3
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i32, ptr %l8, !tbaa !23
  %t126 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t122, i32 %t123)
  store i1 %t126, ptr %l81
  br label %bb42
bb41:
  br label %bb66
bb42:
  %t127 = load i1, ptr %l81, !tbaa !21
  %t128 = xor i1 %t127, true
  br i1 %t128, label %bb43, label %bb44
bb43:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t134 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %t130, ptr %t131)
  store i64 %t134, ptr %l86
  br label %bb45
bb44:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb46
bb45:
  %t135 = load i64, ptr %l86, !tbaa !24
  %t136 = icmp slt i64 %t135, 0
  store i1 %t136, ptr %l83, !tbaa !21
  br label %bb46
bb46:
  %t138 = load i1, ptr %l83, !tbaa !21
  br i1 %t138, label %bb47, label %bb48
bb47:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l89, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l8, !tbaa !23
  %t144 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l92
  br label %bb49
bb48:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb51
bb49:
  %t145 = load ptr, ptr %l89, !tbaa !29
  %t146 = load i32, ptr %l92, !tbaa !23
  %t147 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t145, i32 %t146)
  store i1 %t147, ptr %l93
  br label %bb50
bb50:
  %t148 = load i1, ptr %l93, !tbaa !21
  store i1 %t148, ptr %l88, !tbaa !21
  br label %bb51
bb51:
  %t149 = load i1, ptr %l88, !tbaa !21
  br i1 %t149, label %bb52, label %bb53
bb52:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l95, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i32, ptr %l8, !tbaa !23
  %t155 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l98
  br label %bb54
bb53:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb57
bb54:
  %t156 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t158 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s3, i32 %t156)
  store { i64, ptr } %t158, ptr %l100
  br label %bb55
bb55:
  %t159 = load ptr, ptr %l95, !tbaa !29
  %t160 = load i32, ptr %l98, !tbaa !23
  %t161 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t162 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s3, ptr %t159, i32 %t160, { i64, ptr } %t161, i64 1)
  store i64 %t162, ptr %l101
  br label %bb56
bb56:
  %t163 = load i64, ptr %l101, !tbaa !24
  %t164 = icmp sge i64 %t163, 0
  store i1 %t164, ptr %l94, !tbaa !21
  br label %bb57
bb57:
  %t166 = load i1, ptr %l94, !tbaa !21
  %t169 = xor i1 %t166, true
  br i1 %t169, label %bb58, label %bb59
bb58:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l1
  %t173 = load %"compiler/source:Span", ptr %l2
  %t174 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t175 = load ptr, ptr %l4, !tbaa !29
  %t176 = load ptr, ptr %l5, !tbaa !29
  %t183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t171, %"compiler/source:Span" %t172, %"compiler/source:Span" %t173, i32 %t174, ptr %t175, ptr %t176)
  store ptr %t183, ptr %l111
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s3)
  %t184 = load ptr, ptr %l111, !tbaa !29
  store ptr %t184, ptr %rv
  br label %ret
bb61:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l4, !tbaa !29
  %t189 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v1, ptr %v0, ptr %t185, ptr %t186)
  store ptr %t189, ptr %l114
  br label %bb62
bb62:
  %t190 = load ptr, ptr %l114, !tbaa !29
  store ptr %t190, ptr %l4, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load ptr, ptr %l5, !tbaa !29
  %t195 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v2, ptr %v0, ptr %t191, ptr %t192)
  store ptr %t195, ptr %l117
  br label %bb63
bb63:
  %t196 = load ptr, ptr %l117, !tbaa !29
  store ptr %t196, ptr %l5, !tbaa !29
  %t197 = load ptr, ptr %l4, !tbaa !29
  %t200 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t197)
  store i32 %t200, ptr %l120
  br label %bb64
bb64:
  %t201 = load i32, ptr %l120, !tbaa !23
  store i32 %t201, ptr %l8, !tbaa !23
  %t202 = load ptr, ptr %l5, !tbaa !29
  %t205 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t202)
  store i32 %t205, ptr %l123
  br label %bb65
bb65:
  %t206 = load i32, ptr %l123, !tbaa !23
  store i32 %t206, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  br label %bb66
bb66:
  %t207 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t209 = trunc i64 71 to i32
  %t210 = icmp eq i32 %t207, %t209
  br i1 %t210, label %bb67, label %bb68
bb67:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l1
  %t214 = load %"compiler/source:Span", ptr %l2
  %t215 = load ptr, ptr %l4, !tbaa !29
  store ptr %t215, ptr %l129, !tbaa !29
  %t216 = load ptr, ptr %l5, !tbaa !29
  store ptr %t216, ptr %l130, !tbaa !29
  %t217 = load ptr, ptr %l129, !tbaa !29
  %t218 = call ptr @__olang_scope_of(ptr %t217, ptr null)
  %t219 = ptrtoint ptr %t218 to i64
  %t220 = load ptr, ptr %l130, !tbaa !29
  %t221 = call ptr @__olang_scope_of(ptr %t220, ptr null)
  %t222 = ptrtoint ptr %t221 to i64
  %t224 = inttoptr i64 %t219 to ptr
  %t226 = inttoptr i64 %t222 to ptr
  %t230 = load ptr, ptr %l129, !tbaa !29
  %t231 = load ptr, ptr %l130, !tbaa !29
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %t224, ptr %t226, ptr %v3, ptr %t212, %"compiler/source:Span" %t213, %"compiler/source:Span" %t214, ptr %t230, ptr %t231)
  store ptr %t232, ptr %l133
  br label %bb69
bb68:
  br label %bb70
bb69:
  %t233 = load ptr, ptr %l133, !tbaa !29
  store ptr %t233, ptr %rv
  br label %ret
bb70:
  %t234 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t236 = call i1 @compiler_2fcheck_2ecompares(i32 %t234)
  store i1 %t236, ptr %l135
  br label %bb71
bb71:
  %t237 = load i1, ptr %l135, !tbaa !21
  br i1 %t237, label %bb72, label %bb73
bb72:
  %t238 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t240 = trunc i64 94 to i32
  %t241 = icmp eq i32 %t238, %t240
  %t243 = xor i1 %t241, true
  store i1 %t243, ptr %l136, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb74
bb74:
  %t245 = load i1, ptr %l136, !tbaa !21
  br i1 %t245, label %bb75, label %bb76
bb75:
  %t246 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t248 = trunc i64 95 to i32
  %t249 = icmp eq i32 %t246, %t248
  %t251 = xor i1 %t249, true
  store i1 %t251, ptr %l140, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb77
bb77:
  %t253 = load i1, ptr %l140, !tbaa !21
  br i1 %t253, label %bb78, label %bb79
bb78:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i32, ptr %l8, !tbaa !23
  %t258 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t254, i32 %t255)
  store i1 %t258, ptr %l147
  br label %bb80
bb79:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb85
bb80:
  %t259 = load i1, ptr %l147, !tbaa !21
  br i1 %t259, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l148, !tbaa !21
  br label %bb84
bb82:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l9, !tbaa !23
  %t264 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t260, i32 %t261)
  store i1 %t264, ptr %l151
  br label %bb83
bb83:
  %t265 = load i1, ptr %l151, !tbaa !21
  store i1 %t265, ptr %l148, !tbaa !21
  br label %bb84
bb84:
  %t266 = load i1, ptr %l148, !tbaa !21
  store i1 %t266, ptr %l144, !tbaa !21
  br label %bb85
bb85:
  %t267 = load i1, ptr %l144, !tbaa !21
  br i1 %t267, label %bb86, label %bb87
bb86:
  %t268 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t270 = trunc i64 97 to i32
  %t271 = icmp eq i32 %t268, %t270
  br i1 %t271, label %bb88, label %bb89
bb87:
  br label %bb102
bb88:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l154, !tbaa !27
  br label %bb96
bb89:
  %t273 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t275 = trunc i64 99 to i32
  %t276 = icmp eq i32 %t273, %t275
  br i1 %t276, label %bb90, label %bb91
bb90:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l157, !tbaa !27
  br label %bb95
bb91:
  %t278 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t280 = trunc i64 98 to i32
  %t281 = icmp eq i32 %t278, %t280
  br i1 %t281, label %bb92, label %bb93
bb92:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l160, !tbaa !27
  br label %bb94
bb93:
  store { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l160, !tbaa !27
  br label %bb94
bb94:
  %t283 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t283, ptr %l157, !tbaa !27
  br label %bb95
bb95:
  %t284 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t284, ptr %l154, !tbaa !27
  br label %bb96
bb96:
  %t285 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t285, ptr %l11, !tbaa !27
  %t286 = load ptr, ptr %l0, !tbaa !29
  store ptr %t286, ptr %l161, !tbaa !29
  %t287 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t287, ptr %l162
  %t288 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t290 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t288)
  store { i64, ptr } %t290, ptr %l164
  br label %bb97
bb97:
  %t291 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t292 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t291)
  store { i64, ptr } %t292, ptr %l165
  br label %bb98
bb98:
  %t293 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  %t295 = extractvalue { i64, ptr } %t293, 1
  %t296 = mul i64 %t294, 1
  %t297 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t296)
  call void @llvm.memcpy.p0.p0.i64(ptr %t297, ptr %t295, i64 %t296, i1 false)
  %t298 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t297, 1
  %t300 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t301 = load ptr, ptr @__olang_prog_scope
  %t304 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneCompare(ptr %v0, ptr %t301, ptr %v0, { i64, ptr } %t299, { i64, ptr } %t300)
  store %"compiler/diagmsg:Msg" %t304, ptr %l168
  br label %bb99
bb99:
  %t305 = load ptr, ptr %l161, !tbaa !29
  %t306 = load %"compiler/source:Span", ptr %l162
  %t307 = load %"compiler/diagmsg:Msg", ptr %l168
  %t308 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t305, %"compiler/source:Span" %t306, %"compiler/diagmsg:Msg" %t307)
  store i64 %t308, ptr %l169
  br label %bb100
bb100:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l1
  %t311 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t309, %"compiler/source:Span" %t310, i32 %t311, i64 0)
  store ptr %t315, ptr %l173
  br label %bb101
bb101:
  %t316 = load ptr, ptr %l173, !tbaa !29
  store ptr %t316, ptr %rv
  br label %ret
bb102:
  %t317 = load i32, ptr %l8, !tbaa !23
  %t318 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t321 = icmp eq i32 %t317, %t318
  br i1 %t321, label %bb103, label %bb104
bb103:
  %t323 = load i32, ptr %l9, !tbaa !23
  %t324 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t327 = icmp eq i32 %t323, %t324
  store i1 %t327, ptr %l177, !tbaa !21
  br label %bb105
bb104:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb105
bb105:
  %t329 = load i1, ptr %l177, !tbaa !21
  br i1 %t329, label %bb106, label %bb107
bb106:
  %t330 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t332 = trunc i64 94 to i32
  %t333 = icmp eq i32 %t330, %t332
  br i1 %t333, label %bb108, label %bb109
bb107:
  br label %bb124
bb108:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb110
bb109:
  %t335 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t337 = trunc i64 95 to i32
  %t338 = icmp eq i32 %t335, %t337
  store i1 %t338, ptr %l183, !tbaa !21
  br label %bb110
bb110:
  %t340 = load i1, ptr %l183, !tbaa !21
  br i1 %t340, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb113
bb112:
  %t341 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t343 = trunc i64 47 to i32
  %t344 = icmp eq i32 %t341, %t343
  store i1 %t344, ptr %l186, !tbaa !21
  br label %bb113
bb113:
  %t346 = load i1, ptr %l186, !tbaa !21
  br i1 %t346, label %bb114, label %bb115
bb114:
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l189, !tbaa !29
  %t348 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t348, ptr %l190
  %t349 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t349, ptr %l191, !tbaa !23
  %t350 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t352 = call i32 @compiler_2fcheck_2ebinaryOp(i32 %t350)
  store i32 %t352, ptr %l193
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t353 = load ptr, ptr %l4, !tbaa !29
  store ptr %t353, ptr %l194, !tbaa !29
  %t354 = load ptr, ptr %l5, !tbaa !29
  store ptr %t354, ptr %l196, !tbaa !29
  %t356 = load ptr, ptr %l194, !tbaa !29
  %t357 = call ptr @__olang_scope_of(ptr %t356, ptr null)
  %t358 = ptrtoint ptr %t357 to i64
  %t359 = load ptr, ptr %l196, !tbaa !29
  %t360 = call ptr @__olang_scope_of(ptr %t359, ptr null)
  %t361 = ptrtoint ptr %t360 to i64
  %t363 = inttoptr i64 %t358 to ptr
  %t365 = inttoptr i64 %t361 to ptr
  %t366 = load ptr, ptr %l189, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l190
  %t368 = load i32, ptr %l191, !tbaa !23
  %t369 = load i32, ptr %l193, !range !{i32 0, i32 52}
  %t370 = load ptr, ptr %l194, !tbaa !29
  %t371 = load ptr, ptr %l196, !tbaa !29
  %t372 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t363, ptr %t365, ptr %v3, ptr %t366, %"compiler/source:Span" %t367, i32 %t368, i32 %t369, ptr %t370, ptr %t371)
  store ptr %t372, ptr %l199
  br label %bb117
bb117:
  %t373 = load ptr, ptr %l199, !tbaa !29
  store ptr %t373, ptr %rv
  br label %ret
bb118:
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l200, !tbaa !29
  %t375 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t375, ptr %l201
  %t376 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t378 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t376)
  store { i64, ptr } %t378, ptr %l203
  br label %bb119
bb119:
  %t379 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t380 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t379)
  store { i64, ptr } %t380, ptr %l204
  br label %bb120
bb120:
  %t381 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 0
  %t383 = extractvalue { i64, ptr } %t381, 1
  %t384 = mul i64 %t382, 1
  %t385 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t384)
  call void @llvm.memcpy.p0.p0.i64(ptr %t385, ptr %t383, i64 %t384, i1 false)
  %t386 = insertvalue { i64, ptr } undef, i64 %t382, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t385, 1
  %t389 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotNumber(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t387, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t389, ptr %l206
  br label %bb121
bb121:
  %t390 = load ptr, ptr %l200, !tbaa !29
  %t391 = load %"compiler/source:Span", ptr %l201
  %t392 = load %"compiler/diagmsg:Msg", ptr %l206
  %t393 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t390, %"compiler/source:Span" %t391, %"compiler/diagmsg:Msg" %t392)
  store i64 %t393, ptr %l207
  br label %bb122
bb122:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load %"compiler/source:Span", ptr %l1
  %t398 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t394, %"compiler/source:Span" %t395)
  store ptr %t398, ptr %l210
  br label %bb123
bb123:
  %t399 = load ptr, ptr %l210, !tbaa !29
  store ptr %t399, ptr %rv
  br label %ret
bb124:
  %t400 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t402 = trunc i64 47 to i32
  %t403 = icmp eq i32 %t400, %t402
  br i1 %t403, label %bb125, label %bb126
bb125:
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l213, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t406, ptr %l214
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i32, ptr %l8, !tbaa !23
  %t411 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t407, i32 %t408)
  store { i64, ptr } %t411, ptr %l217
  br label %bb127
bb126:
  br label %bb131
bb127:
  %t412 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 0
  %t414 = extractvalue { i64, ptr } %t412, 1
  %t415 = mul i64 %t413, 1
  %t416 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t415)
  call void @llvm.memcpy.p0.p0.i64(ptr %t416, ptr %t414, i64 %t415, i1 false)
  %t417 = insertvalue { i64, ptr } undef, i64 %t413, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  %t420 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } %t418)
  store %"compiler/diagmsg:Msg" %t420, ptr %l219
  br label %bb128
bb128:
  %t421 = load ptr, ptr %l213, !tbaa !29
  %t422 = load %"compiler/source:Span", ptr %l214
  %t423 = load %"compiler/diagmsg:Msg", ptr %l219
  %t424 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t421, %"compiler/source:Span" %t422, %"compiler/diagmsg:Msg" %t423)
  store i64 %t424, ptr %l220
  br label %bb129
bb129:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l1
  %t429 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t425, %"compiler/source:Span" %t426)
  store ptr %t429, ptr %l223
  br label %bb130
bb130:
  %t430 = load ptr, ptr %l223, !tbaa !29
  store ptr %t430, ptr %rv
  br label %ret
bb131:
  %t431 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t433 = trunc i64 94 to i32
  %t434 = icmp eq i32 %t431, %t433
  %t436 = xor i1 %t434, true
  br i1 %t436, label %bb132, label %bb133
bb132:
  %t438 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t440 = trunc i64 95 to i32
  %t441 = icmp eq i32 %t438, %t440
  %t443 = xor i1 %t441, true
  store i1 %t443, ptr %l227, !tbaa !21
  br label %bb134
bb133:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb134
bb134:
  %t445 = load i1, ptr %l227, !tbaa !21
  br i1 %t445, label %bb135, label %bb136
bb135:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load %"compiler/source:Span", ptr %l1
  %t448 = load %"compiler/source:Span", ptr %l2
  %t449 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t450 = load ptr, ptr %l4, !tbaa !29
  store ptr %t450, ptr %l235, !tbaa !29
  %t451 = load ptr, ptr %l5, !tbaa !29
  store ptr %t451, ptr %l236, !tbaa !29
  %t452 = load ptr, ptr %l235, !tbaa !29
  %t453 = call ptr @__olang_scope_of(ptr %t452, ptr null)
  %t454 = ptrtoint ptr %t453 to i64
  %t455 = load ptr, ptr %l236, !tbaa !29
  %t456 = call ptr @__olang_scope_of(ptr %t455, ptr null)
  %t457 = ptrtoint ptr %t456 to i64
  %t459 = inttoptr i64 %t454 to ptr
  %t461 = inttoptr i64 %t457 to ptr
  %t466 = load ptr, ptr %l235, !tbaa !29
  %t467 = load ptr, ptr %l236, !tbaa !29
  %t468 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %t459, ptr %t461, ptr %v3, ptr %t446, %"compiler/source:Span" %t447, %"compiler/source:Span" %t448, i32 %t449, ptr %t466, ptr %t467)
  store ptr %t468, ptr %l239
  br label %bb137
bb136:
  br label %bb145
bb137:
  %t469 = load ptr, ptr %l239, !tbaa !29
  store ptr %t469, ptr %l12, !tbaa !29
  %t470 = load ptr, ptr %l12, !tbaa !29
  %t472 = icmp eq ptr %t470, null
  %t474 = xor i1 %t472, true
  br i1 %t474, label %bb138, label %bb139
bb138:
  %t476 = load ptr, ptr %l12, !tbaa !29
  store ptr %t476, ptr %rv
  br label %ret
bb139:
  br label %bb140
bb140:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l1
  %t480 = load %"compiler/source:Span", ptr %l2
  %t481 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t482 = load ptr, ptr %l4, !tbaa !29
  store ptr %t482, ptr %l248, !tbaa !29
  %t483 = load ptr, ptr %l5, !tbaa !29
  store ptr %t483, ptr %l249, !tbaa !29
  %t484 = load ptr, ptr %l248, !tbaa !29
  %t485 = call ptr @__olang_scope_of(ptr %t484, ptr null)
  %t486 = ptrtoint ptr %t485 to i64
  %t487 = load ptr, ptr %l249, !tbaa !29
  %t488 = call ptr @__olang_scope_of(ptr %t487, ptr null)
  %t489 = ptrtoint ptr %t488 to i64
  %t491 = inttoptr i64 %t486 to ptr
  %t493 = inttoptr i64 %t489 to ptr
  %t498 = load ptr, ptr %l248, !tbaa !29
  %t499 = load ptr, ptr %l249, !tbaa !29
  %t500 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommutedCall(ptr %v0, ptr %t491, ptr %t493, ptr %v3, ptr %t478, %"compiler/source:Span" %t479, %"compiler/source:Span" %t480, i32 %t481, ptr %t498, ptr %t499)
  store ptr %t500, ptr %l252
  br label %bb141
bb141:
  %t501 = load ptr, ptr %l252, !tbaa !29
  store ptr %t501, ptr %l13, !tbaa !29
  %t502 = load ptr, ptr %l13, !tbaa !29
  %t504 = icmp eq ptr %t502, null
  %t506 = xor i1 %t504, true
  br i1 %t506, label %bb142, label %bb143
bb142:
  %t508 = load ptr, ptr %l13, !tbaa !29
  store ptr %t508, ptr %rv
  br label %ret
bb143:
  br label %bb144
bb144:
  br label %bb145
bb145:
  %t510 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t512 = trunc i64 74 to i32
  %t513 = icmp eq i32 %t510, %t512
  br i1 %t513, label %bb146, label %bb147
bb146:
  store %olang.scope zeroinitializer, ptr %s13
  %t515 = load ptr, ptr %l0, !tbaa !29
  store ptr %t515, ptr %l259, !tbaa !29
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load i32, ptr %l8, !tbaa !23
  %t520 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t516, i32 %t517)
  store i32 %t520, ptr %l262
  br label %bb148
bb147:
  br label %bb157
bb148:
  %t521 = load %"compiler/source:Span", ptr %l2
  %t522 = load ptr, ptr %l259, !tbaa !29
  %t523 = load i32, ptr %l262, !tbaa !23
  %t525 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s13, ptr %s13, ptr %t522, i32 %t523, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, %"compiler/source:Span" %t521, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) }, i64 1, i1 false)
  store i1 %t525, ptr %l264
  br label %bb149
bb149:
  %t526 = load i1, ptr %l264, !tbaa !21
  %t527 = xor i1 %t526, true
  br i1 %t527, label %bb150, label %bb151
bb150:
  %t529 = load ptr, ptr %l0, !tbaa !29
  store ptr %t529, ptr %l266, !tbaa !29
  %t530 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t530, ptr %l267
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t532 = load i32, ptr %l8, !tbaa !23
  %t535 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t531, i32 %t532)
  store { i64, ptr } %t535, ptr %l270
  br label %bb152
bb151:
  br label %bb155
bb152:
  %t536 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 0
  %t538 = extractvalue { i64, ptr } %t536, 1
  %t539 = mul i64 %t537, 1
  %t540 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t539)
  call void @llvm.memcpy.p0.p0.i64(ptr %t540, ptr %t538, i64 %t539, i1 false)
  %t541 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  %t544 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatmulUndeclared(ptr %v0, ptr %v0, { i64, ptr } %t542)
  store %"compiler/diagmsg:Msg" %t544, ptr %l272
  br label %bb153
bb153:
  %t545 = load ptr, ptr %l266, !tbaa !29
  %t546 = load %"compiler/source:Span", ptr %l267
  %t547 = load %"compiler/diagmsg:Msg", ptr %l272
  %t548 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t545, %"compiler/source:Span" %t546, %"compiler/diagmsg:Msg" %t547)
  store i64 %t548, ptr %l273
  br label %bb154
bb154:
  br label %bb155
bb155:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load %"compiler/source:Span", ptr %l1
  %t553 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t549, %"compiler/source:Span" %t550)
  store ptr %t553, ptr %l276
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s13)
  %t554 = load ptr, ptr %l276, !tbaa !29
  store ptr %t554, ptr %rv
  br label %ret
bb157:
  %t555 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t557 = trunc i64 94 to i32
  %t558 = icmp eq i32 %t555, %t557
  br i1 %t558, label %bb158, label %bb159
bb158:
  store i1 true, ptr %l279, !tbaa !21
  br label %bb160
bb159:
  %t560 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t562 = trunc i64 95 to i32
  %t563 = icmp eq i32 %t560, %t562
  store i1 %t563, ptr %l279, !tbaa !21
  br label %bb160
bb160:
  %t565 = load i1, ptr %l279, !tbaa !21
  br i1 %t565, label %bb161, label %bb162
bb161:
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load i32, ptr %l8, !tbaa !23
  %t570 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t566, i32 %t567)
  store i1 %t570, ptr %l285
  br label %bb163
bb162:
  store i1 false, ptr %l282, !tbaa !21
  br label %bb164
bb163:
  %t571 = load i1, ptr %l285, !tbaa !21
  store i1 %t571, ptr %l282, !tbaa !21
  br label %bb164
bb164:
  %t572 = load i1, ptr %l282, !tbaa !21
  br i1 %t572, label %bb165, label %bb166
bb165:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/check:Checker", ptr %t573, i32 0, i32 1
  %t576 = load ptr, ptr %t575, !tbaa !29
  %t578 = getelementptr %"compiler/generic:Program", ptr %t576, i32 0, i32 2
  %t579 = load i32, ptr %l8, !tbaa !23
  %t580 = load i32, ptr %l9, !tbaa !23
  %t584 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t578, i32 %t579, i32 %t580)
  store i1 %t584, ptr %l292
  br label %bb167
bb166:
  store i1 false, ptr %l286, !tbaa !21
  br label %bb168
bb167:
  %t585 = load i1, ptr %l292, !tbaa !21
  store i1 %t585, ptr %l286, !tbaa !21
  br label %bb168
bb168:
  %t586 = load i1, ptr %l286, !tbaa !21
  br i1 %t586, label %bb169, label %bb170
bb169:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = load i32, ptr %l8, !tbaa !23
  %t591 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %t587, i32 %t588)
  store i64 %t591, ptr %l296
  br label %bb171
bb170:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb172
bb171:
  %t592 = load i64, ptr %l296, !tbaa !24
  %t593 = icmp ne i64 %t592, -1
  store i1 %t593, ptr %l293, !tbaa !21
  br label %bb172
bb172:
  %t595 = load i1, ptr %l293, !tbaa !21
  store i1 %t595, ptr %l14, !tbaa !21
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t597 = load i32, ptr %l8, !tbaa !23
  %t600 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t596, i32 %t597)
  store i1 %t600, ptr %l300
  br label %bb173
bb173:
  %t601 = load i1, ptr %l300, !tbaa !21
  %t602 = xor i1 %t601, true
  br i1 %t602, label %bb174, label %bb175
bb174:
  store i1 true, ptr %l302, !tbaa !21
  br label %bb177
bb175:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load i32, ptr %l9, !tbaa !23
  %t608 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t604, i32 %t605)
  store i1 %t608, ptr %l305
  br label %bb176
bb176:
  %t609 = load i1, ptr %l305, !tbaa !21
  %t610 = xor i1 %t609, true
  store i1 %t610, ptr %l302, !tbaa !21
  br label %bb177
bb177:
  %t612 = load i1, ptr %l302, !tbaa !21
  br i1 %t612, label %bb178, label %bb179
bb178:
  store i1 true, ptr %l307, !tbaa !21
  br label %bb180
bb179:
  %t613 = load i1, ptr %l14, !tbaa !21
  store i1 %t613, ptr %l307, !tbaa !21
  br label %bb180
bb180:
  %t615 = load i1, ptr %l307, !tbaa !21
  br i1 %t615, label %bb181, label %bb182
bb181:
  store %olang.scope zeroinitializer, ptr %s15
  %t616 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t618 = trunc i64 94 to i32
  %t619 = icmp eq i32 %t616, %t618
  br i1 %t619, label %bb183, label %bb184
bb182:
  br label %bb225
bb183:
  store i1 true, ptr %l311, !tbaa !21
  br label %bb185
bb184:
  %t621 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t623 = trunc i64 95 to i32
  %t624 = icmp eq i32 %t621, %t623
  store i1 %t624, ptr %l311, !tbaa !21
  br label %bb185
bb185:
  %t626 = load i1, ptr %l311, !tbaa !21
  br i1 %t626, label %bb186, label %bb187
bb186:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t629 = getelementptr %"compiler/check:Checker", ptr %t627, i32 0, i32 45
  %t630 = load %"compiler/source:Span", ptr %t629
  store %"compiler/source:Span" %t630, ptr %l15
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load %"compiler/source:Span", ptr %l2
  %t636 = getelementptr %"compiler/check:Checker", ptr %t632, i32 0, i32 45
  store %"compiler/source:Span" %t633, ptr %t636
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t638 = load %"compiler/source:Span", ptr %l1
  %t639 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t640 = load ptr, ptr %l4, !tbaa !29
  store ptr %t640, ptr %l321, !tbaa !29
  %t641 = load ptr, ptr %l5, !tbaa !29
  store ptr %t641, ptr %l322, !tbaa !29
  %t642 = load ptr, ptr %l321, !tbaa !29
  %t643 = call ptr @__olang_scope_of(ptr %t642, ptr null)
  %t644 = ptrtoint ptr %t643 to i64
  %t645 = load ptr, ptr %l322, !tbaa !29
  %t646 = call ptr @__olang_scope_of(ptr %t645, ptr null)
  %t647 = ptrtoint ptr %t646 to i64
  %t649 = inttoptr i64 %t644 to ptr
  %t651 = inttoptr i64 %t647 to ptr
  %t655 = load ptr, ptr %l321, !tbaa !29
  %t656 = load ptr, ptr %l322, !tbaa !29
  %t657 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %t649, ptr %t651, ptr %v3, ptr %t637, %"compiler/source:Span" %t638, i32 %t639, ptr %t655, ptr %t656)
  store ptr %t657, ptr %l325
  br label %bb188
bb187:
  br label %bb189
bb188:
  %t658 = load ptr, ptr %l325, !tbaa !29
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t660 = load %"compiler/source:Span", ptr %l15
  %t663 = getelementptr %"compiler/check:Checker", ptr %t659, i32 0, i32 45
  store %"compiler/source:Span" %t660, ptr %t663
  call void @__olang_scope_close(ptr %s15)
  store ptr %t658, ptr %rv
  br label %ret
bb189:
  %t666 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t668 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s15, i32 %t666)
  store { i64, ptr } %t668, ptr %l330
  br label %bb190
bb190:
  %t669 = load { i64, ptr }, ptr %l330, !tbaa !27
  %t670 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s15, { i64, ptr } %t669, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t670, ptr %l331
  br label %bb191
bb191:
  %t671 = load i1, ptr %l331, !tbaa !21
  %t672 = xor i1 %t671, true
  br i1 %t672, label %bb192, label %bb193
bb192:
  %t674 = load ptr, ptr %l0, !tbaa !29
  store ptr %t674, ptr %l334, !tbaa !29
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t676 = load i32, ptr %l8, !tbaa !23
  %t679 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t675, i32 %t676)
  store i32 %t679, ptr %l337
  br label %bb194
bb193:
  store i1 false, ptr %l333, !tbaa !21
  br label %bb199
bb194:
  %t680 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t682 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s15, i32 %t680)
  store { i64, ptr } %t682, ptr %l339
  br label %bb195
bb195:
  %t683 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t683, ptr %l340
  %t684 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t686 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s15, i32 %t684)
  store { i64, ptr } %t686, ptr %l342
  br label %bb196
bb196:
  %t687 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t688 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s15, ptr %s15, { i64, ptr } %t687)
  store { i64, ptr } %t688, ptr %l343
  br label %bb197
bb197:
  %t689 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t690 = extractvalue { i64, ptr } %t689, 0
  %t691 = extractvalue { i64, ptr } %t689, 1
  %t692 = mul i64 %t690, 1
  %t693 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t692)
  call void @llvm.memcpy.p0.p0.i64(ptr %t693, ptr %t691, i64 %t692, i1 false)
  %t694 = insertvalue { i64, ptr } undef, i64 %t690, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t693, 1
  %t696 = load ptr, ptr %l334, !tbaa !29
  %t697 = load i32, ptr %l337, !tbaa !23
  %t698 = load { i64, ptr }, ptr %l339, !tbaa !27
  %t699 = load %"compiler/source:Span", ptr %l340
  %t701 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s15, ptr %s15, ptr %t696, i32 %t697, { i64, ptr } %t698, %"compiler/source:Span" %t699, { i64, ptr } %t695, i64 1, i1 false)
  store i1 %t701, ptr %l345
  br label %bb198
bb198:
  %t702 = load i1, ptr %l345, !tbaa !21
  store i1 %t702, ptr %l333, !tbaa !21
  br label %bb199
bb199:
  %t703 = load i1, ptr %l333, !tbaa !21
  br i1 %t703, label %bb200, label %bb201
bb200:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t705 = load %"compiler/source:Span", ptr %l1
  %t708 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t704, %"compiler/source:Span" %t705)
  store ptr %t708, ptr %l348
  br label %bb202
bb201:
  br label %bb203
bb202:
  call void @__olang_scope_close(ptr %s15)
  %t709 = load ptr, ptr %l348, !tbaa !29
  store ptr %t709, ptr %rv
  br label %ret
bb203:
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t711 = load i32, ptr %l8, !tbaa !23
  %t714 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t710, i32 %t711)
  store i1 %t714, ptr %l351
  br label %bb204
bb204:
  %t715 = load i1, ptr %l351, !tbaa !21
  br i1 %t715, label %bb205, label %bb206
bb205:
  store i1 true, ptr %l352, !tbaa !21
  br label %bb208
bb206:
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t717 = load i32, ptr %l9, !tbaa !23
  %t720 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t716, i32 %t717)
  store i1 %t720, ptr %l355
  br label %bb207
bb207:
  %t721 = load i1, ptr %l355, !tbaa !21
  store i1 %t721, ptr %l352, !tbaa !21
  br label %bb208
bb208:
  %t722 = load i1, ptr %l352, !tbaa !21
  br i1 %t722, label %bb209, label %bb210
bb209:
  %t723 = load ptr, ptr %l0, !tbaa !29
  store ptr %t723, ptr %l356, !tbaa !29
  %t724 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t724, ptr %l357
  %t725 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t727 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t725)
  store { i64, ptr } %t727, ptr %l359
  br label %bb211
bb210:
  store %olang.scope zeroinitializer, ptr %s19
  %t728 = load ptr, ptr %l0, !tbaa !29
  store ptr %t728, ptr %l372, !tbaa !29
  %t729 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t729, ptr %l373
  %t730 = load i32, ptr %l8, !tbaa !23
  store i32 %t730, ptr %l374, !tbaa !23
  %t731 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t733 = call { i64, ptr } @compiler_2fcheck_2eopNeed(ptr %s19, i32 %t731)
  store { i64, ptr } %t733, ptr %l376
  br label %bb217
bb211:
  %t734 = load { i64, ptr }, ptr %l359, !tbaa !27
  %t735 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t734)
  store { i64, ptr } %t735, ptr %l360
  br label %bb212
bb212:
  %t736 = load { i64, ptr }, ptr %l360, !tbaa !27
  %t737 = extractvalue { i64, ptr } %t736, 0
  %t738 = extractvalue { i64, ptr } %t736, 1
  %t739 = mul i64 %t737, 1
  %t740 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t739)
  call void @llvm.memcpy.p0.p0.i64(ptr %t740, ptr %t738, i64 %t739, i1 false)
  %t741 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t742 = insertvalue { i64, ptr } %t741, ptr %t740, 1
  store { i64, ptr } %t742, ptr %l361, !tbaa !27
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t744 = load i32, ptr %l8, !tbaa !23
  %t747 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t743, i32 %t744)
  store { i64, ptr } %t747, ptr %l364
  br label %bb213
bb213:
  %t748 = load { i64, ptr }, ptr %l364, !tbaa !27
  %t749 = extractvalue { i64, ptr } %t748, 0
  %t750 = extractvalue { i64, ptr } %t748, 1
  %t751 = mul i64 %t749, 1
  %t752 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t751)
  call void @llvm.memcpy.p0.p0.i64(ptr %t752, ptr %t750, i64 %t751, i1 false)
  %t753 = insertvalue { i64, ptr } undef, i64 %t749, 0
  %t754 = insertvalue { i64, ptr } %t753, ptr %t752, 1
  store { i64, ptr } %t754, ptr %l365, !tbaa !27
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t756 = load i32, ptr %l9, !tbaa !23
  %t759 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t755, i32 %t756)
  store { i64, ptr } %t759, ptr %l368
  br label %bb214
bb214:
  %t760 = load { i64, ptr }, ptr %l368, !tbaa !27
  %t761 = extractvalue { i64, ptr } %t760, 0
  %t762 = extractvalue { i64, ptr } %t760, 1
  %t763 = mul i64 %t761, 1
  %t764 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t763)
  call void @llvm.memcpy.p0.p0.i64(ptr %t764, ptr %t762, i64 %t763, i1 false)
  %t765 = insertvalue { i64, ptr } undef, i64 %t761, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t764, 1
  %t767 = load { i64, ptr }, ptr %l361, !tbaa !27
  %t768 = load { i64, ptr }, ptr %l365, !tbaa !27
  %t770 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandsDiffer(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t767, { i64, ptr } %t768, { i64, ptr } %t766)
  store %"compiler/diagmsg:Msg" %t770, ptr %l370
  br label %bb215
bb215:
  %t771 = load ptr, ptr %l356, !tbaa !29
  %t772 = load %"compiler/source:Span", ptr %l357
  %t773 = load %"compiler/diagmsg:Msg", ptr %l370
  %t774 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t771, %"compiler/source:Span" %t772, %"compiler/diagmsg:Msg" %t773)
  store i64 %t774, ptr %l371
  br label %bb216
bb216:
  br label %bb223
bb217:
  %t775 = load { i64, ptr }, ptr %l376, !tbaa !27
  %t776 = extractvalue { i64, ptr } %t775, 0
  %t777 = extractvalue { i64, ptr } %t775, 1
  %t778 = mul i64 %t776, 1
  %t779 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t778)
  call void @llvm.memcpy.p0.p0.i64(ptr %t779, ptr %t777, i64 %t778, i1 false)
  %t780 = insertvalue { i64, ptr } undef, i64 %t776, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t779, 1
  store { i64, ptr } %t781, ptr %l377, !tbaa !27
  %t782 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t784 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t782)
  store { i64, ptr } %t784, ptr %l379
  br label %bb218
bb218:
  %t785 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t786 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t785)
  store { i64, ptr } %t786, ptr %l380
  br label %bb219
bb219:
  %t787 = load { i64, ptr }, ptr %l380, !tbaa !27
  %t788 = extractvalue { i64, ptr } %t787, 0
  %t789 = extractvalue { i64, ptr } %t787, 1
  %t790 = mul i64 %t788, 1
  %t791 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t790)
  call void @llvm.memcpy.p0.p0.i64(ptr %t791, ptr %t789, i64 %t790, i1 false)
  %t792 = insertvalue { i64, ptr } undef, i64 %t788, 0
  %t793 = insertvalue { i64, ptr } %t792, ptr %t791, 1
  store { i64, ptr } %t793, ptr %l381, !tbaa !27
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t795 = load i32, ptr %l8, !tbaa !23
  %t798 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t794, i32 %t795)
  store { i64, ptr } %t798, ptr %l384
  br label %bb220
bb220:
  %t799 = load { i64, ptr }, ptr %l384, !tbaa !27
  %t800 = extractvalue { i64, ptr } %t799, 0
  %t801 = extractvalue { i64, ptr } %t799, 1
  %t802 = mul i64 %t800, 1
  %t803 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t802)
  call void @llvm.memcpy.p0.p0.i64(ptr %t803, ptr %t801, i64 %t802, i1 false)
  %t804 = insertvalue { i64, ptr } undef, i64 %t800, 0
  %t805 = insertvalue { i64, ptr } %t804, ptr %t803, 1
  %t806 = load { i64, ptr }, ptr %l381, !tbaa !27
  %t808 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotNumber(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t806, { i64, ptr } %t805)
  store %"compiler/diagmsg:Msg" %t808, ptr %l386
  br label %bb221
bb221:
  %t809 = load ptr, ptr %l372, !tbaa !29
  %t810 = load %"compiler/source:Span", ptr %l373
  %t811 = load i32, ptr %l374, !tbaa !23
  %t812 = load { i64, ptr }, ptr %l377, !tbaa !27
  %t813 = load %"compiler/diagmsg:Msg", ptr %l386
  %t814 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s19, ptr %v0, ptr %t809, %"compiler/source:Span" %t810, i32 %t811, { i64, ptr } %t812, %"compiler/diagmsg:Msg" %t813)
  store i64 %t814, ptr %l387
  br label %bb222
bb222:
  call void @__olang_scope_close(ptr %s19)
  br label %bb223
bb223:
  %t815 = load ptr, ptr %l0, !tbaa !29
  %t816 = load %"compiler/source:Span", ptr %l1
  %t819 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t815, %"compiler/source:Span" %t816)
  store ptr %t819, ptr %l390
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s15)
  %t820 = load ptr, ptr %l390, !tbaa !29
  store ptr %t820, ptr %rv
  br label %ret
bb225:
  %t821 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t823 = trunc i64 106 to i32
  %t824 = icmp eq i32 %t821, %t823
  br i1 %t824, label %bb226, label %bb227
bb226:
  store i1 true, ptr %l393, !tbaa !21
  br label %bb228
bb227:
  %t826 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t828 = trunc i64 107 to i32
  %t829 = icmp eq i32 %t826, %t828
  store i1 %t829, ptr %l393, !tbaa !21
  br label %bb228
bb228:
  %t831 = load i1, ptr %l393, !tbaa !21
  br i1 %t831, label %bb229, label %bb230
bb229:
  %t832 = load ptr, ptr %l0, !tbaa !29
  %t833 = load i32, ptr %l8, !tbaa !23
  %t836 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t832, i32 %t833)
  store i1 %t836, ptr %l398
  br label %bb231
bb230:
  br label %bb275
bb231:
  %t837 = load i1, ptr %l398, !tbaa !21
  %t838 = xor i1 %t837, true
  br i1 %t838, label %bb232, label %bb233
bb232:
  %t840 = load ptr, ptr %l0, !tbaa !29
  store ptr %t840, ptr %l400, !tbaa !29
  %t841 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t841, ptr %l401
  %t842 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t844 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t842)
  store { i64, ptr } %t844, ptr %l403
  br label %bb234
bb233:
  br label %bb239
bb234:
  %t845 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t846 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t845)
  store { i64, ptr } %t846, ptr %l404
  br label %bb235
bb235:
  %t847 = load { i64, ptr }, ptr %l404, !tbaa !27
  %t848 = extractvalue { i64, ptr } %t847, 0
  %t849 = extractvalue { i64, ptr } %t847, 1
  %t850 = mul i64 %t848, 1
  %t851 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t850)
  call void @llvm.memcpy.p0.p0.i64(ptr %t851, ptr %t849, i64 %t850, i1 false)
  %t852 = insertvalue { i64, ptr } undef, i64 %t848, 0
  %t853 = insertvalue { i64, ptr } %t852, ptr %t851, 1
  store { i64, ptr } %t853, ptr %l405, !tbaa !27
  %t854 = load ptr, ptr %l0, !tbaa !29
  %t855 = load i32, ptr %l8, !tbaa !23
  %t858 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t854, i32 %t855)
  store { i64, ptr } %t858, ptr %l408
  br label %bb236
bb236:
  %t859 = load { i64, ptr }, ptr %l408, !tbaa !27
  %t860 = extractvalue { i64, ptr } %t859, 0
  %t861 = extractvalue { i64, ptr } %t859, 1
  %t862 = mul i64 %t860, 1
  %t863 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t862)
  call void @llvm.memcpy.p0.p0.i64(ptr %t863, ptr %t861, i64 %t862, i1 false)
  %t864 = insertvalue { i64, ptr } undef, i64 %t860, 0
  %t865 = insertvalue { i64, ptr } %t864, ptr %t863, 1
  %t866 = load { i64, ptr }, ptr %l405, !tbaa !27
  %t868 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotInt(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t866, { i64, ptr } %t865)
  store %"compiler/diagmsg:Msg" %t868, ptr %l410
  br label %bb237
bb237:
  %t869 = load ptr, ptr %l400, !tbaa !29
  %t870 = load %"compiler/source:Span", ptr %l401
  %t871 = load %"compiler/diagmsg:Msg", ptr %l410
  %t872 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t869, %"compiler/source:Span" %t870, %"compiler/diagmsg:Msg" %t871)
  store i64 %t872, ptr %l411
  br label %bb238
bb238:
  br label %bb239
bb239:
  %t873 = load ptr, ptr %l0, !tbaa !29
  %t874 = load i32, ptr %l9, !tbaa !23
  %t877 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t873, i32 %t874)
  store i1 %t877, ptr %l414
  br label %bb240
bb240:
  %t878 = load i1, ptr %l414, !tbaa !21
  %t879 = xor i1 %t878, true
  br i1 %t879, label %bb241, label %bb242
bb241:
  %t881 = load ptr, ptr %l0, !tbaa !29
  store ptr %t881, ptr %l416, !tbaa !29
  %t882 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t882, ptr %l417
  %t883 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t885 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t883)
  store { i64, ptr } %t885, ptr %l419
  br label %bb243
bb242:
  br label %bb248
bb243:
  %t886 = load { i64, ptr }, ptr %l419, !tbaa !27
  %t887 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t886)
  store { i64, ptr } %t887, ptr %l420
  br label %bb244
bb244:
  %t888 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t889 = extractvalue { i64, ptr } %t888, 0
  %t890 = extractvalue { i64, ptr } %t888, 1
  %t891 = mul i64 %t889, 1
  %t892 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t891)
  call void @llvm.memcpy.p0.p0.i64(ptr %t892, ptr %t890, i64 %t891, i1 false)
  %t893 = insertvalue { i64, ptr } undef, i64 %t889, 0
  %t894 = insertvalue { i64, ptr } %t893, ptr %t892, 1
  store { i64, ptr } %t894, ptr %l421, !tbaa !27
  %t895 = load ptr, ptr %l0, !tbaa !29
  %t896 = load i32, ptr %l9, !tbaa !23
  %t899 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t895, i32 %t896)
  store { i64, ptr } %t899, ptr %l424
  br label %bb245
bb245:
  %t900 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t901 = extractvalue { i64, ptr } %t900, 0
  %t902 = extractvalue { i64, ptr } %t900, 1
  %t903 = mul i64 %t901, 1
  %t904 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t903)
  call void @llvm.memcpy.p0.p0.i64(ptr %t904, ptr %t902, i64 %t903, i1 false)
  %t905 = insertvalue { i64, ptr } undef, i64 %t901, 0
  %t906 = insertvalue { i64, ptr } %t905, ptr %t904, 1
  %t907 = load { i64, ptr }, ptr %l421, !tbaa !27
  %t909 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotInt(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t907, { i64, ptr } %t906)
  store %"compiler/diagmsg:Msg" %t909, ptr %l426
  br label %bb246
bb246:
  %t910 = load ptr, ptr %l416, !tbaa !29
  %t911 = load %"compiler/source:Span", ptr %l417
  %t912 = load %"compiler/diagmsg:Msg", ptr %l426
  %t913 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t910, %"compiler/source:Span" %t911, %"compiler/diagmsg:Msg" %t912)
  store i64 %t913, ptr %l427
  br label %bb247
bb247:
  br label %bb248
bb248:
  %t914 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t916 = call i1 @compiler_2fcheck_2ecompares(i32 %t914)
  store i1 %t916, ptr %l429
  br label %bb249
bb249:
  %t917 = load i1, ptr %l429, !tbaa !21
  %t918 = xor i1 %t917, true
  br i1 %t918, label %bb250, label %bb251
bb250:
  %t920 = load ptr, ptr %l0, !tbaa !29
  %t921 = load i32, ptr %l8, !tbaa !23
  %t924 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t920, i32 %t921)
  store i1 %t924, ptr %l434
  br label %bb252
bb251:
  store i1 false, ptr %l431, !tbaa !21
  br label %bb253
bb252:
  %t925 = load i1, ptr %l434, !tbaa !21
  store i1 %t925, ptr %l431, !tbaa !21
  br label %bb253
bb253:
  %t926 = load i1, ptr %l431, !tbaa !21
  br i1 %t926, label %bb254, label %bb255
bb254:
  %t927 = load ptr, ptr %l0, !tbaa !29
  %t929 = getelementptr %"compiler/check:Checker", ptr %t927, i32 0, i32 1
  %t930 = load ptr, ptr %t929, !tbaa !29
  %t931 = load i32, ptr %l8, !tbaa !23
  %t934 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t930, i32 %t931)
  store i1 %t934, ptr %l439
  br label %bb256
bb255:
  store i1 false, ptr %l435, !tbaa !21
  br label %bb257
bb256:
  %t935 = load i1, ptr %l439, !tbaa !21
  %t936 = xor i1 %t935, true
  store i1 %t936, ptr %l435, !tbaa !21
  br label %bb257
bb257:
  %t938 = load i1, ptr %l435, !tbaa !21
  br i1 %t938, label %bb258, label %bb259
bb258:
  store %olang.scope zeroinitializer, ptr %s23
  %t939 = load ptr, ptr %l0, !tbaa !29
  store ptr %t939, ptr %l441, !tbaa !29
  %t940 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t940, ptr %l442
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t942 = load i32, ptr %l8, !tbaa !23
  %t945 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t941, i32 %t942)
  store { i64, ptr } %t945, ptr %l445
  br label %bb260
bb259:
  br label %bb267
bb260:
  %t946 = load { i64, ptr }, ptr %l445, !tbaa !27
  %t947 = extractvalue { i64, ptr } %t946, 0
  %t948 = extractvalue { i64, ptr } %t946, 1
  %t949 = mul i64 %t947, 1
  %t950 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t949)
  call void @llvm.memcpy.p0.p0.i64(ptr %t950, ptr %t948, i64 %t949, i1 false)
  %t951 = insertvalue { i64, ptr } undef, i64 %t947, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t950, 1
  store { i64, ptr } %t952, ptr %l446, !tbaa !27
  %t953 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t955 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t953)
  store { i64, ptr } %t955, ptr %l448
  br label %bb261
bb261:
  %t956 = load { i64, ptr }, ptr %l448, !tbaa !27
  %t957 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t956)
  store { i64, ptr } %t957, ptr %l449
  br label %bb262
bb262:
  %t958 = load { i64, ptr }, ptr %l449, !tbaa !27
  %t959 = extractvalue { i64, ptr } %t958, 0
  %t960 = extractvalue { i64, ptr } %t958, 1
  %t961 = mul i64 %t959, 1
  %t962 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t961)
  call void @llvm.memcpy.p0.p0.i64(ptr %t962, ptr %t960, i64 %t961, i1 false)
  %t963 = insertvalue { i64, ptr } undef, i64 %t959, 0
  %t964 = insertvalue { i64, ptr } %t963, ptr %t962, 1
  store { i64, ptr } %t964, ptr %l450, !tbaa !27
  %t965 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t967 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s23, i32 %t965)
  store { i64, ptr } %t967, ptr %l452
  br label %bb263
bb263:
  %t968 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t969 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t970 = load { i64, ptr }, ptr %l452, !tbaa !27
  %t971 = extractvalue { i64, ptr } %t970, 1
  %t972 = extractvalue { i64, ptr } %t970, 0
  %t973 = add i64 %t969, %t972
  %t974 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t975 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t976 = add i64 %t973, %t975
  %t977 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t976)
  call void @olang_textcopy(ptr %t977, ptr %t968, i64 %t969)
  %t978 = getelementptr i8, ptr %t977, i64 %t969
  call void @olang_textcopy(ptr %t978, ptr %t971, i64 %t972)
  %t979 = getelementptr i8, ptr %t978, i64 %t972
  call void @olang_textcopy(ptr %t979, ptr %t974, i64 %t975)
  %t980 = insertvalue { i64, ptr } undef, i64 %t976, 0
  %t981 = insertvalue { i64, ptr } %t980, ptr %t977, 1
  %t983 = extractvalue { i64, ptr } %t981, 0
  %t984 = extractvalue { i64, ptr } %t981, 1
  %t985 = mul i64 %t983, 1
  %t986 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t985)
  call void @llvm.memcpy.p0.p0.i64(ptr %t986, ptr %t984, i64 %t985, i1 false)
  %t987 = insertvalue { i64, ptr } undef, i64 %t983, 0
  %t988 = insertvalue { i64, ptr } %t987, ptr %t986, 1
  %t989 = load { i64, ptr }, ptr %l446, !tbaa !27
  %t990 = load { i64, ptr }, ptr %l450, !tbaa !27
  %t992 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t989, { i64, ptr } %t990, { i64, ptr } %t988)
  store %"compiler/diagmsg:Msg" %t992, ptr %l455
  br label %bb264
bb264:
  %t993 = load ptr, ptr %l441, !tbaa !29
  %t994 = load %"compiler/source:Span", ptr %l442
  %t995 = load %"compiler/diagmsg:Msg", ptr %l455
  %t996 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t993, %"compiler/source:Span" %t994, %"compiler/diagmsg:Msg" %t995)
  store i64 %t996, ptr %l456
  br label %bb265
bb265:
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t998 = load %"compiler/source:Span", ptr %l1
  %t1001 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t997, %"compiler/source:Span" %t998)
  store ptr %t1001, ptr %l459
  br label %bb266
bb266:
  call void @__olang_scope_close(ptr %s23)
  %t1002 = load ptr, ptr %l459, !tbaa !29
  store ptr %t1002, ptr %rv
  br label %ret
bb267:
  %t1003 = load ptr, ptr %l0, !tbaa !29
  %t1004 = load i32, ptr %l8, !tbaa !23
  %t1005 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1005, ptr %l462, !tbaa !29
  %t1006 = load %"compiler/source:Span", ptr %l7
  %t1007 = load ptr, ptr %l462, !tbaa !29
  %t1008 = call ptr @__olang_scope_of(ptr %t1007, ptr null)
  %t1009 = ptrtoint ptr %t1008 to i64
  %t1011 = inttoptr i64 %t1009 to ptr
  %t1014 = load ptr, ptr %l462, !tbaa !29
  %t1016 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftInRange(ptr %v0, ptr %t1011, ptr %t1003, i32 %t1004, ptr %t1014, %"compiler/source:Span" %t1006)
  store i1 %t1016, ptr %l465
  br label %bb268
bb268:
  %t1017 = load i1, ptr %l465, !tbaa !21
  %t1018 = xor i1 %t1017, true
  br i1 %t1018, label %bb269, label %bb270
bb269:
  %t1020 = load ptr, ptr %l0, !tbaa !29
  %t1021 = load %"compiler/source:Span", ptr %l1
  %t1024 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1020, %"compiler/source:Span" %t1021)
  store ptr %t1024, ptr %l469
  br label %bb271
bb270:
  br label %bb272
bb271:
  %t1025 = load ptr, ptr %l469, !tbaa !29
  store ptr %t1025, ptr %rv
  br label %ret
bb272:
  %t1026 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1026, ptr %l470, !tbaa !29
  %t1027 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1027, ptr %l471
  %t1028 = load i32, ptr %l8, !tbaa !23
  store i32 %t1028, ptr %l472, !tbaa !23
  %t1029 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1031 = call i32 @compiler_2fcheck_2ebinaryOp(i32 %t1029)
  store i32 %t1031, ptr %l474
  br label %bb273
bb273:
  %t1032 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1032, ptr %l475, !tbaa !29
  %t1033 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1033, ptr %l476, !tbaa !29
  %t1034 = load ptr, ptr %l475, !tbaa !29
  %t1035 = call ptr @__olang_scope_of(ptr %t1034, ptr null)
  %t1036 = ptrtoint ptr %t1035 to i64
  %t1037 = load ptr, ptr %l476, !tbaa !29
  %t1038 = call ptr @__olang_scope_of(ptr %t1037, ptr null)
  %t1039 = ptrtoint ptr %t1038 to i64
  %t1041 = inttoptr i64 %t1036 to ptr
  %t1043 = inttoptr i64 %t1039 to ptr
  %t1044 = load ptr, ptr %l470, !tbaa !29
  %t1045 = load %"compiler/source:Span", ptr %l471
  %t1046 = load i32, ptr %l472, !tbaa !23
  %t1047 = load i32, ptr %l474, !range !{i32 0, i32 52}
  %t1048 = load ptr, ptr %l475, !tbaa !29
  %t1049 = load ptr, ptr %l476, !tbaa !29
  %t1050 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedPrim(ptr %v0, ptr %t1041, ptr %t1043, ptr %v3, ptr %t1044, %"compiler/source:Span" %t1045, i32 %t1046, i32 %t1047, ptr %t1048, ptr %t1049)
  store ptr %t1050, ptr %l479
  br label %bb274
bb274:
  %t1051 = load ptr, ptr %l479, !tbaa !29
  store ptr %t1051, ptr %rv
  br label %ret
bb275:
  %t1052 = load i32, ptr %l8, !tbaa !23
  store i32 %t1052, ptr %l17, !tbaa !23
  %t1054 = load i32, ptr %l8, !tbaa !23
  %t1055 = load i32, ptr %l9, !tbaa !23
  %t1058 = icmp ne i32 %t1054, %t1055
  br i1 %t1058, label %bb276, label %bb277
bb276:
  %t1060 = load ptr, ptr %l0, !tbaa !29
  %t1062 = getelementptr %"compiler/check:Checker", ptr %t1060, i32 0, i32 1
  %t1063 = load ptr, ptr %t1062, !tbaa !29
  %t1064 = load i32, ptr %l8, !tbaa !23
  %t1065 = load i32, ptr %l9, !tbaa !23
  %t1069 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t1063, i32 %t1064, i32 %t1065)
  store i32 %t1069, ptr %l488
  br label %bb278
bb277:
  br label %bb295
bb278:
  %t1070 = load i32, ptr %l488, !tbaa !23
  store i32 %t1070, ptr %l17, !tbaa !23
  %t1071 = load i32, ptr %l17, !tbaa !23
  %t1073 = icmp slt i32 %t1071, 0
  br i1 %t1073, label %bb279, label %bb280
bb279:
  %t1075 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1075, ptr %l491, !tbaa !29
  %t1076 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t1076, ptr %l492
  %t1077 = load ptr, ptr %l0, !tbaa !29
  %t1078 = load i32, ptr %l8, !tbaa !23
  %t1081 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t1077, i32 %t1078)
  store { i64, ptr } %t1081, ptr %l495
  br label %bb281
bb280:
  br label %bb286
bb281:
  %t1082 = load { i64, ptr }, ptr %l495, !tbaa !27
  %t1083 = extractvalue { i64, ptr } %t1082, 0
  %t1084 = extractvalue { i64, ptr } %t1082, 1
  %t1085 = mul i64 %t1083, 1
  %t1086 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1085)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1086, ptr %t1084, i64 %t1085, i1 false)
  %t1087 = insertvalue { i64, ptr } undef, i64 %t1083, 0
  %t1088 = insertvalue { i64, ptr } %t1087, ptr %t1086, 1
  store { i64, ptr } %t1088, ptr %l496, !tbaa !27
  %t1089 = load ptr, ptr %l0, !tbaa !29
  %t1090 = load i32, ptr %l9, !tbaa !23
  %t1093 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t1089, i32 %t1090)
  store { i64, ptr } %t1093, ptr %l499
  br label %bb282
bb282:
  %t1094 = load { i64, ptr }, ptr %l499, !tbaa !27
  %t1095 = extractvalue { i64, ptr } %t1094, 0
  %t1096 = extractvalue { i64, ptr } %t1094, 1
  %t1097 = mul i64 %t1095, 1
  %t1098 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1097)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1098, ptr %t1096, i64 %t1097, i1 false)
  %t1099 = insertvalue { i64, ptr } undef, i64 %t1095, 0
  %t1100 = insertvalue { i64, ptr } %t1099, ptr %t1098, 1
  %t1101 = load { i64, ptr }, ptr %l496, !tbaa !27
  %t1103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumbersDoNotMeet(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t1101, { i64, ptr } %t1100)
  store %"compiler/diagmsg:Msg" %t1103, ptr %l501
  br label %bb283
bb283:
  %t1104 = load ptr, ptr %l491, !tbaa !29
  %t1105 = load %"compiler/source:Span", ptr %l492
  %t1106 = load %"compiler/diagmsg:Msg", ptr %l501
  %t1107 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1104, %"compiler/source:Span" %t1105, %"compiler/diagmsg:Msg" %t1106)
  store i64 %t1107, ptr %l502
  br label %bb284
bb284:
  %t1108 = load ptr, ptr %l0, !tbaa !29
  %t1109 = load %"compiler/source:Span", ptr %l1
  %t1112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1108, %"compiler/source:Span" %t1109)
  store ptr %t1112, ptr %l505
  br label %bb285
bb285:
  %t1113 = load ptr, ptr %l505, !tbaa !29
  store ptr %t1113, ptr %rv
  br label %ret
bb286:
  %t1114 = load i32, ptr %l17, !tbaa !23
  %t1115 = load i32, ptr %l8, !tbaa !23
  %t1118 = icmp ne i32 %t1114, %t1115
  br i1 %t1118, label %bb287, label %bb288
bb287:
  %t1120 = load ptr, ptr %l0, !tbaa !29
  %t1122 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1122, ptr %l511, !tbaa !29
  %t1123 = load i32, ptr %l17, !tbaa !23
  %t1124 = load ptr, ptr %l511, !tbaa !29
  %t1125 = call ptr @__olang_scope_of(ptr %t1124, ptr null)
  %t1126 = ptrtoint ptr %t1125 to i64
  %t1128 = inttoptr i64 %t1126 to ptr
  %t1131 = load ptr, ptr %l511, !tbaa !29
  %t1133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %t1128, ptr %v0, ptr %t1120, %"compiler/source:Span" %a6, ptr %t1131, i32 %t1123)
  store ptr %t1133, ptr %l514
  br label %bb289
bb288:
  br label %bb290
bb289:
  %t1134 = load ptr, ptr %l514, !tbaa !29
  store ptr %t1134, ptr %l4, !tbaa !29
  br label %bb290
bb290:
  %t1135 = load i32, ptr %l17, !tbaa !23
  %t1136 = load i32, ptr %l9, !tbaa !23
  %t1139 = icmp ne i32 %t1135, %t1136
  br i1 %t1139, label %bb291, label %bb292
bb291:
  %t1141 = load ptr, ptr %l0, !tbaa !29
  %t1142 = load %"compiler/source:Span", ptr %l7
  %t1143 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1143, ptr %l520, !tbaa !29
  %t1144 = load i32, ptr %l17, !tbaa !23
  %t1145 = load ptr, ptr %l520, !tbaa !29
  %t1146 = call ptr @__olang_scope_of(ptr %t1145, ptr null)
  %t1147 = ptrtoint ptr %t1146 to i64
  %t1149 = inttoptr i64 %t1147 to ptr
  %t1152 = load ptr, ptr %l520, !tbaa !29
  %t1154 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %t1149, ptr %v0, ptr %t1141, %"compiler/source:Span" %t1142, ptr %t1152, i32 %t1144)
  store ptr %t1154, ptr %l523
  br label %bb293
bb292:
  br label %bb294
bb293:
  %t1155 = load ptr, ptr %l523, !tbaa !29
  store ptr %t1155, ptr %l5, !tbaa !29
  br label %bb294
bb294:
  br label %bb295
bb295:
  %t1156 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1158 = call i1 @compiler_2fcheck_2eintOnly(i32 %t1156)
  store i1 %t1158, ptr %l525
  br label %bb296
bb296:
  %t1159 = load i1, ptr %l525, !tbaa !21
  br i1 %t1159, label %bb297, label %bb298
bb297:
  %t1160 = load ptr, ptr %l0, !tbaa !29
  %t1161 = load i32, ptr %l17, !tbaa !23
  %t1164 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t1160, i32 %t1161)
  store i1 %t1164, ptr %l529
  br label %bb299
bb298:
  store i1 false, ptr %l526, !tbaa !21
  br label %bb300
bb299:
  %t1165 = load i1, ptr %l529, !tbaa !21
  %t1166 = xor i1 %t1165, true
  store i1 %t1166, ptr %l526, !tbaa !21
  br label %bb300
bb300:
  %t1168 = load i1, ptr %l526, !tbaa !21
  br i1 %t1168, label %bb301, label %bb302
bb301:
  %t1169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1169, ptr %l531, !tbaa !29
  %t1170 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t1170, ptr %l532
  %t1171 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1173 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t1171)
  store { i64, ptr } %t1173, ptr %l534
  br label %bb303
bb302:
  br label %bb309
bb303:
  %t1174 = load { i64, ptr }, ptr %l534, !tbaa !27
  %t1175 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t1174)
  store { i64, ptr } %t1175, ptr %l535
  br label %bb304
bb304:
  %t1176 = load { i64, ptr }, ptr %l535, !tbaa !27
  %t1177 = extractvalue { i64, ptr } %t1176, 0
  %t1178 = extractvalue { i64, ptr } %t1176, 1
  %t1179 = mul i64 %t1177, 1
  %t1180 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1180, ptr %t1178, i64 %t1179, i1 false)
  %t1181 = insertvalue { i64, ptr } undef, i64 %t1177, 0
  %t1182 = insertvalue { i64, ptr } %t1181, ptr %t1180, 1
  store { i64, ptr } %t1182, ptr %l536, !tbaa !27
  %t1183 = load ptr, ptr %l0, !tbaa !29
  %t1184 = load i32, ptr %l17, !tbaa !23
  %t1187 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t1183, i32 %t1184)
  store { i64, ptr } %t1187, ptr %l539
  br label %bb305
bb305:
  %t1188 = load { i64, ptr }, ptr %l539, !tbaa !27
  %t1189 = extractvalue { i64, ptr } %t1188, 0
  %t1190 = extractvalue { i64, ptr } %t1188, 1
  %t1191 = mul i64 %t1189, 1
  %t1192 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1192, ptr %t1190, i64 %t1191, i1 false)
  %t1193 = insertvalue { i64, ptr } undef, i64 %t1189, 0
  %t1194 = insertvalue { i64, ptr } %t1193, ptr %t1192, 1
  %t1195 = load { i64, ptr }, ptr %l536, !tbaa !27
  %t1197 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotInt(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t1195, { i64, ptr } %t1194)
  store %"compiler/diagmsg:Msg" %t1197, ptr %l541
  br label %bb306
bb306:
  %t1198 = load ptr, ptr %l531, !tbaa !29
  %t1199 = load %"compiler/source:Span", ptr %l532
  %t1200 = load %"compiler/diagmsg:Msg", ptr %l541
  %t1201 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1198, %"compiler/source:Span" %t1199, %"compiler/diagmsg:Msg" %t1200)
  store i64 %t1201, ptr %l542
  br label %bb307
bb307:
  %t1202 = load ptr, ptr %l0, !tbaa !29
  %t1203 = load %"compiler/source:Span", ptr %l1
  %t1206 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1202, %"compiler/source:Span" %t1203)
  store ptr %t1206, ptr %l545
  br label %bb308
bb308:
  %t1207 = load ptr, ptr %l545, !tbaa !29
  store ptr %t1207, ptr %rv
  br label %ret
bb309:
  %t1208 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1210 = call i1 @compiler_2fcheck_2ecompares(i32 %t1208)
  store i1 %t1210, ptr %l547
  br label %bb310
bb310:
  %t1211 = load i1, ptr %l547, !tbaa !21
  %t1212 = xor i1 %t1211, true
  br i1 %t1212, label %bb311, label %bb312
bb311:
  %t1214 = load ptr, ptr %l0, !tbaa !29
  %t1215 = load i32, ptr %l17, !tbaa !23
  %t1218 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1214, i32 %t1215)
  store i1 %t1218, ptr %l552
  br label %bb313
bb312:
  store i1 false, ptr %l549, !tbaa !21
  br label %bb314
bb313:
  %t1219 = load i1, ptr %l552, !tbaa !21
  store i1 %t1219, ptr %l549, !tbaa !21
  br label %bb314
bb314:
  %t1220 = load i1, ptr %l549, !tbaa !21
  br i1 %t1220, label %bb315, label %bb316
bb315:
  %t1221 = load ptr, ptr %l0, !tbaa !29
  %t1223 = getelementptr %"compiler/check:Checker", ptr %t1221, i32 0, i32 1
  %t1224 = load ptr, ptr %t1223, !tbaa !29
  %t1225 = load i32, ptr %l17, !tbaa !23
  %t1228 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t1224, i32 %t1225)
  store i1 %t1228, ptr %l557
  br label %bb317
bb316:
  store i1 false, ptr %l553, !tbaa !21
  br label %bb318
bb317:
  %t1229 = load i1, ptr %l557, !tbaa !21
  %t1230 = xor i1 %t1229, true
  store i1 %t1230, ptr %l553, !tbaa !21
  br label %bb318
bb318:
  %t1232 = load i1, ptr %l553, !tbaa !21
  br i1 %t1232, label %bb319, label %bb320
bb319:
  store %olang.scope zeroinitializer, ptr %s31
  %t1233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1233, ptr %l559, !tbaa !29
  %t1234 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t1234, ptr %l560
  %t1235 = load ptr, ptr %l0, !tbaa !29
  %t1236 = load i32, ptr %l17, !tbaa !23
  %t1239 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t1235, i32 %t1236)
  store { i64, ptr } %t1239, ptr %l563
  br label %bb321
bb320:
  br label %bb328
bb321:
  %t1240 = load { i64, ptr }, ptr %l563, !tbaa !27
  %t1241 = extractvalue { i64, ptr } %t1240, 0
  %t1242 = extractvalue { i64, ptr } %t1240, 1
  %t1243 = mul i64 %t1241, 1
  %t1244 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1244, ptr %t1242, i64 %t1243, i1 false)
  %t1245 = insertvalue { i64, ptr } undef, i64 %t1241, 0
  %t1246 = insertvalue { i64, ptr } %t1245, ptr %t1244, 1
  store { i64, ptr } %t1246, ptr %l564, !tbaa !27
  %t1247 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1249 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t1247)
  store { i64, ptr } %t1249, ptr %l566
  br label %bb322
bb322:
  %t1250 = load { i64, ptr }, ptr %l566, !tbaa !27
  %t1251 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t1250)
  store { i64, ptr } %t1251, ptr %l567
  br label %bb323
bb323:
  %t1252 = load { i64, ptr }, ptr %l567, !tbaa !27
  %t1253 = extractvalue { i64, ptr } %t1252, 0
  %t1254 = extractvalue { i64, ptr } %t1252, 1
  %t1255 = mul i64 %t1253, 1
  %t1256 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1256, ptr %t1254, i64 %t1255, i1 false)
  %t1257 = insertvalue { i64, ptr } undef, i64 %t1253, 0
  %t1258 = insertvalue { i64, ptr } %t1257, ptr %t1256, 1
  store { i64, ptr } %t1258, ptr %l568, !tbaa !27
  %t1259 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1261 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s31, i32 %t1259)
  store { i64, ptr } %t1261, ptr %l570
  br label %bb324
bb324:
  %t1262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t1263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t1264 = load { i64, ptr }, ptr %l570, !tbaa !27
  %t1265 = extractvalue { i64, ptr } %t1264, 1
  %t1266 = extractvalue { i64, ptr } %t1264, 0
  %t1267 = add i64 %t1263, %t1266
  %t1268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t1269 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t1270 = add i64 %t1267, %t1269
  %t1271 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1270)
  call void @olang_textcopy(ptr %t1271, ptr %t1262, i64 %t1263)
  %t1272 = getelementptr i8, ptr %t1271, i64 %t1263
  call void @olang_textcopy(ptr %t1272, ptr %t1265, i64 %t1266)
  %t1273 = getelementptr i8, ptr %t1272, i64 %t1266
  call void @olang_textcopy(ptr %t1273, ptr %t1268, i64 %t1269)
  %t1274 = insertvalue { i64, ptr } undef, i64 %t1270, 0
  %t1275 = insertvalue { i64, ptr } %t1274, ptr %t1271, 1
  %t1277 = extractvalue { i64, ptr } %t1275, 0
  %t1278 = extractvalue { i64, ptr } %t1275, 1
  %t1279 = mul i64 %t1277, 1
  %t1280 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t1279)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1280, ptr %t1278, i64 %t1279, i1 false)
  %t1281 = insertvalue { i64, ptr } undef, i64 %t1277, 0
  %t1282 = insertvalue { i64, ptr } %t1281, ptr %t1280, 1
  %t1283 = load { i64, ptr }, ptr %l564, !tbaa !27
  %t1284 = load { i64, ptr }, ptr %l568, !tbaa !27
  %t1286 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t1283, { i64, ptr } %t1284, { i64, ptr } %t1282)
  store %"compiler/diagmsg:Msg" %t1286, ptr %l573
  br label %bb325
bb325:
  %t1287 = load ptr, ptr %l559, !tbaa !29
  %t1288 = load %"compiler/source:Span", ptr %l560
  %t1289 = load %"compiler/diagmsg:Msg", ptr %l573
  %t1290 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t1287, %"compiler/source:Span" %t1288, %"compiler/diagmsg:Msg" %t1289)
  store i64 %t1290, ptr %l574
  br label %bb326
bb326:
  %t1291 = load ptr, ptr %l0, !tbaa !29
  %t1292 = load %"compiler/source:Span", ptr %l1
  %t1295 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t1291, %"compiler/source:Span" %t1292)
  store ptr %t1295, ptr %l577
  br label %bb327
bb327:
  call void @__olang_scope_close(ptr %s31)
  %t1296 = load ptr, ptr %l577, !tbaa !29
  store ptr %t1296, ptr %rv
  br label %ret
bb328:
  %t1297 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1299 = call i1 @compiler_2fcheck_2ecompares(i32 %t1297)
  store i1 %t1299, ptr %l579
  br label %bb329
bb329:
  %t1300 = load i1, ptr %l579, !tbaa !21
  br i1 %t1300, label %bb330, label %bb331
bb330:
  %t1301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1301, ptr %l580, !tbaa !29
  %t1302 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1302, ptr %l581
  %t1303 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t1303, ptr %l582, !tbaa !23
  %t1304 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1306 = call i32 @compiler_2fcheck_2ebinaryOp(i32 %t1304)
  store i32 %t1306, ptr %l584
  br label %bb332
bb331:
  br label %bb334
bb332:
  %t1307 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1307, ptr %l585, !tbaa !29
  %t1308 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1308, ptr %l587, !tbaa !29
  %t1310 = load ptr, ptr %l585, !tbaa !29
  %t1311 = call ptr @__olang_scope_of(ptr %t1310, ptr null)
  %t1312 = ptrtoint ptr %t1311 to i64
  %t1313 = load ptr, ptr %l587, !tbaa !29
  %t1314 = call ptr @__olang_scope_of(ptr %t1313, ptr null)
  %t1315 = ptrtoint ptr %t1314 to i64
  %t1317 = inttoptr i64 %t1312 to ptr
  %t1319 = inttoptr i64 %t1315 to ptr
  %t1320 = load ptr, ptr %l580, !tbaa !29
  %t1321 = load %"compiler/source:Span", ptr %l581
  %t1322 = load i32, ptr %l582, !tbaa !23
  %t1323 = load i32, ptr %l584, !range !{i32 0, i32 52}
  %t1324 = load ptr, ptr %l585, !tbaa !29
  %t1325 = load ptr, ptr %l587, !tbaa !29
  %t1326 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %t1317, ptr %t1319, ptr %v3, ptr %t1320, %"compiler/source:Span" %t1321, i32 %t1322, i32 %t1323, ptr %t1324, ptr %t1325)
  store ptr %t1326, ptr %l590
  br label %bb333
bb333:
  %t1327 = load ptr, ptr %l590, !tbaa !29
  store ptr %t1327, ptr %rv
  br label %ret
bb334:
  %t1328 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1328, ptr %l591, !tbaa !29
  %t1329 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1329, ptr %l592
  %t1330 = load i32, ptr %l17, !tbaa !23
  store i32 %t1330, ptr %l593, !tbaa !23
  %t1331 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t1333 = call i32 @compiler_2fcheck_2ebinaryOp(i32 %t1331)
  store i32 %t1333, ptr %l595
  br label %bb335
bb335:
  %t1334 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1334, ptr %l596, !tbaa !29
  %t1335 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1335, ptr %l597, !tbaa !29
  %t1336 = load ptr, ptr %l596, !tbaa !29
  %t1337 = call ptr @__olang_scope_of(ptr %t1336, ptr null)
  %t1338 = ptrtoint ptr %t1337 to i64
  %t1339 = load ptr, ptr %l597, !tbaa !29
  %t1340 = call ptr @__olang_scope_of(ptr %t1339, ptr null)
  %t1341 = ptrtoint ptr %t1340 to i64
  %t1343 = inttoptr i64 %t1338 to ptr
  %t1345 = inttoptr i64 %t1341 to ptr
  %t1346 = load ptr, ptr %l591, !tbaa !29
  %t1347 = load %"compiler/source:Span", ptr %l592
  %t1348 = load i32, ptr %l593, !tbaa !23
  %t1349 = load i32, ptr %l595, !range !{i32 0, i32 52}
  %t1350 = load ptr, ptr %l596, !tbaa !29
  %t1351 = load ptr, ptr %l597, !tbaa !29
  %t1352 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedPrim(ptr %v0, ptr %t1343, ptr %t1345, ptr %v3, ptr %t1346, %"compiler/source:Span" %t1347, i32 %t1348, i32 %t1349, ptr %t1350, ptr %t1351)
  store ptr %t1352, ptr %l600
  br label %bb336
bb336:
  %t1353 = load ptr, ptr %l600, !tbaa !29
  store ptr %t1353, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l5 = alloca i1
  %l8 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l16 = alloca i64
  %l20 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l24 = alloca i32
  %l28 = alloca { i64, ptr }
  %l32 = alloca i32
  %l34 = alloca %"compiler/typed:Make"
  %rv = alloca ptr
  %t57 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t10)
  store i32 %t13, ptr %l11
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t14, i32 %t15, i64 0)
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t16)
  store %"compiler/source:Span" %t18, ptr %l13
  br label %bb7
bb7:
  %t19 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t19, ptr %l2
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 36
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l16
  br label %bb8
bb8:
  %t25 = load i64, ptr %l16, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 36
  %t29 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  br label %bb9
bb9:
  %t32 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t32, ptr %l20
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t36 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t33)
  store i32 %t36, ptr %l23
  br label %bb10
bb10:
  store i32 4, ptr %l24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 36
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  store { i64, ptr } %t43, ptr %l28
  br label %bb11
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l2
  %t49 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t44, i32 1, %"compiler/source:Span" %t45)
  store i32 %t49, ptr %l32
  br label %bb12
bb12:
  %t50 = load i32, ptr %l24, !range !{i32 0, i32 5}
  %t51 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t52 = load i32, ptr %l32, !tbaa !23
  %t54 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t50, i64 0, { i64, ptr } %t51, ptr null, i32 %t52, i32 0, i1 false)
  store %"compiler/typed:Make" %t54, ptr %l34
  br label %bb13
bb13:
  %t55 = load %"compiler/typed:Make", ptr %l34
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t55, ptr %t56
  store { i64, [5 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 0
  store i64 7, ptr %t58
  %t59 = load %"compiler/source:Span", ptr %l20
  %t60 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t59, 0
  %t61 = load i32, ptr %l23, !tbaa !23
  %t62 = insertvalue { %"compiler/source:Span", i32, ptr } %t60, i32 %t61, 1
  %t64 = insertvalue { %"compiler/source:Span", i32, ptr } %t62, ptr %t56, 2
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t64, ptr %t65
  %t66 = load { i64, [5 x i64] }, ptr %t57
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t66, ptr %t68
  store ptr %t68, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRefIn(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
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
  %t44 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %t36, i32 %t37, i64 %t40)
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l12 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i64
  %l32 = alloca ptr
  %l40 = alloca ptr
  %l43 = alloca { i64, [3 x i64] }
  %l44 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %l54 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 16
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l12
  br label %bb3
bb3:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp eq i64 %t10, 0
  store i1 %t11, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l15, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l19
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Func", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t28, i32 %t27)
  store { i64, ptr } %t30, ptr %l22
  br label %bb9
bb9:
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t32, { i64, ptr } %t33)
  store i1 %t36, ptr %l25
  br label %bb10
bb10:
  %t37 = load i1, ptr %l25, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb15
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l30
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t46)
  store ptr %t48, ptr %l32
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t51 = getelementptr %"compiler/check:frame", ptr %t49, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr %l30, !tbaa !24
  %t55 = icmp eq i64 %t53, %t52
  store i1 %t55, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l26, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 4
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l40, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t73 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t69, %"compiler/source:Span" %a4)
  store { i64, [3 x i64] } %t73, ptr %l43
  br label %bb19
bb19:
  store { i64, ptr } %a5, ptr %l44, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l45, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t76, i32 %a2)
  store i32 %t80, ptr %l48
  br label %bb20
bb20:
  %t81 = load ptr, ptr %l45, !tbaa !29
  %t82 = load i32, ptr %l48, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l49
  br label %bb21
bb21:
  %t84 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t97 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v2, ptr %v0, ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t93, { i64, ptr } %t90, { i64, ptr } %t91, { i64, ptr } %t92)
  store %"compiler/diagmsg:Msg" %t97, ptr %l53
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l40, !tbaa !29
  %t99 = load { i64, [3 x i64] }, ptr %l43
  %t100 = load %"compiler/diagmsg:Msg", ptr %l53
  %t101 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t98, { i64, [3 x i64] } %t99, %"compiler/diagmsg:Msg" %t100)
  store i64 %t101, ptr %l54
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflName(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l19 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l33 = alloca i64
  %l34 = alloca ptr
  %l39 = alloca ptr
  %rv = alloca ptr
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
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 4
  %t7 = getelementptr %"compiler/generic:Context", ptr %t6, i32 0, i32 3
  %t11 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %t7, i32 %a2)
  %t12 = extractvalue { i32, i32 } %t11, 1
  %t13 = extractvalue { i32, i32 } %t11, 0
  store i32 %t13, ptr %l11
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i32 %t12, ptr %l10
  br label %bb2
bb2:
  %t16 = load i32, ptr %l10, !tbaa !23
  store i32 %t16, ptr %l4, !tbaa !23
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i32 -1, ptr %l4, !tbaa !23
  br label %bb5
bb5:
  %t17 = load i32, ptr %l4, !tbaa !23
  store i32 %t17, ptr %l3, !tbaa !23
  %t18 = load i32, ptr %l3, !tbaa !23
  %t20 = icmp slt i32 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  store ptr null, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l19
  br label %bb9
bb9:
  %t33 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t35 = trunc i64 26 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t39, ptr %l23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l28
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t55, i32 %t56)
  store i64 %t59, ptr %l33
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l22, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l23
  %t62 = load i32, ptr %l28, !tbaa !23
  %t63 = load i64, ptr %l33, !tbaa !24
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t60, %"compiler/source:Span" %t61, i32 %t62, i64 %t63)
  store ptr %t64, ptr %l34
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l34, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l1
  %t69 = load i32, ptr %l3, !tbaa !23
  %t73 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %t67, %"compiler/source:Span" %t68, i32 %t69)
  store ptr %t73, ptr %l39
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l39, !tbaa !29
  store ptr %t74, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, ptr }
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca { i64, ptr }
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca ptr
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca ptr
  %l50 = alloca i1
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca { i64, ptr }
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i1
  %l172 = alloca ptr
  %l173 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca i1
  %l219 = alloca ptr
  %l220 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l241 = alloca ptr
  %l242 = alloca i1
  %l255 = alloca ptr
  %l256 = alloca i1
  %l264 = alloca ptr
  %l271 = alloca ptr
  %l272 = alloca i1
  %l285 = alloca ptr
  %l286 = alloca i1
  %l299 = alloca ptr
  %l300 = alloca i1
  %l313 = alloca ptr
  %l314 = alloca i1
  %l321 = alloca ptr
  %l322 = alloca %"compiler/source:Span"
  %l327 = alloca ptr
  %l330 = alloca ptr
  %l331 = alloca i1
  %l341 = alloca ptr
  %l342 = alloca i1
  %l355 = alloca ptr
  %l357 = alloca %"compiler/source:Span"
  %t659 = alloca { i64, [3 x i64] }, align 8
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t6 = load ptr, ptr %l60, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l60, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 22}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l61, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l61, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l2
  %t28 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprStmt(ptr %v0, ptr %v1, ptr %t26, %"compiler/source:Span" %t27, ptr %t28)
  br label %bb9
bb9:
  br label %bb175
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t33 = load ptr, ptr %l71, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l71, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 22}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l72, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l72, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", ptr }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l4
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load %"compiler/source:Span", ptr %l4
  %t55 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarDecl(ptr %v0, ptr %v1, ptr %t53, %"compiler/source:Span" %t54, ptr %t55)
  br label %bb16
bb16:
  br label %bb175
bb17:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t60 = load ptr, ptr %l82, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l82, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 22}
  %t66 = icmp eq i64 %t64, 2
  store i1 %t66, ptr %l83, !tbaa !21
  br label %bb19
bb19:
  %t67 = load i1, ptr %l83, !tbaa !21
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", ptr }, ptr %t70, i32 0, i32 0
  %t72 = load %"compiler/source:Span", ptr %t71
  store %"compiler/source:Span" %t72, ptr %l6
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr }, ptr %t76, i32 0, i32 1
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l6
  %t82 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emulti(ptr %v0, ptr %v1, ptr %t80, %"compiler/source:Span" %t81, ptr %t82)
  br label %bb23
bb23:
  br label %bb175
bb24:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t87 = load ptr, ptr %l93, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l93, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 22}
  %t93 = icmp eq i64 %t91, 3
  store i1 %t93, ptr %l94, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l94, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t97, i32 0, i32 0
  %t99 = load %"compiler/source:Span", ptr %t98
  store %"compiler/source:Span" %t99, ptr %l8
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t103, i32 0, i32 1
  %t105 = load i32, ptr %t104, !range !{i32 0, i32 114}
  store i32 %t105, ptr %l9
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l10, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t115, i32 0, i32 3
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l11, !tbaa !29
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l8
  %t121 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t122 = load ptr, ptr %l10, !tbaa !29
  %t123 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassign(ptr %v0, ptr %v1, ptr %v1, ptr %t119, %"compiler/source:Span" %t120, i32 %t121, ptr %t122, ptr %t123)
  br label %bb30
bb30:
  br label %bb175
bb31:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t130 = load ptr, ptr %l110, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb32, label %bb33
bb32:
  %t133 = load ptr, ptr %l110, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 22}
  %t136 = icmp eq i64 %t134, 4
  store i1 %t136, ptr %l111, !tbaa !21
  br label %bb33
bb33:
  %t137 = load i1, ptr %l111, !tbaa !21
  br i1 %t137, label %bb34, label %bb35
bb34:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l12
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t146, i32 0, i32 1
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l13, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t152, i32 0, i32 2
  %t154 = load { i64, ptr }, ptr %t153
  store { i64, ptr } %t154, ptr %l14, !tbaa !27
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l12
  %t158 = load ptr, ptr %l13, !tbaa !29
  %t159 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryStore(ptr %v0, ptr %v1, ptr %v1, ptr %t156, %"compiler/source:Span" %t157, ptr %t158, { i64, ptr } %t159)
  br label %bb37
bb37:
  br label %bb175
bb38:
  %t164 = load ptr, ptr %l1, !tbaa !29
  store ptr %t164, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t165 = load ptr, ptr %l124, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb39, label %bb40
bb39:
  %t168 = load ptr, ptr %l124, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 22}
  %t171 = icmp eq i64 %t169, 5
  store i1 %t171, ptr %l125, !tbaa !21
  br label %bb40
bb40:
  %t172 = load i1, ptr %l125, !tbaa !21
  br i1 %t172, label %bb41, label %bb42
bb41:
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr }, ptr %t175, i32 0, i32 0
  %t177 = load %"compiler/source:Span", ptr %t176
  store %"compiler/source:Span" %t177, ptr %l15
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", ptr }, ptr %t181, i32 0, i32 1
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l16, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load %"compiler/source:Span", ptr %l15
  %t187 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifStmt(ptr %v0, ptr %v1, ptr %t185, %"compiler/source:Span" %t186, ptr %t187)
  br label %bb44
bb44:
  br label %bb175
bb45:
  %t191 = load ptr, ptr %l1, !tbaa !29
  store ptr %t191, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t192 = load ptr, ptr %l135, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb46, label %bb47
bb46:
  %t195 = load ptr, ptr %l135, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 22}
  %t198 = icmp eq i64 %t196, 6
  store i1 %t198, ptr %l136, !tbaa !21
  br label %bb47
bb47:
  %t199 = load i1, ptr %l136, !tbaa !21
  br i1 %t199, label %bb48, label %bb49
bb48:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = getelementptr { i64, [4 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t202, i32 0, i32 0
  %t204 = load %"compiler/source:Span", ptr %t203
  store %"compiler/source:Span" %t204, ptr %l17
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t208, i32 0, i32 1
  %t210 = load { i64, ptr }, ptr %t209
  store { i64, ptr } %t210, ptr %l18, !tbaa !27
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load %"compiler/source:Span", ptr %l17
  %t214 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %t212, %"compiler/source:Span" %t213, ptr null, { i64, ptr } %t214, ptr null)
  br label %bb51
bb51:
  br label %bb175
bb52:
  %t218 = load ptr, ptr %l1, !tbaa !29
  store ptr %t218, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t219 = load ptr, ptr %l146, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb53, label %bb54
bb53:
  %t222 = load ptr, ptr %l146, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 22}
  %t225 = icmp eq i64 %t223, 7
  store i1 %t225, ptr %l147, !tbaa !21
  br label %bb54
bb54:
  %t226 = load i1, ptr %l147, !tbaa !21
  br i1 %t226, label %bb55, label %bb56
bb55:
  %t227 = load ptr, ptr %l1, !tbaa !29
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t229, i32 0, i32 0
  %t231 = load %"compiler/source:Span", ptr %t230
  store %"compiler/source:Span" %t231, ptr %l19
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t235, i32 0, i32 1
  %t237 = load ptr, ptr %t236
  store ptr %t237, ptr %l20, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t241, i32 0, i32 2
  %t243 = load { i64, ptr }, ptr %t242
  store { i64, ptr } %t243, ptr %l21, !tbaa !27
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l19
  %t247 = load ptr, ptr %l20, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %v0, ptr %t245, %"compiler/source:Span" %t246, ptr %t247, { i64, ptr } %t249, ptr null)
  br label %bb58
bb58:
  br label %bb175
bb59:
  %t254 = load ptr, ptr %l1, !tbaa !29
  store ptr %t254, ptr %l161, !tbaa !29
  store i1 false, ptr %l162, !tbaa !21
  %t255 = load ptr, ptr %l161, !tbaa !29
  %t256 = icmp ne ptr %t255, null
  br i1 %t256, label %bb60, label %bb61
bb60:
  %t258 = load ptr, ptr %l161, !tbaa !29
  %t259 = load i64, ptr %t258, !range !{i64 0, i64 22}
  %t261 = icmp eq i64 %t259, 8
  store i1 %t261, ptr %l162, !tbaa !21
  br label %bb61
bb61:
  %t262 = load i1, ptr %l162, !tbaa !21
  br i1 %t262, label %bb62, label %bb63
bb62:
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", ptr }, ptr %t265, i32 0, i32 0
  %t267 = load %"compiler/source:Span", ptr %t266
  store %"compiler/source:Span" %t267, ptr %l22
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", ptr }, ptr %t271, i32 0, i32 1
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l23, !tbaa !29
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l22
  %t277 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efor3(ptr %v0, ptr %v1, ptr %t275, %"compiler/source:Span" %t276, ptr %t277)
  br label %bb65
bb65:
  br label %bb175
bb66:
  %t281 = load ptr, ptr %l1, !tbaa !29
  store ptr %t281, ptr %l172, !tbaa !29
  store i1 false, ptr %l173, !tbaa !21
  %t282 = load ptr, ptr %l172, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb67, label %bb68
bb67:
  %t285 = load ptr, ptr %l172, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 22}
  %t288 = icmp eq i64 %t286, 9
  store i1 %t288, ptr %l173, !tbaa !21
  br label %bb68
bb68:
  %t289 = load i1, ptr %l173, !tbaa !21
  br i1 %t289, label %bb69, label %bb70
bb69:
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", ptr }, ptr %t292, i32 0, i32 0
  %t294 = load %"compiler/source:Span", ptr %t293
  store %"compiler/source:Span" %t294, ptr %l24
  %t296 = load ptr, ptr %l1, !tbaa !29
  %t298 = getelementptr { i64, [4 x i64] }, ptr %t296, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", ptr }, ptr %t298, i32 0, i32 1
  %t300 = load ptr, ptr %t299
  store ptr %t300, ptr %l25, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load %"compiler/source:Span", ptr %l24
  %t304 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforIn(ptr %v0, ptr %v1, ptr %t302, %"compiler/source:Span" %t303, ptr %t304)
  br label %bb72
bb72:
  br label %bb175
bb73:
  %t308 = load ptr, ptr %l1, !tbaa !29
  store ptr %t308, ptr %l183, !tbaa !29
  store i1 false, ptr %l184, !tbaa !21
  %t309 = load ptr, ptr %l183, !tbaa !29
  %t310 = icmp ne ptr %t309, null
  br i1 %t310, label %bb74, label %bb75
bb74:
  %t312 = load ptr, ptr %l183, !tbaa !29
  %t313 = load i64, ptr %t312, !range !{i64 0, i64 22}
  %t315 = icmp eq i64 %t313, 10
  store i1 %t315, ptr %l184, !tbaa !21
  br label %bb75
bb75:
  %t316 = load i1, ptr %l184, !tbaa !21
  br i1 %t316, label %bb76, label %bb77
bb76:
  %t317 = load ptr, ptr %l1, !tbaa !29
  %t319 = getelementptr { i64, [4 x i64] }, ptr %t317, i32 0, i32 1
  %t320 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t319, i32 0, i32 0
  %t321 = load %"compiler/source:Span", ptr %t320
  store %"compiler/source:Span" %t321, ptr %l26
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr { i64, [4 x i64] }, ptr %t323, i32 0, i32 1
  %t326 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t325, i32 0, i32 1
  %t327 = load { i64, ptr }, ptr %t326
  store { i64, ptr } %t327, ptr %l27, !tbaa !27
  %t329 = load ptr, ptr %l1, !tbaa !29
  %t331 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 1
  %t332 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t331, i32 0, i32 2
  %t333 = load ptr, ptr %t332
  store ptr %t333, ptr %l28, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l26
  %t337 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t338 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edoFor(ptr %v0, ptr %v1, ptr %v1, ptr %t335, %"compiler/source:Span" %t336, { i64, ptr } %t337, ptr %t338)
  br label %bb79
bb79:
  br label %bb175
bb80:
  %t343 = load ptr, ptr %l1, !tbaa !29
  store ptr %t343, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t344 = load ptr, ptr %l197, !tbaa !29
  %t345 = icmp ne ptr %t344, null
  br i1 %t345, label %bb81, label %bb82
bb81:
  %t347 = load ptr, ptr %l197, !tbaa !29
  %t348 = load i64, ptr %t347, !range !{i64 0, i64 22}
  %t350 = icmp eq i64 %t348, 12
  store i1 %t350, ptr %l198, !tbaa !21
  br label %bb82
bb82:
  %t351 = load i1, ptr %l198, !tbaa !21
  br i1 %t351, label %bb83, label %bb84
bb83:
  %t352 = load ptr, ptr %l1, !tbaa !29
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t352, i32 0, i32 1
  %t355 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t354, i32 0, i32 0
  %t356 = load %"compiler/source:Span", ptr %t355
  store %"compiler/source:Span" %t356, ptr %l29
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t360, i32 0, i32 1
  %t362 = load { i64, ptr }, ptr %t361
  store { i64, ptr } %t362, ptr %l30, !tbaa !27
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load %"compiler/source:Span", ptr %l29
  %t366 = load { i64, ptr }, ptr %l30, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereturnStmt(ptr %v0, ptr %v1, ptr %t364, %"compiler/source:Span" %t365, { i64, ptr } %t366)
  br label %bb86
bb86:
  br label %bb175
bb87:
  %t370 = load ptr, ptr %l1, !tbaa !29
  store ptr %t370, ptr %l208, !tbaa !29
  store i1 false, ptr %l209, !tbaa !21
  %t371 = load ptr, ptr %l208, !tbaa !29
  %t372 = icmp ne ptr %t371, null
  br i1 %t372, label %bb88, label %bb89
bb88:
  %t374 = load ptr, ptr %l208, !tbaa !29
  %t375 = load i64, ptr %t374, !range !{i64 0, i64 22}
  %t377 = icmp eq i64 %t375, 15
  store i1 %t377, ptr %l209, !tbaa !21
  br label %bb89
bb89:
  %t378 = load i1, ptr %l209, !tbaa !21
  br i1 %t378, label %bb90, label %bb91
bb90:
  %t379 = load ptr, ptr %l1, !tbaa !29
  %t381 = getelementptr { i64, [4 x i64] }, ptr %t379, i32 0, i32 1
  %t382 = getelementptr { %"compiler/source:Span", ptr }, ptr %t381, i32 0, i32 0
  %t383 = load %"compiler/source:Span", ptr %t382
  store %"compiler/source:Span" %t383, ptr %l31
  %t385 = load ptr, ptr %l1, !tbaa !29
  %t387 = getelementptr { i64, [4 x i64] }, ptr %t385, i32 0, i32 1
  %t388 = getelementptr { %"compiler/source:Span", ptr }, ptr %t387, i32 0, i32 1
  %t389 = load ptr, ptr %t388
  store ptr %t389, ptr %l32, !tbaa !29
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load %"compiler/source:Span", ptr %l31
  %t393 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeStmt(ptr %v0, ptr %v1, ptr %t391, %"compiler/source:Span" %t392, ptr %t393)
  br label %bb93
bb93:
  br label %bb175
bb94:
  %t397 = load ptr, ptr %l1, !tbaa !29
  store ptr %t397, ptr %l219, !tbaa !29
  store i1 false, ptr %l220, !tbaa !21
  %t398 = load ptr, ptr %l219, !tbaa !29
  %t399 = icmp ne ptr %t398, null
  br i1 %t399, label %bb95, label %bb96
bb95:
  %t401 = load ptr, ptr %l219, !tbaa !29
  %t402 = load i64, ptr %t401, !range !{i64 0, i64 22}
  %t404 = icmp eq i64 %t402, 21
  store i1 %t404, ptr %l220, !tbaa !21
  br label %bb96
bb96:
  %t405 = load i1, ptr %l220, !tbaa !21
  br i1 %t405, label %bb97, label %bb98
bb97:
  %t406 = load ptr, ptr %l1, !tbaa !29
  %t408 = getelementptr { i64, [4 x i64] }, ptr %t406, i32 0, i32 1
  %t409 = getelementptr { %"compiler/source:Span", ptr }, ptr %t408, i32 0, i32 0
  %t410 = load %"compiler/source:Span", ptr %t409
  store %"compiler/source:Span" %t410, ptr %l33
  %t412 = load ptr, ptr %l1, !tbaa !29
  %t414 = getelementptr { i64, [4 x i64] }, ptr %t412, i32 0, i32 1
  %t415 = getelementptr { %"compiler/source:Span", ptr }, ptr %t414, i32 0, i32 1
  %t416 = load ptr, ptr %t415
  store ptr %t416, ptr %l34, !tbaa !29
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t419 = load %"compiler/source:Span", ptr %l33
  %t420 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eyieldStmt(ptr %v0, ptr %v1, ptr %t418, %"compiler/source:Span" %t419, ptr %t420)
  br label %bb100
bb100:
  br label %bb175
bb101:
  %t424 = load ptr, ptr %l1, !tbaa !29
  store ptr %t424, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t425 = load ptr, ptr %l230, !tbaa !29
  %t426 = icmp ne ptr %t425, null
  br i1 %t426, label %bb102, label %bb103
bb102:
  %t428 = load ptr, ptr %l230, !tbaa !29
  %t429 = load i64, ptr %t428, !range !{i64 0, i64 22}
  %t431 = icmp eq i64 %t429, 11
  store i1 %t431, ptr %l231, !tbaa !21
  br label %bb103
bb103:
  %t432 = load i1, ptr %l231, !tbaa !21
  br i1 %t432, label %bb104, label %bb105
bb104:
  %t433 = load ptr, ptr %l1, !tbaa !29
  %t435 = getelementptr { i64, [4 x i64] }, ptr %t433, i32 0, i32 1
  %t436 = getelementptr { %"compiler/source:Span", ptr }, ptr %t435, i32 0, i32 0
  %t437 = load %"compiler/source:Span", ptr %t436
  store %"compiler/source:Span" %t437, ptr %l35
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr { i64, [4 x i64] }, ptr %t439, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", ptr }, ptr %t441, i32 0, i32 1
  %t443 = load ptr, ptr %t442
  store ptr %t443, ptr %l36, !tbaa !29
  br label %bb106
bb105:
  br label %bb108
bb106:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load %"compiler/source:Span", ptr %l35
  %t447 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchStmt(ptr %v0, ptr %v1, ptr %t445, %"compiler/source:Span" %t446, ptr %t447)
  br label %bb107
bb107:
  br label %bb175
bb108:
  %t451 = load ptr, ptr %l1, !tbaa !29
  store ptr %t451, ptr %l241, !tbaa !29
  store i1 false, ptr %l242, !tbaa !21
  %t452 = load ptr, ptr %l241, !tbaa !29
  %t453 = icmp ne ptr %t452, null
  br i1 %t453, label %bb109, label %bb110
bb109:
  %t455 = load ptr, ptr %l241, !tbaa !29
  %t456 = load i64, ptr %t455, !range !{i64 0, i64 22}
  %t458 = icmp eq i64 %t456, 13
  store i1 %t458, ptr %l242, !tbaa !21
  br label %bb110
bb110:
  %t459 = load i1, ptr %l242, !tbaa !21
  br i1 %t459, label %bb111, label %bb112
bb111:
  %t460 = load ptr, ptr %l1, !tbaa !29
  %t462 = getelementptr { i64, [4 x i64] }, ptr %t460, i32 0, i32 1
  %t463 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t462, i32 0, i32 0
  %t464 = load %"compiler/source:Span", ptr %t463
  store %"compiler/source:Span" %t464, ptr %l37
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t468 = getelementptr { i64, [4 x i64] }, ptr %t466, i32 0, i32 1
  %t469 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t468, i32 0, i32 1
  %t470 = load i32, ptr %t469, !range !{i32 0, i32 114}
  store i32 %t470, ptr %l38
  %t472 = load ptr, ptr %l1, !tbaa !29
  %t474 = getelementptr { i64, [4 x i64] }, ptr %t472, i32 0, i32 1
  %t475 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t474, i32 0, i32 2
  %t476 = load ptr, ptr %t475
  store ptr %t476, ptr %l39, !tbaa !29
  br label %bb113
bb112:
  br label %bb115
bb113:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load %"compiler/source:Span", ptr %l37
  %t480 = load i32, ptr %l38, !range !{i32 0, i32 114}
  %t481 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejump(ptr %v0, ptr %v1, ptr %t478, %"compiler/source:Span" %t479, i32 %t480, ptr %t481)
  br label %bb114
bb114:
  br label %bb175
bb115:
  %t486 = load ptr, ptr %l1, !tbaa !29
  store ptr %t486, ptr %l255, !tbaa !29
  store i1 false, ptr %l256, !tbaa !21
  %t487 = load ptr, ptr %l255, !tbaa !29
  %t488 = icmp ne ptr %t487, null
  br i1 %t488, label %bb116, label %bb117
bb116:
  %t490 = load ptr, ptr %l255, !tbaa !29
  %t491 = load i64, ptr %t490, !range !{i64 0, i64 22}
  %t493 = icmp eq i64 %t491, 14
  store i1 %t493, ptr %l256, !tbaa !21
  br label %bb117
bb117:
  %t494 = load i1, ptr %l256, !tbaa !21
  br i1 %t494, label %bb118, label %bb119
bb118:
  %t495 = load ptr, ptr %l1, !tbaa !29
  %t497 = getelementptr { i64, [4 x i64] }, ptr %t495, i32 0, i32 1
  %t498 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t497, i32 0, i32 0
  %t499 = load %"compiler/source:Span", ptr %t498
  store %"compiler/source:Span" %t499, ptr %l40
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t503 = getelementptr { i64, [4 x i64] }, ptr %t501, i32 0, i32 1
  %t504 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t503, i32 0, i32 1
  %t505 = load ptr, ptr %t504
  store ptr %t505, ptr %l41, !tbaa !29
  br label %bb120
bb119:
  br label %bb125
bb120:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t507)
  store ptr %t509, ptr %l264
  br label %bb121
bb121:
  %t510 = load ptr, ptr %l264, !tbaa !29
  %t512 = getelementptr %"compiler/check:frame", ptr %t510, i32 0, i32 53
  %t513 = load i64, ptr %t512, !tbaa !24
  %t515 = icmp ne i64 %t513, 0
  br i1 %t515, label %bb122, label %bb123
bb122:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load %"compiler/source:Span", ptr %l40
  %t519 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectCond(ptr %v0, ptr %v1, ptr %t517, %"compiler/source:Span" %t518, ptr %t519)
  br label %bb124
bb123:
  br label %bb125
bb124:
  br label %bb175
bb125:
  %t523 = load ptr, ptr %l1, !tbaa !29
  store ptr %t523, ptr %l271, !tbaa !29
  store i1 false, ptr %l272, !tbaa !21
  %t524 = load ptr, ptr %l271, !tbaa !29
  %t525 = icmp ne ptr %t524, null
  br i1 %t525, label %bb126, label %bb127
bb126:
  %t527 = load ptr, ptr %l271, !tbaa !29
  %t528 = load i64, ptr %t527, !range !{i64 0, i64 22}
  %t530 = icmp eq i64 %t528, 14
  store i1 %t530, ptr %l272, !tbaa !21
  br label %bb127
bb127:
  %t531 = load i1, ptr %l272, !tbaa !21
  br i1 %t531, label %bb128, label %bb129
bb128:
  %t532 = load ptr, ptr %l1, !tbaa !29
  %t534 = getelementptr { i64, [4 x i64] }, ptr %t532, i32 0, i32 1
  %t535 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t534, i32 0, i32 0
  %t536 = load %"compiler/source:Span", ptr %t535
  store %"compiler/source:Span" %t536, ptr %l42
  %t538 = load ptr, ptr %l1, !tbaa !29
  %t540 = getelementptr { i64, [4 x i64] }, ptr %t538, i32 0, i32 1
  %t541 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t540, i32 0, i32 1
  %t542 = load ptr, ptr %t541
  store ptr %t542, ptr %l43, !tbaa !29
  %t544 = load ptr, ptr %l1, !tbaa !29
  %t546 = getelementptr { i64, [4 x i64] }, ptr %t544, i32 0, i32 1
  %t547 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 2
  %t548 = load ptr, ptr %t547
  store ptr %t548, ptr %l44, !tbaa !29
  br label %bb130
bb129:
  br label %bb132
bb130:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t551 = load %"compiler/source:Span", ptr %l42
  %t552 = load ptr, ptr %l43, !tbaa !29
  %t553 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassertStmt(ptr %v0, ptr %v1, ptr %v1, ptr %t550, %"compiler/source:Span" %t551, ptr %t552, ptr %t553)
  br label %bb131
bb131:
  br label %bb175
bb132:
  %t558 = load ptr, ptr %l1, !tbaa !29
  store ptr %t558, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t559 = load ptr, ptr %l285, !tbaa !29
  %t560 = icmp ne ptr %t559, null
  br i1 %t560, label %bb133, label %bb134
bb133:
  %t562 = load ptr, ptr %l285, !tbaa !29
  %t563 = load i64, ptr %t562, !range !{i64 0, i64 22}
  %t565 = icmp eq i64 %t563, 16
  store i1 %t565, ptr %l286, !tbaa !21
  br label %bb134
bb134:
  %t566 = load i1, ptr %l286, !tbaa !21
  br i1 %t566, label %bb135, label %bb136
bb135:
  %t567 = load ptr, ptr %l1, !tbaa !29
  %t569 = getelementptr { i64, [4 x i64] }, ptr %t567, i32 0, i32 1
  %t570 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t569, i32 0, i32 0
  %t571 = load %"compiler/source:Span", ptr %t570
  store %"compiler/source:Span" %t571, ptr %l45
  %t573 = load ptr, ptr %l1, !tbaa !29
  %t575 = getelementptr { i64, [4 x i64] }, ptr %t573, i32 0, i32 1
  %t576 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t575, i32 0, i32 1
  %t577 = load ptr, ptr %t576
  store ptr %t577, ptr %l46, !tbaa !29
  %t579 = load ptr, ptr %l1, !tbaa !29
  %t581 = getelementptr { i64, [4 x i64] }, ptr %t579, i32 0, i32 1
  %t582 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t581, i32 0, i32 2
  %t583 = load { i64, ptr }, ptr %t582
  store { i64, ptr } %t583, ptr %l47, !tbaa !27
  br label %bb137
bb136:
  br label %bb139
bb137:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l45
  %t587 = load ptr, ptr %l46, !tbaa !29
  %t588 = load { i64, ptr }, ptr %l47, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraise(ptr %v0, ptr %v1, ptr %v1, ptr %t585, %"compiler/source:Span" %t586, ptr %t587, { i64, ptr } %t588)
  br label %bb138
bb138:
  br label %bb175
bb139:
  %t593 = load ptr, ptr %l1, !tbaa !29
  store ptr %t593, ptr %l299, !tbaa !29
  store i1 false, ptr %l300, !tbaa !21
  %t594 = load ptr, ptr %l299, !tbaa !29
  %t595 = icmp ne ptr %t594, null
  br i1 %t595, label %bb140, label %bb141
bb140:
  %t597 = load ptr, ptr %l299, !tbaa !29
  %t598 = load i64, ptr %t597, !range !{i64 0, i64 22}
  %t600 = icmp eq i64 %t598, 19
  store i1 %t600, ptr %l300, !tbaa !21
  br label %bb141
bb141:
  %t601 = load i1, ptr %l300, !tbaa !21
  br i1 %t601, label %bb142, label %bb143
bb142:
  %t602 = load ptr, ptr %l1, !tbaa !29
  %t604 = getelementptr { i64, [4 x i64] }, ptr %t602, i32 0, i32 1
  %t605 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t604, i32 0, i32 0
  %t606 = load %"compiler/source:Span", ptr %t605
  store %"compiler/source:Span" %t606, ptr %l48
  %t608 = load ptr, ptr %l1, !tbaa !29
  %t610 = getelementptr { i64, [4 x i64] }, ptr %t608, i32 0, i32 1
  %t611 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t610, i32 0, i32 1
  %t612 = load ptr, ptr %t611
  store ptr %t612, ptr %l49, !tbaa !29
  %t614 = load ptr, ptr %l1, !tbaa !29
  %t616 = getelementptr { i64, [4 x i64] }, ptr %t614, i32 0, i32 1
  %t617 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t616, i32 0, i32 2
  %t618 = load i1, ptr %t617
  store i1 %t618, ptr %l50, !tbaa !21
  br label %bb144
bb143:
  br label %bb146
bb144:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t621 = load %"compiler/source:Span", ptr %l48
  %t622 = load ptr, ptr %l49, !tbaa !29
  %t623 = load i1, ptr %l50, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeferStmt(ptr %v0, ptr %v1, ptr %t620, %"compiler/source:Span" %t621, ptr %t622, i1 %t623)
  br label %bb145
bb145:
  br label %bb175
bb146:
  %t628 = load ptr, ptr %l1, !tbaa !29
  store ptr %t628, ptr %l313, !tbaa !29
  store i1 false, ptr %l314, !tbaa !21
  %t629 = load ptr, ptr %l313, !tbaa !29
  %t630 = icmp ne ptr %t629, null
  br i1 %t630, label %bb147, label %bb148
bb147:
  %t632 = load ptr, ptr %l313, !tbaa !29
  %t633 = load i64, ptr %t632, !range !{i64 0, i64 22}
  %t635 = icmp eq i64 %t633, 20
  store i1 %t635, ptr %l314, !tbaa !21
  br label %bb148
bb148:
  %t636 = load i1, ptr %l314, !tbaa !21
  br i1 %t636, label %bb149, label %bb150
bb149:
  %t637 = load ptr, ptr %l1, !tbaa !29
  %t639 = getelementptr { i64, [4 x i64] }, ptr %t637, i32 0, i32 1
  %t640 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t639, i32 0, i32 0
  %t641 = load %"compiler/source:Span", ptr %t640
  store %"compiler/source:Span" %t641, ptr %l51
  %t643 = load ptr, ptr %l1, !tbaa !29
  %t645 = getelementptr { i64, [4 x i64] }, ptr %t643, i32 0, i32 1
  %t646 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t645, i32 0, i32 1
  %t647 = load { i64, ptr }, ptr %t646
  store { i64, ptr } %t647, ptr %l52, !tbaa !27
  br label %bb151
bb150:
  br label %bb154
bb151:
  %t649 = load ptr, ptr %l0, !tbaa !29
  store ptr %t649, ptr %l321, !tbaa !29
  %t650 = load %"compiler/source:Span", ptr %l51
  store %"compiler/source:Span" %t650, ptr %l322
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t652 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t653 = load %"compiler/source:Span", ptr %l51
  %t658 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v0, ptr %t651, { i64, ptr } %t652, i32 1, %"compiler/source:Span" %t653)
  store ptr %t658, ptr %l327
  br label %bb152
bb152:
  store { i64, [3 x i64] } zeroinitializer, ptr %t659
  %t660 = getelementptr { i64, [3 x i64] }, ptr %t659, i32 0, i32 0
  store i64 11, ptr %t660
  %t661 = load %"compiler/source:Span", ptr %l322
  %t662 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t661, 0
  %t663 = load ptr, ptr %l327, !tbaa !29
  %t664 = insertvalue { %"compiler/source:Span", ptr } %t662, ptr %t663, 1
  %t665 = getelementptr { i64, [3 x i64] }, ptr %t659, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t664, ptr %t665
  %t666 = load { i64, [3 x i64] }, ptr %t659
  %t668 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t666, ptr %t668
  %t669 = load ptr, ptr %l321, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t669, ptr %t668)
  br label %bb153
bb153:
  br label %bb175
bb154:
  %t671 = load ptr, ptr %l1, !tbaa !29
  store ptr %t671, ptr %l330, !tbaa !29
  store i1 false, ptr %l331, !tbaa !21
  %t672 = load ptr, ptr %l330, !tbaa !29
  %t673 = icmp ne ptr %t672, null
  br i1 %t673, label %bb155, label %bb156
bb155:
  %t675 = load ptr, ptr %l330, !tbaa !29
  %t676 = load i64, ptr %t675, !range !{i64 0, i64 22}
  %t678 = icmp eq i64 %t676, 18
  store i1 %t678, ptr %l331, !tbaa !21
  br label %bb156
bb156:
  %t679 = load i1, ptr %l331, !tbaa !21
  br i1 %t679, label %bb157, label %bb158
bb157:
  %t680 = load ptr, ptr %l1, !tbaa !29
  %t682 = getelementptr { i64, [4 x i64] }, ptr %t680, i32 0, i32 1
  %t683 = getelementptr { %"compiler/source:Span", ptr }, ptr %t682, i32 0, i32 0
  %t684 = load %"compiler/source:Span", ptr %t683
  store %"compiler/source:Span" %t684, ptr %l53
  %t686 = load ptr, ptr %l1, !tbaa !29
  %t688 = getelementptr { i64, [4 x i64] }, ptr %t686, i32 0, i32 1
  %t689 = getelementptr { %"compiler/source:Span", ptr }, ptr %t688, i32 0, i32 1
  %t690 = load ptr, ptr %t689
  store ptr %t690, ptr %l54, !tbaa !29
  br label %bb159
bb158:
  br label %bb161
bb159:
  %t692 = load ptr, ptr %l0, !tbaa !29
  %t693 = load %"compiler/source:Span", ptr %l53
  %t694 = load ptr, ptr %l54, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoinStmt(ptr %v0, ptr %v1, ptr %t692, %"compiler/source:Span" %t693, ptr %t694)
  br label %bb160
bb160:
  br label %bb175
bb161:
  %t698 = load ptr, ptr %l1, !tbaa !29
  store ptr %t698, ptr %l341, !tbaa !29
  store i1 false, ptr %l342, !tbaa !21
  %t699 = load ptr, ptr %l341, !tbaa !29
  %t700 = icmp ne ptr %t699, null
  br i1 %t700, label %bb162, label %bb163
bb162:
  %t702 = load ptr, ptr %l341, !tbaa !29
  %t703 = load i64, ptr %t702, !range !{i64 0, i64 22}
  %t705 = icmp eq i64 %t703, 17
  store i1 %t705, ptr %l342, !tbaa !21
  br label %bb163
bb163:
  %t706 = load i1, ptr %l342, !tbaa !21
  br i1 %t706, label %bb164, label %bb165
bb164:
  %t707 = load ptr, ptr %l1, !tbaa !29
  %t709 = getelementptr { i64, [4 x i64] }, ptr %t707, i32 0, i32 1
  %t710 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t709, i32 0, i32 0
  %t711 = load %"compiler/source:Span", ptr %t710
  store %"compiler/source:Span" %t711, ptr %l55
  %t713 = load ptr, ptr %l1, !tbaa !29
  %t715 = getelementptr { i64, [4 x i64] }, ptr %t713, i32 0, i32 1
  %t716 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t715, i32 0, i32 1
  %t717 = load { i64, ptr }, ptr %t716
  store { i64, ptr } %t717, ptr %l56, !tbaa !27
  %t719 = load ptr, ptr %l1, !tbaa !29
  %t721 = getelementptr { i64, [4 x i64] }, ptr %t719, i32 0, i32 1
  %t722 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t721, i32 0, i32 2
  %t723 = load ptr, ptr %t722
  store ptr %t723, ptr %l57, !tbaa !29
  br label %bb166
bb165:
  br label %bb168
bb166:
  %t725 = load ptr, ptr %l0, !tbaa !29
  %t726 = load %"compiler/source:Span", ptr %l55
  %t727 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t728 = load ptr, ptr %l57, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnStmt(ptr %v0, ptr %v1, ptr %v1, ptr %t725, %"compiler/source:Span" %t726, { i64, ptr } %t727, ptr %t728)
  br label %bb167
bb167:
  br label %bb175
bb168:
  br i1 true, label %bb169, label %bb170
bb169:
  br label %bb171
bb170:
  br label %bb174
bb171:
  %t733 = load ptr, ptr %l0, !tbaa !29
  store ptr %t733, ptr %l355, !tbaa !29
  %t734 = load ptr, ptr %l1, !tbaa !29
  %t736 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t734)
  store %"compiler/source:Span" %t736, ptr %l357
  br label %bb172
bb172:
  %t737 = load ptr, ptr %l355, !tbaa !29
  %t738 = load %"compiler/source:Span", ptr %l357
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t737, %"compiler/source:Span" %t738, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb173
bb173:
  br label %bb175
bb174:
  call void @__olang_check_failed(ptr @olang_loc_97a078c1fd6401ad_6b439c1864d584b1)
  unreachable
bb175:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i32
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
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %a2)
  store i32 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i32, ptr %l13, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l15, !tbaa !24
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l17
  br label %bb3
bb3:
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  br label %bb24
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t24, i64 %t25)
  store { i64, ptr } %t28, ptr %l22
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t29, ptr %l23, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr ptr, ptr %t32, i64 0
  %t34 = load ptr, ptr %t33, !tbaa !39
  store ptr %t34, ptr %l7, !tbaa !29
  %t36 = load ptr, ptr %l7, !tbaa !29
  store ptr %t36, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t37 = load ptr, ptr %l25, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l25, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 9}
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l7, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l8, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l8, !tbaa !29
  %t55 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  store i32 %t55, ptr %l33
  br label %bb13
bb13:
  %t56 = load i32, ptr %l3, !tbaa !23
  %t57 = load i32, ptr %l33, !tbaa !23
  %t59 = icmp eq i32 %t57, %t56
  br i1 %t59, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_8ded448c56d61a9a_a1642562b2a40e16)
  unreachable
bb22:
  br label %bb23
bb23:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb2
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopAssert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i1
  %l36 = alloca ptr
  %l42 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca %"compiler/check:TopAssertAsk"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t9 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopBody(ptr %v0, ptr %v1, ptr %t1, i64 %t2, ptr %t3, i32 %t4)
  store i64 %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load ptr, ptr %l4, !tbaa !29
  store ptr %t19, ptr %l17, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  store ptr %t25, ptr %l20, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t26)
  store i32 %t28, ptr %l22
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t29 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t30 = load ptr, ptr %l20, !tbaa !29
  %t31 = load i32, ptr %l22, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t30, i32 %t31, i64 %t29)
  store i32 %t33, ptr %l24
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l15, !tbaa !29
  %t35 = load i64, ptr %l16, !tbaa !24
  %t36 = load ptr, ptr %l17, !tbaa !29
  %t37 = load i32, ptr %l24, !tbaa !23
  %t38 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopBody(ptr %v0, ptr %v2, ptr %t34, i64 %t35, ptr %t36, i32 %t37)
  store i64 %t38, ptr %l25
  br label %bb6
bb6:
  %t39 = load i64, ptr %l25, !tbaa !24
  store i64 %t39, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  br i1 %t42, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb13
bb9:
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  store i1 %t52, ptr %l32, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l32, !tbaa !21
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l28, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 109
  store ptr %t58, ptr %l36, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 10
  %t68 = load i64, ptr %l1, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l42
  br label %bb17
bb17:
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t74 = getelementptr %"compiler/load:Module", ptr %t72, i32 0, i32 4
  %t75 = load i64, ptr %t74, !tbaa !24
  store i64 %t75, ptr %l44, !tbaa !24
  store %"compiler/source:Span" %a2, ptr %l45
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t81 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  store %"compiler/source:Span" %t81, ptr %l48
  br label %bb18
bb18:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l44, !tbaa !24
  %t85 = load %"compiler/source:Span", ptr %l45
  %t86 = load %"compiler/source:Span", ptr %l48
  %t89 = call %"compiler/check:TopAssertAsk" @compiler_2fcheck_3aTopAssertAsk_2ector(ptr %s0, i64 %t84, %"compiler/source:Span" %t85, %"compiler/source:Span" %t86, i64 %t82, i64 %t83)
  store %"compiler/check:TopAssertAsk" %t89, ptr %l51
  br label %bb19
bb19:
  %t90 = load ptr, ptr %l36, !tbaa !29
  %t91 = load %"compiler/check:TopAssertAsk", ptr %l51
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eP_H67072fc16e996275e069a499f28fddf9(ptr %v0, ptr %t90, %"compiler/check:TopAssertAsk" %t91)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l11 = alloca ptr
  %l16 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  store i64 %t2, ptr %l5, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/load:Loader", ptr %t9, i32 0, i32 10
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t11, i64 %t12)
  store ptr %t15, ptr %l11
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l11, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 8
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t23 = load i64, ptr %l5, !tbaa !24
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIn(ptr %v0, ptr %v0, ptr %v1, ptr %t22, i64 %t23, { i64, ptr } %t19, i32 %a2, %"compiler/source:Span" %a3, i1 false)
  store ptr %t27, ptr %l16
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l16, !tbaa !29
  store ptr %t28, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l36 = alloca i1
  %l43 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a1, ptr %l2, !tbaa !23
  store i64 0, ptr %l3, !tbaa !24
  store i64 32, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l16, !tbaa !24
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l13, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t49, i32 %t50)
  store i1 %t53, ptr %l36
  br label %bb11
bb11:
  %t54 = load i1, ptr %l36, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load i32, ptr %l2, !tbaa !23
  store i32 %t57, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l43
  br label %bb15
bb15:
  %t69 = load i32, ptr %l43, !tbaa !23
  store i32 %t69, ptr %l2, !tbaa !23
  br label %bb16
bb16:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb7
bb17:
  %t74 = load i32, ptr %l2, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i64
  %l25 = alloca i64
  %l31 = alloca i64
  %l39 = alloca i32
  %l48 = alloca i32
  %l51 = alloca i1
  %l53 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l81 = alloca i32
  %l85 = alloca %"compiler/source:Span"
  %l86 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  %t160 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyUnique(ptr %v0, ptr %t6)
  store i1 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i1, ptr %l13, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t17, ptr %t18)
  store i1 %t21, ptr %l20
  br label %bb5
bb5:
  %t22 = load i1, ptr %l20, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t25 = load i64, ptr %l5, !tbaa !24
  %t29 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t23, i32 %t24, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) }, i64 %t25)
  store i64 %t29, ptr %l25
  br label %bb8
bb7:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  %t30 = load i64, ptr %l25, !tbaa !24
  store i64 %t30, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l21, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  %t38 = load i64, ptr %l5, !tbaa !24
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s2, ptr %t36, i32 %t37, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, i64 %t38)
  store i64 %t42, ptr %l31
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t43 = load i64, ptr %l31, !tbaa !24
  store i64 %t43, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t44, 0
  br i1 %t46, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i32, ptr %l3, !tbaa !23
  %t58 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t52, i64 %t53, i32 %t54)
  store i32 %t58, ptr %l39
  br label %bb17
bb17:
  %t59 = load i32, ptr %l39, !tbaa !23
  store i32 %t59, ptr %l7, !tbaa !23
  %t60 = load i32, ptr %l7, !tbaa !23
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t64 = icmp eq i32 %t60, %t61
  br i1 %t64, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l7, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l48
  br label %bb21
bb21:
  %t77 = load i32, ptr %l48, !tbaa !23
  store i32 %t77, ptr %l8, !tbaa !23
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l8, !tbaa !23
  %t82 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t78, i32 %t79)
  store i1 %t82, ptr %l51
  br label %bb22
bb22:
  %t83 = load i1, ptr %l51, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb27
bb24:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  store ptr %t89, ptr %l55, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l8, !tbaa !23
  %t94 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l58
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l55, !tbaa !29
  %t96 = load i32, ptr %l58, !tbaa !23
  %t97 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t95, i32 %t96)
  store i1 %t97, ptr %l59
  br label %bb26
bb26:
  %t98 = load i1, ptr %l59, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l53, !tbaa !21
  br label %bb27
bb27:
  %t101 = load i1, ptr %l53, !tbaa !21
  br i1 %t101, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l62, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t104, ptr %l63
  %t105 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t105, ptr %l64
  %t106 = load i64, ptr %l6, !tbaa !24
  store i64 %t106, ptr %l65, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l1
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v0, ptr %t107, %"compiler/source:Span" %t108, ptr %t109)
  store ptr %t113, ptr %l69
  br label %bb31
bb31:
  %t114 = load ptr, ptr %l69, !tbaa !29
  store ptr %t114, ptr %l70, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t115, ptr %l71, !tbaa !27
  %t116 = icmp sge i64 0, 0
  br i1 %t116, label %bb32, label %bb33
bb32:
  %t118 = icmp sle i64 0, 1152921504606846975
  br i1 %t118, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_a50575fe0cbf16d0_d0ac681a5111f894)
  unreachable
bb34:
  %t120 = mul i64 0, 8
  %t121 = insertvalue { i64, ptr } undef, i64 0, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t122, ptr %l74, !tbaa !27
  %t123 = icmp sge i64 0, 0
  br i1 %t123, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_a50575fe0cbf16d0_d0ac681a5111f894)
  unreachable
bb36:
  %t125 = icmp sle i64 0, 2305843009213693951
  br i1 %t125, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_60e1b0f1da45c3fd_13c1ffbfc1f1b5a1)
  unreachable
bb38:
  %t127 = mul i64 0, 4
  %t128 = insertvalue { i64, ptr } undef, i64 0, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t130 = load ptr, ptr %l62, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr %l63
  %t132 = load %"compiler/source:Span", ptr %l64
  %t133 = load i64, ptr %l65, !tbaa !24
  %t134 = load ptr, ptr %l70, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v2, ptr %v0, ptr %v3, ptr %v3, ptr %t130, %"compiler/source:Span" %t131, %"compiler/source:Span" %t132, i64 %t133, ptr %t134, { i64, ptr } %t135, { i64, ptr } %t136, { i64, ptr } %t129)
  store ptr %t138, ptr %l78
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_60e1b0f1da45c3fd_13c1ffbfc1f1b5a1)
  unreachable
bb40:
  %t139 = load ptr, ptr %l78, !tbaa !29
  store ptr %t139, ptr %l9, !tbaa !29
  %t140 = load ptr, ptr %l9, !tbaa !29
  %t143 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t140)
  store i32 %t143, ptr %l81
  br label %bb41
bb41:
  %t144 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t145 = load i32, ptr %l81, !tbaa !23
  %t147 = icmp eq i32 %t145, %t144
  br i1 %t147, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t150 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t150, ptr %l85
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l86, !tbaa !29
  %t152 = load ptr, ptr %l9, !tbaa !29
  %t155 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t152)
  store i32 %t155, ptr %l89
  br label %bb45
bb45:
  %t156 = load ptr, ptr %l86, !tbaa !29
  %t157 = load i32, ptr %l89, !tbaa !23
  %t158 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t156, i32 %t157)
  store i32 %t158, ptr %l90
  br label %bb46
bb46:
  %t159 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 0
  store i64 2, ptr %t161
  %t162 = load %"compiler/source:Span", ptr %l85
  %t163 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t162, 0
  %t164 = load i32, ptr %l90, !tbaa !23
  %t165 = insertvalue { %"compiler/source:Span", i32, ptr } %t163, i32 %t164, 1
  %t167 = insertvalue { %"compiler/source:Span", i32, ptr } %t165, ptr %t159, 2
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t167, ptr %t168
  %t169 = load { i64, [4 x i64] }, ptr %t160
  %t171 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t169, ptr %t171
  call void @__olang_scope_close(ptr %s0)
  store ptr %t171, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i64
  %l7 = alloca i1
  %l13 = alloca i64
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca %"compiler/check:landing"
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l48 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = load i1, ptr %l3, !tbaa !21
  %t17 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %t11, ptr %t12, i1 %t13)
  store i64 %t17, ptr %l13
  br label %bb5
bb5:
  %t18 = load i64, ptr %l13, !tbaa !24
  store i64 %t18, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sge i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 66
  store ptr %t25, ptr %l17, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t26)
  store ptr %t28, ptr %l19
  br label %bb8
bb7:
  br label %bb20
bb8:
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t31 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 0
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l21, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  store i64 %t33, ptr %l22, !tbaa !24
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t34)
  store %"compiler/source:Span" %t36, ptr %l24
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t40 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t37)
  store i32 %t40, ptr %l27
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l28, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t45 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t42)
  store i32 %t45, ptr %l31
  br label %bb11
bb11:
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = load i32, ptr %l31, !tbaa !23
  %t48 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t48, ptr %l32
  br label %bb12
bb12:
  %t49 = load i64, ptr %l21, !tbaa !24
  %t50 = load i64, ptr %l22, !tbaa !24
  %t51 = load %"compiler/source:Span", ptr %l24
  %t52 = load i32, ptr %l27, !tbaa !23
  %t53 = load i64, ptr %l32, !tbaa !24
  %t54 = call %"compiler/check:landing" @compiler_2fcheck_3alanding_2ector(ptr %s2, i64 %t49, i64 %t50, %"compiler/source:Span" %t51, i32 %t52, i64 %t53)
  store %"compiler/check:landing" %t54, ptr %l33
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l17, !tbaa !29
  %t56 = load %"compiler/check:landing", ptr %l33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ePush_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %t55, %"compiler/check:landing" %t56)
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l34, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l35, !tbaa !29
  %t59 = load i64, ptr %l4, !tbaa !24
  store i64 %t59, ptr %l36, !tbaa !24
  %t60 = load i1, ptr %l3, !tbaa !21
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %t64)
  store i1 %t66, ptr %l41
  br label %bb17
bb16:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb18
bb17:
  %t67 = load i1, ptr %l41, !tbaa !21
  store i1 %t67, ptr %l39, !tbaa !21
  br label %bb18
bb18:
  %t68 = load ptr, ptr %l34, !tbaa !29
  %t69 = load ptr, ptr %l35, !tbaa !29
  %t70 = load i64, ptr %l36, !tbaa !24
  %t71 = load i1, ptr %l39, !tbaa !21
  %t72 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v1, ptr %v3, ptr %t68, ptr %t69, i64 %t70, i1 %t71)
  store ptr %t72, ptr %l42
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  %t73 = load ptr, ptr %l42, !tbaa !29
  store ptr %t73, ptr %rv
  br label %ret
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l43, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t75)
  store %"compiler/source:Span" %t77, ptr %l45
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t81 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t78)
  store i32 %t81, ptr %l48
  br label %bb22
bb22:
  %t83 = load ptr, ptr %l43, !tbaa !29
  %t84 = load %"compiler/source:Span", ptr %l45
  %t85 = load i32, ptr %l48, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueErr(ptr %v0, ptr %v2, ptr %t83, %"compiler/source:Span" %t84, i32 %t85, { i64, ptr } %a2)
  br label %bb23
bb23:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l12 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l16 = alloca i1
  %l22 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l33 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca i64
  %l50 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca %"compiler/source:Span"
  %l57 = alloca { i64, ptr }
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 1
  %t7 = load i64, ptr %t6, !tbaa !24
  %t8 = load i32, ptr %l2, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t13 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t7, i64 %t10)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l12
  br label %bb2
bb2:
  %t14 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l12
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14, ptr %l3
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 93
  %t18 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t17, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18)
  store i1 %t21, ptr %l16
  br label %bb3
bb3:
  %t22 = load i1, ptr %l16, !tbaa !21
  br i1 %t22, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 93
  %t26 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l3
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t25, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26, i1 true)
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t33, ptr %l22
  br label %bb8
bb8:
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t34, ptr %l4, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t39 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v0, ptr %s0, ptr %t35, { i64, ptr } %t36, i1 false)
  store { i64, ptr } %t39, ptr %l25
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 0
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t51 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportedTypeNamed(ptr %v0, ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t48)
  store { i64, ptr } %t51, ptr %l31
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t52 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  %t54 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l33, !tbaa !24
  %t57 = load i64, ptr %l33, !tbaa !24
  %t58 = icmp eq i64 %t53, %t57
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l33, !tbaa !24
  %t65 = mul i64 %t64, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  br label %bb15
bb14:
  %t66 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t66, ptr %l5, !tbaa !27
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t67 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp eq i64 %t69, 0
  br i1 %t71, label %bb17, label %bb18
bb17:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l38, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t74, ptr %l39
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t79, ptr %l42
  br label %bb19
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t85, { i64, ptr } %t86)
  store i32 %t89, ptr %l50
  br label %bb22
bb19:
  %t90 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t98 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownType(ptr %v0, ptr %v0, { i64, ptr } %t96)
  store %"compiler/diagmsg:Msg" %t98, ptr %l44
  br label %bb20
bb20:
  %t99 = load ptr, ptr %l38, !tbaa !29
  %t100 = load %"compiler/source:Span", ptr %l39
  %t101 = load %"compiler/diagmsg:Msg", ptr %l44
  %t102 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t99, %"compiler/source:Span" %t100, %"compiler/diagmsg:Msg" %t101)
  store i64 %t102, ptr %l45
  br label %bb21
bb21:
  br label %bb32
bb22:
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t104 = load i32, ptr %l50, !tbaa !23
  %t106 = icmp ne i32 %t104, %t103
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l53, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t109, ptr %l54
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i32, ptr %l2, !tbaa !23
  %t114 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t110, i32 %t111)
  store { i64, ptr } %t114, ptr %l57
  br label %bb25
bb24:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l62, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t116, ptr %l63
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l2, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v0, ptr %t117, i32 %t118)
  store { i64, ptr } %t121, ptr %l66
  br label %bb28
bb25:
  %t122 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  %t124 = extractvalue { i64, ptr } %t122, 1
  %t125 = mul i64 %t123, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t125)
  call void @llvm.memcpy.p0.p0.i64(ptr %t126, ptr %t124, i64 %t125, i1 false)
  %t127 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  %t129 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t132 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t128, { i64, ptr } %t129)
  store %"compiler/diagmsg:Msg" %t132, ptr %l60
  br label %bb26
bb26:
  %t133 = load ptr, ptr %l53, !tbaa !29
  %t134 = load %"compiler/source:Span", ptr %l54
  %t135 = load %"compiler/diagmsg:Msg", ptr %l60
  %t136 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t133, %"compiler/source:Span" %t134, %"compiler/diagmsg:Msg" %t135)
  store i64 %t136, ptr %l61
  br label %bb27
bb27:
  br label %bb31
bb28:
  %t137 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t147 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeMeant(ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t143, { i64, ptr } %t144)
  store %"compiler/diagmsg:Msg" %t147, ptr %l69
  br label %bb29
bb29:
  %t148 = load ptr, ptr %l62, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l63
  %t150 = load %"compiler/diagmsg:Msg", ptr %l69
  %t151 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t148, %"compiler/source:Span" %t149, %"compiler/diagmsg:Msg" %t150)
  store i64 %t151, ptr %l70
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunpin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  store ptr %a0, ptr %l0
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
  %t8 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 60
  store %"compiler/source:Span" %a1, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t16 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 61
  store i64 %a2, ptr %t16, !tbaa !24
  br label %ret
ret:
  ret void
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

define dso_local i1 @compiler_2fcheck_2ematchExisting(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l21 = alloca i1
  %l27 = alloca i1
  %l35 = alloca i1
  %l45 = alloca i1
  %l56 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l4, !tbaa !29
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Arm", ptr %t26, i32 0, i32 4
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Arm", ptr %t35, i32 0, i32 4
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3bef89c29375057e_93446d82378ce1ba)
  unreachable
bb8:
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Arm", ptr %t42, i32 0, i32 4
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t45)
  store i1 %t47, ptr %l27
  br label %bb10
bb10:
  %t48 = load i1, ptr %l27, !tbaa !21
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t49 = load i1, ptr %l21, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb1
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Match", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb17, label %bb18
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Match", ptr %t64, i32 0, i32 2
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb22
bb19:
  call void @__olang_check_failed(ptr @olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541)
  unreachable
bb20:
  br label %bb21
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Match", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Arm", ptr %t74, i32 0, i32 4
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  %t82 = xor i1 %t80, true
  store i1 %t82, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t84 = load i1, ptr %l35, !tbaa !21
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Match", ptr %t85, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = icmp eq ptr %t88, null
  br i1 %t90, label %bb25, label %bb26
bb24:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb32
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541)
  unreachable
bb26:
  br label %bb27
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Match", ptr %t92, i32 0, i32 2
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Arm", ptr %t95, i32 0, i32 4
  %t99 = load ptr, ptr %t98, !tbaa !29
  store ptr %t99, ptr %l5, !tbaa !29
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541)
  unreachable
bb29:
  br label %bb30
bb30:
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %t105)
  store i1 %t107, ptr %l56
  br label %bb31
bb31:
  %t108 = load i1, ptr %l56, !tbaa !21
  store i1 %t108, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t109 = load i1, ptr %l45, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eplainIndex(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
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
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb36
bb10:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb11, label %bb12
bb11:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 2
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l14, !tbaa !21
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
  store ptr %t34, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb15, label %bb16
bb15:
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 3
  store i1 %t41, ptr %l20, !tbaa !21
  br label %bb16
bb16:
  %t42 = load i1, ptr %l20, !tbaa !21
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
  %t51 = call i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l26
  br label %bb20
bb20:
  %t52 = load i1, ptr %l26, !tbaa !21
  store i1 %t52, ptr %l4, !tbaa !21
  br label %bb36
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t54 = load ptr, ptr %l27, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l27, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 9
  store i1 %t60, ptr %l28, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l28, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t64, i32 0, i32 2
  %t66 = load i32, ptr %t65, !range !{i32 0, i32 52}
  store i32 %t66, ptr %l2
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t70, i32 0, i32 4
  %t72 = load { i64, ptr }, ptr %t71
  store { i64, ptr } %t72, ptr %l3, !tbaa !27
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t74 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t76 = trunc i64 29 to i32
  %t77 = icmp eq i32 %t74, %t76
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb27, label %bb28
bb27:
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t83 = call i1 @compiler_2fcheck_2eplainIndexes(ptr %v0, { i64, ptr } %t81)
  store i1 %t83, ptr %l40
  br label %bb29
bb28:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb30
bb29:
  %t84 = load i1, ptr %l40, !tbaa !21
  store i1 %t84, ptr %l38, !tbaa !21
  br label %bb30
bb30:
  %t85 = load i1, ptr %l38, !tbaa !21
  store i1 %t85, ptr %l4, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_5e0248e79c45fbe7_9eea68ca563d9803)
  unreachable
bb36:
  %t86 = load i1, ptr %l4, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2ervBool(ptr %v0, i1 %a0) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i64
  %l5 = alloca %"compiler/check:reflVal"
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  store i64 %t1, ptr %l1, !tbaa !24
  br i1 %a0, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t8 = call %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v0, i1 true, i64 %t5, i64 %t6, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, i32 %t4)
  store %"compiler/check:reflVal" %t8, ptr %l5
  br label %bb4
bb4:
  %t9 = load %"compiler/check:reflVal", ptr %l5
  store %"compiler/check:reflVal" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2erootGaps(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/check:Gap"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca %"compiler/check:Gap"
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t5 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 15
  store ptr %t5, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call %"compiler/check:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eAt_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/check:Gap" %t21, ptr %l16
  br label %bb7
bb7:
  %t22 = load %"compiler/check:Gap", ptr %l16
  store %"compiler/check:Gap" %t22, ptr %l5
  %t23 = getelementptr %"compiler/check:Gap", ptr %l5, i32 0, i32 0
  %t24 = load i64, ptr %t23, !tbaa !24
  %t28 = icmp eq i64 %t24, %a1
  br i1 %t28, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t30 = getelementptr %"compiler/check:Gap", ptr %l5, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %t31)
  br label %bb10
bb9:
  br label %bb12
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb2
bb14:
  %t40 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t40, ptr %l26
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:fixedInit" @compiler_2fcheck_3afixedInit_2ector(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:fixedInit"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:fixedInit" undef, ptr %a0, 0
  %t8 = insertvalue %"compiler/check:fixedInit" %t6, i32 %a1, 1
  store %"compiler/check:fixedInit" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:fixedInit", ptr %rv
  ret %"compiler/check:fixedInit" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %a0) #0 {
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feffects_3aEffects(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/effects:Effects"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 1760, i1 false)
  %t2 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 4
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 5
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Habfa50a126d7459fe31bf7b1c700e416(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 6
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7844703a1c6298635cd5f014172e6c62(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 7
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 8
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 9
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 10
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  %t47 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 11
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 13
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 14
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 15
  %t64 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t62)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l27
  %t66 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 15
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t65, ptr %t66
  %t67 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 16
  %t69 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %v0, ptr %t67)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  %t71 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t70, ptr %t71
  %t72 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 17
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 18
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 19
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t82)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t86 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  %t87 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 20
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t91 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t91
  %t92 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 23
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb19
bb19:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t96 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 24
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l41
  br label %bb20
bb20:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t101 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %t101
  %t102 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 25
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l43
  br label %bb21
bb21:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t106 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %t106
  %t107 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 26
  %t109 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t107)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t109, ptr %l45
  br label %bb22
bb22:
  %t110 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  %t111 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 26
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t110, ptr %t111
  %t112 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 27
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l47
  br label %bb23
bb23:
  %t115 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  %t116 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 27
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t115, ptr %t116
  %t117 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 28
  %t119 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t117)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t119, ptr %l49
  br label %bb24
bb24:
  %t120 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  %t121 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 28
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %t121
  %t122 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 29
  %t124 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t122)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t124, ptr %l51
  br label %bb25
bb25:
  %t125 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l51
  %t126 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 29
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t125, ptr %t126
  %t127 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 32
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %t127)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l53
  br label %bb26
bb26:
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t131 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %t131
  %t132 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 33
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %t132)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l55
  br label %bb27
bb27:
  %t135 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  %t136 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %t136
  %t137 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 34
  %t139 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %t137)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t139, ptr %l57
  br label %bb28
bb28:
  %t140 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l57
  %t141 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %t141
  %t142 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 35
  %t144 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t142)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t144, ptr %l59
  br label %bb29
bb29:
  %t145 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  %t146 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t145, ptr %t146
  %t147 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 36
  %t149 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t147)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %l61
  br label %bb30
bb30:
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  %t151 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t151
  %t152 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 37
  %t154 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t152)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l63
  br label %bb31
bb31:
  %t155 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  %t156 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %t156
  %t157 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 41
  %t159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t157)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l65
  br label %bb32
bb32:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  %t161 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %t161
  %t162 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 42
  %t164 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t162)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l67
  br label %bb33
bb33:
  %t165 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  %t166 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t165, ptr %t166
  %t167 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 45
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  store { i64, ptr } %t168, ptr %l68, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t169, 0
  store i64 %t170, ptr %l69, !tbaa !24
  %t171 = load i64, ptr %l69, !tbaa !24
  %t172 = mul i64 %t171, 1
  %t173 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t172)
  %t174 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t173, 1
  store { i64, ptr } %t175, ptr %l70, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = load i64, ptr %l69, !tbaa !24
  %t181 = mul i64 %t180, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t177, ptr %t179, i64 %t181, i1 false)
  %t182 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t183 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 45
  store { i64, ptr } %t182, ptr %t183, !tbaa !27
  %t184 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 48
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l71, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  store i64 %t187, ptr %l72, !tbaa !24
  %t188 = load i64, ptr %l72, !tbaa !24
  %t189 = mul i64 %t188, 1
  %t190 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t189)
  %t191 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  store { i64, ptr } %t192, ptr %l73, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l72, !tbaa !24
  %t198 = mul i64 %t197, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t194, ptr %t196, i64 %t198, i1 false)
  %t199 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t200 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 48
  store { i64, ptr } %t199, ptr %t200, !tbaa !27
  %t201 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 51
  %t203 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t201)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t203, ptr %l75
  br label %bb34
bb34:
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  %t205 = getelementptr %"compiler/effects:Effects", ptr %l1, i32 0, i32 51
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, ptr %t205
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 1760, i1 false)
  br label %ret
ret:
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
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d0 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d1 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a copy" }>, align 8
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d5 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a.LanesLess(b)" }>, align 8
@.d6 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"b.LanesLess(a)" }>, align 8
@.d7 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"not b.LanesLess(a)" }>, align 8
@.d8 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"not a.LanesLess(b)" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'xor'" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"MatMul" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'@'" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d16 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a statement of this kind" }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"RefMut" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Ref" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3aFacts_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 96
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 96
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Habfa50a126d7459fe31bf7b1c700e416(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7844703a1c6298635cd5f014172e6c62(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Ha7e636d8ae446ac85b4905b074884109(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H57d5c8605cc7fd44e810264046d9b247(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %a0) #0 {
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
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feffects_3apair_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 40
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 40
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apend_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3apart_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H820e5950ca8610a4db942db17cebed6e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 32
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22, i64 %t20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 32
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22, i64 %t20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Ha7e636d8ae446ac85b4905b074884109(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 40
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hbe8b18fc9dfd8a0dd431c26ba01d8572(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H57d5c8605cc7fd44e810264046d9b247(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 40
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H820e5950ca8610a4db942db17cebed6e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 40
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hbe8b18fc9dfd8a0dd431c26ba01d8572(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

declare void @compiler_2feffects_3aEffects_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
@olang_loc_76d1a478b1ca441c_29a7b400711a77a8 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epureAsked(ptr %v0, ptr %a0)
@olang_loc_9dfa51a2458d7b0b_66a421310d598c7 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereferable(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_cf2e89857dc93528_274c4670bc5b9eac = external constant [0 x i8]
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeck(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorVarOfGeneric(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorGenericInferredField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCtorFieldNamesVar(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_3ca681ba130ec9b7_181dd48ce58d3c73 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffS(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2eisEntry(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1281810c6c9fab58_cb57d964fb88648c = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v0, i32 %a0, i64 %a1)
@olang_loc_8e26fbb1c5557eef_13e6cc5de085742b = external constant [0 x i8]
@olang_loc_6d702b04e725ae1a_71c02c55b3dfc416 = external constant [0 x i8]
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitCtor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRangeNotInt(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eToA_H5977ae182b3677451856c63d387aca03(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
@olang_loc_b274f9b5a1d6f283_4bd77c9dbb9826e7 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRangeStep(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_81853a8b5abe7edb_5bbff5245f4bcfbf = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_e4731602e9e5e1a_1dd19577095c0d0e = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e4e76d967c258b4f_6c72e4d0b3165dfb = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eknownInt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecounted(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, i64 %a4, i64 %a5, i32 %a6, i64 %a7, i64 %a8, ptr %a9, i32 %a10)
declare i64 @compiler_2ftyped_2eCalledBody(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cc70d507a7fc767d013b59b12ee0a99(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H66d61cdd994b442644a8ee2ce6a8bf73(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i32 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCycle(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2epureRead(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eisLit(ptr %v0, ptr %a0)
@olang_loc_317381e6e3d2ca51_b8977c113f1a9cfd = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eSetAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eLen_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0)
declare %"compiler/check:landing" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2eAt_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alanding_3e_2ePush_3ccompiler_2fcheck_3alanding_3e(ptr %v0, ptr %a0, %"compiler/check:landing" %a1)
@olang_loc_16bda6ca9a1e707b_be9520625a008a27 = external constant [0 x i8]
@olang_loc_4e983fb58f25bfe6_cd4ce7ce5e816e32 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@olang_loc_473753f75ee23f05_d3984be97624db51 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_3aLandings_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_425e372b56221920_2b3f0385a64c2504 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eBody(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elandedNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueAfter(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueArg(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueNeedsCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSay(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneReferences(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:laneVals" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneSetup(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezeroCalls(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ezero(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i1 %a4)
@olang_loc_34e811dc0ec4ef70_be6d979bbdd0f614 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
@olang_loc_6d548f41f8fa1c4f_7a636e93a1794123 = external constant [0 x i8]
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
@olang_loc_5ab97e381db75496_a4ed3933adca62ca = external constant [0 x i8]
declare { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2elistName(ptr %v0, i64 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNotList(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_fce01e404a5d04ab_bd3fcfdbd155739f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamesTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7175167c8688a627_14932d1cc2bc03fb = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompares(i32 %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare i1 @compiler_2fcheck_2elaneTok(i32 %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLaneCompare(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ebinaryOp(i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotNumber(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommutedCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatmulUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeqMethod(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eequality(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare { i64, ptr } @compiler_2fcheck_2eopNeed(ptr %v0, i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandsDiffer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotInt(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftInRange(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedPrim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumbersDoNotMeet(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eintOnly(i32 %a0)
declare i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
@olang_loc_c33d20c739747b79_a68497b5ec450035 = external constant [0 x i8]
@olang_loc_a2acdb5fbad0e7ec_cfac66b997ea52c8 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFnCall(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_6942cccb6154242f_a01950bde1a7e0d3 = external constant [0 x i8]
@olang_loc_82d3307da2f2bfa_afac4966dc90b716 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emethodCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, { i64, ptr } %a6, %"compiler/source:Span" %a7)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2eisRest(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRestTwice(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evarDecl(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emulti(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etryStore(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eifStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, ptr %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efor3(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforIn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edoFor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereturnStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eyieldStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejump(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectCond(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassertStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eraise(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeferStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eblockOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejoinStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espawnStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_97a078c1fd6401ad_6b439c1864d584b1 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8ded448c56d61a9a_a1642562b2a40e16 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:TopAssertAsk" @compiler_2fcheck_3aTopAssertAsk_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aTopAssertAsk_3e_2eP_H67072fc16e996275e069a499f28fddf9(ptr %v0, ptr %a0, %"compiler/check:TopAssertAsk" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etopSetIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyUnique(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a50575fe0cbf16d0_d0ac681a5111f894 = external constant [0 x i8]
@olang_loc_60e1b0f1da45c3fd_13c1ffbfc1f1b5a1 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueExisting(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandedOn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundMention(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:landing" @compiler_2fcheck_3alanding_2ector(ptr %v0, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emovesHere(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehandOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueErr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuggest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimportedTypeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownNumberType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownTypeMeant(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %a0)
@olang_loc_3bef89c29375057e_93446d82378ce1ba = external constant [0 x i8]
@olang_loc_f9ce4d996cc4e225_93403f8f2ddbd541 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eplainPlace(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eplainIndexes(ptr %v0, { i64, ptr } %a0)
@olang_loc_5e0248e79c45fbe7_9eea68ca563d9803 = external constant [0 x i8]
@G_2ecompiler_2fcheck_2eRvBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflVal" @compiler_2fcheck_3areflVal_2ector(ptr %v0, ptr %v1, i1 %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, i32 %a4)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare %"compiler/check:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eAt_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)

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
