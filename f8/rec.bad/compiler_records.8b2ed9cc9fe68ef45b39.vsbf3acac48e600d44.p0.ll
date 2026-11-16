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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, i64, i1, { i64, ptr }, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, i1, { i64, ptr }, { i64, ptr } }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/views:Cand" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fsBody", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fsBody" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:instTree" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" = type { i64, %"compiler/eval:Image" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
define dso_local { i64, ptr } @compiler_2frecords_2eBuildInputs(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/os:FileInfo"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/target:Target"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l11 = alloca %"std/os:FileInfo"
  %l13 = alloca %"std/os:FileInfo"
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i32
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l8
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l7
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t6, ptr %l6, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l8, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l6, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t13)
  %t16 = extractvalue { i32, %"std/os:FileInfo" } %t15, 1
  %t17 = extractvalue { i32, %"std/os:FileInfo" } %t15, 0
  store i32 %t17, ptr %l14
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb8, label %ok.19, !prof !99
ok.19:
  store %"std/os:FileInfo" %t16, ptr %l13
  br label %bb7
bb7:
  %t20 = load %"std/os:FileInfo", ptr %l13
  store %"std/os:FileInfo" %t20, ptr %l11
  br label %bb12
bb8:
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  store i1 %t24, ptr %l16, !tbaa !21
  %t25 = load i32, ptr %l14, !tbaa !23
  %t26 = ashr i32 %t25, 16
  %t28 = icmp eq i32 %t26, 1
  br i1 %t28, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t30, ptr %l20, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l21, !tbaa !24
  %t33 = load i64, ptr %l21, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l22, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t44, ptr %l20, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb12:
  %t46 = load %"std/os:FileInfo", ptr %l11
  store %"std/os:FileInfo" %t46, ptr %l3
  %t47 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t48 = extractvalue { i32, { i64, ptr } } %t47, 1
  %t49 = extractvalue { i32, { i64, ptr } } %t47, 0
  store i32 %t49, ptr %l25
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb14, label %ok.51, !prof !99
ok.51:
  store { i64, ptr } %t48, ptr %l24
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %l23, !tbaa !27
  br label %bb18
bb14:
  %t53 = load i32, ptr %l25, !tbaa !23
  %t54 = ashr i32 %t53, 16
  %t56 = icmp eq i32 %t54, 1
  br i1 %t56, label %bb15, label %bb16
bb15:
  call void @__olang_errpay_pop()
  br label %bb16
bb16:
  br label %bb17
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb18
bb18:
  %t58 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t58, ptr %l4, !tbaa !27
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/build:Config", ptr %t59, i32 0, i32 2
  %t62 = load %"compiler/target:Target", ptr %t61
  store %"compiler/target:Target" %t62, ptr %l5
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t64, ptr %l30, !tbaa !27
  %t65 = getelementptr %"std/os:FileInfo", ptr %l3, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  store i64 %t66, ptr %l31, !tbaa !24
  %t67 = getelementptr %"std/os:FileInfo", ptr %l3, i32 0, i32 2
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l32, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/build:Config", ptr %t69, i32 0, i32 4
  %t72 = load i1, ptr %t71, !tbaa !21
  store i1 %t72, ptr %l34, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/build:Config", ptr %t73, i32 0, i32 6
  %t76 = load i1, ptr %t75, !tbaa !21
  store i1 %t76, ptr %l36, !tbaa !21
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/build:Config", ptr %t77, i32 0, i32 7
  %t80 = load i1, ptr %t79, !tbaa !21
  store i1 %t80, ptr %l38, !tbaa !21
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/build:Config", ptr %t81, i32 0, i32 5
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l40, !tbaa !21
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/build:Config", ptr %t85, i32 0, i32 10
  %t88 = load i1, ptr %t87, !tbaa !21
  store i1 %t88, ptr %l42, !tbaa !21
  store i1 %a1, ptr %l43, !tbaa !21
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/build:Config", ptr %t90, i32 0, i32 14
  %t93 = load i1, ptr %t92, !tbaa !21
  br i1 %t93, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb21
bb20:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l46, !tbaa !27
  br label %bb21
bb21:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/build:Config", ptr %t95, i32 0, i32 18
  %t98 = load i1, ptr %t97, !tbaa !21
  br i1 %t98, label %bb22, label %bb23
bb22:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb24
bb24:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/build:Config", ptr %t100, i32 0, i32 12
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t103, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t105, ptr %l52
  br label %bb25
bb25:
  %t106 = load i1, ptr %l52, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l54, !tbaa !27
  br label %bb28
bb27:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l54, !tbaa !27
  br label %bb28
bb28:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/build:Config", ptr %t109, i32 0, i32 15
  %t112 = load i1, ptr %t111, !tbaa !21
  br i1 %t112, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb31
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb31
bb31:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/build:Config", ptr %t114, i32 0, i32 22
  %t117 = load i1, ptr %t116, !tbaa !21
  br i1 %t117, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l60, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l60, !tbaa !27
  br label %bb34
bb34:
  %t119 = getelementptr %"compiler/target:Target", ptr %l5, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l61, !tbaa !27
  %t121 = getelementptr %"compiler/target:Target", ptr %l5, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l62, !tbaa !27
  %t123 = getelementptr %"compiler/target:Target", ptr %l5, i32 0, i32 4
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l63, !tbaa !27
  %t125 = getelementptr %"compiler/target:Target", ptr %l5, i32 0, i32 5
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l64, !tbaa !27
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/build:Config", ptr %t127, i32 0, i32 3
  %t131 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eFingerprint(ptr %v0, ptr %s0, ptr %t129)
  store { i64, ptr } %t131, ptr %l67
  br label %bb35
bb35:
  %t132 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t132, ptr %l68, !tbaa !27
  %t133 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s0)
  store { i64, ptr } %t133, ptr %l69
  br label %bb36
bb36:
  %t134 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t137 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t139 = add i64 %t136, %t138
  %t140 = load i64, ptr %l31, !tbaa !24
  %t141 = call i64 @__olang_fmt_i64(ptr null, i64 %t140)
  %t142 = add i64 %t139, %t141
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t145 = add i64 %t142, %t144
  %t146 = load i64, ptr %l32, !tbaa !24
  %t147 = call i64 @__olang_fmt_i64(ptr null, i64 %t146)
  %t148 = add i64 %t145, %t147
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = load i1, ptr %l34, !tbaa !21
  %t153 = select i1 %t152, ptr @.c17, ptr @.c18
  %t154 = select i1 %t152, i64 4, i64 5
  %t155 = add i64 %t151, %t154
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = load i1, ptr %l36, !tbaa !21
  %t160 = select i1 %t159, ptr @.c17, ptr @.c18
  %t161 = select i1 %t159, i64 4, i64 5
  %t162 = add i64 %t158, %t161
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t166 = load i1, ptr %l38, !tbaa !21
  %t167 = select i1 %t166, ptr @.c17, ptr @.c18
  %t168 = select i1 %t166, i64 4, i64 5
  %t169 = add i64 %t165, %t168
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = load i1, ptr %l40, !tbaa !21
  %t174 = select i1 %t173, ptr @.c17, ptr @.c18
  %t175 = select i1 %t173, i64 4, i64 5
  %t176 = add i64 %t172, %t175
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = load i1, ptr %l42, !tbaa !21
  %t181 = select i1 %t180, ptr @.c17, ptr @.c18
  %t182 = select i1 %t180, i64 4, i64 5
  %t183 = add i64 %t179, %t182
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t186 = add i64 %t183, %t185
  %t187 = load i1, ptr %l43, !tbaa !21
  %t188 = select i1 %t187, ptr @.c17, ptr @.c18
  %t189 = select i1 %t187, i64 4, i64 5
  %t190 = add i64 %t186, %t189
  %t191 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = add i64 %t190, %t193
  %t195 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = add i64 %t194, %t197
  %t199 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 1
  %t201 = extractvalue { i64, ptr } %t199, 0
  %t202 = add i64 %t198, %t201
  %t203 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = add i64 %t202, %t205
  %t207 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 1
  %t209 = extractvalue { i64, ptr } %t207, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t214 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = extractvalue { i64, ptr } %t214, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t221 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 1
  %t223 = extractvalue { i64, ptr } %t221, 0
  %t224 = add i64 %t220, %t223
  %t225 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t227 = add i64 %t224, %t226
  %t228 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 1
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t231 = add i64 %t227, %t230
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t234 = add i64 %t231, %t233
  %t235 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = extractvalue { i64, ptr } %t235, 0
  %t238 = add i64 %t234, %t237
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t241 = add i64 %t238, %t240
  %t242 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = add i64 %t241, %t244
  %t246 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t249 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 1
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t252 = add i64 %t248, %t251
  %t253 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t255 = add i64 %t252, %t254
  %t256 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t256, 1
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t259 = add i64 %t255, %t258
  %t260 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t259)
  call void @olang_textcopy(ptr %t260, ptr %t135, i64 %t136)
  %t261 = getelementptr i8, ptr %t260, i64 %t136
  call void @olang_textcopy(ptr %t261, ptr %t137, i64 %t138)
  %t262 = getelementptr i8, ptr %t261, i64 %t138
  %t263 = call i64 @__olang_fmt_i64(ptr %t262, i64 %t140)
  %t264 = getelementptr i8, ptr %t262, i64 %t141
  call void @olang_textcopy(ptr %t264, ptr %t143, i64 %t144)
  %t265 = getelementptr i8, ptr %t264, i64 %t144
  %t266 = call i64 @__olang_fmt_i64(ptr %t265, i64 %t146)
  %t267 = getelementptr i8, ptr %t265, i64 %t147
  call void @olang_textcopy(ptr %t267, ptr %t149, i64 %t150)
  %t268 = getelementptr i8, ptr %t267, i64 %t150
  call void @olang_textcopy(ptr %t268, ptr %t153, i64 %t154)
  %t269 = getelementptr i8, ptr %t268, i64 %t154
  call void @olang_textcopy(ptr %t269, ptr %t156, i64 %t157)
  %t270 = getelementptr i8, ptr %t269, i64 %t157
  call void @olang_textcopy(ptr %t270, ptr %t160, i64 %t161)
  %t271 = getelementptr i8, ptr %t270, i64 %t161
  call void @olang_textcopy(ptr %t271, ptr %t163, i64 %t164)
  %t272 = getelementptr i8, ptr %t271, i64 %t164
  call void @olang_textcopy(ptr %t272, ptr %t167, i64 %t168)
  %t273 = getelementptr i8, ptr %t272, i64 %t168
  call void @olang_textcopy(ptr %t273, ptr %t170, i64 %t171)
  %t274 = getelementptr i8, ptr %t273, i64 %t171
  call void @olang_textcopy(ptr %t274, ptr %t174, i64 %t175)
  %t275 = getelementptr i8, ptr %t274, i64 %t175
  call void @olang_textcopy(ptr %t275, ptr %t177, i64 %t178)
  %t276 = getelementptr i8, ptr %t275, i64 %t178
  call void @olang_textcopy(ptr %t276, ptr %t181, i64 %t182)
  %t277 = getelementptr i8, ptr %t276, i64 %t182
  call void @olang_textcopy(ptr %t277, ptr %t184, i64 %t185)
  %t278 = getelementptr i8, ptr %t277, i64 %t185
  call void @olang_textcopy(ptr %t278, ptr %t188, i64 %t189)
  %t279 = getelementptr i8, ptr %t278, i64 %t189
  call void @olang_textcopy(ptr %t279, ptr %t192, i64 %t193)
  %t280 = getelementptr i8, ptr %t279, i64 %t193
  call void @olang_textcopy(ptr %t280, ptr %t196, i64 %t197)
  %t281 = getelementptr i8, ptr %t280, i64 %t197
  call void @olang_textcopy(ptr %t281, ptr %t200, i64 %t201)
  %t282 = getelementptr i8, ptr %t281, i64 %t201
  call void @olang_textcopy(ptr %t282, ptr %t204, i64 %t205)
  %t283 = getelementptr i8, ptr %t282, i64 %t205
  call void @olang_textcopy(ptr %t283, ptr %t208, i64 %t209)
  %t284 = getelementptr i8, ptr %t283, i64 %t209
  call void @olang_textcopy(ptr %t284, ptr %t211, i64 %t212)
  %t285 = getelementptr i8, ptr %t284, i64 %t212
  call void @olang_textcopy(ptr %t285, ptr %t215, i64 %t216)
  %t286 = getelementptr i8, ptr %t285, i64 %t216
  call void @olang_textcopy(ptr %t286, ptr %t218, i64 %t219)
  %t287 = getelementptr i8, ptr %t286, i64 %t219
  call void @olang_textcopy(ptr %t287, ptr %t222, i64 %t223)
  %t288 = getelementptr i8, ptr %t287, i64 %t223
  call void @olang_textcopy(ptr %t288, ptr %t225, i64 %t226)
  %t289 = getelementptr i8, ptr %t288, i64 %t226
  call void @olang_textcopy(ptr %t289, ptr %t229, i64 %t230)
  %t290 = getelementptr i8, ptr %t289, i64 %t230
  call void @olang_textcopy(ptr %t290, ptr %t232, i64 %t233)
  %t291 = getelementptr i8, ptr %t290, i64 %t233
  call void @olang_textcopy(ptr %t291, ptr %t236, i64 %t237)
  %t292 = getelementptr i8, ptr %t291, i64 %t237
  call void @olang_textcopy(ptr %t292, ptr %t239, i64 %t240)
  %t293 = getelementptr i8, ptr %t292, i64 %t240
  call void @olang_textcopy(ptr %t293, ptr %t243, i64 %t244)
  %t294 = getelementptr i8, ptr %t293, i64 %t244
  call void @olang_textcopy(ptr %t294, ptr %t246, i64 %t247)
  %t295 = getelementptr i8, ptr %t294, i64 %t247
  call void @olang_textcopy(ptr %t295, ptr %t250, i64 %t251)
  %t296 = getelementptr i8, ptr %t295, i64 %t251
  call void @olang_textcopy(ptr %t296, ptr %t253, i64 %t254)
  %t297 = getelementptr i8, ptr %t296, i64 %t254
  call void @olang_textcopy(ptr %t297, ptr %t257, i64 %t258)
  %t298 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t260, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t299, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2frecords_2eCheckIncrFailed(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l25 = alloca i64
  %l29 = alloca i32
  %l31 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/views:Kept", ptr %t1, i32 0, i32 6
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l13
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %t20, 1
  %t26 = extractvalue { i64, ptr } %t20, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t25, i64 %t26)
  %t33 = getelementptr i8, ptr %t32, i64 %t26
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  %t37 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t35)
  store i32 %t37, ptr %l16
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb8, label %ok.39, !prof !99
ok.39:
  br label %bb7
bb7:
  br label %bb12
bb8:
  %t40 = load i32, ptr %l16, !tbaa !23
  %t41 = ashr i32 %t40, 16
  %t43 = icmp eq i32 %t41, 1
  store i1 %t43, ptr %l18, !tbaa !21
  %t44 = load i32, ptr %l16, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  br i1 %t47, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l2, !tbaa !24
  br label %bb1
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/views:Kept", ptr %t53, i32 0, i32 6
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l25
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/views:Kept", ptr %t58, i32 0, i32 4
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t64 = load i64, ptr %l25, !tbaa !24
  %t65 = call i64 @__olang_fmt_i64(ptr null, i64 %t64)
  %t66 = add i64 %t63, %t65
  %t67 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t69 = add i64 %t66, %t68
  %t71 = call i64 @__olang_fmt_i64(ptr null, i64 %t61)
  %t72 = add i64 %t69, %t71
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t62, i64 %t63)
  %t77 = getelementptr i8, ptr %t76, i64 %t63
  %t78 = call i64 @__olang_fmt_i64(ptr %t77, i64 %t64)
  %t79 = getelementptr i8, ptr %t77, i64 %t65
  call void @olang_textcopy(ptr %t79, ptr %t67, i64 %t68)
  %t80 = getelementptr i8, ptr %t79, i64 %t68
  %t81 = call i64 @__olang_fmt_i64(ptr %t80, i64 %t61)
  %t82 = getelementptr i8, ptr %t80, i64 %t71
  call void @olang_textcopy(ptr %t82, ptr %t73, i64 %t74)
  %t83 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t76, 1
  %t86 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t84)
  store i32 %t86, ptr %l29
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb17, label %ok.88, !prof !99
ok.88:
  br label %bb16
bb16:
  br label %bb21
bb17:
  %t89 = load i32, ptr %l29, !tbaa !23
  %t90 = ashr i32 %t89, 16
  %t92 = icmp eq i32 %t90, 1
  store i1 %t92, ptr %l31, !tbaa !21
  %t93 = load i32, ptr %l29, !tbaa !23
  %t94 = ashr i32 %t93, 16
  %t96 = icmp eq i32 %t94, 1
  br i1 %t96, label %bb18, label %bb19
bb18:
  call void @__olang_errpay_pop()
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  call void @std_2fos_2eExit(i32 3)
  unreachable
bb22:
  call void @__olang_check_failed(ptr @olang_loc_fb666446bedbe7d2_84e447b691c6d3de)
  unreachable
ret:
  ret void
}

define dso_local void @compiler_2frecords_2eFrontRecords(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %lp17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l26 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i64
  %l55 = alloca { i64, ptr }
  %l58 = alloca i1
  %l59 = alloca i1
  %l63 = alloca ptr
  %l67 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l96 = alloca { i64, ptr }
  %l101 = alloca i1
  %l103 = alloca i1
  %l104 = alloca { i64, ptr }
  %l106 = alloca i64
  %l109 = alloca i64
  %l110 = alloca i64
  %l116 = alloca { i64, ptr }
  %l117 = alloca i1
  %l118 = alloca %"compiler/views:Cand"
  %l123 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l130 = alloca %"compiler/views:Cand"
  %l131 = alloca i32
  %l133 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = extractvalue { i64, ptr } %t4, 0
  %t8 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t10 = add i64 %t7, %t9
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t6, i64 %t7)
  %t12 = getelementptr i8, ptr %t11, i64 %t7
  call void @olang_textcopy(ptr %t12, ptr %t8, i64 %t9)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t11, 1
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t17 = extractvalue { i64, ptr } %t14, 1
  %t18 = mul i64 %t16, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t18)
  call void @llvm.memcpy.p0.p0.i64(ptr %t19, ptr %t17, i64 %t18, i1 false)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  %t23 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %s0, ptr %s0, { i64, ptr } %t21)
  %t24 = extractvalue { i32, { i64, ptr } } %t23, 1
  %t25 = extractvalue { i32, { i64, ptr } } %t23, 0
  store i32 %t25, ptr %l24
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb2, label %ok.27, !prof !99
ok.27:
  store { i64, ptr } %t24, ptr %l23
  br label %bb1
bb1:
  %t28 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t28, ptr %l18, !tbaa !27
  br label %bb6
bb2:
  %t29 = load i32, ptr %l24, !tbaa !23
  %t30 = ashr i32 %t29, 16
  %t32 = icmp eq i32 %t30, 1
  store i1 %t32, ptr %l26, !tbaa !21
  %t33 = load i32, ptr %l24, !tbaa !23
  %t34 = ashr i32 %t33, 16
  %t36 = icmp eq i32 %t34, 1
  br i1 %t36, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t38 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t38, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp sgt i64 %t43, %t44
  br i1 %t47, label %bb7, label %bb8
bb7:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = sub i64 %t53, %t54
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = add i64 %t57, %t58
  %t63 = sub i64 %t61, 1
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = sdiv i64 %t63, %t64
  store i64 %t67, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t69 = load i64, ptr %l37, !tbaa !24
  store i64 %t69, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t70 = load i64, ptr %l34, !tbaa !24
  store i64 %t70, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb60
bb15:
  br label %bb16
bb16:
  %t79 = load i64, ptr %l5, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = mul i64 %t80, %t81
  %t87 = add i64 %t79, %t84
  store i64 %t87, ptr %l10, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t89, ptr %l55, !tbaa !27
  %t90 = load i64, ptr %l10, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %t93, i64 %t90
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !37
  %t97 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s4, { i64, ptr } %t95, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t97, ptr %l58
  br label %bb17
bb17:
  %t98 = load i1, ptr %l58, !tbaa !21
  br i1 %t98, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb21
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/load:Loader", ptr %t99, i32 0, i32 10
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store ptr %t105, ptr %l63
  br label %bb20
bb20:
  %t106 = load ptr, ptr %l63, !tbaa !29
  %t108 = getelementptr %"compiler/load:Module", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = icmp slt i64 %t109, 0
  store i1 %t111, ptr %l59, !tbaa !21
  br label %bb21
bb21:
  %t113 = load i1, ptr %l59, !tbaa !21
  br i1 %t113, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb23:
  br label %bb24
bb24:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l67, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 10
  %t118 = load i64, ptr %l10, !tbaa !24
  %t121 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t117, i64 %t118)
  store ptr %t121, ptr %l71
  br label %bb25
bb25:
  %t122 = load ptr, ptr %l71, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t126, ptr %l74, !tbaa !27
  %t127 = load i64, ptr %l10, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %t130, i64 %t127
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !37
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t136 = call { i64, ptr } @compiler_2frecords_2efrontStem(ptr %v1, ptr %v0, ptr %v2, ptr %s4, ptr %t133, { i64, ptr } %t125, { i64, ptr } %t132)
  store { i64, ptr } %t136, ptr %l77
  br label %bb26
bb26:
  %t137 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t137, ptr %l11, !tbaa !27
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/build:Config", ptr %t138, i32 0, i32 0
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t145 = add i64 %t143, 5
  store i64 %t145, ptr %l81, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  store i64 %t148, ptr %l83, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l84, !tbaa !24
  %t151 = load i64, ptr %l81, !tbaa !24
  %t152 = icmp sge i64 %t151, 0
  br i1 %t152, label %bb27, label %bb28
bb27:
  %t154 = load i64, ptr %l81, !tbaa !24
  %t155 = load i64, ptr %l83, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_323c52581f8b1abf_a440e4b95536001b)
  unreachable
bb29:
  %t158 = load i64, ptr %l83, !tbaa !24
  %t159 = load i64, ptr %l84, !tbaa !24
  %t160 = icmp sle i64 %t158, %t159
  br i1 %t160, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_323c52581f8b1abf_a440e4b95536001b)
  unreachable
bb31:
  %t162 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l81, !tbaa !24
  %t165 = load i64, ptr %l83, !tbaa !24
  %t166 = getelementptr i8, ptr %t163, i64 %t164
  %t167 = sub i64 %t165, %t164
  %t168 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  store { i64, ptr } %t169, ptr %l12, !tbaa !27
  %t171 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t171, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l15, !tbaa !24
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_323c52581f8b1abf_a440e4b95536001b)
  unreachable
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t177 = load i64, ptr %l14, !tbaa !24
  %t178 = load i64, ptr %l15, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb58
bb35:
  br label %bb36
bb36:
  %t185 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t185, ptr %l96, !tbaa !27
  %t186 = load i64, ptr %l14, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %t189, i64 %t186
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !37
  store { i64, ptr } %t191, ptr %l16, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t194 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t197 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s4, { i64, ptr } %t193, { i64, ptr } %t194)
  store i1 %t197, ptr %l101
  br label %bb37
bb37:
  %t198 = load i1, ptr %l101, !tbaa !21
  %t199 = xor i1 %t198, true
  br i1 %t199, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb47
bb39:
  %t201 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t201, ptr %l104, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  store i64 %t204, ptr %l106, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t205, 0
  store i64 %t208, ptr %l109, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l110, !tbaa !24
  %t211 = load i64, ptr %l106, !tbaa !24
  %t212 = icmp sge i64 %t211, 0
  br i1 %t212, label %bb40, label %bb41
bb40:
  %t214 = load i64, ptr %l106, !tbaa !24
  %t215 = load i64, ptr %l109, !tbaa !24
  %t216 = icmp sle i64 %t214, %t215
  br i1 %t216, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_9c5452f20d69d8c2_bc172545126ff01e)
  unreachable
bb42:
  %t218 = load i64, ptr %l109, !tbaa !24
  %t219 = load i64, ptr %l110, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_9c5452f20d69d8c2_bc172545126ff01e)
  unreachable
bb44:
  %t222 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = load i64, ptr %l106, !tbaa !24
  %t225 = load i64, ptr %l109, !tbaa !24
  %t226 = getelementptr i8, ptr %t223, i64 %t224
  %t227 = sub i64 %t225, %t224
  %t228 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l116, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t233 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s7, { i64, ptr } %t229, { i64, ptr } %t232)
  store i1 %t233, ptr %l117
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_9c5452f20d69d8c2_bc172545126ff01e)
  unreachable
bb46:
  %t234 = load i1, ptr %l117, !tbaa !21
  store i1 %t234, ptr %l103, !tbaa !21
  br label %bb47
bb47:
  %t235 = load i1, ptr %l103, !tbaa !21
  br i1 %t235, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t238 = getelementptr %"compiler/build:Config", ptr %t236, i32 0, i32 0
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t239, 1
  %t243 = extractvalue { i64, ptr } %t239, 0
  %t244 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t248 = extractvalue { i64, ptr } %t240, 1
  %t249 = extractvalue { i64, ptr } %t240, 0
  %t250 = add i64 %t246, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t242, i64 %t243)
  %t252 = getelementptr i8, ptr %t251, i64 %t243
  call void @olang_textcopy(ptr %t252, ptr %t244, i64 %t245)
  %t253 = getelementptr i8, ptr %t252, i64 %t245
  call void @olang_textcopy(ptr %t253, ptr %t248, i64 %t249)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t251, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } %t255, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  store { i64, ptr } %t262, ptr %l123, !tbaa !27
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/load:Loader", ptr %t263, i32 0, i32 10
  %t266 = load i64, ptr %l10, !tbaa !24
  %t269 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t265, i64 %t266)
  store ptr %t269, ptr %l127
  br label %bb51
bb51:
  %t270 = load ptr, ptr %l127, !tbaa !29
  %t272 = getelementptr %"compiler/load:Module", ptr %t270, i32 0, i32 4
  %t273 = load i64, ptr %t272, !tbaa !24
  %t274 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t276 = call { i32, %"compiler/views:Cand" } @compiler_2frecords_2efrontRecord(ptr %s7, ptr %v3, { i64, ptr } %t274, i64 %t273)
  %t277 = extractvalue { i32, %"compiler/views:Cand" } %t276, 1
  %t278 = extractvalue { i32, %"compiler/views:Cand" } %t276, 0
  store i32 %t278, ptr %l131
  %t279 = icmp ne i32 %t278, 0
  br i1 %t279, label %bb53, label %ok.280, !prof !99
ok.280:
  store %"compiler/views:Cand" %t277, ptr %l130
  br label %bb52
bb52:
  %t281 = load %"compiler/views:Cand", ptr %l130
  store %"compiler/views:Cand" %t281, ptr %l118
  br label %bb55
bb53:
  %t282 = load i32, ptr %l131, !tbaa !23
  %t283 = ashr i32 %t282, 16
  %t285 = icmp eq i32 %t283, 1
  store i1 %t285, ptr %l133, !tbaa !21
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb55:
  %t286 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 104, i64 8)
  store ptr %t286, ptr %lp17
  %t287 = load %"compiler/views:Cand", ptr %l118
  %t288 = load ptr, ptr %lp17
  store %"compiler/views:Cand" %t287, ptr %t288
  %t291 = getelementptr %"compiler/views:Kept", ptr %a3, i32 0, i32 0
  %t292 = load ptr, ptr %lp17
  %t293 = load %"compiler/views:Cand", ptr %t292
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2ePush_3ccompiler_2fviews_3aCand_3e(ptr %v3, ptr %v3, ptr %t291, %"compiler/views:Cand" %t293)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb57:
  %t296 = load i64, ptr %l14, !tbaa !24
  %t298 = add i64 %t296, 1
  store i64 %t298, ptr %l14, !tbaa !24
  br label %bb33
bb58:
  call void @__olang_scope_close(ptr %s4)
  br label %bb59
bb59:
  %t300 = load i64, ptr %l9, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l9, !tbaa !24
  br label %bb13
bb60:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2frecords_2eKeepFront(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l31 = alloca i64
  %l33 = alloca i1
  %l39 = alloca { i64, ptr }
  %l44 = alloca i32
  %l46 = alloca i1
  %l49 = alloca i32
  %l55 = alloca i64
  %l58 = alloca i64
  %l76 = alloca { i64, ptr }
  %l79 = alloca i1
  %l80 = alloca i1
  %l84 = alloca ptr
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca ptr
  %l94 = alloca ptr
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i32
  %l100 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l102 = alloca i64
  %l104 = alloca %"std/prelude/text:StringBuilder"
  %l106 = alloca { i64, ptr }
  %l109 = alloca i1
  %l112 = alloca { i64, ptr }
  %l118 = alloca i64
  %l120 = alloca i64
  %l125 = alloca { i64, ptr }
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca i64
  %l140 = alloca i64
  %l145 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l159 = alloca ptr
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l170 = alloca i64
  %l176 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l183 = alloca i1
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t3 = getelementptr %"compiler/views:Kept", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2frecords_2echeckOthers(ptr %v0, ptr %v1, ptr %v4, ptr %v5, ptr %t6, ptr %t7, ptr %t8, ptr %t9)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t16 = getelementptr %"compiler/views:Kept", ptr %t14, i32 0, i32 7
  %t18 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H4aa8749bc5cf37a88c7557cdc2f2204a(ptr %v4, ptr %t16)
  store i64 %t18, ptr %l31
  br label %bb5
bb5:
  %t19 = load i64, ptr %l31, !tbaa !24
  %t20 = icmp eq i64 %t19, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb8
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp eq i64 %t24, 0
  store i1 %t26, ptr %l33, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l33, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call { i64, ptr } @compiler_2frecords_2eReaderRecords(ptr %v0, ptr %v1, ptr %s0, ptr %t29, ptr %t30)
  store { i64, ptr } %t33, ptr %l39
  br label %bb12
bb12:
  %t34 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t34, ptr %l6, !tbaa !27
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/build:Config", ptr %t35, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 1
  %t41 = extractvalue { i64, ptr } %t38, 0
  %t42 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  call void @olang_textcopy(ptr %t45, ptr %t40, i64 %t41)
  %t46 = getelementptr i8, ptr %t45, i64 %t41
  call void @olang_textcopy(ptr %t46, ptr %t42, i64 %t43)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = extractvalue { i64, ptr } %t48, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t57 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t55)
  store i32 %t57, ptr %l44
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb14, label %ok.59, !prof !99
ok.59:
  br label %bb13
bb13:
  br label %bb18
bb14:
  %t60 = load i32, ptr %l44, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  store i1 %t63, ptr %l46, !tbaa !21
  %t64 = load i32, ptr %l44, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  br i1 %t67, label %bb15, label %bb16
bb15:
  call void @__olang_errpay_pop()
  br label %bb16
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  %t69 = call i32 @compiler_2fbuild_2ePid()
  store i32 %t69, ptr %l49
  br label %bb19
bb19:
  %t70 = load i32, ptr %l49, !tbaa !23
  store i32 %t70, ptr %l7, !tbaa !23
  store i64 0, ptr %l8, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb20, label %bb21
bb20:
  %t81 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb25
bb22:
  %t85 = load i64, ptr %l9, !tbaa !24
  %t86 = load i64, ptr %l8, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t95 = sub i64 %t93, 1
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = sdiv i64 %t95, %t96
  store i64 %t99, ptr %l58, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb24
bb24:
  %t101 = load i64, ptr %l58, !tbaa !24
  store i64 %t101, ptr %l55, !tbaa !24
  br label %bb25
bb25:
  %t102 = load i64, ptr %l55, !tbaa !24
  store i64 %t102, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s6
  %t103 = load i64, ptr %l12, !tbaa !24
  %t104 = load i64, ptr %l11, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s6)
  br label %bb88
bb28:
  br label %bb29
bb29:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = mul i64 %t112, %t113
  %t119 = add i64 %t111, %t116
  store i64 %t119, ptr %l13, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t121, ptr %l76, !tbaa !27
  %t122 = load i64, ptr %l13, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %t125, i64 %t122
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !37
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s6, { i64, ptr } %t127, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t129, ptr %l79
  br label %bb30
bb30:
  %t130 = load i1, ptr %l79, !tbaa !21
  br i1 %t130, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb34
bb32:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/load:Loader", ptr %t131, i32 0, i32 10
  %t134 = load i64, ptr %l13, !tbaa !24
  %t137 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t133, i64 %t134)
  store ptr %t137, ptr %l84
  br label %bb33
bb33:
  %t138 = load ptr, ptr %l84, !tbaa !29
  %t140 = getelementptr %"compiler/load:Module", ptr %t138, i32 0, i32 4
  %t141 = load i64, ptr %t140, !tbaa !24
  %t143 = icmp slt i64 %t141, 0
  store i1 %t143, ptr %l80, !tbaa !21
  br label %bb34
bb34:
  %t145 = load i1, ptr %l80, !tbaa !21
  br i1 %t145, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb87
bb36:
  br label %bb37
bb37:
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t148 = getelementptr %"compiler/views:Kept", ptr %t146, i32 0, i32 7
  store ptr %t148, ptr %l90, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/load:Loader", ptr %t149, i32 0, i32 10
  %t152 = load i64, ptr %l13, !tbaa !24
  %t155 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t151, i64 %t152)
  store ptr %t155, ptr %l94
  br label %bb38
bb38:
  %t156 = load ptr, ptr %l94, !tbaa !29
  %t158 = getelementptr %"compiler/load:Module", ptr %t156, i32 0, i32 4
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load ptr, ptr %l90, !tbaa !29
  %t162 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H5a6cbfc85b925203d0895958ef20509b(ptr %v4, ptr %v4, ptr %t160, i64 %t159)
  %t163 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t162, 1
  %t164 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t162, 0
  store i32 %t164, ptr %l98
  %t165 = icmp ne i32 %t164, 0
  br i1 %t165, label %bb40, label %ok.166, !prof !99
ok.166:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t163, ptr %l97
  br label %bb39
bb39:
  %t168 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v4, ptr %l97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l100
  br label %bb42
bb40:
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s6)
  br label %bb87
bb42:
  %t169 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %l88
  br label %bb43
bb43:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l14
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %l14)
  store i64 %t172, ptr %l102
  br label %bb44
bb44:
  %t173 = load i64, ptr %l102, !tbaa !24
  %t174 = icmp eq i64 %t173, 0
  br i1 %t174, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s6)
  br label %bb87
bb46:
  br label %bb47
bb47:
  %t176 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s6)
  store %"std/prelude/text:StringBuilder" %t176, ptr %l104
  br label %bb48
bb48:
  %t177 = load %"std/prelude/text:StringBuilder", ptr %l104
  store %"std/prelude/text:StringBuilder" %t177, ptr %l15
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s6, ptr %l15, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb49
bb49:
  %t179 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t179, ptr %l106, !tbaa !27
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %t183, i64 %t180
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !37
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s6, { i64, ptr } %t185, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t187, ptr %l109
  br label %bb50
bb50:
  %t188 = load i1, ptr %l109, !tbaa !21
  %t189 = xor i1 %t188, true
  br i1 %t189, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  %t191 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t191, ptr %l112, !tbaa !27
  %t192 = load i64, ptr %l13, !tbaa !24
  %t194 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %t195, i64 %t192
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !37
  %t199 = extractvalue { i64, ptr } %t197, 1
  %t200 = extractvalue { i64, ptr } %t197, 0
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t203 = add i64 %t200, %t202
  %t204 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t203)
  call void @olang_textcopy(ptr %t204, ptr %t199, i64 %t200)
  %t205 = getelementptr i8, ptr %t204, i64 %t200
  call void @olang_textcopy(ptr %t205, ptr %t201, i64 %t202)
  %t206 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t204, 1
  %t209 = extractvalue { i64, ptr } %t207, 0
  %t210 = extractvalue { i64, ptr } %t207, 1
  %t211 = mul i64 %t209, 1
  %t212 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t211)
  call void @llvm.memcpy.p0.p0.i64(ptr %t212, ptr %t210, i64 %t211, i1 false)
  %t213 = insertvalue { i64, ptr } undef, i64 %t209, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s10, ptr %l15, { i64, ptr } %t214)
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb54:
  store ptr %l14, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s13
  %t218 = load i64, ptr %l17, !tbaa !24
  store i64 %t218, ptr %l118, !tbaa !24
  %t219 = load ptr, ptr %l16, !tbaa !29
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v4, ptr %t219)
  store i64 %t221, ptr %l120
  br label %bb56
bb56:
  %t222 = load i64, ptr %l118, !tbaa !24
  %t223 = load i64, ptr %l120, !tbaa !24
  %t224 = icmp slt i64 %t222, %t223
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s13)
  br label %bb63
bb58:
  br label %bb59
bb59:
  %t228 = load ptr, ptr %l16, !tbaa !29
  %t229 = load i64, ptr %l17, !tbaa !24
  %t232 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v4, ptr %v4, ptr %t228, i64 %t229)
  store { i64, ptr } %t232, ptr %l125
  br label %bb60
bb60:
  %t233 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t235 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t238 = extractvalue { i64, ptr } %t233, 1
  %t239 = extractvalue { i64, ptr } %t233, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t244 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t243)
  call void @olang_textcopy(ptr %t244, ptr %t235, i64 %t236)
  %t245 = getelementptr i8, ptr %t244, i64 %t236
  call void @olang_textcopy(ptr %t245, ptr %t238, i64 %t239)
  %t246 = getelementptr i8, ptr %t245, i64 %t239
  call void @olang_textcopy(ptr %t246, ptr %t241, i64 %t242)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t244, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s13, ptr %l15, { i64, ptr } %t255)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s13)
  br label %bb62
bb62:
  %t258 = load i64, ptr %l17, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l17, !tbaa !24
  br label %bb55
bb63:
  store %olang.scope zeroinitializer, ptr %s16
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t264 = load i64, ptr %l13, !tbaa !24
  %t265 = load ptr, ptr %l5, !tbaa !29
  %t270 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2frecords_2eothers(ptr %v0, ptr %v1, ptr %v5, ptr %s16, ptr %t262, ptr %t263, i64 %t264, ptr %t265)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %l136
  br label %bb64
bb64:
  %t271 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  %t272 = call ptr @__olang_scope_alloc_a(ptr %s16, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %t272
  store ptr %t272, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb65
bb65:
  store %olang.scope zeroinitializer, ptr %s17
  %t274 = load i64, ptr %l20, !tbaa !24
  store i64 %t274, ptr %l138, !tbaa !24
  %t275 = load ptr, ptr %l19, !tbaa !29
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s16, ptr %t275)
  store i64 %t277, ptr %l140
  br label %bb66
bb66:
  %t278 = load i64, ptr %l138, !tbaa !24
  %t279 = load i64, ptr %l140, !tbaa !24
  %t280 = icmp slt i64 %t278, %t279
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s17)
  br label %bb73
bb68:
  br label %bb69
bb69:
  %t284 = load ptr, ptr %l19, !tbaa !29
  %t285 = load i64, ptr %l20, !tbaa !24
  %t288 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s16, ptr %s16, ptr %t284, i64 %t285)
  store { i64, ptr } %t288, ptr %l145
  br label %bb70
bb70:
  %t289 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t289, 1
  %t293 = extractvalue { i64, ptr } %t289, 0
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t296 = add i64 %t293, %t295
  %t297 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t296)
  call void @olang_textcopy(ptr %t297, ptr %t292, i64 %t293)
  %t298 = getelementptr i8, ptr %t297, i64 %t293
  call void @olang_textcopy(ptr %t298, ptr %t294, i64 %t295)
  %t299 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t297, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } %t300, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s17, ptr %l15, { i64, ptr } %t307)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s17)
  br label %bb72
bb72:
  %t310 = load i64, ptr %l20, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l20, !tbaa !24
  br label %bb65
bb73:
  call void @__olang_scope_close(ptr %s16)
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s6, ptr %l15, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb74
bb74:
  %t316 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s6, ptr %s6, ptr %l15)
  store { i64, ptr } %t316, ptr %l154
  br label %bb75
bb75:
  %t317 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t317, ptr %l22, !tbaa !27
  %t318 = load ptr, ptr %l2, !tbaa !29
  store ptr %t318, ptr %l155, !tbaa !29
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/load:Loader", ptr %t319, i32 0, i32 10
  %t322 = load i64, ptr %l13, !tbaa !24
  %t325 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t321, i64 %t322)
  store ptr %t325, ptr %l159
  br label %bb76
bb76:
  %t326 = load ptr, ptr %l159, !tbaa !29
  %t328 = getelementptr %"compiler/load:Module", ptr %t326, i32 0, i32 2
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t330, ptr %l162, !tbaa !27
  %t331 = load i64, ptr %l13, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr { i64, ptr }, ptr %t334, i64 %t331
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !37
  %t337 = load ptr, ptr %l155, !tbaa !29
  %t340 = call { i64, ptr } @compiler_2frecords_2efrontStem(ptr %v2, ptr %v0, ptr %v3, ptr %s6, ptr %t337, { i64, ptr } %t329, { i64, ptr } %t336)
  store { i64, ptr } %t340, ptr %l165
  br label %bb77
bb77:
  %t341 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t341, ptr %l166, !tbaa !27
  %t342 = load i64, ptr %l13, !tbaa !24
  %t344 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr { i64, ptr }, ptr %t345, i64 %t342
  %t347 = load { i64, ptr }, ptr %t346, !tbaa !37
  %t349 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %s6, { i64, ptr } %t347)
  store { i64, ptr } %t349, ptr %l169
  br label %bb78
bb78:
  %t350 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t350, 0
  store i64 %t351, ptr %l170, !tbaa !24
  %t352 = icmp sge i64 0, 0
  br i1 %t352, label %bb79, label %bb80
bb79:
  %t354 = icmp sle i64 0, 16
  br i1 %t354, label %bb81, label %bb82
bb80:
  call void @__olang_check_failed(ptr @olang_loc_f22b8e51d216f7bc_367675fc034647b8)
  unreachable
bb81:
  %t356 = load i64, ptr %l170, !tbaa !24
  %t357 = icmp sle i64 16, %t356
  br i1 %t357, label %bb83, label %bb84
bb82:
  call void @__olang_check_failed(ptr @olang_loc_f22b8e51d216f7bc_367675fc034647b8)
  unreachable
bb83:
  %t359 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = getelementptr i8, ptr %t360, i64 0
  %t362 = sub i64 16, 0
  %t363 = insertvalue { i64, ptr } undef, i64 %t362, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t361, 1
  %t365 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t369 = extractvalue { i64, ptr } %t364, 1
  %t370 = extractvalue { i64, ptr } %t364, 0
  %t371 = add i64 %t367, %t370
  %t372 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t366, i64 %t367)
  %t373 = getelementptr i8, ptr %t372, i64 %t367
  call void @olang_textcopy(ptr %t373, ptr %t369, i64 %t370)
  %t374 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t375 = insertvalue { i64, ptr } %t374, ptr %t372, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = extractvalue { i64, ptr } %t375, 1
  %t379 = mul i64 %t377, 1
  %t380 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t379)
  call void @llvm.memcpy.p0.p0.i64(ptr %t380, ptr %t378, i64 %t379, i1 false)
  %t381 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  store { i64, ptr } %t382, ptr %l176, !tbaa !27
  %t383 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t383, ptr %l177, !tbaa !27
  %t384 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t386 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s6, ptr %s6, { i64, ptr } %t384)
  store { i64, ptr } %t386, ptr %l179
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_f22b8e51d216f7bc_367675fc034647b8)
  unreachable
bb85:
  %t387 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t392 = add i64 %t389, %t391
  %t393 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 1
  %t395 = extractvalue { i64, ptr } %t393, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t388, i64 %t389)
  %t401 = getelementptr i8, ptr %t400, i64 %t389
  call void @olang_textcopy(ptr %t401, ptr %t390, i64 %t391)
  %t402 = getelementptr i8, ptr %t401, i64 %t391
  call void @olang_textcopy(ptr %t402, ptr %t394, i64 %t395)
  %t403 = getelementptr i8, ptr %t402, i64 %t395
  call void @olang_textcopy(ptr %t403, ptr %t397, i64 %t398)
  %t404 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t400, 1
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t408 = extractvalue { i64, ptr } %t405, 1
  %t409 = mul i64 %t407, 1
  %t410 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t409)
  call void @llvm.memcpy.p0.p0.i64(ptr %t410, ptr %t408, i64 %t409, i1 false)
  %t411 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t410, 1
  %t413 = load i32, ptr %l7, !tbaa !23
  %t414 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t417 = call i1 @compiler_2frecords_2ePutFile(ptr %s6, ptr %s6, { i64, ptr } %t414, { i64, ptr } %t412, i32 %t413)
  store i1 %t417, ptr %l183
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s6)
  br label %bb87
bb87:
  %t418 = load i64, ptr %l12, !tbaa !24
  %t420 = add i64 %t418, 1
  store i64 %t420, ptr %l12, !tbaa !24
  br label %bb26
bb88:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2frecords_2eKeepScope(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca i64
  %l29 = alloca { i64, ptr }
  %l34 = alloca i32
  %l36 = alloca i1
  %l39 = alloca i32
  %l45 = alloca i64
  %l48 = alloca i64
  %l66 = alloca { i64, ptr }
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l83 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l87 = alloca i32
  %l88 = alloca { i64, ptr }
  %l91 = alloca i1
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l113 = alloca i32
  %l114 = alloca i1
  %l117 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l132 = alloca i64
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l145 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRecords(ptr %v3, ptr %s0, ptr %a3)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %l20
  br label %bb1
bb1:
  %t4 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l5
  %t6 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H0211835ad1df5edc8086b9b7bc878d6e(ptr %s0, ptr %l5)
  store i64 %t6, ptr %l22
  br label %bb2
bb2:
  %t7 = load i64, ptr %l22, !tbaa !24
  %t8 = icmp eq i64 %t7, 0
  br i1 %t8, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l6, !tbaa !29
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t22 = call { i64, ptr } @compiler_2frecords_2eReaderRecords(ptr %v0, ptr %v0, ptr %s0, ptr %t18, ptr %t19)
  store { i64, ptr } %t22, ptr %l29
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/build:Config", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = extractvalue { i64, ptr } %t27, 0
  %t31 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t29, i64 %t30)
  %t35 = getelementptr i8, ptr %t34, i64 %t30
  call void @olang_textcopy(ptr %t35, ptr %t31, i64 %t32)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = extractvalue { i64, ptr } %t37, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t46 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t44)
  store i32 %t46, ptr %l34
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb8, label %ok.48, !prof !99
ok.48:
  br label %bb7
bb7:
  br label %bb12
bb8:
  %t49 = load i32, ptr %l34, !tbaa !23
  %t50 = ashr i32 %t49, 16
  %t52 = icmp eq i32 %t50, 1
  store i1 %t52, ptr %l36, !tbaa !21
  %t53 = load i32, ptr %l34, !tbaa !23
  %t54 = ashr i32 %t53, 16
  %t56 = icmp eq i32 %t54, 1
  br i1 %t56, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t58 = call i32 @compiler_2fbuild_2ePid()
  store i32 %t58, ptr %l39
  br label %bb13
bb13:
  %t59 = load i32, ptr %l39, !tbaa !23
  store i32 %t59, ptr %l8, !tbaa !23
  store i64 0, ptr %l9, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  store i64 %t62, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t64 = load i64, ptr %l10, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb14, label %bb15
bb14:
  %t70 = load i64, ptr %l11, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb19
bb16:
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l11, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l11, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l48, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb18
bb18:
  %t90 = load i64, ptr %l48, !tbaa !24
  store i64 %t90, ptr %l45, !tbaa !24
  br label %bb19
bb19:
  %t91 = load i64, ptr %l45, !tbaa !24
  store i64 %t91, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t92 = load i64, ptr %l13, !tbaa !24
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb62
bb22:
  br label %bb23
bb23:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l13, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l14, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t110, ptr %l66, !tbaa !27
  %t111 = load i64, ptr %l14, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %t114, i64 %t111
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !37
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s5, { i64, ptr } %t116, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t118, ptr %l69
  br label %bb24
bb24:
  %t119 = load i1, ptr %l69, !tbaa !21
  br i1 %t119, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb28
bb26:
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t122 = getelementptr %"compiler/load:Loader", ptr %t120, i32 0, i32 10
  %t123 = load i64, ptr %l14, !tbaa !24
  %t126 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t122, i64 %t123)
  store ptr %t126, ptr %l74
  br label %bb27
bb27:
  %t127 = load ptr, ptr %l74, !tbaa !29
  %t129 = getelementptr %"compiler/load:Module", ptr %t127, i32 0, i32 4
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = icmp slt i64 %t130, 0
  store i1 %t132, ptr %l70, !tbaa !21
  br label %bb28
bb28:
  %t134 = load i1, ptr %l70, !tbaa !21
  br i1 %t134, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb30:
  br label %bb31
bb31:
  store ptr %l5, ptr %l79, !tbaa !29
  %t135 = load ptr, ptr %l6, !tbaa !29
  %t137 = getelementptr %"compiler/load:Loader", ptr %t135, i32 0, i32 10
  %t138 = load i64, ptr %l14, !tbaa !24
  %t141 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t137, i64 %t138)
  store ptr %t141, ptr %l83
  br label %bb32
bb32:
  %t142 = load ptr, ptr %l83, !tbaa !29
  %t144 = getelementptr %"compiler/load:Module", ptr %t142, i32 0, i32 4
  %t145 = load i64, ptr %t144, !tbaa !24
  %t146 = load ptr, ptr %l79, !tbaa !29
  %t148 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %s0, ptr %s0, ptr %t146, i64 %t145)
  %t149 = extractvalue { i32, { i64, ptr } } %t148, 1
  %t150 = extractvalue { i32, { i64, ptr } } %t148, 0
  store i32 %t150, ptr %l87
  %t151 = icmp ne i32 %t150, 0
  br i1 %t151, label %bb34, label %ok.152, !prof !99
ok.152:
  store { i64, ptr } %t149, ptr %l86
  br label %bb33
bb33:
  %t153 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t153, ptr %l78, !tbaa !27
  br label %bb36
bb34:
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb36:
  %t154 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t154, ptr %l15, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t155, ptr %l88, !tbaa !27
  %t156 = load i64, ptr %l14, !tbaa !24
  %t158 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %t159, i64 %t156
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !37
  %t163 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t161, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t163, ptr %l91
  br label %bb37
bb37:
  %t164 = load i1, ptr %l91, !tbaa !21
  %t165 = xor i1 %t164, true
  br i1 %t165, label %bb38, label %bb39
bb38:
  %t167 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t167, ptr %l94, !tbaa !27
  %t168 = load i64, ptr %l14, !tbaa !24
  %t170 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %t171, i64 %t168
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !37
  %t175 = extractvalue { i64, ptr } %t173, 1
  %t176 = extractvalue { i64, ptr } %t173, 0
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t179)
  call void @olang_textcopy(ptr %t180, ptr %t175, i64 %t176)
  %t181 = getelementptr i8, ptr %t180, i64 %t176
  call void @olang_textcopy(ptr %t181, ptr %t177, i64 %t178)
  %t182 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  store { i64, ptr } %t190, ptr %l93, !tbaa !27
  br label %bb40
bb39:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb40
bb40:
  %t192 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t194 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = add i64 %t193, %t196
  %t198 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t197)
  call void @olang_textcopy(ptr %t198, ptr %t192, i64 %t193)
  %t199 = getelementptr i8, ptr %t198, i64 %t193
  call void @olang_textcopy(ptr %t199, ptr %t195, i64 %t196)
  %t200 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t198, 1
  %t204 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t201, 1
  %t207 = extractvalue { i64, ptr } %t201, 0
  %t209 = extractvalue { i64, ptr } %t204, 1
  %t210 = extractvalue { i64, ptr } %t204, 0
  %t211 = add i64 %t207, %t210
  %t212 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t211)
  call void @olang_textcopy(ptr %t212, ptr %t206, i64 %t207)
  %t213 = getelementptr i8, ptr %t212, i64 %t207
  call void @olang_textcopy(ptr %t213, ptr %t209, i64 %t210)
  %t214 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t212, 1
  store { i64, ptr } %t215, ptr %l17, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t217, ptr %l103, !tbaa !27
  store ptr %a4, ptr %l105, !tbaa !29
  %t219 = load ptr, ptr %l6, !tbaa !29
  %t221 = getelementptr %"compiler/load:Loader", ptr %t219, i32 0, i32 10
  %t222 = load i64, ptr %l14, !tbaa !24
  %t225 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t221, i64 %t222)
  store ptr %t225, ptr %l109
  br label %bb41
bb41:
  %t226 = load ptr, ptr %l109, !tbaa !29
  %t228 = getelementptr %"compiler/load:Module", ptr %t226, i32 0, i32 4
  %t229 = load i64, ptr %t228, !tbaa !24
  %t230 = load ptr, ptr %l105, !tbaa !29
  %t232 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v4, ptr %v4, ptr %t230, i64 %t229)
  %t233 = extractvalue { i32, { i64, ptr } } %t232, 1
  %t234 = extractvalue { i32, { i64, ptr } } %t232, 0
  store i32 %t234, ptr %l113
  %t235 = icmp ne i32 %t234, 0
  br i1 %t235, label %bb43, label %ok.236, !prof !99
ok.236:
  store { i64, ptr } %t233, ptr %l112
  br label %bb42
bb42:
  %t237 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t237, ptr %l104, !tbaa !27
  br label %bb45
bb43:
  br label %bb44
bb44:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l104, !tbaa !27
  br label %bb45
bb45:
  %t238 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t239 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t240 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %v4, { i64, ptr } %t238, { i64, ptr } %t239)
  store i1 %t240, ptr %l114
  br label %bb46
bb46:
  %t241 = load i1, ptr %l114, !tbaa !21
  br i1 %t241, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb48:
  br label %bb49
bb49:
  %t242 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t242, 1
  %t245 = extractvalue { i64, ptr } %t242, 0
  %t246 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t249 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t248)
  call void @olang_textcopy(ptr %t249, ptr %t244, i64 %t245)
  %t250 = getelementptr i8, ptr %t249, i64 %t245
  call void @olang_textcopy(ptr %t250, ptr %t246, i64 %t247)
  %t251 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t249, 1
  store { i64, ptr } %t252, ptr %l18, !tbaa !27
  %t254 = load ptr, ptr %l1, !tbaa !29
  store ptr %t254, ptr %l117, !tbaa !29
  %t255 = load ptr, ptr %l6, !tbaa !29
  %t257 = getelementptr %"compiler/load:Loader", ptr %t255, i32 0, i32 10
  %t258 = load i64, ptr %l14, !tbaa !24
  %t261 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t257, i64 %t258)
  store ptr %t261, ptr %l121
  br label %bb50
bb50:
  %t262 = load ptr, ptr %l121, !tbaa !29
  %t264 = getelementptr %"compiler/load:Module", ptr %t262, i32 0, i32 2
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  %t266 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t266, ptr %l124, !tbaa !27
  %t267 = load i64, ptr %l14, !tbaa !24
  %t269 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = getelementptr { i64, ptr }, ptr %t270, i64 %t267
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !37
  %t273 = load ptr, ptr %l117, !tbaa !29
  %t276 = call { i64, ptr } @compiler_2frecords_2escopeStem(ptr %v1, ptr %v0, ptr %v2, ptr %s5, ptr %t273, { i64, ptr } %t265, { i64, ptr } %t272)
  store { i64, ptr } %t276, ptr %l127
  br label %bb51
bb51:
  %t277 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t277, ptr %l128, !tbaa !27
  %t278 = load i64, ptr %l14, !tbaa !24
  %t280 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %t281, i64 %t278
  %t283 = load { i64, ptr }, ptr %t282, !tbaa !37
  %t285 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %s5, { i64, ptr } %t283)
  store { i64, ptr } %t285, ptr %l131
  br label %bb52
bb52:
  %t286 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 0
  store i64 %t287, ptr %l132, !tbaa !24
  %t288 = icmp sge i64 0, 0
  br i1 %t288, label %bb53, label %bb54
bb53:
  %t290 = icmp sle i64 0, 16
  br i1 %t290, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_54f44bc773787685_bd98309550db61e1)
  unreachable
bb55:
  %t292 = load i64, ptr %l132, !tbaa !24
  %t293 = icmp sle i64 16, %t292
  br i1 %t293, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_54f44bc773787685_bd98309550db61e1)
  unreachable
bb57:
  %t295 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr i8, ptr %t296, i64 0
  %t298 = sub i64 16, 0
  %t299 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t297, 1
  %t301 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t301, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t305 = extractvalue { i64, ptr } %t300, 1
  %t306 = extractvalue { i64, ptr } %t300, 0
  %t307 = add i64 %t303, %t306
  %t308 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t307)
  call void @olang_textcopy(ptr %t308, ptr %t302, i64 %t303)
  %t309 = getelementptr i8, ptr %t308, i64 %t303
  call void @olang_textcopy(ptr %t309, ptr %t305, i64 %t306)
  %t310 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t308, 1
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t314 = extractvalue { i64, ptr } %t311, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l138, !tbaa !27
  %t319 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t319, ptr %l139, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t322 = call { i64, ptr } @compiler_2frecords_2esumOf(ptr %s5, ptr %s5, { i64, ptr } %t320)
  store { i64, ptr } %t322, ptr %l141
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_54f44bc773787685_bd98309550db61e1)
  unreachable
bb59:
  %t323 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t324 = extractvalue { i64, ptr } %t323, 1
  %t325 = extractvalue { i64, ptr } %t323, 0
  %t326 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t327 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t328 = add i64 %t325, %t327
  %t329 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = add i64 %t328, %t331
  %t333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t334 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t335 = add i64 %t332, %t334
  %t336 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t335)
  call void @olang_textcopy(ptr %t336, ptr %t324, i64 %t325)
  %t337 = getelementptr i8, ptr %t336, i64 %t325
  call void @olang_textcopy(ptr %t337, ptr %t326, i64 %t327)
  %t338 = getelementptr i8, ptr %t337, i64 %t327
  call void @olang_textcopy(ptr %t338, ptr %t330, i64 %t331)
  %t339 = getelementptr i8, ptr %t338, i64 %t331
  call void @olang_textcopy(ptr %t339, ptr %t333, i64 %t334)
  %t340 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t341 = insertvalue { i64, ptr } %t340, ptr %t336, 1
  %t343 = extractvalue { i64, ptr } %t341, 0
  %t344 = extractvalue { i64, ptr } %t341, 1
  %t345 = mul i64 %t343, 1
  %t346 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t345)
  call void @llvm.memcpy.p0.p0.i64(ptr %t346, ptr %t344, i64 %t345, i1 false)
  %t347 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  %t349 = load i32, ptr %l8, !tbaa !23
  %t350 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t353 = call i1 @compiler_2frecords_2ePutFile(ptr %s5, ptr %s5, { i64, ptr } %t350, { i64, ptr } %t348, i32 %t349)
  store i1 %t353, ptr %l145
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb61:
  %t354 = load i64, ptr %l13, !tbaa !24
  %t356 = add i64 %t354, 1
  store i64 %t356, ptr %l13, !tbaa !24
  br label %bb20
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2frecords_2eModuleKeys(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l40 = alloca { i64, ptr }
  %l42 = alloca i1
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l65 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca ptr
  %l108 = alloca i64
  %l114 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l128 = alloca i64
  %l130 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l137 = alloca i64
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l144 = alloca i64
  %l145 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l153 = alloca i64
  %l154 = alloca i64
  %l157 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l190 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l198 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l200 = alloca i64
  %l202 = alloca i64
  %l207 = alloca i64
  %l208 = alloca ptr
  %l209 = alloca i64
  %l214 = alloca ptr
  %l223 = alloca { i64, ptr }
  %l224 = alloca i64
  %l225 = alloca i64
  %l228 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t19 = alloca i64
  %t123 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  store ptr %t3, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l33
  br label %bb1
bb1:
  %t8 = load i64, ptr %l33, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %l34, !tbaa !24
  %t10 = load i64, ptr %l34, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l34, !tbaa !24
  %t14 = icmp sle i64 %t13, 576460752303423487
  br i1 %t14, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8d034036672d852_5fe6d572cc7f08a6)
  unreachable
bb4:
  %t16 = load i64, ptr %l34, !tbaa !24
  %t17 = mul i64 %t16, 16
  %t18 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t17)
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t16
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr { i64, ptr }, ptr %t18, i64 %t23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t34 = call { i64, ptr } @compiler_2frecords_2eBuildInputs(ptr %v1, ptr %s0, ptr %t30, i1 %a2)
  store { i64, ptr } %t34, ptr %l40
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8d034036672d852_5fe6d572cc7f08a6)
  unreachable
bb6:
  %t35 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t35, ptr %l6, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t38, ptr %l42
  br label %bb7
bb7:
  %t39 = load i1, ptr %l42, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t40, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t42 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t42, ptr %l44, !tbaa !27
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/build:Config", ptr %t43, i32 0, i32 4
  %t46 = load i1, ptr %t45, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/load:Loader", ptr %t50, i32 0, i32 12
  %t53 = load i64, ptr %t52, !tbaa !24
  %t56 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t48, i64 %t53)
  store ptr %t56, ptr %l52
  br label %bb13
bb12:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l47, !tbaa !27
  br label %bb15
bb13:
  %t57 = load ptr, ptr %l52, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l54, !tbaa !27
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 12
  %t66 = load i64, ptr %t65, !tbaa !24
  %t69 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t61, i64 %t66)
  store ptr %t69, ptr %l59
  br label %bb14
bb14:
  %t70 = load ptr, ptr %l59, !tbaa !29
  %t72 = getelementptr %"compiler/load:Module", ptr %t70, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t74 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t76 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t84 = extractvalue { i64, ptr } %t73, 1
  %t85 = extractvalue { i64, ptr } %t73, 0
  %t86 = add i64 %t82, %t85
  %t87 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t86)
  call void @olang_textcopy(ptr %t87, ptr %t74, i64 %t75)
  %t88 = getelementptr i8, ptr %t87, i64 %t75
  call void @olang_textcopy(ptr %t88, ptr %t77, i64 %t78)
  %t89 = getelementptr i8, ptr %t88, i64 %t78
  call void @olang_textcopy(ptr %t89, ptr %t80, i64 %t81)
  %t90 = getelementptr i8, ptr %t89, i64 %t81
  call void @olang_textcopy(ptr %t90, ptr %t84, i64 %t85)
  %t91 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t87, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = extractvalue { i64, ptr } %t92, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  br label %bb15
bb15:
  %t101 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = add i64 %t103, %t106
  %t108 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t107)
  call void @olang_textcopy(ptr %t108, ptr %t102, i64 %t103)
  %t109 = getelementptr i8, ptr %t108, i64 %t103
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t106)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t108, 1
  store { i64, ptr } %t111, ptr %l7, !tbaa !27
  %t113 = load i64, ptr %l4, !tbaa !24
  store i64 %t113, ptr %l65, !tbaa !24
  %t114 = load i64, ptr %l65, !tbaa !24
  %t115 = icmp sge i64 %t114, 0
  br i1 %t115, label %bb16, label %bb17
bb16:
  %t117 = load i64, ptr %l65, !tbaa !24
  %t118 = icmp sle i64 %t117, 576460752303423487
  br i1 %t118, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_55114c4c1f153b47_5d38716d9a9c2c3b)
  unreachable
bb18:
  %t120 = load i64, ptr %l65, !tbaa !24
  %t121 = mul i64 %t120, 16
  %t122 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t121)
  store i64 0, ptr %t123
  br label %fill.124
fill.124:
  %t127 = load i64, ptr %t123
  %t128 = icmp slt i64 %t127, %t120
  br i1 %t128, label %fillb.125, label %filld.126
fillb.125:
  %t129 = getelementptr { i64, ptr }, ptr %t122, i64 %t127
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %t129
  %t130 = add i64 %t127, 1
  store i64 %t130, ptr %t123
  br label %fill.124
filld.126:
  %t131 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t122, 1
  store { i64, ptr } %t132, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t134 = load i64, ptr %l4, !tbaa !24
  store i64 %t134, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l9, !tbaa !24
  %t140 = icmp sgt i64 %t136, %t137
  br i1 %t140, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_55114c4c1f153b47_5d38716d9a9c2c3b)
  unreachable
bb20:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t144 = icmp sgt i64 %t142, 0
  br i1 %t144, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb25
bb22:
  %t146 = load i64, ptr %l10, !tbaa !24
  %t147 = load i64, ptr %l9, !tbaa !24
  %t150 = sub i64 %t146, %t147
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = add i64 %t150, %t151
  %t156 = sub i64 %t154, 1
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = sdiv i64 %t156, %t157
  store i64 %t160, ptr %l76, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb24
bb24:
  %t162 = load i64, ptr %l76, !tbaa !24
  store i64 %t162, ptr %l73, !tbaa !24
  br label %bb25
bb25:
  %t163 = load i64, ptr %l73, !tbaa !24
  store i64 %t163, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t164 = load i64, ptr %l13, !tbaa !24
  %t165 = load i64, ptr %l12, !tbaa !24
  %t168 = icmp slt i64 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb61
bb28:
  br label %bb29
bb29:
  %t172 = load i64, ptr %l9, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l11, !tbaa !24
  %t177 = mul i64 %t173, %t174
  %t180 = add i64 %t172, %t177
  store i64 %t180, ptr %l14, !tbaa !24
  %t182 = load ptr, ptr %l3, !tbaa !29
  %t183 = load i64, ptr %l14, !tbaa !24
  %t186 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t182, i64 %t183)
  store ptr %t186, ptr %l96
  br label %bb30
bb30:
  %t187 = load ptr, ptr %l96, !tbaa !29
  store ptr %t187, ptr %l15, !tbaa !29
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l97
  br label %bb31
bb31:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %l16
  %t190 = load ptr, ptr %l15, !tbaa !29
  %t192 = getelementptr %"compiler/load:Module", ptr %t190, i32 0, i32 2
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %v0, ptr %l16, { i64, ptr } %t193)
  br label %bb32
bb32:
  %t196 = load ptr, ptr %l15, !tbaa !29
  %t198 = getelementptr %"compiler/load:Module", ptr %t196, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %v0, ptr %l16, { i64, ptr } %t199)
  br label %bb33
bb33:
  %t202 = load ptr, ptr %l15, !tbaa !29
  %t204 = getelementptr %"compiler/load:Module", ptr %t202, i32 0, i32 1
  %t205 = load { i64, ptr }, ptr %t204, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %v0, ptr %l16, { i64, ptr } %t205)
  br label %bb34
bb34:
  store ptr %l16, ptr %l107, !tbaa !29
  %t208 = ptrtoint ptr %s5 to i64
  store i64 %t208, ptr %l108, !tbaa !24
  %t209 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t209, label %bb35, label %bb36
bb35:
  %t211 = call ptr @__olang_region_make(ptr %s5)
  %t212 = ptrtoint ptr %t211 to i64
  store i64 %t212, ptr %l108, !tbaa !24
  br label %bb36
bb36:
  %t213 = load ptr, ptr %l15, !tbaa !29
  %t215 = getelementptr %"compiler/load:Module", ptr %t213, i32 0, i32 6
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t218 = icmp eq ptr %t216, null
  %t220 = xor i1 %t218, true
  br i1 %t220, label %bb37, label %bb38
bb37:
  %t222 = load ptr, ptr %l15, !tbaa !29
  %t224 = getelementptr %"compiler/load:Module", ptr %t222, i32 0, i32 6
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = icmp eq ptr %t225, null
  br i1 %t227, label %bb39, label %bb40
bb38:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l123, !tbaa !27
  %t229 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t229, ptr %l114, !tbaa !27
  br label %bb42
bb39:
  call void @__olang_check_failed(ptr @olang_loc_9658ab26a60a31a4_8c8d053bf8a13660)
  unreachable
bb40:
  br label %bb41
bb41:
  %t231 = load ptr, ptr %l15, !tbaa !29
  %t233 = getelementptr %"compiler/load:Module", ptr %t231, i32 0, i32 6
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t237 = getelementptr %"compiler/source:Source", ptr %t234, i32 0, i32 1
  %t238 = load { i64, ptr }, ptr %t237, !tbaa !27
  store { i64, ptr } %t238, ptr %l114, !tbaa !27
  br label %bb42
bb42:
  %t241 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t242 = load i64, ptr %l108
  %t243 = inttoptr i64 %t242 to ptr
  %t244 = extractvalue { i64, ptr } %t241, 0
  %t245 = extractvalue { i64, ptr } %t241, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %t243, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t250 = load ptr, ptr %l107, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %s5, ptr %t250, { i64, ptr } %t249)
  br label %bb43
bb43:
  %t252 = load ptr, ptr %l15, !tbaa !29
  %t254 = getelementptr %"compiler/load:Module", ptr %t252, i32 0, i32 29
  store ptr %t254, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t256 = load i64, ptr %l18, !tbaa !24
  store i64 %t256, ptr %l128, !tbaa !24
  %t257 = load ptr, ptr %l17, !tbaa !29
  %t259 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t257)
  store i64 %t259, ptr %l130
  br label %bb45
bb45:
  %t260 = load i64, ptr %l128, !tbaa !24
  %t261 = load i64, ptr %l130, !tbaa !24
  %t262 = icmp slt i64 %t260, %t261
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb56
bb47:
  br label %bb48
bb48:
  %t266 = load ptr, ptr %l17, !tbaa !29
  %t267 = load i64, ptr %l18, !tbaa !24
  %t270 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t266, i64 %t267)
  store { i64, ptr } %t270, ptr %l135
  br label %bb49
bb49:
  %t271 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t271, ptr %l19, !tbaa !27
  store ptr %l16, ptr %l136, !tbaa !29
  %t272 = ptrtoint ptr %s5 to i64
  store i64 %t272, ptr %l137, !tbaa !24
  %t273 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t273, label %bb50, label %bb51
bb50:
  %t275 = call ptr @__olang_region_make(ptr %s5)
  %t276 = ptrtoint ptr %t275 to i64
  store i64 %t276, ptr %l137, !tbaa !24
  br label %bb51
bb51:
  %t277 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t277, ptr %l139, !tbaa !27
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t282 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbedded(ptr %v0, ptr %v0, ptr %s7, ptr %t278, { i64, ptr } %t279)
  store { i64, ptr } %t282, ptr %l142
  br label %bb52
bb52:
  %t283 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t283, ptr %l143, !tbaa !27
  %t284 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t284, 0
  store i64 %t285, ptr %l144, !tbaa !24
  %t286 = load i64, ptr %l144, !tbaa !24
  %t287 = mul i64 %t286, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t287)
  %t289 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  store { i64, ptr } %t290, ptr %l145, !tbaa !27
  %t291 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = load i64, ptr %l144, !tbaa !24
  %t296 = mul i64 %t295, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t292, ptr %t294, i64 %t296, i1 false)
  %t297 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t300 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s7, ptr %s7, { i64, ptr } %t297)
  store { i64, ptr } %t300, ptr %l148
  br label %bb53
bb53:
  %t301 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t302 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t303 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 1
  %t305 = extractvalue { i64, ptr } %t303, 0
  %t306 = add i64 %t302, %t305
  %t307 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t308 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t309 = add i64 %t306, %t308
  %t310 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t313 = add i64 %t309, %t312
  %t314 = load i64, ptr %l137
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = call ptr @__olang_scope_alloc(ptr %t315, i64 %t313)
  call void @olang_textcopy(ptr %t316, ptr %t301, i64 %t302)
  %t317 = getelementptr i8, ptr %t316, i64 %t302
  call void @olang_textcopy(ptr %t317, ptr %t304, i64 %t305)
  %t318 = getelementptr i8, ptr %t317, i64 %t305
  call void @olang_textcopy(ptr %t318, ptr %t307, i64 %t308)
  %t319 = getelementptr i8, ptr %t318, i64 %t308
  call void @olang_textcopy(ptr %t319, ptr %t311, i64 %t312)
  %t320 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t316, 1
  %t323 = load i64, ptr %l137
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = extractvalue { i64, ptr } %t321, 0
  %t326 = extractvalue { i64, ptr } %t321, 1
  %t327 = mul i64 %t325, 1
  %t328 = call ptr @__olang_scope_alloc(ptr %t324, i64 %t327)
  call void @llvm.memcpy.p0.p0.i64(ptr %t328, ptr %t326, i64 %t327, i1 false)
  %t329 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t330 = insertvalue { i64, ptr } %t329, ptr %t328, 1
  %t331 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %s5, ptr %t331, { i64, ptr } %t330)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb55:
  %t333 = load i64, ptr %l18, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l18, !tbaa !24
  br label %bb44
bb56:
  %t337 = load i64, ptr %l14, !tbaa !24
  store i64 %t337, ptr %l153, !tbaa !24
  %t338 = ptrtoint ptr %s0 to i64
  store i64 %t338, ptr %l154, !tbaa !24
  %t339 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t339, label %bb57, label %bb58
bb57:
  %t341 = call ptr @__olang_region_make(ptr %s0)
  %t342 = ptrtoint ptr %t341 to i64
  store i64 %t342, ptr %l154, !tbaa !24
  br label %bb58
bb58:
  %t343 = load i64, ptr %l154
  %t344 = inttoptr i64 %t343 to ptr
  %t346 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s5, ptr %t344, ptr %l16)
  store { i64, ptr } %t346, ptr %l157
  br label %bb59
bb59:
  %t347 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t348 = load i64, ptr %l154
  %t349 = inttoptr i64 %t348 to ptr
  %t350 = extractvalue { i64, ptr } %t347, 0
  %t351 = extractvalue { i64, ptr } %t347, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %t349, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  %t357 = load i64, ptr %l153, !tbaa !24
  %t358 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr { i64, ptr }, ptr %t359, i64 %t357
  store { i64, ptr } %t355, ptr %t360, !tbaa !37
  call void @__olang_scope_close(ptr %s5)
  br label %bb60
bb60:
  %t361 = load i64, ptr %l13, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l13, !tbaa !24
  br label %bb26
bb61:
  store i64 0, ptr %l20, !tbaa !24
  %t365 = load i64, ptr %l4, !tbaa !24
  store i64 %t365, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t367 = load i64, ptr %l21, !tbaa !24
  %t368 = load i64, ptr %l20, !tbaa !24
  %t371 = icmp sgt i64 %t367, %t368
  br i1 %t371, label %bb62, label %bb63
bb62:
  %t373 = load i64, ptr %l22, !tbaa !24
  %t375 = icmp sgt i64 %t373, 0
  br i1 %t375, label %bb64, label %bb65
bb63:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb67
bb64:
  %t377 = load i64, ptr %l21, !tbaa !24
  %t378 = load i64, ptr %l20, !tbaa !24
  %t381 = sub i64 %t377, %t378
  %t382 = load i64, ptr %l22, !tbaa !24
  %t385 = add i64 %t381, %t382
  %t387 = sub i64 %t385, 1
  %t388 = load i64, ptr %l22, !tbaa !24
  %t391 = sdiv i64 %t387, %t388
  store i64 %t391, ptr %l168, !tbaa !24
  br label %bb66
bb65:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb66
bb66:
  %t393 = load i64, ptr %l168, !tbaa !24
  store i64 %t393, ptr %l165, !tbaa !24
  br label %bb67
bb67:
  %t394 = load i64, ptr %l165, !tbaa !24
  store i64 %t394, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb68
bb68:
  store %olang.scope zeroinitializer, ptr %s12
  %t395 = load i64, ptr %l24, !tbaa !24
  %t396 = load i64, ptr %l23, !tbaa !24
  %t399 = icmp slt i64 %t395, %t396
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb69, label %bb70
bb69:
  call void @__olang_scope_close(ptr %s12)
  br label %bb95
bb70:
  br label %bb71
bb71:
  %t403 = load i64, ptr %l20, !tbaa !24
  %t404 = load i64, ptr %l24, !tbaa !24
  %t405 = load i64, ptr %l22, !tbaa !24
  %t408 = mul i64 %t404, %t405
  %t411 = add i64 %t403, %t408
  store i64 %t411, ptr %l25, !tbaa !24
  %t413 = load i64, ptr %l25, !tbaa !24
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/load:Loader", ptr %t414, i32 0, i32 12
  %t417 = load i64, ptr %t416, !tbaa !24
  %t420 = icmp eq i64 %t413, %t417
  br i1 %t420, label %bb72, label %bb73
bb72:
  call void @__olang_scope_close(ptr %s12)
  br label %bb94
bb73:
  br label %bb74
bb74:
  %t422 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s12, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t422, ptr %l190
  br label %bb75
bb75:
  %t423 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l190
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t423, ptr %l26
  %t424 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s12, ptr %s0, ptr %l26, { i64, ptr } %t424)
  br label %bb76
bb76:
  %t427 = load i64, ptr %l25, !tbaa !24
  %t429 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !27
  %t431 = getelementptr { i64, ptr }, ptr %t430, i64 %t427
  %t432 = load { i64, ptr }, ptr %t431, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s12, ptr %s0, ptr %l26, { i64, ptr } %t432)
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s14
  %t435 = load ptr, ptr %l3, !tbaa !29
  %t436 = load i64, ptr %l25, !tbaa !24
  %t439 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2frecords_2eReached(ptr %v0, ptr %s14, ptr %t435, i64 %t436)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t439, ptr %l198
  br label %bb78
bb78:
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l198
  %t441 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %t441
  store ptr %t441, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb79
bb79:
  %t443 = load i64, ptr %l28, !tbaa !24
  store i64 %t443, ptr %l200, !tbaa !24
  %t444 = load ptr, ptr %l27, !tbaa !29
  %t446 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s14, ptr %t444)
  store i64 %t446, ptr %l202
  br label %bb80
bb80:
  %t447 = load i64, ptr %l200, !tbaa !24
  %t448 = load i64, ptr %l202, !tbaa !24
  %t449 = icmp slt i64 %t447, %t448
  %t451 = xor i1 %t449, true
  br i1 %t451, label %bb81, label %bb82
bb81:
  br label %bb90
bb82:
  br label %bb83
bb83:
  %t453 = load ptr, ptr %l27, !tbaa !29
  %t454 = load i64, ptr %l28, !tbaa !24
  %t457 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s14, ptr %t453, i64 %t454)
  store i64 %t457, ptr %l207
  br label %bb84
bb84:
  %t458 = load i64, ptr %l207, !tbaa !24
  store i64 %t458, ptr %l29, !tbaa !24
  store ptr %l26, ptr %l208, !tbaa !29
  %t459 = ptrtoint ptr %s12 to i64
  store i64 %t459, ptr %l209, !tbaa !24
  %t460 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t460, label %bb85, label %bb86
bb85:
  %t462 = call ptr @__olang_region_make(ptr %s12)
  %t463 = ptrtoint ptr %t462 to i64
  store i64 %t463, ptr %l209, !tbaa !24
  br label %bb86
bb86:
  %t464 = load ptr, ptr %l3, !tbaa !29
  %t466 = load i64, ptr %l29, !tbaa !24
  %t469 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t464, i64 %t466)
  store ptr %t469, ptr %l214
  br label %bb87
bb87:
  %t470 = load ptr, ptr %l214, !tbaa !29
  %t472 = getelementptr %"compiler/load:Module", ptr %t470, i32 0, i32 2
  %t473 = load { i64, ptr }, ptr %t472, !tbaa !27
  %t474 = load i64, ptr %l29, !tbaa !24
  %t476 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t477 = load ptr, ptr %t476, !tbaa !27
  %t478 = getelementptr { i64, ptr }, ptr %t477, i64 %t474
  %t479 = load { i64, ptr }, ptr %t478, !tbaa !37
  %t481 = extractvalue { i64, ptr } %t473, 1
  %t482 = extractvalue { i64, ptr } %t473, 0
  %t483 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t485 = add i64 %t482, %t484
  %t487 = extractvalue { i64, ptr } %t479, 1
  %t488 = extractvalue { i64, ptr } %t479, 0
  %t489 = add i64 %t485, %t488
  %t490 = load i64, ptr %l209
  %t491 = inttoptr i64 %t490 to ptr
  %t492 = call ptr @__olang_scope_alloc(ptr %t491, i64 %t489)
  call void @olang_textcopy(ptr %t492, ptr %t481, i64 %t482)
  %t493 = getelementptr i8, ptr %t492, i64 %t482
  call void @olang_textcopy(ptr %t493, ptr %t483, i64 %t484)
  %t494 = getelementptr i8, ptr %t493, i64 %t484
  call void @olang_textcopy(ptr %t494, ptr %t487, i64 %t488)
  %t495 = insertvalue { i64, ptr } undef, i64 %t489, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t492, 1
  %t498 = load i64, ptr %l209
  %t499 = inttoptr i64 %t498 to ptr
  %t500 = extractvalue { i64, ptr } %t496, 0
  %t501 = extractvalue { i64, ptr } %t496, 1
  %t502 = mul i64 %t500, 1
  %t503 = call ptr @__olang_scope_alloc(ptr %t499, i64 %t502)
  call void @llvm.memcpy.p0.p0.i64(ptr %t503, ptr %t501, i64 %t502, i1 false)
  %t504 = insertvalue { i64, ptr } undef, i64 %t500, 0
  %t505 = insertvalue { i64, ptr } %t504, ptr %t503, 1
  %t506 = load ptr, ptr %l208, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s12, ptr %s12, ptr %t506, { i64, ptr } %t505)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t508 = load i64, ptr %l28, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l28, !tbaa !24
  br label %bb79
bb90:
  call void @__olang_scope_close(ptr %s14)
  %t512 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t512, ptr %l223, !tbaa !27
  %t513 = load i64, ptr %l25, !tbaa !24
  store i64 %t513, ptr %l224, !tbaa !24
  %t514 = ptrtoint ptr %v2 to i64
  store i64 %t514, ptr %l225, !tbaa !24
  %t515 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t515, label %bb91, label %bb92
bb91:
  %t517 = call ptr @__olang_region_make(ptr %v2)
  %t518 = ptrtoint ptr %t517 to i64
  store i64 %t518, ptr %l225, !tbaa !24
  br label %bb92
bb92:
  %t519 = load i64, ptr %l225
  %t520 = inttoptr i64 %t519 to ptr
  %t522 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s12, ptr %t520, ptr %l26)
  store { i64, ptr } %t522, ptr %l228
  br label %bb93
bb93:
  %t523 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t524 = load i64, ptr %l225
  %t525 = inttoptr i64 %t524 to ptr
  %t526 = extractvalue { i64, ptr } %t523, 0
  %t527 = extractvalue { i64, ptr } %t523, 1
  %t528 = mul i64 %t526, 1
  %t529 = call ptr @__olang_scope_alloc(ptr %t525, i64 %t528)
  call void @llvm.memcpy.p0.p0.i64(ptr %t529, ptr %t527, i64 %t528, i1 false)
  %t530 = insertvalue { i64, ptr } undef, i64 %t526, 0
  %t531 = insertvalue { i64, ptr } %t530, ptr %t529, 1
  %t533 = load i64, ptr %l224, !tbaa !24
  %t534 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !27
  %t536 = getelementptr { i64, ptr }, ptr %t535, i64 %t533
  store { i64, ptr } %t531, ptr %t536, !tbaa !37
  call void @__olang_scope_close(ptr %s12)
  br label %bb94
bb94:
  %t537 = load i64, ptr %l24, !tbaa !24
  %t539 = add i64 %t537, 1
  store i64 %t539, ptr %l24, !tbaa !24
  br label %bb68
bb95:
  %t541 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t541, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2frecords_2ePutFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %l18 = alloca i32
  %l20 = alloca i1
  %l24 = alloca i32
  %l26 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t1, 1
  %t5 = extractvalue { i64, ptr } %t1, 0
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t10 = sext i32 %a2 to i64
  %t11 = call i64 @__olang_fmt_i64(ptr null, i64 %t10)
  %t12 = add i64 %t8, %t11
  %t13 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t4, i64 %t5)
  %t17 = getelementptr i8, ptr %t16, i64 %t5
  call void @olang_textcopy(ptr %t17, ptr %t6, i64 %t7)
  %t18 = getelementptr i8, ptr %t17, i64 %t7
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t10)
  %t20 = getelementptr i8, ptr %t18, i64 %t11
  call void @olang_textcopy(ptr %t20, ptr %t13, i64 %t14)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t16, 1
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v1, { i64, ptr } %t24, { i64, ptr } %a1)
  store i32 %t29, ptr %l10
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb2, label %ok.31, !prof !99
ok.31:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t32 = load i32, ptr %l10, !tbaa !23
  %t33 = ashr i32 %t32, 16
  %t35 = icmp eq i32 %t33, 1
  store i1 %t35, ptr %l12, !tbaa !21
  %t36 = load i32, ptr %l10, !tbaa !23
  %t37 = ashr i32 %t36, 16
  %t39 = icmp eq i32 %t37, 1
  br i1 %t39, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t46 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v0, { i64, ptr } %t42, { i64, ptr } %t43)
  store i32 %t46, ptr %l18
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb8, label %ok.48, !prof !99
ok.48:
  br label %bb7
bb7:
  br label %bb18
bb8:
  %t49 = load i32, ptr %l18, !tbaa !23
  %t50 = ashr i32 %t49, 16
  %t52 = icmp eq i32 %t50, 1
  store i1 %t52, ptr %l20, !tbaa !21
  %t53 = load i32, ptr %l18, !tbaa !23
  %t54 = ashr i32 %t53, 16
  %t56 = icmp eq i32 %t54, 1
  br i1 %t56, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t58)
  store i32 %t60, ptr %l24
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb13, label %ok.62, !prof !99
ok.62:
  br label %bb12
bb12:
  br label %bb17
bb13:
  %t63 = load i32, ptr %l24, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  store i1 %t66, ptr %l26, !tbaa !21
  %t67 = load i32, ptr %l24, !tbaa !23
  %t68 = ashr i32 %t67, 16
  %t70 = icmp eq i32 %t68, 1
  br i1 %t70, label %bb14, label %bb15
bb14:
  call void @__olang_errpay_pop()
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2frecords_2eReached(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/load:Import"
  %l17 = alloca i64
  %l18 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca ptr
  %l61 = alloca i64
  %l64 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l76 = alloca ptr
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca %"compiler/load:Import"
  %l89 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i64, ptr %l17, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l18, !tbaa !24
  %t6 = load i64, ptr %l18, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l18, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l21
  br label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_7fdbfc0a8c76ca86_bcbf652a9859a812)
  unreachable
bb4:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t16, ptr %lp4
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t18 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %t18
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l22
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %a1)
  br label %bb6
bb6:
  store i64 0, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  store i64 %t24, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = load i64, ptr %l8, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb12
bb9:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l32, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t52 = load i64, ptr %l32, !tbaa !24
  store i64 %t52, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t53 = load i64, ptr %l29, !tbaa !24
  store i64 %t53, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t54 = load i64, ptr %l10, !tbaa !24
  %t55 = load i64, ptr %l9, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb14, label %bb15
bb14:
  br label %bb23
bb15:
  br label %bb16
bb16:
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l11, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t72, i64 %t74)
  store ptr %t77, ptr %l53
  br label %bb17
bb17:
  %t78 = load ptr, ptr %l53, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 3
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t83 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t83)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l10, !tbaa !24
  br label %bb13
bb23:
  br label %bb24
bb24:
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t91, ptr %l61
  br label %bb25
bb25:
  %t92 = load i64, ptr %l61, !tbaa !24
  %t93 = icmp sgt i64 %t92, 0
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb26, label %bb27
bb26:
  br label %bb54
bb27:
  br label %bb28
bb28:
  %t98 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l5)
  %t99 = extractvalue { i32, i64 } %t98, 1
  %t100 = extractvalue { i32, i64 } %t98, 0
  store i32 %t100, ptr %l67
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb30, label %ok.102, !prof !99
ok.102:
  store i64 %t99, ptr %l66
  br label %bb29
bb29:
  %t103 = load i64, ptr %l66, !tbaa !24
  store i64 %t103, ptr %l64, !tbaa !24
  br label %bb32
bb30:
  br label %bb31
bb31:
  br label %bb54
bb32:
  %t104 = load i64, ptr %l64, !tbaa !24
  store i64 %t104, ptr %l12, !tbaa !24
  %t105 = load i64, ptr %l12, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i1, ptr %t108, i64 %t105
  %t110 = load i1, ptr %t109, !tbaa !31
  br i1 %t110, label %bb33, label %bb34
bb33:
  br label %bb53
bb34:
  br label %bb35
bb35:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i1, ptr %t115, i64 %t112
  store i1 true, ptr %t116, !tbaa !31
  %t117 = load ptr, ptr %lp4
  %t118 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t117, i64 %t118)
  br label %bb36
bb36:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l12, !tbaa !24
  %t126 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t121, i64 %t123)
  store ptr %t126, ptr %l76
  br label %bb37
bb37:
  %t127 = load ptr, ptr %l76, !tbaa !29
  %t129 = getelementptr %"compiler/load:Module", ptr %t127, i32 0, i32 11
  store ptr %t129, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb38
bb38:
  %t131 = load i64, ptr %l14, !tbaa !24
  store i64 %t131, ptr %l79, !tbaa !24
  %t132 = load ptr, ptr %l13, !tbaa !29
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t132)
  store i64 %t134, ptr %l81
  br label %bb39
bb39:
  %t135 = load i64, ptr %l79, !tbaa !24
  %t136 = load i64, ptr %l81, !tbaa !24
  %t137 = icmp slt i64 %t135, %t136
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb40, label %bb41
bb40:
  br label %bb52
bb41:
  br label %bb42
bb42:
  %t141 = load ptr, ptr %l13, !tbaa !29
  %t142 = load i64, ptr %l14, !tbaa !24
  %t145 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t141, i64 %t142)
  store %"compiler/load:Import" %t145, ptr %l86
  br label %bb43
bb43:
  %t146 = load %"compiler/load:Import", ptr %l86
  store %"compiler/load:Import" %t146, ptr %l15
  %t147 = getelementptr %"compiler/load:Import", ptr %l15, i32 0, i32 5
  %t148 = load i64, ptr %t147, !tbaa !24
  %t150 = icmp sge i64 %t148, 0
  br i1 %t150, label %bb44, label %bb45
bb44:
  %t152 = getelementptr %"compiler/load:Import", ptr %l15, i32 0, i32 5
  %t153 = load i64, ptr %t152, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i1, ptr %t156, i64 %t153
  %t158 = load i1, ptr %t157, !tbaa !31
  %t160 = xor i1 %t158, true
  store i1 %t160, ptr %l89, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb46
bb46:
  %t162 = load i1, ptr %l89, !tbaa !21
  br i1 %t162, label %bb47, label %bb48
bb47:
  %t163 = getelementptr %"compiler/load:Import", ptr %l15, i32 0, i32 5
  %t164 = load i64, ptr %t163, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t164)
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t167 = load i64, ptr %l14, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l14, !tbaa !24
  br label %bb38
bb52:
  br label %bb53
bb53:
  br label %bb24
bb54:
  %t171 = load ptr, ptr %lp4
  %t172 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_61, 0
  %t173 = insertvalue { ptr, ptr } %t172, ptr null, 1
  %t176 = extractvalue { ptr, ptr } %t173, 0
  %t177 = extractvalue { ptr, ptr } %t173, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v1, ptr %s0, ptr %t171, ptr %t176, ptr %t177)
  br label %bb55
bb55:
  %t178 = load ptr, ptr %lp4
  %t179 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t178
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2eReaderRecords(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
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
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l26 = alloca i64
  %l31 = alloca i64
  %l36 = alloca i64
  %l41 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l69 = alloca ptr
  %l73 = alloca i64
  %l74 = alloca i64
  %l78 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l87 = alloca i64
  %l88 = alloca i64
  %l92 = alloca ptr
  %l96 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l104 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i64
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca i64
  %l140 = alloca i64
  %l145 = alloca i64
  %l149 = alloca { i64, ptr }
  %l155 = alloca i1
  %l161 = alloca { i64, ptr }
  %l162 = alloca i64
  %l163 = alloca i64
  %l165 = alloca i64
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t17 = alloca i64
  %t40 = alloca i64
  %t63 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  store ptr %t3, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l26
  br label %bb1
bb1:
  %t8 = load i64, ptr %l26, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l26, !tbaa !24
  %t12 = icmp sle i64 %t11, 576460752303423487
  br i1 %t12, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_e43862288177251d_fb6c75927359cd1)
  unreachable
bb4:
  %t14 = load i64, ptr %l26, !tbaa !24
  %t15 = mul i64 %t14, 16
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, %t14
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr { i64, ptr }, ptr %t16, i64 %t21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  store { i64, ptr } %t26, ptr %l3, !tbaa !27
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l31
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e43862288177251d_fb6c75927359cd1)
  unreachable
bb6:
  %t31 = load i64, ptr %l31, !tbaa !24
  %t32 = icmp sge i64 %t31, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load i64, ptr %l31, !tbaa !24
  %t35 = icmp sle i64 %t34, 576460752303423487
  br i1 %t35, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_a76cbf7a9d10d270_529613b09bcc6ec4)
  unreachable
bb9:
  %t37 = load i64, ptr %l31, !tbaa !24
  %t38 = mul i64 %t37, 16
  %t39 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t38)
  store i64 0, ptr %t40
  br label %fill.41
fill.41:
  %t44 = load i64, ptr %t40
  %t45 = icmp slt i64 %t44, %t37
  br i1 %t45, label %fillb.42, label %filld.43
fillb.42:
  %t46 = getelementptr { i64, ptr }, ptr %t39, i64 %t44
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %t46
  %t47 = add i64 %t44, 1
  store i64 %t47, ptr %t40
  br label %fill.41
filld.43:
  %t48 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t39, 1
  store { i64, ptr } %t49, ptr %l4, !tbaa !27
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l36
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_a76cbf7a9d10d270_529613b09bcc6ec4)
  unreachable
bb11:
  %t54 = load i64, ptr %l36, !tbaa !24
  %t55 = icmp sge i64 %t54, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = icmp sle i64 %t57, 576460752303423487
  br i1 %t58, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d3dcf2152ecae513_fab39bd20b114ba7)
  unreachable
bb14:
  %t60 = load i64, ptr %l36, !tbaa !24
  %t61 = mul i64 %t60, 16
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  store i64 0, ptr %t63
  br label %fill.64
fill.64:
  %t67 = load i64, ptr %t63
  %t68 = icmp slt i64 %t67, %t60
  br i1 %t68, label %fillb.65, label %filld.66
fillb.65:
  %t69 = getelementptr { i64, ptr }, ptr %t62, i64 %t67
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %t69
  %t70 = add i64 %t67, 1
  store i64 %t70, ptr %t63
  br label %fill.64
filld.66:
  %t71 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t62, 1
  store { i64, ptr } %t72, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t74 = load ptr, ptr %l2, !tbaa !29
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t74)
  store i64 %t76, ptr %l41
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d3dcf2152ecae513_fab39bd20b114ba7)
  unreachable
bb16:
  %t77 = load i64, ptr %l41, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb22
bb19:
  %t88 = load i64, ptr %l7, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l8, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l48, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb21
bb21:
  %t104 = load i64, ptr %l48, !tbaa !24
  store i64 %t104, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t105 = load i64, ptr %l45, !tbaa !24
  store i64 %t105, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  %t106 = load i64, ptr %l10, !tbaa !24
  %t107 = load i64, ptr %l9, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb24, label %bb25
bb24:
  br label %bb40
bb25:
  br label %bb26
bb26:
  %t114 = load i64, ptr %l6, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  store i64 %t122, ptr %l11, !tbaa !24
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = load i64, ptr %l11, !tbaa !24
  %t129 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t124, i64 %t126)
  store ptr %t129, ptr %l69
  br label %bb27
bb27:
  %t130 = load ptr, ptr %l69, !tbaa !29
  %t132 = getelementptr %"compiler/load:Module", ptr %t130, i32 0, i32 4
  %t133 = load i64, ptr %t132, !tbaa !24
  %t135 = icmp slt i64 %t133, 0
  br i1 %t135, label %bb28, label %bb29
bb28:
  br label %bb39
bb29:
  br label %bb30
bb30:
  %t137 = load i64, ptr %l11, !tbaa !24
  store i64 %t137, ptr %l73, !tbaa !24
  %t138 = ptrtoint ptr %s0 to i64
  store i64 %t138, ptr %l74, !tbaa !24
  %t139 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t139, label %bb31, label %bb32
bb31:
  %t141 = call ptr @__olang_region_make(ptr %s0)
  %t142 = ptrtoint ptr %t141 to i64
  store i64 %t142, ptr %l74, !tbaa !24
  br label %bb32
bb32:
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 3
  store ptr %t148, ptr %l78, !tbaa !29
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t149, i64 %t151)
  store ptr %t154, ptr %l82
  br label %bb33
bb33:
  %t155 = load ptr, ptr %l82, !tbaa !29
  %t157 = getelementptr %"compiler/load:Module", ptr %t155, i32 0, i32 4
  %t158 = load i64, ptr %t157, !tbaa !24
  %t159 = load i64, ptr %l74
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = load ptr, ptr %l78, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRecord(ptr %v1, ptr %t160, ptr %t161, i64 %t158, i1 true)
  store { i64, ptr } %t163, ptr %l85
  br label %bb34
bb34:
  %t164 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t165 = load i64, ptr %l74
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = extractvalue { i64, ptr } %t164, 0
  %t168 = extractvalue { i64, ptr } %t164, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %t166, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  %t174 = load i64, ptr %l73, !tbaa !24
  %t175 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %t176, i64 %t174
  store { i64, ptr } %t172, ptr %t177, !tbaa !37
  %t178 = load i64, ptr %l11, !tbaa !24
  store i64 %t178, ptr %l87, !tbaa !24
  %t179 = ptrtoint ptr %s0 to i64
  store i64 %t179, ptr %l88, !tbaa !24
  %t180 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t180, label %bb35, label %bb36
bb35:
  %t182 = call ptr @__olang_region_make(ptr %s0)
  %t183 = ptrtoint ptr %t182 to i64
  store i64 %t183, ptr %l88, !tbaa !24
  br label %bb36
bb36:
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 3
  store ptr %t189, ptr %l92, !tbaa !29
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = load i64, ptr %l11, !tbaa !24
  %t195 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t190, i64 %t192)
  store ptr %t195, ptr %l96
  br label %bb37
bb37:
  %t196 = load ptr, ptr %l96, !tbaa !29
  %t198 = getelementptr %"compiler/load:Module", ptr %t196, i32 0, i32 4
  %t199 = load i64, ptr %t198, !tbaa !24
  %t200 = load i64, ptr %l88
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = load ptr, ptr %l92, !tbaa !29
  %t204 = call { i64, ptr } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRecord(ptr %v1, ptr %t201, ptr %t202, i64 %t199, i1 false)
  store { i64, ptr } %t204, ptr %l99
  br label %bb38
bb38:
  %t205 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t206 = load i64, ptr %l88
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = extractvalue { i64, ptr } %t205, 0
  %t209 = extractvalue { i64, ptr } %t205, 1
  %t210 = mul i64 %t208, 1
  %t211 = call ptr @__olang_scope_alloc(ptr %t207, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  %t215 = load i64, ptr %l87, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %t217, i64 %t215
  store { i64, ptr } %t213, ptr %t218, !tbaa !37
  br label %bb39
bb39:
  %t219 = load i64, ptr %l10, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l10, !tbaa !24
  br label %bb23
bb40:
  store i64 0, ptr %l12, !tbaa !24
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t223)
  store i64 %t225, ptr %l104
  br label %bb41
bb41:
  %t226 = load i64, ptr %l104, !tbaa !24
  store i64 %t226, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t227 = load i64, ptr %l13, !tbaa !24
  %t228 = load i64, ptr %l12, !tbaa !24
  %t231 = icmp sgt i64 %t227, %t228
  br i1 %t231, label %bb42, label %bb43
bb42:
  %t233 = load i64, ptr %l14, !tbaa !24
  %t235 = icmp sgt i64 %t233, 0
  br i1 %t235, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb47
bb44:
  %t237 = load i64, ptr %l13, !tbaa !24
  %t238 = load i64, ptr %l12, !tbaa !24
  %t241 = sub i64 %t237, %t238
  %t242 = load i64, ptr %l14, !tbaa !24
  %t245 = add i64 %t241, %t242
  %t247 = sub i64 %t245, 1
  %t248 = load i64, ptr %l14, !tbaa !24
  %t251 = sdiv i64 %t247, %t248
  store i64 %t251, ptr %l111, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l111, !tbaa !24
  br label %bb46
bb46:
  %t253 = load i64, ptr %l111, !tbaa !24
  store i64 %t253, ptr %l108, !tbaa !24
  br label %bb47
bb47:
  %t254 = load i64, ptr %l108, !tbaa !24
  store i64 %t254, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb48
bb48:
  store %olang.scope zeroinitializer, ptr %s6
  %t255 = load i64, ptr %l16, !tbaa !24
  %t256 = load i64, ptr %l15, !tbaa !24
  %t259 = icmp slt i64 %t255, %t256
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s6)
  br label %bb80
bb50:
  br label %bb51
bb51:
  %t263 = load i64, ptr %l12, !tbaa !24
  %t264 = load i64, ptr %l16, !tbaa !24
  %t265 = load i64, ptr %l14, !tbaa !24
  %t268 = mul i64 %t264, %t265
  %t271 = add i64 %t263, %t268
  store i64 %t271, ptr %l17, !tbaa !24
  %t273 = load i64, ptr %l17, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/load:Loader", ptr %t274, i32 0, i32 12
  %t277 = load i64, ptr %t276, !tbaa !24
  %t280 = icmp eq i64 %t273, %t277
  br i1 %t280, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s6)
  br label %bb79
bb53:
  br label %bb54
bb54:
  %t282 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %l133
  br label %bb55
bb55:
  %t283 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t283, ptr %l18
  store %olang.scope zeroinitializer, ptr %s8
  %t284 = load ptr, ptr %l2, !tbaa !29
  %t285 = load i64, ptr %l17, !tbaa !24
  %t288 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2frecords_2eReached(ptr %v0, ptr %s8, ptr %t284, i64 %t285)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %l136
  br label %bb56
bb56:
  %t289 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  %t290 = call ptr @__olang_scope_alloc_a(ptr %s8, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %t290
  store ptr %t290, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s9
  %t292 = load i64, ptr %l20, !tbaa !24
  store i64 %t292, ptr %l138, !tbaa !24
  %t293 = load ptr, ptr %l19, !tbaa !29
  %t295 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s8, ptr %t293)
  store i64 %t295, ptr %l140
  br label %bb58
bb58:
  %t296 = load i64, ptr %l138, !tbaa !24
  %t297 = load i64, ptr %l140, !tbaa !24
  %t298 = icmp slt i64 %t296, %t297
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s9)
  br label %bb72
bb60:
  br label %bb61
bb61:
  %t302 = load ptr, ptr %l19, !tbaa !29
  %t303 = load i64, ptr %l20, !tbaa !24
  %t306 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s8, ptr %t302, i64 %t303)
  store i64 %t306, ptr %l145
  br label %bb62
bb62:
  %t307 = load i64, ptr %l145, !tbaa !24
  store i64 %t307, ptr %l21, !tbaa !24
  %t308 = load i64, ptr %l21, !tbaa !24
  %t309 = load i64, ptr %l17, !tbaa !24
  %t312 = icmp eq i64 %t308, %t309
  br i1 %t312, label %bb63, label %bb64
bb63:
  %t314 = load i64, ptr %l21, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, ptr }, ptr %t317, i64 %t314
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !37
  store { i64, ptr } %t319, ptr %l149, !tbaa !27
  br label %bb65
bb64:
  %t321 = load i64, ptr %l21, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr { i64, ptr }, ptr %t324, i64 %t321
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !37
  store { i64, ptr } %t326, ptr %l149, !tbaa !27
  br label %bb65
bb65:
  %t328 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t328, ptr %l22, !tbaa !27
  %t329 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t331 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s9, { i64, ptr } %t329, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t331, ptr %l155
  br label %bb66
bb66:
  %t332 = load i1, ptr %l155, !tbaa !21
  %t333 = xor i1 %t332, true
  br i1 %t333, label %bb67, label %bb68
bb67:
  %t335 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s6, ptr %s0, ptr %l18, { i64, ptr } %t335)
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s9)
  br label %bb71
bb71:
  %t338 = load i64, ptr %l20, !tbaa !24
  %t340 = add i64 %t338, 1
  store i64 %t340, ptr %l20, !tbaa !24
  br label %bb57
bb72:
  call void @__olang_scope_close(ptr %s8)
  %t342 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t342, ptr %l161, !tbaa !27
  %t343 = load i64, ptr %l17, !tbaa !24
  store i64 %t343, ptr %l162, !tbaa !24
  %t344 = ptrtoint ptr %v2 to i64
  store i64 %t344, ptr %l163, !tbaa !24
  %t345 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t345, label %bb73, label %bb74
bb73:
  %t347 = call ptr @__olang_region_make(ptr %v2)
  %t348 = ptrtoint ptr %t347 to i64
  store i64 %t348, ptr %l163, !tbaa !24
  br label %bb74
bb74:
  %t349 = ptrtoint ptr %s6 to i64
  store i64 %t349, ptr %l165, !tbaa !24
  %t350 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t350, label %bb75, label %bb76
bb75:
  %t352 = call ptr @__olang_region_make(ptr %s6)
  %t353 = ptrtoint ptr %t352 to i64
  store i64 %t353, ptr %l165, !tbaa !24
  br label %bb76
bb76:
  %t354 = load i64, ptr %l165
  %t355 = inttoptr i64 %t354 to ptr
  %t357 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s6, ptr %s6, ptr %t355, ptr %l18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store { i64, ptr } %t357, ptr %l168
  br label %bb77
bb77:
  %t358 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t359 = load i64, ptr %l165
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = extractvalue { i64, ptr } %t358, 0
  %t362 = extractvalue { i64, ptr } %t358, 1
  %t363 = mul i64 %t361, 1
  %t364 = call ptr @__olang_scope_alloc(ptr %t360, i64 %t363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t364, ptr %t362, i64 %t363, i1 false)
  %t365 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  %t367 = load i64, ptr %l163
  %t368 = inttoptr i64 %t367 to ptr
  %t370 = call { i64, ptr } @compiler_2frecords_2eSortedLines(ptr %s6, ptr %t368, { i64, ptr } %t366)
  store { i64, ptr } %t370, ptr %l170
  br label %bb78
bb78:
  %t371 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t372 = load i64, ptr %l163
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = extractvalue { i64, ptr } %t371, 0
  %t375 = extractvalue { i64, ptr } %t371, 1
  %t376 = mul i64 %t374, 1
  %t377 = call ptr @__olang_scope_alloc(ptr %t373, i64 %t376)
  call void @llvm.memcpy.p0.p0.i64(ptr %t377, ptr %t375, i64 %t376, i1 false)
  %t378 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t377, 1
  %t381 = load i64, ptr %l162, !tbaa !24
  %t382 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr { i64, ptr }, ptr %t383, i64 %t381
  store { i64, ptr } %t379, ptr %t384, !tbaa !37
  call void @__olang_scope_close(ptr %s6)
  br label %bb79
bb79:
  %t385 = load i64, ptr %l16, !tbaa !24
  %t387 = add i64 %t385, 1
  store i64 %t387, ptr %l16, !tbaa !24
  br label %bb48
bb80:
  %t389 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t389, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2frecords_2eScopeRecords(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %lp25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l38 = alloca i1
  %l45 = alloca i64
  %l48 = alloca i64
  %l66 = alloca { i64, ptr }
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca ptr
  %l79 = alloca ptr
  %l83 = alloca ptr
  %l87 = alloca ptr
  %l91 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca i32
  %l107 = alloca i1
  %l117 = alloca i64
  %l120 = alloca i64
  %l138 = alloca { i64, ptr }
  %l141 = alloca i1
  %l142 = alloca i1
  %l146 = alloca ptr
  %l150 = alloca ptr
  %l154 = alloca ptr
  %l157 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l164 = alloca i64
  %l166 = alloca i64
  %l167 = alloca i64
  %l179 = alloca { i64, ptr }
  %l184 = alloca i1
  %l186 = alloca i1
  %l187 = alloca { i64, ptr }
  %l189 = alloca i64
  %l192 = alloca i64
  %l193 = alloca i64
  %l199 = alloca { i64, ptr }
  %l200 = alloca i1
  %l201 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l209 = alloca i32
  %l211 = alloca i1
  %l212 = alloca i64
  %l214 = alloca i64
  %l215 = alloca i32
  %l219 = alloca ptr
  %l223 = alloca ptr
  %l225 = alloca i64
  %l227 = alloca i64
  %l229 = alloca i64
  %l230 = alloca i64
  %l235 = alloca i32
  %l237 = alloca i1
  %l239 = alloca ptr
  %l243 = alloca ptr
  %l246 = alloca ptr
  %l250 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l27
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l27
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l4
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 281
  store i1 true, ptr %t13, !tbaa !21
  %t14 = load ptr, ptr %l3, !tbaa !29
  store ptr %t14, ptr %l32, !tbaa !29
  %t15 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d67, i32 0, i32 1) })
  %t16 = extractvalue { i32, { i64, ptr } } %t15, 1
  %t17 = extractvalue { i32, { i64, ptr } } %t15, 0
  store i32 %t17, ptr %l35
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store { i64, ptr } %t16, ptr %l34
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t20, ptr %l33, !tbaa !27
  br label %bb7
bb3:
  %t21 = load i32, ptr %l35, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  br i1 %t24, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t27, ptr %l38
  br label %bb8
bb8:
  %t28 = load i1, ptr %l38, !tbaa !21
  %t29 = xor i1 %t28, true
  %t31 = load ptr, ptr %l32, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 282
  store i1 %t29, ptr %t32, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb14
bb11:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l48, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb13
bb13:
  %t63 = load i64, ptr %l48, !tbaa !24
  store i64 %t63, ptr %l45, !tbaa !24
  br label %bb14
bb14:
  %t64 = load i64, ptr %l45, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb17:
  br label %bb18
bb18:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l11, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t83, ptr %l66, !tbaa !27
  %t84 = load i64, ptr %l11, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %t87, i64 %t84
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !37
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s2, { i64, ptr } %t89, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i1 %t91, ptr %l69
  br label %bb19
bb19:
  %t92 = load i1, ptr %l69, !tbaa !21
  br i1 %t92, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb23
bb21:
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/load:Loader", ptr %t93, i32 0, i32 10
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t95, i64 %t96)
  store ptr %t99, ptr %l74
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l74, !tbaa !29
  %t102 = getelementptr %"compiler/load:Module", ptr %t100, i32 0, i32 4
  %t103 = load i64, ptr %t102, !tbaa !24
  %t105 = icmp slt i64 %t103, 0
  store i1 %t105, ptr %l70, !tbaa !21
  br label %bb23
bb23:
  %t107 = load i1, ptr %l70, !tbaa !21
  br i1 %t107, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb25:
  br label %bb26
bb26:
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t110 = getelementptr %"compiler/scope:Scoper", ptr %t108, i32 0, i32 297
  store ptr %t110, ptr %l79, !tbaa !29
  %t111 = load ptr, ptr %l5, !tbaa !29
  %t113 = getelementptr %"compiler/load:Loader", ptr %t111, i32 0, i32 10
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t113, i64 %t114)
  store ptr %t117, ptr %l83
  br label %bb27
bb27:
  %t118 = load ptr, ptr %l83, !tbaa !29
  %t120 = getelementptr %"compiler/load:Module", ptr %t118, i32 0, i32 4
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v3, ptr %t122, i64 %t121, i1 true)
  br label %bb28
bb28:
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 298
  store ptr %t126, ptr %l87, !tbaa !29
  %t127 = load ptr, ptr %l5, !tbaa !29
  %t129 = getelementptr %"compiler/load:Loader", ptr %t127, i32 0, i32 10
  %t130 = load i64, ptr %l11, !tbaa !24
  %t133 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t129, i64 %t130)
  store ptr %t133, ptr %l91
  br label %bb29
bb29:
  %t134 = load ptr, ptr %l91, !tbaa !29
  %t136 = getelementptr %"compiler/load:Module", ptr %t134, i32 0, i32 4
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t138, ptr %l94, !tbaa !27
  %t139 = load i64, ptr %l11, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr { i64, ptr }, ptr %t142, i64 %t139
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !37
  %t145 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v3, ptr %v2, ptr %t145, i64 %t137, { i64, ptr } %t144)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb31:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l10, !tbaa !24
  br label %bb15
bb32:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/build:Config", ptr %t152, i32 0, i32 0
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = extractvalue { i64, ptr } %t155, 0
  %t159 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t157, i64 %t158)
  %t163 = getelementptr i8, ptr %t162, i64 %t158
  call void @olang_textcopy(ptr %t163, ptr %t159, i64 %t160)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t168 = extractvalue { i64, ptr } %t165, 1
  %t169 = mul i64 %t167, 1
  %t170 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t169)
  call void @llvm.memcpy.p0.p0.i64(ptr %t170, ptr %t168, i64 %t169, i1 false)
  %t171 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  %t174 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %s0, ptr %s0, { i64, ptr } %t172)
  %t175 = extractvalue { i32, { i64, ptr } } %t174, 1
  %t176 = extractvalue { i32, { i64, ptr } } %t174, 0
  store i32 %t176, ptr %l105
  %t177 = icmp ne i32 %t176, 0
  br i1 %t177, label %bb34, label %ok.178, !prof !99
ok.178:
  store { i64, ptr } %t175, ptr %l104
  br label %bb33
bb33:
  %t179 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t179, ptr %l99, !tbaa !27
  br label %bb38
bb34:
  %t180 = load i32, ptr %l105, !tbaa !23
  %t181 = ashr i32 %t180, 16
  %t183 = icmp eq i32 %t181, 1
  store i1 %t183, ptr %l107, !tbaa !21
  %t184 = load i32, ptr %l105, !tbaa !23
  %t185 = ashr i32 %t184, 16
  %t187 = icmp eq i32 %t185, 1
  br i1 %t187, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t189 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t189, ptr %rv
  br label %ret
bb38:
  %t191 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t191, ptr %l12, !tbaa !27
  %t192 = load ptr, ptr %l3, !tbaa !29
  %t194 = getelementptr %"compiler/scope:Scoper", ptr %t192, i32 0, i32 280
  store i1 true, ptr %t194, !tbaa !21
  store i64 0, ptr %l13, !tbaa !24
  %t195 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t195, 0
  store i64 %t197, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t199 = load i64, ptr %l14, !tbaa !24
  %t200 = load i64, ptr %l13, !tbaa !24
  %t203 = icmp sgt i64 %t199, %t200
  br i1 %t203, label %bb39, label %bb40
bb39:
  %t205 = load i64, ptr %l15, !tbaa !24
  %t207 = icmp sgt i64 %t205, 0
  br i1 %t207, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb44
bb41:
  %t209 = load i64, ptr %l14, !tbaa !24
  %t210 = load i64, ptr %l13, !tbaa !24
  %t213 = sub i64 %t209, %t210
  %t214 = load i64, ptr %l15, !tbaa !24
  %t217 = add i64 %t213, %t214
  %t219 = sub i64 %t217, 1
  %t220 = load i64, ptr %l15, !tbaa !24
  %t223 = sdiv i64 %t219, %t220
  store i64 %t223, ptr %l120, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb43
bb43:
  %t225 = load i64, ptr %l120, !tbaa !24
  store i64 %t225, ptr %l117, !tbaa !24
  br label %bb44
bb44:
  %t226 = load i64, ptr %l117, !tbaa !24
  store i64 %t226, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb45
bb45:
  store %olang.scope zeroinitializer, ptr %s8
  %t227 = load i64, ptr %l17, !tbaa !24
  %t228 = load i64, ptr %l16, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s8)
  br label %bb109
bb47:
  br label %bb48
bb48:
  %t235 = load i64, ptr %l13, !tbaa !24
  %t236 = load i64, ptr %l17, !tbaa !24
  %t237 = load i64, ptr %l15, !tbaa !24
  %t240 = mul i64 %t236, %t237
  %t243 = add i64 %t235, %t240
  store i64 %t243, ptr %l18, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t245, ptr %l138, !tbaa !27
  %t246 = load i64, ptr %l18, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr { i64, ptr }, ptr %t249, i64 %t246
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !37
  %t253 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s8, { i64, ptr } %t251, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t253, ptr %l141
  br label %bb49
bb49:
  %t254 = load i1, ptr %l141, !tbaa !21
  br i1 %t254, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb53
bb51:
  %t255 = load ptr, ptr %l5, !tbaa !29
  %t257 = getelementptr %"compiler/load:Loader", ptr %t255, i32 0, i32 10
  %t258 = load i64, ptr %l18, !tbaa !24
  %t261 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t257, i64 %t258)
  store ptr %t261, ptr %l146
  br label %bb52
bb52:
  %t262 = load ptr, ptr %l146, !tbaa !29
  %t264 = getelementptr %"compiler/load:Module", ptr %t262, i32 0, i32 4
  %t265 = load i64, ptr %t264, !tbaa !24
  %t267 = icmp slt i64 %t265, 0
  store i1 %t267, ptr %l142, !tbaa !21
  br label %bb53
bb53:
  %t269 = load i1, ptr %l142, !tbaa !21
  br i1 %t269, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s8)
  br label %bb108
bb55:
  br label %bb56
bb56:
  %t270 = load ptr, ptr %l1, !tbaa !29
  store ptr %t270, ptr %l150, !tbaa !29
  %t271 = load ptr, ptr %l5, !tbaa !29
  %t273 = getelementptr %"compiler/load:Loader", ptr %t271, i32 0, i32 10
  %t274 = load i64, ptr %l18, !tbaa !24
  %t277 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t273, i64 %t274)
  store ptr %t277, ptr %l154
  br label %bb57
bb57:
  %t278 = load ptr, ptr %l154, !tbaa !29
  %t280 = getelementptr %"compiler/load:Module", ptr %t278, i32 0, i32 2
  %t281 = load { i64, ptr }, ptr %t280, !tbaa !27
  %t282 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t282, ptr %l157, !tbaa !27
  %t283 = load i64, ptr %l18, !tbaa !24
  %t285 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr { i64, ptr }, ptr %t286, i64 %t283
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !37
  %t289 = load ptr, ptr %l150, !tbaa !29
  %t292 = call { i64, ptr } @compiler_2frecords_2escopeStem(ptr %v1, ptr %v0, ptr %v2, ptr %s8, ptr %t289, { i64, ptr } %t281, { i64, ptr } %t288)
  store { i64, ptr } %t292, ptr %l160
  br label %bb58
bb58:
  %t293 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t293, ptr %l19, !tbaa !27
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr %"compiler/build:Config", ptr %t294, i32 0, i32 0
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t301 = add i64 %t299, 5
  store i64 %t301, ptr %l164, !tbaa !24
  %t302 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t302, 0
  store i64 %t304, ptr %l166, !tbaa !24
  %t305 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 0
  store i64 %t306, ptr %l167, !tbaa !24
  %t307 = load i64, ptr %l164, !tbaa !24
  %t308 = icmp sge i64 %t307, 0
  br i1 %t308, label %bb59, label %bb60
bb59:
  %t310 = load i64, ptr %l164, !tbaa !24
  %t311 = load i64, ptr %l166, !tbaa !24
  %t312 = icmp sle i64 %t310, %t311
  br i1 %t312, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_4e9604c680c7b950_9ac30b55dba7b9c)
  unreachable
bb61:
  %t314 = load i64, ptr %l166, !tbaa !24
  %t315 = load i64, ptr %l167, !tbaa !24
  %t316 = icmp sle i64 %t314, %t315
  br i1 %t316, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_4e9604c680c7b950_9ac30b55dba7b9c)
  unreachable
bb63:
  %t318 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = load i64, ptr %l164, !tbaa !24
  %t321 = load i64, ptr %l166, !tbaa !24
  %t322 = getelementptr i8, ptr %t319, i64 %t320
  %t323 = sub i64 %t321, %t320
  %t324 = insertvalue { i64, ptr } undef, i64 %t323, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t322, 1
  store { i64, ptr } %t325, ptr %l20, !tbaa !27
  %t327 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t327, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t329 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t329, 0
  store i64 %t331, ptr %l23, !tbaa !24
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_4e9604c680c7b950_9ac30b55dba7b9c)
  unreachable
bb65:
  store %olang.scope zeroinitializer, ptr %s11
  %t333 = load i64, ptr %l22, !tbaa !24
  %t334 = load i64, ptr %l23, !tbaa !24
  %t337 = icmp slt i64 %t333, %t334
  %t339 = xor i1 %t337, true
  br i1 %t339, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s11)
  br label %bb107
bb67:
  br label %bb68
bb68:
  %t341 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t341, ptr %l179, !tbaa !27
  %t342 = load i64, ptr %l22, !tbaa !24
  %t344 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr { i64, ptr }, ptr %t345, i64 %t342
  %t347 = load { i64, ptr }, ptr %t346, !tbaa !37
  store { i64, ptr } %t347, ptr %l24, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t350 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t353 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s8, { i64, ptr } %t349, { i64, ptr } %t350)
  store i1 %t353, ptr %l184
  br label %bb69
bb69:
  %t354 = load i1, ptr %l184, !tbaa !21
  %t355 = xor i1 %t354, true
  br i1 %t355, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb79
bb71:
  %t357 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t357, ptr %l187, !tbaa !27
  %t358 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t358, 0
  store i64 %t360, ptr %l189, !tbaa !24
  %t361 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t361, 0
  store i64 %t364, ptr %l192, !tbaa !24
  %t365 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 0
  store i64 %t366, ptr %l193, !tbaa !24
  %t367 = load i64, ptr %l189, !tbaa !24
  %t368 = icmp sge i64 %t367, 0
  br i1 %t368, label %bb72, label %bb73
bb72:
  %t370 = load i64, ptr %l189, !tbaa !24
  %t371 = load i64, ptr %l192, !tbaa !24
  %t372 = icmp sle i64 %t370, %t371
  br i1 %t372, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_5b539dac05fcd02d_94c517b58e4a7909)
  unreachable
bb74:
  %t374 = load i64, ptr %l192, !tbaa !24
  %t375 = load i64, ptr %l193, !tbaa !24
  %t376 = icmp sle i64 %t374, %t375
  br i1 %t376, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_5b539dac05fcd02d_94c517b58e4a7909)
  unreachable
bb76:
  %t378 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = load i64, ptr %l189, !tbaa !24
  %t381 = load i64, ptr %l192, !tbaa !24
  %t382 = getelementptr i8, ptr %t379, i64 %t380
  %t383 = sub i64 %t381, %t380
  %t384 = insertvalue { i64, ptr } undef, i64 %t383, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t382, 1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l199, !tbaa !27
  %t388 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t389 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s0, ptr %s11, { i64, ptr } %t385, { i64, ptr } %t388)
  store i1 %t389, ptr %l200
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_5b539dac05fcd02d_94c517b58e4a7909)
  unreachable
bb78:
  %t390 = load i1, ptr %l200, !tbaa !21
  store i1 %t390, ptr %l186, !tbaa !21
  br label %bb79
bb79:
  %t391 = load i1, ptr %l186, !tbaa !21
  br i1 %t391, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s11)
  br label %bb106
bb81:
  br label %bb82
bb82:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load ptr, ptr %l1, !tbaa !29
  %t395 = getelementptr %"compiler/build:Config", ptr %t393, i32 0, i32 0
  %t396 = load { i64, ptr }, ptr %t395, !tbaa !27
  %t397 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t399 = extractvalue { i64, ptr } %t396, 1
  %t400 = extractvalue { i64, ptr } %t396, 0
  %t401 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t403 = add i64 %t400, %t402
  %t405 = extractvalue { i64, ptr } %t397, 1
  %t406 = extractvalue { i64, ptr } %t397, 0
  %t407 = add i64 %t403, %t406
  %t408 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t407)
  call void @olang_textcopy(ptr %t408, ptr %t399, i64 %t400)
  %t409 = getelementptr i8, ptr %t408, i64 %t400
  call void @olang_textcopy(ptr %t409, ptr %t401, i64 %t402)
  %t410 = getelementptr i8, ptr %t409, i64 %t402
  call void @olang_textcopy(ptr %t410, ptr %t405, i64 %t406)
  %t411 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t408, 1
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t415 = extractvalue { i64, ptr } %t412, 1
  %t416 = mul i64 %t414, 1
  %t417 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t416)
  call void @llvm.memcpy.p0.p0.i64(ptr %t417, ptr %t415, i64 %t416, i1 false)
  %t418 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t417, 1
  %t422 = call { i32, { i64, ptr } } @compiler_2frecords_2escopeRecord(ptr %v0, ptr %s11, ptr %v4, ptr %t392, { i64, ptr } %t419)
  %t423 = extractvalue { i32, { i64, ptr } } %t422, 1
  %t424 = extractvalue { i32, { i64, ptr } } %t422, 0
  store i32 %t424, ptr %l209
  %t425 = icmp ne i32 %t424, 0
  br i1 %t425, label %bb84, label %ok.426, !prof !99
ok.426:
  store { i64, ptr } %t423, ptr %l208
  br label %bb83
bb83:
  %t427 = load { i64, ptr }, ptr %l208, !tbaa !27
  store { i64, ptr } %t427, ptr %l201, !tbaa !27
  br label %bb86
bb84:
  %t428 = load i32, ptr %l209, !tbaa !23
  %t429 = ashr i32 %t428, 16
  %t431 = icmp eq i32 %t429, 1
  store i1 %t431, ptr %l211, !tbaa !21
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s11)
  br label %bb106
bb86:
  %t432 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t432, ptr %lp25
  %t433 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t434 = load ptr, ptr %lp25
  store { i64, ptr } %t433, ptr %t434, !tbaa !27
  %t435 = load ptr, ptr %lp25
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  %t438 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v4, ptr %s11, { i64, ptr } %t436, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d75, i32 0, i32 1) })
  %t439 = extractvalue { i32, i64 } %t438, 1
  %t440 = extractvalue { i32, i64 } %t438, 0
  store i32 %t440, ptr %l215
  %t441 = icmp ne i32 %t440, 0
  br i1 %t441, label %bb88, label %ok.442, !prof !99
ok.442:
  store i64 %t439, ptr %l214
  br label %bb87
bb87:
  %t443 = load i64, ptr %l214, !tbaa !24
  store i64 %t443, ptr %l212, !tbaa !24
  br label %bb90
bb88:
  br label %bb89
bb89:
  %t444 = load ptr, ptr %lp25
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 0
  store i64 %t447, ptr %l212, !tbaa !24
  br label %bb90
bb90:
  %t449 = load i64, ptr %l212, !tbaa !24
  %t450 = sub i64 %t449, 1
  store i64 %t450, ptr %l26, !tbaa !24
  %t452 = load ptr, ptr %l3, !tbaa !29
  store ptr %t452, ptr %l219, !tbaa !29
  %t453 = load ptr, ptr %l5, !tbaa !29
  %t455 = getelementptr %"compiler/load:Loader", ptr %t453, i32 0, i32 10
  %t456 = load i64, ptr %l18, !tbaa !24
  %t459 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t455, i64 %t456)
  store ptr %t459, ptr %l223
  br label %bb91
bb91:
  %t460 = load ptr, ptr %l223, !tbaa !29
  %t462 = getelementptr %"compiler/load:Module", ptr %t460, i32 0, i32 4
  %t463 = load i64, ptr %t462, !tbaa !24
  store i64 %t463, ptr %l225, !tbaa !24
  %t464 = load i64, ptr %l26, !tbaa !24
  %t466 = add i64 %t464, 1
  store i64 %t466, ptr %l227, !tbaa !24
  %t467 = load ptr, ptr %lp25
  %t468 = load { i64, ptr }, ptr %t467, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t468, 0
  store i64 %t470, ptr %l229, !tbaa !24
  %t471 = load ptr, ptr %lp25
  %t472 = load { i64, ptr }, ptr %t471, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 0
  store i64 %t473, ptr %l230, !tbaa !24
  %t474 = load i64, ptr %l227, !tbaa !24
  %t475 = icmp sge i64 %t474, 0
  br i1 %t475, label %bb92, label %bb93
bb92:
  %t477 = load i64, ptr %l227, !tbaa !24
  %t478 = load i64, ptr %l229, !tbaa !24
  %t479 = icmp sle i64 %t477, %t478
  br i1 %t479, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_c66c474bbb96a3ce_87152442c6a85c6a)
  unreachable
bb94:
  %t481 = load i64, ptr %l229, !tbaa !24
  %t482 = load i64, ptr %l230, !tbaa !24
  %t483 = icmp sle i64 %t481, %t482
  br i1 %t483, label %bb96, label %bb97
bb95:
  call void @__olang_check_failed(ptr @olang_loc_c66c474bbb96a3ce_87152442c6a85c6a)
  unreachable
bb96:
  %t485 = load ptr, ptr %lp25
  %t486 = getelementptr { i64, ptr }, ptr %t485, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !27
  %t488 = load i64, ptr %l227, !tbaa !24
  %t489 = load i64, ptr %l229, !tbaa !24
  %t490 = getelementptr i8, ptr %t487, i64 %t488
  %t491 = sub i64 %t489, %t488
  %t492 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t493 = insertvalue { i64, ptr } %t492, ptr %t490, 1
  %t494 = load ptr, ptr %l219, !tbaa !29
  %t495 = load i64, ptr %l225, !tbaa !24
  %t497 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eAddRecord(ptr %v3, ptr %v4, ptr %t494, i64 %t495, { i64, ptr } %t493)
  store i32 %t497, ptr %l235
  %t498 = icmp ne i32 %t497, 0
  br i1 %t498, label %bb99, label %ok.499, !prof !99
ok.499:
  br label %bb98
bb97:
  call void @__olang_check_failed(ptr @olang_loc_c66c474bbb96a3ce_87152442c6a85c6a)
  unreachable
bb98:
  br label %bb101
bb99:
  %t500 = load i32, ptr %l235, !tbaa !23
  %t501 = ashr i32 %t500, 16
  %t503 = icmp eq i32 %t501, 1
  store i1 %t503, ptr %l237, !tbaa !21
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s11)
  br label %bb106
bb101:
  %t504 = load ptr, ptr %l3, !tbaa !29
  %t506 = getelementptr %"compiler/scope:Scoper", ptr %t504, i32 0, i32 296
  store ptr %t506, ptr %l239, !tbaa !29
  %t507 = load ptr, ptr %l5, !tbaa !29
  %t509 = getelementptr %"compiler/load:Loader", ptr %t507, i32 0, i32 10
  %t510 = load i64, ptr %l18, !tbaa !24
  %t513 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t509, i64 %t510)
  store ptr %t513, ptr %l243
  br label %bb102
bb102:
  %t514 = load ptr, ptr %l243, !tbaa !29
  %t516 = getelementptr %"compiler/load:Module", ptr %t514, i32 0, i32 4
  %t517 = load i64, ptr %t516, !tbaa !24
  %t518 = load ptr, ptr %l239, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v3, ptr %t518, i64 %t517, i1 true)
  br label %bb103
bb103:
  store ptr %l4, ptr %l246, !tbaa !29
  %t520 = load ptr, ptr %l5, !tbaa !29
  %t522 = getelementptr %"compiler/load:Loader", ptr %t520, i32 0, i32 10
  %t523 = load i64, ptr %l18, !tbaa !24
  %t526 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t522, i64 %t523)
  store ptr %t526, ptr %l250
  br label %bb104
bb104:
  %t527 = load ptr, ptr %l250, !tbaa !29
  %t529 = getelementptr %"compiler/load:Module", ptr %t527, i32 0, i32 4
  %t530 = load i64, ptr %t529, !tbaa !24
  %t531 = load ptr, ptr %lp25
  %t532 = load { i64, ptr }, ptr %t531, !tbaa !27
  %t533 = load ptr, ptr %l246, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v4, ptr %v4, ptr %t533, i64 %t530, { i64, ptr } %t532)
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s11)
  br label %bb107
bb106:
  %t536 = load i64, ptr %l22, !tbaa !24
  %t538 = add i64 %t536, 1
  store i64 %t538, ptr %l22, !tbaa !24
  br label %bb65
bb107:
  call void @__olang_scope_close(ptr %s8)
  br label %bb108
bb108:
  %t540 = load i64, ptr %l17, !tbaa !24
  %t542 = add i64 %t540, 1
  store i64 %t542, ptr %l17, !tbaa !24
  br label %bb45
bb109:
  %t544 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t544, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2eSortedLines(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/text:LineIter"
  %l15 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca i1
  %l32 = alloca ptr
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l38 = alloca i1
  %l45 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t5, ptr %l9, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load i64, ptr %l10, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t19, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %t21)
  store %"std/prelude/text:LineIter" %t23, ptr %l13
  br label %bb5
bb5:
  %t24 = load %"std/prelude/text:LineIter", ptr %l13
  %t25 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 24, i64 8)
  store %"std/prelude/text:LineIter" %t24, ptr %t25
  %t27 = call ptr @std_2fprelude_2fiterator_2estd_2fprelude_2ftext_3aLineIter_2eToVec_3cstd_2fprelude_2ftex_H26ca3914517df8db224f03300752057f(ptr %v0, ptr %s0, ptr %t25)
  store ptr %t27, ptr %l15
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l15, !tbaa !29
  store ptr %t28, ptr %l1, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t30 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_78, 0
  %t31 = insertvalue { ptr, ptr } %t30, ptr null, 1
  %t34 = extractvalue { ptr, ptr } %t31, 0
  %t35 = extractvalue { ptr, ptr } %t31, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %t29, ptr %t34, ptr %t35)
  br label %bb7
bb7:
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l18
  br label %bb8
bb8:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l2
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l4, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t41)
  store i64 %t43, ptr %l22
  br label %bb10
bb10:
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = load i64, ptr %l22, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb11, label %bb12
bb11:
  br label %bb27
bb12:
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t50, i64 %t51)
  store { i64, ptr } %t54, ptr %l27
  br label %bb14
bb14:
  %t55 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t55, ptr %l5, !tbaa !27
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l2)
  store i64 %t57, ptr %l29
  br label %bb15
bb15:
  %t58 = load i64, ptr %l29, !tbaa !24
  %t59 = icmp eq i64 %t58, 0
  br i1 %t59, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb21
bb17:
  store ptr %l2, ptr %l32, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l2)
  store i64 %t62, ptr %l34
  br label %bb18
bb18:
  %t63 = load i64, ptr %l34, !tbaa !24
  %t64 = sub i64 %t63, 1
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t67 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t65, i64 %t64)
  store { i64, ptr } %t67, ptr %l36
  br label %bb19
bb19:
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t71 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t69, { i64, ptr } %t68)
  store i1 %t71, ptr %l38
  br label %bb20
bb20:
  %t72 = load i1, ptr %l38, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l31, !tbaa !21
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t76 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t76)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb9
bb27:
  %t84 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s0, ptr %v1, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) })
  store { i64, ptr } %t84, ptr %l45
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2frecords_2echeckOthers(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca i32
  %l62 = alloca %"compiler/views:Cand"
  %l64 = alloca %"compiler/views:Cand"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca i1
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca { i64, ptr }
  %l92 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i64
  %l101 = alloca ptr
  %l110 = alloca i64
  %l112 = alloca i64
  %l117 = alloca { i64, ptr }
  %l121 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i64
  %l130 = alloca ptr
  %l142 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load i64, ptr %l23, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l30, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l30, !tbaa !24
  store i64 %t33, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l27, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l9, !tbaa !24
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/views:Kept", ptr %t53, i32 0, i32 5
  store ptr %t55, ptr %l50, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 10
  %t59 = load i64, ptr %l9, !tbaa !24
  %t62 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t58, i64 %t59)
  store ptr %t62, ptr %l54
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l54, !tbaa !29
  %t65 = getelementptr %"compiler/load:Module", ptr %t63, i32 0, i32 4
  %t66 = load i64, ptr %t65, !tbaa !24
  %t67 = load ptr, ptr %l50, !tbaa !29
  %t69 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v2, ptr %t67, i64 %t66)
  %t70 = extractvalue { i32, i64 } %t69, 1
  %t71 = extractvalue { i32, i64 } %t69, 0
  store i32 %t71, ptr %l58
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb14, label %ok.73, !prof !99
ok.73:
  store i64 %t70, ptr %l57
  br label %bb13
bb13:
  %t74 = load i64, ptr %l57, !tbaa !24
  store i64 %t74, ptr %l48, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb59
bb16:
  %t75 = load i64, ptr %l48, !tbaa !24
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/views:Kept", ptr %t76, i32 0, i32 0
  %t82 = call %"compiler/views:Cand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eAt_3ccompiler_2fviews_3aCand_3e(ptr %v2, ptr %v2, ptr %t78, i64 %t75)
  store %"compiler/views:Cand" %t82, ptr %l62
  br label %bb17
bb17:
  %t84 = call %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v2, ptr %l62)
  store %"compiler/views:Cand" %t84, ptr %l64
  br label %bb18
bb18:
  %t85 = getelementptr %"compiler/views:Cand", ptr %l64, i32 0, i32 3
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l65
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s2, ptr %l65)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l67
  br label %bb19
bb19:
  %t89 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l11
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l9, !tbaa !24
  %t98 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2frecords_2eothers(ptr %v0, ptr %v1, ptr %v3, ptr %s2, ptr %t90, ptr %a1, i64 %t92, ptr %a3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l72
  br label %bb20
bb20:
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l12
  %t101 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s2, ptr %s2, ptr %s2, ptr %l11, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) })
  store { i64, ptr } %t101, ptr %l74
  br label %bb21
bb21:
  %t102 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  %t104 = extractvalue { i64, ptr } %t102, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l75, !tbaa !27
  %t110 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s2, ptr %s2, ptr %s2, ptr %l12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store { i64, ptr } %t110, ptr %l77
  br label %bb22
bb22:
  %t111 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t118, { i64, ptr } %t117)
  store i1 %t120, ptr %l79
  br label %bb23
bb23:
  %t121 = load i1, ptr %l79, !tbaa !21
  br i1 %t121, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb59
bb25:
  br label %bb26
bb26:
  store ptr %l12, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb27
bb27:
  %t123 = load i64, ptr %l14, !tbaa !24
  store i64 %t123, ptr %l81, !tbaa !24
  %t124 = load ptr, ptr %l13, !tbaa !29
  %t126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t124)
  store i64 %t126, ptr %l83
  br label %bb28
bb28:
  %t127 = load i64, ptr %l81, !tbaa !24
  %t128 = load i64, ptr %l83, !tbaa !24
  %t129 = icmp slt i64 %t127, %t128
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb29, label %bb30
bb29:
  br label %bb42
bb30:
  br label %bb31
bb31:
  %t133 = load ptr, ptr %l13, !tbaa !29
  %t134 = load i64, ptr %l14, !tbaa !24
  %t137 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %t133, i64 %t134)
  store { i64, ptr } %t137, ptr %l88
  br label %bb32
bb32:
  %t138 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t138, ptr %l15, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t144 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s2, ptr %s2, ptr %l11, { i64, ptr } %t139)
  store i1 %t144, ptr %l92
  br label %bb33
bb33:
  %t145 = load i1, ptr %l92, !tbaa !21
  %t146 = xor i1 %t145, true
  br i1 %t146, label %bb34, label %bb35
bb34:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t150 = getelementptr %"compiler/views:Kept", ptr %t148, i32 0, i32 6
  store ptr %t150, ptr %l95, !tbaa !29
  %t151 = ptrtoint ptr %v2 to i64
  store i64 %t151, ptr %l96, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t152, label %bb36, label %bb37
bb35:
  br label %bb40
bb36:
  %t154 = call ptr @__olang_region_make(ptr %v2)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l96, !tbaa !24
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/load:Loader", ptr %t156, i32 0, i32 10
  %t159 = load i64, ptr %l9, !tbaa !24
  %t162 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t158, i64 %t159)
  store ptr %t162, ptr %l101
  br label %bb38
bb38:
  %t163 = load ptr, ptr %l101, !tbaa !29
  %t165 = getelementptr %"compiler/load:Module", ptr %t163, i32 0, i32 2
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = extractvalue { i64, ptr } %t166, 0
  %t171 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t175 = extractvalue { i64, ptr } %t167, 1
  %t176 = extractvalue { i64, ptr } %t167, 0
  %t177 = add i64 %t173, %t176
  %t178 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t179 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t180 = add i64 %t177, %t179
  %t181 = load i64, ptr %l96
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = call ptr @__olang_scope_alloc(ptr %t182, i64 %t180)
  call void @olang_textcopy(ptr %t183, ptr %t169, i64 %t170)
  %t184 = getelementptr i8, ptr %t183, i64 %t170
  call void @olang_textcopy(ptr %t184, ptr %t171, i64 %t172)
  %t185 = getelementptr i8, ptr %t184, i64 %t172
  call void @olang_textcopy(ptr %t185, ptr %t175, i64 %t176)
  %t186 = getelementptr i8, ptr %t185, i64 %t176
  call void @olang_textcopy(ptr %t186, ptr %t178, i64 %t179)
  %t187 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t183, 1
  %t190 = load i64, ptr %l96
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = extractvalue { i64, ptr } %t188, 0
  %t193 = extractvalue { i64, ptr } %t188, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t198, { i64, ptr } %t197)
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t200 = load i64, ptr %l14, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l14, !tbaa !24
  br label %bb27
bb42:
  store ptr %l11, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb43
bb43:
  %t205 = load i64, ptr %l18, !tbaa !24
  store i64 %t205, ptr %l110, !tbaa !24
  %t206 = load ptr, ptr %l17, !tbaa !29
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t206)
  store i64 %t208, ptr %l112
  br label %bb44
bb44:
  %t209 = load i64, ptr %l110, !tbaa !24
  %t210 = load i64, ptr %l112, !tbaa !24
  %t211 = icmp slt i64 %t209, %t210
  %t213 = xor i1 %t211, true
  br i1 %t213, label %bb45, label %bb46
bb45:
  br label %bb58
bb46:
  br label %bb47
bb47:
  %t215 = load ptr, ptr %l17, !tbaa !29
  %t216 = load i64, ptr %l18, !tbaa !24
  %t219 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %t215, i64 %t216)
  store { i64, ptr } %t219, ptr %l117
  br label %bb48
bb48:
  %t220 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t220, ptr %l19, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t226 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s2, ptr %s2, ptr %l12, { i64, ptr } %t221)
  store i1 %t226, ptr %l121
  br label %bb49
bb49:
  %t227 = load i1, ptr %l121, !tbaa !21
  %t228 = xor i1 %t227, true
  br i1 %t228, label %bb50, label %bb51
bb50:
  %t230 = load ptr, ptr %l2, !tbaa !29
  %t232 = getelementptr %"compiler/views:Kept", ptr %t230, i32 0, i32 6
  store ptr %t232, ptr %l124, !tbaa !29
  %t233 = ptrtoint ptr %v2 to i64
  store i64 %t233, ptr %l125, !tbaa !24
  %t234 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t234, label %bb52, label %bb53
bb51:
  br label %bb56
bb52:
  %t236 = call ptr @__olang_region_make(ptr %v2)
  %t237 = ptrtoint ptr %t236 to i64
  store i64 %t237, ptr %l125, !tbaa !24
  br label %bb53
bb53:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/load:Loader", ptr %t238, i32 0, i32 10
  %t241 = load i64, ptr %l9, !tbaa !24
  %t244 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t240, i64 %t241)
  store ptr %t244, ptr %l130
  br label %bb54
bb54:
  %t245 = load ptr, ptr %l130, !tbaa !29
  %t247 = getelementptr %"compiler/load:Module", ptr %t245, i32 0, i32 2
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  %t249 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = extractvalue { i64, ptr } %t248, 0
  %t253 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t255 = add i64 %t252, %t254
  %t257 = extractvalue { i64, ptr } %t249, 1
  %t258 = extractvalue { i64, ptr } %t249, 0
  %t259 = add i64 %t255, %t258
  %t260 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t261 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t262 = add i64 %t259, %t261
  %t263 = load i64, ptr %l125
  %t264 = inttoptr i64 %t263 to ptr
  %t265 = call ptr @__olang_scope_alloc(ptr %t264, i64 %t262)
  call void @olang_textcopy(ptr %t265, ptr %t251, i64 %t252)
  %t266 = getelementptr i8, ptr %t265, i64 %t252
  call void @olang_textcopy(ptr %t266, ptr %t253, i64 %t254)
  %t267 = getelementptr i8, ptr %t266, i64 %t254
  call void @olang_textcopy(ptr %t267, ptr %t257, i64 %t258)
  %t268 = getelementptr i8, ptr %t267, i64 %t258
  call void @olang_textcopy(ptr %t268, ptr %t260, i64 %t261)
  %t269 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t265, 1
  %t272 = load i64, ptr %l125
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = extractvalue { i64, ptr } %t270, 0
  %t275 = extractvalue { i64, ptr } %t270, 1
  %t276 = mul i64 %t274, 1
  %t277 = call ptr @__olang_scope_alloc(ptr %t273, i64 %t276)
  call void @llvm.memcpy.p0.p0.i64(ptr %t277, ptr %t275, i64 %t276, i1 false)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t277, 1
  %t280 = load ptr, ptr %l124, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t280, { i64, ptr } %t279)
  br label %bb55
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t282 = load i64, ptr %l18, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l18, !tbaa !24
  br label %bb43
bb58:
  call void @__olang_scope_close(ptr %s2)
  br label %bb59
bb59:
  %t286 = load i64, ptr %l8, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l8, !tbaa !24
  br label %bb8
bb60:
  %t290 = load ptr, ptr %l2, !tbaa !29
  %t292 = getelementptr %"compiler/views:Kept", ptr %t290, i32 0, i32 6
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t292)
  store i64 %t294, ptr %l142
  br label %bb61
bb61:
  %t295 = load i64, ptr %l142, !tbaa !24
  %t296 = icmp sgt i64 %t295, 0
  br i1 %t296, label %bb62, label %bb63
bb62:
  %t298 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2frecords_2eCheckIncrFailed(ptr %v2, ptr %t298)
  br label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb65
bb65:
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"compiler/views:Cand" } @compiler_2frecords_2efrontRecord(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i1
  %l22 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca i1
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l59 = alloca %"std/prelude/text:LineIter"
  %l61 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca i1
  %l67 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l73 = alloca i64
  %l75 = alloca { i64, ptr }
  %l76 = alloca i1
  %l80 = alloca %"compiler/views:Cand"
  %l82 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l110 = alloca { i64, ptr }
  %l112 = alloca i1
  %l116 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i64
  %l120 = alloca { i64, ptr }
  %l123 = alloca i64
  %l124 = alloca i64
  %l132 = alloca i1
  %l133 = alloca i1
  %l135 = alloca i1
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/views:Cand" }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l16
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l15
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t8, ptr %l13, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l16, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l18, !tbaa !21
  %t13 = load i32, ptr %l16, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:Cand" } %t19, ptr %rv
  br label %ret
bb6:
  %t20 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d86, i32 0, i32 1) })
  %t24 = extractvalue { i32, i64 } %t23, 1
  %t25 = extractvalue { i32, i64 } %t23, 0
  store i32 %t25, ptr %l25
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb8, label %ok.27, !prof !99
ok.27:
  store i64 %t24, ptr %l24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l24, !tbaa !24
  store i64 %t28, ptr %l22, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t30 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:Cand" } %t30, ptr %rv
  br label %ret
bb10:
  %t31 = load i64, ptr %l22, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l27, !tbaa !27
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 5
  store i64 %t35, ptr %l29, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t36, 0
  store i64 %t39, ptr %l32, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l33, !tbaa !24
  %t42 = load i64, ptr %l29, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load i64, ptr %l29, !tbaa !24
  %t46 = load i64, ptr %l32, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_74134b5dcc105c42_96a34be2631e3c86)
  unreachable
bb13:
  %t49 = load i64, ptr %l32, !tbaa !24
  %t50 = load i64, ptr %l33, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_74134b5dcc105c42_96a34be2631e3c86)
  unreachable
bb15:
  %t53 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l29, !tbaa !24
  %t56 = load i64, ptr %l32, !tbaa !24
  %t57 = getelementptr i8, ptr %t54, i64 %t55
  %t58 = sub i64 %t56, %t55
  %t59 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  %t62 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %s0, { i64, ptr } %t60)
  store { i64, ptr } %t62, ptr %l38
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_74134b5dcc105c42_96a34be2631e3c86)
  unreachable
bb17:
  %t63 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t63, ptr %l39, !tbaa !27
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l41, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  store i64 %t68, ptr %l42, !tbaa !24
  %t69 = icmp sge i64 0, 0
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t71 = load i64, ptr %l41, !tbaa !24
  %t72 = icmp sle i64 0, %t71
  br i1 %t72, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_74134b5dcc105c42_96a34be2631e3c86)
  unreachable
bb20:
  %t74 = load i64, ptr %l41, !tbaa !24
  %t75 = load i64, ptr %l42, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_74134b5dcc105c42_96a34be2631e3c86)
  unreachable
bb22:
  %t78 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l41, !tbaa !24
  %t81 = getelementptr i8, ptr %t79, i64 0
  %t82 = sub i64 %t80, 0
  %t83 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t81, 1
  %t86 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v1, ptr %s0, { i64, ptr } %t84)
  store { i64, ptr } %t86, ptr %l47
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_74134b5dcc105c42_96a34be2631e3c86)
  unreachable
bb24:
  %t87 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t94, { i64, ptr } %t93)
  store i1 %t96, ptr %l49
  br label %bb25
bb25:
  %t97 = load i1, ptr %l49, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t101 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:Cand" } %t101, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t102 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t102, ptr %l52, !tbaa !27
  %t103 = load i64, ptr %l3, !tbaa !24
  store i64 %t103, ptr %l53, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l54, !tbaa !24
  %t106 = icmp sge i64 0, 0
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t108 = load i64, ptr %l53, !tbaa !24
  %t109 = icmp sle i64 0, %t108
  br i1 %t109, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_9fb4ac3de319e3f_96fac2b32e45e763)
  unreachable
bb31:
  %t111 = load i64, ptr %l53, !tbaa !24
  %t112 = load i64, ptr %l54, !tbaa !24
  %t113 = icmp sle i64 %t111, %t112
  br i1 %t113, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_9fb4ac3de319e3f_96fac2b32e45e763)
  unreachable
bb33:
  %t115 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = load i64, ptr %l53, !tbaa !24
  %t118 = getelementptr i8, ptr %t116, i64 0
  %t119 = sub i64 %t117, 0
  %t120 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  %t123 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v1, ptr %v1, { i64, ptr } %t121)
  store %"std/prelude/text:LineIter" %t123, ptr %l59
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_9fb4ac3de319e3f_96fac2b32e45e763)
  unreachable
bb35:
  %t124 = load %"std/prelude/text:LineIter", ptr %l59
  %t125 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"std/prelude/text:LineIter" %t124, ptr %t125
  %t127 = call ptr @std_2fprelude_2fiterator_2estd_2fprelude_2ftext_3aLineIter_2eToVec_3cstd_2fprelude_2ftex_H26ca3914517df8db224f03300752057f(ptr %v1, ptr %v1, ptr %t125)
  store ptr %t127, ptr %l61
  br label %bb36
bb36:
  %t128 = load ptr, ptr %l61, !tbaa !29
  store ptr %t128, ptr %l4, !tbaa !29
  %t129 = load ptr, ptr %l4, !tbaa !29
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t129)
  store i64 %t131, ptr %l63
  br label %bb37
bb37:
  %t132 = load i64, ptr %l63, !tbaa !24
  %t133 = icmp slt i64 %t132, 2
  br i1 %t133, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb42
bb39:
  %t135 = load ptr, ptr %l4, !tbaa !29
  %t137 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t135, i64 0)
  store { i64, ptr } %t137, ptr %l67
  br label %bb40
bb40:
  %t138 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t138, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t139, ptr %l68
  br label %bb41
bb41:
  %t140 = load i1, ptr %l68, !tbaa !21
  %t141 = xor i1 %t140, true
  store i1 %t141, ptr %l65, !tbaa !21
  br label %bb42
bb42:
  %t143 = load i1, ptr %l65, !tbaa !21
  br i1 %t143, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb48
bb44:
  %t144 = load ptr, ptr %l4, !tbaa !29
  store ptr %t144, ptr %l71, !tbaa !29
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t147 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t145)
  store i64 %t147, ptr %l73
  br label %bb45
bb45:
  %t148 = load i64, ptr %l73, !tbaa !24
  %t149 = sub i64 %t148, 1
  %t150 = load ptr, ptr %l71, !tbaa !29
  %t152 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t150, i64 %t149)
  store { i64, ptr } %t152, ptr %l75
  br label %bb46
bb46:
  %t153 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t153, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t154, ptr %l76
  br label %bb47
bb47:
  %t155 = load i1, ptr %l76, !tbaa !21
  %t156 = xor i1 %t155, true
  store i1 %t156, ptr %l70, !tbaa !21
  br label %bb48
bb48:
  %t158 = load i1, ptr %l70, !tbaa !21
  br i1 %t158, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t160 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:Cand" } %t160, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t163 = call %"compiler/views:Cand" @compiler_2fviews_3aCand_2ector(ptr %v1, i64 %a1)
  store %"compiler/views:Cand" %t163, ptr %l80
  br label %bb52
bb52:
  %t164 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store ptr %t164, ptr %lp5
  %t165 = load %"compiler/views:Cand", ptr %l80
  %t166 = load ptr, ptr %lp5
  store %"compiler/views:Cand" %t165, ptr %t166
  store i64 1, ptr %l6, !tbaa !24
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t169 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t167)
  store i64 %t169, ptr %l82
  br label %bb53
bb53:
  %t170 = load i64, ptr %l82, !tbaa !24
  %t171 = sub i64 %t170, 1
  store i64 %t171, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t173 = load i64, ptr %l7, !tbaa !24
  %t174 = load i64, ptr %l6, !tbaa !24
  %t177 = icmp sgt i64 %t173, %t174
  br i1 %t177, label %bb54, label %bb55
bb54:
  %t179 = load i64, ptr %l8, !tbaa !24
  %t181 = icmp sgt i64 %t179, 0
  br i1 %t181, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb59
bb56:
  %t183 = load i64, ptr %l7, !tbaa !24
  %t184 = load i64, ptr %l6, !tbaa !24
  %t187 = sub i64 %t183, %t184
  %t188 = load i64, ptr %l8, !tbaa !24
  %t191 = add i64 %t187, %t188
  %t193 = sub i64 %t191, 1
  %t194 = load i64, ptr %l8, !tbaa !24
  %t197 = sdiv i64 %t193, %t194
  store i64 %t197, ptr %l90, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb58
bb58:
  %t199 = load i64, ptr %l90, !tbaa !24
  store i64 %t199, ptr %l87, !tbaa !24
  br label %bb59
bb59:
  %t200 = load i64, ptr %l87, !tbaa !24
  store i64 %t200, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s6
  %t201 = load i64, ptr %l10, !tbaa !24
  %t202 = load i64, ptr %l9, !tbaa !24
  %t205 = icmp slt i64 %t201, %t202
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s6)
  br label %bb93
bb62:
  br label %bb63
bb63:
  %t209 = load i64, ptr %l6, !tbaa !24
  %t210 = load i64, ptr %l10, !tbaa !24
  %t211 = load i64, ptr %l8, !tbaa !24
  %t214 = mul i64 %t210, %t211
  %t217 = add i64 %t209, %t214
  %t219 = load ptr, ptr %l4, !tbaa !29
  %t223 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t219, i64 %t217)
  store { i64, ptr } %t223, ptr %l110
  br label %bb64
bb64:
  %t224 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t224, ptr %l12, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t225, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t227, ptr %l112
  br label %bb65
bb65:
  %t228 = load i1, ptr %l112, !tbaa !21
  br i1 %t228, label %bb66, label %bb67
bb66:
  %t229 = load ptr, ptr %lp5
  %t230 = getelementptr %"compiler/views:Cand", ptr %t229, i32 0, i32 1
  %t231 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t230, { i64, ptr } %t231)
  br label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s8
  %t234 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t236 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s8, { i64, ptr } %t234, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store i1 %t236, ptr %l116
  br label %bb69
bb68:
  br label %bb91
bb69:
  %t237 = load i1, ptr %l116, !tbaa !21
  br i1 %t237, label %bb70, label %bb71
bb70:
  %t238 = load ptr, ptr %lp5
  %t239 = getelementptr %"compiler/views:Cand", ptr %t238, i32 0, i32 2
  store ptr %t239, ptr %l117, !tbaa !29
  %t240 = ptrtoint ptr %v1 to i64
  store i64 %t240, ptr %l118, !tbaa !24
  %t241 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t241, label %bb72, label %bb73
bb71:
  store %olang.scope zeroinitializer, ptr %s11
  %t243 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t245 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s11, { i64, ptr } %t243, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t245, ptr %l132
  br label %bb81
bb72:
  %t246 = call ptr @__olang_region_make(ptr %v1)
  %t247 = ptrtoint ptr %t246 to i64
  store i64 %t247, ptr %l118, !tbaa !24
  br label %bb73
bb73:
  %t248 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t248, ptr %l120, !tbaa !27
  %t249 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t249, 0
  store i64 %t252, ptr %l123, !tbaa !24
  %t253 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 0
  store i64 %t254, ptr %l124, !tbaa !24
  %t255 = icmp sge i64 5, 0
  br i1 %t255, label %bb74, label %bb75
bb74:
  %t257 = load i64, ptr %l123, !tbaa !24
  %t258 = icmp sle i64 5, %t257
  br i1 %t258, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_d6e69897ddbacd4_85b5c87fc3d2b148)
  unreachable
bb76:
  %t260 = load i64, ptr %l123, !tbaa !24
  %t261 = load i64, ptr %l124, !tbaa !24
  %t262 = icmp sle i64 %t260, %t261
  br i1 %t262, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_d6e69897ddbacd4_85b5c87fc3d2b148)
  unreachable
bb78:
  %t264 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = load i64, ptr %l123, !tbaa !24
  %t267 = getelementptr i8, ptr %t265, i64 5
  %t268 = sub i64 %t266, 5
  %t269 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t267, 1
  %t272 = extractvalue { i64, ptr } %t270, 1
  %t273 = extractvalue { i64, ptr } %t270, 0
  %t274 = load i64, ptr %l118
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_scope_alloc(ptr %t275, i64 %t273)
  call void @olang_textcopy(ptr %t276, ptr %t272, i64 %t273)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t280 = load i64, ptr %l118
  %t281 = inttoptr i64 %t280 to ptr
  %t282 = extractvalue { i64, ptr } %t278, 0
  %t283 = extractvalue { i64, ptr } %t278, 1
  %t284 = mul i64 %t282, 1
  %t285 = call ptr @__olang_scope_alloc(ptr %t281, i64 %t284)
  call void @llvm.memcpy.p0.p0.i64(ptr %t285, ptr %t283, i64 %t284, i1 false)
  %t286 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  %t288 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t288, { i64, ptr } %t287)
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_d6e69897ddbacd4_85b5c87fc3d2b148)
  unreachable
bb80:
  br label %bb90
bb81:
  %t290 = load i1, ptr %l132, !tbaa !21
  br i1 %t290, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l133, !tbaa !21
  br label %bb85
bb83:
  %t291 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t293 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s11, { i64, ptr } %t291, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t293, ptr %l135
  br label %bb84
bb84:
  %t294 = load i1, ptr %l135, !tbaa !21
  store i1 %t294, ptr %l133, !tbaa !21
  br label %bb85
bb85:
  %t295 = load i1, ptr %l133, !tbaa !21
  br i1 %t295, label %bb86, label %bb87
bb86:
  %t296 = load ptr, ptr %lp5
  %t297 = getelementptr %"compiler/views:Cand", ptr %t296, i32 0, i32 3
  %t298 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t297, { i64, ptr } %t298)
  br label %bb88
bb87:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t302 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:Cand" } %t302, ptr %rv
  br label %ret
bb88:
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s11)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s8)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s6)
  br label %bb92
bb92:
  %t303 = load i64, ptr %l10, !tbaa !24
  %t305 = add i64 %t303, 1
  store i64 %t305, ptr %l10, !tbaa !24
  br label %bb60
bb93:
  %t307 = load ptr, ptr %lp5
  %t308 = load %"compiler/views:Cand", ptr %t307
  call void @__olang_scope_close(ptr %s0)
  %t310 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, %"compiler/views:Cand" %t308, 1
  store { i32, %"compiler/views:Cand" } %t310, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/views:Cand" }, ptr %rv
  ret { i32, %"compiler/views:Cand" } %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2efrontStem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/build:Config", ptr %a0, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %s0, { i64, ptr } %a1)
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  store { i64, ptr } %a2, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = icmp sge i64 0, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = icmp sle i64 0, 20
  br i1 %t13, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_fd09710337ae8082_2072ce3b20906616)
  unreachable
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp sle i64 20, %t15
  br i1 %t16, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_fd09710337ae8082_2072ce3b20906616)
  unreachable
bb6:
  %t18 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 0
  %t21 = sub i64 20, 0
  %t22 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t38 = extractvalue { i64, ptr } %t23, 1
  %t39 = extractvalue { i64, ptr } %t23, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t25, i64 %t26)
  %t45 = getelementptr i8, ptr %t44, i64 %t26
  call void @olang_textcopy(ptr %t45, ptr %t27, i64 %t28)
  %t46 = getelementptr i8, ptr %t45, i64 %t28
  call void @olang_textcopy(ptr %t46, ptr %t31, i64 %t32)
  %t47 = getelementptr i8, ptr %t46, i64 %t32
  call void @olang_textcopy(ptr %t47, ptr %t34, i64 %t35)
  %t48 = getelementptr i8, ptr %t47, i64 %t35
  call void @olang_textcopy(ptr %t48, ptr %t38, i64 %t39)
  %t49 = getelementptr i8, ptr %t48, i64 %t39
  call void @olang_textcopy(ptr %t49, ptr %t41, i64 %t42)
  %t50 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t44, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_fd09710337ae8082_2072ce3b20906616)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2ehexByte(ptr %v0, i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l6 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %rv = alloca { i64, ptr }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t3 = load i8, ptr %l0, !tbaa !22
  %t5 = lshr i8 %t3, 4
  %t7 = zext i8 %t5 to i64
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load i8, ptr %l0, !tbaa !22
  %t10 = lshr i8 %t8, 4
  %t12 = zext i8 %t10 to i64
  %t14 = add i64 %t12, 1
  store i64 %t14, ptr %l10, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l11, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = icmp sge i64 %t17, 0
  br i1 %t18, label %bb1, label %bb2
bb1:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l10, !tbaa !24
  %t22 = icmp sle i64 %t20, %t21
  br i1 %t22, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2727131baf418fd5_a166bfe6a37b2109)
  unreachable
bb3:
  %t24 = load i64, ptr %l10, !tbaa !24
  %t25 = load i64, ptr %l11, !tbaa !24
  %t26 = icmp sle i64 %t24, %t25
  br i1 %t26, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2727131baf418fd5_a166bfe6a37b2109)
  unreachable
bb5:
  %t28 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l10, !tbaa !24
  %t32 = getelementptr i8, ptr %t29, i64 %t30
  %t33 = sub i64 %t31, %t30
  %t34 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t32, 1
  store { i64, ptr } %t35, ptr %l15, !tbaa !27
  %t36 = load i8, ptr %l0, !tbaa !22
  %t38 = and i8 %t36, 15
  %t40 = zext i8 %t38 to i64
  store i64 %t40, ptr %l18, !tbaa !24
  %t41 = load i8, ptr %l0, !tbaa !22
  %t43 = and i8 %t41, 15
  %t45 = zext i8 %t43 to i64
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l22, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l23, !tbaa !24
  %t50 = load i64, ptr %l18, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_2727131baf418fd5_a166bfe6a37b2109)
  unreachable
bb7:
  %t53 = load i64, ptr %l18, !tbaa !24
  %t54 = load i64, ptr %l22, !tbaa !24
  %t55 = icmp sle i64 %t53, %t54
  br i1 %t55, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_2727131baf418fd5_a166bfe6a37b2109)
  unreachable
bb9:
  %t57 = load i64, ptr %l22, !tbaa !24
  %t58 = load i64, ptr %l23, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  br i1 %t59, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_2727131baf418fd5_a166bfe6a37b2109)
  unreachable
bb11:
  %t61 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = load i64, ptr %l18, !tbaa !24
  %t64 = load i64, ptr %l22, !tbaa !24
  %t65 = getelementptr i8, ptr %t62, i64 %t63
  %t66 = sub i64 %t64, %t63
  %t67 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t65, 1
  %t69 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t73 = extractvalue { i64, ptr } %t68, 1
  %t74 = extractvalue { i64, ptr } %t68, 0
  %t75 = add i64 %t71, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t70, i64 %t71)
  %t77 = getelementptr i8, ptr %t76, i64 %t71
  call void @olang_textcopy(ptr %t77, ptr %t73, i64 %t74)
  %t78 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t76, 1
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_2727131baf418fd5_a166bfe6a37b2109)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2eimageText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/eval:Blob"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"compiler/eval:Blob"
  %l27 = alloca %"compiler/eval:Blob"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca i8
  %l43 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l50 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l75 = alloca ptr
  %l78 = alloca i64
  %l81 = alloca i64
  %l84 = alloca i64
  %l89 = alloca i64
  %l91 = alloca i1
  %l92 = alloca i64
  %l94 = alloca i64
  %l96 = alloca i1
  %l99 = alloca i64
  %l101 = alloca ptr
  %l103 = alloca ptr
  %l106 = alloca i64
  %l107 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l111 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca { i64, ptr }
  %l118 = alloca i64
  %l130 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t19 = alloca %"compiler/eval:Blob", align 8
  %t22 = alloca %"compiler/eval:Blob", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l15
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/eval:Image", ptr %t3, i32 0, i32 0
  store ptr %t5, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l18, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l20
  br label %bb3
bb3:
  %t11 = load i64, ptr %l18, !tbaa !24
  %t12 = load i64, ptr %l20, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t19, ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t19, i64 272, i1 false)
  br label %bb7
bb7:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t22, ptr %s2, ptr %l25)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t22, i64 272, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l27, i64 272, i1 false)
  store ptr %l2, ptr %l28, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 1
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l29, !tbaa !24
  %t26 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 2
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l31, !tbaa !27
  br label %bb11
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l31, !tbaa !27
  br label %bb11
bb11:
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t31 = load i64, ptr %l29, !tbaa !24
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t33 = add i64 %t30, %t32
  %t34 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t41 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t40)
  call void @olang_textcopy(ptr %t41, ptr %t29, i64 %t30)
  %t42 = getelementptr i8, ptr %t41, i64 %t30
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t31)
  %t44 = getelementptr i8, ptr %t42, i64 %t32
  call void @olang_textcopy(ptr %t44, ptr %t35, i64 %t36)
  %t45 = getelementptr i8, ptr %t44, i64 %t36
  call void @olang_textcopy(ptr %t45, ptr %t38, i64 %t39)
  %t46 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t41, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = extractvalue { i64, ptr } %t47, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t55 = load ptr, ptr %l28, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t55, { i64, ptr } %t54)
  br label %bb12
bb12:
  %t57 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 0
  store ptr %t57, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t59 = load i64, ptr %l7, !tbaa !24
  store i64 %t59, ptr %l35, !tbaa !24
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %s2, ptr %t60)
  store i64 %t62, ptr %l37
  br label %bb14
bb14:
  %t63 = load i64, ptr %l35, !tbaa !24
  %t64 = load i64, ptr %l37, !tbaa !24
  %t65 = icmp slt i64 %t63, %t64
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %s2, ptr %t69, i64 %t70)
  store i8 %t73, ptr %l42
  br label %bb18
bb18:
  %t74 = load i8, ptr %l42, !tbaa !22
  store ptr %l2, ptr %l43, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2frecords_2ehexByte(ptr %s5, i8 %t74)
  store { i64, ptr } %t77, ptr %l45
  br label %bb19
bb19:
  %t78 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t85, { i64, ptr } %t84)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb21
bb21:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb13
bb22:
  store i64 0, ptr %l9, !tbaa !24
  %t91 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 3
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t91)
  store i64 %t93, ptr %l50
  br label %bb23
bb23:
  %t94 = load i64, ptr %l50, !tbaa !24
  store i64 %t94, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t96 = load i64, ptr %l9, !tbaa !24
  %t99 = icmp sgt i64 %t95, %t96
  br i1 %t99, label %bb24, label %bb25
bb24:
  %t101 = load i64, ptr %l11, !tbaa !24
  %t103 = icmp sgt i64 %t101, 0
  br i1 %t103, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb29
bb26:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = sub i64 %t105, %t106
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = add i64 %t109, %t110
  %t115 = sub i64 %t113, 1
  %t116 = load i64, ptr %l11, !tbaa !24
  %t119 = sdiv i64 %t115, %t116
  store i64 %t119, ptr %l57, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb28
bb28:
  %t121 = load i64, ptr %l57, !tbaa !24
  store i64 %t121, ptr %l54, !tbaa !24
  br label %bb29
bb29:
  %t122 = load i64, ptr %l54, !tbaa !24
  store i64 %t122, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  %t123 = load i64, ptr %l13, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t127 = icmp slt i64 %t123, %t124
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s8)
  br label %bb57
bb32:
  br label %bb33
bb33:
  %t131 = load i64, ptr %l9, !tbaa !24
  %t132 = load i64, ptr %l13, !tbaa !24
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = mul i64 %t132, %t133
  %t139 = add i64 %t131, %t136
  store i64 %t139, ptr %l14, !tbaa !24
  store ptr %l2, ptr %l75, !tbaa !29
  %t141 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 3
  %t142 = load i64, ptr %l14, !tbaa !24
  %t145 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t141, i64 %t142)
  store i64 %t145, ptr %l78
  br label %bb34
bb34:
  %t146 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 4
  %t147 = load i64, ptr %l14, !tbaa !24
  %t150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t146, i64 %t147)
  store i64 %t150, ptr %l81
  br label %bb35
bb35:
  %t151 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 5
  %t152 = load i64, ptr %l14, !tbaa !24
  %t155 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t151, i64 %t152)
  store i64 %t155, ptr %l84
  br label %bb36
bb36:
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t158 = load i64, ptr %l78, !tbaa !24
  %t159 = call i64 @__olang_fmt_i64(ptr null, i64 %t158)
  %t160 = add i64 %t157, %t159
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t164 = load i64, ptr %l81, !tbaa !24
  %t165 = call i64 @__olang_fmt_i64(ptr null, i64 %t164)
  %t166 = add i64 %t163, %t165
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = load i64, ptr %l84, !tbaa !24
  %t171 = call i64 @__olang_fmt_i64(ptr null, i64 %t170)
  %t172 = add i64 %t169, %t171
  %t173 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t172)
  call void @olang_textcopy(ptr %t173, ptr %t156, i64 %t157)
  %t174 = getelementptr i8, ptr %t173, i64 %t157
  %t175 = call i64 @__olang_fmt_i64(ptr %t174, i64 %t158)
  %t176 = getelementptr i8, ptr %t174, i64 %t159
  call void @olang_textcopy(ptr %t176, ptr %t161, i64 %t162)
  %t177 = getelementptr i8, ptr %t176, i64 %t162
  %t178 = call i64 @__olang_fmt_i64(ptr %t177, i64 %t164)
  %t179 = getelementptr i8, ptr %t177, i64 %t165
  call void @olang_textcopy(ptr %t179, ptr %t167, i64 %t168)
  %t180 = getelementptr i8, ptr %t179, i64 %t168
  %t181 = call i64 @__olang_fmt_i64(ptr %t180, i64 %t170)
  %t182 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t173, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load ptr, ptr %l75, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t191, { i64, ptr } %t190)
  br label %bb37
bb37:
  %t193 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 4
  %t194 = load i64, ptr %l14, !tbaa !24
  %t197 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t193, i64 %t194)
  store i64 %t197, ptr %l89
  br label %bb38
bb38:
  %t198 = load i64, ptr %l89, !tbaa !24
  %t199 = icmp slt i64 %t198, 0
  br i1 %t199, label %bb39, label %bb40
bb39:
  %t201 = load i64, ptr %l14, !tbaa !24
  store i64 %t201, ptr %l92, !tbaa !24
  %t202 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 7
  %t204 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t202)
  store i64 %t204, ptr %l94
  br label %bb41
bb40:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb42
bb41:
  %t205 = load i64, ptr %l92, !tbaa !24
  %t206 = load i64, ptr %l94, !tbaa !24
  %t207 = icmp slt i64 %t205, %t206
  store i1 %t207, ptr %l91, !tbaa !21
  br label %bb42
bb42:
  %t209 = load i1, ptr %l91, !tbaa !21
  br i1 %t209, label %bb43, label %bb44
bb43:
  %t210 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 7
  %t211 = load i64, ptr %l14, !tbaa !24
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t210, i64 %t211)
  store i64 %t214, ptr %l99
  br label %bb45
bb44:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb46
bb45:
  %t215 = load i64, ptr %l99, !tbaa !24
  %t216 = icmp sge i64 %t215, 0
  store i1 %t216, ptr %l96, !tbaa !21
  br label %bb46
bb46:
  %t218 = load i1, ptr %l96, !tbaa !21
  br i1 %t218, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l2, ptr %l101, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/load:Loader", ptr %t219, i32 0, i32 10
  store ptr %t221, ptr %l103, !tbaa !29
  %t222 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 7
  %t223 = load i64, ptr %l14, !tbaa !24
  %t226 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t222, i64 %t223)
  store i64 %t226, ptr %l106
  br label %bb49
bb48:
  br label %bb55
bb49:
  %t227 = load ptr, ptr %l103, !tbaa !29
  %t228 = load i64, ptr %l106, !tbaa !24
  %t229 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t227, i64 %t228)
  store ptr %t229, ptr %l107
  br label %bb50
bb50:
  %t230 = load ptr, ptr %l107, !tbaa !29
  %t232 = getelementptr %"compiler/load:Module", ptr %t230, i32 0, i32 2
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l109, !tbaa !27
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/load:Loader", ptr %t234, i32 0, i32 3
  %t237 = load ptr, ptr %t236, !tbaa !29
  store ptr %t237, ptr %l111, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 8
  %t239 = load i64, ptr %l14, !tbaa !24
  %t242 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s2, ptr %t238, i64 %t239)
  store i32 %t242, ptr %l114
  br label %bb51
bb51:
  %t243 = load ptr, ptr %l111, !tbaa !29
  %t244 = load i32, ptr %l114, !tbaa !23
  %t245 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s10, ptr %t243, i32 %t244)
  store { i64, ptr } %t245, ptr %l115
  br label %bb52
bb52:
  %t246 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 9
  %t247 = load i64, ptr %l14, !tbaa !24
  %t250 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t246, i64 %t247)
  store i64 %t250, ptr %l118
  br label %bb53
bb53:
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t253 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = add i64 %t252, %t255
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t258 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t259 = add i64 %t256, %t258
  %t260 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = add i64 %t259, %t262
  %t264 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t266 = add i64 %t263, %t265
  %t267 = load i64, ptr %l118, !tbaa !24
  %t268 = call i64 @__olang_fmt_i64(ptr null, i64 %t267)
  %t269 = add i64 %t266, %t268
  %t270 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t269)
  call void @olang_textcopy(ptr %t270, ptr %t251, i64 %t252)
  %t271 = getelementptr i8, ptr %t270, i64 %t252
  call void @olang_textcopy(ptr %t271, ptr %t254, i64 %t255)
  %t272 = getelementptr i8, ptr %t271, i64 %t255
  call void @olang_textcopy(ptr %t272, ptr %t257, i64 %t258)
  %t273 = getelementptr i8, ptr %t272, i64 %t258
  call void @olang_textcopy(ptr %t273, ptr %t261, i64 %t262)
  %t274 = getelementptr i8, ptr %t273, i64 %t262
  call void @olang_textcopy(ptr %t274, ptr %t264, i64 %t265)
  %t275 = getelementptr i8, ptr %t274, i64 %t265
  %t276 = call i64 @__olang_fmt_i64(ptr %t275, i64 %t267)
  %t277 = insertvalue { i64, ptr } undef, i64 %t269, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t270, 1
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t281 = extractvalue { i64, ptr } %t278, 1
  %t282 = mul i64 %t280, 1
  %t283 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t282)
  call void @llvm.memcpy.p0.p0.i64(ptr %t283, ptr %t281, i64 %t282, i1 false)
  %t284 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t285 = insertvalue { i64, ptr } %t284, ptr %t283, 1
  %t286 = load ptr, ptr %l101, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t286, { i64, ptr } %t285)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s10)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s8)
  br label %bb56
bb56:
  %t288 = load i64, ptr %l13, !tbaa !24
  %t290 = add i64 %t288, 1
  store i64 %t290, ptr %l13, !tbaa !24
  br label %bb30
bb57:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) })
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s2)
  br label %bb59
bb59:
  %t293 = load i64, ptr %l4, !tbaa !24
  %t295 = add i64 %t293, 1
  store i64 %t295, ptr %l4, !tbaa !24
  br label %bb2
bb60:
  %t297 = load ptr, ptr %l1, !tbaa !29
  %t299 = getelementptr %"compiler/eval:Image", ptr %t297, i32 0, i32 2
  %t300 = load i1, ptr %t299, !tbaa !21
  br i1 %t300, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s14
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l2, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d108, i32 0, i32 1) })
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s14)
  br label %bb64
bb64:
  %t304 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t304, ptr %l130
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t305 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t305, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2frecords_2eothers(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l13 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i1
  %l53 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca i1
  %l69 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l70 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %l72 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %l73 = alloca i32
  %l75 = alloca i1
  %l79 = alloca ptr
  %l89 = alloca ptr
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l17
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp4
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t4 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l5, !tbaa !24
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l20
  br label %bb2
bb2:
  %t11 = load i64, ptr %l20, !tbaa !24
  store i64 %t11, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load i64, ptr %l7, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb5:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l7, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l27, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l27, !tbaa !24
  store i64 %t38, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l24, !tbaa !24
  store i64 %t39, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load i64, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l10, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l10, !tbaa !24
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v1, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l48
  br label %bb13
bb13:
  %t66 = load i64, ptr %l2, !tbaa !24
  %t67 = load i64, ptr %l48, !tbaa !24
  %t69 = icmp ne i64 %t67, %t66
  br i1 %t69, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb18
bb15:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  store ptr %t74, ptr %l53, !tbaa !29
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t75)
  store i64 %t77, ptr %l55
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l53, !tbaa !29
  %t79 = load i64, ptr %l55, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v1, ptr %t78, i64 %t79)
  store i64 %t80, ptr %l56
  br label %bb17
bb17:
  %t81 = load i64, ptr %l56, !tbaa !24
  %t82 = icmp sgt i64 %t81, 0
  store i1 %t82, ptr %l51, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l51, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t86 = load i64, ptr %l10, !tbaa !24
  %t89 = call { i64, ptr } @compiler_2frecords_2esigLine(ptr %v1, ptr %v3, ptr %t85, i64 %t86)
  store { i64, ptr } %t89, ptr %l60
  br label %bb22
bb22:
  %t90 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t90, ptr %lp11
  %t91 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t92 = load ptr, ptr %lp11
  store { i64, ptr } %t91, ptr %t92, !tbaa !27
  %t93 = load ptr, ptr %lp11
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s2, { i64, ptr } %t94, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i1 %t96, ptr %l62
  br label %bb23
bb23:
  %t97 = load i1, ptr %l62, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb24, label %bb25
bb24:
  %t100 = load ptr, ptr %lp4
  %t101 = load ptr, ptr %lp11
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t100, { i64, ptr } %t102)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb9
bb29:
  %t111 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H22169a789cb544431edc747dee234bd5(ptr %v2, ptr %v2, ptr %a3)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t111, ptr %l69
  br label %bb30
bb30:
  %t112 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l69
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t112, ptr %l12
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t114 = call { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2feval_3aImage_3_Hb70b8ba6c3e879cab72ad6295e03d3b2(ptr %v2, ptr %s7, ptr %l12)
  %t115 = extractvalue { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } %t114, 1
  %t116 = extractvalue { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } %t114, 0
  store i32 %t116, ptr %l73
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb33, label %ok.118, !prof !99
ok.118:
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t115, ptr %l72
  br label %bb32
bb32:
  %t119 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l72
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t119, ptr %l70
  br label %bb35
bb33:
  %t120 = load i32, ptr %l73, !tbaa !23
  %t121 = ashr i32 %t120, 16
  %t123 = icmp eq i32 %t121, 1
  store i1 %t123, ptr %l75, !tbaa !21
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb35:
  %t124 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l70
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t124, ptr %l13
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr %"compiler/check:Checker", ptr %t125, i32 0, i32 18
  %t128 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l13, i32 0, i32 0
  %t129 = load i64, ptr %t128, !tbaa !24
  %t132 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v1, ptr %v1, ptr %t127, i64 %t129)
  store ptr %t132, ptr %l79
  br label %bb36
bb36:
  %t133 = load ptr, ptr %l79, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Body", ptr %t133, i32 0, i32 1
  %t136 = load { i64, [2 x i64] }, ptr %t135
  store { i64, [2 x i64] } %t136, ptr %l14
  %t138 = load { i64, [2 x i64] }, ptr %l14
  %t140 = extractvalue { i64, [2 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 6
  br i1 %t141, label %bb37, label %bb38
bb37:
  %t143 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t144 = getelementptr { i64, i32 }, ptr %t143, i32 0, i32 0
  %t145 = load i64, ptr %t144
  store i64 %t145, ptr %l15, !tbaa !24
  %t147 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t148 = getelementptr { i64, i32 }, ptr %t147, i32 0, i32 1
  %t149 = load i32, ptr %t148
  store i32 %t149, ptr %l16, !tbaa !23
  br label %bb39
bb38:
  br label %bb48
bb39:
  %t151 = load i64, ptr %l15, !tbaa !24
  %t152 = load i64, ptr %l2, !tbaa !24
  %t155 = icmp eq i64 %t151, %t152
  br i1 %t155, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s9
  %t157 = load ptr, ptr %lp4
  store ptr %t157, ptr %l89, !tbaa !29
  %t158 = ptrtoint ptr %v3 to i64
  store i64 %t158, ptr %l90, !tbaa !24
  %t159 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t159, label %bb42, label %bb43
bb41:
  br label %bb47
bb42:
  %t161 = call ptr @__olang_region_make(ptr %v3)
  %t162 = ptrtoint ptr %t161 to i64
  store i64 %t162, ptr %l90, !tbaa !24
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 3
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load i32, ptr %l16, !tbaa !23
  %t170 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s9, ptr %t166, i32 %t167)
  store { i64, ptr } %t170, ptr %l95
  br label %bb44
bb44:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l13, i32 0, i32 1
  %t175 = call { i64, ptr } @compiler_2frecords_2eimageText(ptr %v0, ptr %s7, ptr %s9, ptr %t171, ptr %t172)
  store { i64, ptr } %t175, ptr %l98
  br label %bb45
bb45:
  %t176 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t178 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = add i64 %t177, %t180
  %t182 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t184 = add i64 %t181, %t183
  %t185 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 1
  %t187 = extractvalue { i64, ptr } %t185, 0
  %t188 = add i64 %t184, %t187
  %t189 = load i64, ptr %l90
  %t190 = inttoptr i64 %t189 to ptr
  %t191 = call ptr @__olang_scope_alloc(ptr %t190, i64 %t188)
  call void @olang_textcopy(ptr %t191, ptr %t176, i64 %t177)
  %t192 = getelementptr i8, ptr %t191, i64 %t177
  call void @olang_textcopy(ptr %t192, ptr %t179, i64 %t180)
  %t193 = getelementptr i8, ptr %t192, i64 %t180
  call void @olang_textcopy(ptr %t193, ptr %t182, i64 %t183)
  %t194 = getelementptr i8, ptr %t193, i64 %t183
  call void @olang_textcopy(ptr %t194, ptr %t186, i64 %t187)
  %t195 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t191, 1
  %t198 = load i64, ptr %l90
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = extractvalue { i64, ptr } %t196, 0
  %t201 = extractvalue { i64, ptr } %t196, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %t199, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  %t206 = load ptr, ptr %l89, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t206, { i64, ptr } %t205)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s9)
  br label %bb47
bb47:
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_56acc6c2cad66900_a164af229476b69c)
  unreachable
bb53:
  call void @__olang_scope_close(ptr %s7)
  br label %bb54
bb54:
  br label %bb31
bb55:
  %t208 = load ptr, ptr %lp4
  %t209 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_112, 0
  %t210 = insertvalue { ptr, ptr } %t209, ptr null, 1
  %t213 = extractvalue { ptr, ptr } %t210, 0
  %t214 = extractvalue { ptr, ptr } %t210, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v3, ptr %s0, ptr %t208, ptr %t213, ptr %t214)
  br label %bb56
bb56:
  %t215 = load ptr, ptr %lp4
  %t216 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t215
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2frecords_2escopeRecord(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/text:LineIter"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l43 = alloca { i64, ptr }
  %l45 = alloca i1
  %l48 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l57 = alloca i1
  %l59 = alloca i1
  %l61 = alloca i1
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca %"std/prelude/text:LineIter"
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l70 = alloca i32
  %l72 = alloca i1
  %l74 = alloca i1
  %l76 = alloca i1
  %l81 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l84 = alloca i1
  %l87 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l11
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l10
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l11, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l13, !tbaa !21
  %t13 = load i32, ptr %l11, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t19, ptr %rv
  br label %ret
bb6:
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d113, i32 0, i32 1) })
  %t24 = extractvalue { i32, i64 } %t23, 1
  %t25 = extractvalue { i32, i64 } %t23, 0
  store i32 %t25, ptr %l20
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb8, label %ok.27, !prof !99
ok.27:
  store i64 %t24, ptr %l19
  br label %bb7
bb7:
  %t28 = load i64, ptr %l19, !tbaa !24
  store i64 %t28, ptr %l17, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t30 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t30, ptr %rv
  br label %ret
bb10:
  %t31 = load i64, ptr %l17, !tbaa !24
  %t32 = add i64 %t31, 4
  store i64 %t32, ptr %l3, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t34, ptr %l23, !tbaa !27
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 5
  store i64 %t37, ptr %l25, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t38, 0
  store i64 %t41, ptr %l28, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l29, !tbaa !24
  %t44 = load i64, ptr %l25, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47)
  unreachable
bb13:
  %t51 = load i64, ptr %l28, !tbaa !24
  %t52 = load i64, ptr %l29, !tbaa !24
  %t53 = icmp sle i64 %t51, %t52
  br i1 %t53, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47)
  unreachable
bb15:
  %t55 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = load i64, ptr %l25, !tbaa !24
  %t58 = load i64, ptr %l28, !tbaa !24
  %t59 = getelementptr i8, ptr %t56, i64 %t57
  %t60 = sub i64 %t58, %t57
  %t61 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t59, 1
  %t64 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t62)
  store { i64, ptr } %t64, ptr %l34
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47)
  unreachable
bb17:
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t65, ptr %l35, !tbaa !27
  %t66 = load i64, ptr %l3, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l37, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l38, !tbaa !24
  %t71 = icmp sge i64 0, 0
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load i64, ptr %l37, !tbaa !24
  %t74 = icmp sle i64 0, %t73
  br i1 %t74, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47)
  unreachable
bb20:
  %t76 = load i64, ptr %l37, !tbaa !24
  %t77 = load i64, ptr %l38, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47)
  unreachable
bb22:
  %t80 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l37, !tbaa !24
  %t83 = getelementptr i8, ptr %t81, i64 0
  %t84 = sub i64 %t82, 0
  %t85 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  %t88 = call { i64, ptr } @compiler_2frecords_2esumOf(ptr %s0, ptr %s0, { i64, ptr } %t86)
  store { i64, ptr } %t88, ptr %l43
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47)
  unreachable
bb24:
  %t89 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t96, { i64, ptr } %t95)
  store i1 %t98, ptr %l45
  br label %bb25
bb25:
  %t99 = load i1, ptr %l45, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t103 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t103, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t104, ptr %l48, !tbaa !27
  %t105 = load i64, ptr %l3, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l50, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l51, !tbaa !24
  %t110 = icmp sge i64 0, 0
  br i1 %t110, label %bb29, label %bb30
bb29:
  %t112 = load i64, ptr %l50, !tbaa !24
  %t113 = icmp sle i64 0, %t112
  br i1 %t113, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_c948c74961a5cc06_d4f9b1858678796a)
  unreachable
bb31:
  %t115 = load i64, ptr %l50, !tbaa !24
  %t116 = load i64, ptr %l51, !tbaa !24
  %t117 = icmp sle i64 %t115, %t116
  br i1 %t117, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_c948c74961a5cc06_d4f9b1858678796a)
  unreachable
bb33:
  %t119 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l50, !tbaa !24
  %t122 = getelementptr i8, ptr %t120, i64 0
  %t123 = sub i64 %t121, 0
  %t124 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  store { i64, ptr } %t125, ptr %l4, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t127, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t129, ptr %l57
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_c948c74961a5cc06_d4f9b1858678796a)
  unreachable
bb35:
  %t130 = load i1, ptr %l57, !tbaa !21
  %t131 = xor i1 %t130, true
  br i1 %t131, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb39
bb37:
  %t133 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s0, { i64, ptr } %t133, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t135, ptr %l61
  br label %bb38
bb38:
  %t136 = load i1, ptr %l61, !tbaa !21
  %t137 = xor i1 %t136, true
  store i1 %t137, ptr %l59, !tbaa !21
  br label %bb39
bb39:
  %t139 = load i1, ptr %l59, !tbaa !21
  br i1 %t139, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t141 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t141, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t142 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l64
  br label %bb43
bb43:
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l5
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t146 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t144)
  store %"std/prelude/text:LineIter" %t146, ptr %l66
  br label %bb44
bb44:
  %t147 = load %"std/prelude/text:LineIter", ptr %l66
  store %"std/prelude/text:LineIter" %t147, ptr %l6
  br label %bb45
bb45:
  store %olang.scope zeroinitializer, ptr %s6
  %t149 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l6)
  %t150 = extractvalue { i32, { i64, ptr } } %t149, 1
  %t151 = extractvalue { i32, { i64, ptr } } %t149, 0
  store i32 %t151, ptr %l70
  %t152 = icmp ne i32 %t151, 0
  br i1 %t152, label %bb47, label %ok.153, !prof !99
ok.153:
  store { i64, ptr } %t150, ptr %l69
  br label %bb46
bb46:
  %t154 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t154, ptr %l67, !tbaa !27
  br label %bb49
bb47:
  %t155 = load i32, ptr %l70, !tbaa !23
  %t156 = ashr i32 %t155, 16
  %t158 = icmp eq i32 %t156, 1
  store i1 %t158, ptr %l72, !tbaa !21
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s6)
  br label %bb60
bb49:
  %t159 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t159, ptr %l7, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t162 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t160, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d116, i32 0, i32 1) })
  store i1 %t162, ptr %l74
  br label %bb50
bb50:
  %t163 = load i1, ptr %l74, !tbaa !21
  br i1 %t163, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s6)
  br label %bb60
bb52:
  br label %bb53
bb53:
  %t164 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t164, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d117, i32 0, i32 1) })
  store i1 %t166, ptr %l76
  br label %bb54
bb54:
  %t167 = load i1, ptr %l76, !tbaa !21
  br i1 %t167, label %bb55, label %bb56
bb55:
  %t168 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } %t168)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s6)
  br label %bb59
bb59:
  br label %bb45
bb60:
  %t173 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 3
  store ptr %t176, ptr %l81, !tbaa !29
  %t178 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t178, ptr %l83
  br label %bb61
bb61:
  %t179 = load ptr, ptr %l81, !tbaa !29
  %t180 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t181 = call i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %s0, ptr %t179, { i64, ptr } %t180)
  store i1 %t181, ptr %l84
  br label %bb62
bb62:
  %t182 = load i1, ptr %l84, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s0)
  %t186 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t186, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t187 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t187, ptr %l87, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t192 = sub i64 %t190, 4
  store i64 %t192, ptr %l90, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  store i64 %t194, ptr %l91, !tbaa !24
  %t195 = icmp sge i64 0, 0
  br i1 %t195, label %bb66, label %bb67
bb66:
  %t197 = load i64, ptr %l90, !tbaa !24
  %t198 = icmp sle i64 0, %t197
  br i1 %t198, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_710d0d27a6917125_e2a9a4f84e1a9609)
  unreachable
bb68:
  %t200 = load i64, ptr %l90, !tbaa !24
  %t201 = load i64, ptr %l91, !tbaa !24
  %t202 = icmp sle i64 %t200, %t201
  br i1 %t202, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_710d0d27a6917125_e2a9a4f84e1a9609)
  unreachable
bb70:
  %t204 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = load i64, ptr %l90, !tbaa !24
  %t207 = getelementptr i8, ptr %t205, i64 0
  %t208 = sub i64 %t206, 0
  %t209 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t207, 1
  store { i64, ptr } %t210, ptr %l96, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  store i64 %t213, ptr %l97, !tbaa !24
  %t214 = load i64, ptr %l97, !tbaa !24
  %t215 = mul i64 %t214, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t215)
  %t217 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  store { i64, ptr } %t218, ptr %l98, !tbaa !27
  %t219 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = load i64, ptr %l97, !tbaa !24
  %t224 = mul i64 %t223, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t220, ptr %t222, i64 %t224, i1 false)
  %t225 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t225, ptr %l96, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t226 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t227 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t226, 1
  store { i32, { i64, ptr } } %t227, ptr %rv
  br label %ret
bb71:
  call void @__olang_check_failed(ptr @olang_loc_710d0d27a6917125_e2a9a4f84e1a9609)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2escopeStem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/build:Config", ptr %a0, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v1, ptr %s0, { i64, ptr } %a1)
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  store { i64, ptr } %a2, ptr %l7, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = icmp sge i64 0, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = icmp sle i64 0, 20
  br i1 %t13, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_7c5ea528ee498e57_d3352394b494015b)
  unreachable
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp sle i64 20, %t15
  br i1 %t16, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_7c5ea528ee498e57_d3352394b494015b)
  unreachable
bb6:
  %t18 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 0
  %t21 = sub i64 20, 0
  %t22 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t38 = extractvalue { i64, ptr } %t23, 1
  %t39 = extractvalue { i64, ptr } %t23, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t25, i64 %t26)
  %t45 = getelementptr i8, ptr %t44, i64 %t26
  call void @olang_textcopy(ptr %t45, ptr %t27, i64 %t28)
  %t46 = getelementptr i8, ptr %t45, i64 %t28
  call void @olang_textcopy(ptr %t46, ptr %t31, i64 %t32)
  %t47 = getelementptr i8, ptr %t46, i64 %t32
  call void @olang_textcopy(ptr %t47, ptr %t34, i64 %t35)
  %t48 = getelementptr i8, ptr %t47, i64 %t35
  call void @olang_textcopy(ptr %t48, ptr %t38, i64 %t39)
  %t49 = getelementptr i8, ptr %t48, i64 %t39
  call void @olang_textcopy(ptr %t49, ptr %t41, i64 %t42)
  %t50 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t44, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_7c5ea528ee498e57_d3352394b494015b)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2esigLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l26 = alloca i32
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l45 = alloca i32
  %l48 = alloca { i64, ptr }
  %l53 = alloca i1
  %l57 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
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
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t4, i64 %t5, i32 0)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i64, ptr %l13, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t10, i64 %t11)
  store i64 %t14, ptr %l16
  br label %bb2
bb2:
  %t15 = load i64, ptr %l16, !tbaa !24
  store i64 %t15, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t16, 0
  br i1 %t18, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l20, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l21, !tbaa !24
  %t23 = load i64, ptr %l21, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l22, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t34, ptr %l20, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t35 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t39, i64 %t40)
  store i32 %t43, ptr %l26
  br label %bb6
bb6:
  %t44 = load i32, ptr %l26, !tbaa !23
  store i32 %t44, ptr %l4, !tbaa !23
  %t45 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t45, ptr %l27
  br label %bb7
bb7:
  %t46 = load %"std/prelude/text:StringBuilder", ptr %l27
  store %"std/prelude/text:StringBuilder" %t46, ptr %l5
  store ptr %l5, ptr %l28, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/load:Loader", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  store ptr %t56, ptr %l32, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t60, i64 %t61)
  store ptr %t64, ptr %l36
  br label %bb8
bb8:
  %t65 = load ptr, ptr %l36, !tbaa !29
  %t67 = getelementptr %"compiler/ast:Func", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  %t69 = load ptr, ptr %l32, !tbaa !29
  %t71 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t69, i32 %t68)
  store { i64, ptr } %t71, ptr %l39
  br label %bb9
bb9:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 18
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l43
  br label %bb10
bb10:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t79, i32 0, i32 4
  %t82 = getelementptr %"compiler/source:Span", ptr %t81, i32 0, i32 0
  %t83 = load i32, ptr %t82, !tbaa !23
  store i32 %t83, ptr %l45, !tbaa !23
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l4, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s0, ptr %t84, i32 %t85)
  store { i64, ptr } %t88, ptr %l48
  br label %bb11
bb11:
  %t89 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t91 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = add i64 %t90, %t93
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t97 = add i64 %t94, %t96
  %t98 = load i32, ptr %l45, !tbaa !23
  %t99 = sext i32 %t98 to i64
  %t100 = call i64 @__olang_fmt_i64(ptr null, i64 %t99)
  %t101 = add i64 %t97, %t100
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = add i64 %t104, %t107
  %t109 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t89, i64 %t90)
  %t110 = getelementptr i8, ptr %t109, i64 %t90
  call void @olang_textcopy(ptr %t110, ptr %t92, i64 %t93)
  %t111 = getelementptr i8, ptr %t110, i64 %t93
  call void @olang_textcopy(ptr %t111, ptr %t95, i64 %t96)
  %t112 = getelementptr i8, ptr %t111, i64 %t96
  %t113 = call i64 @__olang_fmt_i64(ptr %t112, i64 %t99)
  %t114 = getelementptr i8, ptr %t112, i64 %t100
  call void @olang_textcopy(ptr %t114, ptr %t102, i64 %t103)
  %t115 = getelementptr i8, ptr %t114, i64 %t103
  call void @olang_textcopy(ptr %t115, ptr %t106, i64 %t107)
  %t116 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t109, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t125 = load ptr, ptr %l28, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t125, { i64, ptr } %t124)
  br label %bb12
bb12:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i32, ptr %l4, !tbaa !23
  %t131 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %t127, i32 %t128)
  store i1 %t131, ptr %l53
  br label %bb13
bb13:
  %t132 = load i1, ptr %l53, !tbaa !21
  br i1 %t132, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) })
  br label %bb16
bb15:
  br label %bb27
bb16:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  store ptr %t139, ptr %l57, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l3, !tbaa !24
  %t144 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %t140, i64 %t141)
  store i32 %t144, ptr %l60
  br label %bb17
bb17:
  %t145 = load ptr, ptr %l57, !tbaa !29
  %t146 = load i32, ptr %l60, !tbaa !23
  %t147 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t145, i32 %t146)
  store { i64, ptr } %t147, ptr %l61
  br label %bb18
bb18:
  %t148 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t148, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t149, 0
  store i64 %t151, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  %t153 = load i64, ptr %l7, !tbaa !24
  %t154 = load i64, ptr %l8, !tbaa !24
  %t157 = icmp slt i64 %t153, %t154
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t161 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t161, ptr %l68, !tbaa !27
  %t162 = load i64, ptr %l7, !tbaa !24
  %t164 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr i32, ptr %t165, i64 %t162
  %t167 = load i32, ptr %t166, !tbaa !33
  store ptr %l5, ptr %l71, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t173 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s5, ptr %t169, i32 %t167)
  store { i64, ptr } %t173, ptr %l74
  br label %bb23
bb23:
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t176 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t179)
  call void @olang_textcopy(ptr %t180, ptr %t174, i64 %t175)
  %t181 = getelementptr i8, ptr %t180, i64 %t175
  call void @olang_textcopy(ptr %t181, ptr %t177, i64 %t178)
  %t182 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load ptr, ptr %l71, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t191, { i64, ptr } %t190)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb25:
  %t193 = load i64, ptr %l7, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l7, !tbaa !24
  br label %bb19
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb27:
  %t198 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l5)
  store { i64, ptr } %t198, ptr %l80
  br label %bb28
bb28:
  %t199 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  %t202 = extractvalue { i64, ptr } %t199, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, ptr %l83, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t210 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, ptr %s0, ptr %v1, { i64, ptr } %t206, { i64, ptr } %t208, { i64, ptr } %t209)
  store { i64, ptr } %t210, ptr %l85
  br label %bb29
bb29:
  %t211 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  store i64 %t212, ptr %l86, !tbaa !24
  %t213 = load i64, ptr %l86, !tbaa !24
  %t214 = mul i64 %t213, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t214)
  %t216 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  store { i64, ptr } %t217, ptr %l87, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = load i64, ptr %l86, !tbaa !24
  %t223 = mul i64 %t222, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t219, ptr %t221, i64 %t223, i1 false)
  %t224 = load { i64, ptr }, ptr %l87, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t224, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2frecords_2esumOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %t4)
  store i64 %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = call i64 @__olang_fmt_i64(ptr null, i64 %t8)
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = call i64 @__olang_fmt_u64(ptr null, i64 %t7)
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t15)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t8)
  %t18 = getelementptr i8, ptr %t16, i64 %t9
  call void @olang_textcopy(ptr %t18, ptr %t10, i64 %t11)
  %t19 = getelementptr i8, ptr %t18, i64 %t11
  %t20 = call i64 @__olang_fmt_u64(ptr %t19, i64 %t7)
  %t21 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t16, 1
  store { i64, ptr } %t22, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@.d0 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
declare void @__olang_errpay_pop()
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" prof" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" listing" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" fuzz" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" bench" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" checked" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.c17 = private unnamed_addr constant [5 x i8] c"true\00"
@.c18 = private unnamed_addr constant [6 x i8] c"false\00"
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
@.d19 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"olang: incremental check: " }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d21 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"olang: incremental check: " }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d23 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" kept summaries differ\0A" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/rec" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/rec/" }>, align 8
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
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/rec" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d30 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"olang front record\0A" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d33 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"body " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"end\0A" }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sum " }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/rec" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"olang scope record\0A" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"end\0A" }>, align 8
@.d47 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sum " }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"\0Aroot " }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"embed " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define internal i1 @olang_lambda_61(ptr %env, i64 %a0, i64 %a1) #0 {
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

@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@.d67 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"OLANG_CHECKINCR" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/rec" }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d74 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/rec/" }>, align 8
@.d75 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Arun " }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define internal i1 @olang_lambda_78(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:Cand"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:Cand"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/views:Cand", ptr %a0
  store %"compiler/views:Cand" %t2, ptr %l1
  %t3 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/views:Cand", ptr %l1
  store %"compiler/views:Cand" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:Cand", ptr %rv
  ret %"compiler/views:Cand" %rr
}

@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d82 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c": found '" }>, align 8
@.d83 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"', not in its record" }>, align 8
@.d84 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c": its record says '" }>, align 8
@.d85 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"', not found" }>, align 8
@.d86 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Asum " }>, align 8
@.d87 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"olang front record" }>, align 8
@.d88 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"end" }>, align 8
@.d89 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"read " }>, align 8
@.d90 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"body " }>, align 8
@.d91 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sig " }>, align 8
@.d92 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"baked " }>, align 8
@.d93 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/rec/" }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d95 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".f" }>, align 8
@.d96 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"0123456789abcdef" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Blob"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 272, i1 false)
  %t2 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d101 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d103 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d108 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" mutable" }>, align 8
@.d109 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d110 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"baked " }>, align 8
@.d111 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define internal i1 @olang_lambda_112(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d113 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"\0Aend\0Asum " }>, align 8
@.d114 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"olang scope record\0A" }>, align 8
@.d115 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"end\0A" }>, align 8
@.d116 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"run " }>, align 8
@.d117 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"read " }>, align 8
@.d118 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/rec/" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d120 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".s" }>, align 8
@.d121 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d122 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sig " }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d125 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ?" }>, align 8
@.d126 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d129 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cU8_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0) #0 {
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

declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eFingerprint(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_fb666446bedbe7d2_84e447b691c6d3de = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_323c52581f8b1abf_a440e4b95536001b = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9c5452f20d69d8c2_bc172545126ff01e = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2ePush_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:Cand" %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H4aa8749bc5cf37a88c7557cdc2f2204a(ptr %v0, ptr %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2ePid()
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H5a6cbfc85b925203d0895958ef20509b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f22b8e51d216f7bc_367675fc034647b8 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRecords(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H0211835ad1df5edc8086b9b7bc878d6e(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_54f44bc773787685_bd98309550db61e1 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
@olang_loc_8d034036672d852_5fe6d572cc7f08a6 = external constant [0 x i8]
@olang_loc_55114c4c1f153b47_5d38716d9a9c2c3b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_9658ab26a60a31a4_8c8d053bf8a13660 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbedded(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_7fdbfc0a8c76ca86_bcbf652a9859a812 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
@olang_loc_e43862288177251d_fb6c75927359cd1 = external constant [0 x i8]
@olang_loc_a76cbf7a9d10d270_529613b09bcc6ec4 = external constant [0 x i8]
@olang_loc_d3dcf2152ecae513_fab39bd20b114ba7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_4e9604c680c7b950_9ac30b55dba7b9c = external constant [0 x i8]
@olang_loc_5b539dac05fcd02d_94c517b58e4a7909 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_c66c474bbb96a3ce_87152442c6a85c6a = external constant [0 x i8]
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eAddRecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fiterator_2estd_2fprelude_2ftext_3aLineIter_2eToVec_3cstd_2fprelude_2ftex_H26ca3914517df8db224f03300752057f(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/views:Cand" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eAt_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_74134b5dcc105c42_96a34be2631e3c86 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_9fb4ac3de319e3f_96fac2b32e45e763 = external constant [0 x i8]
declare %"compiler/views:Cand" @compiler_2fviews_3aCand_2ector(ptr %v0, i64 %a0)
@olang_loc_d6e69897ddbacd4_85b5c87fc3d2b148 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_fd09710337ae8082_2072ce3b20906616 = external constant [0 x i8]
@olang_loc_2727131baf418fd5_a166bfe6a37b2109 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H22169a789cb544431edc747dee234bd5(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2feval_3aImage_3_Hb70b8ba6c3e879cab72ad6295e03d3b2(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_56acc6c2cad66900_a164af229476b69c = external constant [0 x i8]
@olang_loc_c9a03e1a2ccd76e3_8f1e713d9da8bd47 = external constant [0 x i8]
@olang_loc_c948c74961a5cc06_d4f9b1858678796a = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_710d0d27a6917125_e2a9a4f84e1a9609 = external constant [0 x i8]
@olang_loc_7c5ea528ee498e57_d3352394b494015b = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
