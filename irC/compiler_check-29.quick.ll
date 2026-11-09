source_filename = "compiler_check-29.quick.ll"
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
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:tailAsk" = type { i64, i64, %"compiler/source:Span", i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/check:laneVals" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:AnySlot" = type { i32, i32, i64, i64, i1, i32 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/check:heldCand" = type { i64, i64, i64 }
%"compiler/check:typeCase" = type { i1, i1, i32, i64, i64, i1 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/check:TopAssertAsk" = type { i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64 }
%"compiler/check:inPlaceRead" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span" }
%"compiler/check:signMag" = type { i1, i128 }
define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eCondBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l7 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t9 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %t4)
  store i64 %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load i64, ptr %l7, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBodyIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, ptr %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i64
  %l16 = alloca %"compiler/generic:Context"
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l19 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l20 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l21 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l29 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l42 = alloca i64
  %l44 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l48 = alloca i64
  %l51 = alloca ptr
  %l54 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l59 = alloca i32
  %l61 = alloca i1
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l65 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l70 = alloca i1
  %l74 = alloca { i64, ptr }
  %l76 = alloca i64
  %l79 = alloca i64
  %l83 = alloca %"compiler/source:Span"
  %l84 = alloca ptr
  %l87 = alloca { i64, [2 x i64] }
  %l92 = alloca i32
  %l95 = alloca i64
  %l101 = alloca i1
  %l104 = alloca i64
  %l106 = alloca %"compiler/generic:Context"
  %l108 = alloca ptr
  %l110 = alloca %"compiler/generic:Context"
  %l113 = alloca %"compiler/generic:Context"
  %l115 = alloca %"compiler/generic:Context"
  %l120 = alloca ptr
  %l121 = alloca ptr
  %l122 = alloca i64
  %l126 = alloca %"compiler/generic:Context"
  %l128 = alloca %"compiler/generic:Context"
  %l132 = alloca ptr
  %l133 = alloca i64
  %l137 = alloca %"compiler/generic:Context"
  %l139 = alloca %"compiler/generic:Context"
  %l142 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l143 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l145 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l146 = alloca i32
  %l148 = alloca i1
  %l154 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l155 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l157 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l158 = alloca i32
  %l160 = alloca i1
  %l165 = alloca i32
  %l177 = alloca i64
  %l180 = alloca i64
  %l200 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l209 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l210 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l212 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l213 = alloca i32
  %l215 = alloca i1
  %l223 = alloca ptr
  %l226 = alloca i32
  %l229 = alloca i64
  %l233 = alloca ptr
  %l236 = alloca ptr
  %l237 = alloca ptr
  %l242 = alloca ptr
  %l245 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca ptr
  %l259 = alloca { i64, ptr }
  %l260 = alloca %"compiler/typed:Block"
  %l279 = alloca { i64, ptr }
  %l287 = alloca ptr
  %l289 = alloca i64
  %l292 = alloca i1
  %l295 = alloca i64
  %l298 = alloca i1
  %l304 = alloca i64
  %l307 = alloca i1
  %l310 = alloca i64
  %l313 = alloca i1
  %l326 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t141 = alloca { i64, [2 x i64] }, align 8
  %t193 = alloca %"compiler/generic:Context", align 8
  %t199 = alloca %"compiler/generic:Context", align 8
  %t219 = alloca %"compiler/generic:Context", align 8
  %t333 = alloca %"compiler/generic:Context", align 8
  %t658 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store ptr %a5, ptr %l5
  store i32 %a6, ptr %l6
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
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 143
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t14)
  br label %bb1
bb1:
  %t16 = ptrtoint ptr %s0 to i64
  store i64 %t16, ptr %l42, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eExprBodyIn_2elocal_2e8
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = call ptr @__olang_region_make(ptr %s0)
  %t20 = ptrtoint ptr %t19 to i64
  store i64 %t20, ptr %l42, !tbaa !24
  br label %bb3
bb3:
  %t21 = load i64, ptr %l42
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t23, ptr %l44
  br label %bb4
bb4:
  %t24 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eExprBodyIn_2elocal_2e8
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load i64, ptr %l42
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 2
  %t29 = load { i64, ptr }, ptr %t28
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = call ptr @__olang_region_or(ptr %t30, ptr null)
  %t32 = icmp ne ptr %t31, null
  %t33 = select i1 %t32, ptr %t31, ptr null
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = icmp ne ptr %t37, null
  %t39 = select i1 %t38, ptr %t37, ptr %t33
  %t40 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr %t39
  %t46 = icmp eq ptr %t45, %t27
  call void @__olang_region_settle(ptr %t27, i1 %t46)
  br label %bb6
bb6:
  %t47 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t47, ptr %l8
  store i64 -1, ptr %l9, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 16
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t50)
  store i64 %t52, ptr %l48
  br label %bb7
bb7:
  %t53 = load i64, ptr %l48, !tbaa !24
  %t54 = icmp sgt i64 %t53, 0
  br i1 %t54, label %bb8, label %bb9
bb8:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l51
  br label %bb10
bb9:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l5, !tbaa !29
  %t64 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v3, ptr %t59, ptr %t60)
  store i1 %t64, ptr %l70
  br label %bb18
bb10:
  %t65 = load ptr, ptr %l51, !tbaa !29
  %t67 = getelementptr %"compiler/check:frame", ptr %t65, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l9, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t75 = call { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v3, ptr %s0, ptr %t70, ptr %t71)
  %t76 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t75, 1
  %t77 = extractvalue { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } %t75, 0
  store i32 %t77, ptr %l59
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb12, label %ok.79, !prof !99
ok.79:
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t76, ptr %l58
  br label %bb11
bb11:
  %t81 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %s0, ptr %l58)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t81, ptr %l63
  br label %bb14
bb12:
  %t82 = load i32, ptr %l59, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  store i1 %t85, ptr %l61, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb14:
  %t87 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t87, ptr %l54
  br label %bb15
bb15:
  %t88 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t88, ptr %l65
  %t89 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t89, ptr %l8
  %t90 = load i1, ptr @olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eExprBodyIn_2elocal_2e8
  br i1 %t90, label %bb16, label %bb17
bb16:
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = call ptr @__olang_region_or(ptr %t94, ptr null)
  %t96 = icmp ne ptr %t95, null
  %t97 = select i1 %t96, ptr %t95, ptr null
  %t98 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65, i32 0, i32 1
  %t99 = load { i64, ptr }, ptr %t98
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = call ptr @__olang_region_or(ptr %t100, ptr null)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr %t97
  %t104 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr null)
  %t108 = icmp ne ptr %t107, null
  %t109 = select i1 %t108, ptr %t107, ptr %t103
  call void @__olang_region_drop(ptr %t109)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l65
  br label %bb17
bb17:
  br label %bb22
bb18:
  %t110 = load i1, ptr %l70, !tbaa !21
  br i1 %t110, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/check:Checker", ptr %t112, i32 0, i32 143
  %t116 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s0, ptr %t114)
  store { i64, ptr } %t116, ptr %l74
  br label %bb23
bb23:
  %t117 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t117, ptr %l10, !tbaa !27
  %t118 = load ptr, ptr %l7, !tbaa !29
  %t120 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t118)
  store i64 %t120, ptr %l76
  br label %bb24
bb24:
  %t121 = load i64, ptr %l76, !tbaa !24
  store i64 %t121, ptr %l11, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/check:Checker", ptr %t122, i32 0, i32 15
  %t126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t124)
  store i64 %t126, ptr %l79
  br label %bb25
bb25:
  %t127 = load i64, ptr %l79, !tbaa !24
  store i64 %t127, ptr %l12, !tbaa !24
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 138
  %t131 = load i64, ptr %t130, !tbaa !24
  store i64 %t131, ptr %l13, !tbaa !24
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t135 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t133)
  store %"compiler/source:Span" %t135, ptr %l83
  br label %bb26
bb26:
  %t136 = load %"compiler/source:Span", ptr %l83
  store %"compiler/source:Span" %t136, ptr %l14
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l84, !tbaa !29
  %t138 = load i64, ptr %l1, !tbaa !24
  %t139 = getelementptr %"compiler/source:Span", ptr %l14, i32 0, i32 0
  %t140 = load i32, ptr %t139, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t141, i32 0, i32 0
  store i64 7, ptr %t142
  %t144 = insertvalue { i64, i32 } undef, i64 %t138, 0
  %t146 = insertvalue { i64, i32 } %t144, i32 %t140, 1
  %t147 = getelementptr { i64, [2 x i64] }, ptr %t141, i32 0, i32 1
  store { i64, i32 } %t146, ptr %t147
  %t148 = load { i64, [2 x i64] }, ptr %t141
  store { i64, [2 x i64] } %t148, ptr %l87
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l6, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t154, i32 0, i32 %t155, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t158, ptr %l92
  br label %bb27
bb27:
  %t159 = load i64, ptr %l1, !tbaa !24
  %t160 = load %"compiler/source:Span", ptr %l14
  %t161 = load ptr, ptr %l84, !tbaa !29
  %t162 = load { i64, [2 x i64] }, ptr %l87
  %t163 = load i32, ptr %l92, !tbaa !23
  %t166 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t161, { i64, [2 x i64] } %t162, i32 %t163, i64 %t159, %"compiler/source:Span" %t160)
  store i64 %t166, ptr %l95
  br label %bb28
bb28:
  %t167 = load i64, ptr %l95, !tbaa !24
  store i64 %t167, ptr %l15, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 19
  %t171 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t170, i64 %t171, i64 1)
  br label %bb29
bb29:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/check:Checker", ptr %t174, i32 0, i32 134
  %t177 = load i1, ptr %t176, !tbaa !21
  br i1 %t177, label %bb30, label %bb31
bb30:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 16
  %t183 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t181)
  store i64 %t183, ptr %l104
  br label %bb32
bb31:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb33
bb32:
  %t184 = load i64, ptr %l104, !tbaa !24
  %t185 = icmp sgt i64 %t184, 0
  store i1 %t185, ptr %l101, !tbaa !21
  br label %bb33
bb33:
  %t187 = load i1, ptr %l101, !tbaa !21
  br i1 %t187, label %bb34, label %bb35
bb34:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t188)
  store ptr %t190, ptr %l108
  br label %bb36
bb35:
  %t191 = load i64, ptr %l1, !tbaa !24
  %t192 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t193, ptr %s0, i64 %t191, i64 %t192)
  call void @llvm.memmove.p0.p0.i64(ptr %l113, ptr %t193, i64 160, i1 false)
  br label %bb37
bb36:
  %t196 = load ptr, ptr %l108, !tbaa !29
  %t198 = getelementptr %"compiler/check:frame", ptr %t196, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l110, ptr %t198, i64 160, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l106, ptr %l110, i64 160, i1 false)
  br label %bb38
bb37:
  call void @llvm.memmove.p0.p0.i64(ptr %l106, ptr %l113, i64 160, i1 false)
  br label %bb38
bb38:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t199, ptr %s0, ptr %l106)
  call void @llvm.memmove.p0.p0.i64(ptr %l115, ptr %t199, i64 160, i1 false)
  br label %bb39
bb39:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l115, i64 160, i1 false)
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i64, ptr %l15, !tbaa !24
  %t203 = load i64, ptr %l1, !tbaa !24
  %t204 = load i32, ptr %l6, !tbaa !23
  %t209 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t201, i64 %t202, i64 %t203, i32 %t204, i32 0)
  store ptr %t209, ptr %l120
  br label %bb40
bb40:
  %t210 = load ptr, ptr %l120, !tbaa !29
  store ptr %t210, ptr %l17, !tbaa !29
  %t211 = load ptr, ptr %l17, !tbaa !29
  store ptr %t211, ptr %l121, !tbaa !29
  %t212 = ptrtoint ptr %v0 to i64
  store i64 %t212, ptr %l122, !tbaa !24
  %t213 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t213, label %bb41, label %bb42
bb41:
  %t215 = call ptr @__olang_region_make(ptr %v0)
  %t216 = ptrtoint ptr %t215 to i64
  store i64 %t216, ptr %l122, !tbaa !24
  br label %bb42
bb42:
  %t217 = load i64, ptr %l1, !tbaa !24
  %t218 = load i64, ptr %l2, !tbaa !24
  %t220 = load i64, ptr %l122
  %t221 = inttoptr i64 %t220 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t219, ptr %t221, i64 %t217, i64 %t218)
  call void @llvm.memmove.p0.p0.i64(ptr %l126, ptr %t219, i64 160, i1 false)
  br label %bb43
bb43:
  %t224 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t224, label %bb44, label %bb45
bb44:
  %t226 = load i64, ptr %l122
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = getelementptr %"compiler/generic:Context", ptr %l126, i32 0, i32 3
  %t229 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t228, i32 0, i32 2
  %t230 = load { i64, ptr }, ptr %t229
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr null)
  %t233 = icmp ne ptr %t232, null
  %t234 = select i1 %t233, ptr %t232, ptr null
  %t235 = getelementptr %"compiler/generic:Context", ptr %l126, i32 0, i32 3
  %t236 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t235, i32 0, i32 1
  %t237 = load { i64, ptr }, ptr %t236
  %t238 = extractvalue { i64, ptr } %t237, 1
  %t239 = call ptr @__olang_region_or(ptr %t238, ptr null)
  %t240 = icmp ne ptr %t239, null
  %t241 = select i1 %t240, ptr %t239, ptr %t234
  %t242 = getelementptr %"compiler/generic:Context", ptr %l126, i32 0, i32 3
  %t243 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t242, i32 0, i32 0
  %t244 = load { i64, ptr }, ptr %t243
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = call ptr @__olang_region_or(ptr %t245, ptr null)
  %t247 = icmp ne ptr %t246, null
  %t248 = select i1 %t247, ptr %t246, ptr %t241
  %t249 = getelementptr %"compiler/generic:Context", ptr %l126, i32 0, i32 2
  %t250 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t249, i32 0, i32 2
  %t251 = load { i64, ptr }, ptr %t250
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = call ptr @__olang_region_or(ptr %t252, ptr null)
  %t254 = icmp ne ptr %t253, null
  %t255 = select i1 %t254, ptr %t253, ptr %t248
  %t256 = getelementptr %"compiler/generic:Context", ptr %l126, i32 0, i32 2
  %t257 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t256, i32 0, i32 1
  %t258 = load { i64, ptr }, ptr %t257
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = call ptr @__olang_region_or(ptr %t259, ptr null)
  %t261 = icmp ne ptr %t260, null
  %t262 = select i1 %t261, ptr %t260, ptr %t255
  %t263 = getelementptr %"compiler/generic:Context", ptr %l126, i32 0, i32 2
  %t264 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t263, i32 0, i32 0
  %t265 = load { i64, ptr }, ptr %t264
  %t266 = extractvalue { i64, ptr } %t265, 1
  %t267 = call ptr @__olang_region_or(ptr %t266, ptr null)
  %t268 = icmp ne ptr %t267, null
  %t269 = select i1 %t268, ptr %t267, ptr %t262
  %t270 = icmp eq ptr %t269, %t227
  call void @__olang_region_settle(ptr %t227, i1 %t270)
  br label %bb45
bb45:
  %t271 = load ptr, ptr %l121, !tbaa !29
  %t272 = getelementptr %"compiler/check:frame", ptr %t271, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l128, ptr %t272, i64 160, i1 false)
  %t273 = load ptr, ptr %l121, !tbaa !29
  %t274 = getelementptr %"compiler/check:frame", ptr %t273, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t274, ptr %l126, i64 160, i1 false)
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t275, label %bb46, label %bb47
bb46:
  %t277 = getelementptr %"compiler/generic:Context", ptr %l128, i32 0, i32 3
  %t278 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t277, i32 0, i32 2
  %t279 = load { i64, ptr }, ptr %t278
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = call ptr @__olang_region_or(ptr %t280, ptr null)
  %t282 = icmp ne ptr %t281, null
  %t283 = select i1 %t282, ptr %t281, ptr null
  %t284 = getelementptr %"compiler/generic:Context", ptr %l128, i32 0, i32 3
  %t285 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t284, i32 0, i32 1
  %t286 = load { i64, ptr }, ptr %t285
  %t287 = extractvalue { i64, ptr } %t286, 1
  %t288 = call ptr @__olang_region_or(ptr %t287, ptr null)
  %t289 = icmp ne ptr %t288, null
  %t290 = select i1 %t289, ptr %t288, ptr %t283
  %t291 = getelementptr %"compiler/generic:Context", ptr %l128, i32 0, i32 3
  %t292 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t291, i32 0, i32 0
  %t293 = load { i64, ptr }, ptr %t292
  %t294 = extractvalue { i64, ptr } %t293, 1
  %t295 = call ptr @__olang_region_or(ptr %t294, ptr null)
  %t296 = icmp ne ptr %t295, null
  %t297 = select i1 %t296, ptr %t295, ptr %t290
  %t298 = getelementptr %"compiler/generic:Context", ptr %l128, i32 0, i32 2
  %t299 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t298, i32 0, i32 2
  %t300 = load { i64, ptr }, ptr %t299
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = call ptr @__olang_region_or(ptr %t301, ptr null)
  %t303 = icmp ne ptr %t302, null
  %t304 = select i1 %t303, ptr %t302, ptr %t297
  %t305 = getelementptr %"compiler/generic:Context", ptr %l128, i32 0, i32 2
  %t306 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t305, i32 0, i32 1
  %t307 = load { i64, ptr }, ptr %t306
  %t308 = extractvalue { i64, ptr } %t307, 1
  %t309 = call ptr @__olang_region_or(ptr %t308, ptr null)
  %t310 = icmp ne ptr %t309, null
  %t311 = select i1 %t310, ptr %t309, ptr %t304
  %t312 = getelementptr %"compiler/generic:Context", ptr %l128, i32 0, i32 2
  %t313 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t312, i32 0, i32 0
  %t314 = load { i64, ptr }, ptr %t313
  %t315 = extractvalue { i64, ptr } %t314, 1
  %t316 = call ptr @__olang_region_or(ptr %t315, ptr null)
  %t317 = icmp ne ptr %t316, null
  %t318 = select i1 %t317, ptr %t316, ptr %t311
  call void @__olang_region_drop(ptr %t318)
  store %"compiler/generic:Context" zeroinitializer, ptr %l128
  br label %bb47
bb47:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/check:Checker", ptr %t319, i32 0, i32 134
  %t322 = load i1, ptr %t321, !tbaa !21
  br i1 %t322, label %bb48, label %bb49
bb48:
  %t324 = load ptr, ptr %l17, !tbaa !29
  store ptr %t324, ptr %l132, !tbaa !29
  %t325 = ptrtoint ptr %v0 to i64
  store i64 %t325, ptr %l133, !tbaa !24
  %t326 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t326, label %bb50, label %bb51
bb49:
  br label %bb79
bb50:
  %t328 = call ptr @__olang_region_make(ptr %v0)
  %t329 = ptrtoint ptr %t328 to i64
  store i64 %t329, ptr %l133, !tbaa !24
  br label %bb51
bb51:
  %t330 = load i64, ptr %l1, !tbaa !24
  %t331 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 1
  %t332 = load i64, ptr %t331, !tbaa !24
  %t334 = load i64, ptr %l133
  %t335 = inttoptr i64 %t334 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t333, ptr %t335, i64 %t330, i64 %t332)
  call void @llvm.memmove.p0.p0.i64(ptr %l137, ptr %t333, i64 160, i1 false)
  br label %bb52
bb52:
  %t338 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t338, label %bb53, label %bb54
bb53:
  %t340 = load i64, ptr %l133
  %t341 = inttoptr i64 %t340 to ptr
  %t342 = getelementptr %"compiler/generic:Context", ptr %l137, i32 0, i32 3
  %t343 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t342, i32 0, i32 2
  %t344 = load { i64, ptr }, ptr %t343
  %t345 = extractvalue { i64, ptr } %t344, 1
  %t346 = call ptr @__olang_region_or(ptr %t345, ptr null)
  %t347 = icmp ne ptr %t346, null
  %t348 = select i1 %t347, ptr %t346, ptr null
  %t349 = getelementptr %"compiler/generic:Context", ptr %l137, i32 0, i32 3
  %t350 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t349, i32 0, i32 1
  %t351 = load { i64, ptr }, ptr %t350
  %t352 = extractvalue { i64, ptr } %t351, 1
  %t353 = call ptr @__olang_region_or(ptr %t352, ptr null)
  %t354 = icmp ne ptr %t353, null
  %t355 = select i1 %t354, ptr %t353, ptr %t348
  %t356 = getelementptr %"compiler/generic:Context", ptr %l137, i32 0, i32 3
  %t357 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t356, i32 0, i32 0
  %t358 = load { i64, ptr }, ptr %t357
  %t359 = extractvalue { i64, ptr } %t358, 1
  %t360 = call ptr @__olang_region_or(ptr %t359, ptr null)
  %t361 = icmp ne ptr %t360, null
  %t362 = select i1 %t361, ptr %t360, ptr %t355
  %t363 = getelementptr %"compiler/generic:Context", ptr %l137, i32 0, i32 2
  %t364 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t363, i32 0, i32 2
  %t365 = load { i64, ptr }, ptr %t364
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = call ptr @__olang_region_or(ptr %t366, ptr null)
  %t368 = icmp ne ptr %t367, null
  %t369 = select i1 %t368, ptr %t367, ptr %t362
  %t370 = getelementptr %"compiler/generic:Context", ptr %l137, i32 0, i32 2
  %t371 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t370, i32 0, i32 1
  %t372 = load { i64, ptr }, ptr %t371
  %t373 = extractvalue { i64, ptr } %t372, 1
  %t374 = call ptr @__olang_region_or(ptr %t373, ptr null)
  %t375 = icmp ne ptr %t374, null
  %t376 = select i1 %t375, ptr %t374, ptr %t369
  %t377 = getelementptr %"compiler/generic:Context", ptr %l137, i32 0, i32 2
  %t378 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t377, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378
  %t380 = extractvalue { i64, ptr } %t379, 1
  %t381 = call ptr @__olang_region_or(ptr %t380, ptr null)
  %t382 = icmp ne ptr %t381, null
  %t383 = select i1 %t382, ptr %t381, ptr %t376
  %t384 = icmp eq ptr %t383, %t341
  call void @__olang_region_settle(ptr %t341, i1 %t384)
  br label %bb54
bb54:
  %t385 = load ptr, ptr %l132, !tbaa !29
  %t386 = getelementptr %"compiler/check:frame", ptr %t385, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l139, ptr %t386, i64 160, i1 false)
  %t387 = load ptr, ptr %l132, !tbaa !29
  %t388 = getelementptr %"compiler/check:frame", ptr %t387, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t388, ptr %l137, i64 160, i1 false)
  %t389 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t389, label %bb55, label %bb56
bb55:
  %t391 = getelementptr %"compiler/generic:Context", ptr %l139, i32 0, i32 3
  %t392 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t391, i32 0, i32 2
  %t393 = load { i64, ptr }, ptr %t392
  %t394 = extractvalue { i64, ptr } %t393, 1
  %t395 = call ptr @__olang_region_or(ptr %t394, ptr null)
  %t396 = icmp ne ptr %t395, null
  %t397 = select i1 %t396, ptr %t395, ptr null
  %t398 = getelementptr %"compiler/generic:Context", ptr %l139, i32 0, i32 3
  %t399 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t398, i32 0, i32 1
  %t400 = load { i64, ptr }, ptr %t399
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = call ptr @__olang_region_or(ptr %t401, ptr null)
  %t403 = icmp ne ptr %t402, null
  %t404 = select i1 %t403, ptr %t402, ptr %t397
  %t405 = getelementptr %"compiler/generic:Context", ptr %l139, i32 0, i32 3
  %t406 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t405, i32 0, i32 0
  %t407 = load { i64, ptr }, ptr %t406
  %t408 = extractvalue { i64, ptr } %t407, 1
  %t409 = call ptr @__olang_region_or(ptr %t408, ptr null)
  %t410 = icmp ne ptr %t409, null
  %t411 = select i1 %t410, ptr %t409, ptr %t404
  %t412 = getelementptr %"compiler/generic:Context", ptr %l139, i32 0, i32 2
  %t413 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t412, i32 0, i32 2
  %t414 = load { i64, ptr }, ptr %t413
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = call ptr @__olang_region_or(ptr %t415, ptr null)
  %t417 = icmp ne ptr %t416, null
  %t418 = select i1 %t417, ptr %t416, ptr %t411
  %t419 = getelementptr %"compiler/generic:Context", ptr %l139, i32 0, i32 2
  %t420 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t419, i32 0, i32 1
  %t421 = load { i64, ptr }, ptr %t420
  %t422 = extractvalue { i64, ptr } %t421, 1
  %t423 = call ptr @__olang_region_or(ptr %t422, ptr null)
  %t424 = icmp ne ptr %t423, null
  %t425 = select i1 %t424, ptr %t423, ptr %t418
  %t426 = getelementptr %"compiler/generic:Context", ptr %l139, i32 0, i32 2
  %t427 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t426, i32 0, i32 0
  %t428 = load { i64, ptr }, ptr %t427
  %t429 = extractvalue { i64, ptr } %t428, 1
  %t430 = call ptr @__olang_region_or(ptr %t429, ptr null)
  %t431 = icmp ne ptr %t430, null
  %t432 = select i1 %t431, ptr %t430, ptr %t425
  call void @__olang_region_drop(ptr %t432)
  store %"compiler/generic:Context" zeroinitializer, ptr %l139
  br label %bb56
bb56:
  %t433 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 2
  %t435 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %s0, ptr %s0, ptr %t433)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t435, ptr %l142
  br label %bb57
bb57:
  %t436 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l142
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t436, ptr %l18
  br label %bb58
bb58:
  %t438 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %s0, ptr %l18)
  %t439 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t438, 1
  %t440 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t438, 0
  store i32 %t440, ptr %l146
  %t441 = icmp ne i32 %t440, 0
  br i1 %t441, label %bb60, label %ok.442, !prof !99
ok.442:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t439, ptr %l145
  br label %bb59
bb59:
  %t443 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l145
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t443, ptr %l143
  br label %bb62
bb60:
  %t444 = load i32, ptr %l146, !tbaa !23
  %t445 = ashr i32 %t444, 16
  %t447 = icmp eq i32 %t445, 1
  store i1 %t447, ptr %l148, !tbaa !21
  br label %bb61
bb61:
  br label %bb65
bb62:
  %t448 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l143
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t448, ptr %l19
  %t449 = load ptr, ptr %l17, !tbaa !29
  %t451 = getelementptr %"compiler/check:frame", ptr %t449, i32 0, i32 4
  %t452 = getelementptr %"compiler/generic:Context", ptr %t451, i32 0, i32 2
  %t453 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l19, i32 0, i32 0
  %t454 = load i32, ptr %t453, !tbaa !23
  %t455 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l19, i32 0, i32 1
  %t456 = load i32, ptr %t455, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t452, i32 %t454, i32 %t456)
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb58
bb65:
  %t460 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 3
  %t462 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %s0, ptr %s0, ptr %t460)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t462, ptr %l154
  br label %bb66
bb66:
  %t463 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l154
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t463, ptr %l20
  br label %bb67
bb67:
  %t465 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %s0, ptr %l20)
  %t466 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t465, 1
  %t467 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t465, 0
  store i32 %t467, ptr %l158
  %t468 = icmp ne i32 %t467, 0
  br i1 %t468, label %bb69, label %ok.469, !prof !99
ok.469:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t466, ptr %l157
  br label %bb68
bb68:
  %t470 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l157
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t470, ptr %l155
  br label %bb71
bb69:
  %t471 = load i32, ptr %l158, !tbaa !23
  %t472 = ashr i32 %t471, 16
  %t474 = icmp eq i32 %t472, 1
  store i1 %t474, ptr %l160, !tbaa !21
  br label %bb70
bb70:
  br label %bb78
bb71:
  %t475 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l155
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t475, ptr %l21
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/check:Checker", ptr %t476, i32 0, i32 1
  %t479 = load ptr, ptr %t478, !tbaa !29
  %t481 = getelementptr %"compiler/generic:Program", ptr %t479, i32 0, i32 2
  %t482 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l21, i32 0, i32 1
  %t483 = load i32, ptr %t482, !tbaa !23
  %t486 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t481, i32 %t483)
  store i32 %t486, ptr %l165
  br label %bb72
bb72:
  %t487 = load i32, ptr %l165, !range !{i32 0, i32 33}
  %t489 = trunc i64 26 to i32
  %t490 = icmp eq i32 %t487, %t489
  br i1 %t490, label %bb73, label %bb74
bb73:
  %t492 = load ptr, ptr %l17, !tbaa !29
  %t494 = getelementptr %"compiler/check:frame", ptr %t492, i32 0, i32 4
  %t495 = getelementptr %"compiler/generic:Context", ptr %t494, i32 0, i32 3
  %t496 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l21, i32 0, i32 0
  %t497 = load i32, ptr %t496, !tbaa !23
  %t498 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l21, i32 0, i32 1
  %t499 = load i32, ptr %t498, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t495, i32 %t497, i32 %t499)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb67
bb78:
  br label %bb79
bb79:
  store i64 0, ptr %l22, !tbaa !24
  %t503 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t505 = extractvalue { i64, ptr } %t503, 0
  store i64 %t505, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t507 = load i64, ptr %l23, !tbaa !24
  %t508 = load i64, ptr %l22, !tbaa !24
  %t511 = icmp sgt i64 %t507, %t508
  br i1 %t511, label %bb80, label %bb81
bb80:
  %t513 = load i64, ptr %l24, !tbaa !24
  %t515 = icmp sgt i64 %t513, 0
  br i1 %t515, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l177, !tbaa !24
  br label %bb85
bb82:
  %t517 = load i64, ptr %l23, !tbaa !24
  %t518 = load i64, ptr %l22, !tbaa !24
  %t521 = sub i64 %t517, %t518
  %t522 = load i64, ptr %l24, !tbaa !24
  %t525 = add i64 %t521, %t522
  %t527 = sub i64 %t525, 1
  %t528 = load i64, ptr %l24, !tbaa !24
  %t531 = sdiv i64 %t527, %t528
  store i64 %t531, ptr %l180, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l180, !tbaa !24
  br label %bb84
bb84:
  %t533 = load i64, ptr %l180, !tbaa !24
  store i64 %t533, ptr %l177, !tbaa !24
  br label %bb85
bb85:
  %t534 = load i64, ptr %l177, !tbaa !24
  store i64 %t534, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb86
bb86:
  %t535 = load i64, ptr %l26, !tbaa !24
  %t536 = load i64, ptr %l25, !tbaa !24
  %t539 = icmp slt i64 %t535, %t536
  %t541 = xor i1 %t539, true
  br i1 %t541, label %bb87, label %bb88
bb87:
  br label %bb92
bb88:
  br label %bb89
bb89:
  %t543 = load i64, ptr %l22, !tbaa !24
  %t544 = load i64, ptr %l26, !tbaa !24
  %t545 = load i64, ptr %l24, !tbaa !24
  %t548 = mul i64 %t544, %t545
  %t551 = add i64 %t543, %t548
  store i64 %t551, ptr %l27, !tbaa !24
  %t553 = load ptr, ptr %l17, !tbaa !29
  %t555 = getelementptr %"compiler/check:frame", ptr %t553, i32 0, i32 4
  %t556 = getelementptr %"compiler/generic:Context", ptr %t555, i32 0, i32 2
  %t557 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t557, ptr %l200, !tbaa !27
  %t558 = load i64, ptr %l27, !tbaa !24
  %t560 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t561 = load ptr, ptr %t560, !tbaa !27
  %t562 = getelementptr i32, ptr %t561, i64 %t558
  %t563 = load i32, ptr %t562, !tbaa !33
  store { i64, ptr } %a4, ptr %l203, !tbaa !27
  %t565 = load i64, ptr %l27, !tbaa !24
  %t567 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = getelementptr i32, ptr %t568, i64 %t565
  %t570 = load i32, ptr %t569, !tbaa !33
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t556, i32 %t563, i32 %t570)
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t574 = load i64, ptr %l26, !tbaa !24
  %t576 = add i64 %t574, 1
  store i64 %t576, ptr %l26, !tbaa !24
  br label %bb86
bb92:
  %t579 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %s0, ptr %s0, ptr %l8)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t579, ptr %l209
  br label %bb93
bb93:
  %t580 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l209
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t580, ptr %l28
  br label %bb94
bb94:
  %t582 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %s0, ptr %l28)
  %t583 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t582, 1
  %t584 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t582, 0
  store i32 %t584, ptr %l213
  %t585 = icmp ne i32 %t584, 0
  br i1 %t585, label %bb96, label %ok.586, !prof !99
ok.586:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t583, ptr %l212
  br label %bb95
bb95:
  %t587 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l212
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t587, ptr %l210
  br label %bb98
bb96:
  %t588 = load i32, ptr %l213, !tbaa !23
  %t589 = ashr i32 %t588, 16
  %t591 = icmp eq i32 %t589, 1
  store i1 %t591, ptr %l215, !tbaa !21
  br label %bb97
bb97:
  br label %bb101
bb98:
  %t592 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l210
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t592, ptr %l29
  %t593 = load ptr, ptr %l17, !tbaa !29
  %t595 = getelementptr %"compiler/check:frame", ptr %t593, i32 0, i32 44
  %t596 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l29, i32 0, i32 0
  %t597 = load i32, ptr %t596, !tbaa !23
  %t598 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l29, i32 0, i32 1
  %t599 = load i64, ptr %t598, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t595, i32 %t597, i64 %t599)
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb94
bb101:
  %t603 = load ptr, ptr %l17, !tbaa !29
  %t604 = load i64, ptr %l9, !tbaa !24
  %t607 = getelementptr %"compiler/check:frame", ptr %t603, i32 0, i32 45
  store i64 %t604, ptr %t607, !tbaa !24
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t608)
  store ptr %t610, ptr %l223
  br label %bb102
bb102:
  %t611 = load %"compiler/source:Span", ptr %l14
  %t612 = load ptr, ptr %l223, !tbaa !29
  %t615 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t612, i32 -1, i32 0, %"compiler/source:Span" %t611)
  store i32 %t615, ptr %l226
  br label %bb103
bb103:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/check:Checker", ptr %t616, i32 0, i32 37
  %t620 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t618)
  store i64 %t620, ptr %l229
  br label %bb104
bb104:
  %t621 = load i64, ptr %l229, !tbaa !24
  store i64 %t621, ptr %l30, !tbaa !24
  %t622 = load i32, ptr %l6, !tbaa !23
  %t623 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t626 = icmp eq i32 %t622, %t623
  br i1 %t626, label %bb105, label %bb106
bb105:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load ptr, ptr %l5, !tbaa !29
  %t632 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v3, ptr %v0, ptr %t628, ptr %t629)
  store ptr %t632, ptr %l236
  br label %bb107
bb106:
  %t633 = load ptr, ptr %l0, !tbaa !29
  store ptr %t633, ptr %l237, !tbaa !29
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t635 = load ptr, ptr %l5, !tbaa !29
  %t637 = load i32, ptr %l6, !tbaa !23
  %t641 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v3, ptr %v0, ptr %t634, ptr %t635, i32 %t637)
  store ptr %t641, ptr %l242
  br label %bb108
bb107:
  %t642 = load ptr, ptr %l236, !tbaa !29
  store ptr %t642, ptr %l233, !tbaa !29
  br label %bb110
bb108:
  %t643 = load i32, ptr %l6, !tbaa !23
  %t644 = load %"compiler/source:Span", ptr %l14
  %t645 = load ptr, ptr %l237, !tbaa !29
  %t646 = load ptr, ptr %l242, !tbaa !29
  %t649 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t645, ptr %t646, i32 %t643, %"compiler/source:Span" %t644)
  store ptr %t649, ptr %l245
  br label %bb109
bb109:
  %t650 = load ptr, ptr %l245, !tbaa !29
  store ptr %t650, ptr %l233, !tbaa !29
  br label %bb110
bb110:
  %t651 = load ptr, ptr %l233, !tbaa !29
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t654 = getelementptr %"compiler/check:Checker", ptr %t652, i32 0, i32 37
  %t655 = load %"compiler/source:Span", ptr %l14
  store { i64, [3 x i64] } zeroinitializer, ptr %t658
  %t659 = getelementptr { i64, [3 x i64] }, ptr %t658, i32 0, i32 0
  store i64 6, ptr %t659
  %t661 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t655, 0
  %t663 = insertvalue { %"compiler/source:Span", ptr } %t661, ptr %t651, 1
  %t664 = getelementptr { i64, [3 x i64] }, ptr %t658, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t663, ptr %t664
  %t665 = load { i64, [3 x i64] }, ptr %t658
  %t667 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t665, ptr %t667
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t654, ptr %t667)
  br label %bb111
bb111:
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t672 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t670)
  store ptr %t672, ptr %l254
  br label %bb112
bb112:
  %t673 = load ptr, ptr %l254, !tbaa !29
  store ptr %t673, ptr %l255, !tbaa !29
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t676 = getelementptr %"compiler/check:Checker", ptr %t674, i32 0, i32 37
  %t677 = load i64, ptr %l30, !tbaa !24
  %t680 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t676, i64 %t677)
  store { i64, ptr } %t680, ptr %l259
  br label %bb113
bb113:
  %t681 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t682 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t681)
  store %"compiler/typed:Block" %t682, ptr %l260
  br label %bb114
bb114:
  %t683 = load %"compiler/typed:Block", ptr %l260
  %t684 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t683, ptr %t684
  %t686 = load ptr, ptr %l255, !tbaa !29
  %t687 = getelementptr %"compiler/typed:Body", ptr %t686, i32 0, i32 11
  store ptr %t684, ptr %t687, !tbaa !29
  %t688 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t688)
  br label %bb115
bb115:
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t692 = getelementptr %"compiler/check:Checker", ptr %t690, i32 0, i32 19
  %t693 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t692, i64 %t693, i64 2)
  br label %bb116
bb116:
  %t696 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t698 = extractvalue { i64, ptr } %t696, 0
  %t700 = icmp sgt i64 %t698, 0
  br i1 %t700, label %bb117, label %bb118
bb117:
  %t702 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %t702)
  br label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb120
bb120:
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/check:Checker", ptr %t704, i32 0, i32 143
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t706)
  br label %bb121
bb121:
  %t708 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t708, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t710 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t712 = extractvalue { i64, ptr } %t710, 0
  store i64 %t712, ptr %l34, !tbaa !24
  br label %bb122
bb122:
  %t714 = load i64, ptr %l33, !tbaa !24
  %t715 = load i64, ptr %l34, !tbaa !24
  %t718 = icmp slt i64 %t714, %t715
  %t720 = xor i1 %t718, true
  br i1 %t720, label %bb123, label %bb124
bb123:
  br label %bb128
bb124:
  br label %bb125
bb125:
  %t722 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t722, ptr %l279, !tbaa !27
  %t723 = load i64, ptr %l33, !tbaa !24
  %t725 = getelementptr { i64, ptr }, ptr %l279, i32 0, i32 1
  %t726 = load ptr, ptr %t725, !tbaa !27
  %t727 = getelementptr i64, ptr %t726, i64 %t723
  %t728 = load i64, ptr %t727, !tbaa !34
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t732 = getelementptr %"compiler/check:Checker", ptr %t730, i32 0, i32 143
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t732, i64 %t728)
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t736 = load i64, ptr %l33, !tbaa !24
  %t738 = add i64 %t736, 1
  store i64 %t738, ptr %l33, !tbaa !24
  br label %bb122
bb128:
  %t740 = load ptr, ptr %l0, !tbaa !29
  store ptr %t740, ptr %l287, !tbaa !29
  %t741 = load ptr, ptr %l7, !tbaa !29
  %t743 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t741)
  store i64 %t743, ptr %l289
  br label %bb129
bb129:
  %t744 = load i64, ptr %l11, !tbaa !24
  %t745 = load i64, ptr %l289, !tbaa !24
  %t747 = icmp eq i64 %t745, %t744
  br i1 %t747, label %bb130, label %bb131
bb130:
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t751 = getelementptr %"compiler/check:Checker", ptr %t749, i32 0, i32 15
  %t753 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t751)
  store i64 %t753, ptr %l295
  br label %bb132
bb131:
  store i1 false, ptr %l292, !tbaa !21
  br label %bb133
bb132:
  %t754 = load i64, ptr %l12, !tbaa !24
  %t755 = load i64, ptr %l295, !tbaa !24
  %t757 = icmp eq i64 %t755, %t754
  store i1 %t757, ptr %l292, !tbaa !21
  br label %bb133
bb133:
  %t759 = load i1, ptr %l292, !tbaa !21
  br i1 %t759, label %bb134, label %bb135
bb134:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t762 = getelementptr %"compiler/check:Checker", ptr %t760, i32 0, i32 138
  %t763 = load i64, ptr %t762, !tbaa !24
  %t764 = load i64, ptr %l13, !tbaa !24
  %t767 = icmp sgt i64 %t763, %t764
  store i1 %t767, ptr %l298, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l298, !tbaa !21
  br label %bb136
bb136:
  %t769 = load i1, ptr %l298, !tbaa !21
  %t770 = load ptr, ptr %l287, !tbaa !29
  %t771 = getelementptr %"compiler/check:Checker", ptr %t770, i32 0, i32 139
  store i1 %t769, ptr %t771, !tbaa !21
  %t772 = load ptr, ptr %l7, !tbaa !29
  %t774 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t772)
  store i64 %t774, ptr %l304
  br label %bb137
bb137:
  %t775 = load i64, ptr %l11, !tbaa !24
  %t776 = load i64, ptr %l304, !tbaa !24
  %t778 = icmp sgt i64 %t776, %t775
  br i1 %t778, label %bb138, label %bb139
bb138:
  store i1 true, ptr %l307, !tbaa !21
  br label %bb141
bb139:
  %t780 = load ptr, ptr %l0, !tbaa !29
  %t782 = getelementptr %"compiler/check:Checker", ptr %t780, i32 0, i32 15
  %t784 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t782)
  store i64 %t784, ptr %l310
  br label %bb140
bb140:
  %t785 = load i64, ptr %l12, !tbaa !24
  %t786 = load i64, ptr %l310, !tbaa !24
  %t788 = icmp sgt i64 %t786, %t785
  store i1 %t788, ptr %l307, !tbaa !21
  br label %bb141
bb141:
  %t790 = load i1, ptr %l307, !tbaa !21
  br i1 %t790, label %bb142, label %bb143
bb142:
  store i1 true, ptr %l313, !tbaa !21
  br label %bb144
bb143:
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t793 = getelementptr %"compiler/check:Checker", ptr %t791, i32 0, i32 138
  %t794 = load i64, ptr %t793, !tbaa !24
  %t795 = load i64, ptr %l13, !tbaa !24
  %t798 = icmp sgt i64 %t794, %t795
  store i1 %t798, ptr %l313, !tbaa !21
  br label %bb144
bb144:
  %t800 = load i1, ptr %l313, !tbaa !21
  br i1 %t800, label %bb145, label %bb146
bb145:
  %t801 = load ptr, ptr %l7, !tbaa !29
  %t802 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t801, i64 %t802)
  br label %bb147
bb146:
  br label %bb150
bb147:
  %t805 = load ptr, ptr %l0, !tbaa !29
  %t807 = getelementptr %"compiler/check:Checker", ptr %t805, i32 0, i32 15
  %t808 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %t807, i64 %t808)
  br label %bb148
bb148:
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t813 = getelementptr %"compiler/check:Checker", ptr %t811, i32 0, i32 14
  %t814 = load i64, ptr %l15, !tbaa !24
  %t817 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t813, i64 %t814)
  store ptr %t817, ptr %l326
  br label %bb149
bb149:
  %t818 = load ptr, ptr %l326, !tbaa !29
  %t820 = getelementptr %"compiler/typed:Body", ptr %t818, i32 0, i32 11
  store ptr null, ptr %t820, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb150:
  %t822 = load i64, ptr %l15, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t822, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eanyHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l33 = alloca i1
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
  br label %bb18
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
  %t40 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l26
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t41 = load i1, ptr %l26, !tbaa !21
  %t42 = xor i1 %t41, true
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = add i64 %a2, 1
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %t45, i32 %t46, i64 %t49)
  store i1 %t53, ptr %l33
  br label %bb12
bb11:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb13
bb12:
  %t54 = load i1, ptr %l33, !tbaa !21
  store i1 %t54, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l28, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/check:reflList"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l11 = alloca %"compiler/check:reflList"
  %l12 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l20 = alloca i1
  %l26 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l33 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca ptr
  %l43 = alloca i32
  %l46 = alloca ptr
  %l48 = alloca i32
  %l51 = alloca i32
  %l52 = alloca i32
  %l58 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Compr", ptr %t2, i32 0, i32 4
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store %"compiler/check:reflList" %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load %"compiler/check:reflList", ptr %l11
  store %"compiler/check:reflList" %t9, ptr %l3
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Compr", ptr %t11, i32 0, i32 4
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t14)
  store %"compiler/source:Span" %t16, ptr %l15
  br label %bb2
bb2:
  %t17 = load %"compiler/check:reflList", ptr %l3
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l15
  %t21 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %s0, ptr %t18, %"compiler/source:Span" %t19, %"compiler/check:reflList" %t17)
  store { i64, ptr } %t21, ptr %l17
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  %t23 = getelementptr %"compiler/check:reflList", ptr %l3, i32 0, i32 0
  %t24 = load i1, ptr %t23, !tbaa !21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Compr", ptr %t28, i32 0, i32 7
  %t31 = load i64, ptr %t30, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t37 = icmp sge i64 %t31, %t34
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l26, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/ast:Compr", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t44)
  store %"compiler/source:Span" %t46, ptr %l29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l29
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t47, %"compiler/source:Span" %t48)
  store ptr %t49, ptr %l30
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load ptr, ptr %l30, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l31, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/ast:Compr", ptr %t52, i32 0, i32 3
  %t55 = load i32, ptr %t54, !tbaa !23
  store i32 %t55, ptr %l33, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/check:reflList", ptr %l3
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/ast:Compr", ptr %t58, i32 0, i32 7
  %t61 = load i64, ptr %t60, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i64, ptr %t64, i64 %t61
  %t66 = load i64, ptr %t65, !tbaa !34
  %t70 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %t56, %"compiler/check:reflList" %t57, i64 %t66)
  store i32 %t70, ptr %l39
  br label %bb12
bb12:
  %t71 = load ptr, ptr %l31, !tbaa !29
  %t72 = load i32, ptr %l33, !tbaa !23
  %t73 = load i32, ptr %l39, !tbaa !23
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t71, i32 %t72, i32 %t73)
  store i32 %t74, ptr %l40
  br label %bb13
bb13:
  %t75 = load i32, ptr %l40, !tbaa !23
  store i32 %t75, ptr %l5, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l41, !tbaa !29
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Compr", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %t79, !tbaa !23
  store i32 %t80, ptr %l43, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  store ptr %t86, ptr %l46, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t87)
  store i32 %t89, ptr %l48
  br label %bb14
bb14:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/ast:Compr", ptr %t90, i32 0, i32 7
  %t93 = load i64, ptr %t92, !tbaa !24
  %t94 = load ptr, ptr %l46, !tbaa !29
  %t95 = load i32, ptr %l48, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t94, i32 %t95, i64 %t93)
  store i32 %t97, ptr %l51
  br label %bb15
bb15:
  %t98 = load ptr, ptr %l41, !tbaa !29
  %t99 = load i32, ptr %l43, !tbaa !23
  %t100 = load i32, ptr %l51, !tbaa !23
  %t101 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t98, i32 %t99, i32 %t100)
  store i32 %t101, ptr %l52
  br label %bb16
bb16:
  %t102 = load i32, ptr %l52, !tbaa !23
  store i32 %t102, ptr %l6, !tbaa !23
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/ast:Compr", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t103, ptr %t107, i32 %a2)
  store ptr %t113, ptr %l58
  br label %bb17
bb17:
  %t114 = load ptr, ptr %l58, !tbaa !29
  store ptr %t114, ptr %l7, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/ast:Compr", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %t118, !tbaa !23
  %t120 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t115, i32 %t119, i32 %t120)
  br label %bb18
bb18:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr %"compiler/ast:Compr", ptr %t125, i32 0, i32 3
  %t128 = load i32, ptr %t127, !tbaa !23
  %t129 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t124, i32 %t128, i32 %t129)
  br label %bb19
bb19:
  %t133 = load ptr, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t133, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l34 = alloca i32
  %l37 = alloca i1
  %l38 = alloca i1
  %l43 = alloca i64
  %l46 = alloca ptr
  %l56 = alloca i64
  %l59 = alloca i64
  %l77 = alloca i64
  %l79 = alloca { i64, ptr }
  %l84 = alloca ptr
  %l85 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i32
  %l94 = alloca i32
  %l99 = alloca ptr
  %l103 = alloca i64
  %l106 = alloca i1
  %l110 = alloca i1
  %l113 = alloca ptr
  %l116 = alloca ptr
  %l119 = alloca i32
  %l120 = alloca i32
  %l123 = alloca ptr
  %l125 = alloca i32
  %l127 = alloca i32
  %l128 = alloca i32
  %l133 = alloca i32
  %l136 = alloca i1
  %l139 = alloca ptr
  %l144 = alloca i32
  %l145 = alloca i32
  %l148 = alloca i1
  %l153 = alloca i1
  %l163 = alloca i1
  %l172 = alloca i64
  %l178 = alloca i64
  %l181 = alloca i64
  %l199 = alloca ptr
  %l201 = alloca ptr
  %l202 = alloca i32
  %l203 = alloca { i64, ptr }
  %l206 = alloca %"compiler/source:Span"
  %l207 = alloca ptr
  %l208 = alloca ptr
  %l210 = alloca ptr
  %l211 = alloca { i64, ptr }
  %l214 = alloca %"compiler/source:Span"
  %l216 = alloca i1
  %l218 = alloca ptr
  %l221 = alloca ptr
  %l224 = alloca %"compiler/source:Span"
  %l227 = alloca ptr
  %l228 = alloca i32
  %l231 = alloca ptr
  %l233 = alloca i32
  %l236 = alloca i32
  %l237 = alloca i32
  %l238 = alloca i32
  %l242 = alloca { i64, ptr }
  %l246 = alloca i32
  %l248 = alloca %"compiler/typed:Make"
  %l254 = alloca i64
  %l262 = alloca { i64, ptr }
  %l268 = alloca ptr
  %l271 = alloca i1
  %l273 = alloca ptr
  %l275 = alloca ptr
  %l277 = alloca %"compiler/source:Span"
  %l279 = alloca i1
  %l281 = alloca ptr
  %l284 = alloca ptr
  %l292 = alloca { i64, ptr }
  %l295 = alloca ptr
  %l296 = alloca i32
  %l299 = alloca ptr
  %l301 = alloca i32
  %l303 = alloca i32
  %l304 = alloca i32
  %l305 = alloca %"compiler/source:Span"
  %l306 = alloca i32
  %l307 = alloca i32
  %l308 = alloca { i64, ptr }
  %l312 = alloca i32
  %l314 = alloca %"compiler/typed:Make"
  %rv = alloca ptr
  %t38 = alloca i64
  %t469 = alloca { i64, [5 x i64] }, align 8
  %t606 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValueType(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l34
  br label %bb1
bb1:
  %t6 = load i32, ptr %l34, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l37
  br label %bb2
bb2:
  %t12 = load i1, ptr %l37, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = icmp sgt i64 %t15, 0
  store i1 %t17, ptr %l38, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l38, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l43, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load %"compiler/source:Span", ptr %l1
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v2, ptr %t23, %"compiler/source:Span" %t24)
  store ptr %t27, ptr %l46
  br label %bb8
bb7:
  br label %bb94
bb8:
  %t28 = load i64, ptr %l43, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l43, !tbaa !24
  %t32 = icmp sle i64 %t31, 1152921504606846975
  br i1 %t32, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_88d3ea04e82c2d9e_ee1d738344e93712)
  unreachable
bb11:
  %t34 = load i64, ptr %l43, !tbaa !24
  %t35 = mul i64 %t34, 8
  %t36 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t35)
  %t37 = load ptr, ptr %l46, !tbaa !29
  store i64 0, ptr %t38
  br label %fill.39
fill.39:
  %t42 = load i64, ptr %t38
  %t43 = icmp slt i64 %t42, %t34
  br i1 %t43, label %fillb.40, label %filld.41
fillb.40:
  %t44 = getelementptr ptr, ptr %t36, i64 %t42
  store ptr %t37, ptr %t44
  %t45 = add i64 %t42, 1
  store i64 %t45, ptr %t38
  br label %fill.39
filld.41:
  %t46 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t36, 1
  %t48 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t48, ptr %lp4
  %t50 = load ptr, ptr %lp4
  store { i64, ptr } %t47, ptr %t50, !tbaa !27
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t51, ptr %l5, !tbaa !23
  store i1 true, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_88d3ea04e82c2d9e_ee1d738344e93712)
  unreachable
bb13:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb18
bb15:
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l9, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l59, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb17
bb17:
  %t83 = load i64, ptr %l59, !tbaa !24
  store i64 %t83, ptr %l56, !tbaa !24
  br label %bb18
bb18:
  %t84 = load i64, ptr %l56, !tbaa !24
  store i64 %t84, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  %t85 = load i64, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l10, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb20, label %bb21
bb20:
  br label %bb65
bb21:
  br label %bb22
bb22:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l12, !tbaa !24
  %t103 = load i64, ptr %l12, !tbaa !24
  store i64 %t103, ptr %l77, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t105, ptr %l79, !tbaa !27
  %t106 = load i64, ptr %l12, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr ptr, ptr %t109, i64 %t106
  %t111 = load ptr, ptr %t110, !tbaa !39
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t117 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t104, ptr %t111, i32 %t113)
  store ptr %t117, ptr %l84
  br label %bb23
bb23:
  %t118 = load ptr, ptr %l84, !tbaa !29
  %t119 = load ptr, ptr %lp4
  %t120 = load i64, ptr %l77, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t120
  store ptr %t118, ptr %t123, !tbaa !39
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l85, !tbaa !29
  %t125 = load i64, ptr %l12, !tbaa !24
  %t126 = load ptr, ptr %lp4
  %t128 = getelementptr { i64, ptr }, ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr ptr, ptr %t129, i64 %t125
  %t131 = load ptr, ptr %t130, !tbaa !39
  %t134 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t131)
  store i32 %t134, ptr %l89
  br label %bb24
bb24:
  %t135 = load ptr, ptr %l85, !tbaa !29
  %t136 = load i32, ptr %l89, !tbaa !23
  %t137 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t137, ptr %l90
  br label %bb25
bb25:
  %t138 = load i32, ptr %l90, !tbaa !23
  store i32 %t138, ptr %l13, !tbaa !23
  %t139 = load i64, ptr %l12, !tbaa !24
  %t140 = load ptr, ptr %lp4
  %t142 = getelementptr { i64, ptr }, ptr %t140, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr ptr, ptr %t143, i64 %t139
  %t145 = load ptr, ptr %t144, !tbaa !39
  %t148 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t145)
  store i32 %t148, ptr %l94
  br label %bb26
bb26:
  %t149 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t150 = load i32, ptr %l94, !tbaa !23
  %t152 = icmp eq i32 %t150, %t149
  br i1 %t152, label %bb27, label %bb28
bb27:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l1
  %t158 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t154, %"compiler/source:Span" %t155)
  store ptr %t158, ptr %l99
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t159 = load ptr, ptr %l99, !tbaa !29
  store ptr %t159, ptr %rv
  br label %ret
bb30:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l12, !tbaa !24
  %t162 = load ptr, ptr %lp4
  %t164 = getelementptr { i64, ptr }, ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr ptr, ptr %t165, i64 %t161
  %t167 = load ptr, ptr %t166, !tbaa !39
  %t170 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v2, ptr %t160, ptr %t167)
  store i64 %t170, ptr %l103
  br label %bb31
bb31:
  %t171 = load i64, ptr %l103, !tbaa !24
  store i64 %t171, ptr %l14, !tbaa !24
  %t172 = load i64, ptr %l14, !tbaa !24
  %t174 = icmp sge i64 %t172, 0
  br i1 %t174, label %bb32, label %bb33
bb32:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l13, !tbaa !23
  %t178 = load i32, ptr %l2, !tbaa !23
  %t182 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t176, i32 %t177, i32 %t178)
  store i1 %t182, ptr %l110
  br label %bb34
bb33:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb35
bb34:
  %t183 = load i1, ptr %l110, !tbaa !21
  store i1 %t183, ptr %l106, !tbaa !21
  br label %bb35
bb35:
  %t184 = load i1, ptr %l106, !tbaa !21
  br i1 %t184, label %bb36, label %bb37
bb36:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 2
  store ptr %t190, ptr %l113, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/check:Checker", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  store ptr %t196, ptr %l116, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l2, !tbaa !23
  %t201 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t197, i32 %t198)
  store i32 %t201, ptr %l119
  br label %bb38
bb37:
  br label %bb43
bb38:
  %t202 = load ptr, ptr %l116, !tbaa !29
  %t203 = load i32, ptr %l119, !tbaa !23
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t204, ptr %l120
  br label %bb39
bb39:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/check:Checker", ptr %t205, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 2
  store ptr %t210, ptr %l123, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t211)
  store i32 %t213, ptr %l125
  br label %bb40
bb40:
  %t214 = load i64, ptr %l14, !tbaa !24
  %t215 = load ptr, ptr %l123, !tbaa !29
  %t216 = load i32, ptr %l125, !tbaa !23
  %t218 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t215, i32 %t216, i64 %t214)
  store i32 %t218, ptr %l127
  br label %bb41
bb41:
  %t219 = load ptr, ptr %l113, !tbaa !29
  %t220 = load i32, ptr %l120, !tbaa !23
  %t221 = load i32, ptr %l127, !tbaa !23
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t219, i32 %t220, i32 %t221)
  store i32 %t222, ptr %l128
  br label %bb42
bb42:
  %t223 = load i32, ptr %l128, !tbaa !23
  store i32 %t223, ptr %l13, !tbaa !23
  br label %bb43
bb43:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  %t230 = load i32, ptr %l13, !tbaa !23
  %t233 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t229, i32 %t230)
  store i32 %t233, ptr %l133
  br label %bb44
bb44:
  %t234 = load i32, ptr %l133, !range !{i32 0, i32 33}
  %t236 = trunc i64 19 to i32
  %t237 = icmp eq i32 %t234, %t236
  br i1 %t237, label %bb45, label %bb46
bb45:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/check:Checker", ptr %t239, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  store ptr %t244, ptr %l139, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 2
  %t251 = load i32, ptr %l13, !tbaa !23
  %t254 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t250, i32 %t251)
  store i32 %t254, ptr %l144
  br label %bb47
bb46:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb49
bb47:
  %t255 = load ptr, ptr %l139, !tbaa !29
  %t256 = load i32, ptr %l144, !tbaa !23
  %t257 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t255, i32 %t256)
  store i32 %t257, ptr %l145
  br label %bb48
bb48:
  %t258 = load i32, ptr %l145, !range !{i32 0, i32 33}
  %t260 = trunc i64 26 to i32
  %t261 = icmp eq i32 %t258, %t260
  store i1 %t261, ptr %l136, !tbaa !21
  br label %bb49
bb49:
  %t263 = load i1, ptr %l136, !tbaa !21
  br i1 %t263, label %bb50, label %bb51
bb50:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/check:Checker", ptr %t264, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t268 = load i32, ptr %l13, !tbaa !23
  %t269 = load i32, ptr %l2, !tbaa !23
  %t273 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t267, i32 %t268, i32 %t269)
  store i1 %t273, ptr %l153
  br label %bb52
bb51:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb53
bb52:
  %t274 = load i1, ptr %l153, !tbaa !21
  store i1 %t274, ptr %l148, !tbaa !21
  br label %bb53
bb53:
  %t275 = load i1, ptr %l148, !tbaa !21
  br i1 %t275, label %bb54, label %bb55
bb54:
  %t276 = load i32, ptr %l5, !tbaa !23
  %t277 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t280 = icmp eq i32 %t276, %t277
  br i1 %t280, label %bb56, label %bb57
bb55:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb63
bb56:
  %t282 = load i32, ptr %l13, !tbaa !23
  store i32 %t282, ptr %l5, !tbaa !23
  br label %bb62
bb57:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 2
  %t290 = load i32, ptr %l5, !tbaa !23
  %t291 = load i32, ptr %l13, !tbaa !23
  %t295 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t289, i32 %t290, i32 %t291)
  store i1 %t295, ptr %l163
  br label %bb58
bb58:
  %t296 = load i1, ptr %l163, !tbaa !21
  %t297 = xor i1 %t296, true
  br i1 %t297, label %bb59, label %bb60
bb59:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t299 = load i64, ptr %l11, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l11, !tbaa !24
  br label %bb19
bb65:
  %t303 = load i1, ptr %l6, !tbaa !21
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb66, label %bb67
bb66:
  %t307 = load i32, ptr %l2, !tbaa !23
  store i32 %t307, ptr %l5, !tbaa !23
  br label %bb68
bb67:
  br label %bb68
bb68:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/check:Checker", ptr %t309, i32 0, i32 36
  %t313 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t311)
  store i64 %t313, ptr %l172
  br label %bb69
bb69:
  %t314 = load i64, ptr %l172, !tbaa !24
  store i64 %t314, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t315 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t315, 0
  store i64 %t317, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t319 = load i64, ptr %l17, !tbaa !24
  %t320 = load i64, ptr %l16, !tbaa !24
  %t323 = icmp sgt i64 %t319, %t320
  br i1 %t323, label %bb70, label %bb71
bb70:
  %t325 = load i64, ptr %l18, !tbaa !24
  %t327 = icmp sgt i64 %t325, 0
  br i1 %t327, label %bb72, label %bb73
bb71:
  store i64 0, ptr %l178, !tbaa !24
  br label %bb75
bb72:
  %t329 = load i64, ptr %l17, !tbaa !24
  %t330 = load i64, ptr %l16, !tbaa !24
  %t333 = sub i64 %t329, %t330
  %t334 = load i64, ptr %l18, !tbaa !24
  %t337 = add i64 %t333, %t334
  %t339 = sub i64 %t337, 1
  %t340 = load i64, ptr %l18, !tbaa !24
  %t343 = sdiv i64 %t339, %t340
  store i64 %t343, ptr %l181, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l181, !tbaa !24
  br label %bb74
bb74:
  %t345 = load i64, ptr %l181, !tbaa !24
  store i64 %t345, ptr %l178, !tbaa !24
  br label %bb75
bb75:
  %t346 = load i64, ptr %l178, !tbaa !24
  store i64 %t346, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb76
bb76:
  %t347 = load i64, ptr %l20, !tbaa !24
  %t348 = load i64, ptr %l19, !tbaa !24
  %t351 = icmp slt i64 %t347, %t348
  %t353 = xor i1 %t351, true
  br i1 %t353, label %bb77, label %bb78
bb77:
  br label %bb87
bb78:
  br label %bb79
bb79:
  %t355 = load i64, ptr %l16, !tbaa !24
  %t356 = load i64, ptr %l20, !tbaa !24
  %t357 = load i64, ptr %l18, !tbaa !24
  %t360 = mul i64 %t356, %t357
  %t363 = add i64 %t355, %t360
  store i64 %t363, ptr %l21, !tbaa !24
  %t365 = load ptr, ptr %l0, !tbaa !29
  store ptr %t365, ptr %l199, !tbaa !29
  %t366 = load i64, ptr %l21, !tbaa !24
  %t367 = load ptr, ptr %lp4
  %t369 = getelementptr { i64, ptr }, ptr %t367, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr ptr, ptr %t370, i64 %t366
  %t372 = load ptr, ptr %t371, !tbaa !39
  store ptr %t372, ptr %l201, !tbaa !29
  %t373 = load i32, ptr %l5, !tbaa !23
  store i32 %t373, ptr %l202, !tbaa !23
  %t374 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t374, ptr %l203, !tbaa !27
  %t375 = load i64, ptr %l21, !tbaa !24
  %t377 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr ptr, ptr %t378, i64 %t375
  %t380 = load ptr, ptr %t379, !tbaa !39
  %t382 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t380)
  store %"compiler/source:Span" %t382, ptr %l206
  br label %bb80
bb80:
  %t383 = load ptr, ptr %l199, !tbaa !29
  %t384 = load ptr, ptr %l201, !tbaa !29
  %t385 = load i32, ptr %l202, !tbaa !23
  %t386 = load %"compiler/source:Span", ptr %l206
  %t387 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v0, ptr %t383, ptr %t384, i32 %t385, %"compiler/source:Span" %t386)
  store ptr %t387, ptr %l207
  br label %bb81
bb81:
  %t388 = load ptr, ptr %l207, !tbaa !29
  store ptr %t388, ptr %l22, !tbaa !29
  %t389 = load ptr, ptr %l0, !tbaa !29
  store ptr %t389, ptr %l208, !tbaa !29
  %t390 = load ptr, ptr %l22, !tbaa !29
  store ptr %t390, ptr %l210, !tbaa !29
  %t392 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t392, ptr %l211, !tbaa !27
  %t393 = load i64, ptr %l21, !tbaa !24
  %t395 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = getelementptr ptr, ptr %t396, i64 %t393
  %t398 = load ptr, ptr %t397, !tbaa !39
  %t400 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t398)
  store %"compiler/source:Span" %t400, ptr %l214
  br label %bb82
bb82:
  %t401 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t402 = load ptr, ptr %l208, !tbaa !29
  %t403 = load ptr, ptr %l210, !tbaa !29
  %t404 = load %"compiler/source:Span", ptr %l214
  %t406 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t402, ptr %t403, %"compiler/source:Span" %t404, i64 %t401)
  store i1 %t406, ptr %l216
  br label %bb83
bb83:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/check:Checker", ptr %t407, i32 0, i32 36
  store ptr %t409, ptr %l218, !tbaa !29
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l22, !tbaa !29
  %t414 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t410, ptr %t411)
  store ptr %t414, ptr %l221
  br label %bb84
bb84:
  %t415 = load ptr, ptr %l218, !tbaa !29
  %t416 = load ptr, ptr %l221, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t415, ptr %t416)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t417 = load i64, ptr %l20, !tbaa !24
  %t419 = add i64 %t417, 1
  store i64 %t419, ptr %l20, !tbaa !24
  br label %bb76
bb87:
  %t421 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t421, ptr %l224
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr %"compiler/check:Checker", ptr %t422, i32 0, i32 1
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  store ptr %t427, ptr %l227, !tbaa !29
  %t428 = load i32, ptr %l5, !tbaa !23
  store i32 %t428, ptr %l228, !tbaa !23
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/check:Checker", ptr %t429, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t434 = getelementptr %"compiler/generic:Program", ptr %t432, i32 0, i32 2
  store ptr %t434, ptr %l231, !tbaa !29
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t435)
  store i32 %t437, ptr %l233
  br label %bb88
bb88:
  %t438 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t441 = load ptr, ptr %l231, !tbaa !29
  %t442 = load i32, ptr %l233, !tbaa !23
  %t444 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t441, i32 %t442, i64 %t440)
  store i32 %t444, ptr %l236
  br label %bb89
bb89:
  %t445 = load ptr, ptr %l227, !tbaa !29
  %t446 = load i32, ptr %l228, !tbaa !23
  %t447 = load i32, ptr %l236, !tbaa !23
  %t448 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t445, i32 %t446, i32 %t447)
  store i32 %t448, ptr %l237
  br label %bb90
bb90:
  store i32 2, ptr %l238
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/check:Checker", ptr %t449, i32 0, i32 36
  %t452 = load i64, ptr %l15, !tbaa !24
  %t455 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t451, i64 %t452)
  store { i64, ptr } %t455, ptr %l242
  br label %bb91
bb91:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load %"compiler/source:Span", ptr %l1
  %t461 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t456, i32 1, %"compiler/source:Span" %t457)
  store i32 %t461, ptr %l246
  br label %bb92
bb92:
  %t462 = load i32, ptr %l238, !range !{i32 0, i32 5}
  %t463 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t464 = load i32, ptr %l246, !tbaa !23
  %t466 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t462, i64 0, { i64, ptr } %t463, ptr null, i32 %t464, i32 0, i1 false)
  store %"compiler/typed:Make" %t466, ptr %l248
  br label %bb93
bb93:
  %t467 = load %"compiler/typed:Make", ptr %l248
  %t468 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t467, ptr %t468
  store { i64, [5 x i64] } zeroinitializer, ptr %t469
  %t470 = getelementptr { i64, [5 x i64] }, ptr %t469, i32 0, i32 0
  store i64 7, ptr %t470
  %t471 = load %"compiler/source:Span", ptr %l224
  %t472 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t471, 0
  %t473 = load i32, ptr %l237, !tbaa !23
  %t474 = insertvalue { %"compiler/source:Span", i32, ptr } %t472, i32 %t473, 1
  %t476 = insertvalue { %"compiler/source:Span", i32, ptr } %t474, ptr %t468, 2
  %t477 = getelementptr { i64, [5 x i64] }, ptr %t469, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t476, ptr %t477
  %t478 = load { i64, [5 x i64] }, ptr %t469
  %t480 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t478, ptr %t480
  store ptr %t480, ptr %rv
  br label %ret
bb94:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t484 = getelementptr %"compiler/check:Checker", ptr %t482, i32 0, i32 36
  %t486 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t484)
  store i64 %t486, ptr %l254
  br label %bb95
bb95:
  %t487 = load i64, ptr %l254, !tbaa !24
  store i64 %t487, ptr %l23, !tbaa !24
  %t488 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t488, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t490 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t492 = extractvalue { i64, ptr } %t490, 0
  store i64 %t492, ptr %l26, !tbaa !24
  br label %bb96
bb96:
  %t494 = load i64, ptr %l25, !tbaa !24
  %t495 = load i64, ptr %l26, !tbaa !24
  %t498 = icmp slt i64 %t494, %t495
  %t500 = xor i1 %t498, true
  br i1 %t500, label %bb97, label %bb98
bb97:
  br label %bb110
bb98:
  br label %bb99
bb99:
  %t502 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t502, ptr %l262, !tbaa !27
  %t503 = load i64, ptr %l25, !tbaa !24
  %t505 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t506 = load ptr, ptr %t505, !tbaa !27
  %t507 = getelementptr ptr, ptr %t506, i64 %t503
  %t508 = load ptr, ptr %t507, !tbaa !39
  store ptr %t508, ptr %l27, !tbaa !29
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load ptr, ptr %l27, !tbaa !29
  %t512 = load i32, ptr %l2, !tbaa !23
  %t516 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t510, ptr %t511, i32 %t512)
  store ptr %t516, ptr %l268
  br label %bb100
bb100:
  %t517 = load ptr, ptr %l268, !tbaa !29
  store ptr %t517, ptr %l28, !tbaa !29
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load i32, ptr %l2, !tbaa !23
  %t522 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t518, i32 %t519)
  store i1 %t522, ptr %l271
  br label %bb101
bb101:
  %t523 = load i1, ptr %l271, !tbaa !21
  %t524 = xor i1 %t523, true
  br i1 %t524, label %bb102, label %bb103
bb102:
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l273, !tbaa !29
  %t527 = load ptr, ptr %l28, !tbaa !29
  store ptr %t527, ptr %l275, !tbaa !29
  %t529 = load ptr, ptr %l27, !tbaa !29
  %t531 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t529)
  store %"compiler/source:Span" %t531, ptr %l277
  br label %bb104
bb103:
  br label %bb106
bb104:
  %t532 = load i64, ptr @G_2ecompiler_2fcheck_2eRoStored, !tbaa !24
  %t533 = load ptr, ptr %l273, !tbaa !29
  %t534 = load ptr, ptr %l275, !tbaa !29
  %t535 = load %"compiler/source:Span", ptr %l277
  %t537 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t533, ptr %t534, %"compiler/source:Span" %t535, i64 %t532)
  store i1 %t537, ptr %l279
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t540 = getelementptr %"compiler/check:Checker", ptr %t538, i32 0, i32 36
  store ptr %t540, ptr %l281, !tbaa !29
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load ptr, ptr %l28, !tbaa !29
  %t545 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t541, ptr %t542)
  store ptr %t545, ptr %l284
  br label %bb107
bb107:
  %t546 = load ptr, ptr %l281, !tbaa !29
  %t547 = load ptr, ptr %l284, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t546, ptr %t547)
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t548 = load i64, ptr %l25, !tbaa !24
  %t550 = add i64 %t548, 1
  store i64 %t550, ptr %l25, !tbaa !24
  br label %bb96
bb110:
  %t552 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t552, 0
  store i64 %t554, ptr %l29, !tbaa !24
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr %"compiler/check:Checker", ptr %t556, i32 0, i32 36
  %t559 = load i64, ptr %l23, !tbaa !24
  %t562 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t558, i64 %t559)
  store { i64, ptr } %t562, ptr %l292
  br label %bb111
bb111:
  %t563 = load { i64, ptr }, ptr %l292, !tbaa !27
  store { i64, ptr } %t563, ptr %l30, !tbaa !27
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t566 = getelementptr %"compiler/check:Checker", ptr %t564, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !29
  %t569 = getelementptr %"compiler/generic:Program", ptr %t567, i32 0, i32 2
  store ptr %t569, ptr %l295, !tbaa !29
  %t570 = load i32, ptr %l2, !tbaa !23
  store i32 %t570, ptr %l296, !tbaa !23
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t573 = getelementptr %"compiler/check:Checker", ptr %t571, i32 0, i32 1
  %t574 = load ptr, ptr %t573, !tbaa !29
  %t576 = getelementptr %"compiler/generic:Program", ptr %t574, i32 0, i32 2
  store ptr %t576, ptr %l299, !tbaa !29
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t579 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t577)
  store i32 %t579, ptr %l301
  br label %bb112
bb112:
  %t580 = load i64, ptr %l29, !tbaa !24
  %t581 = load ptr, ptr %l299, !tbaa !29
  %t582 = load i32, ptr %l301, !tbaa !23
  %t584 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t581, i32 %t582, i64 %t580)
  store i32 %t584, ptr %l303
  br label %bb113
bb113:
  %t585 = load ptr, ptr %l295, !tbaa !29
  %t586 = load i32, ptr %l296, !tbaa !23
  %t587 = load i32, ptr %l303, !tbaa !23
  %t588 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t585, i32 %t586, i32 %t587)
  store i32 %t588, ptr %l304
  br label %bb114
bb114:
  %t589 = load i32, ptr %l304, !tbaa !23
  %t590 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t590, ptr %l305
  store i32 %t589, ptr %l306, !tbaa !23
  store i32 2, ptr %l307
  %t592 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t592, ptr %l308, !tbaa !27
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load %"compiler/source:Span", ptr %l1
  %t598 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t593, i32 1, %"compiler/source:Span" %t594)
  store i32 %t598, ptr %l312
  br label %bb115
bb115:
  %t599 = load i32, ptr %l307, !range !{i32 0, i32 5}
  %t600 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t601 = load i32, ptr %l312, !tbaa !23
  %t603 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v2, ptr %v2, ptr %v2, i32 %t599, i64 0, { i64, ptr } %t600, ptr null, i32 %t601, i32 0, i1 false)
  store %"compiler/typed:Make" %t603, ptr %l314
  br label %bb116
bb116:
  %t604 = load %"compiler/typed:Make", ptr %l314
  %t605 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t604, ptr %t605
  store { i64, [5 x i64] } zeroinitializer, ptr %t606
  %t607 = getelementptr { i64, [5 x i64] }, ptr %t606, i32 0, i32 0
  store i64 7, ptr %t607
  %t608 = load %"compiler/source:Span", ptr %l305
  %t609 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t608, 0
  %t610 = load i32, ptr %l306, !tbaa !23
  %t611 = insertvalue { %"compiler/source:Span", i32, ptr } %t609, i32 %t610, 1
  %t613 = insertvalue { %"compiler/source:Span", i32, ptr } %t611, ptr %t605, 2
  %t614 = getelementptr { i64, [5 x i64] }, ptr %t606, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t613, ptr %t614
  %t615 = load { i64, [5 x i64] }, ptr %t606
  %t617 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t615, ptr %t617
  store ptr %t617, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
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
  %t16 = icmp eq i64 %t15, 6
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i64, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb4
bb3:
  br label %bb6
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s1, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l16
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t29)
  call void @olang_textcopy(ptr %t30, ptr %t28, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t34, ptr %l10, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_15d8d795344f0f34_d9e3bc129d8abb98)
  unreachable
bb11:
  %t36 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l20, !tbaa !24
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l21, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l20, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t49, ptr %l10, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca i64
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca i64
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca i64
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l68 = alloca i64
  %l69 = alloca { i64, ptr }
  %l72 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l83 = alloca i64
  %l86 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca i64
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca %"compiler/source:Span"
  %l101 = alloca %"compiler/diagmsg:Msg"
  %l102 = alloca i64
  %l107 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l109 = alloca i1
  %l112 = alloca ptr
  %l113 = alloca i1
  %l117 = alloca i1
  %l118 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l121 = alloca %"compiler/diagmsg:Msg"
  %l122 = alloca i64
  %l128 = alloca i1
  %l130 = alloca ptr
  %l132 = alloca %"compiler/source:Span"
  %l134 = alloca %"compiler/diagmsg:Msg"
  %l135 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca ptr
  %l151 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l161 = alloca ptr
  %l166 = alloca i32
  %l171 = alloca { i64, ptr }
  %l173 = alloca i1
  %l175 = alloca ptr
  %l177 = alloca %"compiler/source:Span"
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i64
  %l186 = alloca i64
  %l190 = alloca ptr
  %l196 = alloca i1
  %l198 = alloca ptr
  %l201 = alloca %"compiler/source:Span"
  %l204 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l210 = alloca %"compiler/diagmsg:Msg"
  %l211 = alloca i64
  %l218 = alloca i1
  %l219 = alloca ptr
  %l222 = alloca %"compiler/source:Span"
  %l223 = alloca %"compiler/diagmsg:Msg"
  %l224 = alloca i64
  %l230 = alloca ptr
  %l237 = alloca %"compiler/check:tailAsk"
  %l238 = alloca ptr
  %l239 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca %"compiler/source:Span"
  %l250 = alloca %"compiler/source:Span"
  %l251 = alloca i32
  %l260 = alloca %"compiler/typed:Call"
  %s0 = alloca %olang.scope
  %t36 = alloca { i64, [3 x i64] }, align 8
  %t265 = alloca { i64, [3 x i64] }, align 8
  %t311 = alloca { i64, [3 x i64] }, align 8
  %t343 = alloca { i64, [3 x i64] }, align 8
  %t441 = alloca { i64, [3 x i64] }, align 8
  %t517 = alloca { i64, [3 x i64] }, align 8
  %t547 = alloca { i64, [3 x i64] }, align 8
  %t632 = alloca { i64, [5 x i64] }, align 8
  %t644 = alloca { i64, [3 x i64] }, align 8
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
  %t5 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t7 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = add i32 %t8, 6
  %t13 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t6, i32 %t10)
  store %"compiler/source:Span" %t13, ptr %l22
  br label %bb2
bb2:
  %t14 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t14, ptr %l4
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeWhere(ptr %v0, ptr %s0, ptr %t15)
  store { i64, ptr } %t17, ptr %l24
  br label %bb3
bb3:
  %t18 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t21, ptr %l26
  br label %bb4
bb4:
  %t22 = load i1, ptr %l26, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l28, !tbaa !29
  %t26 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t26, ptr %l29
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeOutside(ptr %s0, ptr %v0, { i64, ptr } %t27)
  store %"compiler/diagmsg:Msg" %t29, ptr %l31
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t30 = load ptr, ptr %l28, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l29
  %t32 = load %"compiler/diagmsg:Msg", ptr %l31
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l32
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 0
  store i64 6, ptr %t37
  %t39 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t35, 0
  %t40 = insertvalue { %"compiler/source:Span", ptr } %t39, ptr null, 1
  %t41 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t40, ptr %t41
  %t42 = load { i64, [3 x i64] }, ptr %t36
  %t44 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t42, ptr %t44
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t34, ptr %t44)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l37, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t47, ptr %l38, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l39, !tbaa !24
  %t50 = load i64, ptr %l39, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l40, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l39, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t61, ptr %l6, !tbaa !27
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t64 = getelementptr %"compiler/check:frame", ptr %t62, i32 0, i32 34
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = icmp sge i64 %t65, 0
  br i1 %t67, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t69, ptr %l45, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  %t72 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  store i64 %t73, ptr %l47, !tbaa !24
  %t75 = load i64, ptr %l47, !tbaa !24
  %t76 = icmp eq i64 %t71, %t75
  br i1 %t76, label %bb13, label %bb14
bb12:
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t80 = getelementptr %"compiler/check:frame", ptr %t78, i32 0, i32 35
  %t81 = load i64, ptr %t80, !tbaa !24
  %t83 = icmp sge i64 %t81, 0
  br i1 %t83, label %bb16, label %bb17
bb13:
  %t85 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l47, !tbaa !24
  %t90 = mul i64 %t89, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t86, ptr %t88, i64 %t90, i1 false)
  br label %bb15
bb14:
  %t91 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  store i64 %t92, ptr %l49, !tbaa !24
  %t93 = load i64, ptr %l49, !tbaa !24
  %t94 = mul i64 %t93, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l50, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l49, !tbaa !24
  %t103 = mul i64 %t102, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t99, ptr %t101, i64 %t103, i1 false)
  %t104 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t104, ptr %l6, !tbaa !27
  br label %bb15
bb15:
  br label %bb43
bb16:
  store { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t105, ptr %l55, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  %t108 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l57, !tbaa !24
  %t111 = load i64, ptr %l57, !tbaa !24
  %t112 = icmp eq i64 %t107, %t111
  br i1 %t112, label %bb18, label %bb19
bb17:
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t116 = getelementptr %"compiler/check:frame", ptr %t114, i32 0, i32 32
  %t117 = load i1, ptr %t116, !tbaa !21
  br i1 %t117, label %bb21, label %bb22
bb18:
  %t119 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = load i64, ptr %l57, !tbaa !24
  %t124 = mul i64 %t123, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t120, ptr %t122, i64 %t124, i1 false)
  br label %bb20
bb19:
  %t125 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l59, !tbaa !24
  %t127 = load i64, ptr %l59, !tbaa !24
  %t128 = mul i64 %t127, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l60, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l59, !tbaa !24
  %t137 = mul i64 %t136, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %t135, i64 %t137, i1 false)
  %t138 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t138, ptr %l6, !tbaa !27
  br label %bb20
bb20:
  br label %bb42
bb21:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l63, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t139, ptr %l64, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l66, !tbaa !24
  %t145 = load i64, ptr %l66, !tbaa !24
  %t146 = icmp eq i64 %t141, %t145
  br i1 %t146, label %bb23, label %bb24
bb22:
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = getelementptr %"compiler/check:frame", ptr %t148, i32 0, i32 38
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t150)
  store i64 %t152, ptr %l72
  br label %bb26
bb23:
  %t153 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l66, !tbaa !24
  %t158 = mul i64 %t157, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %t156, i64 %t158, i1 false)
  br label %bb25
bb24:
  %t159 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l68, !tbaa !24
  %t161 = load i64, ptr %l68, !tbaa !24
  %t162 = mul i64 %t161, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t162)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  store { i64, ptr } %t165, ptr %l69, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = load i64, ptr %l68, !tbaa !24
  %t171 = mul i64 %t170, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t167, ptr %t169, i64 %t171, i1 false)
  %t172 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t172, ptr %l6, !tbaa !27
  br label %bb25
bb25:
  br label %bb41
bb26:
  %t173 = load i64, ptr %l72, !tbaa !24
  %t174 = icmp sgt i64 %t173, 0
  br i1 %t174, label %bb27, label %bb28
bb27:
  store { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l74, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t176, ptr %l75, !tbaa !27
  %t177 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  %t179 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l77, !tbaa !24
  %t182 = load i64, ptr %l77, !tbaa !24
  %t183 = icmp eq i64 %t178, %t182
  br i1 %t183, label %bb29, label %bb30
bb28:
  %t185 = load ptr, ptr %l3, !tbaa !29
  %t187 = getelementptr %"compiler/check:frame", ptr %t185, i32 0, i32 22
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l83
  br label %bb32
bb29:
  %t190 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l77, !tbaa !24
  %t195 = mul i64 %t194, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t191, ptr %t193, i64 %t195, i1 false)
  br label %bb31
bb30:
  %t196 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 0
  store i64 %t197, ptr %l79, !tbaa !24
  %t198 = load i64, ptr %l79, !tbaa !24
  %t199 = mul i64 %t198, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t199)
  %t201 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l80, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = load i64, ptr %l79, !tbaa !24
  %t208 = mul i64 %t207, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t204, ptr %t206, i64 %t208, i1 false)
  %t209 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t209, ptr %l6, !tbaa !27
  br label %bb31
bb31:
  br label %bb40
bb32:
  %t210 = load ptr, ptr %l3, !tbaa !29
  %t212 = getelementptr %"compiler/check:frame", ptr %t210, i32 0, i32 24
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t212)
  store i64 %t214, ptr %l86
  br label %bb33
bb33:
  %t215 = load i64, ptr %l83, !tbaa !24
  %t216 = load i64, ptr %l86, !tbaa !24
  %t217 = icmp sgt i64 %t215, %t216
  br i1 %t217, label %bb34, label %bb35
bb34:
  store { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l88, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t219, ptr %l89, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  %t222 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  store i64 %t223, ptr %l91, !tbaa !24
  %t225 = load i64, ptr %l91, !tbaa !24
  %t226 = icmp eq i64 %t221, %t225
  br i1 %t226, label %bb36, label %bb37
bb35:
  br label %bb39
bb36:
  %t228 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = load i64, ptr %l91, !tbaa !24
  %t233 = mul i64 %t232, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t229, ptr %t231, i64 %t233, i1 false)
  br label %bb38
bb37:
  %t234 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 0
  store i64 %t235, ptr %l93, !tbaa !24
  %t236 = load i64, ptr %l93, !tbaa !24
  %t237 = mul i64 %t236, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t237)
  %t239 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  store { i64, ptr } %t240, ptr %l94, !tbaa !27
  %t241 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = load i64, ptr %l93, !tbaa !24
  %t246 = mul i64 %t245, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t242, ptr %t244, i64 %t246, i1 false)
  %t247 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t247, ptr %l6, !tbaa !27
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t248 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t250 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t248, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t250, ptr %l96
  br label %bb44
bb44:
  %t251 = load i1, ptr %l96, !tbaa !21
  %t252 = xor i1 %t251, true
  br i1 %t252, label %bb45, label %bb46
bb45:
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l98, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t255, ptr %l99
  %t256 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t258 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeInside(ptr %s0, ptr %v0, { i64, ptr } %t256)
  store %"compiler/diagmsg:Msg" %t258, ptr %l101
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t259 = load ptr, ptr %l98, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l99
  %t261 = load %"compiler/diagmsg:Msg", ptr %l101
  %t262 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t259, %"compiler/source:Span" %t260, %"compiler/diagmsg:Msg" %t261)
  store i64 %t262, ptr %l102
  br label %bb48
bb48:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t265
  %t266 = getelementptr { i64, [3 x i64] }, ptr %t265, i32 0, i32 0
  store i64 6, ptr %t266
  %t268 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t264, 0
  %t269 = insertvalue { %"compiler/source:Span", ptr } %t268, ptr null, 1
  %t270 = getelementptr { i64, [3 x i64] }, ptr %t265, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t269, ptr %t270
  %t271 = load { i64, [3 x i64] }, ptr %t265
  %t273 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t271, ptr %t273
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t263, ptr %t273)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb50:
  %t276 = load ptr, ptr %l2, !tbaa !29
  store ptr %t276, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t277 = load ptr, ptr %l108, !tbaa !29
  %t278 = icmp ne ptr %t277, null
  br i1 %t278, label %bb51, label %bb52
bb51:
  %t280 = load ptr, ptr %l108, !tbaa !29
  %t281 = load i64, ptr %t280, !range !{i64 0, i64 30}
  %t283 = icmp eq i64 %t281, 12
  store i1 %t283, ptr %l109, !tbaa !21
  br label %bb52
bb52:
  %t284 = load i1, ptr %l109, !tbaa !21
  br i1 %t284, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l107, !tbaa !27
  br label %bb67
bb56:
  %t285 = load ptr, ptr %l2, !tbaa !29
  store ptr %t285, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t286 = load ptr, ptr %l112, !tbaa !29
  %t287 = icmp ne ptr %t286, null
  br i1 %t287, label %bb57, label %bb58
bb57:
  %t289 = load ptr, ptr %l112, !tbaa !29
  %t290 = load i64, ptr %t289, !range !{i64 0, i64 30}
  %t292 = icmp eq i64 %t290, 21
  store i1 %t292, ptr %l113, !tbaa !21
  br label %bb58
bb58:
  %t293 = load i1, ptr %l113, !tbaa !21
  br i1 %t293, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l107, !tbaa !27
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l107, !tbaa !27
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_e034fcd8e283054e_7f246e4998f63322)
  unreachable
bb67:
  %t294 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t294, ptr %l7, !tbaa !27
  %t295 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t296 = load ptr, ptr @__olang_prog_scope
  %t298 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t296, ptr %s0, { i64, ptr } %t295, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t298, ptr %l117
  br label %bb68
bb68:
  %t299 = load i1, ptr %l117, !tbaa !21
  br i1 %t299, label %bb69, label %bb70
bb69:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l118, !tbaa !29
  %t301 = load ptr, ptr %l2, !tbaa !29
  %t303 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t301)
  store %"compiler/source:Span" %t303, ptr %l120
  br label %bb71
bb70:
  br label %bb75
bb71:
  %t304 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeTry(ptr %v0)
  store %"compiler/diagmsg:Msg" %t304, ptr %l121
  br label %bb72
bb72:
  %t305 = load ptr, ptr %l118, !tbaa !29
  %t306 = load %"compiler/source:Span", ptr %l120
  %t307 = load %"compiler/diagmsg:Msg", ptr %l121
  %t308 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t305, %"compiler/source:Span" %t306, %"compiler/diagmsg:Msg" %t307)
  store i64 %t308, ptr %l122
  br label %bb73
bb73:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t311
  %t312 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 0
  store i64 6, ptr %t312
  %t314 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t310, 0
  %t315 = insertvalue { %"compiler/source:Span", ptr } %t314, ptr null, 1
  %t316 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t315, ptr %t316
  %t317 = load { i64, [3 x i64] }, ptr %t311
  %t319 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t317, ptr %t319
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t309, ptr %t319)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb75:
  %t322 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t323 = load ptr, ptr @__olang_prog_scope
  %t325 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t323, ptr %s0, { i64, ptr } %t322, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t325, ptr %l128
  br label %bb76
bb76:
  %t326 = load i1, ptr %l128, !tbaa !21
  %t327 = xor i1 %t326, true
  br i1 %t327, label %bb77, label %bb78
bb77:
  %t329 = load ptr, ptr %l0, !tbaa !29
  store ptr %t329, ptr %l130, !tbaa !29
  %t330 = load ptr, ptr %l2, !tbaa !29
  %t332 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t330)
  store %"compiler/source:Span" %t332, ptr %l132
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t333 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t334 = load ptr, ptr @__olang_prog_scope
  %t336 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeNotCall(ptr %t334, ptr %v0, { i64, ptr } %t333)
  store %"compiler/diagmsg:Msg" %t336, ptr %l134
  br label %bb80
bb80:
  %t337 = load ptr, ptr %l130, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l132
  %t339 = load %"compiler/diagmsg:Msg", ptr %l134
  %t340 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t337, %"compiler/source:Span" %t338, %"compiler/diagmsg:Msg" %t339)
  store i64 %t340, ptr %l135
  br label %bb81
bb81:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t343
  %t344 = getelementptr { i64, [3 x i64] }, ptr %t343, i32 0, i32 0
  store i64 6, ptr %t344
  %t346 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t342, 0
  %t347 = insertvalue { %"compiler/source:Span", ptr } %t346, ptr null, 1
  %t348 = getelementptr { i64, [3 x i64] }, ptr %t343, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t347, ptr %t348
  %t349 = load { i64, [3 x i64] }, ptr %t343
  %t351 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t349, ptr %t351
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t341, ptr %t351)
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb83:
  %t354 = load ptr, ptr %l3, !tbaa !29
  %t356 = getelementptr %"compiler/check:frame", ptr %t354, i32 0, i32 5
  %t357 = load i32, ptr %t356, !tbaa !23
  store i32 %t357, ptr %l8, !tbaa !23
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t359)
  store ptr %t361, ptr %l143
  br label %bb84
bb84:
  %t362 = load ptr, ptr %l143, !tbaa !29
  store ptr %t362, ptr %l144, !tbaa !29
  %t363 = load ptr, ptr %l144, !tbaa !29
  %t364 = getelementptr %"compiler/check:frame", ptr %t363, i32 0, i32 15
  %t365 = load i64, ptr %t364, !tbaa !24
  %t367 = add i64 %t365, 1
  %t369 = load ptr, ptr %l144, !tbaa !29
  %t370 = getelementptr %"compiler/check:frame", ptr %t369, i32 0, i32 15
  store i64 %t367, ptr %t370, !tbaa !24
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load ptr, ptr %l2, !tbaa !29
  %t374 = load i32, ptr %l8, !tbaa !23
  %t378 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t371, ptr %t372, i32 %t374)
  store ptr %t378, ptr %l151
  br label %bb85
bb85:
  %t379 = load ptr, ptr %l151, !tbaa !29
  store ptr %t379, ptr %l9, !tbaa !29
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t380)
  store ptr %t382, ptr %l153
  br label %bb86
bb86:
  %t383 = load ptr, ptr %l153, !tbaa !29
  store ptr %t383, ptr %l154, !tbaa !29
  %t384 = load ptr, ptr %l154, !tbaa !29
  %t385 = getelementptr %"compiler/check:frame", ptr %t384, i32 0, i32 15
  %t386 = load i64, ptr %t385, !tbaa !24
  %t388 = sub i64 %t386, 1
  %t390 = load ptr, ptr %l154, !tbaa !29
  %t391 = getelementptr %"compiler/check:frame", ptr %t390, i32 0, i32 15
  store i64 %t388, ptr %t391, !tbaa !24
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/check:Checker", ptr %t392, i32 0, i32 14
  %t395 = load ptr, ptr %l3, !tbaa !29
  %t397 = getelementptr %"compiler/check:frame", ptr %t395, i32 0, i32 0
  %t398 = load i64, ptr %t397, !tbaa !24
  %t401 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t394, i64 %t398)
  store ptr %t401, ptr %l161
  br label %bb87
bb87:
  %t402 = load ptr, ptr %l161, !tbaa !29
  %t404 = getelementptr %"compiler/typed:Body", ptr %t402, i32 0, i32 2
  %t405 = load i32, ptr %t404, !tbaa !23
  store i32 %t405, ptr %l10, !tbaa !23
  %t407 = load ptr, ptr %l9, !tbaa !29
  %t410 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t407)
  store i32 %t410, ptr %l166
  br label %bb88
bb88:
  %t411 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t412 = load i32, ptr %l166, !tbaa !23
  %t414 = icmp eq i32 %t412, %t411
  br i1 %t414, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb90:
  br label %bb91
bb91:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load ptr, ptr %l9, !tbaa !29
  %t420 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeRefusal(ptr %v0, ptr %v0, ptr %s0, ptr %t416, ptr %t417)
  store { i64, ptr } %t420, ptr %l171
  br label %bb92
bb92:
  %t421 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t421, ptr %l11, !tbaa !27
  %t422 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t424 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t422, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t424, ptr %l173
  br label %bb93
bb93:
  %t425 = load i1, ptr %l173, !tbaa !21
  %t426 = xor i1 %t425, true
  br i1 %t426, label %bb94, label %bb95
bb94:
  %t428 = load ptr, ptr %l0, !tbaa !29
  store ptr %t428, ptr %l175, !tbaa !29
  %t429 = load ptr, ptr %l2, !tbaa !29
  %t431 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t429)
  store %"compiler/source:Span" %t431, ptr %l177
  br label %bb96
bb95:
  br label %bb100
bb96:
  %t432 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t434 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeNotCall(ptr %s0, ptr %v0, { i64, ptr } %t432)
  store %"compiler/diagmsg:Msg" %t434, ptr %l179
  br label %bb97
bb97:
  %t435 = load ptr, ptr %l175, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l177
  %t437 = load %"compiler/diagmsg:Msg", ptr %l179
  %t438 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t435, %"compiler/source:Span" %t436, %"compiler/diagmsg:Msg" %t437)
  store i64 %t438, ptr %l180
  br label %bb98
bb98:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t441
  %t442 = getelementptr { i64, [3 x i64] }, ptr %t441, i32 0, i32 0
  store i64 6, ptr %t442
  %t444 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t440, 0
  %t445 = insertvalue { %"compiler/source:Span", ptr } %t444, ptr null, 1
  %t446 = getelementptr { i64, [3 x i64] }, ptr %t441, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t445, ptr %t446
  %t447 = load { i64, [3 x i64] }, ptr %t441
  %t449 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t447, ptr %t449
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t439, ptr %t449)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb100:
  %t452 = load ptr, ptr %l9, !tbaa !29
  %t454 = call i64 @compiler_2ftyped_2eCalledBody(ptr %v0, ptr %t452)
  store i64 %t454, ptr %l186
  br label %bb101
bb101:
  %t455 = load i64, ptr %l186, !tbaa !24
  store i64 %t455, ptr %l12, !tbaa !24
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/check:Checker", ptr %t456, i32 0, i32 14
  %t459 = load i64, ptr %l12, !tbaa !24
  %t462 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t458, i64 %t459)
  store ptr %t462, ptr %l190
  br label %bb102
bb102:
  %t463 = load ptr, ptr %l190, !tbaa !29
  %t465 = getelementptr %"compiler/typed:Body", ptr %t463, i32 0, i32 2
  %t466 = load i32, ptr %t465, !tbaa !23
  store i32 %t466, ptr %l13, !tbaa !23
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load i32, ptr %l10, !tbaa !23
  %t470 = load i32, ptr %l13, !tbaa !23
  %t474 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameJump(ptr %v0, ptr %t468, i32 %t469, i32 %t470)
  store i1 %t474, ptr %l196
  br label %bb103
bb103:
  %t475 = load i1, ptr %l196, !tbaa !21
  %t476 = xor i1 %t475, true
  br i1 %t476, label %bb104, label %bb105
bb104:
  %t478 = load ptr, ptr %l0, !tbaa !29
  store ptr %t478, ptr %l198, !tbaa !29
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load ptr, ptr %l2, !tbaa !29
  %t483 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %t479, ptr %t480)
  store %"compiler/source:Span" %t483, ptr %l201
  br label %bb106
bb105:
  br label %bb112
bb106:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i32, ptr %l10, !tbaa !23
  %t488 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejumpText(ptr %v0, ptr %v0, ptr %t484, i32 %t485)
  store { i64, ptr } %t488, ptr %l204
  br label %bb107
bb107:
  %t489 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t489, 0
  %t491 = extractvalue { i64, ptr } %t489, 1
  %t492 = mul i64 %t490, 1
  %t493 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t492)
  call void @llvm.memcpy.p0.p0.i64(ptr %t493, ptr %t491, i64 %t492, i1 false)
  %t494 = insertvalue { i64, ptr } undef, i64 %t490, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %t493, 1
  store { i64, ptr } %t495, ptr %l205, !tbaa !27
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load i32, ptr %l13, !tbaa !23
  %t500 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejumpText(ptr %v0, ptr %v0, ptr %t496, i32 %t497)
  store { i64, ptr } %t500, ptr %l208
  br label %bb108
bb108:
  %t501 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t501, 0
  %t503 = extractvalue { i64, ptr } %t501, 1
  %t504 = mul i64 %t502, 1
  %t505 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t504)
  call void @llvm.memcpy.p0.p0.i64(ptr %t505, ptr %t503, i64 %t504, i1 false)
  %t506 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr %t505, 1
  %t508 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t510 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeSignature(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t508, { i64, ptr } %t507)
  store %"compiler/diagmsg:Msg" %t510, ptr %l210
  br label %bb109
bb109:
  %t511 = load ptr, ptr %l198, !tbaa !29
  %t512 = load %"compiler/source:Span", ptr %l201
  %t513 = load %"compiler/diagmsg:Msg", ptr %l210
  %t514 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t511, %"compiler/source:Span" %t512, %"compiler/diagmsg:Msg" %t513)
  store i64 %t514, ptr %l211
  br label %bb110
bb110:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t517
  %t518 = getelementptr { i64, [3 x i64] }, ptr %t517, i32 0, i32 0
  store i64 6, ptr %t518
  %t520 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t516, 0
  %t521 = insertvalue { %"compiler/source:Span", ptr } %t520, ptr null, 1
  %t522 = getelementptr { i64, [3 x i64] }, ptr %t517, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t521, ptr %t522
  %t523 = load { i64, [3 x i64] }, ptr %t517
  %t525 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t523, ptr %t525
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t515, ptr %t525)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb112:
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t529 = load i32, ptr %l10, !tbaa !23
  %t532 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaMemoryJump(ptr %v0, ptr %t528, i32 %t529)
  store i1 %t532, ptr %l218
  br label %bb113
bb113:
  %t533 = load i1, ptr %l218, !tbaa !21
  br i1 %t533, label %bb114, label %bb115
bb114:
  %t534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t534, ptr %l219, !tbaa !29
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t536 = load ptr, ptr %l2, !tbaa !29
  %t539 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %t535, ptr %t536)
  store %"compiler/source:Span" %t539, ptr %l222
  br label %bb116
bb115:
  br label %bb120
bb116:
  %t540 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeMemory(ptr %v0)
  store %"compiler/diagmsg:Msg" %t540, ptr %l223
  br label %bb117
bb117:
  %t541 = load ptr, ptr %l219, !tbaa !29
  %t542 = load %"compiler/source:Span", ptr %l222
  %t543 = load %"compiler/diagmsg:Msg", ptr %l223
  %t544 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t541, %"compiler/source:Span" %t542, %"compiler/diagmsg:Msg" %t543)
  store i64 %t544, ptr %l224
  br label %bb118
bb118:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load %"compiler/source:Span", ptr %l1
  store { i64, [3 x i64] } zeroinitializer, ptr %t547
  %t548 = getelementptr { i64, [3 x i64] }, ptr %t547, i32 0, i32 0
  store i64 6, ptr %t548
  %t550 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t546, 0
  %t551 = insertvalue { %"compiler/source:Span", ptr } %t550, ptr null, 1
  %t552 = getelementptr { i64, [3 x i64] }, ptr %t547, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t551, ptr %t552
  %t553 = load { i64, [3 x i64] }, ptr %t547
  %t555 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t553, ptr %t555
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t545, ptr %t555)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb120:
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t560 = getelementptr %"compiler/check:Checker", ptr %t558, i32 0, i32 110
  store ptr %t560, ptr %l230, !tbaa !29
  %t561 = load ptr, ptr %l3, !tbaa !29
  %t563 = getelementptr %"compiler/check:frame", ptr %t561, i32 0, i32 0
  %t564 = load i64, ptr %t563, !tbaa !24
  %t565 = load i64, ptr %l12, !tbaa !24
  %t566 = load %"compiler/source:Span", ptr %l1
  %t567 = load ptr, ptr %l3, !tbaa !29
  %t569 = getelementptr %"compiler/check:frame", ptr %t567, i32 0, i32 1
  %t570 = load i64, ptr %t569, !tbaa !24
  %t575 = call %"compiler/check:tailAsk" @compiler_2fcheck_3atailAsk_2ector(ptr %s0, i64 %t564, i64 %t565, %"compiler/source:Span" %t566, i64 %t570)
  store %"compiler/check:tailAsk" %t575, ptr %l237
  br label %bb121
bb121:
  %t576 = load ptr, ptr %l230, !tbaa !29
  %t577 = load %"compiler/check:tailAsk", ptr %l237
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2ePush_3ccompiler_2fcheck_3atailAsk_3e(ptr %v0, ptr %t576, %"compiler/check:tailAsk" %t577)
  br label %bb122
bb122:
  %t578 = load ptr, ptr %l9, !tbaa !29
  store ptr %t578, ptr %l238, !tbaa !29
  store i1 false, ptr %l239, !tbaa !21
  %t579 = load ptr, ptr %l238, !tbaa !29
  %t580 = icmp ne ptr %t579, null
  br i1 %t580, label %bb123, label %bb124
bb123:
  %t582 = load ptr, ptr %l238, !tbaa !29
  %t583 = load i64, ptr %t582, !range !{i64 0, i64 18}
  %t585 = icmp eq i64 %t583, 6
  store i1 %t585, ptr %l239, !tbaa !21
  br label %bb124
bb124:
  %t586 = load i1, ptr %l239, !tbaa !21
  br i1 %t586, label %bb125, label %bb126
bb125:
  %t587 = load ptr, ptr %l9, !tbaa !29
  %t589 = getelementptr { i64, [5 x i64] }, ptr %t587, i32 0, i32 1
  %t590 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t589, i32 0, i32 0
  %t591 = load %"compiler/source:Span", ptr %t590
  store %"compiler/source:Span" %t591, ptr %l14
  %t593 = load ptr, ptr %l9, !tbaa !29
  %t595 = getelementptr { i64, [5 x i64] }, ptr %t593, i32 0, i32 1
  %t596 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t595, i32 0, i32 1
  %t597 = load i32, ptr %t596
  store i32 %t597, ptr %l15, !tbaa !23
  %t599 = load ptr, ptr %l9, !tbaa !29
  %t601 = getelementptr { i64, [5 x i64] }, ptr %t599, i32 0, i32 1
  %t602 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t601, i32 0, i32 2
  %t603 = load ptr, ptr %t602
  store ptr %t603, ptr %l16, !tbaa !29
  br label %bb127
bb126:
  br label %bb130
bb127:
  %t605 = load ptr, ptr %l0, !tbaa !29
  store ptr %t605, ptr %l248, !tbaa !29
  %t606 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t606, ptr %l249
  %t607 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t607, ptr %l250
  %t608 = load i32, ptr %l15, !tbaa !23
  store i32 %t608, ptr %l251, !tbaa !23
  %t609 = load ptr, ptr %l16, !tbaa !29
  %t611 = getelementptr %"compiler/typed:Call", ptr %t609, i32 0, i32 0
  %t612 = load ptr, ptr %t611, !tbaa !29
  %t613 = load ptr, ptr %l16, !tbaa !29
  %t615 = getelementptr %"compiler/typed:Call", ptr %t613, i32 0, i32 1
  %t616 = load { i64, ptr }, ptr %t615, !tbaa !27
  %t617 = load ptr, ptr %l16, !tbaa !29
  %t619 = getelementptr %"compiler/typed:Call", ptr %t617, i32 0, i32 2
  %t620 = load i32, ptr %t619, !tbaa !23
  %t621 = load ptr, ptr %l16, !tbaa !29
  %t623 = getelementptr %"compiler/typed:Call", ptr %t621, i32 0, i32 3
  %t624 = load i1, ptr %t623, !tbaa !21
  %t629 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t612, { i64, ptr } %t616, i32 %t620, i1 %t624, i1 true)
  store %"compiler/typed:Call" %t629, ptr %l260
  br label %bb128
bb128:
  %t630 = load %"compiler/typed:Call", ptr %l260
  %t631 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Call" %t630, ptr %t631
  store { i64, [5 x i64] } zeroinitializer, ptr %t632
  %t633 = getelementptr { i64, [5 x i64] }, ptr %t632, i32 0, i32 0
  store i64 6, ptr %t633
  %t634 = load %"compiler/source:Span", ptr %l250
  %t635 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t634, 0
  %t636 = load i32, ptr %l251, !tbaa !23
  %t637 = insertvalue { %"compiler/source:Span", i32, ptr } %t635, i32 %t636, 1
  %t639 = insertvalue { %"compiler/source:Span", i32, ptr } %t637, ptr %t631, 2
  %t640 = getelementptr { i64, [5 x i64] }, ptr %t632, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t639, ptr %t640
  %t641 = load { i64, [5 x i64] }, ptr %t632
  %t643 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t641, ptr %t643
  store { i64, [3 x i64] } zeroinitializer, ptr %t644
  %t645 = getelementptr { i64, [3 x i64] }, ptr %t644, i32 0, i32 0
  store i64 6, ptr %t645
  %t646 = load %"compiler/source:Span", ptr %l249
  %t647 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t646, 0
  %t649 = insertvalue { %"compiler/source:Span", ptr } %t647, ptr %t643, 1
  %t650 = getelementptr { i64, [3 x i64] }, ptr %t644, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t649, ptr %t650
  %t651 = load { i64, [3 x i64] }, ptr %t644
  %t653 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t651, ptr %t653
  %t654 = load ptr, ptr %l248, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t654, ptr %t653)
  br label %bb129
bb129:
  br label %bb135
bb130:
  br i1 true, label %bb131, label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb134
bb133:
  br label %bb135
bb134:
  call void @__olang_check_failed(ptr @olang_loc_17e85edd6251e98f_328e7bc733525423)
  unreachable
bb135:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, i32 %a4, ptr %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, [3 x i64] }
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i64
  %l35 = alloca i1
  %l37 = alloca ptr
  %l41 = alloca %"compiler/typed:Local"
  %l46 = alloca i1
  %l48 = alloca ptr
  %l52 = alloca %"compiler/typed:Local"
  %l62 = alloca i64
  %l65 = alloca { i64, [3 x i64] }
  %l70 = alloca ptr
  %l77 = alloca ptr
  %l79 = alloca ptr
  %l83 = alloca %"compiler/typed:Local"
  %l86 = alloca i1
  %l88 = alloca i1
  %l100 = alloca ptr
  %l105 = alloca %"compiler/typed:Bind"
  %l110 = alloca ptr
  %rv = alloca ptr
  %t91 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load %"compiler/source:Span", ptr %l1
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t2, %"compiler/source:Span" %t3, ptr %t4)
  store ptr %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load %"compiler/source:Span", ptr %l1
  %t10 = load ptr, ptr %l10, !tbaa !29
  %t11 = load ptr, ptr %l14, !tbaa !29
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v0, ptr %t10, ptr %t11, %"compiler/source:Span" %t9, i1 false)
  store ptr %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l16, !tbaa !29
  store ptr %t14, ptr %l7, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l17, !tbaa !29
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t16)
  store i32 %t19, ptr %l20
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l17, !tbaa !29
  %t21 = load i32, ptr %l20, !tbaa !23
  %t22 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t22, ptr %l21
  br label %bb4
bb4:
  %t23 = load i1, ptr %l21, !tbaa !21
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l25
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb8
bb7:
  %t29 = load i1, ptr %l25, !tbaa !21
  %t30 = xor i1 %t29, true
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l22, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t36 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t33)
  store i32 %t36, ptr %l29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t37 = load i32, ptr %l29, !tbaa !23
  store i32 %t37, ptr %l4, !tbaa !23
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l2, !tbaa !23
  %t42 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t38, i32 %t39)
  store i64 %t42, ptr %l32
  br label %bb13
bb13:
  %t43 = load i64, ptr %l32, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t46 = icmp slt i64 %t44, 0
  br i1 %t46, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb18
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t48)
  store ptr %t50, ptr %l37
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l37, !tbaa !29
  %t53 = getelementptr %"compiler/typed:Body", ptr %t51, i32 0, i32 7
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t53, i64 %t54)
  store %"compiler/typed:Local" %t57, ptr %l41
  br label %bb17
bb17:
  %t58 = getelementptr %"compiler/typed:Local", ptr %l41, i32 0, i32 3
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = sext i32 %t59 to i64
  %t65 = icmp ne i64 %t61, %a6
  store i1 %t65, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t67 = load i1, ptr %l35, !tbaa !21
  br i1 %t67, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb23
bb20:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t68)
  store ptr %t70, ptr %l48
  br label %bb21
bb21:
  %t71 = load ptr, ptr %l48, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Body", ptr %t71, i32 0, i32 7
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/typed:Local" %t77, ptr %l52
  br label %bb22
bb22:
  %t78 = getelementptr %"compiler/typed:Local", ptr %l52, i32 0, i32 4
  %t79 = load i32, ptr %t78, !range !{i32 0, i32 7}
  %t81 = trunc i64 4 to i32
  %t82 = icmp eq i32 %t79, %t81
  %t84 = xor i1 %t82, true
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t86 = load i1, ptr %l46, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l2, !tbaa !23
  %t89 = load %"compiler/source:Span", ptr %l1
  %t90 = load i32, ptr %l4, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [1 x i64] }, ptr %t91, i32 0, i32 0
  store i64 4, ptr %t92
  %t93 = load { i64, [1 x i64] }, ptr %t91
  %t100 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t87, i32 %t88, %"compiler/source:Span" %t89, i32 %t90, i32 4, { i64, [1 x i64] } %t93)
  store i64 %t100, ptr %l62
  br label %bb26
bb25:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l77, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t107)
  store ptr %t109, ptr %l79
  br label %bb33
bb26:
  %t110 = load i64, ptr %l62, !tbaa !24
  store i64 %t110, ptr %l8, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t115 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v1, ptr %t111, ptr %t112)
  store { i64, [3 x i64] } %t115, ptr %l65
  br label %bb27
bb27:
  %t116 = load { i64, [3 x i64] }, ptr %l65
  store { i64, [3 x i64] } %t116, ptr %l9
  %t117 = load { i64, [3 x i64] }, ptr %l9
  %t119 = extractvalue { i64, [3 x i64] } %t117, 0
  %t120 = icmp eq i64 %t119, 0
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb28, label %bb29
bb28:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t124)
  store ptr %t126, ptr %l70
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t127 = load ptr, ptr %l70, !tbaa !29
  %t129 = getelementptr %"compiler/check:frame", ptr %t127, i32 0, i32 3
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load { i64, [3 x i64] }, ptr %l9
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %t129, i64 %t130, { i64, [3 x i64] } %t131)
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb43
bb33:
  %t135 = load ptr, ptr %l79, !tbaa !29
  %t137 = getelementptr %"compiler/typed:Body", ptr %t135, i32 0, i32 7
  %t138 = load i64, ptr %l8, !tbaa !24
  %t141 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t137, i64 %t138)
  store %"compiler/typed:Local" %t141, ptr %l83
  br label %bb34
bb34:
  %t142 = getelementptr %"compiler/typed:Local", ptr %l83, i32 0, i32 2
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = load i32, ptr %l4, !tbaa !23
  %t145 = load ptr, ptr %l77, !tbaa !29
  %t148 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t145, i32 %t143, i32 %t144)
  store i1 %t148, ptr %l86
  br label %bb35
bb35:
  %t149 = load i1, ptr %l86, !tbaa !21
  %t150 = xor i1 %t149, true
  br i1 %t150, label %bb36, label %bb37
bb36:
  %t152 = load i32, ptr %l4, !tbaa !23
  %t153 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t156 = icmp ne i32 %t152, %t153
  store i1 %t156, ptr %l88, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb38
bb38:
  %t158 = load i1, ptr %l88, !tbaa !21
  br i1 %t158, label %bb39, label %bb40
bb39:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  %t161 = load i32, ptr %l2, !tbaa !23
  %t162 = load i64, ptr %l8, !tbaa !24
  %t163 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtBinding(ptr %v0, ptr %t159, %"compiler/source:Span" %t160, i32 %t161, i64 %t162, i32 %t163)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i64, ptr %l8, !tbaa !24
  %t171 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v0, ptr %t169, i64 %t170, ptr %t171)
  br label %bb44
bb44:
  store ptr %a5, ptr %l100, !tbaa !29
  %t176 = load i64, ptr %l8, !tbaa !24
  %t178 = trunc i64 %t176 to i32
  %t180 = load ptr, ptr %l7, !tbaa !29
  %t183 = call %"compiler/typed:Bind" @compiler_2ftyped_3aBind_2ector(ptr %v0, ptr %v2, i32 %t178, ptr %t180)
  store %"compiler/typed:Bind" %t183, ptr %l105
  br label %bb45
bb45:
  %t184 = load %"compiler/typed:Bind", ptr %l105
  %t185 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store %"compiler/typed:Bind" %t184, ptr %t185
  %t186 = load ptr, ptr %l100, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2ePush_3ccompiler_2ftyped_3aBind_26_3e(ptr %v2, ptr %v2, ptr %t186, ptr %t185)
  br label %bb46
bb46:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load %"compiler/source:Span", ptr %l1
  %t190 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t194 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t188, %"compiler/source:Span" %t189, i32 %t190, i64 1)
  store ptr %t194, ptr %l110
  br label %bb47
bb47:
  %t195 = load ptr, ptr %l110, !tbaa !29
  store ptr %t195, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca i64
  %l14 = alloca i64
  %l18 = alloca ptr
  %l26 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t11 = alloca { i64, [3 x i64] }, align 8
  %t46 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledInst(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, [3 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t11, i32 0, i32 0
  store i64 0, ptr %t12
  %t13 = load { i64, [3 x i64] }, ptr %t11
  store { i64, [3 x i64] } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l14
  br label %bb5
bb5:
  %t23 = load i64, ptr %l14, !tbaa !24
  store i64 %t23, ptr %l3, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l18
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Func", ptr %t32, i32 0, i32 3
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/ast:Sig", ptr %t35, i32 0, i32 1
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l4, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp eq i64 %t42, 0
  br i1 %t44, label %bb7, label %bb8
bb7:
  store { i64, [3 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 0
  store i64 0, ptr %t47
  %t48 = load { i64, [3 x i64] }, ptr %t46
  store { i64, [3 x i64] } %t48, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l26, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load i64, ptr %l3, !tbaa !24
  %t58 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t54, i64 %t55)
  store i64 %t58, ptr %l30
  br label %bb10
bb10:
  %t59 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t59, ptr %l31, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 0
  %t63 = load ptr, ptr %t62, !tbaa !39
  %t65 = load ptr, ptr %l26, !tbaa !29
  %t66 = load i64, ptr %l30, !tbaa !24
  %t68 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t65, i64 %t66, ptr %t63)
  store { i64, [3 x i64] } %t68, ptr %l34
  br label %bb11
bb11:
  %t69 = load { i64, [3 x i64] }, ptr %l34
  store { i64, [3 x i64] } %t69, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseCompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"compiler/generic:Desc"
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca %"compiler/generic:Desc"
  %l36 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l47 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca i1
  %l55 = alloca ptr
  %l57 = alloca %"compiler/source:Span"
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca %"compiler/diagmsg:Msg"
  %l67 = alloca i64
  %l70 = alloca ptr
  %l74 = alloca i1
  %l79 = alloca i32
  %l85 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca %"compiler/source:Span"
  %l96 = alloca i32
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l104 = alloca ptr
  %l105 = alloca %"compiler/source:Span"
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca ptr
  %l112 = alloca i1
  %l115 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca %"compiler/source:Span"
  %l123 = alloca i32
  %l126 = alloca i64
  %l127 = alloca ptr
  %l130 = alloca i1
  %l132 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca %"compiler/source:Span"
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l144 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i64
  %l148 = alloca ptr
  %l149 = alloca ptr
  %l151 = alloca ptr
  %l153 = alloca i64
  %l155 = alloca ptr
  %l157 = alloca %"compiler/source:Span"
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l161 = alloca %"compiler/source:Span"
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i64
  %l171 = alloca ptr
  %l173 = alloca ptr
  %l176 = alloca %"compiler/source:Span"
  %l177 = alloca i32
  %l178 = alloca ptr
  %l182 = alloca i32
  %l185 = alloca ptr
  %l186 = alloca ptr
  %l191 = alloca ptr
  %l194 = alloca ptr
  %l198 = alloca ptr
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  %t232 = alloca { i64, [3 x i64] }, align 8
  %t371 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 12
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %t4, ptr %a3, i32 %t7)
  store ptr %t11, ptr %l17
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l17, !tbaa !29
  store ptr %t12, ptr %l5, !tbaa !29
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t16 = call i32 @compiler_2fcheck_2etypeOf(ptr %v3, ptr %t13)
  store i32 %t16, ptr %l20
  br label %bb2
bb2:
  %t17 = load i32, ptr %l20, !tbaa !23
  store i32 %t17, ptr %l6, !tbaa !23
  %t18 = load i32, ptr %l6, !tbaa !23
  %t19 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t22 = icmp eq i32 %t18, %t19
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l1
  %t28 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t24, %"compiler/source:Span" %t25)
  store ptr %t28, ptr %l26
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t29 = load ptr, ptr %l26, !tbaa !29
  store ptr %t29, ptr %rv
  br label %ret
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l6, !tbaa !23
  %t34 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l29
  br label %bb7
bb7:
  %t35 = load i32, ptr %l29, !tbaa !23
  store i32 %t35, ptr %l7, !tbaa !23
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t40 = call %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v2, ptr %t36, ptr %t37)
  store %"compiler/generic:Desc" %t40, ptr %l32
  br label %bb8
bb8:
  %t41 = load %"compiler/generic:Desc", ptr %l32
  store %"compiler/generic:Desc" %t41, ptr %l8
  %t42 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t47 = icmp eq i64 %t43, %t44
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t56 = load i32, ptr %t55, !tbaa !23
  %t57 = load i32, ptr %l7, !tbaa !23
  %t61 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t54, i32 %t56, i32 %t57)
  store i1 %t61, ptr %l42
  br label %bb11
bb10:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb12
bb11:
  %t62 = load i1, ptr %l42, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l36, !tbaa !21
  br label %bb12
bb12:
  %t65 = load i1, ptr %l36, !tbaa !21
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  store ptr %t71, ptr %l47, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t80 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t75, i32 %t77)
  store i32 %t80, ptr %l51
  br label %bb15
bb14:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb17
bb15:
  %t81 = load i32, ptr %l7, !tbaa !23
  %t82 = load ptr, ptr %l47, !tbaa !29
  %t83 = load i32, ptr %l51, !tbaa !23
  %t85 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t82, i32 %t83, i32 %t81)
  store i1 %t85, ptr %l53
  br label %bb16
bb16:
  %t86 = load i1, ptr %l53, !tbaa !21
  %t87 = xor i1 %t86, true
  store i1 %t87, ptr %l44, !tbaa !21
  br label %bb17
bb17:
  %t89 = load i1, ptr %l44, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l55, !tbaa !29
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t91)
  store %"compiler/source:Span" %t93, ptr %l57
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t96 = load i32, ptr %t95, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t94, i32 %t96)
  store { i64, ptr } %t99, ptr %l60
  br label %bb21
bb21:
  %t100 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 0
  %t102 = extractvalue { i64, ptr } %t100, 1
  %t103 = mul i64 %t101, 1
  %t104 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t104, ptr %t102, i64 %t103, i1 false)
  %t105 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  store { i64, ptr } %t106, ptr %l61, !tbaa !27
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l7, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t107, i32 %t108)
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
  %t119 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseOther(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t119, { i64, ptr } %t118)
  store %"compiler/diagmsg:Msg" %t121, ptr %l66
  br label %bb23
bb23:
  %t122 = load ptr, ptr %l55, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l57
  %t124 = load %"compiler/diagmsg:Msg", ptr %l66
  %t125 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t122, %"compiler/source:Span" %t123, %"compiler/diagmsg:Msg" %t124)
  store i64 %t125, ptr %l67
  br label %bb24
bb24:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load %"compiler/source:Span", ptr %l1
  %t130 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t126, %"compiler/source:Span" %t127)
  store ptr %t130, ptr %l70
  br label %bb25
bb25:
  %t131 = load ptr, ptr %l70, !tbaa !29
  store ptr %t131, ptr %rv
  br label %ret
bb26:
  %t132 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t137 = icmp eq i64 %t133, %t134
  br i1 %t137, label %bb27, label %bb28
bb27:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/check:Checker", ptr %t139, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Program", ptr %t142, i32 0, i32 2
  %t145 = load i32, ptr %l7, !tbaa !23
  %t148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t148, ptr %l79
  br label %bb29
bb28:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb30
bb29:
  %t149 = load i32, ptr %l79, !range !{i32 0, i32 33}
  %t151 = trunc i64 32 to i32
  %t152 = icmp eq i32 %t149, %t151
  store i1 %t152, ptr %l74, !tbaa !21
  br label %bb30
bb30:
  %t154 = load i1, ptr %l74, !tbaa !21
  br i1 %t154, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s3
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i32, ptr %l7, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %s3, ptr %t158, i32 %t159)
  store { i64, ptr } %t162, ptr %l85
  br label %bb33
bb32:
  br label %bb42
bb33:
  %t163 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t163, ptr %l9, !tbaa !27
  %t164 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 2
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t171 = icmp sge i64 %t165, %t168
  br i1 %t171, label %bb34, label %bb35
bb34:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load %"compiler/source:Span", ptr %l1
  %t177 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t173, %"compiler/source:Span" %t174)
  store ptr %t177, ptr %l92
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s3)
  %t178 = load ptr, ptr %l92, !tbaa !29
  store ptr %t178, ptr %rv
  br label %ret
bb37:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l93, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t180, ptr %l94
  %t181 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t181, ptr %l95
  %t182 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t182, ptr %l96
  %t183 = load ptr, ptr %l5, !tbaa !29
  store ptr %t183, ptr %l97, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l98, !tbaa !29
  %t185 = load ptr, ptr %l4, !tbaa !29
  %t187 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t185)
  store %"compiler/source:Span" %t187, ptr %l100
  br label %bb38
bb38:
  %t188 = load i32, ptr %l7, !tbaa !23
  %t189 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 2
  %t190 = load i64, ptr %t189, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i64, ptr %t193, i64 %t190
  %t195 = load i64, ptr %t194, !tbaa !34
  %t196 = load ptr, ptr %l98, !tbaa !29
  %t197 = load %"compiler/source:Span", ptr %l100
  %t200 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t196, %"compiler/source:Span" %t197, i32 %t188, i64 %t195)
  store ptr %t200, ptr %l104
  br label %bb39
bb39:
  %t201 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t201, ptr %l105
  %t202 = load ptr, ptr %l4, !tbaa !29
  %t204 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t202)
  store %"compiler/source:Span" %t204, ptr %l107
  br label %bb40
bb40:
  %t205 = load ptr, ptr %l93, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l94
  %t207 = load %"compiler/source:Span", ptr %l95
  %t208 = load i32, ptr %l96, !range !{i32 0, i32 114}
  %t209 = load ptr, ptr %l97, !tbaa !29
  %t210 = load ptr, ptr %l104, !tbaa !29
  %t211 = load %"compiler/source:Span", ptr %l105
  %t212 = load %"compiler/source:Span", ptr %l107
  %t213 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v3, ptr %v0, ptr %v3, ptr %t205, %"compiler/source:Span" %t206, %"compiler/source:Span" %t207, i32 %t208, ptr %t209, ptr %t210, %"compiler/source:Span" %t211, %"compiler/source:Span" %t212)
  store ptr %t213, ptr %l108
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s3)
  %t214 = load ptr, ptr %l108, !tbaa !29
  store ptr %t214, ptr %rv
  br label %ret
bb42:
  %t215 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t216 = load i64, ptr %t215, !tbaa !24
  %t217 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t220 = icmp eq i64 %t216, %t217
  br i1 %t220, label %bb43, label %bb44
bb43:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l7, !tbaa !23
  %t226 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t222, i32 %t223)
  store i1 %t226, ptr %l115
  br label %bb45
bb44:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb46
bb45:
  %t227 = load i1, ptr %l115, !tbaa !21
  store i1 %t227, ptr %l112, !tbaa !21
  br label %bb46
bb46:
  %t228 = load i1, ptr %l112, !tbaa !21
  br i1 %t228, label %bb47, label %bb48
bb47:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l1
  %t231 = load ptr, ptr %l5, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t232
  %t233 = getelementptr { i64, [3 x i64] }, ptr %t232, i32 0, i32 0
  store i64 2, ptr %t233
  %t235 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t230, 0
  %t237 = insertvalue { %"compiler/source:Span", ptr } %t235, ptr %t231, 1
  %t238 = getelementptr { i64, [3 x i64] }, ptr %t232, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t237, ptr %t238
  %t239 = load { i64, [3 x i64] }, ptr %t232
  %t241 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t239, ptr %t241
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t229, ptr %t241)
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l121, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t245, ptr %l122
  %t246 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t246, ptr %l123, !tbaa !23
  %t247 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t249 = trunc i64 94 to i32
  %t250 = icmp eq i32 %t247, %t249
  br i1 %t250, label %bb50, label %bb51
bb50:
  store i64 1, ptr %l126, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb52
bb52:
  %t252 = load ptr, ptr %l121, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l122
  %t254 = load i32, ptr %l123, !tbaa !23
  %t255 = load i64, ptr %l126, !tbaa !24
  %t256 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t252, %"compiler/source:Span" %t253, i32 %t254, i64 %t255)
  store ptr %t256, ptr %l127
  br label %bb53
bb53:
  %t257 = load ptr, ptr %l127, !tbaa !29
  store ptr %t257, ptr %rv
  br label %ret
bb54:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load i32, ptr %l7, !tbaa !23
  %t262 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t258, i32 %t259)
  store i1 %t262, ptr %l130
  br label %bb55
bb55:
  %t263 = load i1, ptr %l130, !tbaa !21
  %t264 = xor i1 %t263, true
  br i1 %t264, label %bb56, label %bb57
bb56:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l132, !tbaa !29
  %t267 = load ptr, ptr %l4, !tbaa !29
  %t269 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t267)
  store %"compiler/source:Span" %t269, ptr %l134
  br label %bb58
bb57:
  br label %bb66
bb58:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l135, !tbaa !29
  %t271 = load ptr, ptr %l4, !tbaa !29
  %t273 = call ptr @compiler_2fcheck_2ecasePath(ptr %v2, ptr %v2, ptr %t271)
  store ptr %t273, ptr %l137
  br label %bb59
bb59:
  %t274 = load ptr, ptr %l137, !tbaa !29
  %t275 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t274)
  store %"compiler/source:Span" %t275, ptr %l138
  br label %bb60
bb60:
  %t276 = load ptr, ptr %l135, !tbaa !29
  %t277 = load %"compiler/source:Span", ptr %l138
  %t278 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t276, %"compiler/source:Span" %t277)
  store { i64, ptr } %t278, ptr %l139
  br label %bb61
bb61:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i32, ptr %l7, !tbaa !23
  %t283 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t279, i32 %t280)
  store { i64, ptr } %t283, ptr %l142
  br label %bb62
bb62:
  %t284 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  %t286 = extractvalue { i64, ptr } %t284, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t293 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTestNotEnum(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t291, { i64, ptr } %t290)
  store %"compiler/diagmsg:Msg" %t293, ptr %l144
  br label %bb63
bb63:
  %t294 = load ptr, ptr %l132, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l134
  %t296 = load %"compiler/diagmsg:Msg", ptr %l144
  %t297 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t294, %"compiler/source:Span" %t295, %"compiler/diagmsg:Msg" %t296)
  store i64 %t297, ptr %l145
  br label %bb64
bb64:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load %"compiler/source:Span", ptr %l1
  %t302 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t298, %"compiler/source:Span" %t299)
  store ptr %t302, ptr %l148
  br label %bb65
bb65:
  %t303 = load ptr, ptr %l148, !tbaa !29
  store ptr %t303, ptr %rv
  br label %ret
bb66:
  %t304 = load ptr, ptr %l0, !tbaa !29
  store ptr %t304, ptr %l149, !tbaa !29
  %t305 = load ptr, ptr %l4, !tbaa !29
  %t307 = call ptr @compiler_2fcheck_2ecasePath(ptr %v2, ptr %v2, ptr %t305)
  store ptr %t307, ptr %l151
  br label %bb67
bb67:
  %t308 = load i32, ptr %l7, !tbaa !23
  %t309 = load ptr, ptr %l149, !tbaa !29
  %t310 = load ptr, ptr %l151, !tbaa !29
  %t312 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v2, ptr %t309, ptr %t310, i32 %t308)
  store i64 %t312, ptr %l153
  br label %bb68
bb68:
  %t313 = load i64, ptr %l153, !tbaa !24
  %t314 = icmp slt i64 %t313, 0
  br i1 %t314, label %bb69, label %bb70
bb69:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l155, !tbaa !29
  %t317 = load ptr, ptr %l4, !tbaa !29
  %t319 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t317)
  store %"compiler/source:Span" %t319, ptr %l157
  br label %bb71
bb70:
  br label %bb79
bb71:
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l158, !tbaa !29
  %t321 = load ptr, ptr %l4, !tbaa !29
  %t323 = call ptr @compiler_2fcheck_2ecasePath(ptr %v2, ptr %v2, ptr %t321)
  store ptr %t323, ptr %l160
  br label %bb72
bb72:
  %t324 = load ptr, ptr %l160, !tbaa !29
  %t325 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t324)
  store %"compiler/source:Span" %t325, ptr %l161
  br label %bb73
bb73:
  %t326 = load ptr, ptr %l158, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l161
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t326, %"compiler/source:Span" %t327)
  store { i64, ptr } %t328, ptr %l162
  br label %bb74
bb74:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i32, ptr %l7, !tbaa !23
  %t333 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t329, i32 %t330)
  store { i64, ptr } %t333, ptr %l165
  br label %bb75
bb75:
  %t334 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t334, 0
  %t336 = extractvalue { i64, ptr } %t334, 1
  %t337 = mul i64 %t335, 1
  %t338 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t337)
  call void @llvm.memcpy.p0.p0.i64(ptr %t338, ptr %t336, i64 %t337, i1 false)
  %t339 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  %t341 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t343 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTestOther(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t341, { i64, ptr } %t340)
  store %"compiler/diagmsg:Msg" %t343, ptr %l167
  br label %bb76
bb76:
  %t344 = load ptr, ptr %l155, !tbaa !29
  %t345 = load %"compiler/source:Span", ptr %l157
  %t346 = load %"compiler/diagmsg:Msg", ptr %l167
  %t347 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t344, %"compiler/source:Span" %t345, %"compiler/diagmsg:Msg" %t346)
  store i64 %t347, ptr %l168
  br label %bb77
bb77:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load %"compiler/source:Span", ptr %l1
  %t352 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t348, %"compiler/source:Span" %t349)
  store ptr %t352, ptr %l171
  br label %bb78
bb78:
  %t353 = load ptr, ptr %l171, !tbaa !29
  store ptr %t353, ptr %rv
  br label %ret
bb79:
  %t354 = load ptr, ptr %l5, !tbaa !29
  %t356 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v3, ptr %v3, ptr %t354)
  store ptr %t356, ptr %l173
  br label %bb80
bb80:
  %t357 = load ptr, ptr %l173, !tbaa !29
  store ptr %t357, ptr %l10, !tbaa !29
  %t358 = load ptr, ptr %l10, !tbaa !29
  %t360 = icmp eq ptr %t358, null
  br i1 %t360, label %bb81, label %bb82
bb81:
  %t362 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t362, ptr %l176
  %t363 = load i32, ptr %l6, !tbaa !23
  store i32 %t363, ptr %l177, !tbaa !23
  %t364 = load ptr, ptr %l5, !tbaa !29
  store ptr %t364, ptr %l178, !tbaa !29
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load %"compiler/source:Span", ptr %l1
  %t370 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t365, i32 8, %"compiler/source:Span" %t366)
  store i32 %t370, ptr %l182
  br label %bb83
bb82:
  br label %bb84
bb83:
  store { i64, [4 x i64] } zeroinitializer, ptr %t371
  %t372 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 0
  store i64 6, ptr %t372
  %t373 = load %"compiler/source:Span", ptr %l176
  %t374 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t373, 0
  %t375 = load i32, ptr %l177, !tbaa !23
  %t376 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t374, i32 %t375, 1
  %t377 = load ptr, ptr %l178, !tbaa !29
  %t378 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t376, ptr %t377, 2
  %t379 = load i32, ptr %l182, !tbaa !23
  %t380 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t378, i32 %t379, 3
  %t381 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t380, ptr %t381
  %t382 = load { i64, [4 x i64] }, ptr %t371
  %t384 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t382, ptr %t384
  store ptr %t384, ptr %l10, !tbaa !29
  br label %bb84
bb84:
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l185, !tbaa !29
  %t387 = load ptr, ptr %l4, !tbaa !29
  store ptr %t387, ptr %l186, !tbaa !29
  %t388 = load ptr, ptr %l10, !tbaa !29
  %t390 = icmp eq ptr %t388, null
  br i1 %t390, label %bb85, label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_e1487403b47c0485_2c2fc5ff7a99fd49)
  unreachable
bb86:
  br label %bb87
bb87:
  %t392 = load ptr, ptr %l10, !tbaa !29
  %t393 = load i32, ptr %l6, !tbaa !23
  %t394 = load ptr, ptr %l185, !tbaa !29
  %t395 = load ptr, ptr %l186, !tbaa !29
  %t398 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTest(ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t394, ptr %t395, ptr %t392, i32 %t393)
  store ptr %t398, ptr %l191
  br label %bb88
bb88:
  %t399 = load ptr, ptr %l191, !tbaa !29
  store ptr %t399, ptr %l11, !tbaa !29
  %t400 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t402 = trunc i64 95 to i32
  %t403 = icmp eq i32 %t400, %t402
  br i1 %t403, label %bb89, label %bb90
bb89:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  %t407 = load ptr, ptr %l11, !tbaa !29
  %t411 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t405, %"compiler/source:Span" %t406, ptr %t407)
  store ptr %t411, ptr %l198
  br label %bb91
bb90:
  %t412 = load ptr, ptr %l11, !tbaa !29
  store ptr %t412, ptr %l194, !tbaa !29
  br label %bb92
bb91:
  %t414 = load ptr, ptr %l198, !tbaa !29
  store ptr %t414, ptr %l194, !tbaa !29
  br label %bb92
bb92:
  %t415 = load ptr, ptr %l194, !tbaa !29
  store ptr %t415, ptr %rv
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l17 = alloca i32
  %l21 = alloca ptr
  %l26 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i64
  %l38 = alloca %"compiler/generic:Context"
  %l40 = alloca %"compiler/generic:Context"
  %l43 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca i32
  %l49 = alloca ptr
  %l52 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca { i64, ptr }
  %l65 = alloca i64
  %l67 = alloca ptr
  %l74 = alloca ptr
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca i1
  %l99 = alloca ptr
  %l107 = alloca i64
  %l111 = alloca { i64, ptr }
  %l112 = alloca i64
  %l113 = alloca i32
  %l114 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l127 = alloca %"compiler/diagmsg:Msg"
  %l128 = alloca i64
  %l132 = alloca ptr
  %l137 = alloca %"compiler/typed:Block"
  %l140 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t53 = alloca %"compiler/generic:Context", align 8
  %t194 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  store i32 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load i32, ptr %l17, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t15, i32 %t16)
  store ptr %t19, ptr %l21
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l21, !tbaa !29
  store ptr %t20, ptr %l4, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t26, i32 %t27)
  store i64 %t30, ptr %l26
  br label %bb3
bb3:
  %t31 = load i64, ptr %l26, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t32, i64 %a1, i64 %t31, i32 %t35, i32 0)
  store ptr %t40, ptr %l31
  br label %bb4
bb4:
  %t41 = load ptr, ptr %l31, !tbaa !29
  store ptr %t41, ptr %l32, !tbaa !29
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l33, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t44, label %bb5, label %bb6
bb5:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l33, !tbaa !24
  br label %bb6
bb6:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t54 = load i64, ptr %l33
  %t55 = inttoptr i64 %t54 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %t53, ptr %v0, ptr %t55, ptr %t51, i32 %t52)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t53, i64 160, i1 false)
  br label %bb7
bb7:
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t58, label %bb8, label %bb9
bb8:
  %t60 = load i64, ptr %l33
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = getelementptr %"compiler/generic:Context", ptr %l38, i32 0, i32 3
  %t63 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t62, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  %t69 = getelementptr %"compiler/generic:Context", ptr %l38, i32 0, i32 3
  %t70 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = call ptr @__olang_region_or(ptr %t72, ptr null)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr %t68
  %t76 = getelementptr %"compiler/generic:Context", ptr %l38, i32 0, i32 3
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t76, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr %t75
  %t83 = getelementptr %"compiler/generic:Context", ptr %l38, i32 0, i32 2
  %t84 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t83, i32 0, i32 2
  %t85 = load { i64, ptr }, ptr %t84
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = call ptr @__olang_region_or(ptr %t86, ptr null)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr %t82
  %t90 = getelementptr %"compiler/generic:Context", ptr %l38, i32 0, i32 2
  %t91 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t90, i32 0, i32 1
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr %t89
  %t97 = getelementptr %"compiler/generic:Context", ptr %l38, i32 0, i32 2
  %t98 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t97, i32 0, i32 0
  %t99 = load { i64, ptr }, ptr %t98
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = call ptr @__olang_region_or(ptr %t100, ptr null)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr %t96
  %t104 = icmp eq ptr %t103, %t61
  call void @__olang_region_settle(ptr %t61, i1 %t104)
  br label %bb9
bb9:
  %t105 = load ptr, ptr %l32, !tbaa !29
  %t106 = getelementptr %"compiler/check:frame", ptr %t105, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t106, i64 160, i1 false)
  %t107 = load ptr, ptr %l32, !tbaa !29
  %t108 = getelementptr %"compiler/check:frame", ptr %t107, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t108, ptr %l38, i64 160, i1 false)
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t109, label %bb10, label %bb11
bb10:
  %t111 = getelementptr %"compiler/generic:Context", ptr %l40, i32 0, i32 3
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t111, i32 0, i32 2
  %t113 = load { i64, ptr }, ptr %t112
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = call ptr @__olang_region_or(ptr %t114, ptr null)
  %t116 = icmp ne ptr %t115, null
  %t117 = select i1 %t116, ptr %t115, ptr null
  %t118 = getelementptr %"compiler/generic:Context", ptr %l40, i32 0, i32 3
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t118, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr %t117
  %t125 = getelementptr %"compiler/generic:Context", ptr %l40, i32 0, i32 3
  %t126 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t125, i32 0, i32 0
  %t127 = load { i64, ptr }, ptr %t126
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = call ptr @__olang_region_or(ptr %t128, ptr null)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr %t124
  %t132 = getelementptr %"compiler/generic:Context", ptr %l40, i32 0, i32 2
  %t133 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t132, i32 0, i32 2
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr %t131
  %t139 = getelementptr %"compiler/generic:Context", ptr %l40, i32 0, i32 2
  %t140 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t139, i32 0, i32 1
  %t141 = load { i64, ptr }, ptr %t140
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = call ptr @__olang_region_or(ptr %t142, ptr null)
  %t144 = icmp ne ptr %t143, null
  %t145 = select i1 %t144, ptr %t143, ptr %t138
  %t146 = getelementptr %"compiler/generic:Context", ptr %l40, i32 0, i32 2
  %t147 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t146, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = call ptr @__olang_region_or(ptr %t149, ptr null)
  %t151 = icmp ne ptr %t150, null
  %t152 = select i1 %t151, ptr %t150, ptr %t145
  call void @__olang_region_drop(ptr %t152)
  store %"compiler/generic:Context" zeroinitializer, ptr %l40
  br label %bb11
bb11:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t153)
  store ptr %t155, ptr %l43
  br label %bb12
bb12:
  store i32 0, ptr %l44
  %t156 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t156, ptr %l45
  br label %bb13
bb13:
  %t157 = load ptr, ptr %l43, !tbaa !29
  %t158 = load i32, ptr %l44, !range !{i32 0, i32 10}
  %t159 = load %"compiler/source:Span", ptr %l45
  %t160 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t157, i32 -1, i32 %t158, %"compiler/source:Span" %t159)
  store i32 %t160, ptr %l46
  br label %bb14
bb14:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  store ptr %t166, ptr %l49, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  store ptr %t172, ptr %l52, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t173)
  store ptr %t175, ptr %l54
  br label %bb15
bb15:
  %t176 = load ptr, ptr %l54, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Body", ptr %t176, i32 0, i32 2
  %t179 = load i32, ptr %t178, !tbaa !23
  %t180 = load ptr, ptr %l52, !tbaa !29
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t180, i32 %t179)
  store i32 %t182, ptr %l57
  br label %bb16
bb16:
  %t183 = load ptr, ptr %l49, !tbaa !29
  %t184 = load i32, ptr %l57, !tbaa !23
  %t185 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t183, i32 %t184)
  store { i64, ptr } %t185, ptr %l58
  br label %bb17
bb17:
  %t186 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t186, ptr %l7, !tbaa !27
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l59, !tbaa !29
  %t188 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t188, ptr %l60
  br label %bb18
bb18:
  %t189 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t189, ptr %l61, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i32, ptr %t191, i64 0
  %t193 = load i32, ptr %t192, !tbaa !33
  store { i64, [1 x i64] } zeroinitializer, ptr %t194
  %t195 = getelementptr { i64, [1 x i64] }, ptr %t194, i32 0, i32 0
  store i64 1, ptr %t195
  %t196 = load { i64, [1 x i64] }, ptr %t194
  %t197 = load ptr, ptr %l59, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l60
  %t202 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t197, i32 0, %"compiler/source:Span" %t198, i32 %t193, i32 0, { i64, [1 x i64] } %t196)
  store i64 %t202, ptr %l65
  br label %bb19
bb19:
  %t203 = load i64, ptr %l65, !tbaa !24
  store i64 %t203, ptr %l8, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t204)
  store ptr %t206, ptr %l67
  br label %bb20
bb20:
  %t207 = load ptr, ptr %l67, !tbaa !29
  %t209 = getelementptr %"compiler/typed:Body", ptr %t207, i32 0, i32 5
  %t210 = load i64, ptr %l8, !tbaa !24
  %t212 = trunc i64 %t210 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t209, i32 %t212)
  br label %bb21
bb21:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t216)
  store ptr %t218, ptr %l74
  br label %bb22
bb22:
  %t219 = load ptr, ptr %l74, !tbaa !29
  %t220 = load i64, ptr %l8, !tbaa !24
  %t223 = getelementptr %"compiler/check:frame", ptr %t219, i32 0, i32 31
  store i64 %t220, ptr %t223, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t224)
  store ptr %t226, ptr %l78
  br label %bb23
bb23:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  store ptr %t230, ptr %l80, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t231)
  store ptr %t233, ptr %l82
  br label %bb24
bb24:
  %t234 = load ptr, ptr %l82, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Body", ptr %t234, i32 0, i32 2
  %t237 = load i32, ptr %t236, !tbaa !23
  %t238 = load ptr, ptr %l80, !tbaa !29
  %t240 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t238, i32 %t237)
  store { i64, ptr } %t240, ptr %l85
  br label %bb25
bb25:
  %t241 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 0
  %t243 = extractvalue { i64, ptr } %t241, 1
  %t244 = mul i64 %t242, 8
  %t245 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t244)
  call void @llvm.memcpy.p0.p0.i64(ptr %t245, ptr %t243, i64 %t244, i1 false)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  %t248 = load ptr, ptr %l78, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t248, { i64, ptr } %t247)
  br label %bb26
bb26:
  store ptr null, ptr %l9, !tbaa !29
  %t250 = load ptr, ptr %l4, !tbaa !29
  %t252 = icmp eq ptr %t250, null
  br i1 %t252, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f2da914bb6134d5f_3ef82b9ab3e359c3)
  unreachable
bb28:
  br label %bb29
bb29:
  %t254 = load ptr, ptr %l4, !tbaa !29
  %t257 = getelementptr %"compiler/ast:TypeDecl", ptr %t254, i32 0, i32 3
  %t258 = load ptr, ptr %t257, !tbaa !29
  store ptr %t258, ptr %l10, !tbaa !29
  %t260 = load ptr, ptr %l10, !tbaa !29
  store ptr %t260, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t261 = load ptr, ptr %l92, !tbaa !29
  %t262 = icmp ne ptr %t261, null
  br i1 %t262, label %bb30, label %bb31
bb30:
  %t264 = load ptr, ptr %l92, !tbaa !29
  %t265 = load i64, ptr %t264, !range !{i64 0, i64 5}
  %t267 = icmp eq i64 %t265, 0
  store i1 %t267, ptr %l93, !tbaa !21
  br label %bb31
bb31:
  %t268 = load i1, ptr %l93, !tbaa !21
  br i1 %t268, label %bb32, label %bb33
bb32:
  %t269 = load ptr, ptr %l10, !tbaa !29
  %t271 = getelementptr { i64, [6 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { ptr }, ptr %t271, i32 0, i32 0
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l11, !tbaa !29
  br label %bb34
bb33:
  br label %bb48
bb34:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t275)
  store ptr %t277, ptr %l99
  br label %bb35
bb35:
  %t278 = load ptr, ptr %l99, !tbaa !29
  %t279 = load ptr, ptr %l11, !tbaa !29
  %t281 = getelementptr %"compiler/ast:StructBody", ptr %t279, i32 0, i32 3
  %t282 = load %"compiler/source:Span", ptr %t281
  %t285 = getelementptr %"compiler/typed:Body", ptr %t278, i32 0, i32 4
  store %"compiler/source:Span" %t282, ptr %t285
  %t286 = load ptr, ptr %l11, !tbaa !29
  %t288 = getelementptr %"compiler/ast:StructBody", ptr %t286, i32 0, i32 4
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t293 = icmp eq i64 %t291, 0
  br i1 %t293, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s2
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load ptr, ptr %l11, !tbaa !29
  %t298 = getelementptr %"compiler/ast:StructBody", ptr %t296, i32 0, i32 3
  %t299 = load %"compiler/source:Span", ptr %t298
  %t302 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t295, %"compiler/source:Span" %t299)
  store { i64, ptr } %t302, ptr %l111
  br label %bb38
bb37:
  br label %bb46
bb38:
  %t303 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t304 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s2, { i64, ptr } %t303, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) })
  %t305 = extractvalue { i32, i64 } %t304, 1
  %t306 = extractvalue { i32, i64 } %t304, 0
  store i32 %t306, ptr %l113
  %t307 = icmp ne i32 %t306, 0
  br i1 %t307, label %bb40, label %ok.308, !prof !99
ok.308:
  store i64 %t305, ptr %l112
  br label %bb39
bb39:
  %t309 = load i64, ptr %l112, !tbaa !24
  store i64 %t309, ptr %l107, !tbaa !24
  br label %bb42
bb40:
  br label %bb41
bb41:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb42
bb42:
  %t310 = load i64, ptr %l107, !tbaa !24
  store i64 %t310, ptr %l12, !tbaa !24
  %t311 = load ptr, ptr %l0, !tbaa !29
  store ptr %t311, ptr %l114, !tbaa !29
  %t312 = load ptr, ptr %l11, !tbaa !29
  %t314 = getelementptr %"compiler/ast:StructBody", ptr %t312, i32 0, i32 3
  %t315 = getelementptr %"compiler/source:Span", ptr %t314, i32 0, i32 0
  %t316 = load i32, ptr %t315, !tbaa !23
  %t317 = load i64, ptr %l12, !tbaa !24
  %t319 = trunc i64 %t317 to i32
  %t322 = add i32 %t316, %t319
  %t323 = load ptr, ptr %l11, !tbaa !29
  %t325 = getelementptr %"compiler/ast:StructBody", ptr %t323, i32 0, i32 3
  %t326 = getelementptr %"compiler/source:Span", ptr %t325, i32 0, i32 0
  %t327 = load i32, ptr %t326, !tbaa !23
  %t328 = load i64, ptr %l12, !tbaa !24
  %t330 = add i64 %t328, 1
  %t332 = trunc i64 %t330 to i32
  %t335 = add i32 %t327, %t332
  %t338 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t322, i32 %t335)
  store %"compiler/source:Span" %t338, ptr %l126
  br label %bb43
bb43:
  %t339 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmptyDestructor(ptr %v0)
  store %"compiler/diagmsg:Msg" %t339, ptr %l127
  br label %bb44
bb44:
  %t340 = load ptr, ptr %l114, !tbaa !29
  %t341 = load %"compiler/source:Span", ptr %l126
  %t342 = load %"compiler/diagmsg:Msg", ptr %l127
  %t343 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t340, %"compiler/source:Span" %t341, %"compiler/diagmsg:Msg" %t342)
  store i64 %t343, ptr %l128
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s2)
  br label %bb46
bb46:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load ptr, ptr %l11, !tbaa !29
  %t347 = getelementptr %"compiler/ast:StructBody", ptr %t345, i32 0, i32 4
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  %t351 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v0, ptr %v0, ptr %t344, { i64, ptr } %t348)
  store ptr %t351, ptr %l132
  br label %bb47
bb47:
  %t352 = load ptr, ptr %l132, !tbaa !29
  store ptr %t352, ptr %l9, !tbaa !29
  br label %bb58
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb57
bb51:
  %t354 = icmp sge i64 0, 0
  br i1 %t354, label %bb52, label %bb53
bb52:
  %t356 = icmp sle i64 0, 1152921504606846975
  br i1 %t356, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_e7a3ae7e66c3138_2e8ed5b6f09d874)
  unreachable
bb54:
  %t358 = mul i64 0, 8
  %t359 = insertvalue { i64, ptr } undef, i64 0, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t362 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t360)
  store %"compiler/typed:Block" %t362, ptr %l137
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_e7a3ae7e66c3138_2e8ed5b6f09d874)
  unreachable
bb56:
  %t363 = load %"compiler/typed:Block", ptr %l137
  %t364 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:Block" %t363, ptr %t364
  store ptr %t364, ptr %l9, !tbaa !29
  br label %bb58
bb57:
  call void @__olang_check_failed(ptr @olang_loc_de922dec49c7f00c_86e7828aa2d91a60)
  unreachable
bb58:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t366)
  store ptr %t368, ptr %l140
  br label %bb59
bb59:
  %t369 = load ptr, ptr %l140, !tbaa !29
  %t370 = load ptr, ptr %l9, !tbaa !29
  %t373 = getelementptr %"compiler/typed:Body", ptr %t369, i32 0, i32 11
  store ptr %t370, ptr %t373, !tbaa !29
  %t374 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t374)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnVecField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %lp27 = alloca ptr
  %lp28 = alloca ptr
  %l29 = alloca ptr
  %lp31 = alloca ptr
  %l35 = alloca i32
  %l38 = alloca i1
  %l44 = alloca { i64, ptr }
  %l50 = alloca i64
  %l53 = alloca i64
  %l83 = alloca ptr
  %l88 = alloca i32
  %l89 = alloca i64
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca i1
  %l97 = alloca i1
  %l98 = alloca i64
  %l100 = alloca ptr
  %l104 = alloca i1
  %l110 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l118 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l123 = alloca %"compiler/diagmsg:Msg"
  %l124 = alloca i64
  %l128 = alloca { i64, ptr }
  %l134 = alloca i64
  %l137 = alloca i64
  %l158 = alloca { i64, ptr }
  %l159 = alloca i1
  %l164 = alloca { i64, ptr }
  %l165 = alloca i1
  %l171 = alloca ptr
  %l176 = alloca i32
  %l177 = alloca { i64, ptr }
  %l180 = alloca i1
  %l183 = alloca i1
  %l188 = alloca i1
  %l193 = alloca i1
  %l196 = alloca { i64, ptr }
  %l199 = alloca i1
  %l206 = alloca ptr
  %l210 = alloca { i64, ptr }
  %l213 = alloca i32
  %l214 = alloca { i64, ptr }
  %l221 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l244 = alloca ptr
  %l247 = alloca i1
  %l248 = alloca i64
  %l251 = alloca %"compiler/source:Span"
  %l255 = alloca { i64, ptr }
  %l259 = alloca i32
  %l260 = alloca ptr
  %l261 = alloca ptr
  %l262 = alloca %"compiler/source:Span"
  %l264 = alloca i32
  %l265 = alloca ptr
  %l268 = alloca %"compiler/typed:Slice"
  %l271 = alloca %"compiler/source:Span"
  %l273 = alloca i32
  %l274 = alloca ptr
  %l278 = alloca i32
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t403 = alloca { i64, [4 x i64] }, align 8
  %t428 = alloca { i64, [4 x i64] }, align 8
  %t455 = alloca { i64, [4 x i64] }, align 8
  %t522 = alloca { i64, [5 x i64] }, align 8
  %t546 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l35
  br label %bb1
bb1:
  %t9 = load i32, ptr %l35, !tbaa !23
  store i32 %t9, ptr %l6, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l6, !tbaa !23
  %t14 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l38
  br label %bb2
bb2:
  %t15 = load i1, ptr %l38, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l6, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s0, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l44
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  store i64 -1, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t32 = load i64, ptr %l10, !tbaa !24
  %t33 = load i64, ptr %l9, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = load i64, ptr %l11, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb12
bb9:
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load i64, ptr %l9, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l11, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l53, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l53, !tbaa !24
  store i64 %t58, ptr %l50, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l50, !tbaa !24
  store i64 %t59, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l12, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb14, label %bb15
bb14:
  br label %bb21
bb15:
  br label %bb16
bb16:
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l13, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l14, !tbaa !24
  %t78 = load i64, ptr %l14, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 %t78
  %t83 = load i32, ptr %t82, !tbaa !33
  %t84 = load i32, ptr %l5, !tbaa !23
  %t87 = icmp eq i32 %t83, %t84
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t89 = load i64, ptr %l14, !tbaa !24
  store i64 %t89, ptr %l8, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t91 = load i64, ptr %l13, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l13, !tbaa !24
  br label %bb13
bb21:
  %t95 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp slt i64 %t95, 0
  br i1 %t97, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  store ptr %t105, ptr %l83, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l6, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l88
  br label %bb25
bb25:
  %t116 = load ptr, ptr %l83, !tbaa !29
  %t117 = load i32, ptr %l88, !tbaa !23
  %t118 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t116, i32 %t117)
  store i64 %t118, ptr %l89
  br label %bb26
bb26:
  %t119 = load i64, ptr %l89, !tbaa !24
  store i64 %t119, ptr %l15, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l5, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t120, i32 %t121)
  store { i64, ptr } %t124, ptr %l92
  br label %bb27
bb27:
  %t125 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t125, ptr %l93, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i8, ptr %t127, i64 0
  %t129 = load i8, ptr %t128, !tbaa !32
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t129)
  store i1 %t131, ptr %l95
  br label %bb28
bb28:
  %t132 = load i1, ptr %l95, !tbaa !21
  %t133 = xor i1 %t132, true
  br i1 %t133, label %bb29, label %bb30
bb29:
  %t135 = load i64, ptr %l15, !tbaa !24
  store i64 %t135, ptr %l98, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t136)
  store ptr %t138, ptr %l100
  br label %bb31
bb30:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb32
bb31:
  %t139 = load ptr, ptr %l100, !tbaa !29
  %t141 = getelementptr %"compiler/check:frame", ptr %t139, i32 0, i32 1
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = load i64, ptr %l98, !tbaa !24
  %t145 = icmp ne i64 %t143, %t142
  store i1 %t145, ptr %l97, !tbaa !21
  br label %bb32
bb32:
  %t147 = load i1, ptr %l97, !tbaa !21
  br i1 %t147, label %bb33, label %bb34
bb33:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 0
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/load:Loader", ptr %t154, i32 0, i32 10
  %t157 = load i64, ptr %l15, !tbaa !24
  %t160 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t156, i64 %t157)
  store ptr %t160, ptr %l110
  br label %bb35
bb34:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb36
bb35:
  %t161 = load ptr, ptr %l110, !tbaa !29
  %t163 = getelementptr %"compiler/load:Module", ptr %t161, i32 0, i32 30
  %t164 = load i1, ptr %t163, !tbaa !21
  %t166 = xor i1 %t164, true
  store i1 %t166, ptr %l104, !tbaa !21
  br label %bb36
bb36:
  %t168 = load i1, ptr %l104, !tbaa !21
  br i1 %t168, label %bb37, label %bb38
bb37:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l114, !tbaa !29
  %t170 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t170, ptr %l115
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i32, ptr %l5, !tbaa !23
  %t175 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t171, i32 %t172)
  store { i64, ptr } %t175, ptr %l118
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l4, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t176, i32 %t177)
  store { i64, ptr } %t180, ptr %l121
  br label %bb40
bb40:
  %t181 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t188 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t188, { i64, ptr } %t187)
  store %"compiler/diagmsg:Msg" %t190, ptr %l123
  br label %bb41
bb41:
  %t191 = load ptr, ptr %l114, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l115
  %t193 = load %"compiler/diagmsg:Msg", ptr %l123
  %t194 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t191, %"compiler/source:Span" %t192, %"compiler/diagmsg:Msg" %t193)
  store i64 %t194, ptr %l124
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load i32, ptr %l4, !tbaa !23
  %t202 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s0, ptr %t198, i32 %t199)
  store { i64, ptr } %t202, ptr %l128
  br label %bb44
bb44:
  %t203 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t203, ptr %l16, !tbaa !27
  store i64 -1, ptr %l17, !tbaa !24
  store i64 -1, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t204 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t204, 0
  store i64 %t206, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t208 = load i64, ptr %l20, !tbaa !24
  %t209 = load i64, ptr %l19, !tbaa !24
  %t212 = icmp sgt i64 %t208, %t209
  br i1 %t212, label %bb45, label %bb46
bb45:
  %t214 = load i64, ptr %l21, !tbaa !24
  %t216 = icmp sgt i64 %t214, 0
  br i1 %t216, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb50
bb47:
  %t218 = load i64, ptr %l20, !tbaa !24
  %t219 = load i64, ptr %l19, !tbaa !24
  %t222 = sub i64 %t218, %t219
  %t223 = load i64, ptr %l21, !tbaa !24
  %t226 = add i64 %t222, %t223
  %t228 = sub i64 %t226, 1
  %t229 = load i64, ptr %l21, !tbaa !24
  %t232 = sdiv i64 %t228, %t229
  store i64 %t232, ptr %l137, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb49
bb49:
  %t234 = load i64, ptr %l137, !tbaa !24
  store i64 %t234, ptr %l134, !tbaa !24
  br label %bb50
bb50:
  %t235 = load i64, ptr %l134, !tbaa !24
  store i64 %t235, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb51
bb51:
  store %olang.scope zeroinitializer, ptr %s9
  %t236 = load i64, ptr %l23, !tbaa !24
  %t237 = load i64, ptr %l22, !tbaa !24
  %t240 = icmp slt i64 %t236, %t237
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb53:
  br label %bb54
bb54:
  %t244 = load i64, ptr %l19, !tbaa !24
  %t245 = load i64, ptr %l23, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = mul i64 %t245, %t246
  %t252 = add i64 %t244, %t249
  store i64 %t252, ptr %l24, !tbaa !24
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i64, ptr %l24, !tbaa !24
  %t257 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t258 = load ptr, ptr %t257, !tbaa !27
  %t259 = getelementptr i32, ptr %t258, i64 %t255
  %t260 = load i32, ptr %t259, !tbaa !33
  %t263 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t254, i32 %t260)
  store { i64, ptr } %t263, ptr %l158
  br label %bb55
bb55:
  %t264 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t265 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t264, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t265, ptr %l159
  br label %bb56
bb56:
  %t266 = load i1, ptr %l159, !tbaa !21
  br i1 %t266, label %bb57, label %bb58
bb57:
  %t267 = load i64, ptr %l24, !tbaa !24
  store i64 %t267, ptr %l17, !tbaa !24
  br label %bb59
bb58:
  br label %bb59
bb59:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i64, ptr %l24, !tbaa !24
  %t272 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr i32, ptr %t273, i64 %t270
  %t275 = load i32, ptr %t274, !tbaa !33
  %t278 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t269, i32 %t275)
  store { i64, ptr } %t278, ptr %l164
  br label %bb60
bb60:
  %t279 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t280 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s9, { i64, ptr } %t279, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t280, ptr %l165
  br label %bb61
bb61:
  %t281 = load i1, ptr %l165, !tbaa !21
  br i1 %t281, label %bb62, label %bb63
bb62:
  %t282 = load i64, ptr %l24, !tbaa !24
  store i64 %t282, ptr %l18, !tbaa !24
  br label %bb64
bb63:
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s9)
  br label %bb65
bb65:
  %t284 = load i64, ptr %l23, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l23, !tbaa !24
  br label %bb51
bb66:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/check:Checker", ptr %t288, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t293 = getelementptr %"compiler/generic:Program", ptr %t291, i32 0, i32 2
  store ptr %t293, ptr %l171, !tbaa !29
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/check:Checker", ptr %t294, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = getelementptr %"compiler/generic:Program", ptr %t297, i32 0, i32 2
  %t300 = load i32, ptr %l4, !tbaa !23
  %t303 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t299, i32 %t300)
  store i32 %t303, ptr %l176
  br label %bb67
bb67:
  %t304 = load ptr, ptr %l171, !tbaa !29
  %t305 = load i32, ptr %l176, !tbaa !23
  %t306 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t304, i32 %t305)
  store { i64, ptr } %t306, ptr %l177
  br label %bb68
bb68:
  %t307 = load { i64, ptr }, ptr %l177, !tbaa !27
  store { i64, ptr } %t307, ptr %l25, !tbaa !27
  %t308 = load i64, ptr %l17, !tbaa !24
  %t310 = icmp slt i64 %t308, 0
  br i1 %t310, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb71
bb70:
  %t312 = load i64, ptr %l18, !tbaa !24
  %t314 = icmp slt i64 %t312, 0
  store i1 %t314, ptr %l180, !tbaa !21
  br label %bb71
bb71:
  %t316 = load i1, ptr %l180, !tbaa !21
  br i1 %t316, label %bb72, label %bb73
bb72:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb74
bb73:
  %t317 = load i64, ptr %l17, !tbaa !24
  %t318 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t323 = icmp sge i64 %t317, %t320
  store i1 %t323, ptr %l183, !tbaa !21
  br label %bb74
bb74:
  %t325 = load i1, ptr %l183, !tbaa !21
  br i1 %t325, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l188, !tbaa !21
  br label %bb77
bb76:
  %t326 = load i64, ptr %l18, !tbaa !24
  %t327 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t327, 0
  %t332 = icmp sge i64 %t326, %t329
  store i1 %t332, ptr %l188, !tbaa !21
  br label %bb77
bb77:
  %t334 = load i1, ptr %l188, !tbaa !21
  br i1 %t334, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l193, !tbaa !21
  br label %bb81
bb79:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/check:Checker", ptr %t335, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t339 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t339, ptr %l196, !tbaa !27
  %t340 = load i64, ptr %l17, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr i32, ptr %t343, i64 %t340
  %t345 = load i32, ptr %t344, !tbaa !33
  %t348 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t338, i32 %t345)
  store i1 %t348, ptr %l199
  br label %bb80
bb80:
  %t349 = load i1, ptr %l199, !tbaa !21
  %t350 = xor i1 %t349, true
  store i1 %t350, ptr %l193, !tbaa !21
  br label %bb81
bb81:
  %t352 = load i1, ptr %l193, !tbaa !21
  br i1 %t352, label %bb82, label %bb83
bb82:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t353, %"compiler/source:Span" %t354, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d18, i32 0, i32 1) })
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb85:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/check:Checker", ptr %t358, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !29
  %t363 = getelementptr %"compiler/generic:Program", ptr %t361, i32 0, i32 2
  store ptr %t363, ptr %l206, !tbaa !29
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t369 = getelementptr %"compiler/generic:Program", ptr %t367, i32 0, i32 2
  %t370 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t370, ptr %l210, !tbaa !27
  %t371 = load i64, ptr %l17, !tbaa !24
  %t373 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr i32, ptr %t374, i64 %t371
  %t376 = load i32, ptr %t375, !tbaa !33
  %t379 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t369, i32 %t376)
  store i32 %t379, ptr %l213
  br label %bb86
bb86:
  %t380 = load ptr, ptr %l206, !tbaa !29
  %t381 = load i32, ptr %l213, !tbaa !23
  %t382 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t380, i32 %t381)
  store { i64, ptr } %t382, ptr %l214
  br label %bb87
bb87:
  %t383 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t383, ptr %l26, !tbaa !27
  %t384 = load i64, ptr %l8, !tbaa !24
  %t385 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t385, 0
  %t390 = icmp sge i64 %t384, %t387
  br i1 %t390, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb89:
  br label %bb90
bb90:
  %t393 = load %"compiler/source:Span", ptr %l1
  %t394 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t394, ptr %l221, !tbaa !27
  %t395 = load i64, ptr %l17, !tbaa !24
  %t397 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !27
  %t399 = getelementptr i32, ptr %t398, i64 %t395
  %t400 = load i32, ptr %t399, !tbaa !33
  %t401 = load ptr, ptr %l3, !tbaa !29
  %t402 = load i64, ptr %l17, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t403
  %t404 = getelementptr { i64, [4 x i64] }, ptr %t403, i32 0, i32 0
  store i64 3, ptr %t404
  %t406 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t393, 0
  %t408 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t406, i32 %t400, 1
  %t410 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t408, ptr %t401, 2
  %t412 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t410, i64 %t402, 3
  %t413 = getelementptr { i64, [4 x i64] }, ptr %t403, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t412, ptr %t413
  %t414 = load { i64, [4 x i64] }, ptr %t403
  %t415 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t415, ptr %lp27
  %t417 = load ptr, ptr %lp27
  store { i64, [4 x i64] } %t414, ptr %t417
  %t418 = load %"compiler/source:Span", ptr %l1
  %t419 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t419, ptr %l228, !tbaa !27
  %t420 = load i64, ptr %l8, !tbaa !24
  %t422 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr i32, ptr %t423, i64 %t420
  %t425 = load i32, ptr %t424, !tbaa !33
  %t426 = load ptr, ptr %lp27
  %t427 = load i64, ptr %l8, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t428
  %t429 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 0
  store i64 3, ptr %t429
  %t431 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t418, 0
  %t433 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t431, i32 %t425, 1
  %t435 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t433, ptr %t426, 2
  %t437 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t435, i64 %t427, 3
  %t438 = getelementptr { i64, [4 x i64] }, ptr %t428, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t437, ptr %t438
  %t439 = load { i64, [4 x i64] }, ptr %t428
  %t440 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store ptr %t440, ptr %lp28
  %t442 = load ptr, ptr %lp28
  store { i64, [4 x i64] } %t439, ptr %t442
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load %"compiler/source:Span", ptr %l1
  %t445 = load %"compiler/source:Span", ptr %l1
  %t446 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t446, ptr %l237, !tbaa !27
  %t447 = load i64, ptr %l18, !tbaa !24
  %t449 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !27
  %t451 = getelementptr i32, ptr %t450, i64 %t447
  %t452 = load i32, ptr %t451, !tbaa !33
  %t453 = load ptr, ptr %l3, !tbaa !29
  %t454 = load i64, ptr %l18, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t455
  %t456 = getelementptr { i64, [4 x i64] }, ptr %t455, i32 0, i32 0
  store i64 3, ptr %t456
  %t458 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t445, 0
  %t460 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t458, i32 %t452, 1
  %t462 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t460, ptr %t453, 2
  %t464 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t462, i64 %t454, 3
  %t465 = getelementptr { i64, [4 x i64] }, ptr %t455, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t464, ptr %t465
  %t466 = load { i64, [4 x i64] }, ptr %t455
  %t468 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t466, ptr %t468
  %t472 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t443, %"compiler/source:Span" %t444, ptr %t468)
  store ptr %t472, ptr %l244
  br label %bb91
bb91:
  %t473 = load ptr, ptr %l244, !tbaa !29
  store ptr %t473, ptr %l29, !tbaa !29
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load ptr, ptr %lp28
  %t478 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v2, ptr %t474, ptr %t475)
  store i1 %t478, ptr %l247
  br label %bb92
bb92:
  %t479 = load i1, ptr %l247, !tbaa !21
  br i1 %t479, label %bb93, label %bb94
bb93:
  %t480 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t480, ptr %l248, !tbaa !24
  br label %bb95
bb94:
  %t482 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t482, ptr %l248, !tbaa !24
  br label %bb95
bb95:
  %t484 = load i64, ptr %l248, !tbaa !24
  %t485 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t485, ptr %l251
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = getelementptr %"compiler/check:Checker", ptr %t486, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !29
  %t491 = getelementptr %"compiler/generic:Program", ptr %t489, i32 0, i32 2
  %t492 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t492, ptr %l255, !tbaa !27
  %t493 = load i64, ptr %l8, !tbaa !24
  %t495 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = getelementptr i32, ptr %t496, i64 %t493
  %t498 = load i32, ptr %t497, !tbaa !33
  %t503 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t491, i32 %t498, i64 %t484)
  store i32 %t503, ptr %l259
  br label %bb96
bb96:
  %t504 = load ptr, ptr %lp28
  store ptr %t504, ptr %l260, !tbaa !29
  %t505 = load ptr, ptr %l0, !tbaa !29
  store ptr %t505, ptr %l261, !tbaa !29
  %t506 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t506, ptr %l262
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t507)
  store i32 %t509, ptr %l264
  br label %bb97
bb97:
  %t510 = load ptr, ptr %l261, !tbaa !29
  %t511 = load %"compiler/source:Span", ptr %l262
  %t512 = load i32, ptr %l264, !tbaa !23
  %t513 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t510, %"compiler/source:Span" %t511, i32 %t512, i64 0)
  store ptr %t513, ptr %l265
  br label %bb98
bb98:
  %t514 = load ptr, ptr %l29, !tbaa !29
  %t515 = load ptr, ptr %l260, !tbaa !29
  %t516 = load ptr, ptr %l265, !tbaa !29
  %t519 = call %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t515, ptr %t516, ptr %t514, i32 0)
  store %"compiler/typed:Slice" %t519, ptr %l268
  br label %bb99
bb99:
  %t520 = load %"compiler/typed:Slice", ptr %l268
  %t521 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Slice" %t520, ptr %t521
  store { i64, [5 x i64] } zeroinitializer, ptr %t522
  %t523 = getelementptr { i64, [5 x i64] }, ptr %t522, i32 0, i32 0
  store i64 10, ptr %t523
  %t524 = load %"compiler/source:Span", ptr %l251
  %t525 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t524, 0
  %t526 = load i32, ptr %l259, !tbaa !23
  %t527 = insertvalue { %"compiler/source:Span", i32, ptr } %t525, i32 %t526, 1
  %t529 = insertvalue { %"compiler/source:Span", i32, ptr } %t527, ptr %t521, 2
  %t530 = getelementptr { i64, [5 x i64] }, ptr %t522, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t529, ptr %t530
  %t531 = load { i64, [5 x i64] }, ptr %t522
  %t532 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t532, ptr %lp31
  %t534 = load ptr, ptr %lp31
  store { i64, [5 x i64] } %t531, ptr %t534
  %t535 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t535, ptr %l271
  %t536 = load ptr, ptr %lp31
  %t538 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t536)
  store i32 %t538, ptr %l273
  br label %bb100
bb100:
  %t539 = load ptr, ptr %lp31
  store ptr %t539, ptr %l274, !tbaa !29
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load %"compiler/source:Span", ptr %l1
  %t545 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t540, i32 8, %"compiler/source:Span" %t541)
  store i32 %t545, ptr %l278
  br label %bb101
bb101:
  store { i64, [4 x i64] } zeroinitializer, ptr %t546
  %t547 = getelementptr { i64, [4 x i64] }, ptr %t546, i32 0, i32 0
  store i64 6, ptr %t547
  %t548 = load %"compiler/source:Span", ptr %l271
  %t549 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t548, 0
  %t550 = load i32, ptr %l273, !tbaa !23
  %t551 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t549, i32 %t550, 1
  %t552 = load ptr, ptr %l274, !tbaa !29
  %t553 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t551, ptr %t552, 2
  %t554 = load i32, ptr %l278, !tbaa !23
  %t555 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t553, i32 %t554, 3
  %t556 = getelementptr { i64, [4 x i64] }, ptr %t546, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t555, ptr %t556
  %t557 = load { i64, [4 x i64] }, ptr %t546
  %t559 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t557, ptr %t559
  call void @__olang_scope_close(ptr %s0)
  store ptr %t559, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdReads(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l33 = alloca { i64, ptr }
  %l42 = alloca i1
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i1
  %l73 = alloca { i64, ptr }
  %l77 = alloca i1
  %l78 = alloca i1
  %l79 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l99 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca i1
  %l104 = alloca i1
  %l105 = alloca { i64, ptr }
  %l108 = alloca i1
  %l109 = alloca i1
  %l110 = alloca { i64, ptr }
  %l116 = alloca i1
  %rv = alloca i1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t10, i64 %a1)
  store { i64, ptr } %t14, ptr %l17
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t17 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  %t20 = sext i32 %t18 to i64
  store i64 %t20, ptr %l20, !tbaa !24
  %t21 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t22 = load i32, ptr %t21, !tbaa !23
  %t24 = sext i32 %t22 to i64
  store i64 %t24, ptr %l22, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l23, !tbaa !24
  %t27 = load i64, ptr %l20, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb2, label %bb3
bb2:
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = load i64, ptr %l22, !tbaa !24
  %t32 = icmp sle i64 %t30, %t31
  br i1 %t32, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f259f6ca06e66809_b1ef05920a904ef5)
  unreachable
bb4:
  %t34 = load i64, ptr %l22, !tbaa !24
  %t35 = load i64, ptr %l23, !tbaa !24
  %t36 = icmp sle i64 %t34, %t35
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f259f6ca06e66809_b1ef05920a904ef5)
  unreachable
bb6:
  %t38 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l20, !tbaa !24
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = getelementptr i8, ptr %t39, i64 %t40
  %t43 = sub i64 %t41, %t40
  %t44 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t42, 1
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  store i1 false, ptr %l7, !tbaa !21
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f259f6ca06e66809_b1ef05920a904ef5)
  unreachable
bb8:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t53 = icmp slt i64 %t47, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb9, label %bb10
bb9:
  br label %bb63
bb10:
  br label %bb11
bb11:
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t57, ptr %l33, !tbaa !27
  %t58 = load i64, ptr %l6, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i8, ptr %t61, i64 %t58
  %t63 = load i8, ptr %t62, !tbaa !32
  %t67 = icmp eq i8 %t63, 34
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t69 = load i1, ptr %l7, !tbaa !21
  %t71 = xor i1 %t69, true
  store i1 %t71, ptr %l7, !tbaa !21
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t73 = load i1, ptr %l7, !tbaa !21
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t78 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t83 = add i64 %t77, %t80
  %t84 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t89 = icmp sle i64 %t83, %t86
  store i1 %t89, ptr %l42, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t91 = load i1, ptr %l42, !tbaa !21
  br i1 %t91, label %bb18, label %bb19
bb18:
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l51, !tbaa !27
  %t93 = load i64, ptr %l6, !tbaa !24
  store i64 %t93, ptr %l52, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t100 = add i64 %t94, %t97
  store i64 %t100, ptr %l56, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l57, !tbaa !24
  %t103 = load i64, ptr %l52, !tbaa !24
  %t104 = icmp sge i64 %t103, 0
  br i1 %t104, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb27
bb20:
  %t106 = load i64, ptr %l52, !tbaa !24
  %t107 = load i64, ptr %l56, !tbaa !24
  %t108 = icmp sle i64 %t106, %t107
  br i1 %t108, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798)
  unreachable
bb22:
  %t110 = load i64, ptr %l56, !tbaa !24
  %t111 = load i64, ptr %l57, !tbaa !24
  %t112 = icmp sle i64 %t110, %t111
  br i1 %t112, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798)
  unreachable
bb24:
  %t114 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l52, !tbaa !24
  %t117 = load i64, ptr %l56, !tbaa !24
  %t118 = getelementptr i8, ptr %t115, i64 %t116
  %t119 = sub i64 %t117, %t116
  %t120 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t121, { i64, ptr } %t122)
  store i1 %t125, ptr %l63
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798)
  unreachable
bb26:
  %t126 = load i1, ptr %l63, !tbaa !21
  store i1 %t126, ptr %l50, !tbaa !21
  br label %bb27
bb27:
  %t127 = load i1, ptr %l50, !tbaa !21
  br i1 %t127, label %bb28, label %bb29
bb28:
  %t128 = load i64, ptr %l6, !tbaa !24
  %t130 = icmp eq i64 %t128, 0
  br i1 %t130, label %bb30, label %bb31
bb29:
  br label %bb61
bb30:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb43
bb31:
  %t132 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t132, ptr %l67, !tbaa !27
  %t133 = load i64, ptr %l6, !tbaa !24
  %t135 = sub i64 %t133, 1
  %t137 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i8, ptr %t138, i64 %t135
  %t140 = load i8, ptr %t139, !tbaa !32
  %t142 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t140)
  store i1 %t142, ptr %l71
  br label %bb32
bb32:
  %t143 = load i1, ptr %l71, !tbaa !21
  br i1 %t143, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb36
bb34:
  %t144 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t144, ptr %l73, !tbaa !27
  %t145 = load i64, ptr %l6, !tbaa !24
  %t147 = sub i64 %t145, 1
  %t149 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 %t147
  %t152 = load i8, ptr %t151, !tbaa !32
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t152)
  store i1 %t154, ptr %l77
  br label %bb35
bb35:
  %t155 = load i1, ptr %l77, !tbaa !21
  store i1 %t155, ptr %l72, !tbaa !21
  br label %bb36
bb36:
  %t156 = load i1, ptr %l72, !tbaa !21
  br i1 %t156, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb39
bb38:
  %t157 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t157, ptr %l79, !tbaa !27
  %t158 = load i64, ptr %l6, !tbaa !24
  %t160 = sub i64 %t158, 1
  %t162 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i8, ptr %t163, i64 %t160
  %t165 = load i8, ptr %t164, !tbaa !32
  %t167 = icmp eq i8 %t165, 95
  store i1 %t167, ptr %l78, !tbaa !21
  br label %bb39
bb39:
  %t169 = load i1, ptr %l78, !tbaa !21
  br i1 %t169, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb42
bb41:
  %t170 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t170, ptr %l85, !tbaa !27
  %t171 = load i64, ptr %l6, !tbaa !24
  %t173 = sub i64 %t171, 1
  %t175 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t173
  %t178 = load i8, ptr %t177, !tbaa !32
  %t180 = icmp eq i8 %t178, 46
  store i1 %t180, ptr %l84, !tbaa !21
  br label %bb42
bb42:
  %t182 = load i1, ptr %l84, !tbaa !21
  %t183 = xor i1 %t182, true
  store i1 %t183, ptr %l66, !tbaa !21
  br label %bb43
bb43:
  %t185 = load i1, ptr %l66, !tbaa !21
  store i1 %t185, ptr %l9, !tbaa !21
  %t186 = load i64, ptr %l6, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t192 = add i64 %t186, %t189
  store i64 %t192, ptr %l10, !tbaa !24
  %t194 = load i64, ptr %l10, !tbaa !24
  %t195 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t200 = icmp sge i64 %t194, %t197
  br i1 %t200, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb54
bb45:
  %t202 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t202, ptr %l100, !tbaa !27
  %t203 = load i64, ptr %l10, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i8, ptr %t206, i64 %t203
  %t208 = load i8, ptr %t207, !tbaa !32
  %t210 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t208)
  store i1 %t210, ptr %l103
  br label %bb46
bb46:
  %t211 = load i1, ptr %l103, !tbaa !21
  br i1 %t211, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb50
bb48:
  %t212 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t212, ptr %l105, !tbaa !27
  %t213 = load i64, ptr %l10, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i8, ptr %t216, i64 %t213
  %t218 = load i8, ptr %t217, !tbaa !32
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t218)
  store i1 %t220, ptr %l108
  br label %bb49
bb49:
  %t221 = load i1, ptr %l108, !tbaa !21
  store i1 %t221, ptr %l104, !tbaa !21
  br label %bb50
bb50:
  %t222 = load i1, ptr %l104, !tbaa !21
  br i1 %t222, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb53
bb52:
  %t223 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t223, ptr %l110, !tbaa !27
  %t224 = load i64, ptr %l10, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr i8, ptr %t227, i64 %t224
  %t229 = load i8, ptr %t228, !tbaa !32
  %t231 = icmp eq i8 %t229, 95
  store i1 %t231, ptr %l109, !tbaa !21
  br label %bb53
bb53:
  %t233 = load i1, ptr %l109, !tbaa !21
  %t234 = xor i1 %t233, true
  store i1 %t234, ptr %l99, !tbaa !21
  br label %bb54
bb54:
  %t236 = load i1, ptr %l99, !tbaa !21
  store i1 %t236, ptr %l11, !tbaa !21
  %t237 = load i1, ptr %l9, !tbaa !21
  br i1 %t237, label %bb55, label %bb56
bb55:
  %t239 = load i1, ptr %l11, !tbaa !21
  store i1 %t239, ptr %l116, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb57
bb57:
  %t241 = load i1, ptr %l116, !tbaa !21
  br i1 %t241, label %bb58, label %bb59
bb58:
  store i1 true, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t243 = load i64, ptr %l6, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l6, !tbaa !24
  br label %bb62
bb62:
  br label %bb8
bb63:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecopyEffects(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i1
  %l18 = alloca i64
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca %"compiler/effects:Facts"
  %l42 = alloca { i64, ptr }
  %l44 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i64
  %l58 = alloca i64
  %l61 = alloca ptr
  %l65 = alloca i64
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 69
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l18
  br label %bb4
bb4:
  %t21 = load i64, ptr %l18, !tbaa !24
  %t22 = icmp sgt i64 %t21, 0
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 9
  store ptr null, ptr %t27, !tbaa !29
  %t28 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t28, ptr %l21
  br label %bb9
bb9:
  %t29 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l1
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 69
  store ptr %t32, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t34 = load i64, ptr %l3, !tbaa !24
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l26
  br label %bb11
bb11:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l26, !tbaa !24
  %t40 = icmp slt i64 %t38, %t39
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb50
bb13:
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t44, i64 %t45)
  store i64 %t48, ptr %l31
  br label %bb15
bb15:
  %t49 = load i64, ptr %l31, !tbaa !24
  store i64 %t49, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t50)
  store i1 %t53, ptr %l34
  br label %bb16
bb16:
  %t54 = load i1, ptr %l34, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb18:
  br label %bb19
bb19:
  %t55 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l1, i64 %t55, i1 true)
  br label %bb20
bb20:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t58)
  store ptr %t60, ptr %l38
  br label %bb21
bb21:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = load ptr, ptr %l38, !tbaa !29
  %t64 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t62, i64 %t61)
  store %"compiler/effects:Facts" %t64, ptr %l40
  br label %bb22
bb22:
  %t66 = call { i64, ptr } @compiler_2fcheck_2ecopyDoes(ptr %s3, ptr %s3, ptr %l40)
  store { i64, ptr } %t66, ptr %l42
  br label %bb23
bb23:
  %t67 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t67, ptr %l5, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t70 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s3, { i64, ptr } %t68, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t70, ptr %l44
  br label %bb24
bb24:
  %t71 = load i1, ptr %l44, !tbaa !21
  br i1 %t71, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb26:
  br label %bb27
bb27:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 14
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l48
  br label %bb28
bb28:
  %t79 = load ptr, ptr %l48, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 1
  %t82 = load { i64, [2 x i64] }, ptr %t81
  store { i64, [2 x i64] } %t82, ptr %l6
  %t84 = load { i64, [2 x i64] }, ptr %l6
  %t86 = extractvalue { i64, [2 x i64] } %t84, 0
  %t87 = icmp eq i64 %t86, 0
  br i1 %t87, label %bb29, label %bb30
bb29:
  %t89 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t90 = getelementptr { i64 }, ptr %t89, i32 0, i32 0
  %t91 = load i64, ptr %t90
  store i64 %t91, ptr %l7, !tbaa !24
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i64, ptr %l7, !tbaa !24
  %t100 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t96, i64 %t97)
  store i64 %t100, ptr %l58
  br label %bb32
bb32:
  %t101 = load i64, ptr %l58, !tbaa !24
  store i64 %t101, ptr %l51, !tbaa !24
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i64 -1, ptr %l51, !tbaa !24
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_d80c9f6a0018af5a_89f102f42b80e70e)
  unreachable
bb38:
  %t102 = load i64, ptr %l51, !tbaa !24
  store i64 %t102, ptr %l8, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = icmp slt i64 %t103, 0
  br i1 %t105, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb40:
  br label %bb41
bb41:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l61, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i64, ptr %l8, !tbaa !24
  %t115 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t111, i64 %t112)
  store i64 %t115, ptr %l65
  br label %bb42
bb42:
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t117 = load ptr, ptr %l61, !tbaa !29
  %t118 = load i64, ptr %l65, !tbaa !24
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t117, i64 -1, i64 %t118, i32 %t116, i32 0)
  store ptr %t120, ptr %l67
  br label %bb43
bb43:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l68, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l69, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l73
  br label %bb44
bb44:
  %t131 = load ptr, ptr %l69, !tbaa !29
  %t132 = load ptr, ptr %l73, !tbaa !29
  %t133 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t131, ptr %t132)
  store %"compiler/source:Span" %t133, ptr %l74
  br label %bb45
bb45:
  %t134 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyDoesMore(ptr %s3, ptr %v0, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l76
  br label %bb46
bb46:
  %t137 = load ptr, ptr %l68, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l74
  %t139 = load %"compiler/diagmsg:Msg", ptr %l76
  %t140 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l77
  br label %bb47
bb47:
  %t141 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t141)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb49:
  %t143 = load i64, ptr %l3, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l3, !tbaa !24
  br label %bb10
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, i64 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l20 = alloca i1
  %l26 = alloca ptr
  %l30 = alloca i32
  %l33 = alloca i64
  %l35 = alloca ptr
  %l40 = alloca ptr
  %l43 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i64
  %l77 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l84 = alloca i32
  %l85 = alloca i32
  %l92 = alloca i1
  %l100 = alloca ptr
  %l104 = alloca ptr
  %l107 = alloca %"compiler/source:Span"
  %l108 = alloca i32
  %l109 = alloca i32
  %l113 = alloca { i64, ptr }
  %l115 = alloca %"compiler/typed:Make"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t203 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
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
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l20
  br label %bb1
bb1:
  %t11 = load i1, ptr %l20, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l1
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = load i64, ptr %l4, !tbaa !24
  %t22 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t14, %"compiler/source:Span" %t15, i32 %t16, i64 %t17)
  store ptr %t22, ptr %l26
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load ptr, ptr %l26, !tbaa !29
  store ptr %t23, ptr %rv
  br label %ret
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t29, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i32 %t31, ptr %l30
  br label %bb6
bb6:
  %t32 = load i32, ptr %l30, !tbaa !23
  store i32 %t32, ptr %l6, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 36
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l33
  br label %bb7
bb7:
  %t38 = load i64, ptr %l33, !tbaa !24
  store i64 %t38, ptr %l7, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 36
  store ptr %t41, ptr %l35, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l1
  %t44 = load i32, ptr %l6, !tbaa !23
  %t45 = load i64, ptr %l4, !tbaa !24
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t42, %"compiler/source:Span" %t43, i32 %t44, i64 %t45)
  store ptr %t50, ptr %l40
  br label %bb8
bb8:
  %t51 = load ptr, ptr %l35, !tbaa !29
  %t52 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t51, ptr %t52)
  br label %bb9
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  store ptr %t58, ptr %l43, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l48
  br label %bb10
bb10:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = load i32, ptr %l48, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l49
  br label %bb11
bb11:
  %t72 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t72, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb12, label %bb13
bb12:
  %t83 = load i64, ptr %l11, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb17
bb14:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l11, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l58, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb16
bb16:
  %t103 = load i64, ptr %l58, !tbaa !24
  store i64 %t103, ptr %l55, !tbaa !24
  br label %bb17
bb17:
  %t104 = load i64, ptr %l55, !tbaa !24
  store i64 %t104, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb18
bb18:
  %t105 = load i64, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l12, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb19, label %bb20
bb19:
  br label %bb37
bb20:
  br label %bb21
bb21:
  %t113 = load i64, ptr %l9, !tbaa !24
  %t114 = load i64, ptr %l13, !tbaa !24
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l14, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  store ptr %t126, ptr %l77, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t133, ptr %l81, !tbaa !27
  %t134 = load i64, ptr %l14, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i32, ptr %t137, i64 %t134
  %t139 = load i32, ptr %t138, !tbaa !33
  %t142 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t132, i32 %t139)
  store i32 %t142, ptr %l84
  br label %bb22
bb22:
  %t143 = load ptr, ptr %l77, !tbaa !29
  %t144 = load i32, ptr %l84, !tbaa !23
  %t145 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t145, ptr %l85
  br label %bb23
bb23:
  %t146 = load i32, ptr %l85, !tbaa !23
  store i32 %t146, ptr %l15, !tbaa !23
  %t147 = load i32, ptr %l15, !tbaa !23
  %t148 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t151 = icmp eq i32 %t147, %t148
  br i1 %t151, label %bb24, label %bb25
bb24:
  br label %bb36
bb25:
  br label %bb26
bb26:
  %t153 = load i64, ptr %l14, !tbaa !24
  %t157 = icmp eq i64 %t153, %a3
  br i1 %t157, label %bb27, label %bb28
bb27:
  %t159 = load ptr, ptr %l5, !tbaa !29
  %t161 = icmp eq ptr %t159, null
  %t163 = xor i1 %t161, true
  store i1 %t163, ptr %l92, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb29
bb29:
  %t165 = load i1, ptr %l92, !tbaa !21
  br i1 %t165, label %bb30, label %bb31
bb30:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 36
  %t169 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t168, ptr %t169)
  br label %bb32
bb31:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/check:Checker", ptr %t172, i32 0, i32 36
  store ptr %t174, ptr %l100, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load %"compiler/source:Span", ptr %l1
  %t177 = load i32, ptr %l15, !tbaa !23
  %t181 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t175, %"compiler/source:Span" %t176, i32 %t177, i64 0)
  store ptr %t181, ptr %l104
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t182 = load ptr, ptr %l100, !tbaa !29
  %t183 = load ptr, ptr %l104, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t182, ptr %t183)
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t184 = load i64, ptr %l13, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l13, !tbaa !24
  br label %bb18
bb37:
  %t188 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t188, ptr %l107
  %t189 = load i32, ptr %l2, !tbaa !23
  store i32 %t189, ptr %l108, !tbaa !23
  store i32 0, ptr %l109
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/check:Checker", ptr %t190, i32 0, i32 36
  %t193 = load i64, ptr %l7, !tbaa !24
  %t196 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t192, i64 %t193)
  store { i64, ptr } %t196, ptr %l113
  br label %bb38
bb38:
  %t197 = load i32, ptr %l109, !range !{i32 0, i32 5}
  %t198 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t200 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v2, ptr %v2, i32 %t197, i64 0, { i64, ptr } %t198, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t200, ptr %l115
  br label %bb39
bb39:
  %t201 = load %"compiler/typed:Make", ptr %l115
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/typed:Make" %t201, ptr %t202
  store { i64, [5 x i64] } zeroinitializer, ptr %t203
  %t204 = getelementptr { i64, [5 x i64] }, ptr %t203, i32 0, i32 0
  store i64 7, ptr %t204
  %t205 = load %"compiler/source:Span", ptr %l107
  %t206 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t205, 0
  %t207 = load i32, ptr %l108, !tbaa !23
  %t208 = insertvalue { %"compiler/source:Span", i32, ptr } %t206, i32 %t207, 1
  %t210 = insertvalue { %"compiler/source:Span", i32, ptr } %t208, ptr %t202, 2
  %t211 = getelementptr { i64, [5 x i64] }, ptr %t203, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t210, ptr %t211
  %t212 = load { i64, [5 x i64] }, ptr %t203
  %t214 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t212, ptr %t214
  call void @__olang_scope_close(ptr %s0)
  store ptr %t214, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca { i64, ptr }
  %lp9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l68 = alloca i64
  %l73 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l87 = alloca i64
  %l90 = alloca i64
  %l109 = alloca { i64, ptr }
  %l115 = alloca i1
  %l117 = alloca { i64, ptr }
  %l120 = alloca i1
  %l121 = alloca i1
  %l125 = alloca { i64, ptr }
  %l128 = alloca i64
  %l133 = alloca ptr
  %l136 = alloca ptr
  %l138 = alloca %"compiler/source:Span"
  %l142 = alloca ptr
  %l143 = alloca i1
  %l150 = alloca i1
  %l152 = alloca i1
  %l158 = alloca %"compiler/source:Span"
  %l159 = alloca i32
  %l169 = alloca %"compiler/typed:Call"
  %rv = alloca ptr
  %t141 = alloca i64
  %t277 = alloca { i64, [5 x i64] }, align 8
  %t354 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l22, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l22, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l3, !tbaa !23
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t28, i32 0, i32 2
  %t30 = load ptr, ptr %t29
  store ptr %t30, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Call", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l6, !tbaa !29
  %t39 = load ptr, ptr %l6, !tbaa !29
  store ptr %t39, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t40 = load ptr, ptr %l36, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb6, label %bb7
bb6:
  %t43 = load ptr, ptr %l36, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 5}
  %t46 = icmp eq i64 %t44, 0
  store i1 %t46, ptr %l37, !tbaa !21
  br label %bb7
bb7:
  %t47 = load i1, ptr %l37, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l6, !tbaa !29
  %t54 = getelementptr { i64, [3 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { i32 }, ptr %t54, i32 0, i32 0
  %t56 = load i32, ptr %t55
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  store ptr %t63, ptr %l46, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l49, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 14
  %t75 = sext i32 %t56 to i64
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t72, i64 %t75)
  store ptr %t78, ptr %l54
  br label %bb11
bb11:
  %t79 = load ptr, ptr %l54, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %t81, !tbaa !23
  %t83 = load ptr, ptr %l49, !tbaa !29
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t83, i32 %t82)
  store i32 %t85, ptr %l57
  br label %bb12
bb12:
  %t86 = load ptr, ptr %l46, !tbaa !29
  %t87 = load i32, ptr %l57, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t86, i32 %t87)
  store { i64, ptr } %t88, ptr %l58
  br label %bb13
bb13:
  %t89 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t89, ptr %l8, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Call", ptr %t93, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp ne i64 %t92, %t98
  br i1 %t101, label %bb14, label %bb15
bb14:
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Call", ptr %t105, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l68, !tbaa !24
  %t111 = load ptr, ptr %l5, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Call", ptr %t111, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t118 = icmp sgt i64 %t116, 0
  br i1 %t118, label %bb17, label %bb18
bb17:
  %t120 = load ptr, ptr %l5, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Call", ptr %t120, i32 0, i32 1
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l75, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 0
  %t127 = load ptr, ptr %t126, !tbaa !39
  store ptr %t127, ptr %l73, !tbaa !29
  br label %bb19
bb18:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l73, !tbaa !29
  br label %bb19
bb19:
  %t131 = load i64, ptr %l68, !tbaa !24
  %t132 = icmp sge i64 %t131, 0
  br i1 %t132, label %bb20, label %bb21
bb20:
  %t134 = load i64, ptr %l68, !tbaa !24
  %t135 = icmp sle i64 %t134, 1152921504606846975
  br i1 %t135, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b20d72dd39706ad2_1f0b24543f01d106)
  unreachable
bb22:
  %t137 = load i64, ptr %l68, !tbaa !24
  %t138 = mul i64 %t137, 8
  %t139 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t138)
  %t140 = load ptr, ptr %l73, !tbaa !29
  store i64 0, ptr %t141
  br label %fill.142
fill.142:
  %t145 = load i64, ptr %t141
  %t146 = icmp slt i64 %t145, %t137
  br i1 %t146, label %fillb.143, label %filld.144
fillb.143:
  %t147 = getelementptr ptr, ptr %t139, i64 %t145
  store ptr %t140, ptr %t147
  %t148 = add i64 %t145, 1
  store i64 %t148, ptr %t141
  br label %fill.142
filld.144:
  %t149 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t139, 1
  %t151 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t151, ptr %lp9
  %t153 = load ptr, ptr %lp9
  store { i64, ptr } %t150, ptr %t153, !tbaa !27
  store i1 false, ptr %l10, !tbaa !21
  store i1 true, ptr %l11, !tbaa !21
  store i64 0, ptr %l12, !tbaa !24
  %t154 = load ptr, ptr %l5, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Call", ptr %t154, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t162 = load i64, ptr %l12, !tbaa !24
  %t165 = icmp sgt i64 %t161, %t162
  br i1 %t165, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_b20d72dd39706ad2_1f0b24543f01d106)
  unreachable
bb24:
  %t167 = load i64, ptr %l14, !tbaa !24
  %t169 = icmp sgt i64 %t167, 0
  br i1 %t169, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb29
bb26:
  %t171 = load i64, ptr %l13, !tbaa !24
  %t172 = load i64, ptr %l12, !tbaa !24
  %t175 = sub i64 %t171, %t172
  %t176 = load i64, ptr %l14, !tbaa !24
  %t179 = add i64 %t175, %t176
  %t181 = sub i64 %t179, 1
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = sdiv i64 %t181, %t182
  store i64 %t185, ptr %l90, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb28
bb28:
  %t187 = load i64, ptr %l90, !tbaa !24
  store i64 %t187, ptr %l87, !tbaa !24
  br label %bb29
bb29:
  %t188 = load i64, ptr %l87, !tbaa !24
  store i64 %t188, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t189 = load i64, ptr %l16, !tbaa !24
  %t190 = load i64, ptr %l15, !tbaa !24
  %t193 = icmp slt i64 %t189, %t190
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb31, label %bb32
bb31:
  br label %bb57
bb32:
  br label %bb33
bb33:
  %t197 = load i64, ptr %l12, !tbaa !24
  %t198 = load i64, ptr %l16, !tbaa !24
  %t199 = load i64, ptr %l14, !tbaa !24
  %t202 = mul i64 %t198, %t199
  %t205 = add i64 %t197, %t202
  store i64 %t205, ptr %l17, !tbaa !24
  %t207 = load ptr, ptr %l5, !tbaa !29
  %t209 = getelementptr %"compiler/typed:Call", ptr %t207, i32 0, i32 1
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  store { i64, ptr } %t210, ptr %l109, !tbaa !27
  %t211 = load i64, ptr %l17, !tbaa !24
  %t213 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr ptr, ptr %t214, i64 %t211
  %t216 = load ptr, ptr %t215, !tbaa !39
  store ptr %t216, ptr %l18, !tbaa !29
  %t218 = load i64, ptr %l17, !tbaa !24
  %t219 = load ptr, ptr %l18, !tbaa !29
  %t221 = load ptr, ptr %lp9
  %t223 = getelementptr { i64, ptr }, ptr %t221, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = getelementptr ptr, ptr %t224, i64 %t218
  store ptr %t219, ptr %t225, !tbaa !39
  %t226 = load i1, ptr %l11, !tbaa !21
  br i1 %t226, label %bb34, label %bb35
bb34:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t229, ptr %l117, !tbaa !27
  %t230 = load i64, ptr %l17, !tbaa !24
  %t232 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr i32, ptr %t233, i64 %t230
  %t235 = load i32, ptr %t234, !tbaa !33
  %t238 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t228, i32 %t235)
  store i1 %t238, ptr %l120
  br label %bb36
bb35:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb37
bb36:
  %t239 = load i1, ptr %l120, !tbaa !21
  store i1 %t239, ptr %l115, !tbaa !21
  br label %bb37
bb37:
  %t240 = load i1, ptr %l115, !tbaa !21
  br i1 %t240, label %bb38, label %bb39
bb38:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/check:Checker", ptr %t241, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = getelementptr %"compiler/generic:Program", ptr %t244, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t247, ptr %l125, !tbaa !27
  %t248 = load i64, ptr %l17, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t256 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t246, i32 %t253)
  store i64 %t256, ptr %l128
  br label %bb40
bb39:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb41
bb40:
  %t257 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t258 = load i64, ptr %l128, !tbaa !24
  %t260 = and i64 %t258, %t257
  %t262 = icmp ne i64 %t260, 0
  store i1 %t262, ptr %l121, !tbaa !21
  br label %bb41
bb41:
  %t264 = load i1, ptr %l121, !tbaa !21
  br i1 %t264, label %bb42, label %bb43
bb42:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load ptr, ptr %l18, !tbaa !29
  %t271 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldTemp(ptr %v0, ptr %v1, ptr %v2, ptr %t267, ptr %t268)
  store ptr %t271, ptr %l136
  br label %bb44
bb43:
  %t272 = load ptr, ptr %l18, !tbaa !29
  %t274 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t272)
  store %"compiler/source:Span" %t274, ptr %l138
  br label %bb45
bb44:
  %t275 = load ptr, ptr %l136, !tbaa !29
  store ptr %t275, ptr %l133, !tbaa !29
  br label %bb46
bb45:
  %t276 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 0
  store i64 0, ptr %t278
  %t279 = load %"compiler/source:Span", ptr %l138
  %t280 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %t279, 0
  %t282 = insertvalue { %"compiler/source:Span", i32, i64 } %t280, i32 %t276, 1
  %t283 = insertvalue { %"compiler/source:Span", i32, i64 } %t282, i64 0, 2
  %t284 = getelementptr { i64, [5 x i64] }, ptr %t277, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t283, ptr %t284
  %t285 = load { i64, [5 x i64] }, ptr %t277
  %t287 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t285, ptr %t287
  store ptr %t287, ptr %l133, !tbaa !29
  br label %bb46
bb46:
  %t289 = load ptr, ptr %l133, !tbaa !29
  store ptr %t289, ptr %l20, !tbaa !29
  %t290 = load ptr, ptr %l20, !tbaa !29
  store ptr %t290, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t291 = load ptr, ptr %l142, !tbaa !29
  %t292 = icmp ne ptr %t291, null
  br i1 %t292, label %bb47, label %bb48
bb47:
  %t294 = load ptr, ptr %l142, !tbaa !29
  %t295 = load i64, ptr %t294, !range !{i64 0, i64 18}
  %t297 = icmp eq i64 %t295, 0
  store i1 %t297, ptr %l143, !tbaa !21
  br label %bb48
bb48:
  %t298 = load i1, ptr %l143, !tbaa !21
  %t299 = xor i1 %t298, true
  br i1 %t299, label %bb49, label %bb50
bb49:
  %t301 = load i64, ptr %l17, !tbaa !24
  %t302 = load ptr, ptr %l20, !tbaa !29
  %t304 = load ptr, ptr %lp9
  %t306 = getelementptr { i64, ptr }, ptr %t304, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr ptr, ptr %t307, i64 %t301
  store ptr %t302, ptr %t308, !tbaa !39
  store i1 true, ptr %l10, !tbaa !21
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t309 = load i1, ptr %l11, !tbaa !21
  br i1 %t309, label %bb52, label %bb53
bb52:
  %t311 = load ptr, ptr %l18, !tbaa !29
  %t313 = call i1 @compiler_2fcheck_2eplainArg(ptr %v1, ptr %t311)
  store i1 %t313, ptr %l152
  br label %bb54
bb53:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb55
bb54:
  %t314 = load i1, ptr %l152, !tbaa !21
  store i1 %t314, ptr %l150, !tbaa !21
  br label %bb55
bb55:
  %t315 = load i1, ptr %l150, !tbaa !21
  store i1 %t315, ptr %l11, !tbaa !21
  br label %bb56
bb56:
  %t316 = load i64, ptr %l16, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l16, !tbaa !24
  br label %bb30
bb57:
  %t320 = load i1, ptr %l10, !tbaa !21
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb58, label %bb59
bb58:
  %t324 = load ptr, ptr %l1, !tbaa !29
  store ptr %t324, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t326 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t326, ptr %l158
  %t327 = load i32, ptr %l3, !tbaa !23
  store i32 %t327, ptr %l159, !tbaa !23
  %t328 = load ptr, ptr %l5, !tbaa !29
  %t330 = getelementptr %"compiler/typed:Call", ptr %t328, i32 0, i32 0
  %t331 = load ptr, ptr %t330, !tbaa !29
  %t332 = load ptr, ptr %lp9
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  %t334 = load ptr, ptr %l5, !tbaa !29
  %t336 = getelementptr %"compiler/typed:Call", ptr %t334, i32 0, i32 2
  %t337 = load i32, ptr %t336, !tbaa !23
  %t338 = load ptr, ptr %l5, !tbaa !29
  %t340 = getelementptr %"compiler/typed:Call", ptr %t338, i32 0, i32 3
  %t341 = load i1, ptr %t340, !tbaa !21
  %t342 = load ptr, ptr %l5, !tbaa !29
  %t344 = getelementptr %"compiler/typed:Call", ptr %t342, i32 0, i32 4
  %t345 = load i1, ptr %t344, !tbaa !21
  %t351 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v1, ptr %v2, ptr %v2, ptr %t331, { i64, ptr } %t333, i32 %t337, i1 %t341, i1 %t345)
  store %"compiler/typed:Call" %t351, ptr %l169
  br label %bb61
bb61:
  %t352 = load %"compiler/typed:Call", ptr %l169
  %t353 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Call" %t352, ptr %t353
  store { i64, [5 x i64] } zeroinitializer, ptr %t354
  %t355 = getelementptr { i64, [5 x i64] }, ptr %t354, i32 0, i32 0
  store i64 6, ptr %t355
  %t356 = load %"compiler/source:Span", ptr %l158
  %t357 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t356, 0
  %t358 = load i32, ptr %l159, !tbaa !23
  %t359 = insertvalue { %"compiler/source:Span", i32, ptr } %t357, i32 %t358, 1
  %t361 = insertvalue { %"compiler/source:Span", i32, ptr } %t359, ptr %t353, 2
  %t362 = getelementptr { i64, [5 x i64] }, ptr %t354, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t361, ptr %t362
  %t363 = load { i64, [5 x i64] }, ptr %t354
  %t365 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t363, ptr %t365
  store ptr %t365, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l22 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i1
  %l54 = alloca ptr
  %l63 = alloca ptr
  %l68 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca i1
  %l80 = alloca i1
  %l83 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i32
  %l94 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i1
  %l101 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i32
  %l106 = alloca ptr
  %l107 = alloca i32
  %l110 = alloca i64
  %l113 = alloca i32
  %l114 = alloca i64
  %l120 = alloca i64
  %l123 = alloca ptr
  %l132 = alloca i64
  %l135 = alloca i64
  %l153 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca %"compiler/source:Span"
  %l164 = alloca i64
  %l166 = alloca ptr
  %l169 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l175 = alloca ptr
  %rv = alloca ptr
  %t212 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t6 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2)
  store { i64, ptr } %t6, ptr %l22
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp eq i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l27, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr ptr, ptr %t17, i64 0
  %t19 = load ptr, ptr %t18, !tbaa !39
  store ptr %t19, ptr %l4, !tbaa !29
  %t21 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t21, ptr %l5, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v2, ptr %v2, ptr %t23, ptr %t24)
  store ptr %t27, ptr %l32
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l32, !tbaa !29
  store ptr %t28, ptr %l6, !tbaa !29
  %t29 = load ptr, ptr %l4, !tbaa !29
  store ptr %t29, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t30 = load ptr, ptr %l34, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l34, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 3
  store i1 %t36, ptr %l35, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l35, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l7, !tbaa !29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t44 = load ptr, ptr %l7, !tbaa !29
  store ptr %t44, ptr %l33, !tbaa !29
  br label %bb27
bb11:
  %t47 = load ptr, ptr %l4, !tbaa !29
  store ptr %t47, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t48 = load ptr, ptr %l42, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l42, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 18}
  %t54 = icmp eq i64 %t52, 2
  store i1 %t54, ptr %l43, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l43, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr { i64, [5 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l8, !tbaa !29
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l48, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t66 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t63)
  store i32 %t66, ptr %l51
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l48, !tbaa !29
  %t68 = load i32, ptr %l51, !tbaa !23
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t69, ptr %l52
  br label %bb18
bb18:
  %t70 = load i1, ptr %l52, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load ptr, ptr %l8, !tbaa !29
  store ptr %t73, ptr %l54, !tbaa !29
  br label %bb21
bb20:
  store ptr null, ptr %l54, !tbaa !29
  br label %bb21
bb21:
  %t76 = load ptr, ptr %l54, !tbaa !29
  store ptr %t76, ptr %l33, !tbaa !29
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store ptr null, ptr %l33, !tbaa !29
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_382529b120d556de_d8d046fae7238d42)
  unreachable
bb27:
  %t77 = load ptr, ptr %l33, !tbaa !29
  store ptr %t77, ptr %l9, !tbaa !29
  %t78 = load ptr, ptr %l6, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb28, label %bb29
bb28:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t90 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlaceRef(ptr %v0, ptr %v2, ptr %v0, ptr %t84, %"compiler/source:Span" %t85, ptr %t86)
  store ptr %t90, ptr %l63
  br label %bb30
bb29:
  %t91 = load ptr, ptr %l9, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb36, label %bb37
bb30:
  %t97 = load ptr, ptr %l63, !tbaa !29
  store ptr %t97, ptr %l10, !tbaa !29
  %t98 = load ptr, ptr %l10, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb31, label %bb32
bb31:
  store ptr null, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t103 = load ptr, ptr %l10, !tbaa !29
  store ptr %t103, ptr %l4, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l68, !tbaa !29
  %t106 = load ptr, ptr %l4, !tbaa !29
  %t109 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t106)
  store i32 %t109, ptr %l71
  br label %bb34
bb34:
  %t110 = load ptr, ptr %l68, !tbaa !29
  %t111 = load i32, ptr %l71, !tbaa !23
  %t112 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t110, i32 %t111)
  store i32 %t112, ptr %l72
  br label %bb35
bb35:
  %t113 = load i32, ptr %l72, !tbaa !23
  store i32 %t113, ptr %l5, !tbaa !23
  br label %bb58
bb36:
  %t114 = load ptr, ptr %l9, !tbaa !29
  store ptr %t114, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t115 = load ptr, ptr %l76, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb38, label %bb39
bb37:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l94, !tbaa !29
  %t119 = load ptr, ptr %l4, !tbaa !29
  %t122 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t119)
  store i32 %t122, ptr %l97
  br label %bb50
bb38:
  %t123 = load ptr, ptr %l76, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 8}
  %t126 = icmp eq i64 %t124, 6
  store i1 %t126, ptr %l77, !tbaa !21
  br label %bb39
bb39:
  %t127 = load i1, ptr %l77, !tbaa !21
  br i1 %t127, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb43
bb41:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l9, !tbaa !29
  %t132 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v2, ptr %t128, ptr %t129)
  store i1 %t132, ptr %l83
  br label %bb42
bb42:
  %t133 = load i1, ptr %l83, !tbaa !21
  %t134 = xor i1 %t133, true
  store i1 %t134, ptr %l80, !tbaa !21
  br label %bb43
bb43:
  %t136 = load i1, ptr %l80, !tbaa !21
  br i1 %t136, label %bb44, label %bb45
bb44:
  store ptr null, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load %"compiler/source:Span", ptr %l1
  %t140 = load ptr, ptr %l9, !tbaa !29
  %t144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v0, ptr %t138, %"compiler/source:Span" %t139, ptr %t140)
  store ptr %t144, ptr %l89
  br label %bb47
bb47:
  %t145 = load ptr, ptr %l89, !tbaa !29
  store ptr %t145, ptr %l4, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l90, !tbaa !29
  %t147 = load ptr, ptr %l9, !tbaa !29
  %t149 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v2, ptr %t147)
  store i32 %t149, ptr %l92
  br label %bb48
bb48:
  %t150 = load ptr, ptr %l90, !tbaa !29
  %t151 = load i32, ptr %l92, !tbaa !23
  %t152 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t150, i32 %t151)
  store i32 %t152, ptr %l93
  br label %bb49
bb49:
  %t153 = load i32, ptr %l93, !tbaa !23
  store i32 %t153, ptr %l5, !tbaa !23
  br label %bb57
bb50:
  %t154 = load ptr, ptr %l94, !tbaa !29
  %t155 = load i32, ptr %l97, !tbaa !23
  %t156 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t154, i32 %t155)
  store i1 %t156, ptr %l98
  br label %bb51
bb51:
  %t157 = load i1, ptr %l98, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb52, label %bb53
bb52:
  store ptr null, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l101, !tbaa !29
  %t162 = load ptr, ptr %l4, !tbaa !29
  %t165 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t162)
  store i32 %t165, ptr %l104
  br label %bb55
bb55:
  %t166 = load ptr, ptr %l101, !tbaa !29
  %t167 = load i32, ptr %l104, !tbaa !23
  %t168 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t168, ptr %l105
  br label %bb56
bb56:
  %t169 = load i32, ptr %l105, !tbaa !23
  store i32 %t169, ptr %l5, !tbaa !23
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l106, !tbaa !29
  %t171 = load i32, ptr %l5, !tbaa !23
  store i32 %t171, ptr %l107, !tbaa !23
  %t172 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t176 = sub i64 %t174, 1
  store i64 %t176, ptr %l110, !tbaa !24
  %t177 = load ptr, ptr %l2, !tbaa !29
  %t180 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t177)
  store i32 %t180, ptr %l113
  br label %bb59
bb59:
  %t181 = load ptr, ptr %l106, !tbaa !29
  %t182 = load i32, ptr %l107, !tbaa !23
  %t183 = load i64, ptr %l110, !tbaa !24
  %t184 = load i32, ptr %l113, !tbaa !23
  %t185 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlace(ptr %v0, ptr %t181, i32 %t182, i64 %t183, i32 %t184)
  store i64 %t185, ptr %l114
  br label %bb60
bb60:
  %t186 = load i64, ptr %l114, !tbaa !24
  store i64 %t186, ptr %l11, !tbaa !24
  %t187 = load i64, ptr %l11, !tbaa !24
  %t189 = icmp slt i64 %t187, 0
  br i1 %t189, label %bb61, label %bb62
bb61:
  store ptr null, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  %t192 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t196 = sub i64 %t194, 1
  store i64 %t196, ptr %l120, !tbaa !24
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l1
  %t201 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v2, ptr %t197, %"compiler/source:Span" %t198)
  store ptr %t201, ptr %l123
  br label %bb64
bb64:
  %t202 = load i64, ptr %l120, !tbaa !24
  %t203 = icmp sge i64 %t202, 0
  br i1 %t203, label %bb65, label %bb66
bb65:
  %t205 = load i64, ptr %l120, !tbaa !24
  %t206 = icmp sle i64 %t205, 1152921504606846975
  br i1 %t206, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_ab5597cba6646260_481abab506246ac)
  unreachable
bb67:
  %t208 = load i64, ptr %l120, !tbaa !24
  %t209 = mul i64 %t208, 8
  %t210 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t209)
  %t211 = load ptr, ptr %l123, !tbaa !29
  store i64 0, ptr %t212
  br label %fill.213
fill.213:
  %t216 = load i64, ptr %t212
  %t217 = icmp slt i64 %t216, %t208
  br i1 %t217, label %fillb.214, label %filld.215
fillb.214:
  %t218 = getelementptr ptr, ptr %t210, i64 %t216
  store ptr %t211, ptr %t218
  %t219 = add i64 %t216, 1
  store i64 %t219, ptr %t212
  br label %fill.213
filld.215:
  %t220 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t210, 1
  store { i64, ptr } %t221, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t223 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t223, 0
  store i64 %t225, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t227 = load i64, ptr %l14, !tbaa !24
  %t228 = load i64, ptr %l13, !tbaa !24
  %t231 = icmp sgt i64 %t227, %t228
  br i1 %t231, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_ab5597cba6646260_481abab506246ac)
  unreachable
bb69:
  %t233 = load i64, ptr %l15, !tbaa !24
  %t235 = icmp sgt i64 %t233, 0
  br i1 %t235, label %bb71, label %bb72
bb70:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb74
bb71:
  %t237 = load i64, ptr %l14, !tbaa !24
  %t238 = load i64, ptr %l13, !tbaa !24
  %t241 = sub i64 %t237, %t238
  %t242 = load i64, ptr %l15, !tbaa !24
  %t245 = add i64 %t241, %t242
  %t247 = sub i64 %t245, 1
  %t248 = load i64, ptr %l15, !tbaa !24
  %t251 = sdiv i64 %t247, %t248
  store i64 %t251, ptr %l135, !tbaa !24
  br label %bb73
bb72:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb73
bb73:
  %t253 = load i64, ptr %l135, !tbaa !24
  store i64 %t253, ptr %l132, !tbaa !24
  br label %bb74
bb74:
  %t254 = load i64, ptr %l132, !tbaa !24
  store i64 %t254, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb75
bb75:
  %t255 = load i64, ptr %l17, !tbaa !24
  %t256 = load i64, ptr %l16, !tbaa !24
  %t259 = icmp slt i64 %t255, %t256
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb76, label %bb77
bb76:
  br label %bb80
bb77:
  br label %bb78
bb78:
  %t263 = load i64, ptr %l13, !tbaa !24
  %t264 = load i64, ptr %l17, !tbaa !24
  %t265 = load i64, ptr %l15, !tbaa !24
  %t268 = mul i64 %t264, %t265
  %t271 = add i64 %t263, %t268
  store i64 %t271, ptr %l18, !tbaa !24
  %t273 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t273, ptr %l153, !tbaa !27
  %t274 = load i64, ptr %l18, !tbaa !24
  %t275 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t275, ptr %l155, !tbaa !27
  %t276 = load i64, ptr %l18, !tbaa !24
  %t278 = add i64 %t276, 1
  %t280 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr ptr, ptr %t281, i64 %t278
  %t283 = load ptr, ptr %t282, !tbaa !39
  %t286 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr ptr, ptr %t287, i64 %t274
  store ptr %t283, ptr %t288, !tbaa !39
  br label %bb79
bb79:
  %t289 = load i64, ptr %l17, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l17, !tbaa !24
  br label %bb75
bb80:
  %t293 = load ptr, ptr %l0, !tbaa !29
  store ptr %t293, ptr %l161, !tbaa !29
  %t294 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t294, ptr %l162
  %t295 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t295, ptr %l163
  %t296 = load i64, ptr %l11, !tbaa !24
  store i64 %t296, ptr %l164, !tbaa !24
  %t297 = load ptr, ptr %l4, !tbaa !29
  store ptr %t297, ptr %l166, !tbaa !29
  %t299 = icmp sge i64 0, 0
  br i1 %t299, label %bb81, label %bb82
bb81:
  %t301 = icmp sle i64 0, 1152921504606846975
  br i1 %t301, label %bb83, label %bb84
bb82:
  call void @__olang_check_failed(ptr @olang_loc_658d6063ef778b83_55b59e9924ab310f)
  unreachable
bb83:
  %t303 = mul i64 0, 8
  %t304 = insertvalue { i64, ptr } undef, i64 0, 0
  %t305 = insertvalue { i64, ptr } %t304, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t305, ptr %l169, !tbaa !27
  %t306 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t306, ptr %l170, !tbaa !27
  %t307 = icmp sge i64 0, 0
  br i1 %t307, label %bb85, label %bb86
bb84:
  call void @__olang_check_failed(ptr @olang_loc_658d6063ef778b83_55b59e9924ab310f)
  unreachable
bb85:
  %t309 = icmp sle i64 0, 2305843009213693951
  br i1 %t309, label %bb87, label %bb88
bb86:
  call void @__olang_check_failed(ptr @olang_loc_ba61a968dfb16c8e_3c428debd653d7ba)
  unreachable
bb87:
  %t311 = mul i64 0, 4
  %t312 = insertvalue { i64, ptr } undef, i64 0, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t314 = load ptr, ptr %l166, !tbaa !29
  %t315 = call ptr @__olang_scope_of(ptr %t314, ptr null)
  %t316 = ptrtoint ptr %t315 to i64
  %t318 = inttoptr i64 %t316 to ptr
  %t319 = load ptr, ptr %l161, !tbaa !29
  %t320 = load %"compiler/source:Span", ptr %l162
  %t321 = load %"compiler/source:Span", ptr %l163
  %t322 = load i64, ptr %l164, !tbaa !24
  %t323 = load ptr, ptr %l166, !tbaa !29
  %t324 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t325 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t327 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %t318, ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t319, %"compiler/source:Span" %t320, %"compiler/source:Span" %t321, i64 %t322, ptr %t323, { i64, ptr } %t324, { i64, ptr } %t325, { i64, ptr } %t313)
  store ptr %t327, ptr %l175
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_ba61a968dfb16c8e_3c428debd653d7ba)
  unreachable
bb89:
  %t328 = load ptr, ptr %l175, !tbaa !29
  store ptr %t328, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaidAlike(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i1
  %l31 = alloca i32
  %l38 = alloca i1
  %l43 = alloca i32
  %l48 = alloca i32
  %l50 = alloca i1
  %l51 = alloca ptr
  %l56 = alloca i32
  %l61 = alloca i32
  %l62 = alloca i1
  %rv = alloca i1
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
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr %l2, !tbaa !23
  %t12 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t6, i32 %t7, i32 %t8)
  store i1 %t12, ptr %l10
  br label %bb1
bb1:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i32, ptr %l14, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load i32, ptr %l17, !tbaa !23
  store i32 %t26, ptr %l4, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l22
  br label %bb7
bb7:
  %t37 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t39 = trunc i64 19 to i32
  %t40 = icmp eq i32 %t37, %t39
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb11
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l4, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l31
  br label %bb10
bb10:
  %t54 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t56 = trunc i64 19 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l26, !tbaa !21
  br label %bb11
bb11:
  %t61 = load i1, ptr %l26, !tbaa !21
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l1, !tbaa !23
  %t64 = load i32, ptr %l2, !tbaa !23
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t62, i32 %t63, i32 %t64)
  store i1 %t68, ptr %l38
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t69 = load i1, ptr %l38, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l3, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l43
  br label %bb16
bb16:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load i32, ptr %l4, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l48
  br label %bb17
bb17:
  %t90 = load i32, ptr %l43, !tbaa !23
  %t91 = load i32, ptr %l48, !tbaa !23
  %t92 = icmp eq i32 %t90, %t91
  br i1 %t92, label %bb18, label %bb19
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l51, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l3, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l56
  br label %bb20
bb19:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb23
bb20:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  %t111 = load i32, ptr %l4, !tbaa !23
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t110, i32 %t111)
  store i32 %t114, ptr %l61
  br label %bb21
bb21:
  %t115 = load ptr, ptr %l51, !tbaa !29
  %t116 = load i32, ptr %l56, !tbaa !23
  %t117 = load i32, ptr %l61, !tbaa !23
  %t118 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaidAlike(ptr %v0, ptr %t115, i32 %t116, i32 %t117)
  store i1 %t118, ptr %l62
  br label %bb22
bb22:
  %t119 = load i1, ptr %l62, !tbaa !21
  store i1 %t119, ptr %l50, !tbaa !21
  br label %bb23
bb23:
  %t120 = load i1, ptr %l50, !tbaa !21
  store i1 %t120, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca %"compiler/check:laneNode"
  %l23 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca %"compiler/source:Span"
  %l40 = alloca i32
  %l44 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca i32
  %l54 = alloca %"compiler/typed:Elem"
  %l58 = alloca ptr
  %l62 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l76 = alloca ptr
  %l85 = alloca ptr
  %l91 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca ptr
  %l111 = alloca ptr
  %l117 = alloca ptr
  %l123 = alloca ptr
  %l129 = alloca ptr
  %l130 = alloca %"compiler/source:Span"
  %l131 = alloca i32
  %l132 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca ptr
  %l143 = alloca ptr
  %l144 = alloca %"compiler/typed:Cond"
  %l153 = alloca ptr
  %l159 = alloca ptr
  %l162 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca ptr
  %l167 = alloca %"compiler/source:Span"
  %l169 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l172 = alloca i1
  %l174 = alloca i1
  %l175 = alloca ptr
  %l176 = alloca ptr
  %l177 = alloca %"compiler/source:Span"
  %l179 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l182 = alloca i1
  %l186 = alloca ptr
  %l189 = alloca %"compiler/source:Span"
  %l190 = alloca i32
  %l191 = alloca ptr
  %l193 = alloca ptr
  %l197 = alloca ptr
  %l198 = alloca %"compiler/typed:Cond"
  %l202 = alloca %"compiler/source:Span"
  %l203 = alloca i32
  %l204 = alloca ptr
  %l208 = alloca ptr
  %l211 = alloca %"compiler/typed:Cond"
  %l215 = alloca ptr
  %l224 = alloca ptr
  %l225 = alloca ptr
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t61 = alloca { i64, [4 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t322 = alloca { i64, [5 x i64] }, align 8
  %t470 = alloca { i64, [5 x i64] }, align 8
  %t505 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v3, ptr %t3, i64 %t4)
  store %"compiler/check:laneNode" %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 88, i64 8)
  store ptr %t8, ptr %lp5
  %t9 = load %"compiler/check:laneNode", ptr %l19
  %t10 = load ptr, ptr %lp5
  store %"compiler/check:laneNode" %t9, ptr %t10
  %t11 = load ptr, ptr %lp5
  %t12 = getelementptr %"compiler/check:laneNode", ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneArr, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/check:laneVals", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v1, ptr %t21, i64 %t22)
  %t26 = extractvalue { i32, i64 } %t25, 1
  %t27 = extractvalue { i32, i64 } %t25, 0
  store i32 %t27, ptr %l28
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb5, label %ok.29, !prof !99
ok.29:
  store i64 %t26, ptr %l27
  br label %bb4
bb3:
  br label %bb17
bb4:
  %t30 = load i64, ptr %l27, !tbaa !24
  store i64 %t30, ptr %l23, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 -1, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l23, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  %t40 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t36, %"compiler/source:Span" %t37)
  store ptr %t40, ptr %l33
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t41 = load ptr, ptr %l33, !tbaa !29
  store ptr %t41, ptr %rv
  br label %ret
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t42, i64 %t43)
  store i32 %t46, ptr %l36
  br label %bb12
bb12:
  %t47 = load i32, ptr %l36, !tbaa !23
  %t48 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t48, ptr %l37
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t49, i32 %t47)
  store i32 %t53, ptr %l40
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l1
  %t56 = load i64, ptr %l6, !tbaa !24
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t54, %"compiler/source:Span" %t55, i64 %t56)
  store ptr %t60, ptr %l44
  br label %bb14
bb14:
  store { i64, [4 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 0
  store i64 2, ptr %t62
  %t63 = load %"compiler/source:Span", ptr %l37
  %t64 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t63, 0
  %t65 = load i32, ptr %l40, !tbaa !23
  %t66 = insertvalue { %"compiler/source:Span", i32, ptr } %t64, i32 %t65, 1
  %t67 = load ptr, ptr %l44, !tbaa !29
  %t68 = insertvalue { %"compiler/source:Span", i32, ptr } %t66, ptr %t67, 2
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t68, ptr %t69
  %t70 = load { i64, [4 x i64] }, ptr %t61
  %t72 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t70, ptr %t72
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l47, !tbaa !29
  %t75 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t75, ptr %l48
  %t76 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t76, ptr %l49
  %t77 = load ptr, ptr %lp5
  %t78 = getelementptr %"compiler/check:laneNode", ptr %t77, i32 0, i32 8
  %t79 = load i32, ptr %t78, !tbaa !23
  store i32 %t79, ptr %l50, !tbaa !23
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t85 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v3, ptr %v2, ptr %v3, ptr %t72, ptr %t81, i32 0)
  store %"compiler/typed:Elem" %t85, ptr %l54
  br label %bb15
bb15:
  %t86 = load %"compiler/typed:Elem", ptr %l54
  %t87 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Elem" %t86, ptr %t87
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 4, ptr %t89
  %t90 = load %"compiler/source:Span", ptr %l49
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t90, 0
  %t92 = load i32, ptr %l50, !tbaa !23
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } %t91, i32 %t92, 1
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr } %t93, ptr %t87, 2
  %t96 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t95, ptr %t96
  %t97 = load { i64, [4 x i64] }, ptr %t88
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t97, ptr %t99
  %t100 = load ptr, ptr %l47, !tbaa !29
  %t101 = load %"compiler/source:Span", ptr %l48
  %t103 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t100, %"compiler/source:Span" %t101, ptr %t99)
  store ptr %t103, ptr %l58
  br label %bb16
bb16:
  %t104 = load ptr, ptr %l58, !tbaa !29
  store ptr %t104, ptr %rv
  br label %ret
bb17:
  %t105 = load ptr, ptr %lp5
  %t106 = getelementptr %"compiler/check:laneNode", ptr %t105, i32 0, i32 0
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneScalar, !tbaa !24
  %t111 = icmp eq i64 %t107, %t108
  br i1 %t111, label %bb18, label %bb19
bb18:
  %t113 = load ptr, ptr %l3, !tbaa !29
  %t115 = getelementptr %"compiler/check:laneVals", ptr %t113, i32 0, i32 1
  %t116 = load i64, ptr %l2, !tbaa !24
  %t119 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v1, ptr %t115, i64 %t116)
  %t120 = extractvalue { i32, i64 } %t119, 1
  %t121 = extractvalue { i32, i64 } %t119, 0
  store i32 %t121, ptr %l67
  %t122 = icmp ne i32 %t121, 0
  br i1 %t122, label %bb21, label %ok.123, !prof !99
ok.123:
  store i64 %t120, ptr %l66
  br label %bb20
bb19:
  br label %bb31
bb20:
  %t124 = load i64, ptr %l66, !tbaa !24
  store i64 %t124, ptr %l62, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb23
bb23:
  %t125 = load i64, ptr %l62, !tbaa !24
  store i64 %t125, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t128 = icmp slt i64 %t126, 0
  br i1 %t128, label %bb24, label %bb25
bb24:
  %t130 = load ptr, ptr %lp5
  %t131 = getelementptr %"compiler/check:laneNode", ptr %t130, i32 0, i32 7
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb26, label %bb27
bb25:
  br label %bb29
bb26:
  call void @__olang_check_failed(ptr @olang_loc_24a46e21631caff9_33b011dc8e05d16d)
  unreachable
bb27:
  br label %bb28
bb28:
  %t136 = load ptr, ptr %lp5
  %t137 = getelementptr %"compiler/check:laneNode", ptr %t136, i32 0, i32 7
  %t138 = load ptr, ptr %t137, !tbaa !29
  store ptr %t138, ptr %rv
  br label %ret
bb29:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %lp5
  %t142 = getelementptr %"compiler/check:laneNode", ptr %t141, i32 0, i32 2
  %t143 = load %"compiler/source:Span", ptr %t142
  %t144 = load i64, ptr %l9, !tbaa !24
  %t148 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v3, ptr %t140, %"compiler/source:Span" %t143, i64 %t144)
  store ptr %t148, ptr %l76
  br label %bb30
bb30:
  %t149 = load ptr, ptr %l76, !tbaa !29
  store ptr %t149, ptr %rv
  br label %ret
bb31:
  %t150 = load ptr, ptr %lp5
  %t151 = getelementptr %"compiler/check:laneNode", ptr %t150, i32 0, i32 0
  %t152 = load i64, ptr %t151, !tbaa !24
  %t153 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneUn, !tbaa !24
  %t156 = icmp eq i64 %t152, %t153
  br i1 %t156, label %bb32, label %bb33
bb32:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load %"compiler/source:Span", ptr %l1
  %t160 = load ptr, ptr %lp5
  %t161 = getelementptr %"compiler/check:laneNode", ptr %t160, i32 0, i32 4
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load ptr, ptr %l3, !tbaa !29
  %t164 = load ptr, ptr %l4, !tbaa !29
  %t170 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t158, %"compiler/source:Span" %t159, i64 %t162, ptr %t163, ptr %t164)
  store ptr %t170, ptr %l85
  br label %bb34
bb33:
  br label %bb42
bb34:
  %t171 = load ptr, ptr %l85, !tbaa !29
  store ptr %t171, ptr %l10, !tbaa !29
  %t172 = load ptr, ptr %lp5
  %t173 = getelementptr %"compiler/check:laneNode", ptr %t172, i32 0, i32 1
  %t174 = load i32, ptr %t173, !range !{i32 0, i32 114}
  %t176 = trunc i64 48 to i32
  %t177 = icmp eq i32 %t174, %t176
  br i1 %t177, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l10, !tbaa !29
  %t181 = load ptr, ptr %lp5
  %t182 = getelementptr %"compiler/check:laneNode", ptr %t181, i32 0, i32 2
  %t183 = load %"compiler/source:Span", ptr %t182
  %t187 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBool(ptr %v0, ptr %v3, ptr %s6, ptr %t179, ptr %t180, %"compiler/source:Span" %t183, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t187, ptr %l91
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %lp5
  %t190 = getelementptr %"compiler/check:laneNode", ptr %t189, i32 0, i32 2
  %t191 = load %"compiler/source:Span", ptr %t190
  %t192 = load ptr, ptr %l10, !tbaa !29
  %t196 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v3, ptr %v3, ptr %t188, %"compiler/source:Span" %t191, ptr %t192)
  store ptr %t196, ptr %l95
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s6)
  %t197 = load ptr, ptr %l95, !tbaa !29
  store ptr %t197, ptr %rv
  br label %ret
bb39:
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l96, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %lp5
  %t201 = getelementptr %"compiler/check:laneNode", ptr %t200, i32 0, i32 2
  %t202 = load %"compiler/source:Span", ptr %t201
  %t203 = load ptr, ptr %lp5
  %t204 = getelementptr %"compiler/check:laneNode", ptr %t203, i32 0, i32 1
  %t205 = load i32, ptr %t204, !range !{i32 0, i32 114}
  %t206 = load ptr, ptr %l10, !tbaa !29
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunaryOn(ptr %v0, ptr %v3, ptr %v0, ptr %t199, %"compiler/source:Span" %t202, i32 %t205, ptr %t206)
  store ptr %t211, ptr %l101
  br label %bb40
bb40:
  %t212 = load ptr, ptr %l96, !tbaa !29
  %t213 = load ptr, ptr %l101, !tbaa !29
  %t214 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v0, ptr %v3, ptr %t212, ptr %t213)
  store ptr %t214, ptr %l102
  br label %bb41
bb41:
  %t215 = load ptr, ptr %l102, !tbaa !29
  store ptr %t215, ptr %rv
  br label %ret
bb42:
  %t216 = load ptr, ptr %lp5
  %t217 = getelementptr %"compiler/check:laneNode", ptr %t216, i32 0, i32 0
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = load i64, ptr @G_2ecompiler_2fcheck_2eLaneSel, !tbaa !24
  %t222 = icmp eq i64 %t218, %t219
  br i1 %t222, label %bb43, label %bb44
bb43:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l1
  %t226 = load ptr, ptr %lp5
  %t227 = getelementptr %"compiler/check:laneNode", ptr %t226, i32 0, i32 4
  %t228 = load i64, ptr %t227, !tbaa !24
  %t229 = load ptr, ptr %l3, !tbaa !29
  %t230 = load ptr, ptr %l4, !tbaa !29
  %t236 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t224, %"compiler/source:Span" %t225, i64 %t228, ptr %t229, ptr %t230)
  store ptr %t236, ptr %l111
  br label %bb45
bb44:
  br label %bb55
bb45:
  %t237 = load ptr, ptr %l111, !tbaa !29
  store ptr %t237, ptr %l11, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load %"compiler/source:Span", ptr %l1
  %t240 = load ptr, ptr %lp5
  %t241 = getelementptr %"compiler/check:laneNode", ptr %t240, i32 0, i32 5
  %t242 = load i64, ptr %t241, !tbaa !24
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t244 = load ptr, ptr %l4, !tbaa !29
  %t250 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t238, %"compiler/source:Span" %t239, i64 %t242, ptr %t243, ptr %t244)
  store ptr %t250, ptr %l117
  br label %bb46
bb46:
  %t251 = load ptr, ptr %l117, !tbaa !29
  store ptr %t251, ptr %l12, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l1
  %t254 = load ptr, ptr %lp5
  %t255 = getelementptr %"compiler/check:laneNode", ptr %t254, i32 0, i32 6
  %t256 = load i64, ptr %t255, !tbaa !24
  %t257 = load ptr, ptr %l3, !tbaa !29
  %t258 = load ptr, ptr %l4, !tbaa !29
  %t264 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t252, %"compiler/source:Span" %t253, i64 %t256, ptr %t257, ptr %t258)
  store ptr %t264, ptr %l123
  br label %bb47
bb47:
  %t265 = load ptr, ptr %l123, !tbaa !29
  store ptr %t265, ptr %l13, !tbaa !29
  %t266 = load ptr, ptr %lp5
  %t267 = getelementptr %"compiler/check:laneNode", ptr %t266, i32 0, i32 8
  %t268 = load i32, ptr %t267, !tbaa !23
  %t269 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t272 = icmp eq i32 %t268, %t269
  br i1 %t272, label %bb48, label %bb49
bb48:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load ptr, ptr %lp5
  %t276 = getelementptr %"compiler/check:laneNode", ptr %t275, i32 0, i32 2
  %t277 = load %"compiler/source:Span", ptr %t276
  %t280 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t274, %"compiler/source:Span" %t277)
  store ptr %t280, ptr %l129
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t281 = load ptr, ptr %l129, !tbaa !29
  store ptr %t281, ptr %rv
  br label %ret
bb51:
  %t282 = load ptr, ptr %lp5
  %t283 = getelementptr %"compiler/check:laneNode", ptr %t282, i32 0, i32 2
  %t284 = load %"compiler/source:Span", ptr %t283
  store %"compiler/source:Span" %t284, ptr %l130
  %t285 = load ptr, ptr %lp5
  %t286 = getelementptr %"compiler/check:laneNode", ptr %t285, i32 0, i32 8
  %t287 = load i32, ptr %t286, !tbaa !23
  store i32 %t287, ptr %l131, !tbaa !23
  %t288 = load ptr, ptr %l11, !tbaa !29
  store ptr %t288, ptr %l132, !tbaa !29
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l12, !tbaa !29
  %t291 = load ptr, ptr %lp5
  %t292 = getelementptr %"compiler/check:laneNode", ptr %t291, i32 0, i32 8
  %t293 = load i32, ptr %t292, !tbaa !23
  %t294 = load ptr, ptr %lp5
  %t295 = getelementptr %"compiler/check:laneNode", ptr %t294, i32 0, i32 2
  %t296 = load %"compiler/source:Span", ptr %t295
  %t301 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v3, ptr %v3, ptr %t289, ptr %t290, i32 %t293, %"compiler/source:Span" %t296)
  store ptr %t301, ptr %l137
  br label %bb52
bb52:
  %t302 = load ptr, ptr %l137, !tbaa !29
  store ptr %t302, ptr %l138, !tbaa !29
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load ptr, ptr %l13, !tbaa !29
  %t305 = load ptr, ptr %lp5
  %t306 = getelementptr %"compiler/check:laneNode", ptr %t305, i32 0, i32 8
  %t307 = load i32, ptr %t306, !tbaa !23
  %t308 = load ptr, ptr %lp5
  %t309 = getelementptr %"compiler/check:laneNode", ptr %t308, i32 0, i32 2
  %t310 = load %"compiler/source:Span", ptr %t309
  %t315 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v3, ptr %v0, ptr %t303, ptr %t304, i32 %t307, %"compiler/source:Span" %t310)
  store ptr %t315, ptr %l143
  br label %bb53
bb53:
  %t316 = load ptr, ptr %l132, !tbaa !29
  %t317 = load ptr, ptr %l138, !tbaa !29
  %t318 = load ptr, ptr %l143, !tbaa !29
  %t319 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v0, ptr %v3, ptr %t316, ptr %t317, ptr %t318)
  store %"compiler/typed:Cond" %t319, ptr %l144
  br label %bb54
bb54:
  %t320 = load %"compiler/typed:Cond", ptr %l144
  %t321 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t320, ptr %t321
  store { i64, [5 x i64] } zeroinitializer, ptr %t322
  %t323 = getelementptr { i64, [5 x i64] }, ptr %t322, i32 0, i32 0
  store i64 11, ptr %t323
  %t324 = load %"compiler/source:Span", ptr %l130
  %t325 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t324, 0
  %t326 = load i32, ptr %l131, !tbaa !23
  %t327 = insertvalue { %"compiler/source:Span", i32, ptr } %t325, i32 %t326, 1
  %t329 = insertvalue { %"compiler/source:Span", i32, ptr } %t327, ptr %t321, 2
  %t330 = getelementptr { i64, [5 x i64] }, ptr %t322, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t329, ptr %t330
  %t331 = load { i64, [5 x i64] }, ptr %t322
  %t333 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t331, ptr %t333
  store ptr %t333, ptr %rv
  br label %ret
bb55:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load %"compiler/source:Span", ptr %l1
  %t337 = load ptr, ptr %lp5
  %t338 = getelementptr %"compiler/check:laneNode", ptr %t337, i32 0, i32 4
  %t339 = load i64, ptr %t338, !tbaa !24
  %t340 = load ptr, ptr %l3, !tbaa !29
  %t341 = load ptr, ptr %l4, !tbaa !29
  %t347 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t335, %"compiler/source:Span" %t336, i64 %t339, ptr %t340, ptr %t341)
  store ptr %t347, ptr %l153
  br label %bb56
bb56:
  %t348 = load ptr, ptr %l153, !tbaa !29
  store ptr %t348, ptr %l14, !tbaa !29
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load %"compiler/source:Span", ptr %l1
  %t351 = load ptr, ptr %lp5
  %t352 = getelementptr %"compiler/check:laneNode", ptr %t351, i32 0, i32 5
  %t353 = load i64, ptr %t352, !tbaa !24
  %t354 = load ptr, ptr %l3, !tbaa !29
  %t355 = load ptr, ptr %l4, !tbaa !29
  %t361 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t349, %"compiler/source:Span" %t350, i64 %t353, ptr %t354, ptr %t355)
  store ptr %t361, ptr %l159
  br label %bb57
bb57:
  %t362 = load ptr, ptr %l159, !tbaa !29
  store ptr %t362, ptr %l15, !tbaa !29
  %t363 = load ptr, ptr %lp5
  %t364 = getelementptr %"compiler/check:laneNode", ptr %t363, i32 0, i32 1
  %t365 = load i32, ptr %t364, !range !{i32 0, i32 114}
  %t367 = trunc i64 45 to i32
  %t368 = icmp eq i32 %t365, %t367
  br i1 %t368, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb60
bb59:
  %t370 = load ptr, ptr %lp5
  %t371 = getelementptr %"compiler/check:laneNode", ptr %t370, i32 0, i32 1
  %t372 = load i32, ptr %t371, !range !{i32 0, i32 114}
  %t374 = trunc i64 46 to i32
  %t375 = icmp eq i32 %t372, %t374
  store i1 %t375, ptr %l162, !tbaa !21
  br label %bb60
bb60:
  %t377 = load i1, ptr %l162, !tbaa !21
  br i1 %t377, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s9
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l165, !tbaa !29
  %t379 = load ptr, ptr %l14, !tbaa !29
  store ptr %t379, ptr %l166, !tbaa !29
  %t380 = load ptr, ptr %lp5
  %t381 = getelementptr %"compiler/check:laneNode", ptr %t380, i32 0, i32 3
  %t382 = load %"compiler/source:Span", ptr %t381
  store %"compiler/source:Span" %t382, ptr %l167
  %t383 = load ptr, ptr %lp5
  %t384 = getelementptr %"compiler/check:laneNode", ptr %t383, i32 0, i32 1
  %t385 = load i32, ptr %t384, !range !{i32 0, i32 114}
  %t387 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s9, i32 %t385)
  store { i64, ptr } %t387, ptr %l169
  br label %bb63
bb62:
  br label %bb83
bb63:
  %t388 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t389 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s9, ptr %s9, { i64, ptr } %t388)
  store { i64, ptr } %t389, ptr %l170
  br label %bb64
bb64:
  %t390 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t390, 0
  %t392 = extractvalue { i64, ptr } %t390, 1
  %t393 = mul i64 %t391, 1
  %t394 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t393)
  call void @llvm.memcpy.p0.p0.i64(ptr %t394, ptr %t392, i64 %t393, i1 false)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t394, 1
  %t397 = load ptr, ptr %l165, !tbaa !29
  %t398 = load ptr, ptr %l166, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l167
  %t401 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBool(ptr %v0, ptr %v3, ptr %s9, ptr %t397, ptr %t398, %"compiler/source:Span" %t399, { i64, ptr } %t396)
  store i1 %t401, ptr %l172
  br label %bb65
bb65:
  %t402 = load i1, ptr %l172, !tbaa !21
  %t403 = xor i1 %t402, true
  br i1 %t403, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb71
bb67:
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l175, !tbaa !29
  %t406 = load ptr, ptr %l15, !tbaa !29
  store ptr %t406, ptr %l176, !tbaa !29
  %t407 = load ptr, ptr %lp5
  %t408 = getelementptr %"compiler/check:laneNode", ptr %t407, i32 0, i32 3
  %t409 = load %"compiler/source:Span", ptr %t408
  store %"compiler/source:Span" %t409, ptr %l177
  %t410 = load ptr, ptr %lp5
  %t411 = getelementptr %"compiler/check:laneNode", ptr %t410, i32 0, i32 1
  %t412 = load i32, ptr %t411, !range !{i32 0, i32 114}
  %t414 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s9, i32 %t412)
  store { i64, ptr } %t414, ptr %l179
  br label %bb68
bb68:
  %t415 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t416 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s9, ptr %s9, { i64, ptr } %t415)
  store { i64, ptr } %t416, ptr %l180
  br label %bb69
bb69:
  %t417 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 0
  %t419 = extractvalue { i64, ptr } %t417, 1
  %t420 = mul i64 %t418, 1
  %t421 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t420)
  call void @llvm.memcpy.p0.p0.i64(ptr %t421, ptr %t419, i64 %t420, i1 false)
  %t422 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t421, 1
  %t424 = load ptr, ptr %l175, !tbaa !29
  %t425 = load ptr, ptr %l176, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l177
  %t428 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBool(ptr %v0, ptr %v3, ptr %s9, ptr %t424, ptr %t425, %"compiler/source:Span" %t426, { i64, ptr } %t423)
  store i1 %t428, ptr %l182
  br label %bb70
bb70:
  %t429 = load i1, ptr %l182, !tbaa !21
  %t430 = xor i1 %t429, true
  store i1 %t430, ptr %l174, !tbaa !21
  br label %bb71
bb71:
  %t432 = load i1, ptr %l174, !tbaa !21
  br i1 %t432, label %bb72, label %bb73
bb72:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load ptr, ptr %lp5
  %t435 = getelementptr %"compiler/check:laneNode", ptr %t434, i32 0, i32 2
  %t436 = load %"compiler/source:Span", ptr %t435
  %t439 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t433, %"compiler/source:Span" %t436)
  store ptr %t439, ptr %l186
  br label %bb74
bb73:
  br label %bb75
bb74:
  call void @__olang_scope_close(ptr %s9)
  %t440 = load ptr, ptr %l186, !tbaa !29
  store ptr %t440, ptr %rv
  br label %ret
bb75:
  %t441 = load ptr, ptr %lp5
  %t442 = getelementptr %"compiler/check:laneNode", ptr %t441, i32 0, i32 1
  %t443 = load i32, ptr %t442, !range !{i32 0, i32 114}
  %t445 = trunc i64 45 to i32
  %t446 = icmp eq i32 %t443, %t445
  br i1 %t446, label %bb76, label %bb77
bb76:
  %t448 = load ptr, ptr %lp5
  %t449 = getelementptr %"compiler/check:laneNode", ptr %t448, i32 0, i32 2
  %t450 = load %"compiler/source:Span", ptr %t449
  store %"compiler/source:Span" %t450, ptr %l189
  %t451 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t451, ptr %l190, !tbaa !23
  %t452 = load ptr, ptr %l14, !tbaa !29
  store ptr %t452, ptr %l191, !tbaa !29
  %t453 = load ptr, ptr %l15, !tbaa !29
  store ptr %t453, ptr %l193, !tbaa !29
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load ptr, ptr %lp5
  %t457 = getelementptr %"compiler/check:laneNode", ptr %t456, i32 0, i32 2
  %t458 = load %"compiler/source:Span", ptr %t457
  %t459 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t463 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t455, %"compiler/source:Span" %t458, i32 %t459, i64 0)
  store ptr %t463, ptr %l197
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t464 = load ptr, ptr %l191, !tbaa !29
  %t465 = load ptr, ptr %l193, !tbaa !29
  %t466 = load ptr, ptr %l197, !tbaa !29
  %t467 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t464, ptr %t465, ptr %t466)
  store %"compiler/typed:Cond" %t467, ptr %l198
  br label %bb79
bb79:
  %t468 = load %"compiler/typed:Cond", ptr %l198
  %t469 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t468, ptr %t469
  store { i64, [5 x i64] } zeroinitializer, ptr %t470
  %t471 = getelementptr { i64, [5 x i64] }, ptr %t470, i32 0, i32 0
  store i64 11, ptr %t471
  %t472 = load %"compiler/source:Span", ptr %l189
  %t473 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t472, 0
  %t474 = load i32, ptr %l190, !tbaa !23
  %t475 = insertvalue { %"compiler/source:Span", i32, ptr } %t473, i32 %t474, 1
  %t477 = insertvalue { %"compiler/source:Span", i32, ptr } %t475, ptr %t469, 2
  %t478 = getelementptr { i64, [5 x i64] }, ptr %t470, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t477, ptr %t478
  %t479 = load { i64, [5 x i64] }, ptr %t470
  %t481 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t479, ptr %t481
  call void @__olang_scope_close(ptr %s9)
  store ptr %t481, ptr %rv
  br label %ret
bb80:
  %t483 = load ptr, ptr %lp5
  %t484 = getelementptr %"compiler/check:laneNode", ptr %t483, i32 0, i32 2
  %t485 = load %"compiler/source:Span", ptr %t484
  store %"compiler/source:Span" %t485, ptr %l202
  %t486 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t486, ptr %l203, !tbaa !23
  %t487 = load ptr, ptr %l14, !tbaa !29
  store ptr %t487, ptr %l204, !tbaa !29
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load ptr, ptr %lp5
  %t490 = getelementptr %"compiler/check:laneNode", ptr %t489, i32 0, i32 2
  %t491 = load %"compiler/source:Span", ptr %t490
  %t492 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t496 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v3, ptr %t488, %"compiler/source:Span" %t491, i32 %t492, i64 1)
  store ptr %t496, ptr %l208
  br label %bb81
bb81:
  %t497 = load ptr, ptr %l208, !tbaa !29
  %t498 = load ptr, ptr %l15, !tbaa !29
  %t499 = load ptr, ptr %l204, !tbaa !29
  %t502 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %t499, ptr %t497, ptr %t498)
  store %"compiler/typed:Cond" %t502, ptr %l211
  br label %bb82
bb82:
  %t503 = load %"compiler/typed:Cond", ptr %l211
  %t504 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 24, i64 8)
  store %"compiler/typed:Cond" %t503, ptr %t504
  store { i64, [5 x i64] } zeroinitializer, ptr %t505
  %t506 = getelementptr { i64, [5 x i64] }, ptr %t505, i32 0, i32 0
  store i64 11, ptr %t506
  %t507 = load %"compiler/source:Span", ptr %l202
  %t508 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t507, 0
  %t509 = load i32, ptr %l203, !tbaa !23
  %t510 = insertvalue { %"compiler/source:Span", i32, ptr } %t508, i32 %t509, 1
  %t512 = insertvalue { %"compiler/source:Span", i32, ptr } %t510, ptr %t504, 2
  %t513 = getelementptr { i64, [5 x i64] }, ptr %t505, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t512, ptr %t513
  %t514 = load { i64, [5 x i64] }, ptr %t505
  %t516 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 48, i64 8)
  store { i64, [5 x i64] } %t514, ptr %t516
  call void @__olang_scope_close(ptr %s9)
  store ptr %t516, ptr %rv
  br label %ret
bb83:
  %t518 = load ptr, ptr %l0, !tbaa !29
  store ptr %t518, ptr %l215, !tbaa !29
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t520 = load ptr, ptr %lp5
  %t521 = getelementptr %"compiler/check:laneNode", ptr %t520, i32 0, i32 2
  %t522 = load %"compiler/source:Span", ptr %t521
  %t523 = load ptr, ptr %lp5
  %t524 = getelementptr %"compiler/check:laneNode", ptr %t523, i32 0, i32 3
  %t525 = load %"compiler/source:Span", ptr %t524
  %t526 = load ptr, ptr %lp5
  %t527 = getelementptr %"compiler/check:laneNode", ptr %t526, i32 0, i32 1
  %t528 = load i32, ptr %t527, !range !{i32 0, i32 114}
  %t529 = load ptr, ptr %l14, !tbaa !29
  %t530 = load ptr, ptr %l15, !tbaa !29
  %t531 = load ptr, ptr %lp5
  %t532 = getelementptr %"compiler/check:laneNode", ptr %t531, i32 0, i32 2
  %t533 = load %"compiler/source:Span", ptr %t532
  %t534 = load ptr, ptr %lp5
  %t535 = getelementptr %"compiler/check:laneNode", ptr %t534, i32 0, i32 2
  %t536 = load %"compiler/source:Span", ptr %t535
  %t545 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v3, ptr %v3, ptr %v0, ptr %t519, %"compiler/source:Span" %t522, %"compiler/source:Span" %t525, i32 %t528, ptr %t529, ptr %t530, %"compiler/source:Span" %t533, %"compiler/source:Span" %t536)
  store ptr %t545, ptr %l224
  br label %bb84
bb84:
  %t546 = load ptr, ptr %l215, !tbaa !29
  %t547 = load ptr, ptr %l224, !tbaa !29
  %t548 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v0, ptr %v3, ptr %t546, ptr %t547)
  store ptr %t548, ptr %l225
  br label %bb85
bb85:
  %t549 = load ptr, ptr %l225, !tbaa !29
  store ptr %t549, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca %"compiler/generic:AnySlot"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca ptr
  %l29 = alloca i32
  %l32 = alloca i64
  %l33 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca i32
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l75 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca %"compiler/source:Span"
  %l79 = alloca %"compiler/source:Span"
  %l80 = alloca i64
  %l82 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l92 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l114 = alloca i32
  %l117 = alloca ptr
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l126 = alloca i64
  %l130 = alloca i64
  %l133 = alloca i64
  %l153 = alloca ptr
  %l157 = alloca i32
  %l158 = alloca i32
  %l161 = alloca ptr
  %l165 = alloca i32
  %l172 = alloca i64
  %l174 = alloca i64
  %l179 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t95 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l26
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l26, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t8, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i32 %t10, ptr %l29
  br label %bb2
bb2:
  %t11 = load i32, ptr %l29, !tbaa !23
  store i32 %t11, ptr %l6, !tbaa !23
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 28
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l32
  br label %bb3
bb3:
  %t17 = load i64, ptr %l32, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  %t18 = load ptr, ptr %l5, !tbaa !29
  store ptr %t18, ptr %l33, !tbaa !29
  %t19 = load ptr, ptr %l33, !tbaa !29
  %t20 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 15
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = add i64 %t21, 1
  %t25 = load ptr, ptr %l33, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t25, i32 0, i32 15
  store i64 %t23, ptr %t26, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 42
  store i32 0, ptr %t29, !tbaa !23
  store ptr null, ptr %l8, !tbaa !29
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = icmp slt i64 %t30, -1
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  store ptr %t39, ptr %l41, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t40)
  store i32 %t43, ptr %l44
  br label %bb6
bb5:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l77, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t45, ptr %l78
  %t46 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t46, ptr %l79
  %t47 = load i64, ptr %l2, !tbaa !24
  store i64 %t47, ptr %l80, !tbaa !24
  %t48 = load ptr, ptr %l3, !tbaa !29
  store ptr %t48, ptr %l82, !tbaa !29
  %t50 = icmp sge i64 0, 0
  br i1 %t50, label %bb15, label %bb16
bb6:
  %t52 = load ptr, ptr %l41, !tbaa !29
  %t53 = load i32, ptr %l44, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l45
  br label %bb7
bb7:
  %t55 = load i32, ptr %l45, !tbaa !23
  store i32 %t55, ptr %l9, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load i32, ptr %l9, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %t59, i32 %t60)
  store { i64, ptr } %t63, ptr %l49
  br label %bb8
bb8:
  %t64 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t64, ptr %l50, !tbaa !27
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 -2, %t65
  %t69 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr %"compiler/generic:AnySlot", ptr %t70, i64 %t67
  %t72 = load %"compiler/generic:AnySlot", ptr %t71
  store %"compiler/generic:AnySlot" %t72, ptr %l10
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l9, !tbaa !23
  %t76 = load i64, ptr %l2, !tbaa !24
  %t78 = sub i64 -2, %t76
  %t79 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %t74, i32 %t75, i64 %t78, %"compiler/source:Span" %t79)
  br label %bb9
bb9:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l59, !tbaa !29
  %t85 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t85, ptr %l60
  %t86 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t86, ptr %l61
  %t87 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 5
  %t88 = load i32, ptr %t87, !tbaa !23
  store i32 %t88, ptr %l62, !tbaa !23
  %t89 = load i32, ptr %l9, !tbaa !23
  %t90 = load i64, ptr %l2, !tbaa !24
  %t92 = sub i64 -2, %t90
  %t93 = getelementptr %"compiler/generic:AnySlot", ptr %l10, i32 0, i32 5
  %t94 = load i32, ptr %t93, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t95
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 0
  store i64 3, ptr %t96
  %t98 = insertvalue { i32, i64, i32 } undef, i32 %t89, 0
  %t100 = insertvalue { i32, i64, i32 } %t98, i64 %t92, 1
  %t102 = insertvalue { i32, i64, i32 } %t100, i32 %t94, 2
  %t103 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 1
  store { i32, i64, i32 } %t102, ptr %t103
  %t104 = load { i64, [3 x i64] }, ptr %t95
  %t106 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store { i64, [3 x i64] } %t104, ptr %t106
  store ptr %t106, ptr %l68, !tbaa !29
  %t107 = load ptr, ptr %l3, !tbaa !29
  store ptr %t107, ptr %l70, !tbaa !29
  %t109 = icmp sge i64 0, 0
  br i1 %t109, label %bb10, label %bb11
bb10:
  %t111 = icmp sle i64 0, 1152921504606846975
  br i1 %t111, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_652199a1d15cfac6_f2a0b86627c88902)
  unreachable
bb12:
  %t113 = mul i64 0, 8
  %t114 = insertvalue { i64, ptr } undef, i64 0, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t116 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l60
  %t119 = load %"compiler/source:Span", ptr %l61
  %t120 = load i32, ptr %l62, !tbaa !23
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t122 = load ptr, ptr %l70, !tbaa !29
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v3, ptr %v1, ptr %v0, ptr %v2, ptr %v3, ptr %t117, %"compiler/source:Span" %t118, %"compiler/source:Span" %t119, i32 %t120, ptr %t121, i64 -1, ptr %t122, { i64, ptr } %t115, { i64, ptr } %t116)
  store ptr %t125, ptr %l75
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_652199a1d15cfac6_f2a0b86627c88902)
  unreachable
bb14:
  %t126 = load ptr, ptr %l75, !tbaa !29
  store ptr %t126, ptr %l8, !tbaa !29
  br label %bb24
bb15:
  %t128 = icmp sle i64 0, 1152921504606846975
  br i1 %t128, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_7509e56452997e5b_fb360af196d85db7)
  unreachable
bb17:
  %t130 = mul i64 0, 8
  %t131 = insertvalue { i64, ptr } undef, i64 0, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t132, ptr %l85, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t133, ptr %l86, !tbaa !27
  %t134 = icmp sge i64 0, 0
  br i1 %t134, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_7509e56452997e5b_fb360af196d85db7)
  unreachable
bb19:
  %t136 = icmp sle i64 0, 2305843009213693951
  br i1 %t136, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_ff81ff8210117a78_6f7a62fdc976c914)
  unreachable
bb21:
  %t138 = mul i64 0, 4
  %t139 = insertvalue { i64, ptr } undef, i64 0, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t141 = load ptr, ptr %l77, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l78
  %t143 = load %"compiler/source:Span", ptr %l79
  %t144 = load i64, ptr %l80, !tbaa !24
  %t145 = load ptr, ptr %l82, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t149 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %v3, ptr %v3, ptr %t141, %"compiler/source:Span" %t142, %"compiler/source:Span" %t143, i64 %t144, ptr %t145, { i64, ptr } %t146, { i64, ptr } %t147, { i64, ptr } %t140)
  store ptr %t149, ptr %l90
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ff81ff8210117a78_6f7a62fdc976c914)
  unreachable
bb23:
  %t150 = load ptr, ptr %l90, !tbaa !29
  store ptr %t150, ptr %l8, !tbaa !29
  br label %bb24
bb24:
  %t152 = load ptr, ptr %l5, !tbaa !29
  store ptr %t152, ptr %l92, !tbaa !29
  %t153 = load ptr, ptr %l92, !tbaa !29
  %t154 = getelementptr %"compiler/check:frame", ptr %t153, i32 0, i32 15
  %t155 = load i64, ptr %t154, !tbaa !24
  %t157 = sub i64 %t155, 1
  %t159 = load ptr, ptr %l92, !tbaa !29
  %t160 = getelementptr %"compiler/check:frame", ptr %t159, i32 0, i32 15
  store i64 %t157, ptr %t160, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/check:Checker", ptr %t161, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 42
  %t170 = load i32, ptr %t169, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t166, i32 %t170)
  store { i64, ptr } %t173, ptr %l100
  br label %bb25
bb25:
  %t174 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t174, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  store i64 %t177, ptr %l13, !tbaa !24
  br label %bb26
bb26:
  %t179 = load i64, ptr %l12, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t183 = icmp slt i64 %t179, %t180
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t187 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t187, ptr %l107, !tbaa !27
  %t188 = load i64, ptr %l12, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i32, ptr %t191, i64 %t188
  %t193 = load i32, ptr %t192, !tbaa !33
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/check:Checker", ptr %t195, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 2
  %t204 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t200, i32 %t193)
  store i32 %t204, ptr %l114
  br label %bb30
bb30:
  %t205 = load i32, ptr %l6, !tbaa !23
  %t206 = load i32, ptr %l114, !tbaa !23
  %t208 = icmp ne i32 %t206, %t205
  br i1 %t208, label %bb31, label %bb32
bb31:
  %t210 = load ptr, ptr %l5, !tbaa !29
  store ptr %t210, ptr %l117, !tbaa !29
  %t211 = load ptr, ptr %l117, !tbaa !29
  %t212 = getelementptr %"compiler/check:frame", ptr %t211, i32 0, i32 17
  %t213 = load i64, ptr %t212, !tbaa !24
  %t215 = add i64 %t213, 1
  %t217 = load ptr, ptr %l117, !tbaa !29
  %t218 = getelementptr %"compiler/check:frame", ptr %t217, i32 0, i32 17
  store i64 %t215, ptr %t218, !tbaa !24
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t219 = load i64, ptr %l12, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l12, !tbaa !24
  br label %bb26
bb35:
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l122
  br label %bb36
bb36:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l15
  %t225 = load i64, ptr %l7, !tbaa !24
  store i64 %t225, ptr %l16, !tbaa !24
  %t227 = load ptr, ptr %l5, !tbaa !29
  %t229 = getelementptr %"compiler/check:frame", ptr %t227, i32 0, i32 28
  %t231 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t229)
  store i64 %t231, ptr %l126
  br label %bb37
bb37:
  %t232 = load i64, ptr %l126, !tbaa !24
  store i64 %t232, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t233 = load i64, ptr %l17, !tbaa !24
  %t234 = load i64, ptr %l16, !tbaa !24
  %t237 = icmp sgt i64 %t233, %t234
  br i1 %t237, label %bb38, label %bb39
bb38:
  %t239 = load i64, ptr %l18, !tbaa !24
  %t241 = icmp sgt i64 %t239, 0
  br i1 %t241, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb43
bb40:
  %t243 = load i64, ptr %l17, !tbaa !24
  %t244 = load i64, ptr %l16, !tbaa !24
  %t247 = sub i64 %t243, %t244
  %t248 = load i64, ptr %l18, !tbaa !24
  %t251 = add i64 %t247, %t248
  %t253 = sub i64 %t251, 1
  %t254 = load i64, ptr %l18, !tbaa !24
  %t257 = sdiv i64 %t253, %t254
  store i64 %t257, ptr %l133, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb42
bb42:
  %t259 = load i64, ptr %l133, !tbaa !24
  store i64 %t259, ptr %l130, !tbaa !24
  br label %bb43
bb43:
  %t260 = load i64, ptr %l130, !tbaa !24
  store i64 %t260, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb44
bb44:
  %t261 = load i64, ptr %l20, !tbaa !24
  %t262 = load i64, ptr %l19, !tbaa !24
  %t265 = icmp slt i64 %t261, %t262
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb45, label %bb46
bb45:
  br label %bb56
bb46:
  br label %bb47
bb47:
  %t269 = load i64, ptr %l16, !tbaa !24
  %t270 = load i64, ptr %l20, !tbaa !24
  %t271 = load i64, ptr %l18, !tbaa !24
  %t274 = mul i64 %t270, %t271
  %t277 = add i64 %t269, %t274
  store i64 %t277, ptr %l21, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/generic:Program", ptr %t282, i32 0, i32 2
  store ptr %t284, ptr %l153, !tbaa !29
  %t285 = load ptr, ptr %l5, !tbaa !29
  %t287 = getelementptr %"compiler/check:frame", ptr %t285, i32 0, i32 28
  %t288 = load i64, ptr %l21, !tbaa !24
  %t291 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t287, i64 %t288)
  store i32 %t291, ptr %l157
  br label %bb48
bb48:
  %t292 = load ptr, ptr %l153, !tbaa !29
  %t293 = load i32, ptr %l157, !tbaa !23
  %t294 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t292, i32 %t293)
  store i32 %t294, ptr %l158
  br label %bb49
bb49:
  %t295 = load i32, ptr %l6, !tbaa !23
  %t296 = load i32, ptr %l158, !tbaa !23
  %t298 = icmp ne i32 %t296, %t295
  br i1 %t298, label %bb50, label %bb51
bb50:
  store ptr %l15, ptr %l161, !tbaa !29
  %t300 = load ptr, ptr %l5, !tbaa !29
  %t302 = getelementptr %"compiler/check:frame", ptr %t300, i32 0, i32 28
  %t303 = load i64, ptr %l21, !tbaa !24
  %t306 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t302, i64 %t303)
  store i32 %t306, ptr %l165
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t307 = load ptr, ptr %l161, !tbaa !29
  %t308 = load i32, ptr %l165, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t307, i32 %t308)
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t309 = load i64, ptr %l20, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l20, !tbaa !24
  br label %bb44
bb56:
  %t313 = load ptr, ptr %l5, !tbaa !29
  %t315 = getelementptr %"compiler/check:frame", ptr %t313, i32 0, i32 28
  %t316 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t315, i64 %t316)
  br label %bb57
bb57:
  store ptr %l15, ptr %l22, !tbaa !29
  store i64 0, ptr %l23, !tbaa !24
  br label %bb58
bb58:
  %t320 = load i64, ptr %l23, !tbaa !24
  store i64 %t320, ptr %l172, !tbaa !24
  %t321 = load ptr, ptr %l22, !tbaa !29
  %t323 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t321)
  store i64 %t323, ptr %l174
  br label %bb59
bb59:
  %t324 = load i64, ptr %l172, !tbaa !24
  %t325 = load i64, ptr %l174, !tbaa !24
  %t326 = icmp slt i64 %t324, %t325
  %t328 = xor i1 %t326, true
  br i1 %t328, label %bb60, label %bb61
bb60:
  br label %bb66
bb61:
  br label %bb62
bb62:
  %t330 = load ptr, ptr %l22, !tbaa !29
  %t331 = load i64, ptr %l23, !tbaa !24
  %t334 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t330, i64 %t331)
  store i32 %t334, ptr %l179
  br label %bb63
bb63:
  %t335 = load i32, ptr %l179, !tbaa !23
  %t336 = load ptr, ptr %l5, !tbaa !29
  %t338 = getelementptr %"compiler/check:frame", ptr %t336, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t338, i32 %t335)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t342 = load i64, ptr %l23, !tbaa !24
  %t344 = add i64 %t342, 1
  store i64 %t344, ptr %l23, !tbaa !24
  br label %bb58
bb66:
  %t346 = load ptr, ptr %l8, !tbaa !29
  %t348 = icmp eq ptr %t346, null
  br i1 %t348, label %bb67, label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_77a5603a1298311f_4bb819fe8c7bb9e3)
  unreachable
bb68:
  br label %bb69
bb69:
  %t350 = load ptr, ptr %l8, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t350, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoIndex(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %l12 = alloca i1
  %l17 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l31 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca i64
  %l33 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l38 = alloca { i64, ptr }
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %t1, %"compiler/source:Span" %a1)
  store %"compiler/source:Span" %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t6, ptr %l5
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = load %"compiler/source:Span", ptr %l5
  %t13 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s0, ptr %s0, ptr %t7, i32 %t8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, %"compiler/source:Span" %t9, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, i64 1, i1 true)
  store i1 %t13, ptr %l12
  br label %bb2
bb2:
  %t14 = load i1, ptr %l12, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = add i64 %a4, 1
  %t23 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t15, i32 %t16, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d26, i32 0, i32 1) }, i64 %t19)
  store i64 %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load i64, ptr %l17, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 48
  %t31 = getelementptr %"compiler/source:Span", ptr %t30, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t34 = icmp sge i32 %t32, 0
  br i1 %t34, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 48
  %t39 = load %"compiler/source:Span", ptr %t38
  store %"compiler/source:Span" %t39, ptr %l23
  br label %bb11
bb10:
  %t41 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t41, ptr %l23
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t47 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t43, i32 %a3)
  store { i64, ptr } %t47, ptr %l29
  br label %bb12
bb12:
  %t48 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  %t50 = extractvalue { i64, ptr } %t48, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t56 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtUndeclared(ptr %v0, ptr %v0, { i64, ptr } %t54)
  store %"compiler/diagmsg:Msg" %t56, ptr %l31
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l19, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l23
  %t59 = load %"compiler/diagmsg:Msg", ptr %l31
  %t60 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t57, %"compiler/source:Span" %t58, %"compiler/diagmsg:Msg" %t59)
  store i64 %t60, ptr %l32
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l33, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t62, ptr %l34
  %t63 = load i32, ptr %l2, !tbaa !23
  store i32 %t63, ptr %l35, !tbaa !23
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t64, i32 %t65)
  store { i64, ptr } %t68, ptr %l38
  br label %bb16
bb16:
  %t69 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %v0, ptr %v0, { i64, ptr } %t75)
  store %"compiler/diagmsg:Msg" %t77, ptr %l40
  br label %bb17
bb17:
  %t78 = load ptr, ptr %l33, !tbaa !29
  %t79 = load %"compiler/source:Span", ptr %l34
  %t80 = load i32, ptr %l35, !tbaa !23
  %t81 = load %"compiler/diagmsg:Msg", ptr %l40
  %t82 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s0, ptr %v0, ptr %t78, %"compiler/source:Span" %t79, i32 %t80, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d27, i32 0, i32 1) }, %"compiler/diagmsg:Msg" %t81)
  store i64 %t82, ptr %l41
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverImmut(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 3
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [6 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr, ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l18
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 4
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t40 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t37, ptr %t34, ptr %t35)
  store i32 %t40, ptr %l23
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l14, !tbaa !29
  %t42 = load i32, ptr %l23, !tbaa !23
  %t43 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t43, ptr %l24
  br label %bb8
bb8:
  %t44 = load i1, ptr %l24, !tbaa !21
  store i1 %t44, ptr %l6, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_e50f118683988667_19bbe448830cf623)
  unreachable
bb14:
  %t45 = load i1, ptr %l6, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartHashes(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca i32
  %l27 = alloca i1
  %l28 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %l40 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i32
  %l60 = alloca i32
  %l61 = alloca i64
  %l64 = alloca i1
  %l66 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i1
  %l73 = alloca i1
  %l77 = alloca i64
  %l79 = alloca ptr
  %l91 = alloca i1
  %l92 = alloca ptr
  %l96 = alloca i64
  %l97 = alloca i64
  %l104 = alloca i32
  %l109 = alloca i32
  %l112 = alloca ptr
  %l117 = alloca i32
  %l122 = alloca i1
  %l127 = alloca ptr
  %l132 = alloca i32
  %l133 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l151 = alloca i1
  %l152 = alloca i1
  %l156 = alloca i1
  %l159 = alloca ptr
  %l164 = alloca i32
  %l165 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l24
  br label %bb4
bb4:
  %t10 = load i32, ptr %l24, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l27
  br label %bb5
bb5:
  %t16 = load i1, ptr %l27, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  %t17 = load i32, ptr %l3, !tbaa !23
  store i32 %t17, ptr %l28, !tbaa !23
  br label %bb9
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l34
  br label %bb8
bb8:
  %t29 = load i32, ptr %l34, !tbaa !23
  store i32 %t29, ptr %l28, !tbaa !23
  br label %bb9
bb9:
  %t30 = load i32, ptr %l28, !tbaa !23
  store i32 %t30, ptr %l4, !tbaa !23
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l4, !tbaa !23
  %t39 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l40
  br label %bb12
bb11:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb13
bb12:
  %t40 = load i1, ptr %l40, !tbaa !21
  store i1 %t40, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l37, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t43 = insertvalue [2 x { i64, ptr }] %t42, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t45 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store [2 x { i64, ptr }] %t43, ptr %t45
  store ptr %t45, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t47 = load ptr, ptr %l5
  store i64 2, ptr %l7, !tbaa !24
  br label %bb16
bb15:
  br label %bb47
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb46
bb18:
  br label %bb19
bb19:
  %t58 = load ptr, ptr %l5
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = getelementptr [2 x { i64, ptr }], ptr %t58, i64 0, i64 %t59
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !37
  store { i64, ptr } %t63, ptr %l8, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l53, !tbaa !29
  %t69 = load i32, ptr %l4, !tbaa !23
  store i32 %t69, ptr %l54, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/load:Loader", ptr %t76, i32 0, i32 3
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t81 = load ptr, ptr @__olang_prog_scope
  %t84 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %t81, ptr %t79, { i64, ptr } %t80)
  store i32 %t84, ptr %l60
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t86 = load i32, ptr %l54, !tbaa !23
  %t87 = load i32, ptr %l60, !tbaa !23
  %t88 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t85, i32 %t86, i32 %t87)
  store i64 %t88, ptr %l61
  br label %bb21
bb21:
  %t89 = load i64, ptr %l61, !tbaa !24
  store i64 %t89, ptr %l9, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb26
bb23:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  store ptr %t97, ptr %l66, !tbaa !29
  %t98 = load i64, ptr %l9, !tbaa !24
  %t100 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t98)
  store i64 %t100, ptr %l68
  br label %bb24
bb24:
  %t101 = load ptr, ptr %l66, !tbaa !29
  %t102 = load i64, ptr %l68, !tbaa !24
  %t103 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t101, i64 %t102)
  store i64 %t103, ptr %l69
  br label %bb25
bb25:
  %t104 = load i64, ptr %l69, !tbaa !24
  %t105 = icmp sgt i64 %t104, 0
  store i1 %t105, ptr %l64, !tbaa !21
  br label %bb26
bb26:
  %t107 = load i1, ptr %l64, !tbaa !21
  br i1 %t107, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb45
bb28:
  br label %bb29
bb29:
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t109 = load ptr, ptr @__olang_prog_scope
  %t111 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t109, ptr %s4, { i64, ptr } %t108, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t111, ptr %l72
  br label %bb30
bb30:
  %t112 = load i1, ptr %l72, !tbaa !21
  br i1 %t112, label %bb31, label %bb32
bb31:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load i64, ptr %l9, !tbaa !24
  %t120 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t116, i64 %t117)
  store i64 %t120, ptr %l77
  br label %bb33
bb32:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb35
bb33:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t121)
  store ptr %t123, ptr %l79
  br label %bb34
bb34:
  %t124 = load ptr, ptr %l79, !tbaa !29
  %t126 = getelementptr %"compiler/check:frame", ptr %t124, i32 0, i32 1
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load i64, ptr %l77, !tbaa !24
  %t130 = icmp ne i64 %t128, %t127
  store i1 %t130, ptr %l73, !tbaa !21
  br label %bb35
bb35:
  %t132 = load i1, ptr %l73, !tbaa !21
  br i1 %t132, label %bb36, label %bb37
bb36:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 47
  %t136 = getelementptr %"compiler/source:Span", ptr %t135, i32 0, i32 0
  %t137 = load i32, ptr %t136, !tbaa !23
  %t139 = icmp sge i32 %t137, 0
  br i1 %t139, label %bb38, label %bb39
bb37:
  br label %bb42
bb38:
  store %olang.scope zeroinitializer, ptr %s7
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l9, !tbaa !24
  %t143 = load i32, ptr %l4, !tbaa !23
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/check:Checker", ptr %t144, i32 0, i32 47
  %t147 = load %"compiler/source:Span", ptr %t146
  %t152 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s7, ptr %s7, ptr %t141, i64 %t142, i32 %t143, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, %"compiler/source:Span" %t147, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t152, ptr %l91
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_scope_close(ptr %s7)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s4)
  br label %bb45
bb42:
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l92, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t158 = load i64, ptr %l9, !tbaa !24
  %t161 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t157, i64 %t158, i32 0)
  store i64 %t161, ptr %l96
  br label %bb43
bb43:
  %t162 = load ptr, ptr %l92, !tbaa !29
  %t163 = load i64, ptr %l96, !tbaa !24
  %t164 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t162, i64 %t163)
  store i64 %t164, ptr %l97
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  br label %ret
bb45:
  %t165 = load i64, ptr %l6, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l6, !tbaa !24
  br label %bb16
bb46:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb47:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 2
  %t175 = load i32, ptr %l3, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l104
  br label %bb48
bb48:
  %t179 = load i32, ptr %l104, !tbaa !23
  store i32 %t179, ptr %l10, !tbaa !23
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l10, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l109
  br label %bb49
bb49:
  %t190 = load i32, ptr %l109, !range !{i32 0, i32 33}
  store i32 %t190, ptr %l11
  %t191 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t193 = trunc i64 19 to i32
  %t194 = icmp eq i32 %t191, %t193
  br i1 %t194, label %bb50, label %bb51
bb50:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l112, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l10, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l117
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t207 = load i64, ptr %l2, !tbaa !24
  %t209 = add i64 %t207, 1
  %t210 = load ptr, ptr %l112, !tbaa !29
  %t211 = load i32, ptr %l117, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartHashes(ptr %v0, ptr %t210, i32 %t211, i64 %t209)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t213 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t215 = trunc i64 22 to i32
  %t216 = icmp eq i32 %t213, %t215
  br i1 %t216, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb57
bb56:
  %t218 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t220 = trunc i64 23 to i32
  %t221 = icmp eq i32 %t218, %t220
  store i1 %t221, ptr %l122, !tbaa !21
  br label %bb57
bb57:
  %t223 = load i1, ptr %l122, !tbaa !21
  br i1 %t223, label %bb58, label %bb59
bb58:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/check:Checker", ptr %t224, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  store ptr %t229, ptr %l127, !tbaa !29
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/check:Checker", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = getelementptr %"compiler/generic:Program", ptr %t233, i32 0, i32 2
  %t236 = load i32, ptr %l10, !tbaa !23
  %t239 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t235, i32 %t236)
  store i32 %t239, ptr %l132
  br label %bb60
bb59:
  br label %bb69
bb60:
  %t240 = load ptr, ptr %l127, !tbaa !29
  %t241 = load i32, ptr %l132, !tbaa !23
  %t242 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t240, i32 %t241)
  store { i64, ptr } %t242, ptr %l133
  br label %bb61
bb61:
  %t243 = load { i64, ptr }, ptr %l133, !tbaa !27
  store { i64, ptr } %t243, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t244, 0
  store i64 %t246, ptr %l14, !tbaa !24
  br label %bb62
bb62:
  %t248 = load i64, ptr %l13, !tbaa !24
  %t249 = load i64, ptr %l14, !tbaa !24
  %t252 = icmp slt i64 %t248, %t249
  %t254 = xor i1 %t252, true
  br i1 %t254, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t256 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t256, ptr %l140, !tbaa !27
  %t257 = load i64, ptr %l13, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i32, ptr %t260, i64 %t257
  %t262 = load i32, ptr %t261, !tbaa !33
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = load i64, ptr %l2, !tbaa !24
  %t268 = add i64 %t266, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartHashes(ptr %v0, ptr %t264, i32 %t262, i64 %t268)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t272 = load i64, ptr %l13, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l13, !tbaa !24
  br label %bb62
bb68:
  br label %bb69
bb69:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i32, ptr %l4, !tbaa !23
  %t280 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t276, i32 %t277)
  store i1 %t280, ptr %l151
  br label %bb70
bb70:
  %t281 = load i1, ptr %l151, !tbaa !21
  br i1 %t281, label %bb71, label %bb72
bb71:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/check:Checker", ptr %t282, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t286 = load i32, ptr %l4, !tbaa !23
  %t289 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t285, i32 %t286)
  store i1 %t289, ptr %l156
  br label %bb73
bb72:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb74
bb73:
  %t290 = load i1, ptr %l156, !tbaa !21
  store i1 %t290, ptr %l152, !tbaa !21
  br label %bb74
bb74:
  %t291 = load i1, ptr %l152, !tbaa !21
  br i1 %t291, label %bb75, label %bb76
bb75:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 2
  store ptr %t297, ptr %l159, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/check:Checker", ptr %t298, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !29
  %t303 = getelementptr %"compiler/generic:Program", ptr %t301, i32 0, i32 2
  %t304 = load i32, ptr %l4, !tbaa !23
  %t307 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t303, i32 %t304)
  store i32 %t307, ptr %l164
  br label %bb77
bb76:
  br label %bb86
bb77:
  %t308 = load ptr, ptr %l159, !tbaa !29
  %t309 = load i32, ptr %l164, !tbaa !23
  %t310 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t308, i32 %t309)
  store { i64, ptr } %t310, ptr %l165
  br label %bb78
bb78:
  %t311 = load { i64, ptr }, ptr %l165, !tbaa !27
  store { i64, ptr } %t311, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t312, 0
  store i64 %t314, ptr %l18, !tbaa !24
  br label %bb79
bb79:
  %t316 = load i64, ptr %l17, !tbaa !24
  %t317 = load i64, ptr %l18, !tbaa !24
  %t320 = icmp slt i64 %t316, %t317
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb80, label %bb81
bb80:
  br label %bb85
bb81:
  br label %bb82
bb82:
  %t324 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t324, ptr %l172, !tbaa !27
  %t325 = load i64, ptr %l17, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr i32, ptr %t328, i64 %t325
  %t330 = load i32, ptr %t329, !tbaa !33
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i64, ptr %l2, !tbaa !24
  %t336 = add i64 %t334, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartHashes(ptr %v0, ptr %t332, i32 %t330, i64 %t336)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t340 = load i64, ptr %l17, !tbaa !24
  %t342 = add i64 %t340, 1
  store i64 %t342, ptr %l17, !tbaa !24
  br label %bb79
bb85:
  br label %bb86
bb86:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadParamAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca i1
  %l31 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca { i64, ptr }
  %l41 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t50 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l8, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l11
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = load i32, ptr %l11, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l12
  br label %bb2
bb2:
  %t15 = load i32, ptr %l12, !tbaa !23
  store i32 %t15, ptr %l4, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store ptr %t23, ptr %l16
  br label %bb3
bb3:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t25, i64 %a2)
  store ptr %t27, ptr %l18
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l18, !tbaa !29
  store ptr %t28, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  br i1 %t31, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb7
bb6:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb10
bb9:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/ast:CaseDecl", ptr %t39, i32 0, i32 2
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t47 = icmp sge i64 %t38, %t44
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t49 = load i1, ptr %l24, !tbaa !21
  br i1 %t49, label %bb11, label %bb12
bb11:
  store { i64, [3 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 0
  store i64 0, ptr %t51
  %t52 = load { i64, [3 x i64] }, ptr %t50
  store { i64, [3 x i64] } %t52, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l4, !tbaa !23
  %t62 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t58, i32 %t59)
  store i64 %t62, ptr %l35
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = getelementptr %"compiler/ast:CaseDecl", ptr %t63, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l37, !tbaa !27
  %t67 = load i64, ptr %l3, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 %t67
  %t72 = load ptr, ptr %t71, !tbaa !39
  %t74 = getelementptr %"compiler/ast:Param", ptr %t72, i32 0, i32 2
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t76 = load ptr, ptr %l31, !tbaa !29
  %t77 = load i64, ptr %l35, !tbaa !24
  %t79 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t76, i64 %t77, ptr %t75)
  store { i64, [3 x i64] } %t79, ptr %l41
  br label %bb15
bb15:
  %t80 = load { i64, [3 x i64] }, ptr %l41
  store { i64, [3 x i64] } %t80, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l17 = alloca i1
  %l19 = alloca { i64, ptr }
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca i1
  %l28 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/source:Span"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
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
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Call", ptr %t22, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Call", ptr %t31, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l19, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 0
  %t38 = load ptr, ptr %t37, !tbaa !39
  %t40 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t38)
  store %"compiler/source:Span" %t40, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb8:
  %t41 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t41, ptr %l23
  %t44 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l21, ptr %l23)
  store i1 %t44, ptr %l25
  br label %bb9
bb9:
  %t45 = load i1, ptr %l25, !tbaa !21
  store i1 %t45, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l17, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load %"compiler/source:Span", ptr %l3
  %t51 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %a0, %"compiler/source:Span" %t48)
  store %"compiler/source:Span" %t51, ptr %l28
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t52 = load %"compiler/source:Span", ptr %l28
  store %"compiler/source:Span" %t52, ptr %rv
  br label %ret
bb14:
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_860e4bd13e8a5221_206c5ac6505376ad)
  unreachable
bb20:
  store %"compiler/source:Span" %a2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %l4, i64 0)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca ptr
  %l12 = alloca %"compiler/typed:Local"
  %l15 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca i1
  %l27 = alloca i32
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
  br label %bb20
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l10
  br label %bb6
bb6:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t22 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t20, i32 %t19)
  store %"compiler/typed:Local" %t22, ptr %l12
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 4
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 7}
  %t26 = trunc i64 0 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einGeneric(ptr %v0, ptr %t29)
  store i1 %t31, ptr %l17
  br label %bb10
bb9:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb10:
  %t32 = load i1, ptr %l17, !tbaa !21
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l15, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 81
  store ptr %t37, ptr %l21, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l2, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t44 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %t38, i64 %t41)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t44, ptr %l25
  br label %bb15
bb15:
  %t45 = load ptr, ptr %l21, !tbaa !29
  %t46 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  %t47 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t45, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t46)
  %t48 = extractvalue { i32, i1 } %t47, 1
  %t49 = extractvalue { i32, i1 } %t47, 0
  store i32 %t49, ptr %l27
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb17, label %ok.51, !prof !99
ok.51:
  store i1 %t48, ptr %l26
  br label %bb16
bb16:
  %t52 = load i1, ptr %l26, !tbaa !21
  store i1 %t52, ptr %l19, !tbaa !21
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb19
bb19:
  %t53 = load i1, ptr %l19, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_bc1810c6f53027de_db6dea45bcc6d282)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqBase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca i32
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i1
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i32
  %l58 = alloca ptr
  %l60 = alloca ptr
  %rv = alloca ptr
  %t108 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l11, !tbaa !29
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t4)
  store i32 %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l11, !tbaa !29
  %t8 = load i32, ptr %l13, !tbaa !23
  %t9 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = load i32, ptr %l14, !tbaa !23
  %t13 = icmp eq i32 %t11, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l3, !tbaa !29
  store ptr %t15, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l4, !tbaa !24
  store i64 4, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb11
bb8:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l24, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l24, !tbaa !24
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb13, label %bb14
bb13:
  br label %bb25
bb14:
  br label %bb15
bb15:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l42, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  store ptr %t64, ptr %l43, !tbaa !29
  %t65 = load ptr, ptr %l43, !tbaa !29
  %t66 = call ptr @__olang_scope_of(ptr %t65, ptr null)
  %t67 = ptrtoint ptr %t66 to i64
  %t69 = inttoptr i64 %t67 to ptr
  %t70 = load ptr, ptr %l43, !tbaa !29
  %t71 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %t69, ptr %t70)
  store i32 %t71, ptr %l45
  br label %bb16
bb16:
  %t72 = load ptr, ptr %l42, !tbaa !29
  %t73 = load i32, ptr %l45, !tbaa !23
  %t74 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t74, ptr %l46
  br label %bb17
bb17:
  %t75 = load i1, ptr %l46, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t78 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t78, ptr %l48
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  store ptr %t84, ptr %l51, !tbaa !29
  %t85 = load ptr, ptr %l3, !tbaa !29
  store ptr %t85, ptr %l52, !tbaa !29
  %t86 = load ptr, ptr %l52, !tbaa !29
  %t87 = call ptr @__olang_scope_of(ptr %t86, ptr null)
  %t88 = ptrtoint ptr %t87 to i64
  %t90 = inttoptr i64 %t88 to ptr
  %t91 = load ptr, ptr %l52, !tbaa !29
  %t92 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %t90, ptr %t91)
  store i32 %t92, ptr %l54
  br label %bb21
bb21:
  %t93 = load ptr, ptr %l51, !tbaa !29
  %t94 = load i32, ptr %l54, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t95, ptr %l55
  br label %bb22
bb22:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l1
  %t98 = load ptr, ptr %l3, !tbaa !29
  store ptr %t98, ptr %l58, !tbaa !29
  %t99 = load ptr, ptr %l58, !tbaa !29
  %t100 = call ptr @__olang_scope_of(ptr %t99, ptr null)
  %t101 = ptrtoint ptr %t100 to i64
  %t103 = inttoptr i64 %t101 to ptr
  %t106 = load ptr, ptr %l58, !tbaa !29
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t103, ptr %v2, ptr %t96, %"compiler/source:Span" %t97, ptr %t106)
  store ptr %t107, ptr %l60
  br label %bb23
bb23:
  store { i64, [4 x i64] } zeroinitializer, ptr %t108
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 0
  store i64 2, ptr %t109
  %t110 = load %"compiler/source:Span", ptr %l48
  %t111 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t110, 0
  %t112 = load i32, ptr %l55, !tbaa !23
  %t113 = insertvalue { %"compiler/source:Span", i32, ptr } %t111, i32 %t112, 1
  %t114 = load ptr, ptr %l60, !tbaa !29
  %t115 = insertvalue { %"compiler/source:Span", i32, ptr } %t113, ptr %t114, 2
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t115, ptr %t116
  %t117 = load { i64, [4 x i64] }, ptr %t108
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t117, ptr %t119
  store ptr %t119, ptr %l3, !tbaa !29
  br label %bb24
bb24:
  %t121 = load i64, ptr %l8, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l8, !tbaa !24
  br label %bb12
bb25:
  %t125 = load ptr, ptr %l3, !tbaa !29
  store ptr %t125, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettle(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i32
  %l19 = alloca ptr
  %l23 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca ptr
  %l39 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l5, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t10, ptr %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l10
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %s0, ptr %t13, ptr %l10)
  store i32 %t15, ptr %l12
  br label %bb3
bb3:
  %t16 = load i32, ptr %l12, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 55
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/check:frame", ptr %t20, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hb311157f9ff5cfde66cc01a7f8069ed8(ptr %v0, ptr %t19, i64 %t23, i32 %t24)
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 59
  store ptr %t30, ptr %l19, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %t31, i64 %t35)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t38, ptr %l23
  br label %bb5
bb5:
  %t39 = load i32, ptr %l2, !tbaa !23
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1d7b97a31fca2c92a4527a0b3309f2d1(ptr %v0, ptr %t40, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t41, i32 %t39)
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 14
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/check:frame", ptr %t46, i32 0, i32 0
  %t49 = load i64, ptr %t48, !tbaa !24
  %t52 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t45, i64 %t49)
  store ptr %t52, ptr %l29
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l29, !tbaa !29
  store ptr %t53, ptr %l3, !tbaa !29
  %t54 = load ptr, ptr %l3, !tbaa !29
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t66, i32 %t70)
  store i32 %t73, ptr %l39
  br label %bb8
bb8:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t79, i32 %t83)
  store i32 %t86, ptr %l45
  br label %bb9
bb9:
  %t87 = load i32, ptr %l2, !tbaa !23
  store i32 %t87, ptr %l46, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Body", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t93, i32 %t97)
  store i32 %t100, ptr %l52
  br label %bb10
bb10:
  %t101 = load ptr, ptr %l33, !tbaa !29
  %t102 = load i32, ptr %l39, !tbaa !23
  %t103 = load i32, ptr %l45, !tbaa !23
  %t104 = load i32, ptr %l46, !tbaa !23
  %t105 = load i32, ptr %l52, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t101, i32 %t102, i32 %t103, i32 %t104, i32 %t105, i64 0, i1 false, i32 0, i64 0)
  store i32 %t106, ptr %l53
  br label %bb11
bb11:
  %t107 = load i32, ptr %l53, !tbaa !23
  %t108 = load ptr, ptr %l30, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Body", ptr %t108, i32 0, i32 2
  store i32 %t107, ptr %t109, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleHeldWalks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/check:heldCand"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"compiler/check:heldCand"
  %l21 = alloca i1
  %l22 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i1
  %l31 = alloca ptr
  %l38 = alloca ptr
  %l46 = alloca i64
  %l49 = alloca i1
  %l50 = alloca i64
  %l53 = alloca i64
  %l58 = alloca ptr
  %l67 = alloca i64
  %l71 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 113
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2eLen_3ccompiler_2fcheck_3aheldCand_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l13
  br label %bb2
bb2:
  %t9 = load i64, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb48
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/check:heldCand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2eAt_3ccompiler_2fcheck_3aheldCand_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/check:heldCand" %t19, ptr %l18
  br label %bb6
bb6:
  %t20 = load %"compiler/check:heldCand", ptr %l18
  store %"compiler/check:heldCand" %t20, ptr %l3
  %t21 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb10
bb8:
  %t26 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l22, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 14
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l25
  br label %bb9
bb9:
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = load i64, ptr %l25, !tbaa !24
  %t35 = icmp sge i64 %t33, %t34
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb14
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 14
  %t41 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 0
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t40, i64 %t42)
  store ptr %t45, ptr %l31
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l31, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t46, i32 0, i32 11
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  store i1 %t51, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l27, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  br label %bb47
bb16:
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 14
  %t57 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t56, i64 %t58)
  store ptr %t61, ptr %l38
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l38, !tbaa !29
  store ptr %t62, ptr %l4, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = trunc i64 %t65 to i32
  %t69 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 2
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = trunc i64 %t70 to i32
  %t77 = call i64 @compiler_2fdefinit_2eHeldWalk(ptr %v0, ptr %t63, i32 %t67, i32 %t72)
  store i64 %t77, ptr %l46
  br label %bb19
bb19:
  %t78 = load i64, ptr %l46, !tbaa !24
  store i64 %t78, ptr %l5, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t81 = icmp slt i64 %t79, 0
  br i1 %t81, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb23
bb21:
  %t83 = load i64, ptr %l5, !tbaa !24
  store i64 %t83, ptr %l50, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 14
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l53
  br label %bb22
bb22:
  %t89 = load i64, ptr %l50, !tbaa !24
  %t90 = load i64, ptr %l53, !tbaa !24
  %t91 = icmp sge i64 %t89, %t90
  store i1 %t91, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t93 = load i1, ptr %l49, !tbaa !21
  br i1 %t93, label %bb24, label %bb25
bb24:
  br label %bb47
bb25:
  br label %bb26
bb26:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 14
  %t97 = load i64, ptr %l5, !tbaa !24
  %t100 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  store ptr %t100, ptr %l58
  br label %bb27
bb27:
  %t101 = load ptr, ptr %l58, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Body", ptr %t101, i32 0, i32 1
  %t104 = load { i64, [2 x i64] }, ptr %t103
  store { i64, [2 x i64] } %t104, ptr %l6
  %t106 = load { i64, [2 x i64] }, ptr %l6
  %t108 = extractvalue { i64, [2 x i64] } %t106, 0
  %t109 = icmp eq i64 %t108, 0
  br i1 %t109, label %bb28, label %bb29
bb28:
  %t111 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t112 = getelementptr { i64 }, ptr %t111, i32 0, i32 0
  %t113 = load i64, ptr %t112
  store i64 %t113, ptr %l7, !tbaa !24
  br label %bb30
bb29:
  br label %bb41
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i64, ptr %l7, !tbaa !24
  %t122 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l67
  br label %bb31
bb31:
  %t123 = load i64, ptr %l67, !tbaa !24
  store i64 %t123, ptr %l8, !tbaa !24
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load i64, ptr %l8, !tbaa !24
  %t131 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t127, i64 %t128)
  store i1 %t131, ptr %l71
  br label %bb32
bb32:
  %t132 = load i1, ptr %l71, !tbaa !21
  br i1 %t132, label %bb33, label %bb34
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i64, ptr %l8, !tbaa !24
  %t140 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %t136, i64 %t137)
  store i64 %t140, ptr %l76
  br label %bb35
bb34:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb36
bb35:
  %t141 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenPerTurn, !tbaa !24
  %t142 = load i64, ptr %l76, !tbaa !24
  %t144 = icmp eq i64 %t142, %t141
  store i1 %t144, ptr %l72, !tbaa !21
  br label %bb36
bb36:
  %t146 = load i1, ptr %l72, !tbaa !21
  br i1 %t146, label %bb37, label %bb38
bb37:
  %t147 = load ptr, ptr %l4, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t147, i32 0, i32 17
  %t150 = getelementptr %"compiler/check:heldCand", ptr %l3, i32 0, i32 1
  %t151 = load i64, ptr %t150, !tbaa !24
  %t153 = trunc i64 %t151 to i32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t149, i32 %t153)
  br label %bb39
bb38:
  br label %bb40
bb39:
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
  call void @__olang_check_failed(ptr @olang_loc_e205085f53b5fcbb_81fd3e9c55e0751f)
  unreachable
bb46:
  br label %bb47
bb47:
  %t157 = load i64, ptr %l2, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l2, !tbaa !24
  br label %bb1
bb48:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estep(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l38 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i1
  %l53 = alloca i1
  %l59 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca %"compiler/source:Span"
  %l68 = alloca { i64, ptr }
  %l70 = alloca %"compiler/diagmsg:Msg"
  %l71 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca ptr
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca i32
  %l84 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca i1
  %l89 = alloca i64
  %l92 = alloca i32
  %l93 = alloca i64
  %l94 = alloca ptr
  %l96 = alloca i32
  %l101 = alloca i64
  %l108 = alloca ptr
  %l109 = alloca %"compiler/source:Span"
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l112 = alloca i32
  %l113 = alloca i32
  %l114 = alloca i32
  %l118 = alloca { i64, ptr }
  %t130 = alloca { i64, [4 x i64] }, align 8
  %t213 = alloca { i64, [5 x i64] }, align 8
  %t229 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t1, ptr %t2)
  store ptr %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l12, !tbaa !29
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l15, !tbaa !29
  %t12 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t12, ptr %l16
  %t13 = load i1, ptr %l3, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i32 81, ptr %l18
  br label %bb7
bb6:
  store i32 82, ptr %l18
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l4, !tbaa !29
  store ptr %t17, ptr %l21, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l22, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t19)
  store %"compiler/source:Span" %t21, ptr %l24
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l22, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l24
  %t24 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t22, %"compiler/source:Span" %t23, i64 2)
  store %"compiler/source:Span" %t24, ptr %l25
  br label %bb9
bb9:
  %t25 = icmp sge i64 0, 0
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = icmp sle i64 0, 1152921504606846975
  br i1 %t27, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_ddf5999d75afc0ea_2c71428eb0b518ce)
  unreachable
bb12:
  %t29 = mul i64 0, 8
  %t30 = insertvalue { i64, ptr } undef, i64 0, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t32 = load ptr, ptr %l15, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l16
  %t34 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t35 = load ptr, ptr %l21, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l25
  %t38 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBack(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t32, %"compiler/source:Span" %t33, i32 %t34, ptr %t35, ptr null, %"compiler/source:Span" %t36, i64 -1, { i64, ptr } %t31)
  store i1 %t38, ptr %l29
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_ddf5999d75afc0ea_2c71428eb0b518ce)
  unreachable
bb14:
  %t39 = load i1, ptr %l29, !tbaa !21
  br i1 %t39, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l30, !tbaa !29
  %t41 = load ptr, ptr %l4, !tbaa !29
  store ptr %t41, ptr %l31, !tbaa !29
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t42)
  store %"compiler/source:Span" %t44, ptr %l33
  br label %bb18
bb18:
  %t45 = load ptr, ptr %l30, !tbaa !29
  %t46 = load ptr, ptr %l31, !tbaa !29
  %t47 = load %"compiler/source:Span", ptr %l33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v0, ptr %t45, ptr %t46, %"compiler/source:Span" %t47)
  br label %bb19
bb19:
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t48)
  store i32 %t50, ptr %l35
  br label %bb20
bb20:
  %t51 = load i32, ptr %l35, !tbaa !23
  store i32 %t51, ptr %l5, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l5, !tbaa !23
  %t56 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t52, i32 %t53)
  store i1 %t56, ptr %l38
  br label %bb21
bb21:
  %t57 = load i1, ptr %l38, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb29
bb23:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l5, !tbaa !23
  %t64 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t60, i32 %t61)
  store i1 %t64, ptr %l43
  br label %bb24
bb24:
  %t65 = load i1, ptr %l43, !tbaa !21
  br i1 %t65, label %bb25, label %bb26
bb25:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = load i32, ptr %l5, !tbaa !23
  %t73 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l48
  br label %bb27
bb26:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb28
bb27:
  %t74 = load i1, ptr %l48, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %l44, !tbaa !21
  br label %bb28
bb28:
  %t77 = load i1, ptr %l44, !tbaa !21
  store i1 %t77, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb30, label %bb31
bb30:
  %t79 = load i32, ptr %l5, !tbaa !23
  %t80 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t83 = icmp ne i32 %t79, %t80
  br i1 %t83, label %bb32, label %bb33
bb31:
  br label %bb44
bb32:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/source:Span", ptr %l1
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t88 = load i32, ptr %l5, !tbaa !23
  %t89 = load i1, ptr %l3, !tbaa !21
  %t95 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estepMethod(ptr %v0, ptr %v0, ptr %t85, %"compiler/source:Span" %t86, ptr %t87, i32 %t88, i1 %t89)
  store i1 %t95, ptr %l59
  br label %bb34
bb33:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb35
bb34:
  %t96 = load i1, ptr %l59, !tbaa !21
  %t97 = xor i1 %t96, true
  store i1 %t97, ptr %l53, !tbaa !21
  br label %bb35
bb35:
  %t99 = load i1, ptr %l53, !tbaa !21
  br i1 %t99, label %bb36, label %bb37
bb36:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l61, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l62, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t102)
  store %"compiler/source:Span" %t104, ptr %l64
  br label %bb38
bb37:
  br label %bb43
bb38:
  %t105 = load ptr, ptr %l62, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l64
  %t107 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t105, %"compiler/source:Span" %t106, i64 2)
  store %"compiler/source:Span" %t107, ptr %l65
  br label %bb39
bb39:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l5, !tbaa !23
  %t112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t108, i32 %t109)
  store { i64, ptr } %t112, ptr %l68
  br label %bb40
bb40:
  %t113 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStepNotNumber(ptr %v0, ptr %v0, { i64, ptr } %t119)
  store %"compiler/diagmsg:Msg" %t121, ptr %l70
  br label %bb41
bb41:
  %t122 = load ptr, ptr %l61, !tbaa !29
  %t123 = load %"compiler/source:Span", ptr %l65
  %t124 = load %"compiler/diagmsg:Msg", ptr %l70
  %t125 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t122, %"compiler/source:Span" %t123, %"compiler/diagmsg:Msg" %t124)
  store i64 %t125, ptr %l71
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %ret
bb44:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load %"compiler/source:Span", ptr %l1
  %t128 = load %"compiler/source:Span", ptr %l1
  %t129 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 0
  store i64 7, ptr %t131
  %t133 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t128, 0
  %t135 = insertvalue { %"compiler/source:Span", i32 } %t133, i32 %t129, 1
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t135, ptr %t136
  %t137 = load { i64, [4 x i64] }, ptr %t130
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t137, ptr %t139
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t126, %"compiler/source:Span" %t127, ptr %t139)
  store ptr %t143, ptr %l78
  br label %bb45
bb45:
  %t144 = load ptr, ptr %l78, !tbaa !29
  store ptr %t144, ptr %l6, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l79, !tbaa !29
  %t146 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t146, ptr %l80
  %t147 = load i32, ptr %l5, !tbaa !23
  store i32 %t147, ptr %l81, !tbaa !23
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  store ptr %t153, ptr %l84, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l5, !tbaa !23
  %t158 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l87
  br label %bb46
bb46:
  %t159 = load ptr, ptr %l84, !tbaa !29
  %t160 = load i32, ptr %l87, !tbaa !23
  %t161 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t159, i32 %t160)
  store i1 %t161, ptr %l88
  br label %bb47
bb47:
  %t162 = load i1, ptr %l88, !tbaa !21
  br i1 %t162, label %bb48, label %bb49
bb48:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l5, !tbaa !23
  %t167 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l92
  br label %bb50
bb49:
  store i64 1, ptr %l89, !tbaa !24
  br label %bb52
bb50:
  %t168 = load i32, ptr %l92, !tbaa !23
  %t169 = call i64 @compiler_2fcheck_2efloatBits(i32 %t168, double 0x3ff0000000000000)
  store i64 %t169, ptr %l93
  br label %bb51
bb51:
  %t170 = load i64, ptr %l93, !tbaa !24
  store i64 %t170, ptr %l89, !tbaa !24
  br label %bb52
bb52:
  %t171 = load ptr, ptr %l79, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l80
  %t173 = load i32, ptr %l81, !tbaa !23
  %t174 = load i64, ptr %l89, !tbaa !24
  %t175 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t171, %"compiler/source:Span" %t172, i32 %t173, i64 %t174)
  store ptr %t175, ptr %l94
  br label %bb53
bb53:
  %t176 = load ptr, ptr %l94, !tbaa !29
  store ptr %t176, ptr %l7, !tbaa !29
  %t177 = load i1, ptr %l3, !tbaa !21
  br i1 %t177, label %bb54, label %bb55
bb54:
  store i32 3, ptr %l96
  br label %bb56
bb55:
  store i32 4, ptr %l96
  br label %bb56
bb56:
  %t181 = load i32, ptr %l96, !range !{i32 0, i32 52}
  store i32 %t181, ptr %l8
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 36
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l101
  br label %bb57
bb57:
  %t187 = load i64, ptr %l101, !tbaa !24
  store i64 %t187, ptr %l9, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 36
  %t191 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t190, ptr %t191)
  br label %bb58
bb58:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 36
  %t197 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t196, ptr %t197)
  br label %bb59
bb59:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l108, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t201, ptr %l109
  %t202 = load ptr, ptr %l4, !tbaa !29
  store ptr %t202, ptr %l110, !tbaa !29
  %t203 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t203, ptr %l111
  %t204 = load i32, ptr %l5, !tbaa !23
  store i32 %t204, ptr %l112, !tbaa !23
  %t205 = load i32, ptr %l8, !range !{i32 0, i32 52}
  store i32 %t205, ptr %l113
  store i32 0, ptr %l114
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 36
  %t209 = load i64, ptr %l9, !tbaa !24
  %t212 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t208, i64 %t209)
  store { i64, ptr } %t212, ptr %l118
  br label %bb60
bb60:
  store { i64, [5 x i64] } zeroinitializer, ptr %t213
  %t214 = getelementptr { i64, [5 x i64] }, ptr %t213, i32 0, i32 0
  store i64 9, ptr %t214
  %t215 = load %"compiler/source:Span", ptr %l111
  %t216 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t215, 0
  %t217 = load i32, ptr %l112, !tbaa !23
  %t218 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t216, i32 %t217, 1
  %t219 = load i32, ptr %l113, !range !{i32 0, i32 52}
  %t220 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t218, i32 %t219, 2
  %t221 = load i32, ptr %l114, !range !{i32 0, i32 3}
  %t222 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t220, i32 %t221, 3
  %t223 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t224 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t222, { i64, ptr } %t223, 4
  %t225 = getelementptr { i64, [5 x i64] }, ptr %t213, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t224, ptr %t225
  %t226 = load { i64, [5 x i64] }, ptr %t213
  %t228 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t226, ptr %t228
  store { i64, [3 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 0
  store i64 1, ptr %t230
  %t231 = load %"compiler/source:Span", ptr %l109
  %t232 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t231, 0
  %t233 = load ptr, ptr %l110, !tbaa !29
  %t234 = insertvalue { %"compiler/source:Span", ptr, ptr } %t232, ptr %t233, 1
  %t236 = insertvalue { %"compiler/source:Span", ptr, ptr } %t234, ptr %t228, 2
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t229, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t236, ptr %t237
  %t238 = load { i64, [3 x i64] }, ptr %t229
  %t240 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t238, ptr %t240
  %t241 = load ptr, ptr %l108, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t241, ptr %t240)
  br label %bb61
bb61:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/check:typeCase" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeCaseOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"compiler/generic:Context"
  %l6 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l7 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l8 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l9 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"compiler/check:typeCase"
  %l27 = alloca %"compiler/check:typeCase"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l46 = alloca %"compiler/generic:Context"
  %l49 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l50 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l52 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l53 = alloca i32
  %l55 = alloca i1
  %l61 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l62 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l64 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l65 = alloca i32
  %l67 = alloca i1
  %l72 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l97 = alloca ptr
  %l100 = alloca i32
  %l107 = alloca i32
  %l115 = alloca i32
  %l121 = alloca i32
  %l124 = alloca i64
  %l129 = alloca i64
  %l132 = alloca i64
  %l140 = alloca i64
  %l143 = alloca i64
  %l161 = alloca i64
  %l164 = alloca ptr
  %l165 = alloca i64
  %l167 = alloca i64
  %l171 = alloca i32
  %l175 = alloca ptr
  %l176 = alloca i32
  %l181 = alloca i32
  %l182 = alloca i32
  %l185 = alloca i1
  %l186 = alloca i32
  %l188 = alloca i64
  %l191 = alloca %"compiler/check:typeCase"
  %l200 = alloca i32
  %l202 = alloca %"compiler/check:typeCase"
  %l205 = alloca i1
  %l206 = alloca i32
  %l208 = alloca i64
  %l209 = alloca %"compiler/check:typeCase"
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca %"compiler/check:typeCase"
  %t37 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l28
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %t4, ptr %l2, i1 false)
  br label %bb2
bb2:
  %t9 = shl i64 1, 40
  %t11 = sub i64 0, %t9
  store i64 %t11, ptr %l34, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t12)
  store %"compiler/source:Span" %t14, ptr %l36
  br label %bb3
bb3:
  %t15 = getelementptr %"compiler/source:Span", ptr %l36, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t19 = load i64, ptr %l34, !tbaa !24
  %t21 = sub i64 %t19, %t18
  store i64 %t21, ptr %l3, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l41
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l41, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/check:frame", ptr %t27, i32 0, i32 4
  %t30 = getelementptr %"compiler/generic:Context", ptr %t29, i32 0, i32 0
  %t31 = load i64, ptr %t30, !tbaa !24
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/check:frame", ptr %t32, i32 0, i32 4
  %t35 = getelementptr %"compiler/generic:Context", ptr %t34, i32 0, i32 1
  %t36 = load i64, ptr %t35, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t37, ptr %s0, i64 %t31, i64 %t36)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t37, i64 160, i1 false)
  br label %bb5
bb5:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l46, i64 160, i1 false)
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = getelementptr %"compiler/check:frame", ptr %t40, i32 0, i32 4
  %t43 = getelementptr %"compiler/generic:Context", ptr %t42, i32 0, i32 2
  %t45 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t43)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t45, ptr %l49
  br label %bb6
bb6:
  %t46 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l49
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t46, ptr %l6
  br label %bb7
bb7:
  %t48 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l6)
  %t49 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t48, 1
  %t50 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t48, 0
  store i32 %t50, ptr %l53
  %t51 = icmp ne i32 %t50, 0
  br i1 %t51, label %bb9, label %ok.52, !prof !99
ok.52:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t49, ptr %l52
  br label %bb8
bb8:
  %t53 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l52
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t53, ptr %l50
  br label %bb11
bb9:
  %t54 = load i32, ptr %l53, !tbaa !23
  %t55 = ashr i32 %t54, 16
  %t57 = icmp eq i32 %t55, 1
  store i1 %t57, ptr %l55, !tbaa !21
  br label %bb10
bb10:
  br label %bb14
bb11:
  %t58 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l50
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t58, ptr %l7
  %t59 = getelementptr %"compiler/generic:Context", ptr %l5, i32 0, i32 2
  %t60 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l7, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l7, i32 0, i32 1
  %t63 = load i32, ptr %t62, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %t59, i32 %t61, i32 %t63)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb7
bb14:
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t69 = getelementptr %"compiler/check:frame", ptr %t67, i32 0, i32 4
  %t70 = getelementptr %"compiler/generic:Context", ptr %t69, i32 0, i32 3
  %t72 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t70)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t72, ptr %l61
  br label %bb15
bb15:
  %t73 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l61
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t73, ptr %l8
  br label %bb16
bb16:
  %t75 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l8)
  %t76 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t75, 1
  %t77 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t75, 0
  store i32 %t77, ptr %l65
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb18, label %ok.79, !prof !99
ok.79:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t76, ptr %l64
  br label %bb17
bb17:
  %t80 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l64
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t80, ptr %l62
  br label %bb20
bb18:
  %t81 = load i32, ptr %l65, !tbaa !23
  %t82 = ashr i32 %t81, 16
  %t84 = icmp eq i32 %t82, 1
  store i1 %t84, ptr %l67, !tbaa !21
  br label %bb19
bb19:
  br label %bb23
bb20:
  %t85 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l62
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t85, ptr %l9
  %t86 = getelementptr %"compiler/generic:Context", ptr %l5, i32 0, i32 3
  %t87 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l9, i32 0, i32 0
  %t88 = load i32, ptr %t87, !tbaa !23
  %t89 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l9, i32 0, i32 1
  %t90 = load i32, ptr %t89, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %t86, i32 %t88, i32 %t90)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb16
bb23:
  store i64 0, ptr %l10, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2)
  store i64 %t95, ptr %l72
  br label %bb24
bb24:
  %t96 = load i64, ptr %l72, !tbaa !24
  store i64 %t96, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb25, label %bb26
bb25:
  %t103 = load i64, ptr %l12, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb30
bb27:
  %t107 = load i64, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l12, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l79, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb29
bb29:
  %t123 = load i64, ptr %l79, !tbaa !24
  store i64 %t123, ptr %l76, !tbaa !24
  br label %bb30
bb30:
  %t124 = load i64, ptr %l76, !tbaa !24
  store i64 %t124, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb31
bb31:
  %t125 = load i64, ptr %l14, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb32, label %bb33
bb32:
  br label %bb39
bb33:
  br label %bb34
bb34:
  %t133 = load i64, ptr %l10, !tbaa !24
  %t134 = load i64, ptr %l14, !tbaa !24
  %t135 = load i64, ptr %l12, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l15, !tbaa !24
  %t143 = getelementptr %"compiler/generic:Context", ptr %l5, i32 0, i32 2
  store ptr %t143, ptr %l97, !tbaa !29
  %t144 = load i64, ptr %l15, !tbaa !24
  %t147 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2, i64 %t144)
  store i32 %t147, ptr %l100
  br label %bb35
bb35:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  %t154 = load i64, ptr %l3, !tbaa !24
  %t155 = load i64, ptr %l15, !tbaa !24
  %t156 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t153, i64 %t154, i64 %t155, i64 %t156)
  store i32 %t161, ptr %l107
  br label %bb36
bb36:
  %t162 = load ptr, ptr %l97, !tbaa !29
  %t163 = load i32, ptr %l100, !tbaa !23
  %t164 = load i32, ptr %l107, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %t162, i32 %t163, i32 %t164)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l14, !tbaa !24
  br label %bb31
bb39:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t178 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v1, ptr %t172, ptr %l5, ptr %t173)
  store i32 %t178, ptr %l115
  br label %bb40
bb40:
  %t179 = load i32, ptr %l115, !tbaa !23
  store i32 %t179, ptr %l16, !tbaa !23
  %t180 = load i32, ptr %l16, !tbaa !23
  %t181 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t184 = icmp eq i32 %t180, %t181
  br i1 %t184, label %bb41, label %bb42
bb41:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t190 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebareDecl(ptr %v0, ptr %v1, ptr %t186, ptr %t187)
  store i32 %t190, ptr %l121
  br label %bb43
bb42:
  br label %bb74
bb43:
  %t191 = load i32, ptr %l121, !tbaa !23
  store i32 %t191, ptr %l17, !tbaa !23
  %t192 = load i32, ptr %l17, !tbaa !23
  %t194 = icmp sge i32 %t192, 0
  br i1 %t194, label %bb44, label %bb45
bb44:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/check:Checker", ptr %t196, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t201 = getelementptr %"compiler/generic:Program", ptr %t199, i32 0, i32 2
  %t202 = load i32, ptr %l17, !tbaa !23
  %t205 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t201, i32 %t202)
  store i64 %t205, ptr %l129
  br label %bb46
bb45:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb47
bb46:
  %t206 = load i64, ptr %l129, !tbaa !24
  store i64 %t206, ptr %l124, !tbaa !24
  br label %bb47
bb47:
  %t207 = load i64, ptr %l124, !tbaa !24
  store i64 %t207, ptr %l18, !tbaa !24
  %t208 = load i64, ptr %l18, !tbaa !24
  %t210 = icmp sgt i64 %t208, 0
  br i1 %t210, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s9
  %t212 = load i64, ptr %l18, !tbaa !24
  store i64 %t212, ptr %l132, !tbaa !24
  %t213 = load i64, ptr %l132, !tbaa !24
  %t214 = icmp sge i64 %t213, 0
  br i1 %t214, label %bb50, label %bb51
bb49:
  br label %bb73
bb50:
  %t216 = load i64, ptr %l132, !tbaa !24
  %t217 = icmp sle i64 %t216, 2305843009213693951
  br i1 %t217, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_894a72349cd7ef67_30624e129d4b77a3)
  unreachable
bb52:
  %t219 = load i64, ptr %l132, !tbaa !24
  %t220 = mul i64 %t219, 4
  %t221 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t220)
  %t222 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  store { i64, ptr } %t223, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t225 = load i64, ptr %l18, !tbaa !24
  store i64 %t225, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t227 = load i64, ptr %l21, !tbaa !24
  %t228 = load i64, ptr %l20, !tbaa !24
  %t231 = icmp sgt i64 %t227, %t228
  br i1 %t231, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_894a72349cd7ef67_30624e129d4b77a3)
  unreachable
bb54:
  %t233 = load i64, ptr %l22, !tbaa !24
  %t235 = icmp sgt i64 %t233, 0
  br i1 %t235, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb59
bb56:
  %t237 = load i64, ptr %l21, !tbaa !24
  %t238 = load i64, ptr %l20, !tbaa !24
  %t241 = sub i64 %t237, %t238
  %t242 = load i64, ptr %l22, !tbaa !24
  %t245 = add i64 %t241, %t242
  %t247 = sub i64 %t245, 1
  %t248 = load i64, ptr %l22, !tbaa !24
  %t251 = sdiv i64 %t247, %t248
  store i64 %t251, ptr %l143, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb58
bb58:
  %t253 = load i64, ptr %l143, !tbaa !24
  store i64 %t253, ptr %l140, !tbaa !24
  br label %bb59
bb59:
  %t254 = load i64, ptr %l140, !tbaa !24
  store i64 %t254, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb60
bb60:
  %t255 = load i64, ptr %l24, !tbaa !24
  %t256 = load i64, ptr %l23, !tbaa !24
  %t259 = icmp slt i64 %t255, %t256
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb61, label %bb62
bb61:
  br label %bb67
bb62:
  br label %bb63
bb63:
  %t263 = load i64, ptr %l20, !tbaa !24
  %t264 = load i64, ptr %l24, !tbaa !24
  %t265 = load i64, ptr %l22, !tbaa !24
  %t268 = mul i64 %t264, %t265
  %t271 = add i64 %t263, %t268
  store i64 %t271, ptr %l25, !tbaa !24
  %t273 = load i64, ptr %l25, !tbaa !24
  store i64 %t273, ptr %l161, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/check:Checker", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 2
  store ptr %t279, ptr %l164, !tbaa !29
  %t280 = load i64, ptr %l3, !tbaa !24
  store i64 %t280, ptr %l165, !tbaa !24
  %t282 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2)
  store i64 %t282, ptr %l167
  br label %bb64
bb64:
  %t283 = load i64, ptr %l25, !tbaa !24
  %t284 = load i64, ptr %l167, !tbaa !24
  %t286 = add i64 %t284, %t283
  %t287 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t288 = load ptr, ptr %l164, !tbaa !29
  %t289 = load i64, ptr %l165, !tbaa !24
  %t292 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t288, i64 %t289, i64 %t286, i64 %t287)
  store i32 %t292, ptr %l171
  br label %bb65
bb65:
  %t293 = load i32, ptr %l171, !tbaa !23
  %t294 = load i64, ptr %l161, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr i32, ptr %t296, i64 %t294
  store i32 %t293, ptr %t297, !tbaa !33
  br label %bb66
bb66:
  %t298 = load i64, ptr %l24, !tbaa !24
  %t300 = add i64 %t298, 1
  store i64 %t300, ptr %l24, !tbaa !24
  br label %bb60
bb67:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/check:Checker", ptr %t302, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !29
  store ptr %t305, ptr %l175, !tbaa !29
  %t306 = load i32, ptr %l17, !tbaa !23
  store i32 %t306, ptr %l176, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 2
  %t313 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t316 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s9, ptr %t312, { i64, ptr } %t313)
  store i32 %t316, ptr %l181
  br label %bb68
bb68:
  %t317 = load ptr, ptr %l175, !tbaa !29
  %t318 = load i32, ptr %l176, !tbaa !23
  %t319 = load i32, ptr %l181, !tbaa !23
  %t320 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t317, i32 %t318, i32 %t319)
  store i32 %t320, ptr %l182
  br label %bb69
bb69:
  %t321 = load i32, ptr %l182, !tbaa !23
  store i32 %t321, ptr %l16, !tbaa !23
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load i32, ptr %l16, !tbaa !23
  %t326 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisTrait(ptr %v0, ptr %t322, i32 %t323)
  store i1 %t326, ptr %l185
  br label %bb70
bb70:
  %t327 = load i32, ptr %l16, !tbaa !23
  store i32 %t327, ptr %l186, !tbaa !23
  %t329 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2)
  store i64 %t329, ptr %l188
  br label %bb71
bb71:
  %t330 = load i64, ptr %l18, !tbaa !24
  %t331 = load i64, ptr %l188, !tbaa !24
  %t333 = add i64 %t331, %t330
  %t334 = load i1, ptr %l185, !tbaa !21
  %t335 = load i32, ptr %l186, !tbaa !23
  %t337 = call %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %s9, i1 false, i1 %t334, i32 %t335, i64 %t333)
  store %"compiler/check:typeCase" %t337, ptr %l191
  br label %bb72
bb72:
  %t338 = load %"compiler/check:typeCase", ptr %l191
  store %"compiler/check:typeCase" %t338, ptr %l26
  %t339 = load i64, ptr %l3, !tbaa !24
  %t341 = getelementptr %"compiler/check:typeCase", ptr %l26, i32 0, i32 4
  store i64 %t339, ptr %t341, !tbaa !24
  %t342 = getelementptr %"compiler/check:typeCase", ptr %l26, i32 0, i32 5
  store i1 true, ptr %t342, !tbaa !21
  %t343 = load %"compiler/check:typeCase", ptr %l26
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/check:typeCase" %t343, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t345 = load i32, ptr %l16, !tbaa !23
  %t346 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t349 = icmp eq i32 %t345, %t346
  br i1 %t349, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s13
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load ptr, ptr %l1, !tbaa !29
  %t356 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t351, ptr %t352)
  store i32 %t356, ptr %l200
  br label %bb77
bb76:
  br label %bb79
bb77:
  %t357 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t359 = call %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %s13, i1 false, i1 false, i32 %t357, i64 0)
  store %"compiler/check:typeCase" %t359, ptr %l202
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t360 = load %"compiler/check:typeCase", ptr %l202
  store %"compiler/check:typeCase" %t360, ptr %rv
  br label %ret
bb79:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l16, !tbaa !23
  %t365 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisTrait(ptr %v0, ptr %t361, i32 %t362)
  store i1 %t365, ptr %l205
  br label %bb80
bb80:
  %t366 = load i32, ptr %l16, !tbaa !23
  store i32 %t366, ptr %l206, !tbaa !23
  %t368 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2)
  store i64 %t368, ptr %l208
  br label %bb81
bb81:
  %t369 = load i1, ptr %l205, !tbaa !21
  %t370 = load i32, ptr %l206, !tbaa !23
  %t371 = load i64, ptr %l208, !tbaa !24
  %t372 = call %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %s0, i1 false, i1 %t369, i32 %t370, i64 %t371)
  store %"compiler/check:typeCase" %t372, ptr %l209
  br label %bb82
bb82:
  %t373 = load %"compiler/check:typeCase", ptr %l209
  store %"compiler/check:typeCase" %t373, ptr %l27
  %t374 = load i64, ptr %l3, !tbaa !24
  %t376 = getelementptr %"compiler/check:typeCase", ptr %l27, i32 0, i32 4
  store i64 %t374, ptr %t376, !tbaa !24
  %t377 = load %"compiler/check:typeCase", ptr %l27
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/check:typeCase" %t377, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:typeCase", ptr %rv
  ret %"compiler/check:typeCase" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l2 = alloca ptr
  %rv = alloca ptr
  %t12 = alloca { i64, [5 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 138
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 138
  store i64 %t6, ptr %t9, !tbaa !24
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [5 x i64] }, ptr %t12, i32 0, i32 0
  store i64 0, ptr %t13
  %t15 = insertvalue { %"compiler/source:Span", i32, i64 } undef, %"compiler/source:Span" %a1, 0
  %t17 = insertvalue { %"compiler/source:Span", i32, i64 } %t15, i32 %t11, 1
  %t18 = insertvalue { %"compiler/source:Span", i32, i64 } %t17, i64 0, 2
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t12, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64 } %t18, ptr %t19
  %t20 = load { i64, [5 x i64] }, ptr %t12
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t20, ptr %t22
  store ptr %t22, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalueArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca i1
  %l24 = alloca i1
  %l29 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l14
  br label %bb8
bb8:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %l3, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t26 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t22, ptr %t23, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d33, i32 0, i32 1) }, i1 false)
  store ptr %t26, ptr %l17
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l17, !tbaa !29
  store ptr %t27, ptr %l1, !tbaa !29
  %t28 = load i1, ptr %l3, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb13
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i1, ptr %l24, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l19, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  store ptr %t44, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v2, ptr %v2, ptr %t46, ptr %t47)
  store ptr %t50, ptr %l29
  br label %bb17
bb17:
  %t51 = load ptr, ptr %l29, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l25 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l42 = alloca i32
  %l45 = alloca ptr
  %l50 = alloca i32
  %l68 = alloca ptr
  %l69 = alloca i32
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca i64
  %l87 = alloca i1
  %l96 = alloca i1
  %l100 = alloca i32
  %l105 = alloca ptr
  %l110 = alloca i32
  %l111 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l137 = alloca i32
  %l138 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l162 = alloca i32
  %l168 = alloca ptr
  %l173 = alloca i32
  %l183 = alloca ptr
  %l188 = alloca i32
  %l189 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  store i1 %t9, ptr %l25, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l25, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l1, !tbaa !23
  %t14 = icmp eq i32 %t12, 0
  store i1 %t14, ptr %l29, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l29, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb10
bb8:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v1, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l35
  br label %bb9
bb9:
  %t22 = load i1, ptr %l35, !tbaa !21
  store i1 %t22, ptr %l32, !tbaa !21
  br label %bb10
bb10:
  %t23 = load i1, ptr %l32, !tbaa !21
  br i1 %t23, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v1, ptr %t24, i32 %t25, i1 true)
  br label %bb14
bb14:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l42
  br label %bb15
bb15:
  %t38 = load i32, ptr %l42, !range !{i32 0, i32 33}
  store i32 %t38, ptr %l4
  %t39 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t41 = trunc i64 20 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l45, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l50
  br label %bb19
bb19:
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = add i64 %t56, 1
  %t59 = load ptr, ptr %l45, !tbaa !29
  %t60 = load i32, ptr %l50, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %t59, i32 %t60, ptr %t55, i64 %t58)
  br label %bb20
bb20:
  br label %bb101
bb21:
  %t63 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t65 = trunc i64 18 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb75
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t69 = insertvalue [2 x { i64, ptr }] %t68, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t71 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store [2 x { i64, ptr }] %t69, ptr %t71
  store ptr %t71, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t73 = load ptr, ptr %l5
  store i64 2, ptr %l7, !tbaa !24
  br label %bb25
bb25:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp slt i64 %t76, %t77
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb26, label %bb27
bb26:
  br label %bb40
bb27:
  br label %bb28
bb28:
  %t84 = load ptr, ptr %l5
  %t85 = load i64, ptr %l6, !tbaa !24
  %t88 = getelementptr [2 x { i64, ptr }], ptr %t84, i64 0, i64 %t85
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !37
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  store ptr %t94, ptr %l68, !tbaa !29
  %t95 = load i32, ptr %l1, !tbaa !23
  store i32 %t95, ptr %l69, !tbaa !23
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = getelementptr %"compiler/types:Table", ptr %t101, i32 0, i32 0
  %t103 = load ptr, ptr %t102, !tbaa !29
  store ptr %t103, ptr %l72, !tbaa !29
  %t105 = load ptr, ptr %l72, !tbaa !29
  %t106 = call ptr @__olang_scope_of(ptr %t105, ptr null)
  %t107 = ptrtoint ptr %t106 to i64
  %t109 = inttoptr i64 %t107 to ptr
  %t110 = load ptr, ptr @__olang_prog_scope
  %t111 = load ptr, ptr %l72, !tbaa !29
  %t113 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t109, ptr %t110, ptr %t111, { i64, ptr } %t89)
  store i32 %t113, ptr %l75
  br label %bb29
bb29:
  %t114 = load ptr, ptr %l68, !tbaa !29
  %t115 = load i32, ptr %l69, !tbaa !23
  %t116 = load i32, ptr %l75, !tbaa !23
  %t117 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t114, i32 %t115, i32 %t116)
  store i64 %t117, ptr %l76
  br label %bb30
bb30:
  %t118 = load i64, ptr %l76, !tbaa !24
  store i64 %t118, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = icmp sge i64 %t119, 0
  br i1 %t121, label %bb31, label %bb32
bb31:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 46
  %t126 = getelementptr %"compiler/source:Span", ptr %t125, i32 0, i32 0
  %t127 = load i32, ptr %t126, !tbaa !23
  %t129 = icmp sge i32 %t127, 0
  br i1 %t129, label %bb33, label %bb34
bb32:
  br label %bb38
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l9, !tbaa !24
  %t133 = load i32, ptr %l1, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 46
  %t137 = load %"compiler/source:Span", ptr %t136
  %t142 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s7, ptr %s7, ptr %t131, i64 %t132, i32 %t133, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, %"compiler/source:Span" %t137, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t142, ptr %l87
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb36:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrInstance(ptr %v0, ptr %t143, i64 %t144, i32 %t145)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb38:
  br label %bb39
bb39:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l6, !tbaa !24
  br label %bb25
bb40:
  call void @__olang_scope_close(ptr %s4)
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load i32, ptr %l1, !tbaa !23
  %t160 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t156, i32 %t157)
  store i1 %t160, ptr %l96
  br label %bb41
bb41:
  %t161 = load i1, ptr %l96, !tbaa !21
  %t162 = xor i1 %t161, true
  br i1 %t162, label %bb42, label %bb43
bb42:
  br label %ret
bb43:
  br label %bb44
bb44:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i32, ptr %l1, !tbaa !23
  %t168 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t164, i32 %t165)
  store i32 %t168, ptr %l100
  br label %bb45
bb45:
  %t169 = load i32, ptr %l100, !range !{i32 0, i32 6}
  store i32 %t169, ptr %l10
  %t170 = load i32, ptr %l10, !range !{i32 0, i32 6}
  %t172 = trunc i64 0 to i32
  %t173 = icmp eq i32 %t170, %t172
  br i1 %t173, label %bb46, label %bb47
bb46:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 2
  store ptr %t180, ptr %l105, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = getelementptr %"compiler/generic:Program", ptr %t184, i32 0, i32 2
  %t187 = load i32, ptr %l1, !tbaa !23
  %t190 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t186, i32 %t187)
  store i32 %t190, ptr %l110
  br label %bb48
bb47:
  %t191 = load i32, ptr %l10, !range !{i32 0, i32 6}
  %t193 = trunc i64 1 to i32
  %t194 = icmp eq i32 %t191, %t193
  br i1 %t194, label %bb57, label %bb58
bb48:
  %t196 = load ptr, ptr %l105, !tbaa !29
  %t197 = load i32, ptr %l110, !tbaa !23
  %t198 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t196, i32 %t197)
  store { i64, ptr } %t198, ptr %l111
  br label %bb49
bb49:
  %t199 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t199, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  store i64 %t202, ptr %l13, !tbaa !24
  br label %bb50
bb50:
  %t204 = load i64, ptr %l12, !tbaa !24
  %t205 = load i64, ptr %l13, !tbaa !24
  %t208 = icmp slt i64 %t204, %t205
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb51, label %bb52
bb51:
  br label %bb56
bb52:
  br label %bb53
bb53:
  %t212 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t212, ptr %l118, !tbaa !27
  %t213 = load i64, ptr %l12, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i32, ptr %t216, i64 %t213
  %t218 = load i32, ptr %t217, !tbaa !33
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l2, !tbaa !29
  %t223 = load i64, ptr %l3, !tbaa !24
  %t225 = add i64 %t223, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %t220, i32 %t218, ptr %t222, i64 %t225)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t230 = load i64, ptr %l12, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l12, !tbaa !24
  br label %bb50
bb56:
  br label %bb74
bb57:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/check:Checker", ptr %t234, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  store ptr %t239, ptr %l132, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/check:Checker", ptr %t240, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t245 = getelementptr %"compiler/generic:Program", ptr %t243, i32 0, i32 2
  %t246 = load i32, ptr %l1, !tbaa !23
  %t249 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t245, i32 %t246)
  store i32 %t249, ptr %l137
  br label %bb59
bb58:
  %t250 = load i32, ptr %l10, !range !{i32 0, i32 6}
  %t252 = trunc i64 4 to i32
  %t253 = icmp eq i32 %t250, %t252
  br i1 %t253, label %bb68, label %bb69
bb59:
  %t255 = load ptr, ptr %l132, !tbaa !29
  %t256 = load i32, ptr %l137, !tbaa !23
  %t257 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t255, i32 %t256)
  store { i64, ptr } %t257, ptr %l138
  br label %bb60
bb60:
  %t258 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t258, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t259 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t259, 0
  store i64 %t261, ptr %l17, !tbaa !24
  br label %bb61
bb61:
  %t263 = load i64, ptr %l16, !tbaa !24
  %t264 = load i64, ptr %l17, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb62, label %bb63
bb62:
  br label %bb67
bb63:
  br label %bb64
bb64:
  %t271 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t271, ptr %l145, !tbaa !27
  %t272 = load i64, ptr %l16, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i32, ptr %t275, i64 %t272
  %t277 = load i32, ptr %t276, !tbaa !33
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t282 = load i64, ptr %l3, !tbaa !24
  %t284 = add i64 %t282, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %t279, i32 %t277, ptr %t281, i64 %t284)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t289 = load i64, ptr %l16, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l16, !tbaa !24
  br label %bb61
bb67:
  br label %bb73
bb68:
  %t293 = load ptr, ptr %l0, !tbaa !29
  store ptr %t293, ptr %l157, !tbaa !29
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/check:Checker", ptr %t294, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !29
  %t299 = getelementptr %"compiler/generic:Program", ptr %t297, i32 0, i32 2
  %t300 = load i32, ptr %l1, !tbaa !23
  %t303 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t299, i32 %t300)
  store i32 %t303, ptr %l162
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t304 = load ptr, ptr %l2, !tbaa !29
  %t305 = load i64, ptr %l3, !tbaa !24
  %t307 = add i64 %t305, 1
  %t308 = load ptr, ptr %l157, !tbaa !29
  %t309 = load i32, ptr %l162, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %t308, i32 %t309, ptr %t304, i64 %t307)
  br label %bb71
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  br label %bb74
bb74:
  br label %bb101
bb75:
  %t312 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t314 = trunc i64 19 to i32
  %t315 = icmp eq i32 %t312, %t314
  br i1 %t315, label %bb76, label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb81
bb78:
  %t317 = load ptr, ptr %l0, !tbaa !29
  store ptr %t317, ptr %l168, !tbaa !29
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !29
  %t323 = getelementptr %"compiler/generic:Program", ptr %t321, i32 0, i32 2
  %t324 = load i32, ptr %l1, !tbaa !23
  %t327 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t323, i32 %t324)
  store i32 %t327, ptr %l173
  br label %bb79
bb79:
  %t328 = load ptr, ptr %l2, !tbaa !29
  %t329 = load i64, ptr %l3, !tbaa !24
  %t331 = add i64 %t329, 1
  %t332 = load ptr, ptr %l168, !tbaa !29
  %t333 = load i32, ptr %l173, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %t332, i32 %t333, ptr %t328, i64 %t331)
  br label %bb80
bb80:
  br label %bb101
bb81:
  %t336 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t338 = trunc i64 22 to i32
  %t339 = icmp eq i32 %t336, %t338
  br i1 %t339, label %bb82, label %bb83
bb82:
  br label %bb86
bb83:
  %t341 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t343 = trunc i64 23 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb96
bb86:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/check:Checker", ptr %t346, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t351 = getelementptr %"compiler/generic:Program", ptr %t349, i32 0, i32 2
  store ptr %t351, ptr %l183, !tbaa !29
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/check:Checker", ptr %t352, i32 0, i32 1
  %t355 = load ptr, ptr %t354, !tbaa !29
  %t357 = getelementptr %"compiler/generic:Program", ptr %t355, i32 0, i32 2
  %t358 = load i32, ptr %l1, !tbaa !23
  %t361 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t357, i32 %t358)
  store i32 %t361, ptr %l188
  br label %bb87
bb87:
  %t362 = load ptr, ptr %l183, !tbaa !29
  %t363 = load i32, ptr %l188, !tbaa !23
  %t364 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t362, i32 %t363)
  store { i64, ptr } %t364, ptr %l189
  br label %bb88
bb88:
  %t365 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t365, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t366 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t366, 0
  store i64 %t368, ptr %l21, !tbaa !24
  br label %bb89
bb89:
  %t370 = load i64, ptr %l20, !tbaa !24
  %t371 = load i64, ptr %l21, !tbaa !24
  %t374 = icmp slt i64 %t370, %t371
  %t376 = xor i1 %t374, true
  br i1 %t376, label %bb90, label %bb91
bb90:
  br label %bb95
bb91:
  br label %bb92
bb92:
  %t378 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t378, ptr %l196, !tbaa !27
  %t379 = load i64, ptr %l20, !tbaa !24
  %t381 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr i32, ptr %t382, i64 %t379
  %t384 = load i32, ptr %t383, !tbaa !33
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l2, !tbaa !29
  %t389 = load i64, ptr %l3, !tbaa !24
  %t391 = add i64 %t389, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %t386, i32 %t384, ptr %t388, i64 %t391)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t396 = load i64, ptr %l20, !tbaa !24
  %t398 = add i64 %t396, 1
  store i64 %t398, ptr %l20, !tbaa !24
  br label %bb89
bb95:
  br label %bb101
bb96:
  br i1 true, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_8830d773c2e320be_c40e682cdd96e1f2)
  unreachable
bb101:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 0
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
  call void @__olang_check_failed(ptr @olang_loc_4777492a424db66f_87dc2d494f6ca16b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eleaves(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l72 = alloca i1
  %l83 = alloca { i64, ptr }
  %l88 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l106 = alloca i1
  %l108 = alloca i1
  %l112 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l122 = alloca i32
  %l126 = alloca ptr
  %l127 = alloca i1
  %l130 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l147 = alloca { i64, ptr }
  %l152 = alloca i1
  %l164 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t12 = load ptr, ptr %l21, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l21, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 17}
  %t18 = icmp eq i64 %t16, 7
  store i1 %t18, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l22, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t21 = load ptr, ptr %l25, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l25, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 17}
  %t27 = icmp eq i64 %t25, 8
  store i1 %t27, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l26, !tbaa !21
  br i1 %t28, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %rv
  br label %ret
bb16:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t31 = load ptr, ptr %l30, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb17, label %bb18
bb17:
  %t34 = load ptr, ptr %l30, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 17}
  %t37 = icmp eq i64 %t35, 9
  store i1 %t37, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t38 = load i1, ptr %l31, !tbaa !21
  br i1 %t38, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 true, ptr %rv
  br label %ret
bb22:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t41 = load ptr, ptr %l35, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb23, label %bb24
bb23:
  %t44 = load ptr, ptr %l35, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 17}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t48 = load i1, ptr %l36, !tbaa !21
  br i1 %t48, label %bb25, label %bb26
bb25:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", ptr }, ptr %t51, i32 0, i32 1
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l1, !tbaa !29
  br label %bb27
bb26:
  br label %bb36
bb27:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/typed:If", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb28, label %bb29
bb28:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/typed:If", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t70 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t67)
  store i1 %t70, ptr %l49
  br label %bb30
bb29:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb31
bb30:
  %t71 = load i1, ptr %l49, !tbaa !21
  store i1 %t71, ptr %l45, !tbaa !21
  br label %bb31
bb31:
  %t72 = load i1, ptr %l45, !tbaa !21
  br i1 %t72, label %bb32, label %bb33
bb32:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/typed:If", ptr %t73, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t76)
  store i1 %t78, ptr %l53
  br label %bb34
bb33:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb35
bb34:
  %t79 = load i1, ptr %l53, !tbaa !21
  store i1 %t79, ptr %l50, !tbaa !21
  br label %bb35
bb35:
  %t80 = load i1, ptr %l50, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
bb36:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t82 = load ptr, ptr %l54, !tbaa !29
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %bb37, label %bb38
bb37:
  %t85 = load ptr, ptr %l54, !tbaa !29
  %t86 = load i64, ptr %t85, !range !{i64 0, i64 17}
  %t88 = icmp eq i64 %t86, 11
  store i1 %t88, ptr %l55, !tbaa !21
  br label %bb38
bb38:
  %t89 = load i1, ptr %l55, !tbaa !21
  br i1 %t89, label %bb39, label %bb40
bb39:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr { i64, [3 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", ptr }, ptr %t92, i32 0, i32 1
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l2, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t99 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t96)
  store i1 %t99, ptr %l62
  br label %bb42
bb42:
  %t100 = load i1, ptr %l62, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
bb43:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t102 = load ptr, ptr %l63, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb44, label %bb45
bb44:
  %t105 = load ptr, ptr %l63, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 17}
  %t108 = icmp eq i64 %t106, 13
  store i1 %t108, ptr %l64, !tbaa !21
  br label %bb45
bb45:
  %t109 = load i1, ptr %l64, !tbaa !21
  br i1 %t109, label %bb46, label %bb47
bb46:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr { i64, [3 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", ptr }, ptr %t112, i32 0, i32 1
  %t114 = load ptr, ptr %t113
  store ptr %t114, ptr %l3, !tbaa !29
  br label %bb48
bb47:
  br label %bb63
bb48:
  %t116 = load ptr, ptr %l3, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Join", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t122 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t119)
  store i1 %t122, ptr %l72
  br label %bb49
bb49:
  %t123 = load i1, ptr %l72, !tbaa !21
  %t124 = xor i1 %t123, true
  br i1 %t124, label %bb50, label %bb51
bb50:
  store i1 false, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Join", ptr %t127, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  store i64 %t134, ptr %l6, !tbaa !24
  br label %bb53
bb53:
  %t136 = load i64, ptr %l5, !tbaa !24
  %t137 = load i64, ptr %l6, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb54, label %bb55
bb54:
  br label %bb62
bb55:
  br label %bb56
bb56:
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t144, ptr %l83, !tbaa !27
  %t145 = load i64, ptr %l5, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr ptr, ptr %t148, i64 %t145
  %t150 = load ptr, ptr %t149, !tbaa !39
  %t154 = getelementptr %"compiler/typed:Clause", ptr %t150, i32 0, i32 3
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t155)
  store i1 %t157, ptr %l88
  br label %bb57
bb57:
  %t158 = load i1, ptr %l88, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb58, label %bb59
bb58:
  store i1 false, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t162 = load i64, ptr %l5, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l5, !tbaa !24
  br label %bb53
bb62:
  store i1 true, ptr %rv
  br label %ret
bb63:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t168 = load ptr, ptr %l94, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb64, label %bb65
bb64:
  %t171 = load ptr, ptr %l94, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 17}
  %t174 = icmp eq i64 %t172, 4
  store i1 %t174, ptr %l95, !tbaa !21
  br label %bb65
bb65:
  %t175 = load i1, ptr %l95, !tbaa !21
  br i1 %t175, label %bb66, label %bb67
bb66:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t178, i32 0, i32 1
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l8, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [3 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t184, i32 0, i32 2
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l9, !tbaa !29
  br label %bb68
bb67:
  br label %bb74
bb68:
  %t188 = load ptr, ptr %l8, !tbaa !29
  %t190 = load ptr, ptr %l8, !tbaa !29
  %t192 = getelementptr %"compiler/typed:Block", ptr %t190, i32 0, i32 0
  %t193 = load i32, ptr %t192, !tbaa !23
  %t196 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t188, i32 %t193)
  store i1 %t196, ptr %l106
  br label %bb69
bb69:
  %t197 = load i1, ptr %l106, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb70, label %bb71
bb70:
  %t200 = load ptr, ptr %l9, !tbaa !29
  %t201 = load ptr, ptr %l8, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Block", ptr %t201, i32 0, i32 0
  %t204 = load i32, ptr %t203, !tbaa !23
  %t207 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t200, i32 %t204)
  store i1 %t207, ptr %l112
  br label %bb72
bb71:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb73
bb72:
  %t208 = load i1, ptr %l112, !tbaa !21
  %t209 = xor i1 %t208, true
  store i1 %t209, ptr %l108, !tbaa !21
  br label %bb73
bb73:
  %t211 = load i1, ptr %l108, !tbaa !21
  store i1 %t211, ptr %rv
  br label %ret
bb74:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t213 = load ptr, ptr %l114, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb75, label %bb76
bb75:
  %t216 = load ptr, ptr %l114, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 17}
  %t219 = icmp eq i64 %t217, 2
  store i1 %t219, ptr %l115, !tbaa !21
  br label %bb76
bb76:
  %t220 = load i1, ptr %l115, !tbaa !21
  br i1 %t220, label %bb77, label %bb78
bb77:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr { i64, [3 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", ptr }, ptr %t223, i32 0, i32 1
  %t225 = load ptr, ptr %t224
  store ptr %t225, ptr %l10, !tbaa !29
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t227 = load ptr, ptr %l10, !tbaa !29
  %t230 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t227)
  store i32 %t230, ptr %l122
  br label %bb80
bb80:
  %t231 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t232 = load i32, ptr %l122, !tbaa !23
  %t234 = icmp eq i32 %t232, %t231
  br i1 %t234, label %bb81, label %bb82
bb81:
  store i1 true, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t238 = load ptr, ptr %l126, !tbaa !29
  %t239 = icmp ne ptr %t238, null
  br i1 %t239, label %bb84, label %bb85
bb84:
  %t241 = load ptr, ptr %l126, !tbaa !29
  %t242 = load i64, ptr %t241, !range !{i64 0, i64 17}
  %t244 = icmp eq i64 %t242, 2
  store i1 %t244, ptr %l127, !tbaa !21
  br label %bb85
bb85:
  %t245 = load i1, ptr %l127, !tbaa !21
  br i1 %t245, label %bb86, label %bb87
bb86:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr { i64, [3 x i64] }, ptr %t246, i32 0, i32 1
  %t249 = getelementptr { %"compiler/source:Span", ptr }, ptr %t248, i32 0, i32 1
  %t250 = load ptr, ptr %t249
  store ptr %t250, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t251 = load ptr, ptr %l132, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb88, label %bb89
bb87:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb90
bb88:
  %t254 = load ptr, ptr %l132, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 13
  store i1 %t257, ptr %l133, !tbaa !21
  br label %bb89
bb89:
  %t258 = load i1, ptr %l133, !tbaa !21
  store i1 %t258, ptr %l130, !tbaa !21
  br label %bb90
bb90:
  %t259 = load i1, ptr %l130, !tbaa !21
  br i1 %t259, label %bb91, label %bb92
bb91:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr { i64, [3 x i64] }, ptr %t260, i32 0, i32 1
  %t263 = getelementptr { %"compiler/source:Span", ptr }, ptr %t262, i32 0, i32 1
  %t264 = load ptr, ptr %t263
  %t266 = getelementptr { i64, [5 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t266, i32 0, i32 2
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l11, !tbaa !29
  br label %bb93
bb92:
  br label %bb108
bb93:
  %t270 = load ptr, ptr %l11, !tbaa !29
  %t272 = getelementptr %"compiler/typed:Match", ptr %t270, i32 0, i32 1
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  store { i64, ptr } %t273, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t275 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t275, 0
  store i64 %t277, ptr %l14, !tbaa !24
  br label %bb94
bb94:
  %t279 = load i64, ptr %l13, !tbaa !24
  %t280 = load i64, ptr %l14, !tbaa !24
  %t283 = icmp slt i64 %t279, %t280
  %t285 = xor i1 %t283, true
  br i1 %t285, label %bb95, label %bb96
bb95:
  br label %bb103
bb96:
  br label %bb97
bb97:
  %t287 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t287, ptr %l147, !tbaa !27
  %t288 = load i64, ptr %l13, !tbaa !24
  %t290 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr ptr, ptr %t291, i64 %t288
  %t293 = load ptr, ptr %t292, !tbaa !39
  %t297 = getelementptr %"compiler/typed:Arm", ptr %t293, i32 0, i32 3
  %t298 = load ptr, ptr %t297, !tbaa !29
  %t300 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t298)
  store i1 %t300, ptr %l152
  br label %bb98
bb98:
  %t301 = load i1, ptr %l152, !tbaa !21
  %t302 = xor i1 %t301, true
  br i1 %t302, label %bb99, label %bb100
bb99:
  store i1 false, ptr %rv
  br label %ret
bb100:
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t305 = load i64, ptr %l13, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l13, !tbaa !24
  br label %bb94
bb103:
  %t309 = load ptr, ptr %l11, !tbaa !29
  %t311 = getelementptr %"compiler/typed:Match", ptr %t309, i32 0, i32 2
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = icmp eq ptr %t312, null
  br i1 %t314, label %bb104, label %bb105
bb104:
  call void @__olang_check_failed(ptr @olang_loc_eb3e4e8f3f96f0ec_5bc3fc9686c42b70)
  unreachable
bb105:
  br label %bb106
bb106:
  %t316 = load ptr, ptr %l11, !tbaa !29
  %t318 = getelementptr %"compiler/typed:Match", ptr %t316, i32 0, i32 2
  %t319 = load ptr, ptr %t318, !tbaa !29
  %t322 = getelementptr %"compiler/typed:Arm", ptr %t319, i32 0, i32 3
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t325 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t323)
  store i1 %t325, ptr %l164
  br label %bb107
bb107:
  %t326 = load i1, ptr %l164, !tbaa !21
  store i1 %t326, ptr %rv
  br label %ret
bb108:
  br i1 true, label %bb109, label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  store i1 false, ptr %rv
  br label %ret
bb112:
  call void @__olang_check_failed(ptr @olang_loc_bad8a01556e87002_6e42cd1773855696)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2elistIndex(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) })
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
  %t5 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFields, !tbaa !24
  store i64 %t5, ptr %l1, !tbaa !24
  br label %bb30
bb5:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t9, ptr %l6
  br label %bb6
bb6:
  %t10 = load i1, ptr %l6, !tbaa !21
  br i1 %t10, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t11 = load i64, ptr @G_2ecompiler_2fgeneric_2eListCases, !tbaa !24
  store i64 %t11, ptr %l1, !tbaa !24
  br label %bb30
bb10:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t15, ptr %l9
  br label %bb11
bb11:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t17 = load i64, ptr @G_2ecompiler_2fgeneric_2eListParams, !tbaa !24
  store i64 %t17, ptr %l1, !tbaa !24
  br label %bb30
bb15:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t21, ptr %l12
  br label %bb16
bb16:
  %t22 = load i1, ptr %l12, !tbaa !21
  br i1 %t22, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t23 = load i64, ptr @G_2ecompiler_2fgeneric_2eListResults, !tbaa !24
  store i64 %t23, ptr %l1, !tbaa !24
  br label %bb30
bb20:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t27, ptr %l15
  br label %bb21
bb21:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t29 = load i64, ptr @G_2ecompiler_2fgeneric_2eListMethods, !tbaa !24
  store i64 %t29, ptr %l1, !tbaa !24
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i64 -1, ptr %l1, !tbaa !24
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_77a436a5c2d44065_8e586571f5cf09a9)
  unreachable
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t31 = load i64, ptr %l1, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2epartPlace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 4
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 5
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
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
  call void @__olang_check_failed(ptr @olang_loc_8b3c4b934309a30d_f42a8645f9878091)
  unreachable
bb19:
  %t28 = load i1, ptr %l1, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:TopAssertAsk" @compiler_2fcheck_3aTopAssertAsk_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4) #0 {
entry:
  %rv = alloca %"compiler/check:TopAssertAsk"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/check:TopAssertAsk" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/check:TopAssertAsk" %t12, %"compiler/source:Span" %a1, 1
  %t16 = insertvalue %"compiler/check:TopAssertAsk" %t14, %"compiler/source:Span" %a2, 2
  %t18 = insertvalue %"compiler/check:TopAssertAsk" %t16, i64 %a3, 3
  %t20 = insertvalue %"compiler/check:TopAssertAsk" %t18, i64 %a4, 4
  store %"compiler/check:TopAssertAsk" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:TopAssertAsk", ptr %rv
  ret %"compiler/check:TopAssertAsk" %rr
}

define dso_local %"compiler/check:inPlaceRead" @compiler_2fcheck_3ainPlaceRead_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %rv = alloca %"compiler/check:inPlaceRead"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:inPlaceRead" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/check:inPlaceRead" %t10, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, 1
  %t14 = insertvalue %"compiler/check:inPlaceRead" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:inPlaceRead" %t14, %"compiler/source:Span" %a3, 3
  store %"compiler/check:inPlaceRead" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:inPlaceRead", ptr %rv
  ret %"compiler/check:inPlaceRead" %rr
}

define dso_local %"compiler/check:signMag" @compiler_2fcheck_3asignMag_2ector(ptr %v0, i1 %a0, i128 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:signMag"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:signMag" undef, i1 %a0, 0
  %t8 = insertvalue %"compiler/check:signMag" %t6, i128 %a1, 1
  store %"compiler/check:signMag" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:signMag", ptr %rv
  ret %"compiler/check:signMag" %rr
}

@olang_2esole_2ecompiler__2fcheck__2ecompiler__2fcheck__3aChecker__2eExprBodyIn_2elocal_2e8 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
declare void @__olang_region_drop(ptr) noinline
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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

@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"deferred code, which runs while its block is left" }>, align 8
@.d4 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"an assert's or an unreachable's message" }>, align 8
@.d5 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a task's clause" }>, align 8
@.d6 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a join block, whose tasks it would leave behind" }>, align 8
@.d7 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"a block with deferred code registered, which would run before the call" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"try" }>, align 8
@.d11 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"no call" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"try" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"n" }>, align 8
@.d18 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"a ColumnVec of this shape (T7e)" }>, align 8
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

@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"'not'" }>, align 8
@.d22 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d23 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"'x[i]'" }>, align 8
@.d26 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d27 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"At ('x[i]')" }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"'Hash'" }>, align 8
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

@.d33 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"the parameter" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'$'" }>, align 8
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Fields" }>, align 8
@.d39 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Cases" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Params" }>, align 8
@.d41 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Results" }>, align 8
@.d42 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Methods" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eExprBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonlyFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eTruncate_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eholdsHandle(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistItems(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflList" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValueType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunArrayValue(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehole(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_88d3ea04e82c2d9e_ee1d738344e93712 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataLength(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2fcheck_2eRoStored = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_15d8d795344f0f34_d9e3bc129d8abb98 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeWhere(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeOutside(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeInside(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_e034fcd8e283054e_7f246e4998f63322 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeTry(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeNotCall(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebecomeRefusal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2eCalledBody(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameJump(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ejumpText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeSignature(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaMemoryJump(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeMemory(ptr %v0)
declare %"compiler/check:tailAsk" @compiler_2fcheck_3atailAsk_2ector(ptr %v0, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3atailAsk_3e_2ePush_3ccompiler_2fcheck_3atailAsk_3e(ptr %v0, ptr %a0, %"compiler/check:tailAsk" %a1)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
@olang_loc_17e85edd6251e98f_328e7bc733525423 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Hc07a7e56a24d8f1225398db99ea19a4b(ptr %v0, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealtBinding(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLet(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/typed:Bind" @compiler_2ftyped_3aBind_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBind_26_3e_2ePush_3ccompiler_2ftyped_3aBind_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalledInst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare %"compiler/generic:Desc" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseDesc(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflCaseOther(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5, %"compiler/source:Span" %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecasePath(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTestNotEnum(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCaseTestOther(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e1487403b47c0485_2c2fc5ff7a99fd49 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTest(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare { i64, ptr } @compiler_2fscan_2eLiteralBytes(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_f2da914bb6134d5f_3ef82b9ab3e359c3 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eEmptyDestructor(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_e7a3ae7e66c3138_2e8ed5b6f09d874 = external constant [0 x i8]
@olang_loc_de922dec49c7f00c_86e7828aa2d91a60 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMemberIsPrivate(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f259f6ca06e66809_b1ef05920a904ef5 = external constant [0 x i8]
@olang_loc_67410fc9d6566a9c_b1c73ab5a8b03798 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecopyDoes(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_d80c9f6a0018af5a_89f102f42b80e70e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCopyDoesMore(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b20d72dd39706ad2_1f0b24543f01d106 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldTemp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2eplainArg(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eatValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_382529b120d556de_d8d046fae7238d42 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einPlace(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
@olang_loc_ab5597cba6646260_481abab506246ac = external constant [0 x i8]
@olang_loc_658d6063ef778b83_55b59e9924ab310f = external constant [0 x i8]
@olang_loc_ba61a968dfb16c8e_3c428debd653d7ba = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2fcheck_2eLaneArr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@G_2ecompiler_2fcheck_2eLaneScalar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_24a46e21631caff9_33b011dc8e05d16d = external constant [0 x i8]
@G_2ecompiler_2fcheck_2eLaneUn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunaryOn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2fcheck_2eLaneSel = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslotCall(ptr %v0, ptr %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
@olang_loc_652199a1d15cfac6_f2a0b86627c88902 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, i64 %a5, ptr %a6, { i64, ptr } %a7, { i64, ptr } %a8)
@olang_loc_7509e56452997e5b_fb360af196d85db7 = external constant [0 x i8]
@olang_loc_ff81ff8210117a78_6f7a62fdc976c914 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eTruncate_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_77a5603a1298311f_4bb819fe8c7bb9e3 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtUndeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e50f118683988667_19bbe448830cf623 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_860e4bd13e8a5221_206c5ac6505376ad = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einGeneric(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroKey(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_bc1810c6f53027de_db6dea45bcc6d282 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eletOut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecanonicalErrs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__Hb311157f9ff5cfde66cc01a7f8069ed8(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyKey(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1d7b97a31fca2c92a4527a0b3309f2d1(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2eLen_3ccompiler_2fcheck_3aheldCand_3e(ptr %v0, ptr %a0)
declare %"compiler/check:heldCand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aheldCand_3e_2eAt_3ccompiler_2fcheck_3aheldCand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @compiler_2fdefinit_2eHeldWalk(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenElem(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eGenPerTurn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_e205085f53b5fcbb_81fd3e9c55e0751f = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
@olang_loc_ddf5999d75afc0ea_2c71428eb0b518ce = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBack(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, %"compiler/source:Span" %a5, i64 %a6, { i64, ptr } %a7)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estepMethod(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, i1 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStepNotNumber(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2efloatBits(i32 %a0, double %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatternNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i1 %a3)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebareDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_894a72349cd7ef67_30624e129d4b77a3 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisTrait(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/check:typeCase" @compiler_2fcheck_3atypeCase_2ector(ptr %v0, i1 %a0, i1 %a1, i32 %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueMoved(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2euniqueLand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8830d773c2e320be_c40e682cdd96e1f2 = external constant [0 x i8]
@olang_loc_4777492a424db66f_87dc2d494f6ca16b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@olang_loc_eb3e4e8f3f96f0ec_5bc3fc9686c42b70 = external constant [0 x i8]
@olang_loc_bad8a01556e87002_6e42cd1773855696 = external constant [0 x i8]
@G_2ecompiler_2fgeneric_2eListFields = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListCases = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListParams = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListResults = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListMethods = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@olang_loc_77a436a5c2d44065_8e586571f5cf09a9 = external constant [0 x i8]
@olang_loc_8b3c4b934309a30d_f42a8645f9878091 = external constant [0 x i8]

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
