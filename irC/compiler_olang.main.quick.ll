source_filename = "compiler_olang.main.quick.ll"
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
%"compiler/olang:CommandLine" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, { i64, ptr } }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/build:Unit" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/emit:Object" = type { { i64, ptr }, i32, { i64, ptr }, i64 }
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/views:Kept" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/interp:Exec" = type { ptr, ptr, i32, %"compiler/lower:Lowerer", %"compiler/eval:Machine", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/check:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/olang:Passes" = type { i64 }
%"compiler/views:Cand" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"<sys/resource.h>:rlimit" = type { i64, i64 }
%"compiler/emit:Reused" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" = type { i64, %"compiler/eval:Image" }
%"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" = type { i64, { i64, ptr } }
%"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:Placement" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" = type { i64, %"compiler/scope:fnRecs" }
%"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:fnRecs" }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
@G_2ecompiler_2folang_2eApi = constant <{ [8 x i8] }> <{ [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eBindgen = constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eBuild = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eCompile = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eDoc = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eExplain = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eFix = constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eFormat = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eHelp = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eInterp = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eLsp = constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eMcp = constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eModeUsage = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\2A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k1, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k2, [8 x i8] c"\24\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k3, [8 x i8] c"\24\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k4, [8 x i8] c"\34\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k5, [8 x i8] c"\26\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k6, [8 x i8] c"\52\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k7, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k8, [8 x i8] c"\43\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k9, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k10, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k11, [8 x i8] c"\27\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k12, [8 x i8] c"\22\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k13, [8 x i8] c"\32\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k14, [8 x i8] c"\20\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeUsage.k15 }>, align 64
@G_2ecompiler_2folang_2eModeUsage.k1 = internal constant <{ [42 x i8] }> <{ [42 x i8] c"\6F\6C\61\6E\67\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\5B\41\52\47\55\4D\45\4E\54\2E\2E\2E\5D" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k2 = internal constant <{ [34 x i8] }> <{ [34 x i8] c"\6F\6C\61\6E\67\20\62\75\69\6C\64\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k3 = internal constant <{ [36 x i8] }> <{ [36 x i8] c"\6F\6C\61\6E\67\20\63\6F\6D\70\69\6C\65\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k4 = internal constant <{ [36 x i8] }> <{ [36 x i8] c"\6F\6C\61\6E\67\20\74\65\73\74\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\2E\2E\2E" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k5 = internal constant <{ [52 x i8] }> <{ [52 x i8] c"\6F\6C\61\6E\67\20\69\6E\74\65\72\70\72\65\74\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\5B\41\52\47\55\4D\45\4E\54\2E\2E\2E\5D" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k6 = internal constant <{ [38 x i8] }> <{ [38 x i8] c"\6F\6C\61\6E\67\20\66\6F\72\6D\61\74\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\2E\2E\2E" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k7 = internal constant <{ [82 x i8] }> <{ [82 x i8] c"\6F\6C\61\6E\67\20\65\78\70\6C\61\69\6E\20\52\55\4C\45\20\7C\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\4E\41\4D\45\20\7C\20\2D\63\61\70\73\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\7C\20\2D\61\73\6D\7C\2D\69\72\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\4E\41\4D\45" }>, align 64
@G_2ecompiler_2folang_2eModeUsage.k8 = internal constant <{ [17 x i8] }> <{ [17 x i8] c"\6F\6C\61\6E\67\20\68\65\6C\70\20\5B\4D\4F\44\45\5D" }>, align 8
@G_2ecompiler_2folang_2eModeUsage.k9 = internal constant <{ [67 x i8] }> <{ [67 x i8] c"\6F\6C\61\6E\67\20\64\6F\63\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\5B\4E\41\4D\45\5D\20\7C\20\2D\68\74\6D\6C\20\44\49\52\20\5B\46\49\4C\45\2E\6F\6C\61\6E\67\2E\2E\2E\5D" }>, align 64
@G_2ecompiler_2folang_2eModeUsage.k10 = internal constant <{ [21 x i8] }> <{ [21 x i8] c"\6F\6C\61\6E\67\20\6C\73\70\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D" }>, align 8
@G_2ecompiler_2folang_2eModeUsage.k11 = internal constant <{ [21 x i8] }> <{ [21 x i8] c"\6F\6C\61\6E\67\20\6D\63\70\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D" }>, align 8
@G_2ecompiler_2folang_2eModeUsage.k12 = internal constant <{ [39 x i8] }> <{ [39 x i8] c"\6F\6C\61\6E\67\20\66\69\78\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\7C\44\49\52\2E\2E\2E" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k13 = internal constant <{ [34 x i8] }> <{ [34 x i8] c"\6F\6C\61\6E\67\20\62\69\6E\64\67\65\6E\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\48\45\41\44\45\52\2E\68" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k14 = internal constant <{ [50 x i8] }> <{ [50 x i8] c"\6F\6C\61\6E\67\20\70\72\6F\66\69\6C\65\20\5B\4F\50\54\49\4F\4E\2E\2E\2E\5D\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\5B\41\52\47\55\4D\45\4E\54\2E\2E\2E\5D" }>, align 32
@G_2ecompiler_2folang_2eModeUsage.k15 = internal constant <{ [32 x i8] }> <{ [32 x i8] c"\6F\6C\61\6E\67\20\61\70\69\20\4F\4C\44\20\4E\45\57\20\46\49\4C\45\2E\6F\6C\61\6E\67\7C\44\49\52" }>, align 32
@G_2ecompiler_2folang_2eModeWhat = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\6A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k1, [8 x i8] c"\40\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k2, [8 x i8] c"\36\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k3, [8 x i8] c"\3E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k4, [8 x i8] c"\6E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k5, [8 x i8] c"\2E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k6, [8 x i8] c"\8C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k7, [8 x i8] c"\24\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k8, [8 x i8] c"\44\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k9, [8 x i8] c"\57\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k10, [8 x i8] c"\54\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k11, [8 x i8] c"\74\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k12, [8 x i8] c"\4C\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k13, [8 x i8] c"\B4\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k14, [8 x i8] c"\A7\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWhat.k15 }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k1 = internal constant <{ [106 x i8] }> <{ [106 x i8] c"\62\75\69\6C\64\73\20\74\68\65\20\70\72\6F\67\72\61\6D\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\69\73\20\74\68\65\20\72\6F\6F\74\20\6F\66\2C\20\61\73\20\62\75\69\6C\64\20\64\6F\65\73\2C\20\61\6E\64\20\72\75\6E\73\20\69\74\20\77\69\74\68\20\74\68\65\20\61\72\67\75\6D\65\6E\74\73\20\61\66\74\65\72\20\74\68\65\20\66\69\6C\65" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k2 = internal constant <{ [64 x i8] }> <{ [64 x i8] c"\62\75\69\6C\64\73\20\6F\6E\65\20\70\72\6F\67\72\61\6D\2C\20\46\49\4C\45\2E\6F\6C\61\6E\67\20\69\74\73\20\72\6F\6F\74\20\6D\6F\64\75\6C\65\2C\20\69\6E\74\6F\20\62\75\69\6C\64\2F\20\28\42\33\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k3 = internal constant <{ [54 x i8] }> <{ [54 x i8] c"\63\6F\6D\70\69\6C\65\73\20\6F\6E\65\20\6D\6F\64\75\6C\65\20\74\6F\20\61\6E\20\6F\62\6A\65\63\74\2C\20\6C\69\6E\6B\69\6E\67\20\6E\6F\74\68\69\6E\67\20\28\42\32\29" }>, align 32
@G_2ecompiler_2folang_2eModeWhat.k4 = internal constant <{ [62 x i8] }> <{ [62 x i8] c"\72\75\6E\73\20\65\61\63\68\20\66\69\6C\65\27\73\20\74\65\73\74\20\62\6C\6F\63\6B\73\2C\20\65\61\63\68\20\66\69\6C\65\20\62\75\69\6C\74\20\6F\6E\20\69\74\73\20\6F\77\6E\20\28\42\33\61\29" }>, align 32
@G_2ecompiler_2folang_2eModeWhat.k5 = internal constant <{ [110 x i8] }> <{ [110 x i8] c"\72\75\6E\73\20\74\68\65\20\70\72\6F\67\72\61\6D\20\62\79\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\69\6E\73\74\65\61\64\20\6F\66\20\62\75\69\6C\64\69\6E\67\20\69\74\2C\20\74\68\65\20\61\72\67\75\6D\65\6E\74\73\20\61\66\74\65\72\20\74\68\65\20\66\69\6C\65\20\69\74\73\20\6F\77\6E\20\28\42\33\65\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k6 = internal constant <{ [46 x i8] }> <{ [46 x i8] c"\72\65\77\72\69\74\65\73\20\65\61\63\68\20\66\69\6C\65\20\69\6E\20\6F\6C\61\6E\67\27\73\20\6F\6E\65\20\6C\61\79\6F\75\74\20\28\42\31\33\29" }>, align 32
@G_2ecompiler_2folang_2eModeWhat.k7 = internal constant <{ [140 x i8] }> <{ [140 x i8] c"\70\72\69\6E\74\73\20\61\20\72\75\6C\65\20\6F\66\20\74\68\65\20\73\70\65\63\69\66\69\63\61\74\69\6F\6E\20\28\42\31\31\61\29\2C\20\61\20\74\6F\70\2D\6C\65\76\65\6C\20\69\74\65\6D\20\61\73\20\74\68\65\20\63\6F\6D\70\69\6C\65\72\20\73\65\65\73\20\69\74\20\28\42\31\31\62\29\2C\20\6F\72\20\61\20\66\75\6E\63\74\69\6F\6E\27\73\20\63\6F\64\65\20\61\73\20\62\75\69\6C\64\20\63\6F\6D\70\69\6C\65\73\20\69\74\20\28\42\31\31\64\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k8 = internal constant <{ [36 x i8] }> <{ [36 x i8] c"\6C\69\73\74\73\20\74\68\65\20\6D\6F\64\65\73\2C\20\6F\72\20\61\20\6D\6F\64\65\27\73\20\6F\70\74\69\6F\6E\73" }>, align 32
@G_2ecompiler_2folang_2eModeWhat.k9 = internal constant <{ [68 x i8] }> <{ [68 x i8] c"\70\72\69\6E\74\73\20\61\20\6D\6F\64\75\6C\65\27\73\20\64\6F\63\75\6D\65\6E\74\61\74\69\6F\6E\20\28\42\31\34\29\2C\20\6F\72\20\77\72\69\74\65\73\20\61\20\6C\69\62\72\61\72\79\27\73\20\61\73\20\48\54\4D\4C" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k10 = internal constant <{ [87 x i8] }> <{ [87 x i8] c"\73\65\72\76\65\73\20\74\68\65\20\4C\61\6E\67\75\61\67\65\20\53\65\72\76\65\72\20\50\72\6F\74\6F\63\6F\6C\20\6F\6E\20\74\68\65\20\73\74\61\6E\64\61\72\64\20\69\6E\70\75\74\20\61\6E\64\20\6F\75\74\70\75\74\2C\20\66\6F\72\20\65\64\69\74\6F\72\73\20\28\42\31\35\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k11 = internal constant <{ [84 x i8] }> <{ [84 x i8] c"\73\65\72\76\65\73\20\74\68\65\20\4D\6F\64\65\6C\20\43\6F\6E\74\65\78\74\20\50\72\6F\74\6F\63\6F\6C\20\6F\6E\20\74\68\65\20\73\74\61\6E\64\61\72\64\20\69\6E\70\75\74\20\61\6E\64\20\6F\75\74\70\75\74\2C\20\66\6F\72\20\61\67\65\6E\74\73\20\28\42\31\36\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k12 = internal constant <{ [116 x i8] }> <{ [116 x i8] c"\72\65\77\72\69\74\65\73\20\6F\6C\64\20\63\6F\64\65\20\74\6F\20\74\68\65\20\6C\61\6E\67\75\61\67\65\20\6F\66\20\74\6F\64\61\79\3A\20\65\76\65\72\79\20\6D\69\67\72\61\74\69\6F\6E\20\74\6F\6F\6C\20\6F\66\20\74\6F\6F\6C\73\2F\2C\20\69\6E\20\74\68\65\20\6F\72\64\65\72\20\74\68\65\20\63\68\61\6E\67\65\73\20\77\65\72\65\20\6D\61\64\65\20\28\42\31\37\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k13 = internal constant <{ [76 x i8] }> <{ [76 x i8] c"\77\72\69\74\65\73\20\61\20\43\20\68\65\61\64\65\72\27\73\20\64\65\63\6C\61\72\61\74\69\6F\6E\73\20\61\73\20\6F\6C\61\6E\67\20\64\65\63\6C\61\72\65\73\20\74\68\65\6D\2C\20\72\65\61\64\20\62\79\20\63\6C\61\6E\67\20\28\58\31\36\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k14 = internal constant <{ [180 x i8] }> <{ [180 x i8] c"\62\75\69\6C\64\73\20\74\68\65\20\70\72\6F\67\72\61\6D\20\77\69\74\68\20\61\20\73\61\6D\70\6C\69\6E\67\20\70\72\6F\66\69\6C\65\72\2C\20\72\75\6E\73\20\69\74\20\77\69\74\68\20\74\68\65\20\61\72\67\75\6D\65\6E\74\73\20\61\66\74\65\72\20\74\68\65\20\66\69\6C\65\2C\20\61\6E\64\20\72\65\70\6F\72\74\73\20\77\68\65\72\65\20\69\74\73\20\74\69\6D\65\20\77\65\6E\74\2C\20\77\69\74\68\20\61\20\66\6C\61\6D\65\20\67\72\61\70\68\20\28\42\32\30\3B\20\69\6E\74\65\72\70\72\65\74\27\73\20\72\75\6E\73\20\61\72\65\20\6E\6F\74\20\70\72\6F\66\69\6C\65\64\29" }>, align 64
@G_2ecompiler_2folang_2eModeWhat.k15 = internal constant <{ [167 x i8] }> <{ [167 x i8] c"\6C\69\73\74\73\20\77\68\61\74\20\61\20\6D\6F\64\75\6C\65\27\73\20\65\78\70\6F\72\74\65\64\20\69\6E\74\65\72\66\61\63\65\20\67\61\69\6E\65\64\2C\20\6C\6F\73\74\20\61\6E\64\20\63\68\61\6E\67\65\64\20\62\65\74\77\65\65\6E\20\74\77\6F\20\76\65\72\73\69\6F\6E\73\20\2D\20\63\6F\6D\6D\69\74\73\20\6F\72\20\64\69\72\65\63\74\6F\72\69\65\73\20\2D\20\65\61\63\68\20\63\68\61\6E\67\65\20\6D\61\72\6B\65\64\20\61\73\20\62\72\65\61\6B\69\6E\67\20\69\6D\70\6F\72\74\65\72\73\20\6F\72\20\6E\6F\74\20\28\42\32\31\29" }>, align 64
@G_2ecompiler_2folang_2eModeWords = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k1, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k2, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k3, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k4, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k5, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k6, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k8, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k10, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k11, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k12, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k13, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k14, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eModeWords.k15 }>, align 64
@G_2ecompiler_2folang_2eModeWords.k1 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eModeWords.k2 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\62\75\69\6C\64" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k3 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\63\6F\6D\70\69\6C\65" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k4 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\74\65\73\74" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k5 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\69\6E\74\65\72\70\72\65\74" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k6 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\66\6F\72\6D\61\74" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k7 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\65\78\70\6C\61\69\6E" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\68\65\6C\70" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k9 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\64\6F\63" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6C\73\70" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k11 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\6D\63\70" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k12 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\66\69\78" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k13 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\62\69\6E\64\67\65\6E" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k14 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\70\72\6F\66\69\6C\65" }>, align 8
@G_2ecompiler_2folang_2eModeWords.k15 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\61\70\69" }>, align 8
@G_2ecompiler_2folang_2eOptModes = constant <{ [152 x i8] }> <{ [152 x i8] c"\06\30\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\5F\07\00\00\00\00\00\00\5F\27\00\00\00\00\00\00\5F\27\00\00\00\00\00\00\20\08\00\00\00\00\00\00\4F\20\00\00\00\00\00\00\00\01\00\00\00\00\00\00\02\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2folang_2eOptValues = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k1, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k2, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k3, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k4, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k5, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k6, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k7, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k8, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k9, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k10, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k11, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k12, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k13, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k14, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k15, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k16, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k17, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k18, [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptValues.k19 }>, align 64
@G_2ecompiler_2folang_2eOptValues.k1 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\50\41\54\48" }>, align 8
@G_2ecompiler_2folang_2eOptValues.k2 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k3 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k4 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k5 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\4E\41\4D\45" }>, align 8
@G_2ecompiler_2folang_2eOptValues.k6 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\4E\61\6D\65\3D\76\61\6C\75\65" }>, align 8
@G_2ecompiler_2folang_2eOptValues.k7 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k8 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k9 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k10 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\44\49\52" }>, align 8
@G_2ecompiler_2folang_2eOptValues.k11 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k12 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k13 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\4E\41\4D\45" }>, align 8
@G_2ecompiler_2folang_2eOptValues.k14 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\53\45\43\4F\4E\44\53" }>, align 8
@G_2ecompiler_2folang_2eOptValues.k15 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k16 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k17 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k18 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptValues.k19 = internal constant <{  }> <{  }>, align 8
@G_2ecompiler_2folang_2eOptWhat = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\6A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k1, [8 x i8] c"\35\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k2, [8 x i8] c"\28\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k3, [8 x i8] c"\25\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k4, [8 x i8] c"\20\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k5, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k6, [8 x i8] c"\55\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k7, [8 x i8] c"\59\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k8, [8 x i8] c"\60\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k9, [8 x i8] c"\6D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k10, [8 x i8] c"\53\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k11, [8 x i8] c"\8A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k12, [8 x i8] c"\6E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k13, [8 x i8] c"\2D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k14, [8 x i8] c"\6F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k15, [8 x i8] c"\78\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k16, [8 x i8] c"\7D\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k17, [8 x i8] c"\65\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k18, [8 x i8] c"\5E\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWhat.k19 }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k1 = internal constant <{ [106 x i8] }> <{ [106 x i8] c"\77\72\69\74\65\73\20\74\68\65\20\65\78\65\63\75\74\61\62\6C\65\2C\20\74\68\65\20\6F\62\6A\65\63\74\2C\20\62\69\6E\64\67\65\6E\27\73\20\64\65\63\6C\61\72\61\74\69\6F\6E\73\20\6F\72\20\70\72\6F\66\69\6C\65\27\73\20\66\6C\61\6D\65\20\67\72\61\70\68\20\74\6F\20\50\41\54\48\20\28\42\33\68\2C\20\58\31\36\2C\20\42\32\30\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k2 = internal constant <{ [53 x i8] }> <{ [53 x i8] c"\62\75\69\6C\64\73\20\75\6E\6F\70\74\69\6D\69\7A\65\64\2C\20\77\69\74\68\20\64\65\62\75\67\20\69\6E\66\6F\72\6D\61\74\69\6F\6E\20\28\42\32\63\2C\20\42\32\65\29" }>, align 32
@G_2ecompiler_2folang_2eOptWhat.k3 = internal constant <{ [40 x i8] }> <{ [40 x i8] c"\62\75\69\6C\64\73\20\77\69\74\68\20\74\68\65\20\64\61\74\61\20\72\61\63\65\20\64\65\74\65\63\74\6F\72\20\28\42\32\62\29" }>, align 32
@G_2ecompiler_2folang_2eOptWhat.k4 = internal constant <{ [37 x i8] }> <{ [37 x i8] c"\62\75\69\6C\64\73\20\77\69\74\68\20\74\68\65\20\73\63\6F\70\65\20\73\61\6E\69\74\69\7A\65\72\20\28\42\32\66\29" }>, align 32
@G_2ecompiler_2folang_2eOptWhat.k5 = internal constant <{ [32 x i8] }> <{ [32 x i8] c"\62\75\69\6C\64\73\20\66\6F\72\20\61\6E\6F\74\68\65\72\20\6D\61\63\68\69\6E\65\20\28\42\31\32\29" }>, align 32
@G_2ecompiler_2folang_2eOptWhat.k6 = internal constant <{ [30 x i8] }> <{ [30 x i8] c"\64\65\66\69\6E\65\73\20\61\20\62\75\69\6C\64\20\63\6F\6E\73\74\61\6E\74\20\28\42\31\30\29" }>, align 8
@G_2ecompiler_2folang_2eOptWhat.k7 = internal constant <{ [85 x i8] }> <{ [85 x i8] c"\6D\6F\76\65\73\20\74\68\65\20\72\65\6D\6F\74\65\20\72\65\70\6F\73\69\74\6F\72\69\65\73\20\74\68\65\20\62\75\69\6C\64\20\72\65\61\63\68\65\73\20\74\6F\20\74\68\65\69\72\20\72\65\66\73\27\20\63\75\72\72\65\6E\74\20\63\6F\6D\6D\69\74\73\20\28\4D\32\33\63\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k8 = internal constant <{ [89 x i8] }> <{ [89 x i8] c"\72\65\77\72\69\74\65\73\20\6E\6F\74\68\69\6E\67\3A\20\6C\69\73\74\73\20\65\61\63\68\20\66\69\6C\65\20\6E\6F\74\20\69\6E\20\74\68\65\20\6C\61\79\6F\75\74\20\28\42\31\33\29\2C\20\6F\72\20\74\68\61\74\20\66\69\78\20\77\6F\75\6C\64\20\63\68\61\6E\67\65\20\28\42\31\37\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k9 = internal constant <{ [96 x i8] }> <{ [96 x i8] c"\62\75\69\6C\64\73\20\66\6F\72\20\64\65\76\65\6C\6F\70\6D\65\6E\74\3A\20\2D\4F\32\20\77\69\74\68\6F\75\74\20\6C\69\6E\6B\2D\74\69\6D\65\20\6F\70\74\69\6D\69\7A\61\74\69\6F\6E\2C\20\66\61\73\74\65\72\20\74\6F\20\62\75\69\6C\64\2C\20\73\6C\6F\77\65\72\20\74\6F\20\72\75\6E\20\28\42\32\67\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k10 = internal constant <{ [109 x i8] }> <{ [109 x i8] c"\77\72\69\74\65\73\20\74\68\65\20\64\6F\63\75\6D\65\6E\74\61\74\69\6F\6E\20\61\73\20\48\54\4D\4C\20\69\6E\74\6F\20\44\49\52\2C\20\61\20\70\61\67\65\20\61\20\6D\6F\64\75\6C\65\3A\20\6F\66\20\65\61\63\68\20\46\49\4C\45\2C\20\6F\72\20\6F\66\20\73\74\64\20\77\68\65\72\65\20\6E\6F\6E\65\20\69\73\20\6E\61\6D\65\64\20\28\42\31\34\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k11 = internal constant <{ [83 x i8] }> <{ [83 x i8] c"\62\75\69\6C\64\73\20\61\20\73\68\61\72\65\64\20\6C\69\62\72\61\72\79\20\6C\69\62\4E\41\4D\45\2E\73\6F\20\6F\66\20\74\68\65\20\65\78\70\6F\72\74\20\66\6E\73\2C\20\61\6E\64\20\69\74\73\20\43\20\68\65\61\64\65\72\20\4E\41\4D\45\2E\68\20\28\58\31\34\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k12 = internal constant <{ [138 x i8] }> <{ [138 x i8] c"\72\65\70\6F\72\74\73\20\74\68\65\20\70\6C\61\63\65\73\20\74\68\61\74\20\6B\65\65\70\20\77\68\61\74\20\74\68\65\79\20\6C\65\74\20\67\6F\20\6F\66\20\75\6E\74\69\6C\20\74\68\65\69\72\20\73\63\6F\70\65\20\63\6C\6F\73\65\73\2C\20\61\6E\64\20\77\68\79\2C\20\61\6E\64\20\74\68\65\20\73\74\6F\72\61\67\65\20\62\75\69\6C\74\20\77\68\65\72\65\20\61\20\76\69\65\77\20\6F\66\20\69\74\20\69\73\20\6B\65\70\74\20\28\42\31\38\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k13 = internal constant <{ [110 x i8] }> <{ [110 x i8] c"\66\75\7A\7A\65\73\20\74\68\65\20\6F\6E\65\20\74\65\73\74\20\4E\41\4D\45\20\6E\61\6D\65\73\20\28\61\73\20\74\65\73\74\27\73\20\77\6F\72\64\73\20\64\6F\29\20\77\69\74\68\20\6C\69\62\46\75\7A\7A\65\72\2C\20\66\61\69\6C\69\6E\67\20\69\6E\70\75\74\73\20\73\61\76\65\64\20\62\65\73\69\64\65\20\74\68\65\20\66\69\6C\65\20\28\42\31\39\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k14 = internal constant <{ [45 x i8] }> <{ [45 x i8] c"\77\69\74\68\20\2D\66\75\7A\7A\3A\20\73\74\6F\70\73\20\66\75\7A\7A\69\6E\67\20\61\66\74\65\72\20\53\45\43\4F\4E\44\53\20\28\42\31\39\29" }>, align 32
@G_2ecompiler_2folang_2eOptWhat.k15 = internal constant <{ [111 x i8] }> <{ [111 x i8] c"\70\72\69\6E\74\73\20\77\68\61\74\20\65\61\63\68\20\6D\6F\64\75\6C\65\20\74\68\65\20\70\72\6F\67\72\61\6D\20\6C\6F\61\64\73\20\6D\61\79\20\72\65\61\63\68\20\2D\20\66\69\6C\65\73\2C\20\6E\65\74\77\6F\72\6B\2C\20\70\72\6F\63\65\73\73\65\73\2C\20\65\6E\76\69\72\6F\6E\6D\65\6E\74\2C\20\74\68\72\65\61\64\73\2C\20\43\20\28\42\31\31\63\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k16 = internal constant <{ [120 x i8] }> <{ [120 x i8] c"\70\72\69\6E\74\73\20\61\20\66\75\6E\63\74\69\6F\6E\27\73\20\6D\61\63\68\69\6E\65\20\63\6F\64\65\20\61\73\20\62\75\69\6C\64\20\63\6F\6D\70\69\6C\65\73\20\69\74\2C\20\69\74\73\20\73\6F\75\72\63\65\20\6C\69\6E\65\73\20\61\6E\64\20\4C\4C\56\4D\27\73\20\6F\70\74\69\6D\69\7A\61\74\69\6F\6E\20\72\65\6D\61\72\6B\73\20\62\65\73\69\64\65\20\69\74\20\28\42\31\31\64\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k17 = internal constant <{ [125 x i8] }> <{ [125 x i8] c"\70\72\69\6E\74\73\20\61\20\66\75\6E\63\74\69\6F\6E\27\73\20\6F\70\74\69\6D\69\7A\65\64\20\4C\4C\56\4D\20\49\52\20\61\73\20\62\75\69\6C\64\20\63\6F\6D\70\69\6C\65\73\20\69\74\2C\20\69\74\73\20\73\6F\75\72\63\65\20\6C\69\6E\65\73\20\61\6E\64\20\4C\4C\56\4D\27\73\20\6F\70\74\69\6D\69\7A\61\74\69\6F\6E\20\72\65\6D\61\72\6B\73\20\62\65\73\69\64\65\20\69\74\20\28\42\31\31\64\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k18 = internal constant <{ [101 x i8] }> <{ [101 x i8] c"\72\75\6E\73\20\74\68\65\20\74\65\73\74\73\20\62\79\20\63\6F\6D\70\69\6C\65\2D\74\69\6D\65\20\65\76\61\6C\75\61\74\69\6F\6E\20\69\6E\73\74\65\61\64\20\6F\66\20\62\75\69\6C\64\69\6E\67\20\74\68\65\6D\2C\20\61\73\20\69\6E\74\65\72\70\72\65\74\20\72\75\6E\73\20\61\20\70\72\6F\67\72\61\6D\20\28\42\33\65\29" }>, align 64
@G_2ecompiler_2folang_2eOptWhat.k19 = internal constant <{ [94 x i8] }> <{ [94 x i8] c"\6D\65\61\73\75\72\65\73\20\74\68\65\20\62\65\6E\63\68\6D\61\72\6B\73\20\74\68\65\20\74\65\73\74\73\20\72\75\6E\20\28\73\74\64\2F\62\65\6E\63\68\29\3A\20\74\69\6D\65\2C\20\61\6C\6C\6F\63\61\74\69\6F\6E\73\20\61\6E\64\20\62\79\74\65\73\20\70\65\72\20\63\61\6C\6C\20\28\42\31\39\62\29" }>, align 64
@G_2ecompiler_2folang_2eOptWords = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k2, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k3, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k4, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k5, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k6, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k7, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k8, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k9, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k10, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k11, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k12, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k13, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k14, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k15, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k16, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k17, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k18, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eOptWords.k19 }>, align 64
@G_2ecompiler_2folang_2eOptWords.k1 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2D\6F\75\74\70\75\74" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2D\64\65\62\75\67" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k3 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2D\72\61\63\65" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k4 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2D\73\61\6E\69\74\69\7A\65" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k5 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2D\74\61\72\67\65\74" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k6 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2D\64\65\66\69\6E\65" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k7 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2D\75\70\64\61\74\65" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k8 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2D\63\68\65\63\6B" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k9 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2D\71\75\69\63\6B" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k10 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2D\68\74\6D\6C" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k11 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\2D\6C\69\62\72\61\72\79" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k12 = internal constant <{ [7 x i8] }> <{ [7 x i8] c"\2D\6D\65\6D\6F\72\79" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k13 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2D\66\75\7A\7A" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k14 = internal constant <{ [9 x i8] }> <{ [9 x i8] c"\2D\66\75\7A\7A\74\69\6D\65" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k15 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\2D\63\61\70\73" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k16 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\2D\61\73\6D" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k17 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\2D\69\72" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k18 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\2D\69\6E\74\65\72\70\72\65\74" }>, align 8
@G_2ecompiler_2folang_2eOptWords.k19 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\2D\62\65\6E\63\68" }>, align 8
@G_2ecompiler_2folang_2eProfile = constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eRun = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eTest = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eexplainedSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\A9\02\00\00\00\00\00\00", ptr @G_2ecompiler_2folang_2eexplainedSrc.k1 }>, align 8
@G_2ecompiler_2folang_2eexplainedSrc.k1 = internal constant <{ [681 x i8] }> <{ [681 x i8] c"\74\79\70\65\20\4D\61\74\68\45\72\72\6F\72\20\65\72\72\6F\72\20\7B\20\5A\65\72\6F\20\7D\0A\74\79\70\65\20\4E\20\73\74\72\75\63\74\28\76\20\49\36\34\2C\20\6E\65\78\74\20\4E\3F\26\29\20\7B\20\76\2C\20\6E\65\78\74\20\7D\0A\66\6E\20\28\6E\20\4E\26\29\20\56\61\6C\75\65\28\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\6E\2E\76\20\7D\0A\74\79\70\65\20\48\20\73\74\72\75\63\74\28\6E\20\4E\26\29\20\7B\20\6E\20\7D\0A\66\6E\20\48\2E\77\72\61\70\28\6E\20\4E\26\29\20\48\20\7B\20\72\65\74\75\72\6E\20\48\28\6E\29\20\7D\0A\66\6E\20\64\69\76\6D\6F\64\28\61\20\49\36\34\2C\20\62\20\49\36\34\29\20\49\36\34\2C\20\49\36\34\20\3F\20\7B\0A\20\20\20\20\69\66\20\62\20\3D\3D\20\30\20\7B\20\65\72\72\6F\72\20\4D\61\74\68\45\72\72\6F\72\2E\5A\65\72\6F\20\7D\0A\20\20\20\20\72\65\74\75\72\6E\20\61\20\2F\20\62\2C\20\61\20\25\20\62\0A\7D\0A\66\6E\20\62\69\67\3C\54\3E\28\61\20\54\2C\20\62\20\54\29\20\54\20\7B\20\72\65\74\75\72\6E\20\61\20\69\66\20\61\20\3E\20\62\20\65\6C\73\65\20\62\20\7D\0A\74\79\70\65\20\53\68\20\65\6E\75\6D\20\7B\0A\20\20\20\20\57\68\6F\6C\65\20\4E\0A\20\20\20\20\50\61\72\74\73\28\61\20\49\36\34\2C\20\62\20\49\36\34\29\0A\20\20\20\20\4E\6F\6E\65\0A\7D\0A\41\6E\73\77\65\72\20\49\36\34\20\3D\20\36\20\2A\20\37\0A\66\6E\20\70\63\74\28\70\61\72\74\20\49\36\34\2C\20\77\68\6F\6C\65\20\49\36\34\29\20\5B\77\68\6F\6C\65\20\3E\20\30\2C\20\70\61\72\74\20\3E\3D\20\30\5D\20\49\36\34\20\3F\20\7B\20\72\65\74\75\72\6E\20\70\61\72\74\20\2A\20\31\30\30\20\2F\20\77\68\6F\6C\65\20\7D\0A\66\6E\20\6C\69\6E\6B\28\61\20\6D\75\74\20\4E\26\2C\20\62\20\4E\26\29\20\7B\20\61\2E\6E\65\78\74\20\3D\20\62\20\7D\0A\66\6E\20\6D\61\69\6E\28\29\20\3F\20\7B\0A\20\20\20\20\6E\6E\20\3A\3D\20\4E\28\70\63\74\28\31\2C\20\34\29\21\2C\20\6E\75\6C\6C\29\0A\20\20\20\20\6C\69\6E\6B\28\6E\6E\2C\20\6E\6E\29\0A\20\20\20\20\71\2C\20\5F\20\3A\3D\20\74\72\79\20\64\69\76\6D\6F\64\28\41\6E\73\77\65\72\2C\20\62\69\67\28\32\2C\20\33\29\29\0A\20\20\20\20\61\73\73\65\72\74\20\48\2E\77\72\61\70\28\4E\28\71\2C\20\6E\75\6C\6C\29\29\2E\6E\2E\56\61\6C\75\65\28\29\20\3D\3D\20\31\34\0A\7D\0A" }>, align 64
define dso_local i32 @compiler_2folang_2eCommandLine_2eParse(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca %"compiler/olang:CommandLine"
  %l25 = alloca ptr
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca i32
  %l29 = alloca { i64, ptr }
  %l31 = alloca i1
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l36 = alloca i1
  %l38 = alloca { i64, ptr }
  %l40 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l46 = alloca %"compiler/diagmsg:Msg"
  %l47 = alloca i32
  %l55 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca [19 x { i64, ptr }]
  %l67 = alloca i64
  %l70 = alloca i64
  %l91 = alloca i1
  %l98 = alloca %"compiler/msgs:Nearest"
  %l114 = alloca ptr
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca %"compiler/diagmsg:Msg"
  %l123 = alloca i32
  %l127 = alloca i64
  %l131 = alloca ptr
  %l132 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l140 = alloca %"compiler/diagmsg:Msg"
  %l141 = alloca i32
  %l147 = alloca i1
  %l153 = alloca ptr
  %l157 = alloca %"compiler/diagmsg:Msg"
  %l158 = alloca i32
  %l160 = alloca { i64, ptr }
  %l194 = alloca i32
  %l196 = alloca i1
  %l233 = alloca i1
  %l237 = alloca i1
  %l239 = alloca ptr
  %l240 = alloca %"compiler/diagmsg:Msg"
  %l241 = alloca i32
  %l245 = alloca i1
  %l247 = alloca i1
  %l249 = alloca ptr
  %l250 = alloca %"compiler/diagmsg:Msg"
  %l251 = alloca i32
  %l255 = alloca i64
  %l256 = alloca { i64, ptr }
  %l257 = alloca i64
  %l258 = alloca i32
  %l259 = alloca i64
  %l260 = alloca i32
  %l263 = alloca ptr
  %l265 = alloca %"compiler/diagmsg:Msg"
  %l266 = alloca i32
  %l272 = alloca i1
  %l275 = alloca i1
  %l278 = alloca ptr
  %l281 = alloca { i64, ptr }
  %l282 = alloca %"compiler/diagmsg:Msg"
  %l283 = alloca i32
  %l287 = alloca i1
  %l289 = alloca { i64, ptr }
  %l291 = alloca i1
  %l293 = alloca ptr
  %l295 = alloca { i64, ptr }
  %l297 = alloca %"compiler/diagmsg:Msg"
  %l298 = alloca i32
  %l303 = alloca i1
  %l305 = alloca i1
  %l306 = alloca i1
  %l308 = alloca i64
  %l310 = alloca i1
  %l312 = alloca i1
  %l315 = alloca ptr
  %l317 = alloca { i64, ptr }
  %l318 = alloca %"compiler/diagmsg:Msg"
  %l319 = alloca i32
  %l325 = alloca i1
  %l332 = alloca i1
  %l334 = alloca i1
  %l336 = alloca i64
  %l338 = alloca i1
  %l340 = alloca i1
  %l345 = alloca ptr
  %l349 = alloca %"compiler/diagmsg:Msg"
  %l350 = alloca %"compiler/diagmsg:Msg"
  %l351 = alloca %"compiler/diagmsg:Msg"
  %l352 = alloca i32
  %l358 = alloca i1
  %l360 = alloca i1
  %l363 = alloca i64
  %l365 = alloca ptr
  %l367 = alloca %"compiler/diagmsg:Msg"
  %l368 = alloca i32
  %l370 = alloca ptr
  %l372 = alloca %"compiler/diagmsg:Msg"
  %l373 = alloca i32
  %l378 = alloca i1
  %l380 = alloca i64
  %l382 = alloca i1
  %l384 = alloca i1
  %l386 = alloca i1
  %l388 = alloca i1
  %l397 = alloca i1
  %l401 = alloca i1
  %l411 = alloca { i64, ptr }
  %l418 = alloca %"compiler/olang:CommandLine"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %rv = alloca i32
  %t1 = alloca %"compiler/olang:CommandLine", align 8
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2folang_3aCommandLine_2ector(ptr %t1, ptr %v3)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t1, i64 240, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 240, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l21, i64 240, i1 false)
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp slt i64 %t6, 2
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l25, !tbaa !29
  %t11 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUsage(ptr %v2)
  store %"compiler/diagmsg:Msg" %t11, ptr %l26
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t12 = load ptr, ptr %l25, !tbaa !29
  %t13 = load %"compiler/diagmsg:Msg", ptr %l26
  %t14 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t12, %"compiler/diagmsg:Msg" %t13)
  store i32 %t14, ptr %l27
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  br label %bb5
bb5:
  br label %bb7
bb6:
  %t17 = load i32, ptr %l27, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t17, 0
  %t23 = shl i32 %t21, 16
  %t24 = or i32 %t23, %t19
  %t25 = select i1 %t22, i32 0, i32 %t24
  call void @__olang_scope_close(ptr %s0)
  store i32 %t25, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i64 1, ptr %l4, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t27, ptr %l29, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %t29, i64 1
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !37
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t33, ptr %l31
  br label %bb9
bb9:
  %t34 = load i1, ptr %l31, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t37, ptr %l34, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %t39, i64 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !37
  %t43 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v0, { i64, ptr } %t41)
  store i1 %t43, ptr %l36
  br label %bb12
bb11:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb13
bb12:
  %t44 = load i1, ptr %l36, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l33, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t48, ptr %l38, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %t50, i64 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !37
  %t54 = call i64 @compiler_2folang_2emodeNumber(ptr %v0, { i64, ptr } %t52)
  store i64 %t54, ptr %l40
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t55 = load i64, ptr %l40, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t56, 0
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l2, !tbaa !29
  store ptr %t60, ptr %l43, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l44, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %t63, i64 1
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !37
  %t67 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAMode(ptr %v0, ptr %v2, { i64, ptr } %t65)
  store %"compiler/diagmsg:Msg" %t67, ptr %l46
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t68 = load ptr, ptr %l43, !tbaa !29
  %t69 = load %"compiler/diagmsg:Msg", ptr %l46
  %t70 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t68, %"compiler/diagmsg:Msg" %t69)
  store i32 %t70, ptr %l47
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb21, label %ok.72, !prof !99
ok.72:
  br label %bb20
bb20:
  br label %bb22
bb21:
  %t73 = load i32, ptr %l47, !tbaa !23
  %t74 = lshr i32 %t73, 16
  %t75 = and i32 %t73, 65535
  %t76 = icmp eq i32 %t74, 1
  %t77 = select i1 %t76, i32 1, i32 0
  %t78 = icmp eq i32 %t73, 0
  %t79 = shl i32 %t77, 16
  %t80 = or i32 %t79, %t75
  %t81 = select i1 %t78, i32 0, i32 %t80
  call void @__olang_scope_close(ptr %s0)
  store i32 %t81, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t83 = load i64, ptr %l5, !tbaa !24
  %t85 = load ptr, ptr %lp3
  %t86 = getelementptr %"compiler/olang:CommandLine", ptr %t85, i32 0, i32 0
  store i64 %t83, ptr %t86, !tbaa !24
  store i64 2, ptr %l4, !tbaa !24
  br label %bb24
bb24:
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t87 = load i64, ptr %l4, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t93 = icmp slt i64 %t87, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb318
bb27:
  br label %bb28
bb28:
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l55, !tbaa !27
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %t101, i64 %t98
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !37
  store { i64, ptr } %t103, ptr %l6, !tbaa !27
  %t105 = load i64, ptr %l4, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l4, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t111 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s4, { i64, ptr } %t109, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t111, ptr %l61
  br label %bb29
bb29:
  %t112 = load i1, ptr %l61, !tbaa !21
  br i1 %t112, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  store i64 -1, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l62, ptr @G_2ecompiler_2folang_2eOptWords, i64 304, i1 false)
  %t113 = load [19 x { i64, ptr }], ptr %l62
  store i64 19, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb32, label %bb33
bb31:
  br label %bb209
bb32:
  %t121 = load i64, ptr %l10, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb37
bb34:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l70, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb36
bb36:
  %t141 = load i64, ptr %l70, !tbaa !24
  store i64 %t141, ptr %l67, !tbaa !24
  br label %bb37
bb37:
  %t142 = load i64, ptr %l67, !tbaa !24
  store i64 %t142, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb38
bb38:
  %t143 = load i64, ptr %l12, !tbaa !24
  %t144 = load i64, ptr %l11, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb39, label %bb40
bb39:
  br label %bb47
bb40:
  br label %bb41
bb41:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t152 = load i64, ptr %l12, !tbaa !24
  %t153 = load i64, ptr %l10, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  store i64 %t159, ptr %l13, !tbaa !24
  %t161 = load i64, ptr %l13, !tbaa !24
  %t163 = getelementptr [19 x { i64, ptr }], ptr @G_2ecompiler_2folang_2eOptWords, i64 0, i64 %t161
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !37
  %t165 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t166 = load ptr, ptr @__olang_prog_scope
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t166, ptr %v0, { i64, ptr } %t164, { i64, ptr } %t165)
  store i1 %t169, ptr %l91
  br label %bb42
bb42:
  %t170 = load i1, ptr %l91, !tbaa !21
  br i1 %t170, label %bb43, label %bb44
bb43:
  %t171 = load i64, ptr %l13, !tbaa !24
  store i64 %t171, ptr %l7, !tbaa !24
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t173 = load i64, ptr %l12, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l12, !tbaa !24
  br label %bb38
bb47:
  %t177 = load i64, ptr %l7, !tbaa !24
  %t179 = icmp slt i64 %t177, 0
  br i1 %t179, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s10
  %t181 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t183 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s10, { i64, ptr } %t181)
  store %"compiler/msgs:Nearest" %t183, ptr %l98
  br label %bb50
bb49:
  br label %bb64
bb50:
  %t184 = load %"compiler/msgs:Nearest", ptr %l98
  %t185 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t184, ptr %t185
  store ptr %t185, ptr %l14, !tbaa !29
  store ptr @G_2ecompiler_2folang_2eOptWords, ptr %l15
  store i64 0, ptr %l16, !tbaa !24
  %t188 = load ptr, ptr %l15
  store i64 19, ptr %l17, !tbaa !24
  br label %bb51
bb51:
  %t191 = load i64, ptr %l16, !tbaa !24
  %t192 = load i64, ptr %l17, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb52, label %bb53
bb52:
  br label %bb57
bb53:
  br label %bb54
bb54:
  %t199 = load ptr, ptr %l15
  %t200 = load i64, ptr %l16, !tbaa !24
  %t203 = getelementptr [19 x { i64, ptr }], ptr %t199, i64 0, i64 %t200
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !37
  %t206 = load ptr, ptr %l14, !tbaa !29
  %t208 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s10, ptr %t208, ptr %t206, { i64, ptr } %t204)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t211 = load i64, ptr %l16, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l16, !tbaa !24
  br label %bb51
bb57:
  %t215 = load ptr, ptr %l2, !tbaa !29
  store ptr %t215, ptr %l114, !tbaa !29
  %t216 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t216, ptr %l115, !tbaa !27
  %t217 = load ptr, ptr %lp3
  %t218 = getelementptr %"compiler/olang:CommandLine", ptr %t217, i32 0, i32 0
  %t219 = load i64, ptr %t218, !tbaa !24
  %t221 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t219)
  store { i64, ptr } %t221, ptr %l117
  br label %bb58
bb58:
  %t222 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  %t224 = extractvalue { i64, ptr } %t222, 1
  %t225 = mul i64 %t223, 1
  %t226 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t225)
  call void @llvm.memcpy.p0.p0.i64(ptr %t226, ptr %t224, i64 %t225, i1 false)
  %t227 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t226, 1
  store { i64, ptr } %t228, ptr %l118, !tbaa !27
  %t229 = load ptr, ptr %l14, !tbaa !29
  %t231 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s10, ptr %v2, ptr %t229)
  store { i64, ptr } %t231, ptr %l120
  br label %bb59
bb59:
  %t232 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  %t234 = extractvalue { i64, ptr } %t232, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t240 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t242 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFlag(ptr %v0, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t239, { i64, ptr } %t240, { i64, ptr } %t238)
  store %"compiler/diagmsg:Msg" %t242, ptr %l122
  br label %bb60
bb60:
  %t243 = load ptr, ptr %l114, !tbaa !29
  %t244 = load %"compiler/diagmsg:Msg", ptr %l122
  %t245 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t243, %"compiler/diagmsg:Msg" %t244)
  store i32 %t245, ptr %l123
  %t246 = icmp ne i32 %t245, 0
  br i1 %t246, label %bb62, label %ok.247, !prof !99
ok.247:
  br label %bb61
bb61:
  br label %bb63
bb62:
  %t248 = load i32, ptr %l123, !tbaa !23
  %t249 = lshr i32 %t248, 16
  %t250 = and i32 %t248, 65535
  %t251 = icmp eq i32 %t249, 1
  %t252 = select i1 %t251, i32 1, i32 0
  %t253 = icmp eq i32 %t248, 0
  %t254 = shl i32 %t252, 16
  %t255 = or i32 %t254, %t250
  %t256 = select i1 %t253, i32 0, i32 %t255
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t256, ptr %rv
  br label %ret
bb63:
  call void @__olang_scope_close(ptr %s10)
  br label %bb64
bb64:
  %t258 = load i64, ptr %l7, !tbaa !24
  %t260 = getelementptr [19 x i64], ptr @G_2ecompiler_2folang_2eOptModes, i64 0, i64 %t258
  %t261 = load i64, ptr %t260, !tbaa !34
  %t262 = load ptr, ptr %lp3
  %t263 = getelementptr %"compiler/olang:CommandLine", ptr %t262, i32 0, i32 0
  %t264 = load i64, ptr %t263, !tbaa !24
  store i64 %t264, ptr %l127, !tbaa !24
  %t266 = load i64, ptr %l127, !tbaa !24
  %t267 = load i64, ptr %l127, !tbaa !24
  %t268 = ashr i64 %t261, %t267
  %t270 = and i64 %t268, 1
  %t272 = icmp eq i64 %t270, 0
  br i1 %t272, label %bb65, label %bb66
bb65:
  %t274 = load ptr, ptr %l2, !tbaa !29
  store ptr %t274, ptr %l131, !tbaa !29
  %t275 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t275, ptr %l132, !tbaa !27
  %t276 = load i64, ptr %l7, !tbaa !24
  %t278 = getelementptr [19 x i64], ptr @G_2ecompiler_2folang_2eOptModes, i64 0, i64 %t276
  %t279 = load i64, ptr %t278, !tbaa !34
  %t281 = call { i64, ptr } @compiler_2folang_2emodesOf(ptr %v2, i64 %t279)
  store { i64, ptr } %t281, ptr %l135
  br label %bb67
bb66:
  br label %bb73
bb67:
  %t282 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t282, 0
  %t284 = extractvalue { i64, ptr } %t282, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  store { i64, ptr } %t288, ptr %l136, !tbaa !27
  %t289 = load ptr, ptr %lp3
  %t290 = getelementptr %"compiler/olang:CommandLine", ptr %t289, i32 0, i32 0
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t291)
  store { i64, ptr } %t293, ptr %l138
  br label %bb68
bb68:
  %t294 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 0
  %t296 = extractvalue { i64, ptr } %t294, 1
  %t297 = mul i64 %t295, 1
  %t298 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t297)
  call void @llvm.memcpy.p0.p0.i64(ptr %t298, ptr %t296, i64 %t297, i1 false)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  %t301 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t302 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t304 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOptionNotForMode(ptr %v0, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t301, { i64, ptr } %t302, { i64, ptr } %t300)
  store %"compiler/diagmsg:Msg" %t304, ptr %l140
  br label %bb69
bb69:
  %t305 = load ptr, ptr %l131, !tbaa !29
  %t306 = load %"compiler/diagmsg:Msg", ptr %l140
  %t307 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t305, %"compiler/diagmsg:Msg" %t306)
  store i32 %t307, ptr %l141
  %t308 = icmp ne i32 %t307, 0
  br i1 %t308, label %bb71, label %ok.309, !prof !99
ok.309:
  br label %bb70
bb70:
  br label %bb72
bb71:
  %t310 = load i32, ptr %l141, !tbaa !23
  %t311 = lshr i32 %t310, 16
  %t312 = and i32 %t310, 65535
  %t313 = icmp eq i32 %t311, 1
  %t314 = select i1 %t313, i32 1, i32 0
  %t315 = icmp eq i32 %t310, 0
  %t316 = shl i32 %t314, 16
  %t317 = or i32 %t316, %t312
  %t318 = select i1 %t315, i32 0, i32 %t317
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t318, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t320 = load ptr, ptr %lp3
  %t321 = getelementptr %"compiler/olang:CommandLine", ptr %t320, i32 0, i32 6
  %t322 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v0, ptr %t321, { i64, ptr } %t322)
  br label %bb74
bb74:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t325 = load i64, ptr %l7, !tbaa !24
  %t327 = getelementptr [19 x { i64, ptr }], ptr @G_2ecompiler_2folang_2eOptValues, i64 0, i64 %t325
  %t328 = load { i64, ptr }, ptr %t327, !tbaa !37
  %t329 = load ptr, ptr @__olang_prog_scope
  %t331 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t329, ptr %s5, { i64, ptr } %t328, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t331, ptr %l147
  br label %bb75
bb75:
  %t332 = load i1, ptr %l147, !tbaa !21
  %t333 = xor i1 %t332, true
  br i1 %t333, label %bb76, label %bb77
bb76:
  %t335 = load i64, ptr %l4, !tbaa !24
  %t336 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t341 = icmp sge i64 %t335, %t338
  br i1 %t341, label %bb78, label %bb79
bb77:
  br label %bb86
bb78:
  %t343 = load ptr, ptr %l2, !tbaa !29
  store ptr %t343, ptr %l153, !tbaa !29
  %t344 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t345 = load i64, ptr %l7, !tbaa !24
  %t347 = getelementptr [19 x { i64, ptr }], ptr @G_2ecompiler_2folang_2eOptValues, i64 0, i64 %t345
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !37
  %t349 = load ptr, ptr @__olang_prog_scope
  %t352 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOptionNeedsValue(ptr %v0, ptr %t349, ptr %v2, { i64, ptr } %t344, { i64, ptr } %t348)
  store %"compiler/diagmsg:Msg" %t352, ptr %l157
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t353 = load ptr, ptr %l153, !tbaa !29
  %t354 = load %"compiler/diagmsg:Msg", ptr %l157
  %t355 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t353, %"compiler/diagmsg:Msg" %t354)
  store i32 %t355, ptr %l158
  %t356 = icmp ne i32 %t355, 0
  br i1 %t356, label %bb82, label %ok.357, !prof !99
ok.357:
  br label %bb81
bb81:
  br label %bb83
bb82:
  %t358 = load i32, ptr %l158, !tbaa !23
  %t359 = lshr i32 %t358, 16
  %t360 = and i32 %t358, 65535
  %t361 = icmp eq i32 %t359, 1
  %t362 = select i1 %t361, i32 1, i32 0
  %t363 = icmp eq i32 %t358, 0
  %t364 = shl i32 %t362, 16
  %t365 = or i32 %t364, %t360
  %t366 = select i1 %t363, i32 0, i32 %t365
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t366, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t368 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t368, ptr %l160, !tbaa !27
  %t369 = load i64, ptr %l4, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr { i64, ptr }, ptr %t372, i64 %t369
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !37
  %t376 = extractvalue { i64, ptr } %t374, 1
  %t377 = extractvalue { i64, ptr } %t374, 0
  %t378 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t377)
  call void @olang_textcopy(ptr %t378, ptr %t376, i64 %t377)
  %t379 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  %t382 = extractvalue { i64, ptr } %t380, 0
  %t383 = extractvalue { i64, ptr } %t380, 1
  %t384 = mul i64 %t382, 1
  %t385 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t384)
  call void @llvm.memcpy.p0.p0.i64(ptr %t385, ptr %t383, i64 %t384, i1 false)
  %t386 = insertvalue { i64, ptr } undef, i64 %t382, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t385, 1
  store { i64, ptr } %t387, ptr %l19, !tbaa !27
  %t389 = load i64, ptr %l4, !tbaa !24
  %t391 = add i64 %t389, 1
  store i64 %t391, ptr %l4, !tbaa !24
  %t393 = load ptr, ptr %lp3
  %t394 = getelementptr %"compiler/olang:CommandLine", ptr %t393, i32 0, i32 6
  %t395 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t394, { i64, ptr } %t395)
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t398 = load i64, ptr %l7, !tbaa !24
  %t400 = icmp eq i64 %t398, 0
  br i1 %t400, label %bb87, label %bb88
bb87:
  %t402 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t404 = extractvalue { i64, ptr } %t402, 1
  %t405 = extractvalue { i64, ptr } %t402, 0
  %t406 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t405)
  call void @olang_textcopy(ptr %t406, ptr %t404, i64 %t405)
  %t407 = insertvalue { i64, ptr } undef, i64 %t405, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t406, 1
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t411 = extractvalue { i64, ptr } %t408, 1
  %t412 = mul i64 %t410, 1
  %t413 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t413, ptr %t411, i64 %t412, i1 false)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  %t417 = load ptr, ptr %lp3
  %t418 = getelementptr %"compiler/olang:CommandLine", ptr %t417, i32 0, i32 8
  store { i64, ptr } %t415, ptr %t418, !tbaa !27
  br label %bb89
bb88:
  br label %bb89
bb89:
  %t419 = load i64, ptr %l7, !tbaa !24
  %t421 = icmp eq i64 %t419, 1
  br i1 %t421, label %bb90, label %bb91
bb90:
  %t423 = load ptr, ptr %l1, !tbaa !29
  %t425 = getelementptr %"compiler/build:Config", ptr %t423, i32 0, i32 4
  store i1 true, ptr %t425, !tbaa !21
  br label %bb92
bb91:
  br label %bb92
bb92:
  %t426 = load i64, ptr %l7, !tbaa !24
  %t428 = icmp eq i64 %t426, 2
  br i1 %t428, label %bb93, label %bb94
bb93:
  %t430 = load ptr, ptr %l1, !tbaa !29
  %t432 = getelementptr %"compiler/build:Config", ptr %t430, i32 0, i32 6
  store i1 true, ptr %t432, !tbaa !21
  br label %bb95
bb94:
  br label %bb95
bb95:
  %t433 = load i64, ptr %l7, !tbaa !24
  %t435 = icmp eq i64 %t433, 3
  br i1 %t435, label %bb96, label %bb97
bb96:
  %t437 = load ptr, ptr %l1, !tbaa !29
  %t439 = getelementptr %"compiler/build:Config", ptr %t437, i32 0, i32 7
  store i1 true, ptr %t439, !tbaa !21
  br label %bb98
bb97:
  br label %bb98
bb98:
  %t440 = load i64, ptr %l7, !tbaa !24
  %t442 = icmp eq i64 %t440, 4
  br i1 %t442, label %bb99, label %bb100
bb99:
  %t444 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t444, 1
  %t447 = extractvalue { i64, ptr } %t444, 0
  %t448 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t447)
  call void @olang_textcopy(ptr %t448, ptr %t446, i64 %t447)
  %t449 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t448, 1
  %t452 = extractvalue { i64, ptr } %t450, 0
  %t453 = extractvalue { i64, ptr } %t450, 1
  %t454 = mul i64 %t452, 1
  %t455 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t454)
  call void @llvm.memcpy.p0.p0.i64(ptr %t455, ptr %t453, i64 %t454, i1 false)
  %t456 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t457 = insertvalue { i64, ptr } %t456, ptr %t455, 1
  %t459 = load ptr, ptr %lp3
  %t460 = getelementptr %"compiler/olang:CommandLine", ptr %t459, i32 0, i32 7
  store { i64, ptr } %t457, ptr %t460, !tbaa !27
  br label %bb101
bb100:
  br label %bb101
bb101:
  %t461 = load i64, ptr %l7, !tbaa !24
  %t463 = icmp eq i64 %t461, 5
  br i1 %t463, label %bb102, label %bb103
bb102:
  %t465 = load ptr, ptr %l1, !tbaa !29
  %t467 = getelementptr %"compiler/build:Config", ptr %t465, i32 0, i32 3
  %t468 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t469 = load ptr, ptr %l2, !tbaa !29
  %t473 = call i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefine(ptr %v1, ptr %v3, ptr %v2, ptr %t467, { i64, ptr } %t468, ptr %t469)
  store i32 %t473, ptr %l194
  %t474 = icmp ne i32 %t473, 0
  br i1 %t474, label %bb105, label %ok.475, !prof !99
ok.475:
  br label %bb104
bb103:
  br label %bb108
bb104:
  br label %bb107
bb105:
  %t476 = load i32, ptr %l194, !tbaa !23
  %t477 = ashr i32 %t476, 16
  %t479 = icmp eq i32 %t477, 1
  store i1 %t479, ptr %l196, !tbaa !21
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb107:
  br label %bb108
bb108:
  %t481 = load i64, ptr %l7, !tbaa !24
  %t483 = icmp eq i64 %t481, 6
  br i1 %t483, label %bb109, label %bb110
bb109:
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t487 = getelementptr %"compiler/build:Config", ptr %t485, i32 0, i32 16
  store i1 true, ptr %t487, !tbaa !21
  br label %bb111
bb110:
  br label %bb111
bb111:
  %t488 = load i64, ptr %l7, !tbaa !24
  %t490 = icmp eq i64 %t488, 7
  br i1 %t490, label %bb112, label %bb113
bb112:
  %t492 = load ptr, ptr %lp3
  %t493 = getelementptr %"compiler/olang:CommandLine", ptr %t492, i32 0, i32 9
  store i1 true, ptr %t493, !tbaa !21
  br label %bb114
bb113:
  br label %bb114
bb114:
  %t494 = load i64, ptr %l7, !tbaa !24
  %t496 = icmp eq i64 %t494, 8
  br i1 %t496, label %bb115, label %bb116
bb115:
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr %"compiler/build:Config", ptr %t498, i32 0, i32 5
  store i1 true, ptr %t500, !tbaa !21
  br label %bb117
bb116:
  br label %bb117
bb117:
  %t501 = load i64, ptr %l7, !tbaa !24
  %t503 = icmp eq i64 %t501, 9
  br i1 %t503, label %bb118, label %bb119
bb118:
  %t505 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t507 = extractvalue { i64, ptr } %t505, 1
  %t508 = extractvalue { i64, ptr } %t505, 0
  %t509 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t508)
  call void @olang_textcopy(ptr %t509, ptr %t507, i64 %t508)
  %t510 = insertvalue { i64, ptr } undef, i64 %t508, 0
  %t511 = insertvalue { i64, ptr } %t510, ptr %t509, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = extractvalue { i64, ptr } %t511, 1
  %t515 = mul i64 %t513, 1
  %t516 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t515)
  call void @llvm.memcpy.p0.p0.i64(ptr %t516, ptr %t514, i64 %t515, i1 false)
  %t517 = insertvalue { i64, ptr } undef, i64 %t513, 0
  %t518 = insertvalue { i64, ptr } %t517, ptr %t516, 1
  %t520 = load ptr, ptr %lp3
  %t521 = getelementptr %"compiler/olang:CommandLine", ptr %t520, i32 0, i32 10
  store { i64, ptr } %t518, ptr %t521, !tbaa !27
  br label %bb120
bb119:
  br label %bb120
bb120:
  %t522 = load i64, ptr %l7, !tbaa !24
  %t524 = icmp eq i64 %t522, 10
  br i1 %t524, label %bb121, label %bb122
bb121:
  %t526 = load ptr, ptr %l1, !tbaa !29
  %t528 = getelementptr %"compiler/build:Config", ptr %t526, i32 0, i32 9
  store i1 true, ptr %t528, !tbaa !21
  br label %bb123
bb122:
  br label %bb123
bb123:
  %t529 = load i64, ptr %l7, !tbaa !24
  %t531 = icmp eq i64 %t529, 11
  br i1 %t531, label %bb124, label %bb125
bb124:
  %t533 = load ptr, ptr %l1, !tbaa !29
  %t535 = getelementptr %"compiler/build:Config", ptr %t533, i32 0, i32 8
  store i1 true, ptr %t535, !tbaa !21
  br label %bb126
bb125:
  br label %bb126
bb126:
  %t536 = load i64, ptr %l7, !tbaa !24
  %t538 = icmp eq i64 %t536, 12
  br i1 %t538, label %bb127, label %bb128
bb127:
  %t540 = load ptr, ptr %l1, !tbaa !29
  %t541 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t543 = extractvalue { i64, ptr } %t541, 1
  %t544 = extractvalue { i64, ptr } %t541, 0
  %t545 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t544)
  call void @olang_textcopy(ptr %t545, ptr %t543, i64 %t544)
  %t546 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t545, 1
  %t549 = extractvalue { i64, ptr } %t547, 0
  %t550 = extractvalue { i64, ptr } %t547, 1
  %t551 = mul i64 %t549, 1
  %t552 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t551)
  call void @llvm.memcpy.p0.p0.i64(ptr %t552, ptr %t550, i64 %t551, i1 false)
  %t553 = insertvalue { i64, ptr } undef, i64 %t549, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t552, 1
  %t557 = getelementptr %"compiler/build:Config", ptr %t540, i32 0, i32 10
  store { i64, ptr } %t554, ptr %t557, !tbaa !27
  br label %bb129
bb128:
  br label %bb129
bb129:
  %t558 = load i64, ptr %l7, !tbaa !24
  %t560 = icmp eq i64 %t558, 14
  br i1 %t560, label %bb130, label %bb131
bb130:
  %t562 = load ptr, ptr %lp3
  %t563 = getelementptr %"compiler/olang:CommandLine", ptr %t562, i32 0, i32 11
  store i1 true, ptr %t563, !tbaa !21
  br label %bb132
bb131:
  br label %bb132
bb132:
  %t564 = load i64, ptr %l7, !tbaa !24
  %t566 = icmp eq i64 %t564, 17
  br i1 %t566, label %bb133, label %bb134
bb133:
  %t568 = load ptr, ptr %l1, !tbaa !29
  %t570 = getelementptr %"compiler/build:Config", ptr %t568, i32 0, i32 18
  store i1 true, ptr %t570, !tbaa !21
  br label %bb135
bb134:
  br label %bb135
bb135:
  %t571 = load i64, ptr %l7, !tbaa !24
  %t573 = icmp eq i64 %t571, 18
  br i1 %t573, label %bb136, label %bb137
bb136:
  %t575 = load ptr, ptr %l1, !tbaa !29
  %t577 = getelementptr %"compiler/build:Config", ptr %t575, i32 0, i32 13
  store i1 true, ptr %t577, !tbaa !21
  br label %bb138
bb137:
  br label %bb138
bb138:
  %t578 = load i64, ptr %l7, !tbaa !24
  %t580 = icmp eq i64 %t578, 15
  br i1 %t580, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l233, !tbaa !21
  br label %bb141
bb140:
  %t582 = load i64, ptr %l7, !tbaa !24
  %t584 = icmp eq i64 %t582, 16
  store i1 %t584, ptr %l233, !tbaa !21
  br label %bb141
bb141:
  %t586 = load i1, ptr %l233, !tbaa !21
  br i1 %t586, label %bb142, label %bb143
bb142:
  store %olang.scope zeroinitializer, ptr %s39
  %t587 = load ptr, ptr %lp3
  %t588 = getelementptr %"compiler/olang:CommandLine", ptr %t587, i32 0, i32 12
  %t589 = load { i64, ptr }, ptr %t588, !tbaa !27
  %t591 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s39, { i64, ptr } %t589, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t591, ptr %l237
  br label %bb144
bb143:
  br label %bb152
bb144:
  %t592 = load i1, ptr %l237, !tbaa !21
  %t593 = xor i1 %t592, true
  br i1 %t593, label %bb145, label %bb146
bb145:
  %t595 = load ptr, ptr %l2, !tbaa !29
  store ptr %t595, ptr %l239, !tbaa !29
  %t596 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingAlone(ptr %v2)
  store %"compiler/diagmsg:Msg" %t596, ptr %l240
  br label %bb147
bb146:
  br label %bb151
bb147:
  %t597 = load ptr, ptr %l239, !tbaa !29
  %t598 = load %"compiler/diagmsg:Msg", ptr %l240
  %t599 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t597, %"compiler/diagmsg:Msg" %t598)
  store i32 %t599, ptr %l241
  %t600 = icmp ne i32 %t599, 0
  br i1 %t600, label %bb149, label %ok.601, !prof !99
ok.601:
  br label %bb148
bb148:
  br label %bb150
bb149:
  %t602 = load i32, ptr %l241, !tbaa !23
  %t603 = lshr i32 %t602, 16
  %t604 = and i32 %t602, 65535
  %t605 = icmp eq i32 %t603, 1
  %t606 = select i1 %t605, i32 1, i32 0
  %t607 = icmp eq i32 %t602, 0
  %t608 = shl i32 %t606, 16
  %t609 = or i32 %t608, %t604
  %t610 = select i1 %t607, i32 0, i32 %t609
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t610, ptr %rv
  br label %ret
bb150:
  br label %bb151
bb151:
  %t612 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t614 = load ptr, ptr %lp3
  %t615 = getelementptr %"compiler/olang:CommandLine", ptr %t614, i32 0, i32 12
  store { i64, ptr } %t612, ptr %t615, !tbaa !27
  call void @__olang_scope_close(ptr %s39)
  br label %bb152
bb152:
  %t616 = load ptr, ptr %lp3
  %t617 = getelementptr %"compiler/olang:CommandLine", ptr %t616, i32 0, i32 11
  %t618 = load i1, ptr %t617, !tbaa !21
  br i1 %t618, label %bb153, label %bb154
bb153:
  %t620 = load ptr, ptr %lp3
  %t621 = getelementptr %"compiler/olang:CommandLine", ptr %t620, i32 0, i32 12
  %t622 = load { i64, ptr }, ptr %t621, !tbaa !27
  %t624 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s5, { i64, ptr } %t622, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t624, ptr %l247
  br label %bb155
bb154:
  store i1 false, ptr %l245, !tbaa !21
  br label %bb156
bb155:
  %t625 = load i1, ptr %l247, !tbaa !21
  %t626 = xor i1 %t625, true
  store i1 %t626, ptr %l245, !tbaa !21
  br label %bb156
bb156:
  %t628 = load i1, ptr %l245, !tbaa !21
  br i1 %t628, label %bb157, label %bb158
bb157:
  %t629 = load ptr, ptr %l2, !tbaa !29
  store ptr %t629, ptr %l249, !tbaa !29
  %t630 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingAlone(ptr %v2)
  store %"compiler/diagmsg:Msg" %t630, ptr %l250
  br label %bb159
bb158:
  br label %bb163
bb159:
  %t631 = load ptr, ptr %l249, !tbaa !29
  %t632 = load %"compiler/diagmsg:Msg", ptr %l250
  %t633 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t631, %"compiler/diagmsg:Msg" %t632)
  store i32 %t633, ptr %l251
  %t634 = icmp ne i32 %t633, 0
  br i1 %t634, label %bb161, label %ok.635, !prof !99
ok.635:
  br label %bb160
bb160:
  br label %bb162
bb161:
  %t636 = load i32, ptr %l251, !tbaa !23
  %t637 = lshr i32 %t636, 16
  %t638 = and i32 %t636, 65535
  %t639 = icmp eq i32 %t637, 1
  %t640 = select i1 %t639, i32 1, i32 0
  %t641 = icmp eq i32 %t636, 0
  %t642 = shl i32 %t640, 16
  %t643 = or i32 %t642, %t638
  %t644 = select i1 %t641, i32 0, i32 %t643
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t644, ptr %rv
  br label %ret
bb162:
  br label %bb163
bb163:
  %t646 = load i64, ptr %l7, !tbaa !24
  %t648 = icmp eq i64 %t646, 13
  br i1 %t648, label %bb164, label %bb165
bb164:
  store %olang.scope zeroinitializer, ptr %s42
  %t650 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t650, ptr %l256, !tbaa !27
  %t651 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s42, i64 10)
  %t652 = extractvalue { i32, i64 } %t651, 1
  %t653 = extractvalue { i32, i64 } %t651, 0
  store i32 %t653, ptr %l258
  %t654 = icmp ne i32 %t653, 0
  br i1 %t654, label %bb167, label %ok.655, !prof !99
ok.655:
  store i64 %t652, ptr %l257
  br label %bb166
bb165:
  br label %bb179
bb166:
  %t656 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t657 = load i64, ptr %l257, !tbaa !24
  %t658 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v3, { i64, ptr } %t656, i64 %t657)
  %t659 = extractvalue { i32, i64 } %t658, 1
  %t660 = extractvalue { i32, i64 } %t658, 0
  store i32 %t660, ptr %l260
  %t661 = icmp ne i32 %t660, 0
  br i1 %t661, label %bb170, label %ok.662, !prof !99
ok.662:
  store i64 %t659, ptr %l259
  br label %bb169
bb167:
  br label %bb168
bb168:
  store i64 -1, ptr %l255, !tbaa !24
  br label %bb171
bb169:
  %t663 = load i64, ptr %l259, !tbaa !24
  store i64 %t663, ptr %l255, !tbaa !24
  br label %bb171
bb170:
  br label %bb168
bb171:
  %t664 = load i64, ptr %l255, !tbaa !24
  store i64 %t664, ptr %l20, !tbaa !24
  %t665 = load i64, ptr %l20, !tbaa !24
  %t667 = icmp slt i64 %t665, 1
  br i1 %t667, label %bb172, label %bb173
bb172:
  %t669 = load ptr, ptr %l2, !tbaa !29
  store ptr %t669, ptr %l263, !tbaa !29
  %t670 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t672 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuzzTimeNotNumber(ptr %v3, ptr %v2, { i64, ptr } %t670)
  store %"compiler/diagmsg:Msg" %t672, ptr %l265
  br label %bb174
bb173:
  br label %bb178
bb174:
  %t673 = load ptr, ptr %l263, !tbaa !29
  %t674 = load %"compiler/diagmsg:Msg", ptr %l265
  %t675 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t673, %"compiler/diagmsg:Msg" %t674)
  store i32 %t675, ptr %l266
  %t676 = icmp ne i32 %t675, 0
  br i1 %t676, label %bb176, label %ok.677, !prof !99
ok.677:
  br label %bb175
bb175:
  br label %bb177
bb176:
  %t678 = load i32, ptr %l266, !tbaa !23
  %t679 = lshr i32 %t678, 16
  %t680 = and i32 %t678, 65535
  %t681 = icmp eq i32 %t679, 1
  %t682 = select i1 %t681, i32 1, i32 0
  %t683 = icmp eq i32 %t678, 0
  %t684 = shl i32 %t682, 16
  %t685 = or i32 %t684, %t680
  %t686 = select i1 %t683, i32 0, i32 %t685
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t686, ptr %rv
  br label %ret
bb177:
  br label %bb178
bb178:
  %t688 = load ptr, ptr %l1, !tbaa !29
  %t689 = load i64, ptr %l20, !tbaa !24
  %t692 = getelementptr %"compiler/build:Config", ptr %t688, i32 0, i32 11
  store i64 %t689, ptr %t692, !tbaa !24
  call void @__olang_scope_close(ptr %s42)
  br label %bb179
bb179:
  %t693 = load ptr, ptr %l1, !tbaa !29
  %t695 = getelementptr %"compiler/build:Config", ptr %t693, i32 0, i32 5
  %t696 = load i1, ptr %t695, !tbaa !21
  br i1 %t696, label %bb180, label %bb181
bb180:
  %t698 = load ptr, ptr %l1, !tbaa !29
  %t700 = getelementptr %"compiler/build:Config", ptr %t698, i32 0, i32 4
  %t701 = load i1, ptr %t700, !tbaa !21
  br i1 %t701, label %bb182, label %bb183
bb181:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb185
bb182:
  store i1 true, ptr %l275, !tbaa !21
  br label %bb184
bb183:
  %t703 = load ptr, ptr %l1, !tbaa !29
  %t705 = getelementptr %"compiler/build:Config", ptr %t703, i32 0, i32 6
  %t706 = load i1, ptr %t705, !tbaa !21
  store i1 %t706, ptr %l275, !tbaa !21
  br label %bb184
bb184:
  %t708 = load i1, ptr %l275, !tbaa !21
  store i1 %t708, ptr %l272, !tbaa !21
  br label %bb185
bb185:
  %t709 = load i1, ptr %l272, !tbaa !21
  br i1 %t709, label %bb186, label %bb187
bb186:
  %t710 = load ptr, ptr %l2, !tbaa !29
  store ptr %t710, ptr %l278, !tbaa !29
  %t711 = load ptr, ptr %l1, !tbaa !29
  %t713 = getelementptr %"compiler/build:Config", ptr %t711, i32 0, i32 4
  %t714 = load i1, ptr %t713, !tbaa !21
  br i1 %t714, label %bb188, label %bb189
bb187:
  br label %bb195
bb188:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l281, !tbaa !27
  br label %bb190
bb189:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l281, !tbaa !27
  br label %bb190
bb190:
  %t716 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t717 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eQuickAlone(ptr %v2, ptr %v2, { i64, ptr } %t716)
  store %"compiler/diagmsg:Msg" %t717, ptr %l282
  br label %bb191
bb191:
  %t718 = load ptr, ptr %l278, !tbaa !29
  %t719 = load %"compiler/diagmsg:Msg", ptr %l282
  %t720 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t718, %"compiler/diagmsg:Msg" %t719)
  store i32 %t720, ptr %l283
  %t721 = icmp ne i32 %t720, 0
  br i1 %t721, label %bb193, label %ok.722, !prof !99
ok.722:
  br label %bb192
bb192:
  br label %bb194
bb193:
  %t723 = load i32, ptr %l283, !tbaa !23
  %t724 = lshr i32 %t723, 16
  %t725 = and i32 %t723, 65535
  %t726 = icmp eq i32 %t724, 1
  %t727 = select i1 %t726, i32 1, i32 0
  %t728 = icmp eq i32 %t723, 0
  %t729 = shl i32 %t727, 16
  %t730 = or i32 %t729, %t725
  %t731 = select i1 %t728, i32 0, i32 %t730
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t731, ptr %rv
  br label %ret
bb194:
  br label %bb195
bb195:
  %t733 = load ptr, ptr %l1, !tbaa !29
  %t735 = getelementptr %"compiler/build:Config", ptr %t733, i32 0, i32 18
  %t736 = load i1, ptr %t735, !tbaa !21
  br i1 %t736, label %bb196, label %bb197
bb196:
  %t738 = load ptr, ptr %l1, !tbaa !29
  %t740 = call { i64, ptr } @compiler_2folang_2ebuildWord(ptr %v1, ptr %s5, ptr %t738)
  store { i64, ptr } %t740, ptr %l289
  br label %bb198
bb197:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb200
bb198:
  %t741 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t742 = extractvalue { i64, ptr } %t741, 0
  %t743 = extractvalue { i64, ptr } %t741, 1
  %t744 = mul i64 %t742, 1
  %t745 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t744)
  call void @llvm.memcpy.p0.p0.i64(ptr %t745, ptr %t743, i64 %t744, i1 false)
  %t746 = insertvalue { i64, ptr } undef, i64 %t742, 0
  %t747 = insertvalue { i64, ptr } %t746, ptr %t745, 1
  %t749 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s5, { i64, ptr } %t747, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t749, ptr %l291
  br label %bb199
bb199:
  %t750 = load i1, ptr %l291, !tbaa !21
  %t751 = xor i1 %t750, true
  store i1 %t751, ptr %l287, !tbaa !21
  br label %bb200
bb200:
  %t753 = load i1, ptr %l287, !tbaa !21
  br i1 %t753, label %bb201, label %bb202
bb201:
  %t754 = load ptr, ptr %l2, !tbaa !29
  store ptr %t754, ptr %l293, !tbaa !29
  %t755 = load ptr, ptr %l1, !tbaa !29
  %t757 = call { i64, ptr } @compiler_2folang_2ebuildWord(ptr %v1, ptr %v2, ptr %t755)
  store { i64, ptr } %t757, ptr %l295
  br label %bb203
bb202:
  br label %bb208
bb203:
  %t758 = load { i64, ptr }, ptr %l295, !tbaa !27
  %t759 = extractvalue { i64, ptr } %t758, 0
  %t760 = extractvalue { i64, ptr } %t758, 1
  %t761 = mul i64 %t759, 1
  %t762 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t761)
  call void @llvm.memcpy.p0.p0.i64(ptr %t762, ptr %t760, i64 %t761, i1 false)
  %t763 = insertvalue { i64, ptr } undef, i64 %t759, 0
  %t764 = insertvalue { i64, ptr } %t763, ptr %t762, 1
  %t766 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpretBuilds(ptr %v2, ptr %v2, { i64, ptr } %t764)
  store %"compiler/diagmsg:Msg" %t766, ptr %l297
  br label %bb204
bb204:
  %t767 = load ptr, ptr %l293, !tbaa !29
  %t768 = load %"compiler/diagmsg:Msg", ptr %l297
  %t769 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t767, %"compiler/diagmsg:Msg" %t768)
  store i32 %t769, ptr %l298
  %t770 = icmp ne i32 %t769, 0
  br i1 %t770, label %bb206, label %ok.771, !prof !99
ok.771:
  br label %bb205
bb205:
  br label %bb207
bb206:
  %t772 = load i32, ptr %l298, !tbaa !23
  %t773 = lshr i32 %t772, 16
  %t774 = and i32 %t772, 65535
  %t775 = icmp eq i32 %t773, 1
  %t776 = select i1 %t775, i32 1, i32 0
  %t777 = icmp eq i32 %t772, 0
  %t778 = shl i32 %t776, 16
  %t779 = or i32 %t778, %t774
  %t780 = select i1 %t777, i32 0, i32 %t779
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t780, ptr %rv
  br label %ret
bb207:
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  br label %bb317
bb209:
  %t782 = load ptr, ptr %lp3
  %t783 = getelementptr %"compiler/olang:CommandLine", ptr %t782, i32 0, i32 0
  %t784 = load i64, ptr %t783, !tbaa !24
  %t785 = load i64, ptr @G_2ecompiler_2folang_2eDoc, !tbaa !24
  %t788 = icmp eq i64 %t784, %t785
  br i1 %t788, label %bb210, label %bb211
bb210:
  %t790 = load ptr, ptr %lp3
  %t791 = getelementptr %"compiler/olang:CommandLine", ptr %t790, i32 0, i32 10
  %t792 = load { i64, ptr }, ptr %t791, !tbaa !27
  %t794 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s4, { i64, ptr } %t792, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t794, ptr %l305
  br label %bb212
bb211:
  store i1 false, ptr %l303, !tbaa !21
  br label %bb213
bb212:
  %t795 = load i1, ptr %l305, !tbaa !21
  store i1 %t795, ptr %l303, !tbaa !21
  br label %bb213
bb213:
  %t796 = load i1, ptr %l303, !tbaa !21
  br i1 %t796, label %bb214, label %bb215
bb214:
  %t797 = load ptr, ptr %lp3
  %t798 = getelementptr %"compiler/olang:CommandLine", ptr %t797, i32 0, i32 1
  %t800 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t798)
  store i64 %t800, ptr %l308
  br label %bb216
bb215:
  store i1 false, ptr %l306, !tbaa !21
  br label %bb217
bb216:
  %t801 = load i64, ptr %l308, !tbaa !24
  %t802 = icmp eq i64 %t801, 1
  store i1 %t802, ptr %l306, !tbaa !21
  br label %bb217
bb217:
  %t804 = load i1, ptr %l306, !tbaa !21
  br i1 %t804, label %bb218, label %bb219
bb218:
  %t805 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t807 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v0, { i64, ptr } %t805)
  store i1 %t807, ptr %l312
  br label %bb220
bb219:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb221
bb220:
  %t808 = load i1, ptr %l312, !tbaa !21
  %t809 = xor i1 %t808, true
  store i1 %t809, ptr %l310, !tbaa !21
  br label %bb221
bb221:
  %t811 = load i1, ptr %l310, !tbaa !21
  br i1 %t811, label %bb222, label %bb223
bb222:
  %t812 = load ptr, ptr %lp3
  %t813 = getelementptr %"compiler/olang:CommandLine", ptr %t812, i32 0, i32 4
  %t814 = load i1, ptr %t813, !tbaa !21
  br i1 %t814, label %bb224, label %bb225
bb223:
  br label %bb232
bb224:
  %t816 = load ptr, ptr %l2, !tbaa !29
  store ptr %t816, ptr %l315, !tbaa !29
  %t817 = load ptr, ptr %lp3
  %t818 = getelementptr %"compiler/olang:CommandLine", ptr %t817, i32 0, i32 1
  %t820 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t818, i64 0)
  store { i64, ptr } %t820, ptr %l317
  br label %bb226
bb225:
  br label %bb231
bb226:
  %t821 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t822 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDocOneName(ptr %v3, ptr %v2, { i64, ptr } %t821)
  store %"compiler/diagmsg:Msg" %t822, ptr %l318
  br label %bb227
bb227:
  %t823 = load ptr, ptr %l315, !tbaa !29
  %t824 = load %"compiler/diagmsg:Msg", ptr %l318
  %t825 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t823, %"compiler/diagmsg:Msg" %t824)
  store i32 %t825, ptr %l319
  %t826 = icmp ne i32 %t825, 0
  br i1 %t826, label %bb229, label %ok.827, !prof !99
ok.827:
  br label %bb228
bb228:
  br label %bb230
bb229:
  %t828 = load i32, ptr %l319, !tbaa !23
  %t829 = lshr i32 %t828, 16
  %t830 = and i32 %t828, 65535
  %t831 = icmp eq i32 %t829, 1
  %t832 = select i1 %t831, i32 1, i32 0
  %t833 = icmp eq i32 %t828, 0
  %t834 = shl i32 %t832, 16
  %t835 = or i32 %t834, %t830
  %t836 = select i1 %t833, i32 0, i32 %t835
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t836, ptr %rv
  br label %ret
bb230:
  br label %bb231
bb231:
  %t838 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t840 = load ptr, ptr %lp3
  %t841 = getelementptr %"compiler/olang:CommandLine", ptr %t840, i32 0, i32 3
  store { i64, ptr } %t838, ptr %t841, !tbaa !27
  %t842 = load ptr, ptr %lp3
  %t843 = getelementptr %"compiler/olang:CommandLine", ptr %t842, i32 0, i32 4
  store i1 true, ptr %t843, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb317
bb232:
  %t844 = load ptr, ptr %lp3
  %t845 = getelementptr %"compiler/olang:CommandLine", ptr %t844, i32 0, i32 0
  %t846 = load i64, ptr %t845, !tbaa !24
  %t847 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t850 = icmp eq i64 %t846, %t847
  br i1 %t850, label %bb233, label %bb234
bb233:
  store i1 true, ptr %l325, !tbaa !21
  br label %bb235
bb234:
  %t852 = load ptr, ptr %lp3
  %t853 = getelementptr %"compiler/olang:CommandLine", ptr %t852, i32 0, i32 0
  %t854 = load i64, ptr %t853, !tbaa !24
  %t855 = load i64, ptr @G_2ecompiler_2folang_2eHelp, !tbaa !24
  %t858 = icmp eq i64 %t854, %t855
  store i1 %t858, ptr %l325, !tbaa !21
  br label %bb235
bb235:
  %t860 = load i1, ptr %l325, !tbaa !21
  br i1 %t860, label %bb236, label %bb237
bb236:
  %t861 = load ptr, ptr %lp3
  %t862 = getelementptr %"compiler/olang:CommandLine", ptr %t861, i32 0, i32 0
  %t863 = load i64, ptr %t862, !tbaa !24
  %t864 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t867 = icmp eq i64 %t863, %t864
  br i1 %t867, label %bb238, label %bb239
bb237:
  br label %bb264
bb238:
  %t869 = load ptr, ptr %lp3
  %t870 = getelementptr %"compiler/olang:CommandLine", ptr %t869, i32 0, i32 4
  %t871 = load i1, ptr %t870, !tbaa !21
  store i1 %t871, ptr %l332, !tbaa !21
  br label %bb240
bb239:
  store i1 false, ptr %l332, !tbaa !21
  br label %bb240
bb240:
  %t873 = load i1, ptr %l332, !tbaa !21
  br i1 %t873, label %bb241, label %bb242
bb241:
  %t874 = load ptr, ptr %lp3
  %t875 = getelementptr %"compiler/olang:CommandLine", ptr %t874, i32 0, i32 1
  %t877 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t875)
  store i64 %t877, ptr %l336
  br label %bb243
bb242:
  store i1 false, ptr %l334, !tbaa !21
  br label %bb244
bb243:
  %t878 = load i64, ptr %l336, !tbaa !24
  %t879 = icmp eq i64 %t878, 0
  store i1 %t879, ptr %l334, !tbaa !21
  br label %bb244
bb244:
  %t881 = load i1, ptr %l334, !tbaa !21
  br i1 %t881, label %bb245, label %bb246
bb245:
  %t882 = load ptr, ptr %lp3
  %t883 = getelementptr %"compiler/olang:CommandLine", ptr %t882, i32 0, i32 3
  %t884 = load { i64, ptr }, ptr %t883, !tbaa !27
  %t886 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v3, { i64, ptr } %t884)
  store i1 %t886, ptr %l340
  br label %bb247
bb246:
  store i1 false, ptr %l338, !tbaa !21
  br label %bb248
bb247:
  %t887 = load i1, ptr %l340, !tbaa !21
  store i1 %t887, ptr %l338, !tbaa !21
  br label %bb248
bb248:
  %t888 = load i1, ptr %l338, !tbaa !21
  br i1 %t888, label %bb249, label %bb250
bb249:
  %t889 = load ptr, ptr %lp3
  %t890 = getelementptr %"compiler/olang:CommandLine", ptr %t889, i32 0, i32 1
  %t891 = load ptr, ptr %lp3
  %t892 = getelementptr %"compiler/olang:CommandLine", ptr %t891, i32 0, i32 3
  %t893 = load { i64, ptr }, ptr %t892, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t890, { i64, ptr } %t893)
  br label %bb251
bb250:
  br label %bb252
bb251:
  %t896 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t898 = load ptr, ptr %lp3
  %t899 = getelementptr %"compiler/olang:CommandLine", ptr %t898, i32 0, i32 3
  store { i64, ptr } %t896, ptr %t899, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb317
bb252:
  %t900 = load ptr, ptr %lp3
  %t901 = getelementptr %"compiler/olang:CommandLine", ptr %t900, i32 0, i32 4
  %t902 = load i1, ptr %t901, !tbaa !21
  br i1 %t902, label %bb253, label %bb254
bb253:
  %t904 = load ptr, ptr %l2, !tbaa !29
  store ptr %t904, ptr %l345, !tbaa !29
  %t905 = load ptr, ptr %lp3
  %t906 = getelementptr %"compiler/olang:CommandLine", ptr %t905, i32 0, i32 0
  %t907 = load i64, ptr %t906, !tbaa !24
  %t908 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t911 = icmp eq i64 %t907, %t908
  br i1 %t911, label %bb255, label %bb256
bb254:
  br label %bb263
bb255:
  %t913 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsRule(ptr %v2)
  store %"compiler/diagmsg:Msg" %t913, ptr %l350
  br label %bb257
bb256:
  %t914 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eHelpOneMode(ptr %v2)
  store %"compiler/diagmsg:Msg" %t914, ptr %l351
  br label %bb258
bb257:
  %t915 = load %"compiler/diagmsg:Msg", ptr %l350
  store %"compiler/diagmsg:Msg" %t915, ptr %l349
  br label %bb259
bb258:
  %t916 = load %"compiler/diagmsg:Msg", ptr %l351
  store %"compiler/diagmsg:Msg" %t916, ptr %l349
  br label %bb259
bb259:
  %t917 = load ptr, ptr %l345, !tbaa !29
  %t918 = load %"compiler/diagmsg:Msg", ptr %l349
  %t919 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t917, %"compiler/diagmsg:Msg" %t918)
  store i32 %t919, ptr %l352
  %t920 = icmp ne i32 %t919, 0
  br i1 %t920, label %bb261, label %ok.921, !prof !99
ok.921:
  br label %bb260
bb260:
  br label %bb262
bb261:
  %t922 = load i32, ptr %l352, !tbaa !23
  %t923 = lshr i32 %t922, 16
  %t924 = and i32 %t922, 65535
  %t925 = icmp eq i32 %t923, 1
  %t926 = select i1 %t925, i32 1, i32 0
  %t927 = icmp eq i32 %t922, 0
  %t928 = shl i32 %t926, 16
  %t929 = or i32 %t928, %t924
  %t930 = select i1 %t927, i32 0, i32 %t929
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t930, ptr %rv
  br label %ret
bb262:
  br label %bb263
bb263:
  %t932 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t934 = load ptr, ptr %lp3
  %t935 = getelementptr %"compiler/olang:CommandLine", ptr %t934, i32 0, i32 3
  store { i64, ptr } %t932, ptr %t935, !tbaa !27
  %t936 = load ptr, ptr %lp3
  %t937 = getelementptr %"compiler/olang:CommandLine", ptr %t936, i32 0, i32 4
  store i1 true, ptr %t937, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb317
bb264:
  %t938 = load ptr, ptr %lp3
  %t939 = getelementptr %"compiler/olang:CommandLine", ptr %t938, i32 0, i32 0
  %t940 = load i64, ptr %t939, !tbaa !24
  %t941 = load i64, ptr @G_2ecompiler_2folang_2eRun, !tbaa !24
  %t944 = icmp eq i64 %t940, %t941
  br i1 %t944, label %bb265, label %bb266
bb265:
  %t946 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t948 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v0, { i64, ptr } %t946)
  store i1 %t948, ptr %l360
  br label %bb267
bb266:
  store i1 false, ptr %l358, !tbaa !21
  br label %bb268
bb267:
  %t949 = load i1, ptr %l360, !tbaa !21
  %t950 = xor i1 %t949, true
  store i1 %t950, ptr %l358, !tbaa !21
  br label %bb268
bb268:
  %t952 = load i1, ptr %l358, !tbaa !21
  br i1 %t952, label %bb269, label %bb270
bb269:
  %t953 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t955 = call i64 @compiler_2folang_2emodeNumber(ptr %v0, { i64, ptr } %t953)
  store i64 %t955, ptr %l363
  br label %bb271
bb270:
  br label %bb283
bb271:
  %t956 = load i64, ptr %l363, !tbaa !24
  %t957 = icmp sgt i64 %t956, 0
  br i1 %t957, label %bb272, label %bb273
bb272:
  %t959 = load ptr, ptr %l2, !tbaa !29
  store ptr %t959, ptr %l365, !tbaa !29
  %t960 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t962 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeFirst(ptr %v0, ptr %v2, { i64, ptr } %t960)
  store %"compiler/diagmsg:Msg" %t962, ptr %l367
  br label %bb274
bb273:
  br label %bb278
bb274:
  %t963 = load ptr, ptr %l365, !tbaa !29
  %t964 = load %"compiler/diagmsg:Msg", ptr %l367
  %t965 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t963, %"compiler/diagmsg:Msg" %t964)
  store i32 %t965, ptr %l368
  %t966 = icmp ne i32 %t965, 0
  br i1 %t966, label %bb276, label %ok.967, !prof !99
ok.967:
  br label %bb275
bb275:
  br label %bb277
bb276:
  %t968 = load i32, ptr %l368, !tbaa !23
  %t969 = lshr i32 %t968, 16
  %t970 = and i32 %t968, 65535
  %t971 = icmp eq i32 %t969, 1
  %t972 = select i1 %t971, i32 1, i32 0
  %t973 = icmp eq i32 %t968, 0
  %t974 = shl i32 %t972, 16
  %t975 = or i32 %t974, %t970
  %t976 = select i1 %t973, i32 0, i32 %t975
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t976, ptr %rv
  br label %ret
bb277:
  br label %bb278
bb278:
  %t978 = load ptr, ptr %l2, !tbaa !29
  store ptr %t978, ptr %l370, !tbaa !29
  %t979 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t981 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotASource(ptr %v0, ptr %v2, { i64, ptr } %t979)
  store %"compiler/diagmsg:Msg" %t981, ptr %l372
  br label %bb279
bb279:
  %t982 = load ptr, ptr %l370, !tbaa !29
  %t983 = load %"compiler/diagmsg:Msg", ptr %l372
  %t984 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t982, %"compiler/diagmsg:Msg" %t983)
  store i32 %t984, ptr %l373
  %t985 = icmp ne i32 %t984, 0
  br i1 %t985, label %bb281, label %ok.986, !prof !99
ok.986:
  br label %bb280
bb280:
  br label %bb282
bb281:
  %t987 = load i32, ptr %l373, !tbaa !23
  %t988 = lshr i32 %t987, 16
  %t989 = and i32 %t987, 65535
  %t990 = icmp eq i32 %t988, 1
  %t991 = select i1 %t990, i32 1, i32 0
  %t992 = icmp eq i32 %t987, 0
  %t993 = shl i32 %t991, 16
  %t994 = or i32 %t993, %t989
  %t995 = select i1 %t992, i32 0, i32 %t994
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t995, ptr %rv
  br label %ret
bb282:
  br label %bb283
bb283:
  %t997 = load ptr, ptr %lp3
  %t998 = getelementptr %"compiler/olang:CommandLine", ptr %t997, i32 0, i32 0
  %t999 = load i64, ptr %t998, !tbaa !24
  %t1000 = load i64, ptr @G_2ecompiler_2folang_2eTest, !tbaa !24
  %t1003 = icmp eq i64 %t999, %t1000
  br i1 %t1003, label %bb284, label %bb285
bb284:
  %t1005 = load ptr, ptr %lp3
  %t1006 = getelementptr %"compiler/olang:CommandLine", ptr %t1005, i32 0, i32 1
  %t1008 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t1006)
  store i64 %t1008, ptr %l380
  br label %bb286
bb285:
  store i1 false, ptr %l378, !tbaa !21
  br label %bb287
bb286:
  %t1009 = load i64, ptr %l380, !tbaa !24
  %t1010 = icmp sgt i64 %t1009, 0
  store i1 %t1010, ptr %l378, !tbaa !21
  br label %bb287
bb287:
  %t1012 = load i1, ptr %l378, !tbaa !21
  br i1 %t1012, label %bb288, label %bb289
bb288:
  %t1013 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1015 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v0, { i64, ptr } %t1013)
  store i1 %t1015, ptr %l384
  br label %bb290
bb289:
  store i1 false, ptr %l382, !tbaa !21
  br label %bb291
bb290:
  %t1016 = load i1, ptr %l384, !tbaa !21
  %t1017 = xor i1 %t1016, true
  store i1 %t1017, ptr %l382, !tbaa !21
  br label %bb291
bb291:
  %t1019 = load i1, ptr %l382, !tbaa !21
  br i1 %t1019, label %bb292, label %bb293
bb292:
  %t1020 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1022 = call i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %t1020)
  store i1 %t1022, ptr %l388
  br label %bb294
bb293:
  store i1 false, ptr %l386, !tbaa !21
  br label %bb295
bb294:
  %t1023 = load i1, ptr %l388, !tbaa !21
  %t1024 = xor i1 %t1023, true
  store i1 %t1024, ptr %l386, !tbaa !21
  br label %bb295
bb295:
  %t1026 = load i1, ptr %l386, !tbaa !21
  br i1 %t1026, label %bb296, label %bb297
bb296:
  %t1027 = load ptr, ptr %lp3
  %t1028 = getelementptr %"compiler/olang:CommandLine", ptr %t1027, i32 0, i32 2
  %t1029 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v0, ptr %t1028, { i64, ptr } %t1029)
  br label %bb298
bb297:
  br label %bb299
bb298:
  call void @__olang_scope_close(ptr %s4)
  br label %bb317
bb299:
  %t1032 = load ptr, ptr %lp3
  %t1033 = getelementptr %"compiler/olang:CommandLine", ptr %t1032, i32 0, i32 1
  %t1034 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v0, ptr %t1033, { i64, ptr } %t1034)
  br label %bb300
bb300:
  %t1037 = load ptr, ptr %lp3
  %t1038 = getelementptr %"compiler/olang:CommandLine", ptr %t1037, i32 0, i32 0
  %t1039 = load i64, ptr %t1038, !tbaa !24
  %t1040 = load i64, ptr @G_2ecompiler_2folang_2eRun, !tbaa !24
  %t1043 = icmp eq i64 %t1039, %t1040
  br i1 %t1043, label %bb301, label %bb302
bb301:
  store i1 true, ptr %l397, !tbaa !21
  br label %bb303
bb302:
  %t1045 = load ptr, ptr %lp3
  %t1046 = getelementptr %"compiler/olang:CommandLine", ptr %t1045, i32 0, i32 0
  %t1047 = load i64, ptr %t1046, !tbaa !24
  %t1048 = load i64, ptr @G_2ecompiler_2folang_2eInterp, !tbaa !24
  %t1051 = icmp eq i64 %t1047, %t1048
  store i1 %t1051, ptr %l397, !tbaa !21
  br label %bb303
bb303:
  %t1053 = load i1, ptr %l397, !tbaa !21
  br i1 %t1053, label %bb304, label %bb305
bb304:
  store i1 true, ptr %l401, !tbaa !21
  br label %bb306
bb305:
  %t1054 = load ptr, ptr %lp3
  %t1055 = getelementptr %"compiler/olang:CommandLine", ptr %t1054, i32 0, i32 0
  %t1056 = load i64, ptr %t1055, !tbaa !24
  %t1057 = load i64, ptr @G_2ecompiler_2folang_2eProfile, !tbaa !24
  %t1060 = icmp eq i64 %t1056, %t1057
  store i1 %t1060, ptr %l401, !tbaa !21
  br label %bb306
bb306:
  %t1062 = load i1, ptr %l401, !tbaa !21
  br i1 %t1062, label %bb307, label %bb308
bb307:
  br label %bb309
bb308:
  br label %bb316
bb309:
  %t1063 = load i64, ptr %l4, !tbaa !24
  %t1064 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t1066 = extractvalue { i64, ptr } %t1064, 0
  %t1069 = icmp slt i64 %t1063, %t1066
  %t1071 = xor i1 %t1069, true
  br i1 %t1071, label %bb310, label %bb311
bb310:
  br label %bb315
bb311:
  br label %bb312
bb312:
  %t1073 = load ptr, ptr %lp3
  %t1074 = getelementptr %"compiler/olang:CommandLine", ptr %t1073, i32 0, i32 5
  %t1075 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1075, ptr %l411, !tbaa !27
  %t1076 = load i64, ptr %l4, !tbaa !24
  %t1078 = getelementptr { i64, ptr }, ptr %l411, i32 0, i32 1
  %t1079 = load ptr, ptr %t1078, !tbaa !27
  %t1080 = getelementptr { i64, ptr }, ptr %t1079, i64 %t1076
  %t1081 = load { i64, ptr }, ptr %t1080, !tbaa !37
  %t1083 = extractvalue { i64, ptr } %t1081, 1
  %t1084 = extractvalue { i64, ptr } %t1081, 0
  %t1085 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t1084)
  call void @olang_textcopy(ptr %t1085, ptr %t1083, i64 %t1084)
  %t1086 = insertvalue { i64, ptr } undef, i64 %t1084, 0
  %t1087 = insertvalue { i64, ptr } %t1086, ptr %t1085, 1
  %t1089 = extractvalue { i64, ptr } %t1087, 0
  %t1090 = extractvalue { i64, ptr } %t1087, 1
  %t1091 = mul i64 %t1089, 1
  %t1092 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t1091)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1092, ptr %t1090, i64 %t1091, i1 false)
  %t1093 = insertvalue { i64, ptr } undef, i64 %t1089, 0
  %t1094 = insertvalue { i64, ptr } %t1093, ptr %t1092, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t1074, { i64, ptr } %t1094)
  br label %bb313
bb313:
  %t1097 = load i64, ptr %l4, !tbaa !24
  %t1099 = add i64 %t1097, 1
  store i64 %t1099, ptr %l4, !tbaa !24
  br label %bb314
bb314:
  br label %bb309
bb315:
  br label %bb316
bb316:
  call void @__olang_scope_close(ptr %s4)
  br label %bb317
bb317:
  br label %bb25
bb318:
  %t1101 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l418, ptr %t1101, i64 240, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l418, i64 240, i1 false)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2folang_2eCommandLine_2ePrepare(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/olang:CommandLine"
  %l12 = alloca %"compiler/olang:CommandLine"
  %l13 = alloca i32
  %l18 = alloca %"compiler/olang:CommandLine"
  %l22 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i32
  %l35 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i64
  %l42 = alloca i1
  %l45 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca i1
  %l50 = alloca ptr
  %l52 = alloca %"compiler/diagmsg:Msg"
  %l53 = alloca i32
  %l58 = alloca i1
  %l62 = alloca i1
  %l64 = alloca i64
  %l66 = alloca i1
  %l68 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca %"compiler/diagmsg:Msg"
  %l72 = alloca i32
  %l81 = alloca ptr
  %l82 = alloca %"compiler/diagmsg:Msg"
  %l83 = alloca i32
  %l86 = alloca i64
  %l89 = alloca i1
  %l90 = alloca ptr
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca i32
  %l95 = alloca %"compiler/olang:CommandLine"
  %l99 = alloca i1
  %l103 = alloca i1
  %l105 = alloca i64
  %l107 = alloca ptr
  %l109 = alloca { i64, ptr }
  %l111 = alloca %"compiler/diagmsg:Msg"
  %l112 = alloca i32
  %l117 = alloca i1
  %l119 = alloca i1
  %l120 = alloca i1
  %l122 = alloca i64
  %l124 = alloca ptr
  %l126 = alloca i64
  %l128 = alloca %"compiler/diagmsg:Msg"
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l134 = alloca { i64, ptr }
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l137 = alloca i32
  %l140 = alloca i64
  %l142 = alloca i1
  %l146 = alloca i1
  %l150 = alloca i1
  %l154 = alloca ptr
  %l156 = alloca { i64, ptr }
  %l158 = alloca %"compiler/diagmsg:Msg"
  %l159 = alloca i32
  %l164 = alloca i1
  %l166 = alloca i64
  %l168 = alloca ptr
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i32
  %l175 = alloca i1
  %l179 = alloca i1
  %l183 = alloca i1
  %l187 = alloca i1
  %l189 = alloca i64
  %l191 = alloca ptr
  %l193 = alloca { i64, ptr }
  %l195 = alloca %"compiler/diagmsg:Msg"
  %l196 = alloca i32
  %l201 = alloca i1
  %l204 = alloca i1
  %l205 = alloca ptr
  %l206 = alloca %"compiler/diagmsg:Msg"
  %l207 = alloca i32
  %l211 = alloca i1
  %l214 = alloca i1
  %l216 = alloca ptr
  %l217 = alloca %"compiler/diagmsg:Msg"
  %l218 = alloca i32
  %l222 = alloca i1
  %l224 = alloca i1
  %l226 = alloca i64
  %l228 = alloca ptr
  %l229 = alloca %"compiler/diagmsg:Msg"
  %l230 = alloca i32
  %l235 = alloca i1
  %l239 = alloca %"compiler/olang:CommandLine"
  %l241 = alloca i1
  %l245 = alloca i32
  %l250 = alloca %"compiler/olang:CommandLine"
  %l253 = alloca ptr
  %l254 = alloca { i64, ptr }
  %l256 = alloca ptr
  %l257 = alloca { i64, ptr }
  %l258 = alloca { i64, ptr }
  %l259 = alloca i32
  %l265 = alloca i1
  %l269 = alloca i1
  %l273 = alloca i1
  %l280 = alloca i1
  %l286 = alloca i1
  %l290 = alloca i1
  %l294 = alloca i1
  %l298 = alloca i1
  %l302 = alloca i1
  %l304 = alloca i1
  %l308 = alloca i1
  %l311 = alloca { i64, ptr }
  %l313 = alloca { i64, ptr }
  %l315 = alloca ptr
  %l316 = alloca %"compiler/target:Target"
  %l317 = alloca { i64, ptr }
  %l319 = alloca { i64, ptr }
  %l321 = alloca i1
  %l323 = alloca i1
  %l326 = alloca i1
  %l329 = alloca %"compiler/target:Target"
  %l330 = alloca i32
  %l332 = alloca i1
  %l336 = alloca i1
  %l339 = alloca ptr
  %l341 = alloca { i64, ptr }
  %l344 = alloca %"compiler/diagmsg:Msg"
  %l345 = alloca i32
  %l355 = alloca ptr
  %l358 = alloca i1
  %l362 = alloca i1
  %l367 = alloca i32
  %l369 = alloca %"compiler/olang:CommandLine"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t4 = alloca %"compiler/olang:CommandLine", align 8
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i32 @compiler_2folang_2eCommandLine_2eParse(ptr %t4, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %t2, ptr %t3)
  store i32 %t8, ptr %l13
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %t4, i64 240, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l12, i64 240, i1 false)
  br label %bb3
bb2:
  %t11 = load i32, ptr %l13, !tbaa !23
  %t12 = lshr i32 %t11, 16
  %t13 = and i32 %t11, 65535
  %t14 = icmp eq i32 %t12, 1
  %t15 = select i1 %t14, i32 1, i32 0
  %t16 = icmp eq i32 %t11, 0
  %t17 = shl i32 %t15, 16
  %t18 = or i32 %t17, %t13
  %t19 = select i1 %t16, i32 0, i32 %t18
  call void @__olang_scope_close(ptr %s0)
  store i32 %t19, ptr %rv
  br label %ret
bb3:
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 240, i64 8)
  store ptr %t21, ptr %lp3
  %t22 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l8, i64 240, i1 false)
  %t23 = load ptr, ptr %lp3
  %t24 = getelementptr %"compiler/olang:CommandLine", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2folang_2eHelp, !tbaa !24
  %t29 = icmp eq i64 %t25, %t26
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t31, i64 240, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l18, i64 240, i1 false)
  store i32 0, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t32 = load ptr, ptr %lp3
  %t33 = getelementptr %"compiler/olang:CommandLine", ptr %t32, i32 0, i32 0
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t38 = icmp eq i64 %t34, %t35
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/build:Config", ptr %t40, i32 0, i32 5
  %t43 = load i1, ptr %t42, !tbaa !21
  store i1 %t43, ptr %l22, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t46 = load ptr, ptr %lp3
  %t47 = getelementptr %"compiler/olang:CommandLine", ptr %t46, i32 0, i32 12
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t48, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t50, ptr %l27
  br label %bb12
bb11:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb13
bb12:
  %t51 = load i1, ptr %l27, !tbaa !21
  store i1 %t51, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l25, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l2, !tbaa !29
  store ptr %t53, ptr %l28, !tbaa !29
  %t54 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingQuick(ptr %v2, ptr %v2, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t54, ptr %l29
  br label %bb16
bb15:
  br label %bb20
bb16:
  %t55 = load ptr, ptr %l28, !tbaa !29
  %t56 = load %"compiler/diagmsg:Msg", ptr %l29
  %t57 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t55, %"compiler/diagmsg:Msg" %t56)
  store i32 %t57, ptr %l30
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb18, label %ok.59, !prof !99
ok.59:
  br label %bb17
bb17:
  br label %bb19
bb18:
  %t60 = load i32, ptr %l30, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  call void @__olang_scope_close(ptr %s0)
  store i32 %t68, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t70 = load ptr, ptr %lp3
  %t71 = getelementptr %"compiler/olang:CommandLine", ptr %t70, i32 0, i32 0
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t76 = icmp eq i64 %t72, %t73
  br i1 %t76, label %bb21, label %bb22
bb21:
  %t78 = load ptr, ptr %lp3
  %t79 = getelementptr %"compiler/olang:CommandLine", ptr %t78, i32 0, i32 12
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t80, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t82, ptr %l37
  br label %bb23
bb22:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb24
bb23:
  %t83 = load i1, ptr %l37, !tbaa !21
  %t84 = xor i1 %t83, true
  store i1 %t84, ptr %l35, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l35, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %lp3
  %t88 = getelementptr %"compiler/olang:CommandLine", ptr %t87, i32 0, i32 1
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t88)
  store i64 %t90, ptr %l40
  br label %bb27
bb26:
  %t91 = load ptr, ptr %lp3
  %t92 = getelementptr %"compiler/olang:CommandLine", ptr %t91, i32 0, i32 0
  %t93 = load i64, ptr %t92, !tbaa !24
  %t94 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t97 = icmp eq i64 %t93, %t94
  br i1 %t97, label %bb43, label %bb44
bb27:
  %t99 = load i64, ptr %l40, !tbaa !24
  %t100 = icmp ne i64 %t99, 1
  br i1 %t100, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb30
bb29:
  %t102 = load ptr, ptr %lp3
  %t103 = getelementptr %"compiler/olang:CommandLine", ptr %t102, i32 0, i32 4
  %t104 = load i1, ptr %t103, !tbaa !21
  %t106 = xor i1 %t104, true
  store i1 %t106, ptr %l42, !tbaa !21
  br label %bb30
bb30:
  %t108 = load i1, ptr %l42, !tbaa !21
  br i1 %t108, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb35
bb32:
  %t109 = load ptr, ptr %lp3
  %t110 = getelementptr %"compiler/olang:CommandLine", ptr %t109, i32 0, i32 1
  %t112 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t110, i64 0)
  store { i64, ptr } %t112, ptr %l47
  br label %bb33
bb33:
  %t113 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t114 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v3, { i64, ptr } %t113)
  store i1 %t114, ptr %l48
  br label %bb34
bb34:
  %t115 = load i1, ptr %l48, !tbaa !21
  %t116 = xor i1 %t115, true
  store i1 %t116, ptr %l45, !tbaa !21
  br label %bb35
bb35:
  %t118 = load i1, ptr %l45, !tbaa !21
  br i1 %t118, label %bb36, label %bb37
bb36:
  %t119 = load ptr, ptr %l2, !tbaa !29
  store ptr %t119, ptr %l50, !tbaa !29
  %t120 = load ptr, ptr %lp3
  %t121 = getelementptr %"compiler/olang:CommandLine", ptr %t120, i32 0, i32 12
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t124 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingUsage(ptr %v3, ptr %v2, { i64, ptr } %t122)
  store %"compiler/diagmsg:Msg" %t124, ptr %l52
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t125 = load ptr, ptr %l50, !tbaa !29
  %t126 = load %"compiler/diagmsg:Msg", ptr %l52
  %t127 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t125, %"compiler/diagmsg:Msg" %t126)
  store i32 %t127, ptr %l53
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb40, label %ok.129, !prof !99
ok.129:
  br label %bb39
bb39:
  br label %bb41
bb40:
  %t130 = load i32, ptr %l53, !tbaa !23
  %t131 = lshr i32 %t130, 16
  %t132 = and i32 %t130, 65535
  %t133 = icmp eq i32 %t131, 1
  %t134 = select i1 %t133, i32 1, i32 0
  %t135 = icmp eq i32 %t130, 0
  %t136 = shl i32 %t134, 16
  %t137 = or i32 %t136, %t132
  %t138 = select i1 %t135, i32 0, i32 %t137
  call void @__olang_scope_close(ptr %s0)
  store i32 %t138, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  br label %bb87
bb43:
  %t140 = load ptr, ptr %lp3
  %t141 = getelementptr %"compiler/olang:CommandLine", ptr %t140, i32 0, i32 11
  %t142 = load i1, ptr %t141, !tbaa !21
  store i1 %t142, ptr %l58, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb45
bb45:
  %t144 = load i1, ptr %l58, !tbaa !21
  br i1 %t144, label %bb46, label %bb47
bb46:
  %t145 = load ptr, ptr %lp3
  %t146 = getelementptr %"compiler/olang:CommandLine", ptr %t145, i32 0, i32 4
  %t147 = load i1, ptr %t146, !tbaa !21
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb48, label %bb49
bb47:
  %t151 = load ptr, ptr %lp3
  %t152 = getelementptr %"compiler/olang:CommandLine", ptr %t151, i32 0, i32 0
  %t153 = load i64, ptr %t152, !tbaa !24
  %t154 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t157 = icmp eq i64 %t153, %t154
  br i1 %t157, label %bb64, label %bb65
bb48:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb51
bb49:
  %t159 = load ptr, ptr %lp3
  %t160 = getelementptr %"compiler/olang:CommandLine", ptr %t159, i32 0, i32 1
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t160)
  store i64 %t162, ptr %l64
  br label %bb50
bb50:
  %t163 = load i64, ptr %l64, !tbaa !24
  %t164 = icmp sgt i64 %t163, 0
  store i1 %t164, ptr %l62, !tbaa !21
  br label %bb51
bb51:
  %t166 = load i1, ptr %l62, !tbaa !21
  br i1 %t166, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb55
bb53:
  %t167 = load ptr, ptr %lp3
  %t168 = getelementptr %"compiler/olang:CommandLine", ptr %t167, i32 0, i32 3
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  %t171 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v3, { i64, ptr } %t169)
  store i1 %t171, ptr %l68
  br label %bb54
bb54:
  %t172 = load i1, ptr %l68, !tbaa !21
  %t173 = xor i1 %t172, true
  store i1 %t173, ptr %l66, !tbaa !21
  br label %bb55
bb55:
  %t175 = load i1, ptr %l66, !tbaa !21
  br i1 %t175, label %bb56, label %bb57
bb56:
  %t176 = load ptr, ptr %l2, !tbaa !29
  store ptr %t176, ptr %l70, !tbaa !29
  %t177 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCapsOneFile(ptr %v2)
  store %"compiler/diagmsg:Msg" %t177, ptr %l71
  br label %bb58
bb57:
  br label %bb62
bb58:
  %t178 = load ptr, ptr %l70, !tbaa !29
  %t179 = load %"compiler/diagmsg:Msg", ptr %l71
  %t180 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t178, %"compiler/diagmsg:Msg" %t179)
  store i32 %t180, ptr %l72
  %t181 = icmp ne i32 %t180, 0
  br i1 %t181, label %bb60, label %ok.182, !prof !99
ok.182:
  br label %bb59
bb59:
  br label %bb61
bb60:
  %t183 = load i32, ptr %l72, !tbaa !23
  %t184 = lshr i32 %t183, 16
  %t185 = and i32 %t183, 65535
  %t186 = icmp eq i32 %t184, 1
  %t187 = select i1 %t186, i32 1, i32 0
  %t188 = icmp eq i32 %t183, 0
  %t189 = shl i32 %t187, 16
  %t190 = or i32 %t189, %t185
  %t191 = select i1 %t188, i32 0, i32 %t190
  call void @__olang_scope_close(ptr %s0)
  store i32 %t191, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t193 = load ptr, ptr %lp3
  %t194 = getelementptr %"compiler/olang:CommandLine", ptr %t193, i32 0, i32 1
  %t195 = load ptr, ptr %lp3
  %t196 = getelementptr %"compiler/olang:CommandLine", ptr %t195, i32 0, i32 3
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t194, { i64, ptr } %t197)
  br label %bb63
bb63:
  %t200 = load ptr, ptr %lp3
  %t201 = getelementptr %"compiler/olang:CommandLine", ptr %t200, i32 0, i32 3
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %t201, !tbaa !27
  br label %bb86
bb64:
  %t202 = load ptr, ptr %lp3
  %t203 = getelementptr %"compiler/olang:CommandLine", ptr %t202, i32 0, i32 4
  %t204 = load i1, ptr %t203, !tbaa !21
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb66, label %bb67
bb65:
  br label %bb85
bb66:
  %t208 = load ptr, ptr %l2, !tbaa !29
  store ptr %t208, ptr %l81, !tbaa !29
  %t209 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsRule(ptr %v2)
  store %"compiler/diagmsg:Msg" %t209, ptr %l82
  br label %bb68
bb67:
  br label %bb72
bb68:
  %t210 = load ptr, ptr %l81, !tbaa !29
  %t211 = load %"compiler/diagmsg:Msg", ptr %l82
  %t212 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t210, %"compiler/diagmsg:Msg" %t211)
  store i32 %t212, ptr %l83
  %t213 = icmp ne i32 %t212, 0
  br i1 %t213, label %bb70, label %ok.214, !prof !99
ok.214:
  br label %bb69
bb69:
  br label %bb71
bb70:
  %t215 = load i32, ptr %l83, !tbaa !23
  %t216 = lshr i32 %t215, 16
  %t217 = and i32 %t215, 65535
  %t218 = icmp eq i32 %t216, 1
  %t219 = select i1 %t218, i32 1, i32 0
  %t220 = icmp eq i32 %t215, 0
  %t221 = shl i32 %t219, 16
  %t222 = or i32 %t221, %t217
  %t223 = select i1 %t220, i32 0, i32 %t222
  call void @__olang_scope_close(ptr %s0)
  store i32 %t223, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t225 = load ptr, ptr %lp3
  %t226 = getelementptr %"compiler/olang:CommandLine", ptr %t225, i32 0, i32 1
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t226)
  store i64 %t228, ptr %l86
  br label %bb73
bb73:
  %t229 = load i64, ptr %l86, !tbaa !24
  %t230 = icmp eq i64 %t229, 0
  br i1 %t230, label %bb74, label %bb75
bb74:
  %t232 = load ptr, ptr %lp3
  %t233 = getelementptr %"compiler/olang:CommandLine", ptr %t232, i32 0, i32 3
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  %t236 = call i1 @compiler_2folang_2eendsWithOlang(ptr %v3, { i64, ptr } %t234)
  store i1 %t236, ptr %l89
  br label %bb76
bb75:
  br label %bb84
bb76:
  %t237 = load i1, ptr %l89, !tbaa !21
  br i1 %t237, label %bb77, label %bb78
bb77:
  %t238 = load ptr, ptr %l2, !tbaa !29
  store ptr %t238, ptr %l90, !tbaa !29
  %t239 = load ptr, ptr %lp3
  %t240 = getelementptr %"compiler/olang:CommandLine", ptr %t239, i32 0, i32 3
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t243 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsName(ptr %v3, ptr %v2, { i64, ptr } %t241)
  store %"compiler/diagmsg:Msg" %t243, ptr %l92
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t244 = load ptr, ptr %l90, !tbaa !29
  %t245 = load %"compiler/diagmsg:Msg", ptr %l92
  %t246 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t244, %"compiler/diagmsg:Msg" %t245)
  store i32 %t246, ptr %l93
  %t247 = icmp ne i32 %t246, 0
  br i1 %t247, label %bb81, label %ok.248, !prof !99
ok.248:
  br label %bb80
bb80:
  br label %bb82
bb81:
  %t249 = load i32, ptr %l93, !tbaa !23
  %t250 = lshr i32 %t249, 16
  %t251 = and i32 %t249, 65535
  %t252 = icmp eq i32 %t250, 1
  %t253 = select i1 %t252, i32 1, i32 0
  %t254 = icmp eq i32 %t249, 0
  %t255 = shl i32 %t253, 16
  %t256 = or i32 %t255, %t251
  %t257 = select i1 %t254, i32 0, i32 %t256
  call void @__olang_scope_close(ptr %s0)
  store i32 %t257, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  %t259 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %t259, i64 240, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l95, i64 240, i1 false)
  store i32 0, ptr %rv
  br label %ret
bb84:
  br label %bb85
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t260 = load ptr, ptr %lp3
  %t261 = getelementptr %"compiler/olang:CommandLine", ptr %t260, i32 0, i32 0
  %t262 = load i64, ptr %t261, !tbaa !24
  %t263 = load i64, ptr @G_2ecompiler_2folang_2eLsp, !tbaa !24
  %t266 = icmp eq i64 %t262, %t263
  br i1 %t266, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb90
bb89:
  %t268 = load ptr, ptr %lp3
  %t269 = getelementptr %"compiler/olang:CommandLine", ptr %t268, i32 0, i32 0
  %t270 = load i64, ptr %t269, !tbaa !24
  %t271 = load i64, ptr @G_2ecompiler_2folang_2eMcp, !tbaa !24
  %t274 = icmp eq i64 %t270, %t271
  store i1 %t274, ptr %l99, !tbaa !21
  br label %bb90
bb90:
  %t276 = load i1, ptr %l99, !tbaa !21
  br i1 %t276, label %bb91, label %bb92
bb91:
  %t277 = load ptr, ptr %lp3
  %t278 = getelementptr %"compiler/olang:CommandLine", ptr %t277, i32 0, i32 1
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t278)
  store i64 %t280, ptr %l105
  br label %bb93
bb92:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb94
bb93:
  %t281 = load i64, ptr %l105, !tbaa !24
  %t282 = icmp sgt i64 %t281, 0
  store i1 %t282, ptr %l103, !tbaa !21
  br label %bb94
bb94:
  %t284 = load i1, ptr %l103, !tbaa !21
  br i1 %t284, label %bb95, label %bb96
bb95:
  %t285 = load ptr, ptr %l2, !tbaa !29
  store ptr %t285, ptr %l107, !tbaa !29
  %t286 = load ptr, ptr %lp3
  %t287 = getelementptr %"compiler/olang:CommandLine", ptr %t286, i32 0, i32 0
  %t288 = load i64, ptr %t287, !tbaa !24
  %t290 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t288)
  store { i64, ptr } %t290, ptr %l109
  br label %bb97
bb96:
  br label %bb102
bb97:
  %t291 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = extractvalue { i64, ptr } %t291, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t299 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeNoFiles(ptr %v2, ptr %v2, { i64, ptr } %t297)
  store %"compiler/diagmsg:Msg" %t299, ptr %l111
  br label %bb98
bb98:
  %t300 = load ptr, ptr %l107, !tbaa !29
  %t301 = load %"compiler/diagmsg:Msg", ptr %l111
  %t302 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t300, %"compiler/diagmsg:Msg" %t301)
  store i32 %t302, ptr %l112
  %t303 = icmp ne i32 %t302, 0
  br i1 %t303, label %bb100, label %ok.304, !prof !99
ok.304:
  br label %bb99
bb99:
  br label %bb101
bb100:
  %t305 = load i32, ptr %l112, !tbaa !23
  %t306 = lshr i32 %t305, 16
  %t307 = and i32 %t305, 65535
  %t308 = icmp eq i32 %t306, 1
  %t309 = select i1 %t308, i32 1, i32 0
  %t310 = icmp eq i32 %t305, 0
  %t311 = shl i32 %t309, 16
  %t312 = or i32 %t311, %t307
  %t313 = select i1 %t310, i32 0, i32 %t312
  call void @__olang_scope_close(ptr %s0)
  store i32 %t313, ptr %rv
  br label %ret
bb101:
  br label %bb102
bb102:
  %t315 = load ptr, ptr %lp3
  %t316 = getelementptr %"compiler/olang:CommandLine", ptr %t315, i32 0, i32 0
  %t317 = load i64, ptr %t316, !tbaa !24
  %t318 = load i64, ptr @G_2ecompiler_2folang_2eDoc, !tbaa !24
  %t321 = icmp eq i64 %t317, %t318
  br i1 %t321, label %bb103, label %bb104
bb103:
  %t323 = load ptr, ptr %lp3
  %t324 = getelementptr %"compiler/olang:CommandLine", ptr %t323, i32 0, i32 10
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !27
  %t327 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t325, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t327, ptr %l119
  br label %bb105
bb104:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb106
bb105:
  %t328 = load i1, ptr %l119, !tbaa !21
  store i1 %t328, ptr %l117, !tbaa !21
  br label %bb106
bb106:
  %t329 = load i1, ptr %l117, !tbaa !21
  br i1 %t329, label %bb107, label %bb108
bb107:
  %t330 = load ptr, ptr %lp3
  %t331 = getelementptr %"compiler/olang:CommandLine", ptr %t330, i32 0, i32 1
  %t333 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t331)
  store i64 %t333, ptr %l122
  br label %bb109
bb108:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb110
bb109:
  %t334 = load i64, ptr %l122, !tbaa !24
  %t335 = icmp ne i64 %t334, 1
  store i1 %t335, ptr %l120, !tbaa !21
  br label %bb110
bb110:
  %t337 = load i1, ptr %l120, !tbaa !21
  br i1 %t337, label %bb111, label %bb112
bb111:
  %t338 = load ptr, ptr %l2, !tbaa !29
  store ptr %t338, ptr %l124, !tbaa !29
  %t339 = load ptr, ptr %lp3
  %t340 = getelementptr %"compiler/olang:CommandLine", ptr %t339, i32 0, i32 1
  %t342 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t340)
  store i64 %t342, ptr %l126
  br label %bb113
bb112:
  br label %bb124
bb113:
  %t343 = load i64, ptr %l126, !tbaa !24
  %t344 = icmp sgt i64 %t343, 1
  br i1 %t344, label %bb114, label %bb115
bb114:
  %t346 = load ptr, ptr %lp3
  %t347 = getelementptr %"compiler/olang:CommandLine", ptr %t346, i32 0, i32 0
  %t348 = load i64, ptr %t347, !tbaa !24
  %t350 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t348)
  store { i64, ptr } %t350, ptr %l130
  br label %bb116
bb115:
  %t351 = load ptr, ptr %lp3
  %t352 = getelementptr %"compiler/olang:CommandLine", ptr %t351, i32 0, i32 0
  %t353 = load i64, ptr %t352, !tbaa !24
  %t355 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t353)
  store { i64, ptr } %t355, ptr %l134
  br label %bb118
bb116:
  %t356 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t356, 0
  %t358 = extractvalue { i64, ptr } %t356, 1
  %t359 = mul i64 %t357, 1
  %t360 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t359)
  call void @llvm.memcpy.p0.p0.i64(ptr %t360, ptr %t358, i64 %t359, i1 false)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t360, 1
  %t364 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeOneFile(ptr %v2, ptr %v2, { i64, ptr } %t362)
  store %"compiler/diagmsg:Msg" %t364, ptr %l132
  br label %bb117
bb117:
  %t365 = load %"compiler/diagmsg:Msg", ptr %l132
  store %"compiler/diagmsg:Msg" %t365, ptr %l128
  br label %bb120
bb118:
  %t366 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t366, 0
  %t368 = extractvalue { i64, ptr } %t366, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t374 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeNeedsFile(ptr %v2, ptr %v2, { i64, ptr } %t372)
  store %"compiler/diagmsg:Msg" %t374, ptr %l136
  br label %bb119
bb119:
  %t375 = load %"compiler/diagmsg:Msg", ptr %l136
  store %"compiler/diagmsg:Msg" %t375, ptr %l128
  br label %bb120
bb120:
  %t376 = load ptr, ptr %l124, !tbaa !29
  %t377 = load %"compiler/diagmsg:Msg", ptr %l128
  %t378 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t376, %"compiler/diagmsg:Msg" %t377)
  store i32 %t378, ptr %l137
  %t379 = icmp ne i32 %t378, 0
  br i1 %t379, label %bb122, label %ok.380, !prof !99
ok.380:
  br label %bb121
bb121:
  br label %bb123
bb122:
  %t381 = load i32, ptr %l137, !tbaa !23
  %t382 = lshr i32 %t381, 16
  %t383 = and i32 %t381, 65535
  %t384 = icmp eq i32 %t382, 1
  %t385 = select i1 %t384, i32 1, i32 0
  %t386 = icmp eq i32 %t381, 0
  %t387 = shl i32 %t385, 16
  %t388 = or i32 %t387, %t383
  %t389 = select i1 %t386, i32 0, i32 %t388
  call void @__olang_scope_close(ptr %s0)
  store i32 %t389, ptr %rv
  br label %ret
bb123:
  br label %bb124
bb124:
  %t391 = load ptr, ptr %lp3
  %t392 = getelementptr %"compiler/olang:CommandLine", ptr %t391, i32 0, i32 1
  %t394 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t392)
  store i64 %t394, ptr %l140
  br label %bb125
bb125:
  %t395 = load i64, ptr %l140, !tbaa !24
  %t396 = icmp eq i64 %t395, 0
  br i1 %t396, label %bb126, label %bb127
bb126:
  %t398 = load ptr, ptr %lp3
  %t399 = getelementptr %"compiler/olang:CommandLine", ptr %t398, i32 0, i32 0
  %t400 = load i64, ptr %t399, !tbaa !24
  %t401 = load i64, ptr @G_2ecompiler_2folang_2eLsp, !tbaa !24
  %t404 = icmp ne i64 %t400, %t401
  store i1 %t404, ptr %l142, !tbaa !21
  br label %bb128
bb127:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb128
bb128:
  %t406 = load i1, ptr %l142, !tbaa !21
  br i1 %t406, label %bb129, label %bb130
bb129:
  %t407 = load ptr, ptr %lp3
  %t408 = getelementptr %"compiler/olang:CommandLine", ptr %t407, i32 0, i32 0
  %t409 = load i64, ptr %t408, !tbaa !24
  %t410 = load i64, ptr @G_2ecompiler_2folang_2eMcp, !tbaa !24
  %t413 = icmp ne i64 %t409, %t410
  store i1 %t413, ptr %l146, !tbaa !21
  br label %bb131
bb130:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb131
bb131:
  %t415 = load i1, ptr %l146, !tbaa !21
  br i1 %t415, label %bb132, label %bb133
bb132:
  %t416 = load ptr, ptr %lp3
  %t417 = getelementptr %"compiler/olang:CommandLine", ptr %t416, i32 0, i32 0
  %t418 = load i64, ptr %t417, !tbaa !24
  %t419 = load i64, ptr @G_2ecompiler_2folang_2eDoc, !tbaa !24
  %t422 = icmp ne i64 %t418, %t419
  store i1 %t422, ptr %l150, !tbaa !21
  br label %bb134
bb133:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb134
bb134:
  %t424 = load i1, ptr %l150, !tbaa !21
  br i1 %t424, label %bb135, label %bb136
bb135:
  %t425 = load ptr, ptr %l2, !tbaa !29
  store ptr %t425, ptr %l154, !tbaa !29
  %t426 = load ptr, ptr %lp3
  %t427 = getelementptr %"compiler/olang:CommandLine", ptr %t426, i32 0, i32 0
  %t428 = load i64, ptr %t427, !tbaa !24
  %t430 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t428)
  store { i64, ptr } %t430, ptr %l156
  br label %bb137
bb136:
  br label %bb142
bb137:
  %t431 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 0
  %t433 = extractvalue { i64, ptr } %t431, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  %t439 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeNeedsFile(ptr %v2, ptr %v2, { i64, ptr } %t437)
  store %"compiler/diagmsg:Msg" %t439, ptr %l158
  br label %bb138
bb138:
  %t440 = load ptr, ptr %l154, !tbaa !29
  %t441 = load %"compiler/diagmsg:Msg", ptr %l158
  %t442 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t440, %"compiler/diagmsg:Msg" %t441)
  store i32 %t442, ptr %l159
  %t443 = icmp ne i32 %t442, 0
  br i1 %t443, label %bb140, label %ok.444, !prof !99
ok.444:
  br label %bb139
bb139:
  br label %bb141
bb140:
  %t445 = load i32, ptr %l159, !tbaa !23
  %t446 = lshr i32 %t445, 16
  %t447 = and i32 %t445, 65535
  %t448 = icmp eq i32 %t446, 1
  %t449 = select i1 %t448, i32 1, i32 0
  %t450 = icmp eq i32 %t445, 0
  %t451 = shl i32 %t449, 16
  %t452 = or i32 %t451, %t447
  %t453 = select i1 %t450, i32 0, i32 %t452
  call void @__olang_scope_close(ptr %s0)
  store i32 %t453, ptr %rv
  br label %ret
bb141:
  br label %bb142
bb142:
  %t455 = load ptr, ptr %lp3
  %t456 = getelementptr %"compiler/olang:CommandLine", ptr %t455, i32 0, i32 0
  %t457 = load i64, ptr %t456, !tbaa !24
  %t458 = load i64, ptr @G_2ecompiler_2folang_2eApi, !tbaa !24
  %t461 = icmp eq i64 %t457, %t458
  br i1 %t461, label %bb143, label %bb144
bb143:
  %t463 = load ptr, ptr %lp3
  %t464 = getelementptr %"compiler/olang:CommandLine", ptr %t463, i32 0, i32 1
  %t466 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t464)
  store i64 %t466, ptr %l166
  br label %bb145
bb144:
  store i1 false, ptr %l164, !tbaa !21
  br label %bb146
bb145:
  %t467 = load i64, ptr %l166, !tbaa !24
  %t468 = icmp ne i64 %t467, 3
  store i1 %t468, ptr %l164, !tbaa !21
  br label %bb146
bb146:
  %t470 = load i1, ptr %l164, !tbaa !21
  br i1 %t470, label %bb147, label %bb148
bb147:
  %t471 = load ptr, ptr %l2, !tbaa !29
  store ptr %t471, ptr %l168, !tbaa !29
  %t472 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiUsage(ptr %v2)
  store %"compiler/diagmsg:Msg" %t472, ptr %l169
  br label %bb149
bb148:
  br label %bb153
bb149:
  %t473 = load ptr, ptr %l168, !tbaa !29
  %t474 = load %"compiler/diagmsg:Msg", ptr %l169
  %t475 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t473, %"compiler/diagmsg:Msg" %t474)
  store i32 %t475, ptr %l170
  %t476 = icmp ne i32 %t475, 0
  br i1 %t476, label %bb151, label %ok.477, !prof !99
ok.477:
  br label %bb150
bb150:
  br label %bb152
bb151:
  %t478 = load i32, ptr %l170, !tbaa !23
  %t479 = lshr i32 %t478, 16
  %t480 = and i32 %t478, 65535
  %t481 = icmp eq i32 %t479, 1
  %t482 = select i1 %t481, i32 1, i32 0
  %t483 = icmp eq i32 %t478, 0
  %t484 = shl i32 %t482, 16
  %t485 = or i32 %t484, %t480
  %t486 = select i1 %t483, i32 0, i32 %t485
  call void @__olang_scope_close(ptr %s0)
  store i32 %t486, ptr %rv
  br label %ret
bb152:
  br label %bb153
bb153:
  %t488 = load ptr, ptr %lp3
  %t489 = getelementptr %"compiler/olang:CommandLine", ptr %t488, i32 0, i32 0
  %t490 = load i64, ptr %t489, !tbaa !24
  %t491 = load i64, ptr @G_2ecompiler_2folang_2eBuild, !tbaa !24
  %t494 = icmp eq i64 %t490, %t491
  br i1 %t494, label %bb154, label %bb155
bb154:
  store i1 true, ptr %l175, !tbaa !21
  br label %bb156
bb155:
  %t496 = load ptr, ptr %lp3
  %t497 = getelementptr %"compiler/olang:CommandLine", ptr %t496, i32 0, i32 0
  %t498 = load i64, ptr %t497, !tbaa !24
  %t499 = load i64, ptr @G_2ecompiler_2folang_2eCompile, !tbaa !24
  %t502 = icmp eq i64 %t498, %t499
  store i1 %t502, ptr %l175, !tbaa !21
  br label %bb156
bb156:
  %t504 = load i1, ptr %l175, !tbaa !21
  br i1 %t504, label %bb157, label %bb158
bb157:
  store i1 true, ptr %l179, !tbaa !21
  br label %bb159
bb158:
  %t505 = load ptr, ptr %lp3
  %t506 = getelementptr %"compiler/olang:CommandLine", ptr %t505, i32 0, i32 0
  %t507 = load i64, ptr %t506, !tbaa !24
  %t508 = load i64, ptr @G_2ecompiler_2folang_2eBindgen, !tbaa !24
  %t511 = icmp eq i64 %t507, %t508
  store i1 %t511, ptr %l179, !tbaa !21
  br label %bb159
bb159:
  %t513 = load i1, ptr %l179, !tbaa !21
  br i1 %t513, label %bb160, label %bb161
bb160:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb162
bb161:
  %t514 = load ptr, ptr %lp3
  %t515 = getelementptr %"compiler/olang:CommandLine", ptr %t514, i32 0, i32 0
  %t516 = load i64, ptr %t515, !tbaa !24
  %t517 = load i64, ptr @G_2ecompiler_2folang_2eProfile, !tbaa !24
  %t520 = icmp eq i64 %t516, %t517
  store i1 %t520, ptr %l183, !tbaa !21
  br label %bb162
bb162:
  %t522 = load i1, ptr %l183, !tbaa !21
  br i1 %t522, label %bb163, label %bb164
bb163:
  %t523 = load ptr, ptr %lp3
  %t524 = getelementptr %"compiler/olang:CommandLine", ptr %t523, i32 0, i32 1
  %t526 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t524)
  store i64 %t526, ptr %l189
  br label %bb165
bb164:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb166
bb165:
  %t527 = load i64, ptr %l189, !tbaa !24
  %t528 = icmp ne i64 %t527, 1
  store i1 %t528, ptr %l187, !tbaa !21
  br label %bb166
bb166:
  %t530 = load i1, ptr %l187, !tbaa !21
  br i1 %t530, label %bb167, label %bb168
bb167:
  %t531 = load ptr, ptr %l2, !tbaa !29
  store ptr %t531, ptr %l191, !tbaa !29
  %t532 = load ptr, ptr %lp3
  %t533 = getelementptr %"compiler/olang:CommandLine", ptr %t532, i32 0, i32 0
  %t534 = load i64, ptr %t533, !tbaa !24
  %t536 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t534)
  store { i64, ptr } %t536, ptr %l193
  br label %bb169
bb168:
  br label %bb174
bb169:
  %t537 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 0
  %t539 = extractvalue { i64, ptr } %t537, 1
  %t540 = mul i64 %t538, 1
  %t541 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t540)
  call void @llvm.memcpy.p0.p0.i64(ptr %t541, ptr %t539, i64 %t540, i1 false)
  %t542 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t543 = insertvalue { i64, ptr } %t542, ptr %t541, 1
  %t545 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeOneFile(ptr %v2, ptr %v2, { i64, ptr } %t543)
  store %"compiler/diagmsg:Msg" %t545, ptr %l195
  br label %bb170
bb170:
  %t546 = load ptr, ptr %l191, !tbaa !29
  %t547 = load %"compiler/diagmsg:Msg", ptr %l195
  %t548 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t546, %"compiler/diagmsg:Msg" %t547)
  store i32 %t548, ptr %l196
  %t549 = icmp ne i32 %t548, 0
  br i1 %t549, label %bb172, label %ok.550, !prof !99
ok.550:
  br label %bb171
bb171:
  br label %bb173
bb172:
  %t551 = load i32, ptr %l196, !tbaa !23
  %t552 = lshr i32 %t551, 16
  %t553 = and i32 %t551, 65535
  %t554 = icmp eq i32 %t552, 1
  %t555 = select i1 %t554, i32 1, i32 0
  %t556 = icmp eq i32 %t551, 0
  %t557 = shl i32 %t555, 16
  %t558 = or i32 %t557, %t553
  %t559 = select i1 %t556, i32 0, i32 %t558
  call void @__olang_scope_close(ptr %s0)
  store i32 %t559, ptr %rv
  br label %ret
bb173:
  br label %bb174
bb174:
  %t561 = load ptr, ptr %l1, !tbaa !29
  %t563 = getelementptr %"compiler/build:Config", ptr %t561, i32 0, i32 11
  %t564 = load i64, ptr %t563, !tbaa !24
  %t566 = icmp sgt i64 %t564, 0
  br i1 %t566, label %bb175, label %bb176
bb175:
  %t568 = load ptr, ptr %l1, !tbaa !29
  %t570 = getelementptr %"compiler/build:Config", ptr %t568, i32 0, i32 10
  %t571 = load { i64, ptr }, ptr %t570, !tbaa !27
  %t573 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t571, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t573, ptr %l204
  br label %bb177
bb176:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb178
bb177:
  %t574 = load i1, ptr %l204, !tbaa !21
  store i1 %t574, ptr %l201, !tbaa !21
  br label %bb178
bb178:
  %t575 = load i1, ptr %l201, !tbaa !21
  br i1 %t575, label %bb179, label %bb180
bb179:
  %t576 = load ptr, ptr %l2, !tbaa !29
  store ptr %t576, ptr %l205, !tbaa !29
  %t577 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuzzTimeAlone(ptr %v2)
  store %"compiler/diagmsg:Msg" %t577, ptr %l206
  br label %bb181
bb180:
  br label %bb185
bb181:
  %t578 = load ptr, ptr %l205, !tbaa !29
  %t579 = load %"compiler/diagmsg:Msg", ptr %l206
  %t580 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t578, %"compiler/diagmsg:Msg" %t579)
  store i32 %t580, ptr %l207
  %t581 = icmp ne i32 %t580, 0
  br i1 %t581, label %bb183, label %ok.582, !prof !99
ok.582:
  br label %bb182
bb182:
  br label %bb184
bb183:
  %t583 = load i32, ptr %l207, !tbaa !23
  %t584 = lshr i32 %t583, 16
  %t585 = and i32 %t583, 65535
  %t586 = icmp eq i32 %t584, 1
  %t587 = select i1 %t586, i32 1, i32 0
  %t588 = icmp eq i32 %t583, 0
  %t589 = shl i32 %t587, 16
  %t590 = or i32 %t589, %t585
  %t591 = select i1 %t588, i32 0, i32 %t590
  call void @__olang_scope_close(ptr %s0)
  store i32 %t591, ptr %rv
  br label %ret
bb184:
  br label %bb185
bb185:
  %t593 = load ptr, ptr %l1, !tbaa !29
  %t595 = getelementptr %"compiler/build:Config", ptr %t593, i32 0, i32 13
  %t596 = load i1, ptr %t595, !tbaa !21
  br i1 %t596, label %bb186, label %bb187
bb186:
  %t598 = load ptr, ptr %l1, !tbaa !29
  %t600 = getelementptr %"compiler/build:Config", ptr %t598, i32 0, i32 10
  %t601 = load { i64, ptr }, ptr %t600, !tbaa !27
  %t603 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t601, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t603, ptr %l214
  br label %bb188
bb187:
  store i1 false, ptr %l211, !tbaa !21
  br label %bb189
bb188:
  %t604 = load i1, ptr %l214, !tbaa !21
  %t605 = xor i1 %t604, true
  store i1 %t605, ptr %l211, !tbaa !21
  br label %bb189
bb189:
  %t607 = load i1, ptr %l211, !tbaa !21
  br i1 %t607, label %bb190, label %bb191
bb190:
  %t608 = load ptr, ptr %l2, !tbaa !29
  store ptr %t608, ptr %l216, !tbaa !29
  %t609 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBenchFuzz(ptr %v2)
  store %"compiler/diagmsg:Msg" %t609, ptr %l217
  br label %bb192
bb191:
  br label %bb196
bb192:
  %t610 = load ptr, ptr %l216, !tbaa !29
  %t611 = load %"compiler/diagmsg:Msg", ptr %l217
  %t612 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t610, %"compiler/diagmsg:Msg" %t611)
  store i32 %t612, ptr %l218
  %t613 = icmp ne i32 %t612, 0
  br i1 %t613, label %bb194, label %ok.614, !prof !99
ok.614:
  br label %bb193
bb193:
  br label %bb195
bb194:
  %t615 = load i32, ptr %l218, !tbaa !23
  %t616 = lshr i32 %t615, 16
  %t617 = and i32 %t615, 65535
  %t618 = icmp eq i32 %t616, 1
  %t619 = select i1 %t618, i32 1, i32 0
  %t620 = icmp eq i32 %t615, 0
  %t621 = shl i32 %t619, 16
  %t622 = or i32 %t621, %t617
  %t623 = select i1 %t620, i32 0, i32 %t622
  call void @__olang_scope_close(ptr %s0)
  store i32 %t623, ptr %rv
  br label %ret
bb195:
  br label %bb196
bb196:
  %t625 = load ptr, ptr %l1, !tbaa !29
  %t627 = getelementptr %"compiler/build:Config", ptr %t625, i32 0, i32 10
  %t628 = load { i64, ptr }, ptr %t627, !tbaa !27
  %t630 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t628, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t630, ptr %l222
  br label %bb197
bb197:
  %t631 = load i1, ptr %l222, !tbaa !21
  %t632 = xor i1 %t631, true
  br i1 %t632, label %bb198, label %bb199
bb198:
  %t634 = load ptr, ptr %lp3
  %t635 = getelementptr %"compiler/olang:CommandLine", ptr %t634, i32 0, i32 1
  %t637 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t635)
  store i64 %t637, ptr %l226
  br label %bb200
bb199:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb201
bb200:
  %t638 = load i64, ptr %l226, !tbaa !24
  %t639 = icmp ne i64 %t638, 1
  store i1 %t639, ptr %l224, !tbaa !21
  br label %bb201
bb201:
  %t641 = load i1, ptr %l224, !tbaa !21
  br i1 %t641, label %bb202, label %bb203
bb202:
  %t642 = load ptr, ptr %l2, !tbaa !29
  store ptr %t642, ptr %l228, !tbaa !29
  %t643 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeOneFile(ptr %v2, ptr %v2, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t643, ptr %l229
  br label %bb204
bb203:
  br label %bb208
bb204:
  %t644 = load ptr, ptr %l228, !tbaa !29
  %t645 = load %"compiler/diagmsg:Msg", ptr %l229
  %t646 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t644, %"compiler/diagmsg:Msg" %t645)
  store i32 %t646, ptr %l230
  %t647 = icmp ne i32 %t646, 0
  br i1 %t647, label %bb206, label %ok.648, !prof !99
ok.648:
  br label %bb205
bb205:
  br label %bb207
bb206:
  %t649 = load i32, ptr %l230, !tbaa !23
  %t650 = lshr i32 %t649, 16
  %t651 = and i32 %t649, 65535
  %t652 = icmp eq i32 %t650, 1
  %t653 = select i1 %t652, i32 1, i32 0
  %t654 = icmp eq i32 %t649, 0
  %t655 = shl i32 %t653, 16
  %t656 = or i32 %t655, %t651
  %t657 = select i1 %t654, i32 0, i32 %t656
  call void @__olang_scope_close(ptr %s0)
  store i32 %t657, ptr %rv
  br label %ret
bb207:
  br label %bb208
bb208:
  %t659 = load ptr, ptr %lp3
  %t660 = getelementptr %"compiler/olang:CommandLine", ptr %t659, i32 0, i32 0
  %t661 = load i64, ptr %t660, !tbaa !24
  %t662 = load i64, ptr @G_2ecompiler_2folang_2eFormat, !tbaa !24
  %t665 = icmp eq i64 %t661, %t662
  br i1 %t665, label %bb209, label %bb210
bb209:
  store i1 true, ptr %l235, !tbaa !21
  br label %bb211
bb210:
  %t667 = load ptr, ptr %lp3
  %t668 = getelementptr %"compiler/olang:CommandLine", ptr %t667, i32 0, i32 0
  %t669 = load i64, ptr %t668, !tbaa !24
  %t670 = load i64, ptr @G_2ecompiler_2folang_2eFix, !tbaa !24
  %t673 = icmp eq i64 %t669, %t670
  store i1 %t673, ptr %l235, !tbaa !21
  br label %bb211
bb211:
  %t675 = load i1, ptr %l235, !tbaa !21
  br i1 %t675, label %bb212, label %bb213
bb212:
  %t676 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l239, ptr %t676, i64 240, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l239, i64 240, i1 false)
  store i32 0, ptr %rv
  br label %ret
bb213:
  br label %bb214
bb214:
  %t677 = load ptr, ptr %lp3
  %t678 = getelementptr %"compiler/olang:CommandLine", ptr %t677, i32 0, i32 8
  %t679 = load { i64, ptr }, ptr %t678, !tbaa !27
  %t681 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t679, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t681, ptr %l241
  br label %bb215
bb215:
  %t682 = load i1, ptr %l241, !tbaa !21
  %t683 = xor i1 %t682, true
  br i1 %t683, label %bb216, label %bb217
bb216:
  %t685 = load ptr, ptr %lp3
  %t686 = getelementptr %"compiler/olang:CommandLine", ptr %t685, i32 0, i32 8
  %t687 = load { i64, ptr }, ptr %t686, !tbaa !27
  %t688 = load ptr, ptr %l2, !tbaa !29
  %t691 = call i32 @compiler_2folang_2echeckOutput(ptr %v3, ptr %v2, { i64, ptr } %t687, ptr %t688)
  store i32 %t691, ptr %l245
  %t692 = icmp ne i32 %t691, 0
  br i1 %t692, label %bb219, label %ok.693, !prof !99
ok.693:
  br label %bb218
bb217:
  br label %bb221
bb218:
  br label %bb220
bb219:
  %t694 = load i32, ptr %l245, !tbaa !23
  %t695 = lshr i32 %t694, 16
  %t696 = and i32 %t694, 65535
  %t697 = icmp eq i32 %t695, 1
  %t698 = select i1 %t697, i32 1, i32 0
  %t699 = icmp eq i32 %t694, 0
  %t700 = shl i32 %t698, 16
  %t701 = or i32 %t700, %t696
  %t702 = select i1 %t699, i32 0, i32 %t701
  call void @__olang_scope_close(ptr %s0)
  store i32 %t702, ptr %rv
  br label %ret
bb220:
  br label %bb221
bb221:
  %t704 = load ptr, ptr %lp3
  %t705 = getelementptr %"compiler/olang:CommandLine", ptr %t704, i32 0, i32 0
  %t706 = load i64, ptr %t705, !tbaa !24
  %t707 = load i64, ptr @G_2ecompiler_2folang_2eBindgen, !tbaa !24
  %t710 = icmp eq i64 %t706, %t707
  br i1 %t710, label %bb222, label %bb223
bb222:
  %t712 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l250, ptr %t712, i64 240, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l250, i64 240, i1 false)
  store i32 0, ptr %rv
  br label %ret
bb223:
  br label %bb224
bb224:
  %t713 = load ptr, ptr %l1, !tbaa !29
  %t714 = load ptr, ptr %lp3
  %t715 = getelementptr %"compiler/olang:CommandLine", ptr %t714, i32 0, i32 8
  %t716 = load { i64, ptr }, ptr %t715, !tbaa !27
  %t719 = getelementptr %"compiler/build:Config", ptr %t713, i32 0, i32 23
  store { i64, ptr } %t716, ptr %t719, !tbaa !27
  %t720 = load ptr, ptr %l1, !tbaa !29
  store ptr %t720, ptr %l253, !tbaa !29
  %t721 = call { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v1)
  store { i64, ptr } %t721, ptr %l254
  br label %bb225
bb225:
  %t722 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t723 = extractvalue { i64, ptr } %t722, 0
  %t724 = extractvalue { i64, ptr } %t722, 1
  %t725 = mul i64 %t723, 1
  %t726 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t725)
  call void @llvm.memcpy.p0.p0.i64(ptr %t726, ptr %t724, i64 %t725, i1 false)
  %t727 = insertvalue { i64, ptr } undef, i64 %t723, 0
  %t728 = insertvalue { i64, ptr } %t727, ptr %t726, 1
  %t730 = load ptr, ptr %l253, !tbaa !29
  %t731 = getelementptr %"compiler/build:Config", ptr %t730, i32 0, i32 1
  store { i64, ptr } %t728, ptr %t731, !tbaa !27
  %t732 = load ptr, ptr %l1, !tbaa !29
  store ptr %t732, ptr %l256, !tbaa !29
  %t733 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v1, ptr %v1, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d20, i32 0, i32 1) })
  %t734 = extractvalue { i32, { i64, ptr } } %t733, 1
  %t735 = extractvalue { i32, { i64, ptr } } %t733, 0
  store i32 %t735, ptr %l259
  %t736 = icmp ne i32 %t735, 0
  br i1 %t736, label %bb227, label %ok.737, !prof !99
ok.737:
  store { i64, ptr } %t734, ptr %l258
  br label %bb226
bb226:
  %t738 = load { i64, ptr }, ptr %l258, !tbaa !27
  store { i64, ptr } %t738, ptr %l257, !tbaa !27
  br label %bb231
bb227:
  %t739 = load i32, ptr %l259, !tbaa !23
  %t740 = ashr i32 %t739, 16
  %t742 = icmp eq i32 %t740, 1
  br i1 %t742, label %bb228, label %bb229
bb228:
  call void @__olang_errpay_pop()
  br label %bb229
bb229:
  br label %bb230
bb230:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l257, !tbaa !27
  br label %bb231
bb231:
  %t744 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t745 = load ptr, ptr %l256, !tbaa !29
  %t746 = getelementptr %"compiler/build:Config", ptr %t745, i32 0, i32 28
  store { i64, ptr } %t744, ptr %t746, !tbaa !27
  %t747 = load ptr, ptr %lp3
  %t748 = getelementptr %"compiler/olang:CommandLine", ptr %t747, i32 0, i32 0
  %t749 = load i64, ptr %t748, !tbaa !24
  %t750 = load i64, ptr @G_2ecompiler_2folang_2eDoc, !tbaa !24
  %t753 = icmp eq i64 %t749, %t750
  br i1 %t753, label %bb232, label %bb233
bb232:
  store i1 true, ptr %l265, !tbaa !21
  br label %bb234
bb233:
  %t755 = load ptr, ptr %lp3
  %t756 = getelementptr %"compiler/olang:CommandLine", ptr %t755, i32 0, i32 0
  %t757 = load i64, ptr %t756, !tbaa !24
  %t758 = load i64, ptr @G_2ecompiler_2folang_2eLsp, !tbaa !24
  %t761 = icmp eq i64 %t757, %t758
  store i1 %t761, ptr %l265, !tbaa !21
  br label %bb234
bb234:
  %t763 = load i1, ptr %l265, !tbaa !21
  br i1 %t763, label %bb235, label %bb236
bb235:
  store i1 true, ptr %l269, !tbaa !21
  br label %bb237
bb236:
  %t764 = load ptr, ptr %lp3
  %t765 = getelementptr %"compiler/olang:CommandLine", ptr %t764, i32 0, i32 0
  %t766 = load i64, ptr %t765, !tbaa !24
  %t767 = load i64, ptr @G_2ecompiler_2folang_2eMcp, !tbaa !24
  %t770 = icmp eq i64 %t766, %t767
  store i1 %t770, ptr %l269, !tbaa !21
  br label %bb237
bb237:
  %t772 = load i1, ptr %l269, !tbaa !21
  br i1 %t772, label %bb238, label %bb239
bb238:
  store i1 true, ptr %l273, !tbaa !21
  br label %bb240
bb239:
  %t773 = load ptr, ptr %lp3
  %t774 = getelementptr %"compiler/olang:CommandLine", ptr %t773, i32 0, i32 0
  %t775 = load i64, ptr %t774, !tbaa !24
  %t776 = load i64, ptr @G_2ecompiler_2folang_2eApi, !tbaa !24
  %t779 = icmp eq i64 %t775, %t776
  store i1 %t779, ptr %l273, !tbaa !21
  br label %bb240
bb240:
  %t781 = load i1, ptr %l273, !tbaa !21
  store i1 %t781, ptr %l4, !tbaa !21
  %t782 = load ptr, ptr %lp3
  %t783 = getelementptr %"compiler/olang:CommandLine", ptr %t782, i32 0, i32 0
  %t784 = load i64, ptr %t783, !tbaa !24
  %t785 = load i64, ptr @G_2ecompiler_2folang_2eInterp, !tbaa !24
  %t788 = icmp eq i64 %t784, %t785
  br i1 %t788, label %bb241, label %bb242
bb241:
  store i1 true, ptr %l280, !tbaa !21
  br label %bb243
bb242:
  %t790 = load ptr, ptr %l1, !tbaa !29
  %t792 = getelementptr %"compiler/build:Config", ptr %t790, i32 0, i32 18
  %t793 = load i1, ptr %t792, !tbaa !21
  store i1 %t793, ptr %l280, !tbaa !21
  br label %bb243
bb243:
  %t795 = load i1, ptr %l280, !tbaa !21
  store i1 %t795, ptr %l5, !tbaa !21
  %t796 = load ptr, ptr %lp3
  %t797 = getelementptr %"compiler/olang:CommandLine", ptr %t796, i32 0, i32 0
  %t798 = load i64, ptr %t797, !tbaa !24
  %t799 = load i64, ptr @G_2ecompiler_2folang_2eCompile, !tbaa !24
  %t802 = icmp eq i64 %t798, %t799
  br i1 %t802, label %bb244, label %bb245
bb244:
  store i1 true, ptr %l286, !tbaa !21
  br label %bb246
bb245:
  %t804 = load ptr, ptr %lp3
  %t805 = getelementptr %"compiler/olang:CommandLine", ptr %t804, i32 0, i32 0
  %t806 = load i64, ptr %t805, !tbaa !24
  %t807 = load i64, ptr @G_2ecompiler_2folang_2eBuild, !tbaa !24
  %t810 = icmp eq i64 %t806, %t807
  store i1 %t810, ptr %l286, !tbaa !21
  br label %bb246
bb246:
  %t812 = load i1, ptr %l286, !tbaa !21
  br i1 %t812, label %bb247, label %bb248
bb247:
  store i1 true, ptr %l290, !tbaa !21
  br label %bb252
bb248:
  %t813 = load ptr, ptr %lp3
  %t814 = getelementptr %"compiler/olang:CommandLine", ptr %t813, i32 0, i32 0
  %t815 = load i64, ptr %t814, !tbaa !24
  %t816 = load i64, ptr @G_2ecompiler_2folang_2eTest, !tbaa !24
  %t819 = icmp eq i64 %t815, %t816
  br i1 %t819, label %bb249, label %bb250
bb249:
  %t821 = load ptr, ptr %l1, !tbaa !29
  %t823 = getelementptr %"compiler/build:Config", ptr %t821, i32 0, i32 18
  %t824 = load i1, ptr %t823, !tbaa !21
  %t826 = xor i1 %t824, true
  store i1 %t826, ptr %l294, !tbaa !21
  br label %bb251
bb250:
  store i1 false, ptr %l294, !tbaa !21
  br label %bb251
bb251:
  %t828 = load i1, ptr %l294, !tbaa !21
  store i1 %t828, ptr %l290, !tbaa !21
  br label %bb252
bb252:
  %t829 = load i1, ptr %l290, !tbaa !21
  br i1 %t829, label %bb253, label %bb254
bb253:
  store i1 true, ptr %l298, !tbaa !21
  br label %bb255
bb254:
  %t830 = load ptr, ptr %lp3
  %t831 = getelementptr %"compiler/olang:CommandLine", ptr %t830, i32 0, i32 0
  %t832 = load i64, ptr %t831, !tbaa !24
  %t833 = load i64, ptr @G_2ecompiler_2folang_2eRun, !tbaa !24
  %t836 = icmp eq i64 %t832, %t833
  store i1 %t836, ptr %l298, !tbaa !21
  br label %bb255
bb255:
  %t838 = load i1, ptr %l298, !tbaa !21
  br i1 %t838, label %bb256, label %bb257
bb256:
  store i1 true, ptr %l302, !tbaa !21
  br label %bb259
bb257:
  %t839 = load ptr, ptr %lp3
  %t840 = getelementptr %"compiler/olang:CommandLine", ptr %t839, i32 0, i32 12
  %t841 = load { i64, ptr }, ptr %t840, !tbaa !27
  %t843 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t841, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t843, ptr %l304
  br label %bb258
bb258:
  %t844 = load i1, ptr %l304, !tbaa !21
  %t845 = xor i1 %t844, true
  store i1 %t845, ptr %l302, !tbaa !21
  br label %bb259
bb259:
  %t847 = load i1, ptr %l302, !tbaa !21
  store i1 %t847, ptr %l6, !tbaa !21
  %t848 = load i1, ptr %l6, !tbaa !21
  %t850 = xor i1 %t848, true
  br i1 %t850, label %bb260, label %bb261
bb260:
  %t852 = load i1, ptr %l5, !tbaa !21
  %t854 = xor i1 %t852, true
  store i1 %t854, ptr %l308, !tbaa !21
  br label %bb262
bb261:
  store i1 false, ptr %l308, !tbaa !21
  br label %bb262
bb262:
  %t856 = load i1, ptr %l308, !tbaa !21
  br i1 %t856, label %bb263, label %bb264
bb263:
  %t857 = load ptr, ptr %lp3
  %t858 = getelementptr %"compiler/olang:CommandLine", ptr %t857, i32 0, i32 0
  %t859 = load i64, ptr %t858, !tbaa !24
  %t861 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %s0, i64 %t859)
  store { i64, ptr } %t861, ptr %l313
  br label %bb265
bb264:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l311, !tbaa !27
  br label %bb266
bb265:
  %t862 = load { i64, ptr }, ptr %l313, !tbaa !27
  %t863 = extractvalue { i64, ptr } %t862, 0
  %t864 = extractvalue { i64, ptr } %t862, 1
  %t865 = mul i64 %t863, 1
  %t866 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t865)
  call void @llvm.memcpy.p0.p0.i64(ptr %t866, ptr %t864, i64 %t865, i1 false)
  %t867 = insertvalue { i64, ptr } undef, i64 %t863, 0
  %t868 = insertvalue { i64, ptr } %t867, ptr %t866, 1
  store { i64, ptr } %t868, ptr %l311, !tbaa !27
  br label %bb266
bb266:
  %t870 = load { i64, ptr }, ptr %l311, !tbaa !27
  store { i64, ptr } %t870, ptr %l7, !tbaa !27
  %t871 = load ptr, ptr %l1, !tbaa !29
  store ptr %t871, ptr %l315, !tbaa !29
  %t872 = load ptr, ptr %lp3
  %t873 = getelementptr %"compiler/olang:CommandLine", ptr %t872, i32 0, i32 7
  %t874 = load { i64, ptr }, ptr %t873, !tbaa !27
  store { i64, ptr } %t874, ptr %l317, !tbaa !27
  %t875 = load ptr, ptr %l1, !tbaa !29
  %t877 = getelementptr %"compiler/build:Config", ptr %t875, i32 0, i32 1
  %t878 = load { i64, ptr }, ptr %t877, !tbaa !27
  store { i64, ptr } %t878, ptr %l319, !tbaa !27
  %t879 = load i1, ptr %l5, !tbaa !21
  br i1 %t879, label %bb267, label %bb268
bb267:
  store i1 true, ptr %l321, !tbaa !21
  br label %bb273
bb268:
  %t881 = load i1, ptr %l4, !tbaa !21
  br i1 %t881, label %bb269, label %bb270
bb269:
  %t883 = load ptr, ptr %l1, !tbaa !29
  %t885 = getelementptr %"compiler/build:Config", ptr %t883, i32 0, i32 1
  %t886 = load { i64, ptr }, ptr %t885, !tbaa !27
  %t888 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t886, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t888, ptr %l326
  br label %bb271
bb270:
  store i1 false, ptr %l323, !tbaa !21
  br label %bb272
bb271:
  %t889 = load i1, ptr %l326, !tbaa !21
  store i1 %t889, ptr %l323, !tbaa !21
  br label %bb272
bb272:
  %t890 = load i1, ptr %l323, !tbaa !21
  store i1 %t890, ptr %l321, !tbaa !21
  br label %bb273
bb273:
  %t891 = load ptr, ptr %l2, !tbaa !29
  %t892 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t893 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t894 = load { i64, ptr }, ptr %l319, !tbaa !27
  %t895 = load i1, ptr %l321, !tbaa !21
  %t898 = call { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolve(ptr %v3, ptr %v1, ptr %v2, ptr %s0, ptr %v1, { i64, ptr } %t893, { i64, ptr } %t894, i1 %t895, ptr %t891, { i64, ptr } %t892)
  %t899 = extractvalue { i32, %"compiler/target:Target" } %t898, 1
  %t900 = extractvalue { i32, %"compiler/target:Target" } %t898, 0
  store i32 %t900, ptr %l330
  %t901 = icmp ne i32 %t900, 0
  br i1 %t901, label %bb275, label %ok.902, !prof !99
ok.902:
  store %"compiler/target:Target" %t899, ptr %l329
  br label %bb274
bb274:
  %t903 = load %"compiler/target:Target", ptr %l329
  store %"compiler/target:Target" %t903, ptr %l316
  br label %bb277
bb275:
  %t904 = load i32, ptr %l330, !tbaa !23
  %t905 = ashr i32 %t904, 16
  %t907 = icmp eq i32 %t905, 1
  store i1 %t907, ptr %l332, !tbaa !21
  br label %bb276
bb276:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb277:
  %t909 = load %"compiler/target:Target", ptr %l316
  %t910 = load ptr, ptr %l315, !tbaa !29
  %t911 = getelementptr %"compiler/build:Config", ptr %t910, i32 0, i32 2
  store %"compiler/target:Target" %t909, ptr %t911
  %t912 = load ptr, ptr %l1, !tbaa !29
  %t914 = getelementptr %"compiler/build:Config", ptr %t912, i32 0, i32 2
  %t915 = getelementptr %"compiler/target:Target", ptr %t914, i32 0, i32 9
  %t916 = load i1, ptr %t915, !tbaa !21
  br i1 %t916, label %bb278, label %bb279
bb278:
  %t918 = load i1, ptr %l6, !tbaa !21
  %t920 = xor i1 %t918, true
  store i1 %t920, ptr %l336, !tbaa !21
  br label %bb280
bb279:
  store i1 false, ptr %l336, !tbaa !21
  br label %bb280
bb280:
  %t922 = load i1, ptr %l336, !tbaa !21
  br i1 %t922, label %bb281, label %bb282
bb281:
  %t923 = load ptr, ptr %l2, !tbaa !29
  store ptr %t923, ptr %l339, !tbaa !29
  %t924 = load ptr, ptr %lp3
  %t925 = getelementptr %"compiler/olang:CommandLine", ptr %t924, i32 0, i32 0
  %t926 = load i64, ptr %t925, !tbaa !24
  %t928 = call { i64, ptr } @compiler_2folang_2emodeName(ptr %v2, i64 %t926)
  store { i64, ptr } %t928, ptr %l341
  br label %bb283
bb282:
  br label %bb288
bb283:
  %t929 = load { i64, ptr }, ptr %l341, !tbaa !27
  %t930 = extractvalue { i64, ptr } %t929, 0
  %t931 = extractvalue { i64, ptr } %t929, 1
  %t932 = mul i64 %t930, 1
  %t933 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t932)
  call void @llvm.memcpy.p0.p0.i64(ptr %t933, ptr %t931, i64 %t932, i1 false)
  %t934 = insertvalue { i64, ptr } undef, i64 %t930, 0
  %t935 = insertvalue { i64, ptr } %t934, ptr %t933, 1
  %t936 = load ptr, ptr %lp3
  %t937 = getelementptr %"compiler/olang:CommandLine", ptr %t936, i32 0, i32 7
  %t938 = load { i64, ptr }, ptr %t937, !tbaa !27
  %t941 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v2, ptr %v3, ptr %v2, { i64, ptr } %t935, { i64, ptr } %t938)
  store %"compiler/diagmsg:Msg" %t941, ptr %l344
  br label %bb284
bb284:
  %t942 = load ptr, ptr %l339, !tbaa !29
  %t943 = load %"compiler/diagmsg:Msg", ptr %l344
  %t944 = call i32 @compiler_2folang_2eusage(ptr %v2, ptr %v2, ptr %t942, %"compiler/diagmsg:Msg" %t943)
  store i32 %t944, ptr %l345
  %t945 = icmp ne i32 %t944, 0
  br i1 %t945, label %bb286, label %ok.946, !prof !99
ok.946:
  br label %bb285
bb285:
  br label %bb287
bb286:
  %t947 = load i32, ptr %l345, !tbaa !23
  %t948 = lshr i32 %t947, 16
  %t949 = and i32 %t947, 65535
  %t950 = icmp eq i32 %t948, 1
  %t951 = select i1 %t950, i32 1, i32 0
  %t952 = icmp eq i32 %t947, 0
  %t953 = shl i32 %t951, 16
  %t954 = or i32 %t953, %t949
  %t955 = select i1 %t952, i32 0, i32 %t954
  call void @__olang_scope_close(ptr %s0)
  store i32 %t955, ptr %rv
  br label %ret
bb287:
  br label %bb288
bb288:
  %t957 = load ptr, ptr %l1, !tbaa !29
  %t958 = load ptr, ptr %lp3
  %t959 = getelementptr %"compiler/olang:CommandLine", ptr %t958, i32 0, i32 0
  %t960 = load i64, ptr %t959, !tbaa !24
  %t961 = load i64, ptr @G_2ecompiler_2folang_2eTest, !tbaa !24
  %t964 = icmp eq i64 %t960, %t961
  %t967 = getelementptr %"compiler/build:Config", ptr %t957, i32 0, i32 17
  store i1 %t964, ptr %t967, !tbaa !21
  %t968 = load ptr, ptr %l1, !tbaa !29
  %t969 = load ptr, ptr %lp3
  %t970 = getelementptr %"compiler/olang:CommandLine", ptr %t969, i32 0, i32 0
  %t971 = load i64, ptr %t970, !tbaa !24
  %t972 = load i64, ptr @G_2ecompiler_2folang_2eProfile, !tbaa !24
  %t975 = icmp eq i64 %t971, %t972
  %t978 = getelementptr %"compiler/build:Config", ptr %t968, i32 0, i32 12
  store i1 %t975, ptr %t978, !tbaa !21
  %t979 = load ptr, ptr %l1, !tbaa !29
  store ptr %t979, ptr %l355, !tbaa !29
  %t980 = load ptr, ptr %l1, !tbaa !29
  %t982 = getelementptr %"compiler/build:Config", ptr %t980, i32 0, i32 17
  %t983 = load i1, ptr %t982, !tbaa !21
  br i1 %t983, label %bb289, label %bb290
bb289:
  store i1 true, ptr %l358, !tbaa !21
  br label %bb291
bb290:
  %t985 = load ptr, ptr %lp3
  %t986 = getelementptr %"compiler/olang:CommandLine", ptr %t985, i32 0, i32 0
  %t987 = load i64, ptr %t986, !tbaa !24
  %t988 = load i64, ptr @G_2ecompiler_2folang_2eLsp, !tbaa !24
  %t991 = icmp eq i64 %t987, %t988
  store i1 %t991, ptr %l358, !tbaa !21
  br label %bb291
bb291:
  %t993 = load i1, ptr %l358, !tbaa !21
  br i1 %t993, label %bb292, label %bb293
bb292:
  store i1 true, ptr %l362, !tbaa !21
  br label %bb294
bb293:
  %t994 = load ptr, ptr %lp3
  %t995 = getelementptr %"compiler/olang:CommandLine", ptr %t994, i32 0, i32 0
  %t996 = load i64, ptr %t995, !tbaa !24
  %t997 = load i64, ptr @G_2ecompiler_2folang_2eMcp, !tbaa !24
  %t1000 = icmp eq i64 %t996, %t997
  store i1 %t1000, ptr %l362, !tbaa !21
  br label %bb294
bb294:
  %t1002 = load ptr, ptr %l2, !tbaa !29
  %t1003 = load ptr, ptr %l355, !tbaa !29
  %t1004 = load i1, ptr %l362, !tbaa !21
  %t1006 = call i32 @compiler_2folang_2ebuiltins(ptr %v1, ptr %v2, ptr %t1003, i1 %t1004, ptr %t1002)
  store i32 %t1006, ptr %l367
  %t1007 = icmp ne i32 %t1006, 0
  br i1 %t1007, label %bb296, label %ok.1008, !prof !99
ok.1008:
  br label %bb295
bb295:
  br label %bb297
bb296:
  %t1009 = load i32, ptr %l367, !tbaa !23
  %t1010 = lshr i32 %t1009, 16
  %t1011 = and i32 %t1009, 65535
  %t1012 = icmp eq i32 %t1010, 1
  %t1013 = select i1 %t1012, i32 1, i32 0
  %t1014 = icmp eq i32 %t1009, 0
  %t1015 = shl i32 %t1013, 16
  %t1016 = or i32 %t1015, %t1011
  %t1017 = select i1 %t1014, i32 0, i32 %t1016
  call void @__olang_scope_close(ptr %s0)
  store i32 %t1017, ptr %rv
  br label %ret
bb297:
  %t1019 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l369, ptr %t1019, i64 240, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l369, i64 240, i1 false)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2folang_2ebuildWord(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l33 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/build:Config", ptr %t22, i32 0, i32 6
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t27, ptr %l10, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l11, !tbaa !24
  %t30 = load i64, ptr %l11, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l12, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l11, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t41, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t42 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/build:Config", ptr %t43, i32 0, i32 7
  %t46 = load i1, ptr %t45, !tbaa !21
  br i1 %t46, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t48, ptr %l16, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l17, !tbaa !24
  %t51 = load i64, ptr %l17, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l18, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l17, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t62, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t63 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t63, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/build:Config", ptr %t64, i32 0, i32 5
  %t67 = load i1, ptr %t66, !tbaa !21
  br i1 %t67, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t69, ptr %l22, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l23, !tbaa !24
  %t72 = load i64, ptr %l23, !tbaa !24
  %t73 = mul i64 %t72, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l24, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l23, !tbaa !24
  %t82 = mul i64 %t81, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t83, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t84 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t84, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/build:Config", ptr %t85, i32 0, i32 8
  %t88 = load i1, ptr %t87, !tbaa !21
  br i1 %t88, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t90, ptr %l28, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  store i64 %t92, ptr %l29, !tbaa !24
  %t93 = load i64, ptr %l29, !tbaa !24
  %t94 = mul i64 %t93, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l30, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l29, !tbaa !24
  %t103 = mul i64 %t102, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t99, ptr %t101, i64 %t103, i1 false)
  %t104 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t104, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t105 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t105, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/build:Config", ptr %t106, i32 0, i32 10
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t109, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t111, ptr %l33
  br label %bb16
bb16:
  %t112 = load i1, ptr %l33, !tbaa !21
  %t113 = xor i1 %t112, true
  br i1 %t113, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t115, ptr %l36, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l37, !tbaa !24
  %t118 = load i64, ptr %l37, !tbaa !24
  %t119 = mul i64 %t118, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l38, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l37, !tbaa !24
  %t128 = mul i64 %t127, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t124, ptr %t126, i64 %t128, i1 false)
  %t129 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t129, ptr %l36, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t130 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t130, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/build:Config", ptr %t131, i32 0, i32 13
  %t134 = load i1, ptr %t133, !tbaa !21
  br i1 %t134, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t136, ptr %l42, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  store i64 %t138, ptr %l43, !tbaa !24
  %t139 = load i64, ptr %l43, !tbaa !24
  %t140 = mul i64 %t139, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t140)
  %t142 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l44, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = load i64, ptr %l43, !tbaa !24
  %t149 = mul i64 %t148, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t145, ptr %t147, i64 %t149, i1 false)
  %t150 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t150, ptr %l42, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t151 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t151, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t152 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t152, ptr %l46, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l47, !tbaa !24
  %t155 = load i64, ptr %l47, !tbaa !24
  %t156 = mul i64 %t155, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l48, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l47, !tbaa !24
  %t165 = mul i64 %t164, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t161, ptr %t163, i64 %t165, i1 false)
  %t166 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t166, ptr %l46, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t167 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t167, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2folang_2ebuiltins(ptr %v0, ptr %v1, ptr %a0, i1 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/target:Target"
  %l22 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l39 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = insertvalue [8 x { i64, ptr }] undef, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t2 = insertvalue [8 x { i64, ptr }] %t1, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t3 = insertvalue [8 x { i64, ptr }] %t2, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d36, i32 0, i32 1) }, 2
  %t4 = insertvalue [8 x { i64, ptr }] %t3, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d37, i32 0, i32 1) }, 3
  %t5 = insertvalue [8 x { i64, ptr }] %t4, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d38, i32 0, i32 1) }, 4
  %t6 = insertvalue [8 x { i64, ptr }] %t5, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d39, i32 0, i32 1) }, 5
  %t7 = insertvalue [8 x { i64, ptr }] %t6, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d40, i32 0, i32 1) }, 6
  %t8 = insertvalue [8 x { i64, ptr }] %t7, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d41, i32 0, i32 1) }, 7
  %t10 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 128, i64 8)
  store [8 x { i64, ptr }] %t8, ptr %t10
  store ptr %t10, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load ptr, ptr %l3
  store i64 8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l3
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = getelementptr [8 x { i64, ptr }], ptr %t23, i64 0, i64 %t24
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !37
  store { i64, ptr } %t28, ptr %l6, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/build:Config", ptr %t30, i32 0, i32 3
  %t33 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t34 = load ptr, ptr @__olang_prog_scope
  %t37 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %t34, ptr %t32, { i64, ptr } %t33)
  store i1 %t37, ptr %l22
  br label %bb5
bb5:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb6, label %bb7
bb6:
  store ptr %a2, ptr %l23, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = load ptr, ptr @__olang_prog_scope
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBuiltin(ptr %t41, ptr %v1, { i64, ptr } %t40)
  store %"compiler/diagmsg:Msg" %t43, ptr %l25
  br label %bb8
bb7:
  br label %bb12
bb8:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load %"compiler/diagmsg:Msg", ptr %l25
  %t46 = call i32 @compiler_2folang_2eusage(ptr %v1, ptr %v1, ptr %t44, %"compiler/diagmsg:Msg" %t45)
  store i32 %t46, ptr %l26
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb10, label %ok.48, !prof !99
ok.48:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t49 = load i32, ptr %l26, !tbaa !23
  %t50 = lshr i32 %t49, 16
  %t51 = and i32 %t49, 65535
  %t52 = icmp eq i32 %t50, 1
  %t53 = select i1 %t52, i32 1, i32 0
  %t54 = icmp eq i32 %t49, 0
  %t55 = shl i32 %t53, 16
  %t56 = or i32 %t55, %t51
  %t57 = select i1 %t54, i32 0, i32 %t56
  call void @__olang_scope_close(ptr %s1)
  store i32 %t57, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  call void @__olang_scope_close(ptr %s1)
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/build:Config", ptr %t63, i32 0, i32 2
  %t66 = load %"compiler/target:Target", ptr %t65
  store %"compiler/target:Target" %t66, ptr %l7
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/build:Config", ptr %t68, i32 0, i32 3
  store ptr %t70, ptr %l33, !tbaa !29
  %t71 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 3
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l34, !tbaa !27
  %t73 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 2
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l35, !tbaa !27
  %t75 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 4
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l36, !tbaa !27
  %t77 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 7
  %t78 = load i64, ptr %t77, !tbaa !24
  store i64 %t78, ptr %l37, !tbaa !24
  %t79 = getelementptr %"compiler/target:Target", ptr %l7, i32 0, i32 8
  %t80 = load i1, ptr %t79, !tbaa !21
  br i1 %t80, label %bb15, label %bb16
bb15:
  store i64 1, ptr %l39, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb17
bb17:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/build:Config", ptr %t82, i32 0, i32 4
  %t85 = load i1, ptr %t84, !tbaa !21
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/build:Config", ptr %t86, i32 0, i32 6
  %t89 = load i1, ptr %t88, !tbaa !21
  %t91 = load ptr, ptr %l33, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t95 = load i64, ptr %l37, !tbaa !24
  %t96 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t91, { i64, ptr } %t92, { i64, ptr } %t93, { i64, ptr } %t94, i64 %t95, i64 %t96, i1 %t85, i1 %t89, i1 %a1)
  br label %bb18
bb18:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2folang_2ecIr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/os:Output"
  %lp18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca i64
  %l34 = alloca { i64, ptr }
  %l52 = alloca [11 x { i64, ptr }]
  %l67 = alloca %"std/prelude/text:StringBuilder"
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l91 = alloca i64
  %l92 = alloca i64
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca i64
  %l108 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i32
  %l113 = alloca i1
  %l117 = alloca i1
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %l125 = alloca i1
  %l126 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca i64
  %l129 = alloca { i64, ptr }
  %l130 = alloca %"std/os:Output"
  %l132 = alloca { i64, ptr }
  %l135 = alloca %"std/os:Output"
  %l136 = alloca i32
  %l138 = alloca i1
  %l141 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l143 = alloca i64
  %l144 = alloca { i64, ptr }
  %l148 = alloca i32
  %l150 = alloca i1
  %l153 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l155 = alloca i64
  %l156 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l162 = alloca i32
  %l166 = alloca i32
  %l168 = alloca i1
  %l174 = alloca i32
  %l176 = alloca i1
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/build:Config", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v2, ptr %l3, { i64, ptr } %t6)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCFlags(ptr %v2, ptr %s0, ptr %t9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l25
  br label %bb3
bb3:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  store ptr %t13, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l5, !tbaa !24
  store i64 %t15, ptr %l27, !tbaa !24
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t16)
  store i64 %t18, ptr %l29
  br label %bb5
bb5:
  %t19 = load i64, ptr %l27, !tbaa !24
  %t20 = load i64, ptr %l29, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l34
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l34, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t30)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l5, !tbaa !24
  br label %bb4
bb12:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/build:Config", ptr %t38, i32 0, i32 4
  %t41 = load i1, ptr %t40, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/build:Config", ptr %t44, i32 0, i32 6
  %t47 = load i1, ptr %t46, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/build:Config", ptr %t50, i32 0, i32 12
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb21, label %bb22
bb21:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb23
bb22:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr %"compiler/build:Config", ptr %t56, i32 0, i32 14
  %t59 = load i1, ptr %t58, !tbaa !21
  br i1 %t59, label %bb25, label %bb26
bb23:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb24
bb24:
  br label %bb29
bb25:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s9
  %t63 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 0
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %t63, !tbaa !37
  %t64 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 1
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %t64, !tbaa !37
  %t65 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 2
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %t65, !tbaa !37
  %t66 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %t66, !tbaa !37
  %t67 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %t67, !tbaa !37
  %t68 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 5
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %t68, !tbaa !37
  %t69 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %t69, !tbaa !37
  %t70 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 7
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %t70, !tbaa !37
  %t71 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 8
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %t71, !tbaa !37
  %t72 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 9
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %t72, !tbaa !37
  %t73 = getelementptr [11 x { i64, ptr }], ptr %l52, i64 0, i64 10
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %t73, !tbaa !37
  %t74 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 176, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %l52, i64 176, i1 false)
  store ptr %t74, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t76 = load ptr, ptr %l7
  store i64 11, ptr %l9, !tbaa !24
  br label %bb30
bb30:
  %t79 = load i64, ptr %l8, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t87 = load ptr, ptr %l7
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = getelementptr [11 x { i64, ptr }], ptr %t87, i64 0, i64 %t88
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !37
  %t95 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %t95, ptr %l3, { i64, ptr } %t92)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l8, !tbaa !24
  br label %bb30
bb36:
  call void @__olang_scope_close(ptr %s9)
  %t102 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t102, ptr %l67
  br label %bb37
bb37:
  %t103 = load %"std/prelude/text:StringBuilder", ptr %l67
  store %"std/prelude/text:StringBuilder" %t103, ptr %l11
  store ptr %l3, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s13
  %t105 = load i64, ptr %l13, !tbaa !24
  store i64 %t105, ptr %l69, !tbaa !24
  %t106 = load ptr, ptr %l12, !tbaa !29
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t106)
  store i64 %t108, ptr %l71
  br label %bb39
bb39:
  %t109 = load i64, ptr %l69, !tbaa !24
  %t110 = load i64, ptr %l71, !tbaa !24
  %t111 = icmp slt i64 %t109, %t110
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s13)
  br label %bb46
bb41:
  br label %bb42
bb42:
  %t115 = load ptr, ptr %l12, !tbaa !29
  %t116 = load i64, ptr %l13, !tbaa !24
  %t119 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t115, i64 %t116)
  store { i64, ptr } %t119, ptr %l76
  br label %bb43
bb43:
  %t120 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t120, 1
  %t124 = extractvalue { i64, ptr } %t120, 0
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t128 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t127)
  call void @olang_textcopy(ptr %t128, ptr %t123, i64 %t124)
  %t129 = getelementptr i8, ptr %t128, i64 %t124
  call void @olang_textcopy(ptr %t129, ptr %t125, i64 %t126)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t128, 1
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = extractvalue { i64, ptr } %t131, 1
  %t135 = mul i64 %t133, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t135)
  call void @llvm.memcpy.p0.p0.i64(ptr %t136, ptr %t134, i64 %t135, i1 false)
  %t137 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l11, { i64, ptr } %t138)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s13)
  br label %bb45
bb45:
  %t141 = load i64, ptr %l13, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l13, !tbaa !24
  br label %bb38
bb46:
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = getelementptr %"compiler/build:Config", ptr %t145, i32 0, i32 2
  %t148 = getelementptr %"compiler/target:Target", ptr %t147, i32 0, i32 5
  %t149 = load { i64, ptr }, ptr %t148, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v2, ptr %l11, { i64, ptr } %t149)
  br label %bb47
bb47:
  %t152 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %l11, { i64, ptr } %t152)
  br label %bb48
bb48:
  %t155 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t155, ptr %l88, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t160 = sub i64 %t158, 2
  store i64 %t160, ptr %l91, !tbaa !24
  %t161 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l92, !tbaa !24
  %t163 = icmp sge i64 0, 0
  br i1 %t163, label %bb49, label %bb50
bb49:
  %t165 = load i64, ptr %l91, !tbaa !24
  %t166 = icmp sle i64 0, %t165
  br i1 %t166, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_57b10a8a18d2546b_cbe9beb9d768873f)
  unreachable
bb51:
  %t168 = load i64, ptr %l91, !tbaa !24
  %t169 = load i64, ptr %l92, !tbaa !24
  %t170 = icmp sle i64 %t168, %t169
  br i1 %t170, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_57b10a8a18d2546b_cbe9beb9d768873f)
  unreachable
bb53:
  %t172 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l91, !tbaa !24
  %t175 = getelementptr i8, ptr %t173, i64 0
  %t176 = sub i64 %t174, 0
  %t177 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  store { i64, ptr } %t178, ptr %l96, !tbaa !27
  %t180 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l11)
  store { i64, ptr } %t180, ptr %l98
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_57b10a8a18d2546b_cbe9beb9d768873f)
  unreachable
bb55:
  %t181 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = extractvalue { i64, ptr } %t181, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t190 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t188)
  store { i64, ptr } %t190, ptr %l101
  br label %bb56
bb56:
  %t191 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l102, !tbaa !24
  %t193 = icmp sge i64 0, 0
  br i1 %t193, label %bb57, label %bb58
bb57:
  %t195 = icmp sle i64 0, 16
  br i1 %t195, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_57b10a8a18d2546b_cbe9beb9d768873f)
  unreachable
bb59:
  %t197 = load i64, ptr %l102, !tbaa !24
  %t198 = icmp sle i64 16, %t197
  br i1 %t198, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_57b10a8a18d2546b_cbe9beb9d768873f)
  unreachable
bb61:
  %t200 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr i8, ptr %t201, i64 0
  %t203 = sub i64 16, 0
  %t204 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t202, 1
  %t206 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t211 = add i64 %t208, %t210
  %t213 = extractvalue { i64, ptr } %t205, 1
  %t214 = extractvalue { i64, ptr } %t205, 0
  %t215 = add i64 %t211, %t214
  %t216 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t207, i64 %t208)
  %t220 = getelementptr i8, ptr %t219, i64 %t208
  call void @olang_textcopy(ptr %t220, ptr %t209, i64 %t210)
  %t221 = getelementptr i8, ptr %t220, i64 %t210
  call void @olang_textcopy(ptr %t221, ptr %t213, i64 %t214)
  %t222 = getelementptr i8, ptr %t221, i64 %t214
  call void @olang_textcopy(ptr %t222, ptr %t216, i64 %t217)
  %t223 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t219, 1
  store { i64, ptr } %t224, ptr %l15, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t228 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t226)
  %t229 = extractvalue { i32, { i64, ptr } } %t228, 1
  %t230 = extractvalue { i32, { i64, ptr } } %t228, 0
  store i32 %t230, ptr %l111
  %t231 = icmp ne i32 %t230, 0
  br i1 %t231, label %bb64, label %ok.232, !prof !99
ok.232:
  store { i64, ptr } %t229, ptr %l110
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_57b10a8a18d2546b_cbe9beb9d768873f)
  unreachable
bb63:
  %t233 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t233, ptr %l108, !tbaa !27
  br label %bb68
bb64:
  %t234 = load i32, ptr %l111, !tbaa !23
  %t235 = ashr i32 %t234, 16
  %t237 = icmp eq i32 %t235, 1
  store i1 %t237, ptr %l113, !tbaa !21
  %t238 = load i32, ptr %l111, !tbaa !23
  %t239 = ashr i32 %t238, 16
  %t241 = icmp eq i32 %t239, 1
  br i1 %t241, label %bb65, label %bb66
bb65:
  call void @__olang_errpay_pop()
  br label %bb66
bb66:
  br label %bb67
bb67:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l108, !tbaa !27
  br label %bb68
bb68:
  %t243 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t243, ptr %l16, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t244, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t246, ptr %l117
  br label %bb69
bb69:
  %t247 = load i1, ptr %l117, !tbaa !21
  %t248 = xor i1 %t247, true
  br i1 %t248, label %bb70, label %bb71
bb70:
  %t250 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t250, ptr %l120, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  store i64 %t253, ptr %l121, !tbaa !24
  %t254 = load i64, ptr %l121, !tbaa !24
  %t255 = mul i64 %t254, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t255)
  %t257 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  store { i64, ptr } %t258, ptr %l122, !tbaa !27
  %t259 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = load i64, ptr %l121, !tbaa !24
  %t264 = mul i64 %t263, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t260, ptr %t262, i64 %t264, i1 false)
  %t265 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t265, ptr %l120, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t266 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t266, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t267 = load ptr, ptr %l2, !tbaa !29
  %t269 = getelementptr %"compiler/build:Config", ptr %t267, i32 0, i32 1
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  %t272 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t270, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t272, ptr %l125
  br label %bb73
bb73:
  %t273 = load i1, ptr %l125, !tbaa !21
  br i1 %t273, label %bb74, label %bb75
bb74:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l126, !tbaa !27
  %t274 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t274, ptr %l127, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 0
  store i64 %t276, ptr %l128, !tbaa !24
  %t277 = load i64, ptr %l128, !tbaa !24
  %t278 = mul i64 %t277, 1
  %t279 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t278)
  %t280 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr %t279, 1
  store { i64, ptr } %t281, ptr %l129, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = load i64, ptr %l128, !tbaa !24
  %t287 = mul i64 %t286, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t283, ptr %t285, i64 %t287, i1 false)
  %t288 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t288, ptr %l127, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t289 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t289, ptr %rv
  br label %ret
bb75:
  br label %bb76
bb76:
  %t291 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t291, ptr %l132
  br label %bb77
bb77:
  %t292 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t294 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t296 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t294, { i64, ptr } %t292, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  %t297 = extractvalue { i32, %"std/os:Output" } %t296, 1
  %t298 = extractvalue { i32, %"std/os:Output" } %t296, 0
  store i32 %t298, ptr %l136
  %t299 = icmp ne i32 %t298, 0
  br i1 %t299, label %bb79, label %ok.300, !prof !99
ok.300:
  store %"std/os:Output" %t297, ptr %l135
  br label %bb78
bb78:
  %t301 = load %"std/os:Output", ptr %l135
  store %"std/os:Output" %t301, ptr %l130
  br label %bb83
bb79:
  %t302 = load i32, ptr %l136, !tbaa !23
  %t303 = ashr i32 %t302, 16
  %t305 = icmp eq i32 %t303, 1
  store i1 %t305, ptr %l138, !tbaa !21
  %t306 = load i32, ptr %l136, !tbaa !23
  %t307 = ashr i32 %t306, 16
  %t309 = icmp eq i32 %t307, 1
  br i1 %t309, label %bb80, label %bb81
bb80:
  call void @__olang_errpay_pop()
  br label %bb81
bb81:
  br label %bb82
bb82:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l141, !tbaa !27
  %t311 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t311, ptr %l142, !tbaa !27
  %t312 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  store i64 %t313, ptr %l143, !tbaa !24
  %t314 = load i64, ptr %l143, !tbaa !24
  %t315 = mul i64 %t314, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t315)
  %t317 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l144, !tbaa !27
  %t319 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t320 = load ptr, ptr %t319, !tbaa !27
  %t321 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = load i64, ptr %l143, !tbaa !24
  %t324 = mul i64 %t323, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t320, ptr %t322, i64 %t324, i1 false)
  %t325 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t325, ptr %l142, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t326 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t326, ptr %rv
  br label %ret
bb83:
  %t327 = load %"std/os:Output", ptr %l130
  store %"std/os:Output" %t327, ptr %l17
  %t328 = getelementptr %"std/os:Output", ptr %l17, i32 0, i32 0
  %t329 = load i32, ptr %t328, !tbaa !23
  %t331 = icmp ne i32 %t329, 0
  br i1 %t331, label %bb84, label %bb85
bb84:
  %t333 = getelementptr %"std/os:Output", ptr %l17, i32 0, i32 2
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t336 = call i32 @std_2fio_2ePrintErr(ptr %s0, { i64, ptr } %t334)
  store i32 %t336, ptr %l148
  %t337 = icmp ne i32 %t336, 0
  br i1 %t337, label %bb87, label %ok.338, !prof !99
ok.338:
  br label %bb86
bb85:
  br label %bb92
bb86:
  br label %bb91
bb87:
  %t339 = load i32, ptr %l148, !tbaa !23
  %t340 = ashr i32 %t339, 16
  %t342 = icmp eq i32 %t340, 1
  store i1 %t342, ptr %l150, !tbaa !21
  %t343 = load i32, ptr %l148, !tbaa !23
  %t344 = ashr i32 %t343, 16
  %t346 = icmp eq i32 %t344, 1
  br i1 %t346, label %bb88, label %bb89
bb88:
  call void @__olang_errpay_pop()
  br label %bb89
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l153, !tbaa !27
  %t348 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t348, ptr %l154, !tbaa !27
  %t349 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t349, 0
  store i64 %t350, ptr %l155, !tbaa !24
  %t351 = load i64, ptr %l155, !tbaa !24
  %t352 = mul i64 %t351, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t352)
  %t354 = insertvalue { i64, ptr } undef, i64 %t351, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  store { i64, ptr } %t355, ptr %l156, !tbaa !27
  %t356 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t357 = load ptr, ptr %t356, !tbaa !27
  %t358 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = load i64, ptr %l155, !tbaa !24
  %t361 = mul i64 %t360, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t357, ptr %t359, i64 %t361, i1 false)
  %t362 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t362, ptr %l154, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t363 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t363, ptr %rv
  br label %ret
bb92:
  %t364 = getelementptr %"std/os:Output", ptr %l17, i32 0, i32 1
  %t365 = load { i64, ptr }, ptr %t364, !tbaa !27
  %t366 = load ptr, ptr %l2, !tbaa !29
  %t368 = getelementptr %"compiler/build:Config", ptr %t366, i32 0, i32 2
  %t369 = getelementptr %"compiler/target:Target", ptr %t368, i32 0, i32 5
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !27
  %t373 = call { i64, ptr } @compiler_2folang_2eretarget(ptr %s0, ptr %v2, ptr %v3, { i64, ptr } %t365, { i64, ptr } %t370)
  store { i64, ptr } %t373, ptr %l160
  br label %bb93
bb93:
  %t374 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t374, ptr %lp18
  %t375 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t376 = load ptr, ptr %lp18
  store { i64, ptr } %t375, ptr %t376, !tbaa !27
  %t377 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t377, ptr %l161, !tbaa !27
  %t378 = call i32 @compiler_2fbuild_2ePid()
  store i32 %t378, ptr %l162
  br label %bb94
bb94:
  %t379 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t379, 1
  %t381 = extractvalue { i64, ptr } %t379, 0
  %t382 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t383 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t384 = add i64 %t381, %t383
  %t385 = load i32, ptr %l162, !tbaa !23
  %t386 = sext i32 %t385 to i64
  %t387 = call i64 @__olang_fmt_i64(ptr null, i64 %t386)
  %t388 = add i64 %t384, %t387
  %t389 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t380, i64 %t381)
  %t393 = getelementptr i8, ptr %t392, i64 %t381
  call void @olang_textcopy(ptr %t393, ptr %t382, i64 %t383)
  %t394 = getelementptr i8, ptr %t393, i64 %t383
  %t395 = call i64 @__olang_fmt_i64(ptr %t394, i64 %t386)
  %t396 = getelementptr i8, ptr %t394, i64 %t387
  call void @olang_textcopy(ptr %t396, ptr %t389, i64 %t390)
  %t397 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t392, 1
  store { i64, ptr } %t398, ptr %l19, !tbaa !27
  %t400 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t401 = load ptr, ptr %lp18
  %t402 = load { i64, ptr }, ptr %t401, !tbaa !27
  %t405 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v3, { i64, ptr } %t400, { i64, ptr } %t402)
  store i32 %t405, ptr %l166
  %t406 = icmp ne i32 %t405, 0
  br i1 %t406, label %bb96, label %ok.407, !prof !99
ok.407:
  br label %bb95
bb95:
  br label %bb100
bb96:
  %t408 = load i32, ptr %l166, !tbaa !23
  %t409 = ashr i32 %t408, 16
  %t411 = icmp eq i32 %t409, 1
  store i1 %t411, ptr %l168, !tbaa !21
  %t412 = load i32, ptr %l166, !tbaa !23
  %t413 = ashr i32 %t412, 16
  %t415 = icmp eq i32 %t413, 1
  br i1 %t415, label %bb97, label %bb98
bb97:
  call void @__olang_errpay_pop()
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t417 = load ptr, ptr %lp18
  %t418 = load { i64, ptr }, ptr %t417, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t418, ptr %rv
  br label %ret
bb100:
  %t420 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t421 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t424 = call i32 @std_2fos_2eRename(ptr %s0, ptr %s0, { i64, ptr } %t420, { i64, ptr } %t421)
  store i32 %t424, ptr %l174
  %t425 = icmp ne i32 %t424, 0
  br i1 %t425, label %bb102, label %ok.426, !prof !99
ok.426:
  br label %bb101
bb101:
  br label %bb106
bb102:
  %t427 = load i32, ptr %l174, !tbaa !23
  %t428 = ashr i32 %t427, 16
  %t430 = icmp eq i32 %t428, 1
  store i1 %t430, ptr %l176, !tbaa !21
  %t431 = load i32, ptr %l174, !tbaa !23
  %t432 = ashr i32 %t431, 16
  %t434 = icmp eq i32 %t432, 1
  br i1 %t434, label %bb103, label %bb104
bb103:
  call void @__olang_errpay_pop()
  br label %bb104
bb104:
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t436 = load ptr, ptr %lp18
  %t437 = load { i64, ptr }, ptr %t436, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t437, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2folang_2ecLibrary(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/os:FileInfo"
  %l4 = alloca %"std/os:FileInfo"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/os:Output"
  %l14 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca %"std/os:FileInfo"
  %l26 = alloca %"std/os:FileInfo"
  %l27 = alloca i32
  %l29 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca %"std/os:FileInfo"
  %l38 = alloca %"std/os:FileInfo"
  %l39 = alloca i32
  %l41 = alloca i1
  %l45 = alloca %"std/os:FileInfo"
  %l49 = alloca i1
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca i64
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l83 = alloca [9 x { i64, ptr }]
  %l98 = alloca %"std/os:Output"
  %l100 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca %"std/os:Output"
  %l103 = alloca i32
  %l105 = alloca i1
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l110 = alloca i64
  %l111 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l121 = alloca i32
  %l123 = alloca i1
  %l126 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca i64
  %l129 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l14, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t2, 0
  %t6 = sub i64 %t4, 2
  store i64 %t6, ptr %l17, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l18, !tbaa !24
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l17, !tbaa !24
  %t12 = icmp sle i64 0, %t11
  br i1 %t12, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_7f1024592ae32589_c3207624e3c1a39d)
  unreachable
bb3:
  %t14 = load i64, ptr %l17, !tbaa !24
  %t15 = load i64, ptr %l18, !tbaa !24
  %t16 = icmp sle i64 %t14, %t15
  br i1 %t16, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_7f1024592ae32589_c3207624e3c1a39d)
  unreachable
bb5:
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = getelementptr i8, ptr %t19, i64 0
  %t22 = sub i64 %t20, 0
  %t23 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t21, 1
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = extractvalue { i64, ptr } %t24, 0
  %t28 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t26, i64 %t27)
  %t32 = getelementptr i8, ptr %t31, i64 %t27
  call void @olang_textcopy(ptr %t32, ptr %t28, i64 %t29)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  store { i64, ptr } %t34, ptr %l2, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %t36)
  %t39 = extractvalue { i32, %"std/os:FileInfo" } %t38, 1
  %t40 = extractvalue { i32, %"std/os:FileInfo" } %t38, 0
  store i32 %t40, ptr %l27
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb8, label %ok.42, !prof !99
ok.42:
  store %"std/os:FileInfo" %t39, ptr %l26
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_7f1024592ae32589_c3207624e3c1a39d)
  unreachable
bb7:
  %t43 = load %"std/os:FileInfo", ptr %l26
  store %"std/os:FileInfo" %t43, ptr %l24
  br label %bb12
bb8:
  %t44 = load i32, ptr %l27, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l29, !tbaa !21
  %t48 = load i32, ptr %l27, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  br i1 %t51, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t53, ptr %l33, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l34, !tbaa !24
  %t56 = load i64, ptr %l34, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l35, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l34, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t67, ptr %l33, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t68 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
bb12:
  %t69 = load %"std/os:FileInfo", ptr %l24
  store %"std/os:FileInfo" %t69, ptr %l3
  %t70 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t72 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t70)
  %t73 = extractvalue { i32, %"std/os:FileInfo" } %t72, 1
  %t74 = extractvalue { i32, %"std/os:FileInfo" } %t72, 0
  store i32 %t74, ptr %l39
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb14, label %ok.76, !prof !99
ok.76:
  store %"std/os:FileInfo" %t73, ptr %l38
  br label %bb13
bb13:
  %t77 = load %"std/os:FileInfo", ptr %l38
  store %"std/os:FileInfo" %t77, ptr %l36
  br label %bb19
bb14:
  %t78 = load i32, ptr %l39, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  store i1 %t81, ptr %l41, !tbaa !21
  %t82 = load i32, ptr %l39, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  br i1 %t85, label %bb15, label %bb16
bb15:
  call void @__olang_errpay_pop()
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t88 = call %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %s0, i32 2, i64 0, i64 0)
  store %"std/os:FileInfo" %t88, ptr %l45
  br label %bb18
bb18:
  %t89 = load %"std/os:FileInfo", ptr %l45
  store %"std/os:FileInfo" %t89, ptr %l36
  br label %bb19
bb19:
  %t90 = load %"std/os:FileInfo", ptr %l36
  store %"std/os:FileInfo" %t90, ptr %l4
  %t91 = getelementptr %"std/os:FileInfo", ptr %l4, i32 0, i32 0
  %t92 = load i32, ptr %t91, !range !{i32 0, i32 3}
  %t94 = trunc i64 0 to i32
  %t95 = icmp eq i32 %t92, %t94
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb22
bb21:
  %t99 = getelementptr %"std/os:FileInfo", ptr %l4, i32 0, i32 2
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = getelementptr %"std/os:FileInfo", ptr %l3, i32 0, i32 2
  %t102 = load i64, ptr %t101, !tbaa !24
  %t105 = icmp slt i64 %t100, %t102
  store i1 %t105, ptr %l49, !tbaa !21
  br label %bb22
bb22:
  %t107 = load i1, ptr %l49, !tbaa !21
  br i1 %t107, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr %"compiler/build:Config", ptr %t108, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s3, { i64, ptr } %t111, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i1 %t113, ptr %l55
  br label %bb25
bb24:
  br label %bb65
bb25:
  %t114 = load i1, ptr %l55, !tbaa !21
  br i1 %t114, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t115, ptr %l57, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l58, !tbaa !24
  %t118 = load i64, ptr %l58, !tbaa !24
  %t119 = mul i64 %t118, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l59, !tbaa !27
  %t123 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l58, !tbaa !24
  %t128 = mul i64 %t127, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t124, ptr %t126, i64 %t128, i1 false)
  %t129 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t129, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t130, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t131 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l60
  br label %bb29
bb29:
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l5
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/build:Config", ptr %t133, i32 0, i32 1
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %v1, ptr %l5, { i64, ptr } %t136)
  br label %bb30
bb30:
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCFlags(ptr %v1, ptr %s3, ptr %t139)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l65
  br label %bb31
bb31:
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  %t143 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %t143
  store ptr %t143, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb32
bb32:
  %t145 = load i64, ptr %l7, !tbaa !24
  store i64 %t145, ptr %l67, !tbaa !24
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s3, ptr %t146)
  store i64 %t148, ptr %l69
  br label %bb33
bb33:
  %t149 = load i64, ptr %l67, !tbaa !24
  %t150 = load i64, ptr %l69, !tbaa !24
  %t151 = icmp slt i64 %t149, %t150
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb34, label %bb35
bb34:
  br label %bb40
bb35:
  br label %bb36
bb36:
  %t155 = load ptr, ptr %l6, !tbaa !29
  %t156 = load i64, ptr %l7, !tbaa !24
  %t159 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s3, ptr %s3, ptr %t155, i64 %t156)
  store { i64, ptr } %t159, ptr %l74
  br label %bb37
bb37:
  %t160 = load { i64, ptr }, ptr %l74, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %s3, ptr %l5, { i64, ptr } %t160)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t164 = load i64, ptr %l7, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l7, !tbaa !24
  br label %bb32
bb40:
  %t168 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = extractvalue { i64, ptr } %t168, 0
  %t172 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t170, i64 %t171)
  %t176 = getelementptr i8, ptr %t175, i64 %t171
  call void @olang_textcopy(ptr %t176, ptr %t172, i64 %t173)
  %t177 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  %t186 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t187 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 0
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %t187, !tbaa !37
  %t188 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 1
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %t188, !tbaa !37
  %t189 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d77, i32 0, i32 1) }, ptr %t189, !tbaa !37
  %t190 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 3
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, ptr %t190, !tbaa !37
  %t191 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %t191, !tbaa !37
  %t192 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 5
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %t192, !tbaa !37
  %t193 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %t193, !tbaa !37
  %t194 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 7
  store { i64, ptr } %t185, ptr %t194, !tbaa !37
  %t196 = getelementptr [9 x { i64, ptr }], ptr %l83, i64 0, i64 8
  store { i64, ptr } %t186, ptr %t196, !tbaa !37
  %t198 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 144, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %l83, i64 144, i1 false)
  store ptr %t198, ptr %l9
  store i64 0, ptr %l10, !tbaa !24
  %t200 = load ptr, ptr %l9
  store i64 9, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  %t203 = load i64, ptr %l10, !tbaa !24
  %t204 = load i64, ptr %l11, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb42, label %bb43
bb42:
  br label %bb47
bb43:
  br label %bb44
bb44:
  %t211 = load ptr, ptr %l9
  %t212 = load i64, ptr %l10, !tbaa !24
  %t215 = getelementptr [9 x { i64, ptr }], ptr %t211, i64 0, i64 %t212
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s3, ptr %s3, ptr %l5, { i64, ptr } %t216)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t221 = load i64, ptr %l10, !tbaa !24
  %t223 = add i64 %t221, 1
  store i64 %t223, ptr %l10, !tbaa !24
  br label %bb41
bb47:
  %t226 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s3, ptr %s3, ptr %l5)
  store { i64, ptr } %t226, ptr %l100
  br label %bb48
bb48:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d82, i32 0, i32 1) }, ptr %l101, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t229 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s3, ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t227, { i64, ptr } %t228, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  %t230 = extractvalue { i32, %"std/os:Output" } %t229, 1
  %t231 = extractvalue { i32, %"std/os:Output" } %t229, 0
  store i32 %t231, ptr %l103
  %t232 = icmp ne i32 %t231, 0
  br i1 %t232, label %bb50, label %ok.233, !prof !99
ok.233:
  store %"std/os:Output" %t230, ptr %l102
  br label %bb49
bb49:
  %t234 = load %"std/os:Output", ptr %l102
  store %"std/os:Output" %t234, ptr %l98
  br label %bb54
bb50:
  %t235 = load i32, ptr %l103, !tbaa !23
  %t236 = ashr i32 %t235, 16
  %t238 = icmp eq i32 %t236, 1
  store i1 %t238, ptr %l105, !tbaa !21
  %t239 = load i32, ptr %l103, !tbaa !23
  %t240 = ashr i32 %t239, 16
  %t242 = icmp eq i32 %t240, 1
  br i1 %t242, label %bb51, label %bb52
bb51:
  call void @__olang_errpay_pop()
  br label %bb52
bb52:
  br label %bb53
bb53:
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l108, !tbaa !27
  %t244 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t244, ptr %l109, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  store i64 %t246, ptr %l110, !tbaa !24
  %t247 = load i64, ptr %l110, !tbaa !24
  %t248 = mul i64 %t247, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t248)
  %t250 = insertvalue { i64, ptr } undef, i64 %t247, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l111, !tbaa !27
  %t252 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = load i64, ptr %l110, !tbaa !24
  %t257 = mul i64 %t256, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t253, ptr %t255, i64 %t257, i1 false)
  %t258 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t258, ptr %l109, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t259 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t259, ptr %rv
  br label %ret
bb54:
  %t260 = load %"std/os:Output", ptr %l98
  store %"std/os:Output" %t260, ptr %l13
  %t261 = getelementptr %"std/os:Output", ptr %l13, i32 0, i32 0
  %t262 = load i32, ptr %t261, !tbaa !23
  %t264 = icmp ne i32 %t262, 0
  br i1 %t264, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s13
  %t266 = getelementptr %"std/os:Output", ptr %l13, i32 0, i32 2
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t269 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s3, ptr %s13, { i64, ptr } %t267)
  store { i64, ptr } %t269, ptr %l115
  br label %bb57
bb56:
  br label %bb58
bb57:
  %t270 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t272 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t275 = add i64 %t271, %t274
  %t276 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t275)
  call void @olang_textcopy(ptr %t276, ptr %t270, i64 %t271)
  %t277 = getelementptr i8, ptr %t276, i64 %t271
  call void @olang_textcopy(ptr %t277, ptr %t273, i64 %t274)
  %t278 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t276, 1
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t279, ptr %rv
  br label %ret
bb58:
  %t281 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t283 = extractvalue { i64, ptr } %t281, 1
  %t284 = extractvalue { i64, ptr } %t281, 0
  %t285 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t286 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t287 = add i64 %t284, %t286
  %t288 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t287)
  call void @olang_textcopy(ptr %t288, ptr %t283, i64 %t284)
  %t289 = getelementptr i8, ptr %t288, i64 %t284
  call void @olang_textcopy(ptr %t289, ptr %t285, i64 %t286)
  %t290 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t291 = insertvalue { i64, ptr } %t290, ptr %t288, 1
  %t293 = extractvalue { i64, ptr } %t291, 0
  %t294 = extractvalue { i64, ptr } %t291, 1
  %t295 = mul i64 %t293, 1
  %t296 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t295)
  call void @llvm.memcpy.p0.p0.i64(ptr %t296, ptr %t294, i64 %t295, i1 false)
  %t297 = insertvalue { i64, ptr } undef, i64 %t293, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t296, 1
  %t299 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t302 = call i32 @std_2fos_2eRename(ptr %s3, ptr %s0, { i64, ptr } %t298, { i64, ptr } %t299)
  store i32 %t302, ptr %l121
  %t303 = icmp ne i32 %t302, 0
  br i1 %t303, label %bb60, label %ok.304, !prof !99
ok.304:
  br label %bb59
bb59:
  br label %bb64
bb60:
  %t305 = load i32, ptr %l121, !tbaa !23
  %t306 = ashr i32 %t305, 16
  %t308 = icmp eq i32 %t306, 1
  store i1 %t308, ptr %l123, !tbaa !21
  %t309 = load i32, ptr %l121, !tbaa !23
  %t310 = ashr i32 %t309, 16
  %t312 = icmp eq i32 %t310, 1
  br i1 %t312, label %bb61, label %bb62
bb61:
  call void @__olang_errpay_pop()
  br label %bb62
bb62:
  br label %bb63
bb63:
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d86, i32 0, i32 1) }, ptr %l126, !tbaa !27
  %t314 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t314, ptr %l127, !tbaa !27
  %t315 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  store i64 %t316, ptr %l128, !tbaa !24
  %t317 = load i64, ptr %l128, !tbaa !24
  %t318 = mul i64 %t317, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t318)
  %t320 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  store { i64, ptr } %t321, ptr %l129, !tbaa !27
  %t322 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = load i64, ptr %l128, !tbaa !24
  %t327 = mul i64 %t326, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t323, ptr %t325, i64 %t327, i1 false)
  %t328 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t328, ptr %l127, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t329 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t329, ptr %rv
  br label %ret
bb64:
  call void @__olang_scope_close(ptr %s3)
  br label %bb65
bb65:
  %t330 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t332 = call { i64, ptr } @compiler_2finterp_2eLoadLibrary(ptr %s0, ptr %v2, { i64, ptr } %t330)
  store { i64, ptr } %t332, ptr %l131
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t333 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t333, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2folang_2ecUnits(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l11
  br label %bb2
bb2:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = load i64, ptr %l11, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t26, i32 0, i32 31
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t30, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t32, ptr %l19
  br label %bb7
bb7:
  %t33 = load i1, ptr %l19, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load i64, ptr %l1, !tbaa !24
  %t38 = add i64 %t36, 1
  store i64 %t38, ptr %l1, !tbaa !24
  br label %bb10
bb9:
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t44 = load i64, ptr %l1, !tbaa !24
  store i64 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2folang_2echeckReuse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5, i32 %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/build:Unit"
  %l21 = alloca i64
  %l29 = alloca ptr
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l74 = alloca %"compiler/build:Unit"
  %l77 = alloca %"compiler/emit:Object"
  %l80 = alloca i1
  %l82 = alloca i1
  %l85 = alloca %"compiler/emit:Object"
  %l88 = alloca i1
  %l92 = alloca %"compiler/emit:Object"
  %l96 = alloca i32
  %l98 = alloca i1
  %l104 = alloca i64
  %l106 = alloca i64
  %l109 = alloca i32
  %l111 = alloca i1
  %l116 = alloca i64
  %l119 = alloca i32
  %l121 = alloca i1
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 71
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load i64, ptr %l21, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t21 = call ptr @compiler_2folang_2eemitter(ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, ptr %v2, ptr %t9, ptr %a3, ptr %a4, ptr %a5, i32 %a6, ptr %a7)
  store ptr %t21, ptr %l29
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l29, !tbaa !29
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eObjects(ptr %v2, ptr %s0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l31
  br label %bb6
bb6:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l9
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/build:Program", ptr %t27, i32 0, i32 0
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %t29)
  store i64 %t31, ptr %l34
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @compiler_2folang_2ecUnits(ptr %v2, ptr %t32)
  store i64 %t34, ptr %l36
  br label %bb8
bb8:
  %t35 = load i64, ptr %l34, !tbaa !24
  %t36 = load i64, ptr %l36, !tbaa !24
  %t37 = sub i64 %t35, %t36
  store i64 %t37, ptr %l10, !tbaa !24
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eLen_3ccompiler_2femit_3aObject_3e(ptr %s0, ptr %l9)
  store i64 %t40, ptr %l39
  br label %bb9
bb9:
  %t41 = load i64, ptr %l10, !tbaa !24
  %t42 = load i64, ptr %l39, !tbaa !24
  %t44 = icmp ne i64 %t42, %t41
  store i1 %t44, ptr %l11, !tbaa !21
  store i64 0, ptr %l12, !tbaa !24
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eLen_3ccompiler_2femit_3aObject_3e(ptr %s0, ptr %l9)
  store i64 %t47, ptr %l43
  br label %bb10
bb10:
  %t48 = load i64, ptr %l43, !tbaa !24
  store i64 %t48, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t49 = load i64, ptr %l13, !tbaa !24
  %t50 = load i64, ptr %l12, !tbaa !24
  %t53 = icmp sgt i64 %t49, %t50
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t55 = load i64, ptr %l14, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb16
bb13:
  %t59 = load i64, ptr %l13, !tbaa !24
  %t60 = load i64, ptr %l12, !tbaa !24
  %t63 = sub i64 %t59, %t60
  %t64 = load i64, ptr %l14, !tbaa !24
  %t67 = add i64 %t63, %t64
  %t69 = sub i64 %t67, 1
  %t70 = load i64, ptr %l14, !tbaa !24
  %t73 = sdiv i64 %t69, %t70
  store i64 %t73, ptr %l50, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb15
bb15:
  %t75 = load i64, ptr %l50, !tbaa !24
  store i64 %t75, ptr %l47, !tbaa !24
  br label %bb16
bb16:
  %t76 = load i64, ptr %l47, !tbaa !24
  store i64 %t76, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb17
bb17:
  %t77 = load i64, ptr %l16, !tbaa !24
  %t78 = load i64, ptr %l15, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb18, label %bb19
bb18:
  br label %bb43
bb19:
  br label %bb20
bb20:
  %t85 = load i64, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l16, !tbaa !24
  %t87 = load i64, ptr %l14, !tbaa !24
  %t90 = mul i64 %t86, %t87
  %t93 = add i64 %t85, %t90
  store i64 %t93, ptr %l17, !tbaa !24
  %t95 = load i64, ptr %l17, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = icmp sge i64 %t95, %t96
  br i1 %t99, label %bb21, label %bb22
bb21:
  br label %bb43
bb22:
  br label %bb23
bb23:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/build:Program", ptr %t101, i32 0, i32 0
  %t104 = load i64, ptr %l17, !tbaa !24
  %t107 = call %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v1, ptr %v1, ptr %t103, i64 %t104)
  store %"compiler/build:Unit" %t107, ptr %l74
  br label %bb24
bb24:
  %t108 = load %"compiler/build:Unit", ptr %l74
  store %"compiler/build:Unit" %t108, ptr %l18
  %t109 = load i64, ptr %l17, !tbaa !24
  %t112 = call %"compiler/emit:Object" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eAt_3ccompiler_2femit_3aObject_3e(ptr %s0, ptr %s0, ptr %l9, i64 %t109)
  store %"compiler/emit:Object" %t112, ptr %l77
  br label %bb25
bb25:
  %t113 = getelementptr %"compiler/emit:Object", ptr %l77, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t115 = getelementptr %"compiler/build:Unit", ptr %l18, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t119 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t114, { i64, ptr } %t116)
  store i1 %t119, ptr %l80
  br label %bb26
bb26:
  %t120 = load i1, ptr %l80, !tbaa !21
  %t121 = xor i1 %t120, true
  br i1 %t121, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb31
bb28:
  %t123 = load i64, ptr %l17, !tbaa !24
  %t126 = call %"compiler/emit:Object" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eAt_3ccompiler_2femit_3aObject_3e(ptr %s0, ptr %s0, ptr %l9, i64 %t123)
  store %"compiler/emit:Object" %t126, ptr %l85
  br label %bb29
bb29:
  %t127 = getelementptr %"compiler/emit:Object", ptr %l85, i32 0, i32 2
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t129 = getelementptr %"compiler/build:Unit", ptr %l18, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v1, { i64, ptr } %t128, { i64, ptr } %t130)
  store i1 %t133, ptr %l88
  br label %bb30
bb30:
  %t134 = load i1, ptr %l88, !tbaa !21
  %t135 = xor i1 %t134, true
  store i1 %t135, ptr %l82, !tbaa !21
  br label %bb31
bb31:
  %t137 = load i1, ptr %l82, !tbaa !21
  br i1 %t137, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  %t138 = load i64, ptr %l17, !tbaa !24
  %t141 = call %"compiler/emit:Object" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eAt_3ccompiler_2femit_3aObject_3e(ptr %s0, ptr %s0, ptr %l9, i64 %t138)
  store %"compiler/emit:Object" %t141, ptr %l92
  br label %bb34
bb33:
  br label %bb41
bb34:
  %t142 = getelementptr %"compiler/emit:Object", ptr %l92, i32 0, i32 0
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  %t144 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t147 = extractvalue { i64, ptr } %t143, 1
  %t148 = extractvalue { i64, ptr } %t143, 0
  %t149 = add i64 %t145, %t148
  %t150 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t151 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t152 = add i64 %t149, %t151
  %t153 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t144, i64 %t145)
  %t154 = getelementptr i8, ptr %t153, i64 %t145
  call void @olang_textcopy(ptr %t154, ptr %t147, i64 %t148)
  %t155 = getelementptr i8, ptr %t154, i64 %t148
  call void @olang_textcopy(ptr %t155, ptr %t150, i64 %t151)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t153, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } %t157, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t166 = call i32 @std_2fio_2ePrintErr(ptr %s5, { i64, ptr } %t164)
  store i32 %t166, ptr %l96
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb36, label %ok.168, !prof !99
ok.168:
  br label %bb35
bb35:
  br label %bb40
bb36:
  %t169 = load i32, ptr %l96, !tbaa !23
  %t170 = ashr i32 %t169, 16
  %t172 = icmp eq i32 %t170, 1
  store i1 %t172, ptr %l98, !tbaa !21
  %t173 = load i32, ptr %l96, !tbaa !23
  %t174 = ashr i32 %t173, 16
  %t176 = icmp eq i32 %t174, 1
  br i1 %t176, label %bb37, label %bb38
bb37:
  call void @__olang_errpay_pop()
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  store i1 true, ptr %l11, !tbaa !21
  call void @__olang_scope_close(ptr %s5)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t178 = load i64, ptr %l16, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l16, !tbaa !24
  br label %bb17
bb43:
  %t182 = load i1, ptr %l11, !tbaa !21
  br i1 %t182, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s9
  %t184 = load i64, ptr %l10, !tbaa !24
  store i64 %t184, ptr %l104, !tbaa !24
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eLen_3ccompiler_2femit_3aObject_3e(ptr %s0, ptr %l9)
  store i64 %t186, ptr %l106
  br label %bb46
bb45:
  br label %bb54
bb46:
  %t187 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t189 = load i64, ptr %l104, !tbaa !24
  %t190 = call i64 @__olang_fmt_i64(ptr null, i64 %t189)
  %t191 = add i64 %t188, %t190
  %t192 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t194 = add i64 %t191, %t193
  %t195 = load i64, ptr %l106, !tbaa !24
  %t196 = call i64 @__olang_fmt_i64(ptr null, i64 %t195)
  %t197 = add i64 %t194, %t196
  %t198 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t199 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t200 = add i64 %t197, %t199
  %t201 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t200)
  call void @olang_textcopy(ptr %t201, ptr %t187, i64 %t188)
  %t202 = getelementptr i8, ptr %t201, i64 %t188
  %t203 = call i64 @__olang_fmt_i64(ptr %t202, i64 %t189)
  %t204 = getelementptr i8, ptr %t202, i64 %t190
  call void @olang_textcopy(ptr %t204, ptr %t192, i64 %t193)
  %t205 = getelementptr i8, ptr %t204, i64 %t193
  %t206 = call i64 @__olang_fmt_i64(ptr %t205, i64 %t195)
  %t207 = getelementptr i8, ptr %t205, i64 %t196
  call void @olang_textcopy(ptr %t207, ptr %t198, i64 %t199)
  %t208 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t201, 1
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t212 = extractvalue { i64, ptr } %t209, 1
  %t213 = mul i64 %t211, 1
  %t214 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t214, ptr %t212, i64 %t213, i1 false)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  %t218 = call i32 @std_2fio_2ePrintErr(ptr %s9, { i64, ptr } %t216)
  store i32 %t218, ptr %l109
  %t219 = icmp ne i32 %t218, 0
  br i1 %t219, label %bb48, label %ok.220, !prof !99
ok.220:
  br label %bb47
bb47:
  br label %bb52
bb48:
  %t221 = load i32, ptr %l109, !tbaa !23
  %t222 = ashr i32 %t221, 16
  %t224 = icmp eq i32 %t222, 1
  store i1 %t224, ptr %l111, !tbaa !21
  %t225 = load i32, ptr %l109, !tbaa !23
  %t226 = ashr i32 %t225, 16
  %t228 = icmp eq i32 %t226, 1
  br i1 %t228, label %bb49, label %bb50
bb49:
  call void @__olang_errpay_pop()
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  call void @std_2fos_2eExit(i32 3)
  unreachable
bb53:
  call void @__olang_check_failed(ptr @olang_loc_dd8573ae343ff812_8decdc106ea08ebe)
  unreachable
bb54:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/emit:Emitter", ptr %t230, i32 0, i32 71
  %t234 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %t232)
  store i64 %t234, ptr %l116
  br label %bb55
bb55:
  %t235 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t237 = load i64, ptr %l116, !tbaa !24
  %t238 = call i64 @__olang_fmt_i64(ptr null, i64 %t237)
  %t239 = add i64 %t236, %t238
  %t240 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t242 = add i64 %t239, %t241
  %t243 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t242)
  call void @olang_textcopy(ptr %t243, ptr %t235, i64 %t236)
  %t244 = getelementptr i8, ptr %t243, i64 %t236
  %t245 = call i64 @__olang_fmt_i64(ptr %t244, i64 %t237)
  %t246 = getelementptr i8, ptr %t244, i64 %t238
  call void @olang_textcopy(ptr %t246, ptr %t240, i64 %t241)
  %t247 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t243, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  %t257 = call i32 @std_2fio_2ePrintErr(ptr %s0, { i64, ptr } %t255)
  store i32 %t257, ptr %l119
  %t258 = icmp ne i32 %t257, 0
  br i1 %t258, label %bb57, label %ok.259, !prof !99
ok.259:
  br label %bb56
bb56:
  br label %bb61
bb57:
  %t260 = load i32, ptr %l119, !tbaa !23
  %t261 = ashr i32 %t260, 16
  %t263 = icmp eq i32 %t261, 1
  store i1 %t263, ptr %l121, !tbaa !21
  %t264 = load i32, ptr %l119, !tbaa !23
  %t265 = ashr i32 %t264, 16
  %t267 = icmp eq i32 %t265, 1
  br i1 %t267, label %bb58, label %bb59
bb58:
  call void @__olang_errpay_pop()
  br label %bb59
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2folang_2ecompiler_2folang_3aPasses_2eExplain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca ptr
  %lp11 = alloca ptr
  %l12 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca %"compiler/views:Kept"
  %l23 = alloca %"compiler/check:Checker"
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca i64
  %l44 = alloca ptr
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"compiler/scope:Scoper"
  %l51 = alloca %"compiler/scope:Scoper"
  %l63 = alloca i64
  %l71 = alloca %"compiler/interp:Exec"
  %l73 = alloca ptr
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l77 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l78 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca i32
  %l88 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca { i64, [3 x i64] }
  %l93 = alloca %"compiler/diagmsg:Msg"
  %l94 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t28 = alloca %"compiler/views:Kept", align 8
  %t30 = alloca %"compiler/check:Checker", align 8
  %t78 = alloca %"compiler/scope:Scoper", align 8
  %t81 = alloca %"compiler/scope:Scoper", align 8
  %t130 = alloca %"compiler/interp:Exec", align 8
  %t170 = alloca { i64, [3 x i64] }, align 8
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t9 = call { i32, ptr } @compiler_2folang_2ecompiler_2folang_3aPasses_2eload(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %v3, ptr %a0, { i64, ptr } %t2, ptr %a3, ptr %t4)
  %t10 = extractvalue { i32, ptr } %t9, 1
  %t11 = extractvalue { i32, ptr } %t9, 0
  store i32 %t11, ptr %l18
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store ptr %t10, ptr %l17
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l17, !tbaa !29
  store ptr %t14, ptr %l12, !tbaa !29
  br label %bb3
bb2:
  %t15 = load i32, ptr %l18, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t23, 0
  store { i32, { i64, ptr } } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load ptr, ptr %l12, !tbaa !29
  store ptr %t26, ptr %l5, !tbaa !29
  %t27 = load ptr, ptr %l5, !tbaa !29
  store ptr %t27, ptr %l20, !tbaa !29
  call void @compiler_2fviews_3aKept_2ector(ptr %t28, ptr %v3)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t28, i64 296, i1 false)
  br label %bb4
bb4:
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 296, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %l21, i64 296, i1 false)
  %t31 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2finterp_2eAnalyze(ptr %t30, ptr %v3, ptr %v3, ptr %v3, ptr %t31, i1 false, ptr %t29)
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %t30, i64 5248, i1 false)
  br label %bb5
bb5:
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 5248, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %l23, i64 5248, i1 false)
  store ptr %t33, ptr %l6, !tbaa !29
  %t35 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %l25
  br label %bb6
bb6:
  %t36 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  %t37 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, ptr %t37
  store ptr %t37, ptr %l7, !tbaa !29
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t39)
  store i64 %t41, ptr %l28
  br label %bb7
bb7:
  %t42 = load i64, ptr %l28, !tbaa !24
  %t43 = icmp eq i64 %t42, 0
  store i1 %t43, ptr %l8, !tbaa !21
  %t45 = load i1, ptr %l8, !tbaa !21
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t49 = call i64 @compiler_2finterp_2eDecideValues(ptr %v3, ptr %t47)
  store i64 %t49, ptr %l32
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t51 = load ptr, ptr %l7, !tbaa !29
  %t54 = call i64 @compiler_2finterp_2eDecideAsserts(ptr %v3, ptr %s0, ptr %t50, ptr %t51)
  store i64 %t54, ptr %l35
  br label %bb12
bb12:
  %t55 = load i1, ptr %l8, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t57 = load ptr, ptr %l6, !tbaa !29
  %t59 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2eBake(ptr %v3, ptr %s2, ptr %t57)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t59, ptr %l38
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t60)
  store i64 %t62, ptr %l40
  br label %bb17
bb17:
  %t63 = load i64, ptr %l40, !tbaa !24
  %t64 = icmp sgt i64 %t63, 0
  br i1 %t64, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t67 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t67, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l44, !tbaa !29
  %t72 = load ptr, ptr %l6, !tbaa !29
  %t74 = getelementptr %"compiler/check:Checker", ptr %t72, i32 0, i32 14
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l46
  %t77 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v3, ptr %l46)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %l48
  br label %bb21
bb21:
  %t79 = load ptr, ptr %l44, !tbaa !29
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  call void @compiler_2fscope_3aScoper_2ector(ptr %t78, ptr %v3, ptr %v3, ptr %v3, ptr %t79, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80)
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t78, i64 8968, i1 false)
  br label %bb22
bb22:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aScoper(ptr %t81, ptr %v3, ptr %l49)
  call void @llvm.memmove.p0.p0.i64(ptr %l51, ptr %t81, i64 8968, i1 false)
  br label %bb23
bb23:
  %t83 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 8968, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %l51, i64 8968, i1 false)
  store ptr %t83, ptr %l9, !tbaa !29
  %t85 = load ptr, ptr %l9, !tbaa !29
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t87 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t88 = ptrtoint ptr %t87 to i64
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 %t88, i64 8)
  %t90 = getelementptr { ptr, ptr }, ptr %t89, i32 0, i32 0
  store ptr %t86, ptr %t90, !tbaa !28
  call void @__olang_scope_escape(ptr %v3)
  %t92 = getelementptr { ptr, ptr }, ptr %t89, i32 0, i32 1
  store ptr %v3, ptr %t92, !tbaa !28
  %t93 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_95, 0
  %t94 = insertvalue { ptr, ptr } %t93, ptr %t89, 1
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 4
  store { ptr, ptr } %t94, ptr %t98
  %t99 = load ptr, ptr %l9, !tbaa !29
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t101 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t102 = ptrtoint ptr %t101 to i64
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 %t102, i64 8)
  %t104 = getelementptr { ptr, ptr }, ptr %t103, i32 0, i32 0
  store ptr %t100, ptr %t104, !tbaa !28
  call void @__olang_scope_escape(ptr %v3)
  %t106 = getelementptr { ptr, ptr }, ptr %t103, i32 0, i32 1
  store ptr %v3, ptr %t106, !tbaa !28
  %t107 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_96, 0
  %t108 = insertvalue { ptr, ptr } %t107, ptr %t103, 1
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t99, i32 0, i32 5
  store { ptr, ptr } %t108, ptr %t112
  %t113 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRun(ptr %v3, ptr %t113)
  br label %bb24
bb24:
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t115)
  store i64 %t117, ptr %l63
  br label %bb25
bb25:
  %t118 = load i64, ptr %l63, !tbaa !24
  %t119 = icmp sgt i64 %t118, 0
  br i1 %t119, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t122 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t122, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr %"compiler/check:Checker", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t127 = load ptr, ptr %l6, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 14
  call void @compiler_2finterp_3aExec_2ector(ptr %t130, ptr %v3, ptr %v3, ptr %v3, ptr %t126, ptr %t129, i32 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t130, i64 4976, i1 false)
  br label %bb29
bb29:
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %l71, i64 4976, i1 false)
  store ptr %t134, ptr %l10, !tbaa !29
  %t136 = load ptr, ptr %l10, !tbaa !29
  store ptr %t136, ptr %l73, !tbaa !29
  %t137 = load ptr, ptr %l6, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 140
  %t140 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t139
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %l75
  %t142 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v3, ptr %l75)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t142, ptr %l77
  br label %bb30
bb30:
  %t143 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77
  %t144 = load ptr, ptr %l73, !tbaa !29
  %t145 = getelementptr %"compiler/interp:Exec", ptr %t144, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t143, ptr %t145
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t147 = load ptr, ptr %l9, !tbaa !29
  %t148 = load ptr, ptr %l10, !tbaa !29
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = getelementptr %"compiler/load:Loader", ptr %t149, i32 0, i32 12
  %t152 = load i64, ptr %t151, !tbaa !24
  %t153 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t159 = call { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v3, ptr %v3, ptr %v3, ptr %v2, ptr %v5, ptr %t146, ptr %t147, ptr %t148, i64 %t152, { i64, ptr } %t153)
  %t160 = extractvalue { i32, { i64, ptr } } %t159, 1
  %t161 = extractvalue { i32, { i64, ptr } } %t159, 0
  store i32 %t161, ptr %l86
  %t162 = icmp ne i32 %t161, 0
  br i1 %t162, label %bb32, label %ok.163, !prof !99
ok.163:
  store { i64, ptr } %t160, ptr %l85
  br label %bb31
bb31:
  %t164 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t164, ptr %l78, !tbaa !27
  br label %bb36
bb32:
  %t165 = load i32, ptr %l86, !tbaa !23
  %t166 = ashr i32 %t165, 16
  %t168 = icmp eq i32 %t166, 1
  store i1 %t168, ptr %l88, !tbaa !21
  br label %bb33
bb33:
  %t169 = load ptr, ptr %l4, !tbaa !29
  store ptr %t169, ptr %l89, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [3 x i64] }, ptr %t170, i32 0, i32 0
  store i64 0, ptr %t171
  %t172 = load { i64, [3 x i64] }, ptr %t170
  store { i64, [3 x i64] } %t172, ptr %l90
  %t173 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t177 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNoItem(ptr %v2, ptr %v1, ptr %v4, { i64, ptr } %t173, { i64, ptr } %t174)
  store %"compiler/diagmsg:Msg" %t177, ptr %l93
  br label %bb34
bb34:
  %t178 = load ptr, ptr %l89, !tbaa !29
  %t179 = load { i64, [3 x i64] }, ptr %l90
  %t180 = load %"compiler/diagmsg:Msg", ptr %l93
  %t181 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v4, ptr %v4, ptr %t178, { i64, [3 x i64] } %t179, %"compiler/diagmsg:Msg" %t180)
  store i64 %t181, ptr %l94
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t183 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t183, ptr %rv
  br label %ret
bb36:
  %t184 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 16, i64 8)
  store ptr %t184, ptr %lp11
  %t185 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t186 = load ptr, ptr %lp11
  store { i64, ptr } %t185, ptr %t186, !tbaa !27
  %t187 = load ptr, ptr %lp11
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t190 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t188, 1
  store { i32, { i64, ptr } } %t190, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i32 } @compiler_2folang_2ecompiler_2folang_3aPasses_2eInterpret(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/check:Gap"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l37 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i1
  %l47 = alloca %"compiler/views:Kept"
  %l49 = alloca %"compiler/check:Checker"
  %l51 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l64 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l66 = alloca i64
  %l69 = alloca i1
  %l71 = alloca ptr
  %l76 = alloca ptr
  %l77 = alloca i32
  %l82 = alloca i64
  %l86 = alloca i64
  %l88 = alloca i64
  %l93 = alloca %"compiler/check:Gap"
  %l98 = alloca { i64, ptr }
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca i64
  %l110 = alloca i64
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l119 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca { i64, [3 x i64] }
  %l124 = alloca i1
  %l125 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l129 = alloca i64
  %l130 = alloca i64
  %l141 = alloca %"compiler/diagmsg:Msg"
  %l142 = alloca i64
  %l147 = alloca i64
  %l149 = alloca i64
  %l154 = alloca ptr
  %l157 = alloca i1
  %l161 = alloca { i64, ptr }
  %l163 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca { i64, [3 x i64] }
  %l170 = alloca %"compiler/diagmsg:Msg"
  %l171 = alloca i64
  %l175 = alloca i64
  %l183 = alloca %"compiler/interp:Exec"
  %l185 = alloca ptr
  %l187 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l189 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l193 = alloca ptr
  %l198 = alloca ptr
  %l199 = alloca i32
  %l202 = alloca i64
  %l205 = alloca ptr
  %l207 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l209 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l216 = alloca ptr
  %l218 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l220 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l226 = alloca ptr
  %l231 = alloca ptr
  %l234 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l255 = alloca i32
  %l258 = alloca i64
  %l260 = alloca i64
  %l265 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l288 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  %t34 = alloca %"compiler/views:Kept", align 8
  %t36 = alloca %"compiler/check:Checker", align 8
  %t215 = alloca { i64, [3 x i64] }, align 8
  %t329 = alloca { i64, [3 x i64] }, align 8
  %t363 = alloca %"compiler/interp:Exec", align 8
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 17
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l5, !tbaa !21
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t14 = call { i32, ptr } @compiler_2folang_2ecompiler_2folang_3aPasses_2eload(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %v3, ptr %a0, { i64, ptr } %t7, ptr %t8, ptr %t9)
  %t15 = extractvalue { i32, ptr } %t14, 1
  %t16 = extractvalue { i32, ptr } %t14, 0
  store i32 %t16, ptr %l43
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb2, label %ok.18, !prof !99
ok.18:
  store ptr %t15, ptr %l42
  br label %bb1
bb1:
  %t19 = load ptr, ptr %l42, !tbaa !29
  store ptr %t19, ptr %l37, !tbaa !29
  br label %bb3
bb2:
  %t20 = load i32, ptr %l43, !tbaa !23
  %t21 = lshr i32 %t20, 16
  %t22 = and i32 %t20, 65535
  %t23 = icmp eq i32 %t21, 1
  %t24 = select i1 %t23, i32 1, i32 0
  %t25 = icmp eq i32 %t20, 0
  %t26 = shl i32 %t24, 16
  %t27 = or i32 %t26, %t22
  %t28 = select i1 %t25, i32 0, i32 %t27
  call void @__olang_scope_close(ptr %s0)
  %t30 = insertvalue { i32, i32 } zeroinitializer, i32 %t28, 0
  store { i32, i32 } %t30, ptr %rv
  br label %ret
bb3:
  %t31 = load ptr, ptr %l37, !tbaa !29
  store ptr %t31, ptr %l6, !tbaa !29
  %t32 = load ptr, ptr %l6, !tbaa !29
  store ptr %t32, ptr %l45, !tbaa !29
  %t33 = load i1, ptr %l5, !tbaa !21
  store i1 %t33, ptr %l46, !tbaa !21
  call void @compiler_2fviews_3aKept_2ector(ptr %t34, ptr %v3)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t34, i64 296, i1 false)
  br label %bb4
bb4:
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 296, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t35, ptr %l47, i64 296, i1 false)
  %t37 = load ptr, ptr %l45, !tbaa !29
  %t38 = load i1, ptr %l46, !tbaa !21
  call void @compiler_2finterp_2eAnalyze(ptr %t36, ptr %v3, ptr %v3, ptr %v3, ptr %t37, i1 %t38, ptr %t35)
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t36, i64 5248, i1 false)
  br label %bb5
bb5:
  %t40 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 5248, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %l49, i64 5248, i1 false)
  store ptr %t40, ptr %l7, !tbaa !29
  %t42 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l51
  br label %bb6
bb6:
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l51
  %t44 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %t44
  store ptr %t44, ptr %l8, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t46)
  store i64 %t48, ptr %l54
  br label %bb7
bb7:
  %t49 = load i64, ptr %l54, !tbaa !24
  %t50 = icmp eq i64 %t49, 0
  store i1 %t50, ptr %l9, !tbaa !21
  %t52 = load i1, ptr %l9, !tbaa !21
  br i1 %t52, label %bb8, label %bb9
bb8:
  %t54 = load ptr, ptr %l7, !tbaa !29
  %t56 = call i64 @compiler_2finterp_2eDecideValues(ptr %v3, ptr %t54)
  store i64 %t56, ptr %l58
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t58 = load ptr, ptr %l8, !tbaa !29
  %t61 = call i64 @compiler_2finterp_2eDecideAsserts(ptr %v3, ptr %s0, ptr %t57, ptr %t58)
  store i64 %t61, ptr %l61
  br label %bb12
bb12:
  %t62 = load i1, ptr %l9, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load ptr, ptr %l7, !tbaa !29
  %t66 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2eBake(ptr %v3, ptr %s2, ptr %t64)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t66, ptr %l64
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t69 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t67)
  store i64 %t69, ptr %l66
  br label %bb17
bb17:
  %t70 = load i64, ptr %l66, !tbaa !24
  %t71 = icmp sgt i64 %t70, 0
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v4, ptr %t73)
  store i1 %t75, ptr %l69
  br label %bb20
bb19:
  br label %bb27
bb20:
  %t76 = load i1, ptr %l69, !tbaa !21
  %t77 = xor i1 %t76, true
  br i1 %t77, label %bb21, label %bb22
bb21:
  %t79 = load ptr, ptr %l7, !tbaa !29
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t81 = load ptr, ptr %l6, !tbaa !29
  %t83 = getelementptr %"compiler/load:Loader", ptr %t81, i32 0, i32 12
  %t84 = load i64, ptr %t83, !tbaa !24
  %t88 = call { i32, ptr } @compiler_2folang_2eplacement(ptr %v3, ptr %v3, ptr %v3, ptr %t79, ptr %t80, i64 %t84, i1 false)
  %t89 = extractvalue { i32, ptr } %t88, 1
  %t90 = extractvalue { i32, ptr } %t88, 0
  store i32 %t90, ptr %l77
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb24, label %ok.92, !prof !99
ok.92:
  store ptr %t89, ptr %l76
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t93 = load ptr, ptr %l76, !tbaa !29
  store ptr %t93, ptr %l71, !tbaa !29
  br label %bb25
bb24:
  %t94 = load i32, ptr %l77, !tbaa !23
  %t95 = lshr i32 %t94, 16
  %t96 = and i32 %t94, 65535
  %t97 = icmp eq i32 %t95, 1
  %t98 = select i1 %t97, i32 1, i32 0
  %t99 = icmp eq i32 %t94, 0
  %t100 = shl i32 %t98, 16
  %t101 = or i32 %t100, %t96
  %t102 = select i1 %t99, i32 0, i32 %t101
  call void @__olang_scope_close(ptr %s0)
  %t104 = insertvalue { i32, i32 } zeroinitializer, i32 %t102, 0
  store { i32, i32 } %t104, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t106 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t106, ptr %rv
  br label %ret
bb27:
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 15
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v3, ptr %t109)
  store i64 %t111, ptr %l82
  br label %bb28
bb28:
  %t112 = load i64, ptr %l82, !tbaa !24
  %t113 = icmp sgt i64 %t112, 0
  br i1 %t113, label %bb29, label %bb30
bb29:
  %t115 = load ptr, ptr %l7, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 15
  store ptr %t117, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb31
bb30:
  br label %bb41
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t119 = load i64, ptr %l11, !tbaa !24
  store i64 %t119, ptr %l86, !tbaa !24
  %t120 = load ptr, ptr %l10, !tbaa !29
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v3, ptr %t120)
  store i64 %t122, ptr %l88
  br label %bb32
bb32:
  %t123 = load i64, ptr %l86, !tbaa !24
  %t124 = load i64, ptr %l88, !tbaa !24
  %t125 = icmp slt i64 %t123, %t124
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb34:
  br label %bb35
bb35:
  %t129 = load ptr, ptr %l10, !tbaa !29
  %t130 = load i64, ptr %l11, !tbaa !24
  %t133 = call %"compiler/check:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eAt_3ccompiler_2fcheck_3aGap_3e(ptr %v3, ptr %v3, ptr %t129, i64 %t130)
  store %"compiler/check:Gap" %t133, ptr %l93
  br label %bb36
bb36:
  %t134 = load %"compiler/check:Gap", ptr %l93
  store %"compiler/check:Gap" %t134, ptr %l12
  %t135 = load ptr, ptr %l4, !tbaa !29
  %t136 = getelementptr %"compiler/check:Gap", ptr %l12, i32 0, i32 0
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = getelementptr %"compiler/check:Gap", ptr %l12, i32 0, i32 1
  %t139 = getelementptr %"compiler/source:Span", ptr %t138, i32 0, i32 0
  %t140 = load i32, ptr %t139, !tbaa !23
  %t142 = sext i32 %t140 to i64
  %t146 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v4, ptr %s7, ptr %t135, i64 %t137, i64 %t142)
  store { i64, ptr } %t146, ptr %l98
  br label %bb37
bb37:
  %t147 = getelementptr %"compiler/check:Gap", ptr %l12, i32 0, i32 2
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 1
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t152 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t153 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t154 = add i64 %t151, %t153
  %t156 = extractvalue { i64, ptr } %t148, 1
  %t157 = extractvalue { i64, ptr } %t148, 0
  %t158 = add i64 %t154, %t157
  %t159 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t150, i64 %t151)
  %t163 = getelementptr i8, ptr %t162, i64 %t151
  call void @olang_textcopy(ptr %t163, ptr %t152, i64 %t153)
  %t164 = getelementptr i8, ptr %t163, i64 %t153
  call void @olang_textcopy(ptr %t164, ptr %t156, i64 %t157)
  %t165 = getelementptr i8, ptr %t164, i64 %t157
  call void @olang_textcopy(ptr %t165, ptr %t159, i64 %t160)
  %t166 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t162, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } %t167, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  call void @compiler_2fbuild_2eUnbuildable(ptr %s7, { i64, ptr } %t174)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t176 = load i64, ptr %l11, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l11, !tbaa !24
  br label %bb31
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t181 = insertvalue { i32, i32 } zeroinitializer, i32 65537, 0
  store { i32, i32 } %t181, ptr %rv
  br label %ret
bb41:
  store %olang.scope zeroinitializer, ptr %s10
  %t182 = load ptr, ptr %l6, !tbaa !29
  %t184 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinks(ptr %v3, ptr %s10, ptr %t182)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l106
  br label %bb42
bb42:
  %t185 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  %t186 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %t186
  store ptr %t186, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s11
  %t188 = load i64, ptr %l14, !tbaa !24
  store i64 %t188, ptr %l108, !tbaa !24
  %t189 = load ptr, ptr %l13, !tbaa !29
  %t191 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s10, ptr %t189)
  store i64 %t191, ptr %l110
  br label %bb44
bb44:
  %t192 = load i64, ptr %l108, !tbaa !24
  %t193 = load i64, ptr %l110, !tbaa !24
  %t194 = icmp slt i64 %t192, %t193
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s11)
  br label %bb67
bb46:
  br label %bb47
bb47:
  %t198 = load ptr, ptr %l13, !tbaa !29
  %t199 = load i64, ptr %l14, !tbaa !24
  %t202 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s10, ptr %s10, ptr %t198, i64 %t199)
  store { i64, ptr } %t202, ptr %l115
  br label %bb48
bb48:
  %t203 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t203, ptr %l15, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t206 = call { i64, ptr } @compiler_2finterp_2eLoadLibrary(ptr %s10, ptr %s11, { i64, ptr } %t204)
  store { i64, ptr } %t206, ptr %l117
  br label %bb49
bb49:
  %t207 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t207, ptr %l16, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t210 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s11, ptr %s11, { i64, ptr } %t208, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t210, ptr %l119
  br label %bb50
bb50:
  %t211 = load i1, ptr %l119, !tbaa !21
  %t212 = xor i1 %t211, true
  br i1 %t212, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s12
  %t214 = load ptr, ptr %l4, !tbaa !29
  store ptr %t214, ptr %l121, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t215
  %t216 = getelementptr { i64, [3 x i64] }, ptr %t215, i32 0, i32 0
  store i64 0, ptr %t216
  %t217 = load { i64, [3 x i64] }, ptr %t215
  store { i64, [3 x i64] } %t217, ptr %l122
  %t218 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s10, ptr %s12, { i64, ptr } %t218, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t220, ptr %l124
  br label %bb53
bb52:
  br label %bb65
bb53:
  %t221 = load i1, ptr %l124, !tbaa !21
  br i1 %t221, label %bb54, label %bb55
bb54:
  %t222 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t222, ptr %l126, !tbaa !27
  %t223 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t223, 0
  store i64 %t226, ptr %l129, !tbaa !24
  %t227 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t227, 0
  store i64 %t228, ptr %l130, !tbaa !24
  %t229 = icmp sge i64 2, 0
  br i1 %t229, label %bb56, label %bb57
bb55:
  %t231 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t231, 1
  %t234 = extractvalue { i64, ptr } %t231, 0
  %t235 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t234)
  call void @olang_textcopy(ptr %t235, ptr %t233, i64 %t234)
  %t236 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t240 = extractvalue { i64, ptr } %t237, 1
  %t241 = mul i64 %t239, 1
  %t242 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t241)
  call void @llvm.memcpy.p0.p0.i64(ptr %t242, ptr %t240, i64 %t241, i1 false)
  %t243 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  store { i64, ptr } %t244, ptr %l125, !tbaa !27
  br label %bb62
bb56:
  %t246 = load i64, ptr %l129, !tbaa !24
  %t247 = icmp sle i64 2, %t246
  br i1 %t247, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_436dc8a09a076c49_2aa9a29c41caf045)
  unreachable
bb58:
  %t249 = load i64, ptr %l129, !tbaa !24
  %t250 = load i64, ptr %l130, !tbaa !24
  %t251 = icmp sle i64 %t249, %t250
  br i1 %t251, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_436dc8a09a076c49_2aa9a29c41caf045)
  unreachable
bb60:
  %t253 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = load i64, ptr %l129, !tbaa !24
  %t256 = getelementptr i8, ptr %t254, i64 2
  %t257 = sub i64 %t255, 2
  %t258 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t256, 1
  %t261 = extractvalue { i64, ptr } %t259, 1
  %t262 = extractvalue { i64, ptr } %t259, 0
  %t263 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t262)
  call void @olang_textcopy(ptr %t263, ptr %t261, i64 %t262)
  %t264 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = extractvalue { i64, ptr } %t265, 1
  %t269 = mul i64 %t267, 1
  %t270 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t269)
  call void @llvm.memcpy.p0.p0.i64(ptr %t270, ptr %t268, i64 %t269, i1 false)
  %t271 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t272 = insertvalue { i64, ptr } %t271, ptr %t270, 1
  store { i64, ptr } %t272, ptr %l125, !tbaa !27
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_436dc8a09a076c49_2aa9a29c41caf045)
  unreachable
bb62:
  %t274 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t277 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpLink(ptr %v4, ptr %s11, ptr %v4, { i64, ptr } %t275, { i64, ptr } %t274)
  store %"compiler/diagmsg:Msg" %t277, ptr %l141
  br label %bb63
bb63:
  %t278 = load ptr, ptr %l121, !tbaa !29
  %t279 = load { i64, [3 x i64] }, ptr %l122
  %t280 = load %"compiler/diagmsg:Msg", ptr %l141
  %t281 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v4, ptr %v4, ptr %t278, { i64, [3 x i64] } %t279, %"compiler/diagmsg:Msg" %t280)
  store i64 %t281, ptr %l142
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s11)
  br label %bb66
bb66:
  %t282 = load i64, ptr %l14, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l14, !tbaa !24
  br label %bb43
bb67:
  call void @__olang_scope_close(ptr %s10)
  %t286 = load ptr, ptr %l6, !tbaa !29
  %t288 = getelementptr %"compiler/load:Loader", ptr %t286, i32 0, i32 10
  store ptr %t288, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb68
bb68:
  store %olang.scope zeroinitializer, ptr %s17
  %t290 = load i64, ptr %l18, !tbaa !24
  store i64 %t290, ptr %l147, !tbaa !24
  %t291 = load ptr, ptr %l17, !tbaa !29
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v3, ptr %t291)
  store i64 %t293, ptr %l149
  br label %bb69
bb69:
  %t294 = load i64, ptr %l147, !tbaa !24
  %t295 = load i64, ptr %l149, !tbaa !24
  %t296 = icmp slt i64 %t294, %t295
  %t298 = xor i1 %t296, true
  br i1 %t298, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s17)
  br label %bb86
bb71:
  br label %bb72
bb72:
  %t300 = load ptr, ptr %l17, !tbaa !29
  %t301 = load i64, ptr %l18, !tbaa !24
  %t304 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v3, ptr %v3, ptr %t300, i64 %t301)
  store ptr %t304, ptr %l154
  br label %bb73
bb73:
  %t305 = load ptr, ptr %l154, !tbaa !29
  store ptr %t305, ptr %l19, !tbaa !29
  %t306 = load ptr, ptr %l19, !tbaa !29
  %t308 = getelementptr %"compiler/load:Module", ptr %t306, i32 0, i32 31
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  %t311 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s17, { i64, ptr } %t309, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) })
  store i1 %t311, ptr %l157
  br label %bb74
bb74:
  %t312 = load i1, ptr %l157, !tbaa !21
  br i1 %t312, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s17)
  br label %bb85
bb76:
  br label %bb77
bb77:
  %t313 = load ptr, ptr %l19, !tbaa !29
  %t315 = getelementptr %"compiler/load:Module", ptr %t313, i32 0, i32 31
  %t316 = load { i64, ptr }, ptr %t315, !tbaa !27
  %t317 = load ptr, ptr %l3, !tbaa !29
  %t320 = call { i64, ptr } @compiler_2folang_2ecLibrary(ptr %v3, ptr %v3, ptr %s17, { i64, ptr } %t316, ptr %t317)
  store { i64, ptr } %t320, ptr %l161
  br label %bb78
bb78:
  %t321 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t321, ptr %l20, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t324 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s17, ptr %s17, { i64, ptr } %t322, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) })
  store i1 %t324, ptr %l163
  br label %bb79
bb79:
  %t325 = load i1, ptr %l163, !tbaa !21
  %t326 = xor i1 %t325, true
  br i1 %t326, label %bb80, label %bb81
bb80:
  %t328 = load ptr, ptr %l4, !tbaa !29
  store ptr %t328, ptr %l165, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [3 x i64] }, ptr %t329, i32 0, i32 0
  store i64 0, ptr %t330
  %t331 = load { i64, [3 x i64] }, ptr %t329
  store { i64, [3 x i64] } %t331, ptr %l166
  %t332 = load ptr, ptr %l19, !tbaa !29
  %t334 = getelementptr %"compiler/load:Module", ptr %t332, i32 0, i32 31
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  %t336 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t339 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpLink(ptr %v3, ptr %s17, ptr %v4, { i64, ptr } %t335, { i64, ptr } %t336)
  store %"compiler/diagmsg:Msg" %t339, ptr %l170
  br label %bb82
bb81:
  br label %bb84
bb82:
  %t340 = load ptr, ptr %l165, !tbaa !29
  %t341 = load { i64, [3 x i64] }, ptr %l166
  %t342 = load %"compiler/diagmsg:Msg", ptr %l170
  %t343 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v4, ptr %v4, ptr %t340, { i64, [3 x i64] } %t341, %"compiler/diagmsg:Msg" %t342)
  store i64 %t343, ptr %l171
  br label %bb83
bb83:
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s17)
  br label %bb85
bb85:
  %t344 = load i64, ptr %l18, !tbaa !24
  %t346 = add i64 %t344, 1
  store i64 %t346, ptr %l18, !tbaa !24
  br label %bb68
bb86:
  %t348 = load ptr, ptr %l4, !tbaa !29
  %t350 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t348)
  store i64 %t350, ptr %l175
  br label %bb87
bb87:
  %t351 = load i64, ptr %l175, !tbaa !24
  %t352 = icmp sgt i64 %t351, 0
  br i1 %t352, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s0)
  %t355 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t355, ptr %rv
  br label %ret
bb89:
  br label %bb90
bb90:
  %t356 = load ptr, ptr %l7, !tbaa !29
  %t358 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t360 = load ptr, ptr %l7, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 14
  call void @compiler_2finterp_3aExec_2ector(ptr %t363, ptr %v3, ptr %v3, ptr %v3, ptr %t359, ptr %t362, i32 1)
  call void @llvm.memmove.p0.p0.i64(ptr %l183, ptr %t363, i64 4976, i1 false)
  br label %bb91
bb91:
  %t367 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 4976, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t367, ptr %l183, i64 4976, i1 false)
  store ptr %t367, ptr %l21, !tbaa !29
  %t369 = load ptr, ptr %l21, !tbaa !29
  store ptr %t369, ptr %l185, !tbaa !29
  %t370 = load ptr, ptr %l8, !tbaa !29
  %t372 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t370
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t372, ptr %l187
  %t374 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v3, ptr %l187)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t374, ptr %l189
  br label %bb92
bb92:
  %t375 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l189
  %t376 = load ptr, ptr %l185, !tbaa !29
  %t377 = getelementptr %"compiler/interp:Exec", ptr %t376, i32 0, i32 3
  %t378 = getelementptr %"compiler/lower:Lowerer", ptr %t377, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t375, ptr %t378
  %t379 = load ptr, ptr %l21, !tbaa !29
  %t380 = load i1, ptr %l5, !tbaa !21
  %t383 = getelementptr %"compiler/interp:Exec", ptr %t379, i32 0, i32 3
  %t384 = getelementptr %"compiler/lower:Lowerer", ptr %t383, i32 0, i32 9
  store i1 %t380, ptr %t384, !tbaa !21
  %t385 = load ptr, ptr %l21, !tbaa !29
  %t387 = getelementptr %"compiler/interp:Exec", ptr %t385, i32 0, i32 3
  %t388 = getelementptr %"compiler/lower:Lowerer", ptr %t387, i32 0, i32 8
  store i1 true, ptr %t388, !tbaa !21
  %t389 = load ptr, ptr %l7, !tbaa !29
  %t390 = load ptr, ptr %l3, !tbaa !29
  %t391 = load ptr, ptr %l6, !tbaa !29
  %t393 = getelementptr %"compiler/load:Loader", ptr %t391, i32 0, i32 12
  %t394 = load i64, ptr %t393, !tbaa !24
  %t398 = call { i32, ptr } @compiler_2folang_2eplacement(ptr %v3, ptr %v3, ptr %v3, ptr %t389, ptr %t390, i64 %t394, i1 false)
  %t399 = extractvalue { i32, ptr } %t398, 1
  %t400 = extractvalue { i32, ptr } %t398, 0
  store i32 %t400, ptr %l199
  %t401 = icmp ne i32 %t400, 0
  br i1 %t401, label %bb94, label %ok.402, !prof !99
ok.402:
  store ptr %t399, ptr %l198
  br label %bb93
bb93:
  %t403 = load ptr, ptr %l198, !tbaa !29
  store ptr %t403, ptr %l193, !tbaa !29
  br label %bb95
bb94:
  %t404 = load i32, ptr %l199, !tbaa !23
  %t405 = lshr i32 %t404, 16
  %t406 = and i32 %t404, 65535
  %t407 = icmp eq i32 %t405, 1
  %t408 = select i1 %t407, i32 1, i32 0
  %t409 = icmp eq i32 %t404, 0
  %t410 = shl i32 %t408, 16
  %t411 = or i32 %t410, %t406
  %t412 = select i1 %t409, i32 0, i32 %t411
  call void @__olang_scope_close(ptr %s0)
  %t414 = insertvalue { i32, i32 } zeroinitializer, i32 %t412, 0
  store { i32, i32 } %t414, ptr %rv
  br label %ret
bb95:
  %t415 = load ptr, ptr %l193, !tbaa !29
  store ptr %t415, ptr %l22, !tbaa !29
  %t416 = load ptr, ptr %l4, !tbaa !29
  %t418 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t416)
  store i64 %t418, ptr %l202
  br label %bb96
bb96:
  %t419 = load i64, ptr %l202, !tbaa !24
  %t420 = icmp sgt i64 %t419, 0
  br i1 %t420, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s0)
  %t423 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t423, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  %t424 = load ptr, ptr %l21, !tbaa !29
  store ptr %t424, ptr %l205, !tbaa !29
  %t425 = load ptr, ptr %l22, !tbaa !29
  %t427 = getelementptr %"compiler/free:Free", ptr %t425, i32 0, i32 3
  %t428 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t427
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t428, ptr %l207
  %t430 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v3, ptr %l207)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t430, ptr %l209
  br label %bb100
bb100:
  %t431 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l209
  %t432 = load ptr, ptr %l205, !tbaa !29
  %t433 = getelementptr %"compiler/interp:Exec", ptr %t432, i32 0, i32 3
  %t434 = getelementptr %"compiler/lower:Lowerer", ptr %t433, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t431, ptr %t434
  %t435 = load ptr, ptr %l21, !tbaa !29
  %t437 = getelementptr %"compiler/interp:Exec", ptr %t435, i32 0, i32 3
  %t438 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2folang_2etwinsTo(ptr %v3, ptr %v3, ptr %t437, ptr %t438)
  br label %bb101
bb101:
  %t441 = load ptr, ptr %l21, !tbaa !29
  %t442 = load ptr, ptr %l22, !tbaa !29
  %t446 = getelementptr %"compiler/interp:Exec", ptr %t441, i32 0, i32 3
  %t447 = getelementptr %"compiler/lower:Lowerer", ptr %t446, i32 0, i32 5
  store ptr %t442, ptr %t447, !tbaa !29
  %t448 = load ptr, ptr %l21, !tbaa !29
  store ptr %t448, ptr %l216, !tbaa !29
  %t449 = load ptr, ptr %l22, !tbaa !29
  %t451 = getelementptr %"compiler/free:Free", ptr %t449, i32 0, i32 53
  %t452 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t451
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t452, ptr %l218
  %t454 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v3, ptr %l218)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t454, ptr %l220
  br label %bb102
bb102:
  %t455 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l220
  %t456 = load ptr, ptr %l216, !tbaa !29
  %t457 = getelementptr %"compiler/interp:Exec", ptr %t456, i32 0, i32 4
  %t458 = getelementptr %"compiler/eval:Machine", ptr %t457, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t455, ptr %t458
  %t459 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eInterpCrash, !tbaa !27
  %t460 = load ptr, ptr @__olang_prog_scope
  call void @std_2fos_2eOnCrash(ptr %t460, { i64, ptr } %t459)
  br label %bb103
bb103:
  store i32 0, ptr %l23, !tbaa !23
  %t462 = load i1, ptr %l5, !tbaa !21
  br i1 %t462, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s23
  %t464 = load ptr, ptr %l3, !tbaa !29
  %t465 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eTestHeader(ptr %v3, ptr %v1, ptr %t464, { i64, ptr } %t465)
  br label %bb106
bb105:
  %t468 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t468, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t470 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t472 = extractvalue { i64, ptr } %t470, 0
  store i64 %t472, ptr %l33, !tbaa !24
  br label %bb127
bb106:
  %t474 = load ptr, ptr %l21, !tbaa !29
  %t476 = getelementptr %"compiler/interp:Exec", ptr %t474, i32 0, i32 4
  %t477 = getelementptr %"compiler/eval:Machine", ptr %t476, i32 0, i32 79
  store ptr %t477, ptr %l226, !tbaa !29
  %t478 = load ptr, ptr %l6, !tbaa !29
  %t480 = getelementptr %"compiler/load:Loader", ptr %t478, i32 0, i32 10
  %t481 = load ptr, ptr %l6, !tbaa !29
  %t483 = getelementptr %"compiler/load:Loader", ptr %t481, i32 0, i32 12
  %t484 = load i64, ptr %t483, !tbaa !24
  %t487 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v3, ptr %v3, ptr %t480, i64 %t484)
  store ptr %t487, ptr %l231
  br label %bb107
bb107:
  %t488 = load ptr, ptr %l231, !tbaa !29
  %t490 = getelementptr %"compiler/load:Module", ptr %t488, i32 0, i32 2
  %t491 = load { i64, ptr }, ptr %t490, !tbaa !27
  %t493 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v3, ptr %s23, { i64, ptr } %t491)
  store { i64, ptr } %t493, ptr %l234
  br label %bb108
bb108:
  %t494 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t495 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t496 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 1
  %t498 = extractvalue { i64, ptr } %t496, 0
  %t499 = add i64 %t495, %t498
  %t500 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t501 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t502 = add i64 %t499, %t501
  %t503 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t502)
  call void @olang_textcopy(ptr %t503, ptr %t494, i64 %t495)
  %t504 = getelementptr i8, ptr %t503, i64 %t495
  call void @olang_textcopy(ptr %t504, ptr %t497, i64 %t498)
  %t505 = getelementptr i8, ptr %t504, i64 %t498
  call void @olang_textcopy(ptr %t505, ptr %t500, i64 %t501)
  %t506 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr %t503, 1
  %t509 = extractvalue { i64, ptr } %t507, 0
  %t510 = extractvalue { i64, ptr } %t507, 1
  %t511 = mul i64 %t509, 1
  %t512 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t511)
  call void @llvm.memcpy.p0.p0.i64(ptr %t512, ptr %t510, i64 %t511, i1 false)
  %t513 = insertvalue { i64, ptr } undef, i64 %t509, 0
  %t514 = insertvalue { i64, ptr } %t513, ptr %t512, 1
  %t515 = load ptr, ptr %l226, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t515, { i64, ptr } %t514)
  br label %bb109
bb109:
  %t517 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t517, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t519 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t519, 0
  store i64 %t521, ptr %l26, !tbaa !24
  br label %bb110
bb110:
  %t523 = load i64, ptr %l25, !tbaa !24
  %t524 = load i64, ptr %l26, !tbaa !24
  %t527 = icmp slt i64 %t523, %t524
  %t529 = xor i1 %t527, true
  br i1 %t529, label %bb111, label %bb112
bb111:
  br label %bb116
bb112:
  br label %bb113
bb113:
  %t531 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t531, ptr %l244, !tbaa !27
  %t532 = load i64, ptr %l25, !tbaa !24
  %t534 = getelementptr { i64, ptr }, ptr %l244, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !27
  %t536 = getelementptr { i64, ptr }, ptr %t535, i64 %t532
  %t537 = load { i64, ptr }, ptr %t536, !tbaa !37
  %t539 = load ptr, ptr %l21, !tbaa !29
  %t541 = getelementptr %"compiler/interp:Exec", ptr %t539, i32 0, i32 4
  %t542 = getelementptr %"compiler/eval:Machine", ptr %t541, i32 0, i32 79
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v2, ptr %t542, { i64, ptr } %t537)
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t546 = load i64, ptr %l25, !tbaa !24
  %t548 = add i64 %t546, 1
  store i64 %t548, ptr %l25, !tbaa !24
  br label %bb110
bb116:
  %t550 = load ptr, ptr %l21, !tbaa !29
  %t551 = load ptr, ptr %l4, !tbaa !29
  %t552 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t556 = call i32 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eRunTests(ptr %v3, ptr %v4, ptr %v2, ptr %t550, ptr %t551, { i64, ptr } %t552)
  store i32 %t556, ptr %l255
  br label %bb117
bb117:
  %t557 = load i32, ptr %l255, !tbaa !23
  store i32 %t557, ptr %l23, !tbaa !23
  %t558 = load ptr, ptr %l21, !tbaa !29
  %t560 = getelementptr %"compiler/interp:Exec", ptr %t558, i32 0, i32 12
  store ptr %t560, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb118
bb118:
  %t562 = load i64, ptr %l29, !tbaa !24
  store i64 %t562, ptr %l258, !tbaa !24
  %t563 = load ptr, ptr %l28, !tbaa !29
  %t565 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t563)
  store i64 %t565, ptr %l260
  br label %bb119
bb119:
  %t566 = load i64, ptr %l258, !tbaa !24
  %t567 = load i64, ptr %l260, !tbaa !24
  %t568 = icmp slt i64 %t566, %t567
  %t570 = xor i1 %t568, true
  br i1 %t570, label %bb120, label %bb121
bb120:
  br label %bb126
bb121:
  br label %bb122
bb122:
  %t572 = load ptr, ptr %l28, !tbaa !29
  %t573 = load i64, ptr %l29, !tbaa !24
  %t576 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t572, i64 %t573)
  store { i64, ptr } %t576, ptr %l265
  br label %bb123
bb123:
  %t577 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t578 = load ptr, ptr %l3, !tbaa !29
  %t580 = getelementptr %"compiler/build:Config", ptr %t578, i32 0, i32 19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t580, { i64, ptr } %t577)
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t584 = load i64, ptr %l29, !tbaa !24
  %t586 = add i64 %t584, 1
  store i64 %t586, ptr %l29, !tbaa !24
  br label %bb118
bb126:
  call void @__olang_scope_close(ptr %s23)
  br label %bb135
bb127:
  %t588 = load i64, ptr %l32, !tbaa !24
  %t589 = load i64, ptr %l33, !tbaa !24
  %t592 = icmp slt i64 %t588, %t589
  %t594 = xor i1 %t592, true
  br i1 %t594, label %bb128, label %bb129
bb128:
  br label %bb133
bb129:
  br label %bb130
bb130:
  %t596 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t596, ptr %l278, !tbaa !27
  %t597 = load i64, ptr %l32, !tbaa !24
  %t599 = getelementptr { i64, ptr }, ptr %l278, i32 0, i32 1
  %t600 = load ptr, ptr %t599, !tbaa !27
  %t601 = getelementptr { i64, ptr }, ptr %t600, i64 %t597
  %t602 = load { i64, ptr }, ptr %t601, !tbaa !37
  %t604 = load ptr, ptr %l21, !tbaa !29
  %t606 = getelementptr %"compiler/interp:Exec", ptr %t604, i32 0, i32 4
  %t607 = getelementptr %"compiler/eval:Machine", ptr %t606, i32 0, i32 79
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v2, ptr %t607, { i64, ptr } %t602)
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t611 = load i64, ptr %l32, !tbaa !24
  %t613 = add i64 %t611, 1
  store i64 %t613, ptr %l32, !tbaa !24
  br label %bb127
bb133:
  %t615 = load ptr, ptr %l21, !tbaa !29
  %t616 = load ptr, ptr %l4, !tbaa !29
  %t619 = call i32 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eRunMain(ptr %v3, ptr %v4, ptr %t615, ptr %t616)
  store i32 %t619, ptr %l288
  br label %bb134
bb134:
  %t620 = load i32, ptr %l288, !tbaa !23
  store i32 %t620, ptr %l23, !tbaa !23
  br label %bb135
bb135:
  %t621 = load i32, ptr %l23, !tbaa !23
  %t623 = icmp eq i32 %t621, 134
  br i1 %t623, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s35
  call void @std_2fos_2eOnCrash(ptr %s35, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d105, i32 0, i32 1) })
  br label %bb138
bb137:
  br label %bb140
bb138:
  call void @abort()
  unreachable
bb139:
  call void @__olang_check_failed(ptr @olang_loc_d9ce39c2cb08642b_edb226294df0b2a7)
  unreachable
bb140:
  %t625 = load i32, ptr %l23, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t627 = insertvalue { i32, i32 } zeroinitializer, i32 %t625, 1
  store { i32, i32 } %t627, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @compiler_2folang_2edrive(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"compiler/olang:Passes"
  %l2 = alloca %"compiler/olang:Passes"
  %l5 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/olang:Passes" @compiler_2folang_3aPasses_2ector(ptr %s0)
  store %"compiler/olang:Passes" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"compiler/olang:Passes", ptr %l2
  store %"compiler/olang:Passes" %t2, ptr %l1
  %t6 = call i32 @compiler_2folang_2eRunWith_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %s0, { i64, ptr } %a0, ptr %l1)
  store i32 %t6, ptr %l5
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t7 = load i32, ptr %l5, !tbaa !23
  store i32 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2folang_2eemitter(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i32 %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca i1
  %l7 = alloca ptr
  %l17 = alloca %"compiler/emit:Emitter"
  %l21 = alloca ptr
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l66 = alloca i1
  %l69 = alloca ptr
  %l72 = alloca i1
  %l79 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t18 = alloca %"compiler/emit:Emitter", align 8
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t3 = trunc i64 2 to i32
  %t4 = icmp eq i32 %t1, %t3
  store i1 %t4, ptr %l6, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  call void @compiler_2femit_3aEmitter_2ector(ptr %t18, ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %v5, ptr %t9, ptr %a1, ptr %a2, ptr %t17)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t18, i64 2376, i1 false)
  br label %bb1
bb1:
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 2376, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %l17, i64 2376, i1 false)
  store ptr %t23, ptr %l7, !tbaa !29
  %t25 = load ptr, ptr %l7, !tbaa !29
  %t26 = load i1, ptr %l6, !tbaa !21
  %t29 = getelementptr %"compiler/emit:Emitter", ptr %t25, i32 0, i32 4
  store i1 %t26, ptr %t29, !tbaa !21
  %t30 = load ptr, ptr %l7, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  %t33 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t33, ptr %l23
  %t35 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v5, ptr %l23)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %l25
  br label %bb2
bb2:
  %t36 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t38 = getelementptr %"compiler/emit:Emitter", ptr %t37, i32 0, i32 47
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, ptr %t38
  %t39 = load ptr, ptr %l7, !tbaa !29
  store ptr %t39, ptr %l26, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/build:Config", ptr %t40, i32 0, i32 6
  %t43 = load i1, ptr %t42, !tbaa !21
  br i1 %t43, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb5
bb5:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eFnAttrs(ptr %v3, ptr %s0, ptr %t45)
  store { i64, ptr } %t47, ptr %l31
  br label %bb6
bb6:
  %t48 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = add i64 %t50, %t53
  %t55 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t54)
  call void @olang_textcopy(ptr %t55, ptr %t49, i64 %t50)
  %t56 = getelementptr i8, ptr %t55, i64 %t50
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t53)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } %t58, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"compiler/emit:Emitter", ptr %t67, i32 0, i32 11
  store { i64, ptr } %t65, ptr %t68, !tbaa !27
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t70 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t72 = trunc i64 0 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t76 = getelementptr %"compiler/emit:Emitter", ptr %t69, i32 0, i32 41
  store i1 %t73, ptr %t76, !tbaa !21
  %t77 = load ptr, ptr %l7, !tbaa !29
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t80 = getelementptr %"compiler/build:Config", ptr %t78, i32 0, i32 2
  %t81 = getelementptr %"compiler/target:Target", ptr %t80, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t85 = getelementptr %"compiler/emit:Emitter", ptr %t77, i32 0, i32 24
  store { i64, ptr } %t82, ptr %t85, !tbaa !27
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t87 = load ptr, ptr %l3, !tbaa !29
  %t89 = getelementptr %"compiler/build:Config", ptr %t87, i32 0, i32 2
  %t90 = getelementptr %"compiler/target:Target", ptr %t89, i32 0, i32 2
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t94 = getelementptr %"compiler/emit:Emitter", ptr %t86, i32 0, i32 48
  store { i64, ptr } %t91, ptr %t94, !tbaa !27
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/build:Config", ptr %t96, i32 0, i32 7
  %t99 = load i1, ptr %t98, !tbaa !21
  %t102 = getelementptr %"compiler/emit:Emitter", ptr %t95, i32 0, i32 49
  store i1 %t99, ptr %t102, !tbaa !21
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t104 = load ptr, ptr %l3, !tbaa !29
  %t106 = getelementptr %"compiler/build:Config", ptr %t104, i32 0, i32 4
  %t107 = load i1, ptr %t106, !tbaa !21
  %t110 = getelementptr %"compiler/emit:Emitter", ptr %t103, i32 0, i32 5
  store i1 %t107, ptr %t110, !tbaa !21
  %t111 = load ptr, ptr %l7, !tbaa !29
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t114 = getelementptr %"compiler/build:Config", ptr %t112, i32 0, i32 12
  %t115 = load i1, ptr %t114, !tbaa !21
  %t118 = getelementptr %"compiler/emit:Emitter", ptr %t111, i32 0, i32 6
  store i1 %t115, ptr %t118, !tbaa !21
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t122 = getelementptr %"compiler/build:Config", ptr %t120, i32 0, i32 13
  %t123 = load i1, ptr %t122, !tbaa !21
  %t126 = getelementptr %"compiler/emit:Emitter", ptr %t119, i32 0, i32 8
  store i1 %t123, ptr %t126, !tbaa !21
  %t127 = load ptr, ptr %l7, !tbaa !29
  store ptr %t127, ptr %l55, !tbaa !29
  %t128 = load ptr, ptr %l3, !tbaa !29
  %t130 = getelementptr %"compiler/build:Config", ptr %t128, i32 0, i32 12
  %t131 = load i1, ptr %t130, !tbaa !21
  br i1 %t131, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb9
bb8:
  %t133 = load ptr, ptr %l3, !tbaa !29
  %t135 = getelementptr %"compiler/build:Config", ptr %t133, i32 0, i32 14
  %t136 = load i1, ptr %t135, !tbaa !21
  store i1 %t136, ptr %l58, !tbaa !21
  br label %bb9
bb9:
  %t138 = load i1, ptr %l58, !tbaa !21
  %t139 = load ptr, ptr %l55, !tbaa !29
  %t140 = getelementptr %"compiler/emit:Emitter", ptr %t139, i32 0, i32 7
  store i1 %t138, ptr %t140, !tbaa !21
  %t141 = load ptr, ptr %l7, !tbaa !29
  %t142 = load i1, ptr %l6, !tbaa !21
  %t145 = getelementptr %"compiler/emit:Emitter", ptr %t141, i32 0, i32 10
  store i1 %t142, ptr %t145, !tbaa !21
  %t146 = load ptr, ptr %l7, !tbaa !29
  store ptr %t146, ptr %l63, !tbaa !29
  %t147 = load ptr, ptr %l3, !tbaa !29
  %t149 = getelementptr %"compiler/build:Config", ptr %t147, i32 0, i32 4
  %t150 = load i1, ptr %t149, !tbaa !21
  br i1 %t150, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb12
bb11:
  %t152 = load ptr, ptr %l3, !tbaa !29
  %t154 = getelementptr %"compiler/build:Config", ptr %t152, i32 0, i32 6
  %t155 = load i1, ptr %t154, !tbaa !21
  store i1 %t155, ptr %l66, !tbaa !21
  br label %bb12
bb12:
  %t157 = load i1, ptr %l66, !tbaa !21
  %t158 = load ptr, ptr %l63, !tbaa !29
  %t159 = getelementptr %"compiler/emit:Emitter", ptr %t158, i32 0, i32 56
  store i1 %t157, ptr %t159, !tbaa !21
  %t160 = load ptr, ptr %l7, !tbaa !29
  store ptr %t160, ptr %l69, !tbaa !29
  %t161 = load ptr, ptr %l3, !tbaa !29
  %t163 = getelementptr %"compiler/build:Config", ptr %t161, i32 0, i32 9
  %t164 = load i1, ptr %t163, !tbaa !21
  br i1 %t164, label %bb13, label %bb14
bb13:
  %t166 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t168 = trunc i64 1 to i32
  %t169 = icmp eq i32 %t166, %t168
  store i1 %t169, ptr %l72, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb15
bb15:
  %t171 = load i1, ptr %l72, !tbaa !21
  %t172 = load ptr, ptr %l69, !tbaa !29
  %t173 = getelementptr %"compiler/emit:Emitter", ptr %t172, i32 0, i32 9
  store i1 %t171, ptr %t173, !tbaa !21
  %t174 = load ptr, ptr %l7, !tbaa !29
  %t175 = load i64, ptr @G_2ecompiler_2fbuild_2eThinFrom, !tbaa !24
  %t178 = getelementptr %"compiler/emit:Emitter", ptr %t174, i32 0, i32 42
  store i64 %t175, ptr %t178, !tbaa !24
  %t179 = load ptr, ptr %l3, !tbaa !29
  %t181 = getelementptr %"compiler/build:Config", ptr %t179, i32 0, i32 5
  %t182 = load i1, ptr %t181, !tbaa !21
  br i1 %t182, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb18
bb17:
  %t184 = load ptr, ptr %l3, !tbaa !29
  %t186 = getelementptr %"compiler/build:Config", ptr %t184, i32 0, i32 4
  %t187 = load i1, ptr %t186, !tbaa !21
  store i1 %t187, ptr %l79, !tbaa !21
  br label %bb18
bb18:
  %t189 = load i1, ptr %l79, !tbaa !21
  br i1 %t189, label %bb19, label %bb20
bb19:
  %t190 = load ptr, ptr %l7, !tbaa !29
  %t191 = load i64, ptr @G_2ecompiler_2femit_2ePartSizeDev, !tbaa !24
  %t194 = getelementptr %"compiler/emit:Emitter", ptr %t190, i32 0, i32 43
  store i64 %t191, ptr %t194, !tbaa !24
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t195 = load ptr, ptr %l7, !tbaa !29
  %t196 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t198 = trunc i64 0 to i32
  %t199 = icmp eq i32 %t196, %t198
  %t201 = xor i1 %t199, true
  %t204 = getelementptr %"compiler/emit:Emitter", ptr %t195, i32 0, i32 76
  store i1 %t201, ptr %t204, !tbaa !21
  %t205 = load i1, ptr %l6, !tbaa !21
  br i1 %t205, label %bb22, label %bb23
bb22:
  %t207 = load ptr, ptr %l7, !tbaa !29
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t210 = getelementptr %"compiler/build:Config", ptr %t208, i32 0, i32 10
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  %t214 = getelementptr %"compiler/emit:Emitter", ptr %t207, i32 0, i32 50
  store { i64, ptr } %t211, ptr %t214, !tbaa !27
  %t215 = load ptr, ptr %l7, !tbaa !29
  %t216 = load ptr, ptr %l3, !tbaa !29
  %t218 = getelementptr %"compiler/build:Config", ptr %t216, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t219, 1
  %t222 = extractvalue { i64, ptr } %t219, 0
  %t223 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t226 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t225)
  call void @olang_textcopy(ptr %t226, ptr %t221, i64 %t222)
  %t227 = getelementptr i8, ptr %t226, i64 %t222
  call void @olang_textcopy(ptr %t227, ptr %t223, i64 %t224)
  %t228 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t232 = extractvalue { i64, ptr } %t229, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t239 = getelementptr %"compiler/emit:Emitter", ptr %t215, i32 0, i32 52
  store { i64, ptr } %t236, ptr %t239, !tbaa !27
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t240 = load ptr, ptr %l7, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t240, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, %"compiler/views:Cand" } @compiler_2folang_2efrontRecord(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
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
  %l118 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca i64
  %l130 = alloca i1
  %l131 = alloca i1
  %l133 = alloca i1
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
  %t23 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) })
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
  call void @__olang_check_failed(ptr @olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7)
  unreachable
bb13:
  %t49 = load i64, ptr %l32, !tbaa !24
  %t50 = load i64, ptr %l33, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7)
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
  call void @__olang_check_failed(ptr @olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7)
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
  call void @__olang_check_failed(ptr @olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7)
  unreachable
bb20:
  %t74 = load i64, ptr %l41, !tbaa !24
  %t75 = load i64, ptr %l42, !tbaa !24
  %t76 = icmp sle i64 %t74, %t75
  br i1 %t76, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7)
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
  call void @__olang_check_failed(ptr @olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7)
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
  call void @__olang_check_failed(ptr @olang_loc_4afdb1689badfcbe_51dadc062e53b0fa)
  unreachable
bb31:
  %t111 = load i64, ptr %l53, !tbaa !24
  %t112 = load i64, ptr %l54, !tbaa !24
  %t113 = icmp sle i64 %t111, %t112
  br i1 %t113, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_4afdb1689badfcbe_51dadc062e53b0fa)
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
  call void @__olang_check_failed(ptr @olang_loc_4afdb1689badfcbe_51dadc062e53b0fa)
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
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t138, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d110, i32 0, i32 1) })
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
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t153, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d111, i32 0, i32 1) })
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
  br label %bb91
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
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t225, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d112, i32 0, i32 1) })
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
  %t236 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s8, { i64, ptr } %t234, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t236, ptr %l116
  br label %bb69
bb68:
  br label %bb89
bb69:
  %t237 = load i1, ptr %l116, !tbaa !21
  br i1 %t237, label %bb70, label %bb71
bb70:
  %t238 = load ptr, ptr %lp5
  %t239 = getelementptr %"compiler/views:Cand", ptr %t238, i32 0, i32 2
  store ptr %t239, ptr %l117, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t240, ptr %l118, !tbaa !27
  %t241 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t241, 0
  store i64 %t244, ptr %l121, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 0
  store i64 %t246, ptr %l122, !tbaa !24
  %t247 = icmp sge i64 5, 0
  br i1 %t247, label %bb72, label %bb73
bb71:
  store %olang.scope zeroinitializer, ptr %s11
  %t249 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t251 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s11, { i64, ptr } %t249, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t251, ptr %l130
  br label %bb79
bb72:
  %t252 = load i64, ptr %l121, !tbaa !24
  %t253 = icmp sle i64 5, %t252
  br i1 %t253, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_93c2e7e0e9d3fc9d_9b0421dcc7332219)
  unreachable
bb74:
  %t255 = load i64, ptr %l121, !tbaa !24
  %t256 = load i64, ptr %l122, !tbaa !24
  %t257 = icmp sle i64 %t255, %t256
  br i1 %t257, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_93c2e7e0e9d3fc9d_9b0421dcc7332219)
  unreachable
bb76:
  %t259 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = load i64, ptr %l121, !tbaa !24
  %t262 = getelementptr i8, ptr %t260, i64 5
  %t263 = sub i64 %t261, 5
  %t264 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t262, 1
  %t267 = extractvalue { i64, ptr } %t265, 1
  %t268 = extractvalue { i64, ptr } %t265, 0
  %t269 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t268)
  call void @olang_textcopy(ptr %t269, ptr %t267, i64 %t268)
  %t270 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t274 = extractvalue { i64, ptr } %t271, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t279 = load ptr, ptr %l117, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t279, { i64, ptr } %t278)
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_93c2e7e0e9d3fc9d_9b0421dcc7332219)
  unreachable
bb78:
  br label %bb88
bb79:
  %t281 = load i1, ptr %l130, !tbaa !21
  br i1 %t281, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb83
bb81:
  %t282 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t284 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s11, { i64, ptr } %t282, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d115, i32 0, i32 1) })
  store i1 %t284, ptr %l133
  br label %bb82
bb82:
  %t285 = load i1, ptr %l133, !tbaa !21
  store i1 %t285, ptr %l131, !tbaa !21
  br label %bb83
bb83:
  %t286 = load i1, ptr %l131, !tbaa !21
  br i1 %t286, label %bb84, label %bb85
bb84:
  %t287 = load ptr, ptr %lp5
  %t288 = getelementptr %"compiler/views:Cand", ptr %t287, i32 0, i32 3
  %t289 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t288, { i64, ptr } %t289)
  br label %bb86
bb85:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t293 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/views:Cand" } %t293, ptr %rv
  br label %ret
bb86:
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s11)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s6)
  br label %bb90
bb90:
  %t294 = load i64, ptr %l10, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l10, !tbaa !24
  br label %bb60
bb91:
  %t298 = load ptr, ptr %lp5
  %t299 = load %"compiler/views:Cand", ptr %t298
  call void @__olang_scope_close(ptr %s0)
  %t301 = insertvalue { i32, %"compiler/views:Cand" } zeroinitializer, %"compiler/views:Cand" %t299, 1
  store { i32, %"compiler/views:Cand" } %t301, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/views:Cand" }, ptr %rv
  ret { i32, %"compiler/views:Cand" } %rr
}

define dso_local { i64, ptr } @compiler_2folang_2efrontStem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_84a3e2344dbd522f_43f41d04722675ab)
  unreachable
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp sle i64 20, %t15
  br i1 %t16, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_84a3e2344dbd522f_43f41d04722675ab)
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
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t38 = extractvalue { i64, ptr } %t23, 1
  %t39 = extractvalue { i64, ptr } %t23, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
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
  call void @__olang_check_failed(ptr @olang_loc_84a3e2344dbd522f_43f41d04722675ab)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2folang_2eimageText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
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
  %l26 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca { i64, ptr }
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca i8
  %l41 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l73 = alloca ptr
  %l76 = alloca i64
  %l79 = alloca i64
  %l82 = alloca i64
  %l87 = alloca i64
  %l89 = alloca i1
  %l90 = alloca i64
  %l92 = alloca i64
  %l94 = alloca i1
  %l97 = alloca i64
  %l99 = alloca ptr
  %l101 = alloca ptr
  %l104 = alloca i64
  %l105 = alloca ptr
  %l107 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l112 = alloca i32
  %l113 = alloca { i64, ptr }
  %l116 = alloca i64
  %l128 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t19 = alloca %"compiler/eval:Blob", align 8
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
  br label %bb59
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %t19, ptr %v1, ptr %v1, ptr %t17, i64 %t18)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t19, i64 272, i1 false)
  br label %bb7
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l25, i64 272, i1 false)
  store ptr %l2, ptr %l26, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  store i64 %t23, ptr %l27, !tbaa !24
  %t24 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 2
  %t25 = load i1, ptr %t24, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l29, !tbaa !27
  br label %bb10
bb10:
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t29 = load i64, ptr %l27, !tbaa !24
  %t30 = call i64 @__olang_fmt_i64(ptr null, i64 %t29)
  %t31 = add i64 %t28, %t30
  %t32 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = add i64 %t31, %t34
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t27, i64 %t28)
  %t40 = getelementptr i8, ptr %t39, i64 %t28
  %t41 = call i64 @__olang_fmt_i64(ptr %t40, i64 %t29)
  %t42 = getelementptr i8, ptr %t40, i64 %t30
  call void @olang_textcopy(ptr %t42, ptr %t33, i64 %t34)
  %t43 = getelementptr i8, ptr %t42, i64 %t34
  call void @olang_textcopy(ptr %t43, ptr %t36, i64 %t37)
  %t44 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t39, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = extractvalue { i64, ptr } %t45, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t53 = load ptr, ptr %l26, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t53, { i64, ptr } %t52)
  br label %bb11
bb11:
  %t55 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 0
  store ptr %t55, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s5
  %t57 = load i64, ptr %l7, !tbaa !24
  store i64 %t57, ptr %l33, !tbaa !24
  %t58 = load ptr, ptr %l6, !tbaa !29
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %s2, ptr %t58)
  store i64 %t60, ptr %l35
  br label %bb13
bb13:
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = load i64, ptr %l35, !tbaa !24
  %t63 = icmp slt i64 %t61, %t62
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s5)
  br label %bb21
bb15:
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l6, !tbaa !29
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %s2, ptr %t67, i64 %t68)
  store i8 %t71, ptr %l40
  br label %bb17
bb17:
  %t72 = load i8, ptr %l40, !tbaa !22
  store ptr %l2, ptr %l41, !tbaa !29
  %t75 = call { i64, ptr } @compiler_2folang_2ehexByte(ptr %s5, i8 %t72)
  store { i64, ptr } %t75, ptr %l43
  br label %bb18
bb18:
  %t76 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  %t78 = extractvalue { i64, ptr } %t76, 1
  %t79 = mul i64 %t77, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t79)
  call void @llvm.memcpy.p0.p0.i64(ptr %t80, ptr %t78, i64 %t79, i1 false)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t83 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t83, { i64, ptr } %t82)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb20
bb20:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb12
bb21:
  store i64 0, ptr %l9, !tbaa !24
  %t89 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 3
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t89)
  store i64 %t91, ptr %l48
  br label %bb22
bb22:
  %t92 = load i64, ptr %l48, !tbaa !24
  store i64 %t92, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb23, label %bb24
bb23:
  %t99 = load i64, ptr %l11, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb28
bb25:
  %t103 = load i64, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l11, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l55, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb27
bb27:
  %t119 = load i64, ptr %l55, !tbaa !24
  store i64 %t119, ptr %l52, !tbaa !24
  br label %bb28
bb28:
  %t120 = load i64, ptr %l52, !tbaa !24
  store i64 %t120, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s8
  %t121 = load i64, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l12, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s8)
  br label %bb56
bb31:
  br label %bb32
bb32:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l13, !tbaa !24
  %t131 = load i64, ptr %l11, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l14, !tbaa !24
  store ptr %l2, ptr %l73, !tbaa !29
  %t139 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 3
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t139, i64 %t140)
  store i64 %t143, ptr %l76
  br label %bb33
bb33:
  %t144 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 4
  %t145 = load i64, ptr %l14, !tbaa !24
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t144, i64 %t145)
  store i64 %t148, ptr %l79
  br label %bb34
bb34:
  %t149 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 5
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l82
  br label %bb35
bb35:
  %t154 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t156 = load i64, ptr %l76, !tbaa !24
  %t157 = call i64 @__olang_fmt_i64(ptr null, i64 %t156)
  %t158 = add i64 %t155, %t157
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = load i64, ptr %l79, !tbaa !24
  %t163 = call i64 @__olang_fmt_i64(ptr null, i64 %t162)
  %t164 = add i64 %t161, %t163
  %t165 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t167 = add i64 %t164, %t166
  %t168 = load i64, ptr %l82, !tbaa !24
  %t169 = call i64 @__olang_fmt_i64(ptr null, i64 %t168)
  %t170 = add i64 %t167, %t169
  %t171 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t170)
  call void @olang_textcopy(ptr %t171, ptr %t154, i64 %t155)
  %t172 = getelementptr i8, ptr %t171, i64 %t155
  %t173 = call i64 @__olang_fmt_i64(ptr %t172, i64 %t156)
  %t174 = getelementptr i8, ptr %t172, i64 %t157
  call void @olang_textcopy(ptr %t174, ptr %t159, i64 %t160)
  %t175 = getelementptr i8, ptr %t174, i64 %t160
  %t176 = call i64 @__olang_fmt_i64(ptr %t175, i64 %t162)
  %t177 = getelementptr i8, ptr %t175, i64 %t163
  call void @olang_textcopy(ptr %t177, ptr %t165, i64 %t166)
  %t178 = getelementptr i8, ptr %t177, i64 %t166
  %t179 = call i64 @__olang_fmt_i64(ptr %t178, i64 %t168)
  %t180 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t171, 1
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = extractvalue { i64, ptr } %t181, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t189, { i64, ptr } %t188)
  br label %bb36
bb36:
  %t191 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 4
  %t192 = load i64, ptr %l14, !tbaa !24
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t191, i64 %t192)
  store i64 %t195, ptr %l87
  br label %bb37
bb37:
  %t196 = load i64, ptr %l87, !tbaa !24
  %t197 = icmp slt i64 %t196, 0
  br i1 %t197, label %bb38, label %bb39
bb38:
  %t199 = load i64, ptr %l14, !tbaa !24
  store i64 %t199, ptr %l90, !tbaa !24
  %t200 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 7
  %t202 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t200)
  store i64 %t202, ptr %l92
  br label %bb40
bb39:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb41
bb40:
  %t203 = load i64, ptr %l90, !tbaa !24
  %t204 = load i64, ptr %l92, !tbaa !24
  %t205 = icmp slt i64 %t203, %t204
  store i1 %t205, ptr %l89, !tbaa !21
  br label %bb41
bb41:
  %t207 = load i1, ptr %l89, !tbaa !21
  br i1 %t207, label %bb42, label %bb43
bb42:
  %t208 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 7
  %t209 = load i64, ptr %l14, !tbaa !24
  %t212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t208, i64 %t209)
  store i64 %t212, ptr %l97
  br label %bb44
bb43:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb45
bb44:
  %t213 = load i64, ptr %l97, !tbaa !24
  %t214 = icmp sge i64 %t213, 0
  store i1 %t214, ptr %l94, !tbaa !21
  br label %bb45
bb45:
  %t216 = load i1, ptr %l94, !tbaa !21
  br i1 %t216, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %l2, ptr %l99, !tbaa !29
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/load:Loader", ptr %t217, i32 0, i32 10
  store ptr %t219, ptr %l101, !tbaa !29
  %t220 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 7
  %t221 = load i64, ptr %l14, !tbaa !24
  %t224 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t220, i64 %t221)
  store i64 %t224, ptr %l104
  br label %bb48
bb47:
  br label %bb54
bb48:
  %t225 = load ptr, ptr %l101, !tbaa !29
  %t226 = load i64, ptr %l104, !tbaa !24
  %t227 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t225, i64 %t226)
  store ptr %t227, ptr %l105
  br label %bb49
bb49:
  %t228 = load ptr, ptr %l105, !tbaa !29
  %t230 = getelementptr %"compiler/load:Module", ptr %t228, i32 0, i32 2
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !27
  store { i64, ptr } %t231, ptr %l107, !tbaa !27
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/load:Loader", ptr %t232, i32 0, i32 3
  %t235 = load ptr, ptr %t234, !tbaa !29
  store ptr %t235, ptr %l109, !tbaa !29
  %t236 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 8
  %t237 = load i64, ptr %l14, !tbaa !24
  %t240 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s2, ptr %t236, i64 %t237)
  store i32 %t240, ptr %l112
  br label %bb50
bb50:
  %t241 = load ptr, ptr %l109, !tbaa !29
  %t242 = load i32, ptr %l112, !tbaa !23
  %t243 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s10, ptr %t241, i32 %t242)
  store { i64, ptr } %t243, ptr %l113
  br label %bb51
bb51:
  %t244 = getelementptr %"compiler/eval:Blob", ptr %l5, i32 0, i32 9
  %t245 = load i64, ptr %l14, !tbaa !24
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t244, i64 %t245)
  store i64 %t248, ptr %l116
  br label %bb52
bb52:
  %t249 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t251 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = add i64 %t250, %t253
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t257 = add i64 %t254, %t256
  %t258 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t265 = load i64, ptr %l116, !tbaa !24
  %t266 = call i64 @__olang_fmt_i64(ptr null, i64 %t265)
  %t267 = add i64 %t264, %t266
  %t268 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t267)
  call void @olang_textcopy(ptr %t268, ptr %t249, i64 %t250)
  %t269 = getelementptr i8, ptr %t268, i64 %t250
  call void @olang_textcopy(ptr %t269, ptr %t252, i64 %t253)
  %t270 = getelementptr i8, ptr %t269, i64 %t253
  call void @olang_textcopy(ptr %t270, ptr %t255, i64 %t256)
  %t271 = getelementptr i8, ptr %t270, i64 %t256
  call void @olang_textcopy(ptr %t271, ptr %t259, i64 %t260)
  %t272 = getelementptr i8, ptr %t271, i64 %t260
  call void @olang_textcopy(ptr %t272, ptr %t262, i64 %t263)
  %t273 = getelementptr i8, ptr %t272, i64 %t263
  %t274 = call i64 @__olang_fmt_i64(ptr %t273, i64 %t265)
  %t275 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t268, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load ptr, ptr %l99, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t284, { i64, ptr } %t283)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s8)
  br label %bb55
bb55:
  %t286 = load i64, ptr %l13, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l13, !tbaa !24
  br label %bb29
bb56:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d129, i32 0, i32 1) })
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s2)
  br label %bb58
bb58:
  %t291 = load i64, ptr %l4, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l4, !tbaa !24
  br label %bb2
bb59:
  %t295 = load ptr, ptr %l1, !tbaa !29
  %t297 = getelementptr %"compiler/eval:Image", ptr %t295, i32 0, i32 2
  %t298 = load i1, ptr %t297, !tbaa !21
  br i1 %t298, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s14
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l2, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d130, i32 0, i32 1) })
  br label %bb62
bb61:
  br label %bb63
bb62:
  call void @__olang_scope_close(ptr %s14)
  br label %bb63
bb63:
  %t302 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t302, ptr %l128
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s0)
  %t303 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t303, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2folang_2ekeepFront(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4, ptr %a5) #0 {
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
  call void @compiler_2folang_2echeckOthers(ptr %v0, ptr %v1, ptr %v4, ptr %v5, ptr %t6, ptr %t7, ptr %t8, ptr %t9)
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
  %t33 = call { i64, ptr } @compiler_2folang_2ereaderRecords(ptr %v0, ptr %v1, ptr %s0, ptr %t29, ptr %t30)
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
  %t42 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
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
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s6, { i64, ptr } %t127, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d132, i32 0, i32 1) })
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s6, ptr %l15, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d133, i32 0, i32 1) })
  br label %bb49
bb49:
  %t179 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t179, ptr %l106, !tbaa !27
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %t183, i64 %t180
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !37
  %t187 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s6, { i64, ptr } %t185, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) })
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
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
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
  %t235 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t238 = extractvalue { i64, ptr } %t233, 1
  %t239 = extractvalue { i64, ptr } %t233, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
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
  %t270 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2folang_2eothers(ptr %v0, ptr %v1, ptr %v5, ptr %s16, ptr %t262, ptr %t263, i64 %t264, ptr %t265)
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
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s6, ptr %s6, ptr %l15, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d139, i32 0, i32 1) })
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
  %t340 = call { i64, ptr } @compiler_2folang_2efrontStem(ptr %v2, ptr %v0, ptr %v3, ptr %s6, ptr %t337, { i64, ptr } %t329, { i64, ptr } %t336)
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
  call void @__olang_check_failed(ptr @olang_loc_846f5cba2595e881_10a4c3193801545)
  unreachable
bb81:
  %t356 = load i64, ptr %l170, !tbaa !24
  %t357 = icmp sle i64 16, %t356
  br i1 %t357, label %bb83, label %bb84
bb82:
  call void @__olang_check_failed(ptr @olang_loc_846f5cba2595e881_10a4c3193801545)
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
  call void @__olang_check_failed(ptr @olang_loc_846f5cba2595e881_10a4c3193801545)
  unreachable
bb85:
  %t387 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t391 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t392 = add i64 %t389, %t391
  %t393 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 1
  %t395 = extractvalue { i64, ptr } %t393, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
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
  %t417 = call i1 @compiler_2folang_2eputFile(ptr %s6, ptr %s6, { i64, ptr } %t414, { i64, ptr } %t412, i32 %t413)
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

define dso_local { i64, ptr } @compiler_2folang_2elibraryIr(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d142, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d143, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t6 = call { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %a0, { i64, ptr } %t4, { i64, ptr } %t5)
  store { i64, ptr } %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l7, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2folang_2emodeName(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2folang_2eRun, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  br label %bb3
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t11 = getelementptr [15 x { i64, ptr }], ptr @G_2ecompiler_2folang_2eModeWords, i64 0, i64 %t9
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !37
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = extractvalue { i64, ptr } %t12, 0
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t14, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l4, !tbaa !27
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l10, !tbaa !24
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = mul i64 %t22, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l11, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l10, !tbaa !24
  %t32 = mul i64 %t31, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2folang_2emodeNumber(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca [15 x { i64, ptr }]
  %l12 = alloca i64
  %l15 = alloca i64
  %l36 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr @G_2ecompiler_2folang_2eModeWords, i64 240, i1 false)
  %t1 = load [15 x { i64, ptr }], ptr %l7
  store i64 15, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l15, !tbaa !24
  store i64 %t29, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l12, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = getelementptr [15 x { i64, ptr }], ptr @G_2ecompiler_2folang_2eModeWords, i64 0, i64 %t49
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !37
  %t54 = load ptr, ptr @__olang_prog_scope
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t54, ptr %v0, { i64, ptr } %t52, { i64, ptr } %a0)
  store i1 %t57, ptr %l36
  br label %bb11
bb11:
  %t58 = load i1, ptr %l36, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  %t59 = load i64, ptr %l6, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l5, !tbaa !24
  br label %bb7
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2folang_2emoduleKeys(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
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
  %l112 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l126 = alloca i64
  %l128 = alloca i64
  %l133 = alloca { i64, ptr }
  %l134 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l149 = alloca i64
  %l151 = alloca { i64, ptr }
  %l159 = alloca i64
  %l162 = alloca i64
  %l184 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l192 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l194 = alloca i64
  %l196 = alloca i64
  %l201 = alloca i64
  %l202 = alloca ptr
  %l206 = alloca ptr
  %l215 = alloca { i64, ptr }
  %l216 = alloca i64
  %l218 = alloca { i64, ptr }
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
  call void @__olang_check_failed(ptr @olang_loc_73c3116820f750d_32f9964414b76079)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d145, i32 0, i32 1) }, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t34 = call { i64, ptr } @compiler_2folang_2ebuildInputs(ptr %v1, ptr %s0, ptr %t30, i1 %a2)
  store { i64, ptr } %t34, ptr %l40
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_73c3116820f750d_32f9964414b76079)
  unreachable
bb6:
  %t35 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t35, ptr %l6, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d146, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l47, !tbaa !27
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
  %t74 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t75 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t76 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = add i64 %t75, %t78
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
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
  call void @__olang_check_failed(ptr @olang_loc_23d2168bab4aeae0_126950dc9613ccec)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d150, i32 0, i32 1) }, ptr %t129
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
  call void @__olang_check_failed(ptr @olang_loc_23d2168bab4aeae0_126950dc9613ccec)
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
  br label %bb55
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
  %t208 = load ptr, ptr %l15, !tbaa !29
  %t210 = getelementptr %"compiler/load:Module", ptr %t208, i32 0, i32 6
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = icmp eq ptr %t211, null
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb35, label %bb36
bb35:
  %t217 = load ptr, ptr %l15, !tbaa !29
  %t219 = getelementptr %"compiler/load:Module", ptr %t217, i32 0, i32 6
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = icmp eq ptr %t220, null
  br i1 %t222, label %bb37, label %bb38
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d151, i32 0, i32 1) }, ptr %l121, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t224, ptr %l112, !tbaa !27
  br label %bb40
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a3d985a905b98e7d_1a99d62f9ee112a1)
  unreachable
bb38:
  br label %bb39
bb39:
  %t226 = load ptr, ptr %l15, !tbaa !29
  %t228 = getelementptr %"compiler/load:Module", ptr %t226, i32 0, i32 6
  %t229 = load ptr, ptr %t228, !tbaa !29
  %t232 = getelementptr %"compiler/source:Source", ptr %t229, i32 0, i32 1
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l112, !tbaa !27
  br label %bb40
bb40:
  %t236 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t243 = load ptr, ptr %l107, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %s5, ptr %t243, { i64, ptr } %t242)
  br label %bb41
bb41:
  %t245 = load ptr, ptr %l15, !tbaa !29
  %t247 = getelementptr %"compiler/load:Module", ptr %t245, i32 0, i32 29
  store ptr %t247, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb42
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t249 = load i64, ptr %l18, !tbaa !24
  store i64 %t249, ptr %l126, !tbaa !24
  %t250 = load ptr, ptr %l17, !tbaa !29
  %t252 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t250)
  store i64 %t252, ptr %l128
  br label %bb43
bb43:
  %t253 = load i64, ptr %l126, !tbaa !24
  %t254 = load i64, ptr %l128, !tbaa !24
  %t255 = icmp slt i64 %t253, %t254
  %t257 = xor i1 %t255, true
  br i1 %t257, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb45:
  br label %bb46
bb46:
  %t259 = load ptr, ptr %l17, !tbaa !29
  %t260 = load i64, ptr %l18, !tbaa !24
  %t263 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t259, i64 %t260)
  store { i64, ptr } %t263, ptr %l133
  br label %bb47
bb47:
  %t264 = load { i64, ptr }, ptr %l133, !tbaa !27
  store { i64, ptr } %t264, ptr %l19, !tbaa !27
  store ptr %l16, ptr %l134, !tbaa !29
  %t265 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t265, ptr %l135, !tbaa !27
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t270 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbedded(ptr %v0, ptr %v0, ptr %s7, ptr %t266, { i64, ptr } %t267)
  store { i64, ptr } %t270, ptr %l138
  br label %bb48
bb48:
  %t271 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t271, ptr %l139, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 0
  store i64 %t273, ptr %l140, !tbaa !24
  %t274 = load i64, ptr %l140, !tbaa !24
  %t275 = mul i64 %t274, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t275)
  %t277 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  store { i64, ptr } %t278, ptr %l141, !tbaa !27
  %t279 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = load i64, ptr %l140, !tbaa !24
  %t284 = mul i64 %t283, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t280, ptr %t282, i64 %t284, i1 false)
  %t285 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t288 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s7, ptr %s7, { i64, ptr } %t285)
  store { i64, ptr } %t288, ptr %l144
  br label %bb49
bb49:
  %t289 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t290 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t291 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 1
  %t293 = extractvalue { i64, ptr } %t291, 0
  %t294 = add i64 %t290, %t293
  %t295 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t297 = add i64 %t294, %t296
  %t298 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 1
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = add i64 %t297, %t300
  %t302 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t301)
  call void @olang_textcopy(ptr %t302, ptr %t289, i64 %t290)
  %t303 = getelementptr i8, ptr %t302, i64 %t290
  call void @olang_textcopy(ptr %t303, ptr %t292, i64 %t293)
  %t304 = getelementptr i8, ptr %t303, i64 %t293
  call void @olang_textcopy(ptr %t304, ptr %t295, i64 %t296)
  %t305 = getelementptr i8, ptr %t304, i64 %t296
  call void @olang_textcopy(ptr %t305, ptr %t299, i64 %t300)
  %t306 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t302, 1
  %t309 = extractvalue { i64, ptr } %t307, 0
  %t310 = extractvalue { i64, ptr } %t307, 1
  %t311 = mul i64 %t309, 1
  %t312 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t311)
  call void @llvm.memcpy.p0.p0.i64(ptr %t312, ptr %t310, i64 %t311, i1 false)
  %t313 = insertvalue { i64, ptr } undef, i64 %t309, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t312, 1
  %t315 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %s5, ptr %t315, { i64, ptr } %t314)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s7)
  br label %bb51
bb51:
  %t317 = load i64, ptr %l18, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l18, !tbaa !24
  br label %bb42
bb52:
  %t321 = load i64, ptr %l14, !tbaa !24
  store i64 %t321, ptr %l149, !tbaa !24
  %t323 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s5, ptr %s0, ptr %l16)
  store { i64, ptr } %t323, ptr %l151
  br label %bb53
bb53:
  %t324 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t324, 0
  %t326 = extractvalue { i64, ptr } %t324, 1
  %t327 = mul i64 %t325, 1
  %t328 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t327)
  call void @llvm.memcpy.p0.p0.i64(ptr %t328, ptr %t326, i64 %t327, i1 false)
  %t329 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t330 = insertvalue { i64, ptr } %t329, ptr %t328, 1
  %t332 = load i64, ptr %l149, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr { i64, ptr }, ptr %t334, i64 %t332
  store { i64, ptr } %t330, ptr %t335, !tbaa !37
  call void @__olang_scope_close(ptr %s5)
  br label %bb54
bb54:
  %t336 = load i64, ptr %l13, !tbaa !24
  %t338 = add i64 %t336, 1
  store i64 %t338, ptr %l13, !tbaa !24
  br label %bb26
bb55:
  store i64 0, ptr %l20, !tbaa !24
  %t340 = load i64, ptr %l4, !tbaa !24
  store i64 %t340, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t342 = load i64, ptr %l21, !tbaa !24
  %t343 = load i64, ptr %l20, !tbaa !24
  %t346 = icmp sgt i64 %t342, %t343
  br i1 %t346, label %bb56, label %bb57
bb56:
  %t348 = load i64, ptr %l22, !tbaa !24
  %t350 = icmp sgt i64 %t348, 0
  br i1 %t350, label %bb58, label %bb59
bb57:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb61
bb58:
  %t352 = load i64, ptr %l21, !tbaa !24
  %t353 = load i64, ptr %l20, !tbaa !24
  %t356 = sub i64 %t352, %t353
  %t357 = load i64, ptr %l22, !tbaa !24
  %t360 = add i64 %t356, %t357
  %t362 = sub i64 %t360, 1
  %t363 = load i64, ptr %l22, !tbaa !24
  %t366 = sdiv i64 %t362, %t363
  store i64 %t366, ptr %l162, !tbaa !24
  br label %bb60
bb59:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb60
bb60:
  %t368 = load i64, ptr %l162, !tbaa !24
  store i64 %t368, ptr %l159, !tbaa !24
  br label %bb61
bb61:
  %t369 = load i64, ptr %l159, !tbaa !24
  store i64 %t369, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb62
bb62:
  store %olang.scope zeroinitializer, ptr %s12
  %t370 = load i64, ptr %l24, !tbaa !24
  %t371 = load i64, ptr %l23, !tbaa !24
  %t374 = icmp slt i64 %t370, %t371
  %t376 = xor i1 %t374, true
  br i1 %t376, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s12)
  br label %bb85
bb64:
  br label %bb65
bb65:
  %t378 = load i64, ptr %l20, !tbaa !24
  %t379 = load i64, ptr %l24, !tbaa !24
  %t380 = load i64, ptr %l22, !tbaa !24
  %t383 = mul i64 %t379, %t380
  %t386 = add i64 %t378, %t383
  store i64 %t386, ptr %l25, !tbaa !24
  %t388 = load i64, ptr %l25, !tbaa !24
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/load:Loader", ptr %t389, i32 0, i32 12
  %t392 = load i64, ptr %t391, !tbaa !24
  %t395 = icmp eq i64 %t388, %t392
  br i1 %t395, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s12)
  br label %bb84
bb67:
  br label %bb68
bb68:
  %t397 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s12, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %l184
  br label %bb69
bb69:
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l184
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l26
  %t399 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s12, ptr %s0, ptr %l26, { i64, ptr } %t399)
  br label %bb70
bb70:
  %t402 = load i64, ptr %l25, !tbaa !24
  %t404 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr { i64, ptr }, ptr %t405, i64 %t402
  %t407 = load { i64, ptr }, ptr %t406, !tbaa !37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s12, ptr %s0, ptr %l26, { i64, ptr } %t407)
  br label %bb71
bb71:
  store %olang.scope zeroinitializer, ptr %s14
  %t410 = load ptr, ptr %l3, !tbaa !29
  %t411 = load i64, ptr %l25, !tbaa !24
  %t414 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2folang_2ereached(ptr %v0, ptr %s14, ptr %t410, i64 %t411)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %l192
  br label %bb72
bb72:
  %t415 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l192
  %t416 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t415, ptr %t416
  store ptr %t416, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb73
bb73:
  %t418 = load i64, ptr %l28, !tbaa !24
  store i64 %t418, ptr %l194, !tbaa !24
  %t419 = load ptr, ptr %l27, !tbaa !29
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s14, ptr %t419)
  store i64 %t421, ptr %l196
  br label %bb74
bb74:
  %t422 = load i64, ptr %l194, !tbaa !24
  %t423 = load i64, ptr %l196, !tbaa !24
  %t424 = icmp slt i64 %t422, %t423
  %t426 = xor i1 %t424, true
  br i1 %t426, label %bb75, label %bb76
bb75:
  br label %bb82
bb76:
  br label %bb77
bb77:
  %t428 = load ptr, ptr %l27, !tbaa !29
  %t429 = load i64, ptr %l28, !tbaa !24
  %t432 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s14, ptr %t428, i64 %t429)
  store i64 %t432, ptr %l201
  br label %bb78
bb78:
  %t433 = load i64, ptr %l201, !tbaa !24
  store i64 %t433, ptr %l29, !tbaa !24
  store ptr %l26, ptr %l202, !tbaa !29
  %t434 = load ptr, ptr %l3, !tbaa !29
  %t436 = load i64, ptr %l29, !tbaa !24
  %t439 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t434, i64 %t436)
  store ptr %t439, ptr %l206
  br label %bb79
bb79:
  %t440 = load ptr, ptr %l206, !tbaa !29
  %t442 = getelementptr %"compiler/load:Module", ptr %t440, i32 0, i32 2
  %t443 = load { i64, ptr }, ptr %t442, !tbaa !27
  %t444 = load i64, ptr %l29, !tbaa !24
  %t446 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = getelementptr { i64, ptr }, ptr %t447, i64 %t444
  %t449 = load { i64, ptr }, ptr %t448, !tbaa !37
  %t451 = extractvalue { i64, ptr } %t443, 1
  %t452 = extractvalue { i64, ptr } %t443, 0
  %t453 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t454 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t455 = add i64 %t452, %t454
  %t457 = extractvalue { i64, ptr } %t449, 1
  %t458 = extractvalue { i64, ptr } %t449, 0
  %t459 = add i64 %t455, %t458
  %t460 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t459)
  call void @olang_textcopy(ptr %t460, ptr %t451, i64 %t452)
  %t461 = getelementptr i8, ptr %t460, i64 %t452
  call void @olang_textcopy(ptr %t461, ptr %t453, i64 %t454)
  %t462 = getelementptr i8, ptr %t461, i64 %t454
  call void @olang_textcopy(ptr %t462, ptr %t457, i64 %t458)
  %t463 = insertvalue { i64, ptr } undef, i64 %t459, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr %t460, 1
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t467 = extractvalue { i64, ptr } %t464, 1
  %t468 = mul i64 %t466, 1
  %t469 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t468)
  call void @llvm.memcpy.p0.p0.i64(ptr %t469, ptr %t467, i64 %t468, i1 false)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t469, 1
  %t472 = load ptr, ptr %l202, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s12, ptr %s12, ptr %t472, { i64, ptr } %t471)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t474 = load i64, ptr %l28, !tbaa !24
  %t476 = add i64 %t474, 1
  store i64 %t476, ptr %l28, !tbaa !24
  br label %bb73
bb82:
  call void @__olang_scope_close(ptr %s14)
  %t478 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t478, ptr %l215, !tbaa !27
  %t479 = load i64, ptr %l25, !tbaa !24
  store i64 %t479, ptr %l216, !tbaa !24
  %t481 = call { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %s12, ptr %v2, ptr %l26)
  store { i64, ptr } %t481, ptr %l218
  br label %bb83
bb83:
  %t482 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t483 = extractvalue { i64, ptr } %t482, 0
  %t484 = extractvalue { i64, ptr } %t482, 1
  %t485 = mul i64 %t483, 1
  %t486 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t485)
  call void @llvm.memcpy.p0.p0.i64(ptr %t486, ptr %t484, i64 %t485, i1 false)
  %t487 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t486, 1
  %t490 = load i64, ptr %l216, !tbaa !24
  %t491 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t492 = load ptr, ptr %t491, !tbaa !27
  %t493 = getelementptr { i64, ptr }, ptr %t492, i64 %t490
  store { i64, ptr } %t488, ptr %t493, !tbaa !37
  call void @__olang_scope_close(ptr %s12)
  br label %bb84
bb84:
  %t494 = load i64, ptr %l24, !tbaa !24
  %t496 = add i64 %t494, 1
  store i64 %t496, ptr %l24, !tbaa !24
  br label %bb62
bb85:
  %t498 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t498, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2folang_2ereached(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_8700ae4b71dc05e7_516835b7a25a65bb)
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
  %t172 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_155, 0
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

define dso_local { i64, ptr } @compiler_2folang_2erecordPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4) #0 {
entry:
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t7 = call { i64, ptr } @compiler_2folang_2erecordStem(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  br i1 %a4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, ptr %l10, !tbaa !27
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l10, !tbaa !27
  br label %bb4
bb4:
  %t12 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v3, ptr %s0, { i64, ptr } %a3)
  store { i64, ptr } %t12, ptr %l12
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l13, !tbaa !24
  %t15 = icmp sge i64 0, 0
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = icmp sle i64 0, 16
  br i1 %t17, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_a5855f4dee34d57_8118d8286dddc923)
  unreachable
bb8:
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = icmp sle i64 16, %t19
  br i1 %t20, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a5855f4dee34d57_8118d8286dddc923)
  unreachable
bb10:
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i8, ptr %t23, i64 0
  %t25 = sub i64 16, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  %t28 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = add i64 %t30, %t33
  %t36 = extractvalue { i64, ptr } %t27, 1
  %t37 = extractvalue { i64, ptr } %t27, 0
  %t38 = add i64 %t34, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t29, i64 %t30)
  %t40 = getelementptr i8, ptr %t39, i64 %t30
  call void @olang_textcopy(ptr %t40, ptr %t32, i64 %t33)
  %t41 = getelementptr i8, ptr %t40, i64 %t33
  call void @olang_textcopy(ptr %t41, ptr %t36, i64 %t37)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t39, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t43, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_a5855f4dee34d57_8118d8286dddc923)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2folang_2erecordStem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_41f7007871036c59_ebaca9e4fb154265)
  unreachable
bb4:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp sle i64 20, %t15
  br i1 %t16, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_41f7007871036c59_ebaca9e4fb154265)
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
  %t27 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = add i64 %t29, %t32
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t38 = extractvalue { i64, ptr } %t23, 1
  %t39 = extractvalue { i64, ptr } %t23, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
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
  call void @__olang_check_failed(ptr @olang_loc_41f7007871036c59_ebaca9e4fb154265)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2folang_2eretarget(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:LineIter"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca %"std/prelude/text:LineIter"
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca i1
  %l46 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i32
  %l53 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l70 = alloca i64
  %l71 = alloca i64
  %l75 = alloca { i64, ptr }
  %l82 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca i64
  %l96 = alloca i64
  %l98 = alloca i64
  %l99 = alloca i32
  %l104 = alloca ptr
  %l105 = alloca i64
  %l106 = alloca i64
  %l110 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l112 = alloca i64
  %l114 = alloca i64
  %l115 = alloca i64
  %l124 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l13
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t5 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store %"std/prelude/text:LineIter" %t5, ptr %l15
  br label %bb2
bb2:
  %t6 = load %"std/prelude/text:LineIter", ptr %l15
  store %"std/prelude/text:LineIter" %t6, ptr %l3
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %l3)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l19
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l18
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t13, ptr %l16, !tbaa !27
  br label %bb7
bb5:
  %t14 = load i32, ptr %l19, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l21, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb82
bb7:
  %t18 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t18, ptr %l4, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t19, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store i1 %t21, ptr %l23
  br label %bb8
bb8:
  %t22 = load i1, ptr %l23, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d162, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t27 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t23, { i64, ptr } %t26)
  store i1 %t27, ptr %l28
  br label %bb11
bb10:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  %t28 = load i1, ptr %l28, !tbaa !21
  store i1 %t28, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l24, !tbaa !21
  %t30 = xor i1 %t29, true
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %t32)
  br label %bb15
bb14:
  br label %bb17
bb15:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb81
bb17:
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 1
  %t39 = extractvalue { i64, ptr } %t36, 0
  %t40 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t38, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l5, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s5
  %t44 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t45 = insertvalue [3 x { i64, ptr }] %t44, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t46 = insertvalue [3 x { i64, ptr }] %t45, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d165, i32 0, i32 1) }, 2
  %t48 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 48, i64 8)
  store [3 x { i64, ptr }] %t46, ptr %t48
  store ptr %t48, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t50 = load ptr, ptr %l6
  store i64 3, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb19, label %bb20
bb19:
  br label %bb58
bb20:
  br label %bb21
bb21:
  %t61 = load ptr, ptr %l6
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = getelementptr [3 x { i64, ptr }], ptr %t61, i64 0, i64 %t62
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !37
  store { i64, ptr } %t66, ptr %l9, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t70 = load ptr, ptr @__olang_prog_scope
  %t73 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s2, ptr %t70, { i64, ptr } %t68, { i64, ptr } %t69)
  %t74 = extractvalue { i32, i64 } %t73, 1
  %t75 = extractvalue { i32, i64 } %t73, 0
  store i32 %t75, ptr %l50
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb23, label %ok.77, !prof !99
ok.77:
  store i64 %t74, ptr %l49
  br label %bb22
bb22:
  %t78 = load i64, ptr %l49, !tbaa !24
  store i64 %t78, ptr %l46, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 -1, ptr %l46, !tbaa !24
  br label %bb25
bb25:
  %t79 = load i64, ptr %l46, !tbaa !24
  store i64 %t79, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t82 = icmp slt i64 %t80, 0
  br i1 %t82, label %bb26, label %bb27
bb26:
  br label %bb57
bb27:
  br label %bb28
bb28:
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t90 = add i64 %t84, %t87
  store i64 %t90, ptr %l57, !tbaa !24
  %t91 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l59, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l60, !tbaa !24
  %t96 = load i64, ptr %l57, !tbaa !24
  %t97 = icmp sge i64 %t96, 0
  br i1 %t97, label %bb29, label %bb30
bb29:
  %t99 = load i64, ptr %l57, !tbaa !24
  %t100 = load i64, ptr %l59, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_f7f4c072cfaa5bcd_bcba1f0f81b5e6d1)
  unreachable
bb31:
  %t103 = load i64, ptr %l59, !tbaa !24
  %t104 = load i64, ptr %l60, !tbaa !24
  %t105 = icmp sle i64 %t103, %t104
  br i1 %t105, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_f7f4c072cfaa5bcd_bcba1f0f81b5e6d1)
  unreachable
bb33:
  %t107 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l57, !tbaa !24
  %t110 = load i64, ptr %l59, !tbaa !24
  %t111 = getelementptr i8, ptr %t108, i64 %t109
  %t112 = sub i64 %t110, %t109
  %t113 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t111, 1
  %t117 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %s2, { i64, ptr } %t114, i8 34)
  %t118 = extractvalue { i32, i64 } %t117, 1
  %t119 = extractvalue { i32, i64 } %t117, 0
  store i32 %t119, ptr %l67
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb36, label %ok.121, !prof !99
ok.121:
  store i64 %t118, ptr %l66
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_f7f4c072cfaa5bcd_bcba1f0f81b5e6d1)
  unreachable
bb35:
  %t122 = load i64, ptr %l66, !tbaa !24
  store i64 %t122, ptr %l53, !tbaa !24
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb38
bb38:
  %t123 = load i64, ptr %l53, !tbaa !24
  store i64 %t123, ptr %l11, !tbaa !24
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = icmp slt i64 %t124, 0
  br i1 %t126, label %bb39, label %bb40
bb39:
  br label %bb57
bb40:
  br label %bb41
bb41:
  %t128 = load i64, ptr %l10, !tbaa !24
  store i64 %t128, ptr %l70, !tbaa !24
  %t129 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l71, !tbaa !24
  %t131 = icmp sge i64 0, 0
  br i1 %t131, label %bb42, label %bb43
bb42:
  %t133 = load i64, ptr %l70, !tbaa !24
  %t134 = icmp sle i64 0, %t133
  br i1 %t134, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4)
  unreachable
bb44:
  %t136 = load i64, ptr %l70, !tbaa !24
  %t137 = load i64, ptr %l71, !tbaa !24
  %t138 = icmp sle i64 %t136, %t137
  br i1 %t138, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4)
  unreachable
bb46:
  %t140 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l70, !tbaa !24
  %t143 = getelementptr i8, ptr %t141, i64 0
  %t144 = sub i64 %t142, 0
  %t145 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t143, 1
  store { i64, ptr } %t146, ptr %l75, !tbaa !27
  %t147 = load i64, ptr %l10, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t153 = add i64 %t147, %t150
  %t154 = load i64, ptr %l11, !tbaa !24
  %t157 = add i64 %t153, %t154
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l82, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l84, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l85, !tbaa !24
  %t165 = load i64, ptr %l82, !tbaa !24
  %t166 = icmp sge i64 %t165, 0
  br i1 %t166, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4)
  unreachable
bb48:
  %t168 = load i64, ptr %l82, !tbaa !24
  %t169 = load i64, ptr %l84, !tbaa !24
  %t170 = icmp sle i64 %t168, %t169
  br i1 %t170, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4)
  unreachable
bb50:
  %t172 = load i64, ptr %l84, !tbaa !24
  %t173 = load i64, ptr %l85, !tbaa !24
  %t174 = icmp sle i64 %t172, %t173
  br i1 %t174, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4)
  unreachable
bb52:
  %t176 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l82, !tbaa !24
  %t179 = load i64, ptr %l84, !tbaa !24
  %t180 = getelementptr i8, ptr %t177, i64 %t178
  %t181 = sub i64 %t179, %t178
  %t182 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t184 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t188 = extractvalue { i64, ptr } %t183, 1
  %t189 = extractvalue { i64, ptr } %t183, 0
  %t190 = add i64 %t186, %t189
  %t191 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t185, i64 %t186)
  %t192 = getelementptr i8, ptr %t191, i64 %t186
  call void @olang_textcopy(ptr %t192, ptr %t188, i64 %t189)
  %t193 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  store { i64, ptr } %t194, ptr %l90, !tbaa !27
  %t195 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 0
  %t197 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l92, !tbaa !24
  %t200 = load i64, ptr %l92, !tbaa !24
  %t201 = icmp eq i64 %t196, %t200
  br i1 %t201, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4)
  unreachable
bb54:
  %t203 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = load i64, ptr %l92, !tbaa !24
  %t208 = mul i64 %t207, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t204, ptr %t206, i64 %t208, i1 false)
  br label %bb56
bb55:
  %t209 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t209, ptr %l5, !tbaa !27
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t210 = load i64, ptr %l7, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l7, !tbaa !24
  br label %bb18
bb58:
  call void @__olang_scope_close(ptr %s5)
  %t214 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t216 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %s2, ptr %s2, { i64, ptr } %t214, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d166, i32 0, i32 1) })
  %t217 = extractvalue { i32, i64 } %t216, 1
  %t218 = extractvalue { i32, i64 } %t216, 0
  store i32 %t218, ptr %l99
  %t219 = icmp ne i32 %t218, 0
  br i1 %t219, label %bb60, label %ok.220, !prof !99
ok.220:
  store i64 %t217, ptr %l98
  br label %bb59
bb59:
  %t221 = load i64, ptr %l98, !tbaa !24
  store i64 %t221, ptr %l96, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 -1, ptr %l96, !tbaa !24
  br label %bb62
bb62:
  %t222 = load i64, ptr %l96, !tbaa !24
  store i64 %t222, ptr %l12, !tbaa !24
  %t223 = load i64, ptr %l12, !tbaa !24
  %t225 = icmp slt i64 %t223, 0
  br i1 %t225, label %bb63, label %bb64
bb63:
  %t227 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %t227)
  br label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr %l2, ptr %l104, !tbaa !29
  %t230 = load i64, ptr %l12, !tbaa !24
  store i64 %t230, ptr %l105, !tbaa !24
  %t231 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 0
  store i64 %t232, ptr %l106, !tbaa !24
  %t233 = icmp sge i64 0, 0
  br i1 %t233, label %bb66, label %bb67
bb65:
  br label %bb79
bb66:
  %t235 = load i64, ptr %l105, !tbaa !24
  %t236 = icmp sle i64 0, %t235
  br i1 %t236, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf)
  unreachable
bb68:
  %t238 = load i64, ptr %l105, !tbaa !24
  %t239 = load i64, ptr %l106, !tbaa !24
  %t240 = icmp sle i64 %t238, %t239
  br i1 %t240, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf)
  unreachable
bb70:
  %t242 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = load i64, ptr %l105, !tbaa !24
  %t245 = getelementptr i8, ptr %t243, i64 0
  %t246 = sub i64 %t244, 0
  %t247 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t245, 1
  store { i64, ptr } %t248, ptr %l110, !tbaa !27
  store { i64, ptr } %a1, ptr %l111, !tbaa !27
  %t250 = load i64, ptr %l12, !tbaa !24
  store i64 %t250, ptr %l112, !tbaa !24
  %t251 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t251, 0
  store i64 %t253, ptr %l114, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 0
  store i64 %t255, ptr %l115, !tbaa !24
  %t256 = load i64, ptr %l112, !tbaa !24
  %t257 = icmp sge i64 %t256, 0
  br i1 %t257, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf)
  unreachable
bb72:
  %t259 = load i64, ptr %l112, !tbaa !24
  %t260 = load i64, ptr %l114, !tbaa !24
  %t261 = icmp sle i64 %t259, %t260
  br i1 %t261, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf)
  unreachable
bb74:
  %t263 = load i64, ptr %l114, !tbaa !24
  %t264 = load i64, ptr %l115, !tbaa !24
  %t265 = icmp sle i64 %t263, %t264
  br i1 %t265, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf)
  unreachable
bb76:
  %t267 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = load i64, ptr %l112, !tbaa !24
  %t270 = load i64, ptr %l114, !tbaa !24
  %t271 = getelementptr i8, ptr %t268, i64 %t269
  %t272 = sub i64 %t270, %t269
  %t273 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t271, 1
  %t275 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t278 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t281 = add i64 %t277, %t280
  %t282 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t283 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t284 = add i64 %t281, %t283
  %t286 = extractvalue { i64, ptr } %t274, 1
  %t287 = extractvalue { i64, ptr } %t274, 0
  %t288 = add i64 %t284, %t287
  %t289 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t288)
  call void @olang_textcopy(ptr %t289, ptr %t276, i64 %t277)
  %t290 = getelementptr i8, ptr %t289, i64 %t277
  call void @olang_textcopy(ptr %t290, ptr %t279, i64 %t280)
  %t291 = getelementptr i8, ptr %t290, i64 %t280
  call void @olang_textcopy(ptr %t291, ptr %t282, i64 %t283)
  %t292 = getelementptr i8, ptr %t291, i64 %t283
  call void @olang_textcopy(ptr %t292, ptr %t286, i64 %t287)
  %t293 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t289, 1
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t297 = extractvalue { i64, ptr } %t294, 1
  %t298 = mul i64 %t296, 1
  %t299 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t298)
  call void @llvm.memcpy.p0.p0.i64(ptr %t299, ptr %t297, i64 %t298, i1 false)
  %t300 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t299, 1
  %t302 = load ptr, ptr %l104, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %t302, { i64, ptr } %t301)
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf)
  unreachable
bb78:
  call void @__olang_scope_close(ptr %s12)
  br label %bb79
bb79:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s2)
  br label %bb81
bb81:
  br label %bb3
bb82:
  %t306 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t306, ptr %l124
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s0)
  %t307 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t307, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2folang_2eroomFor(i64 %a0) #0 {
entry:
  %l1 = alloca %"<sys/resource.h>:rlimit"
  %l2 = alloca %"<sys/resource.h>:rlimit"
  %l5 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"<sys/resource.h>:rlimit" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fresource_2eh_3e_3arlimit()
  store %"<sys/resource.h>:rlimit" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"<sys/resource.h>:rlimit", ptr %l2
  store %"<sys/resource.h>:rlimit" %t2, ptr %l1
  %t3 = load i32, ptr @G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__AS, !tbaa !23
  %t6 = call i32 @getrlimit(i32 %t3, ptr %l1)
  store i32 %t6, ptr %l5
  br label %bb2
bb2:
  %t7 = load i32, ptr %l5, !tbaa !23
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t11 = getelementptr %"<sys/resource.h>:rlimit", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !65
  %t17 = icmp ugt i64 %t12, %a0
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2folang_2esortedLines(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d168, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d169, i32 0, i32 1) }, ptr %l8, !tbaa !27
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
  %t30 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_170, 0
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
  %t84 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %v1, ptr %v1, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) })
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

define dso_local i32 @compiler_2folang_2etakeRecord(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i1
  %l10 = alloca %"std/prelude/text:LineIter"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l24 = alloca i1
  %l28 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l33 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca i1
  %l59 = alloca %"compiler/emit:Reused"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i64
  %l68 = alloca %"std/prelude/text:LineIter"
  %l69 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i32
  %l74 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l83 = alloca i64
  %l84 = alloca i64
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca i32
  %l91 = alloca i64
  %l92 = alloca i32
  %l94 = alloca i1
  %l95 = alloca { i64, ptr }
  %l98 = alloca i64
  %l99 = alloca i64
  %l104 = alloca i1
  %l106 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l111 = alloca i64
  %l112 = alloca i64
  %l120 = alloca i1
  %l124 = alloca i1
  %l125 = alloca i1
  %l127 = alloca i1
  %l131 = alloca i1
  %l132 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l138 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l149 = alloca i64
  %l150 = alloca i64
  %l157 = alloca ptr
  %l159 = alloca i1
  %l162 = alloca i1
  %l164 = alloca i64
  %l166 = alloca i1
  %l169 = alloca ptr
  %l171 = alloca { i64, ptr }
  %l172 = alloca i1
  %l177 = alloca i1
  %l184 = alloca i64
  %l188 = alloca i64
  %l191 = alloca i64
  %l209 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l215 = alloca i32
  %l217 = alloca i1
  %l222 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l227 = alloca i1
  %l237 = alloca %"compiler/emit:Reused"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca i32
  %t100 = alloca %"compiler/emit:Reused", align 8
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l22
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l21
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t8, ptr %l19, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l22, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l24, !tbaa !21
  %t13 = load i32, ptr %l22, !tbaa !23
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
  store i32 65536, ptr %rv
  br label %ret
bb6:
  %t19 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t22 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d172, i32 0, i32 1) })
  %t23 = extractvalue { i32, i64 } %t22, 1
  %t24 = extractvalue { i32, i64 } %t22, 0
  store i32 %t24, ptr %l31
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb8, label %ok.26, !prof !99
ok.26:
  store i64 %t23, ptr %l30
  br label %bb7
bb7:
  %t27 = load i64, ptr %l30, !tbaa !24
  store i64 %t27, ptr %l28, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb10:
  %t29 = load i64, ptr %l28, !tbaa !24
  store i64 %t29, ptr %l6, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t30, ptr %l33, !tbaa !27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t31, 5
  store i64 %t33, ptr %l35, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t34, 0
  store i64 %t37, ptr %l38, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l39, !tbaa !24
  %t40 = load i64, ptr %l35, !tbaa !24
  %t41 = icmp sge i64 %t40, 0
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load i64, ptr %l35, !tbaa !24
  %t44 = load i64, ptr %l38, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_d08b4058070637_1afa872325ddc10b)
  unreachable
bb13:
  %t47 = load i64, ptr %l38, !tbaa !24
  %t48 = load i64, ptr %l39, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_d08b4058070637_1afa872325ddc10b)
  unreachable
bb15:
  %t51 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l35, !tbaa !24
  %t54 = load i64, ptr %l38, !tbaa !24
  %t55 = getelementptr i8, ptr %t52, i64 %t53
  %t56 = sub i64 %t54, %t53
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  %t60 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s0, { i64, ptr } %t58)
  store { i64, ptr } %t60, ptr %l44
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d08b4058070637_1afa872325ddc10b)
  unreachable
bb17:
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t61, ptr %l45, !tbaa !27
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l47, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  store i64 %t66, ptr %l48, !tbaa !24
  %t67 = icmp sge i64 0, 0
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = load i64, ptr %l47, !tbaa !24
  %t70 = icmp sle i64 0, %t69
  br i1 %t70, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d08b4058070637_1afa872325ddc10b)
  unreachable
bb20:
  %t72 = load i64, ptr %l47, !tbaa !24
  %t73 = load i64, ptr %l48, !tbaa !24
  %t74 = icmp sle i64 %t72, %t73
  br i1 %t74, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d08b4058070637_1afa872325ddc10b)
  unreachable
bb22:
  %t76 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = load i64, ptr %l47, !tbaa !24
  %t79 = getelementptr i8, ptr %t77, i64 0
  %t80 = sub i64 %t78, 0
  %t81 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  %t84 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %s0, ptr %s0, { i64, ptr } %t82)
  store { i64, ptr } %t84, ptr %l53
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_d08b4058070637_1afa872325ddc10b)
  unreachable
bb24:
  %t85 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t92, { i64, ptr } %t91)
  store i1 %t94, ptr %l55
  br label %bb25
bb25:
  %t95 = load i1, ptr %l55, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t99 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2femit_3aReused_2ector(ptr %t100, ptr %v3, i64 %t99)
  call void @llvm.memmove.p0.p0.i64(ptr %l59, ptr %t100, i64 160, i1 false)
  br label %bb29
bb29:
  %t102 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 160, i64 8)
  store ptr %t102, ptr %lp7
  %t103 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %t103, ptr %l59, i64 160, i1 false)
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l60
  br label %bb30
bb30:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l8
  store i1 false, ptr %l9, !tbaa !21
  %t106 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t106, ptr %l61, !tbaa !27
  %t107 = load i64, ptr %l6, !tbaa !24
  store i64 %t107, ptr %l62, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l63, !tbaa !24
  %t110 = icmp sge i64 0, 0
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load i64, ptr %l62, !tbaa !24
  %t113 = icmp sle i64 0, %t112
  br i1 %t113, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_c1a782ed22f6e4da_8f8a46f1bbe3750e)
  unreachable
bb33:
  %t115 = load i64, ptr %l62, !tbaa !24
  %t116 = load i64, ptr %l63, !tbaa !24
  %t117 = icmp sle i64 %t115, %t116
  br i1 %t117, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_c1a782ed22f6e4da_8f8a46f1bbe3750e)
  unreachable
bb35:
  %t119 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l62, !tbaa !24
  %t122 = getelementptr i8, ptr %t120, i64 0
  %t123 = sub i64 %t121, 0
  %t124 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t122, 1
  %t127 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t125)
  store %"std/prelude/text:LineIter" %t127, ptr %l68
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_c1a782ed22f6e4da_8f8a46f1bbe3750e)
  unreachable
bb37:
  %t128 = load %"std/prelude/text:LineIter", ptr %l68
  store %"std/prelude/text:LineIter" %t128, ptr %l10
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t130 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l10)
  %t131 = extractvalue { i32, { i64, ptr } } %t130, 1
  %t132 = extractvalue { i32, { i64, ptr } } %t130, 0
  store i32 %t132, ptr %l72
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb40, label %ok.134, !prof !99
ok.134:
  store { i64, ptr } %t131, ptr %l71
  br label %bb39
bb39:
  %t135 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t135, ptr %l69, !tbaa !27
  br label %bb42
bb40:
  %t136 = load i32, ptr %l72, !tbaa !23
  %t137 = ashr i32 %t136, 16
  %t139 = icmp eq i32 %t137, 1
  store i1 %t139, ptr %l74, !tbaa !21
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s5)
  br label %bb121
bb42:
  %t140 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t140, ptr %l11, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t143 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t141, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store i1 %t143, ptr %l76
  br label %bb43
bb43:
  %t144 = load i1, ptr %l76, !tbaa !21
  br i1 %t144, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb119
bb45:
  store %olang.scope zeroinitializer, ptr %s7
  %t145 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t147 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s7, { i64, ptr } %t145, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d174, i32 0, i32 1) })
  store i1 %t147, ptr %l78
  br label %bb46
bb46:
  %t148 = load i1, ptr %l78, !tbaa !21
  br i1 %t148, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t149 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t149, ptr %l80, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t150, 0
  store i64 %t153, ptr %l83, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  store i64 %t155, ptr %l84, !tbaa !24
  %t156 = icmp sge i64 5, 0
  br i1 %t156, label %bb49, label %bb50
bb48:
  store %olang.scope zeroinitializer, ptr %s9
  %t158 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t160 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s9, { i64, ptr } %t158, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d175, i32 0, i32 1) })
  store i1 %t160, ptr %l94
  br label %bb61
bb49:
  %t161 = load i64, ptr %l83, !tbaa !24
  %t162 = icmp sle i64 5, %t161
  br i1 %t162, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_4bd32f38a8f0cd79_dca9eb70c03b276d)
  unreachable
bb51:
  %t164 = load i64, ptr %l83, !tbaa !24
  %t165 = load i64, ptr %l84, !tbaa !24
  %t166 = icmp sle i64 %t164, %t165
  br i1 %t166, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_4bd32f38a8f0cd79_dca9eb70c03b276d)
  unreachable
bb53:
  %t168 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = load i64, ptr %l83, !tbaa !24
  %t171 = getelementptr i8, ptr %t169, i64 5
  %t172 = sub i64 %t170, 5
  %t173 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t171, 1
  store { i64, ptr } %t174, ptr %l88, !tbaa !27
  %t175 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s8, i64 10)
  %t176 = extractvalue { i32, i64 } %t175, 1
  %t177 = extractvalue { i32, i64 } %t175, 0
  store i32 %t177, ptr %l90
  %t178 = icmp ne i32 %t177, 0
  br i1 %t178, label %bb56, label %ok.179, !prof !99
ok.179:
  store i64 %t176, ptr %l89
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_4bd32f38a8f0cd79_dca9eb70c03b276d)
  unreachable
bb55:
  %t180 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t181 = load i64, ptr %l89, !tbaa !24
  %t182 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t180, i64 %t181)
  %t183 = extractvalue { i32, i64 } %t182, 1
  %t184 = extractvalue { i32, i64 } %t182, 0
  store i32 %t184, ptr %l92
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb59, label %ok.186, !prof !99
ok.186:
  store i64 %t183, ptr %l91
  br label %bb58
bb56:
  br label %bb57
bb57:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb60
bb58:
  %t187 = load i64, ptr %l91, !tbaa !24
  store i64 %t187, ptr %l79, !tbaa !24
  br label %bb60
bb59:
  br label %bb57
bb60:
  %t188 = load i64, ptr %l79, !tbaa !24
  %t189 = load ptr, ptr %lp7
  %t190 = getelementptr %"compiler/emit:Reused", ptr %t189, i32 0, i32 4
  store i64 %t188, ptr %t190, !tbaa !24
  call void @__olang_scope_close(ptr %s8)
  br label %bb118
bb61:
  %t191 = load i1, ptr %l94, !tbaa !21
  br i1 %t191, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s10
  %t192 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t192, ptr %l95, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t193, 0
  store i64 %t196, ptr %l98, !tbaa !24
  %t197 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l99, !tbaa !24
  %t199 = icmp sge i64 6, 0
  br i1 %t199, label %bb64, label %bb65
bb63:
  store %olang.scope zeroinitializer, ptr %s11
  %t201 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t203 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s11, { i64, ptr } %t201, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d176, i32 0, i32 1) })
  store i1 %t203, ptr %l106
  br label %bb71
bb64:
  %t204 = load i64, ptr %l98, !tbaa !24
  %t205 = icmp sle i64 6, %t204
  br i1 %t205, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_9f046166df78394c_19ebe858eda28990)
  unreachable
bb66:
  %t207 = load i64, ptr %l98, !tbaa !24
  %t208 = load i64, ptr %l99, !tbaa !24
  %t209 = icmp sle i64 %t207, %t208
  br i1 %t209, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_9f046166df78394c_19ebe858eda28990)
  unreachable
bb68:
  %t211 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = load i64, ptr %l98, !tbaa !24
  %t214 = getelementptr i8, ptr %t212, i64 6
  %t215 = sub i64 %t213, 6
  %t216 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t214, 1
  %t219 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s10, { i64, ptr } %t217, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d177, i32 0, i32 1) })
  store i1 %t219, ptr %l104
  br label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_9f046166df78394c_19ebe858eda28990)
  unreachable
bb70:
  %t220 = load i1, ptr %l104, !tbaa !21
  %t221 = load ptr, ptr %lp7
  %t222 = getelementptr %"compiler/emit:Reused", ptr %t221, i32 0, i32 5
  store i1 %t220, ptr %t222, !tbaa !21
  call void @__olang_scope_close(ptr %s10)
  br label %bb117
bb71:
  %t223 = load i1, ptr %l106, !tbaa !21
  br i1 %t223, label %bb72, label %bb73
bb72:
  %t224 = load ptr, ptr %lp7
  %t225 = getelementptr %"compiler/emit:Reused", ptr %t224, i32 0, i32 6
  store ptr %t225, ptr %l107, !tbaa !29
  %t226 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t226, ptr %l108, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t227, 0
  store i64 %t230, ptr %l111, !tbaa !24
  %t231 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 0
  store i64 %t232, ptr %l112, !tbaa !24
  %t233 = icmp sge i64 5, 0
  br i1 %t233, label %bb74, label %bb75
bb73:
  store %olang.scope zeroinitializer, ptr %s14
  %t235 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t237 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s14, { i64, ptr } %t235, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d178, i32 0, i32 1) })
  store i1 %t237, ptr %l120
  br label %bb81
bb74:
  %t238 = load i64, ptr %l111, !tbaa !24
  %t239 = icmp sle i64 5, %t238
  br i1 %t239, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_bf473baf1c029b13_418433d5ed11016f)
  unreachable
bb76:
  %t241 = load i64, ptr %l111, !tbaa !24
  %t242 = load i64, ptr %l112, !tbaa !24
  %t243 = icmp sle i64 %t241, %t242
  br i1 %t243, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_bf473baf1c029b13_418433d5ed11016f)
  unreachable
bb78:
  %t245 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = load i64, ptr %l111, !tbaa !24
  %t248 = getelementptr i8, ptr %t246, i64 5
  %t249 = sub i64 %t247, 5
  %t250 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t248, 1
  %t253 = extractvalue { i64, ptr } %t251, 1
  %t254 = extractvalue { i64, ptr } %t251, 0
  %t255 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t254)
  call void @olang_textcopy(ptr %t255, ptr %t253, i64 %t254)
  %t256 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = extractvalue { i64, ptr } %t257, 1
  %t261 = mul i64 %t259, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t262, ptr %t260, i64 %t261, i1 false)
  %t263 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  %t265 = load ptr, ptr %l107, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t265, { i64, ptr } %t264)
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_bf473baf1c029b13_418433d5ed11016f)
  unreachable
bb80:
  br label %bb116
bb81:
  %t267 = load i1, ptr %l120, !tbaa !21
  br i1 %t267, label %bb82, label %bb83
bb82:
  %t268 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t268)
  br label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s16
  %t271 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t273 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s16, { i64, ptr } %t271, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d179, i32 0, i32 1) })
  store i1 %t273, ptr %l124
  br label %bb85
bb84:
  br label %bb115
bb85:
  %t274 = load i1, ptr %l124, !tbaa !21
  br i1 %t274, label %bb86, label %bb87
bb86:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb89
bb87:
  %t275 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t277 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s16, { i64, ptr } %t275, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d180, i32 0, i32 1) })
  store i1 %t277, ptr %l127
  br label %bb88
bb88:
  %t278 = load i1, ptr %l127, !tbaa !21
  store i1 %t278, ptr %l125, !tbaa !21
  br label %bb89
bb89:
  %t279 = load i1, ptr %l125, !tbaa !21
  br i1 %t279, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s17
  %t280 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t284 = icmp slt i64 %t282, 71
  br i1 %t284, label %bb92, label %bb93
bb91:
  br label %bb114
bb92:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb94
bb93:
  %t286 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t286, ptr %l132, !tbaa !27
  %t287 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i8, ptr %t288, i64 69
  %t290 = load i8, ptr %t289, !tbaa !32
  %t292 = icmp ne i8 %t290, 32
  store i1 %t292, ptr %l131, !tbaa !21
  br label %bb94
bb94:
  %t294 = load i1, ptr %l131, !tbaa !21
  br i1 %t294, label %bb95, label %bb96
bb95:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb96:
  br label %bb97
bb97:
  %t296 = load ptr, ptr %lp7
  %t297 = getelementptr %"compiler/emit:Reused", ptr %t296, i32 0, i32 3
  store ptr %t297, ptr %l136, !tbaa !29
  %t298 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t298, ptr %l137, !tbaa !27
  %t299 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t299, 0
  store i64 %t300, ptr %l138, !tbaa !24
  %t301 = icmp sge i64 5, 0
  br i1 %t301, label %bb98, label %bb99
bb98:
  %t303 = icmp sle i64 5, 69
  br i1 %t303, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_bf364593c37f36b6_b34dd6c09cfd1bf2)
  unreachable
bb100:
  %t305 = load i64, ptr %l138, !tbaa !24
  %t306 = icmp sle i64 69, %t305
  br i1 %t306, label %bb102, label %bb103
bb101:
  call void @__olang_check_failed(ptr @olang_loc_bf364593c37f36b6_b34dd6c09cfd1bf2)
  unreachable
bb102:
  %t308 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = getelementptr i8, ptr %t309, i64 5
  %t311 = sub i64 69, 5
  %t312 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t310, 1
  %t315 = extractvalue { i64, ptr } %t313, 1
  %t316 = extractvalue { i64, ptr } %t313, 0
  %t317 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t316)
  call void @olang_textcopy(ptr %t317, ptr %t315, i64 %t316)
  %t318 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t317, 1
  %t321 = extractvalue { i64, ptr } %t319, 0
  %t322 = extractvalue { i64, ptr } %t319, 1
  %t323 = mul i64 %t321, 1
  %t324 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t323)
  call void @llvm.memcpy.p0.p0.i64(ptr %t324, ptr %t322, i64 %t323, i1 false)
  %t325 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  %t327 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t327, { i64, ptr } %t326)
  br label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_bf364593c37f36b6_b34dd6c09cfd1bf2)
  unreachable
bb104:
  %t329 = load ptr, ptr %lp7
  %t330 = getelementptr %"compiler/emit:Reused", ptr %t329, i32 0, i32 1
  store ptr %t330, ptr %l145, !tbaa !29
  %t331 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t331, ptr %l146, !tbaa !27
  %t332 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t332, 0
  store i64 %t335, ptr %l149, !tbaa !24
  %t336 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 0
  store i64 %t337, ptr %l150, !tbaa !24
  %t338 = icmp sge i64 70, 0
  br i1 %t338, label %bb105, label %bb106
bb105:
  %t340 = load i64, ptr %l149, !tbaa !24
  %t341 = icmp sle i64 70, %t340
  br i1 %t341, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_886f2cb50b6e4c95_721d2f1d3fca9e71)
  unreachable
bb107:
  %t343 = load i64, ptr %l149, !tbaa !24
  %t344 = load i64, ptr %l150, !tbaa !24
  %t345 = icmp sle i64 %t343, %t344
  br i1 %t345, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_886f2cb50b6e4c95_721d2f1d3fca9e71)
  unreachable
bb109:
  %t347 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = load i64, ptr %l149, !tbaa !24
  %t350 = getelementptr i8, ptr %t348, i64 70
  %t351 = sub i64 %t349, 70
  %t352 = insertvalue { i64, ptr } undef, i64 %t351, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t350, 1
  %t355 = extractvalue { i64, ptr } %t353, 1
  %t356 = extractvalue { i64, ptr } %t353, 0
  %t357 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t356)
  call void @olang_textcopy(ptr %t357, ptr %t355, i64 %t356)
  %t358 = insertvalue { i64, ptr } undef, i64 %t356, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t357, 1
  %t361 = extractvalue { i64, ptr } %t359, 0
  %t362 = extractvalue { i64, ptr } %t359, 1
  %t363 = mul i64 %t361, 1
  %t364 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t364, ptr %t362, i64 %t363, i1 false)
  %t365 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  %t367 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v3, ptr %v3, ptr %t367, { i64, ptr } %t366)
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_886f2cb50b6e4c95_721d2f1d3fca9e71)
  unreachable
bb111:
  %t369 = load ptr, ptr %lp7
  %t370 = getelementptr %"compiler/emit:Reused", ptr %t369, i32 0, i32 2
  store ptr %t370, ptr %l157, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t373 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s17, { i64, ptr } %t371, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store i1 %t373, ptr %l159
  br label %bb112
bb112:
  %t374 = load ptr, ptr %l157, !tbaa !29
  %t375 = load i1, ptr %l159, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v3, ptr %t374, i1 %t375)
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s17)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s16)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s14)
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s11)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s9)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s7)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s5)
  br label %bb120
bb120:
  br label %bb38
bb121:
  %t376 = load i1, ptr %l9, !tbaa !21
  %t378 = xor i1 %t376, true
  br i1 %t378, label %bb122, label %bb123
bb122:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb125
bb123:
  %t380 = load ptr, ptr %lp7
  %t381 = getelementptr %"compiler/emit:Reused", ptr %t380, i32 0, i32 1
  %t383 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t381)
  store i64 %t383, ptr %l164
  br label %bb124
bb124:
  %t384 = load i64, ptr %l164, !tbaa !24
  %t385 = icmp eq i64 %t384, 0
  store i1 %t385, ptr %l162, !tbaa !21
  br label %bb125
bb125:
  %t387 = load i1, ptr %l162, !tbaa !21
  br i1 %t387, label %bb126, label %bb127
bb126:
  store i1 true, ptr %l166, !tbaa !21
  br label %bb130
bb127:
  %t390 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !29
  %t393 = getelementptr %"compiler/generic:Program", ptr %t391, i32 0, i32 3
  store ptr %t393, ptr %l169, !tbaa !29
  %t395 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t395, ptr %l171
  br label %bb128
bb128:
  %t396 = load ptr, ptr %l169, !tbaa !29
  %t397 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t398 = call i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %s0, ptr %t396, { i64, ptr } %t397)
  store i1 %t398, ptr %l172
  br label %bb129
bb129:
  %t399 = load i1, ptr %l172, !tbaa !21
  %t400 = xor i1 %t399, true
  store i1 %t400, ptr %l166, !tbaa !21
  br label %bb130
bb130:
  %t402 = load i1, ptr %l166, !tbaa !21
  br i1 %t402, label %bb131, label %bb132
bb131:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb132:
  br label %bb133
bb133:
  %t404 = load i64, ptr %l4, !tbaa !24
  %t406 = icmp sge i64 %t404, 0
  br i1 %t406, label %bb134, label %bb135
bb134:
  %t408 = load ptr, ptr %lp7
  %t409 = getelementptr %"compiler/emit:Reused", ptr %t408, i32 0, i32 5
  %t410 = load i1, ptr %t409, !tbaa !21
  %t411 = load i64, ptr %l4, !tbaa !24
  %t413 = icmp eq i64 %t411, 1
  %t416 = icmp ne i1 %t410, %t413
  store i1 %t416, ptr %l177, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb136
bb136:
  %t418 = load i1, ptr %l177, !tbaa !21
  br i1 %t418, label %bb137, label %bb138
bb137:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb138:
  br label %bb139
bb139:
  store i64 0, ptr %l12, !tbaa !24
  %t420 = load ptr, ptr %lp7
  %t421 = getelementptr %"compiler/emit:Reused", ptr %t420, i32 0, i32 1
  %t423 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t421)
  store i64 %t423, ptr %l184
  br label %bb140
bb140:
  %t424 = load i64, ptr %l184, !tbaa !24
  store i64 %t424, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t425 = load i64, ptr %l13, !tbaa !24
  %t426 = load i64, ptr %l12, !tbaa !24
  %t429 = icmp sgt i64 %t425, %t426
  br i1 %t429, label %bb141, label %bb142
bb141:
  %t431 = load i64, ptr %l14, !tbaa !24
  %t433 = icmp sgt i64 %t431, 0
  br i1 %t433, label %bb143, label %bb144
bb142:
  store i64 0, ptr %l188, !tbaa !24
  br label %bb146
bb143:
  %t435 = load i64, ptr %l13, !tbaa !24
  %t436 = load i64, ptr %l12, !tbaa !24
  %t439 = sub i64 %t435, %t436
  %t440 = load i64, ptr %l14, !tbaa !24
  %t443 = add i64 %t439, %t440
  %t445 = sub i64 %t443, 1
  %t446 = load i64, ptr %l14, !tbaa !24
  %t449 = sdiv i64 %t445, %t446
  store i64 %t449, ptr %l191, !tbaa !24
  br label %bb145
bb144:
  store i64 0, ptr %l191, !tbaa !24
  br label %bb145
bb145:
  %t451 = load i64, ptr %l191, !tbaa !24
  store i64 %t451, ptr %l188, !tbaa !24
  br label %bb146
bb146:
  %t452 = load i64, ptr %l188, !tbaa !24
  store i64 %t452, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb147
bb147:
  store %olang.scope zeroinitializer, ptr %s24
  %t453 = load i64, ptr %l16, !tbaa !24
  %t454 = load i64, ptr %l15, !tbaa !24
  %t457 = icmp slt i64 %t453, %t454
  %t459 = xor i1 %t457, true
  br i1 %t459, label %bb148, label %bb149
bb148:
  call void @__olang_scope_close(ptr %s24)
  br label %bb165
bb149:
  br label %bb150
bb150:
  %t461 = load i64, ptr %l12, !tbaa !24
  %t462 = load i64, ptr %l16, !tbaa !24
  %t463 = load i64, ptr %l14, !tbaa !24
  %t466 = mul i64 %t462, %t463
  %t469 = add i64 %t461, %t466
  store i64 %t469, ptr %l17, !tbaa !24
  %t471 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t472 = load i64, ptr %l17, !tbaa !24
  %t474 = extractvalue { i64, ptr } %t471, 1
  %t475 = extractvalue { i64, ptr } %t471, 0
  %t476 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t477 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t478 = add i64 %t475, %t477
  %t480 = call i64 @__olang_fmt_i64(ptr null, i64 %t472)
  %t481 = add i64 %t478, %t480
  %t482 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t483 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t484 = add i64 %t481, %t483
  %t485 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t484)
  call void @olang_textcopy(ptr %t485, ptr %t474, i64 %t475)
  %t486 = getelementptr i8, ptr %t485, i64 %t475
  call void @olang_textcopy(ptr %t486, ptr %t476, i64 %t477)
  %t487 = getelementptr i8, ptr %t486, i64 %t477
  %t488 = call i64 @__olang_fmt_i64(ptr %t487, i64 %t472)
  %t489 = getelementptr i8, ptr %t487, i64 %t480
  call void @olang_textcopy(ptr %t489, ptr %t482, i64 %t483)
  %t490 = insertvalue { i64, ptr } undef, i64 %t484, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t485, 1
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t494 = extractvalue { i64, ptr } %t491, 1
  %t495 = mul i64 %t493, 1
  %t496 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t495)
  call void @llvm.memcpy.p0.p0.i64(ptr %t496, ptr %t494, i64 %t495, i1 false)
  %t497 = insertvalue { i64, ptr } undef, i64 %t493, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  %t500 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v2, ptr %v2, { i64, ptr } %t498)
  %t501 = extractvalue { i32, { i64, ptr } } %t500, 1
  %t502 = extractvalue { i32, { i64, ptr } } %t500, 0
  store i32 %t502, ptr %l215
  %t503 = icmp ne i32 %t502, 0
  br i1 %t503, label %bb152, label %ok.504, !prof !99
ok.504:
  store { i64, ptr } %t501, ptr %l214
  br label %bb151
bb151:
  %t505 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t505, ptr %l209, !tbaa !27
  br label %bb156
bb152:
  %t506 = load i32, ptr %l215, !tbaa !23
  %t507 = ashr i32 %t506, 16
  %t509 = icmp eq i32 %t507, 1
  store i1 %t509, ptr %l217, !tbaa !21
  %t510 = load i32, ptr %l215, !tbaa !23
  %t511 = ashr i32 %t510, 16
  %t513 = icmp eq i32 %t511, 1
  br i1 %t513, label %bb153, label %bb154
bb153:
  call void @__olang_errpay_pop()
  br label %bb154
bb154:
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb156:
  %t516 = load { i64, ptr }, ptr %l209, !tbaa !27
  store { i64, ptr } %t516, ptr %l18, !tbaa !27
  %t517 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t519 = call { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v2, ptr %s24, { i64, ptr } %t517)
  store { i64, ptr } %t519, ptr %l222
  br label %bb157
bb157:
  %t520 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t520, 0
  %t522 = extractvalue { i64, ptr } %t520, 1
  %t523 = mul i64 %t521, 1
  %t524 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t523)
  call void @llvm.memcpy.p0.p0.i64(ptr %t524, ptr %t522, i64 %t523, i1 false)
  %t525 = insertvalue { i64, ptr } undef, i64 %t521, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t524, 1
  store { i64, ptr } %t526, ptr %l223, !tbaa !27
  %t527 = load ptr, ptr %lp7
  %t528 = getelementptr %"compiler/emit:Reused", ptr %t527, i32 0, i32 3
  %t529 = load i64, ptr %l17, !tbaa !24
  %t532 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t528, i64 %t529)
  store { i64, ptr } %t532, ptr %l226
  br label %bb158
bb158:
  %t533 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t534 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t535 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s24, ptr %v3, { i64, ptr } %t533, { i64, ptr } %t534)
  store i1 %t535, ptr %l227
  br label %bb159
bb159:
  %t536 = load i1, ptr %l227, !tbaa !21
  %t537 = xor i1 %t536, true
  br i1 %t537, label %bb160, label %bb161
bb160:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb161:
  br label %bb162
bb162:
  %t541 = load i64, ptr %l2, !tbaa !24
  %t542 = load i64, ptr %l17, !tbaa !24
  %t544 = call i64 @__olang_fmt_i64(ptr null, i64 %t541)
  %t545 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t546 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t547 = add i64 %t544, %t546
  %t549 = call i64 @__olang_fmt_i64(ptr null, i64 %t542)
  %t550 = add i64 %t547, %t549
  %t551 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t550)
  %t552 = call i64 @__olang_fmt_i64(ptr %t551, i64 %t541)
  %t553 = getelementptr i8, ptr %t551, i64 %t544
  call void @olang_textcopy(ptr %t553, ptr %t545, i64 %t546)
  %t554 = getelementptr i8, ptr %t553, i64 %t546
  %t555 = call i64 @__olang_fmt_i64(ptr %t554, i64 %t542)
  %t556 = insertvalue { i64, ptr } undef, i64 %t550, 0
  %t557 = insertvalue { i64, ptr } %t556, ptr %t551, 1
  %t558 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_Hdbddd02cd2a4e500be7fb1cacf89c9ab(ptr %v2, ptr %v2, ptr %a3, { i64, ptr } %t557, { i64, ptr } %t558)
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s24)
  br label %bb164
bb164:
  %t562 = load i64, ptr %l16, !tbaa !24
  %t564 = add i64 %t562, 1
  store i64 %t564, ptr %l16, !tbaa !24
  br label %bb147
bb165:
  %t566 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %l237, ptr %t566, i64 160, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l237, i64 160, i1 false)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2folang_2etwinsTo(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l36 = alloca ptr
  %l40 = alloca %"compiler/typed:Plan"
  %l42 = alloca %"compiler/typed:Plan"
  %l44 = alloca ptr
  %l48 = alloca i1
  %t62 = alloca %"compiler/typed:Plan", align 8
  %t65 = alloca %"compiler/typed:Plan", align 8
  %t68 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinCount(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l10
  br label %bb1
bb1:
  %t7 = load i64, ptr %l10, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l14, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lower:Lowerer", ptr %t54, i32 0, i32 3
  store ptr %t56, ptr %l36, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/free:Free", ptr %t57, i32 0, i32 2
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinPlan(ptr %t62, ptr %v1, ptr %v1, ptr %t60, i64 %t61)
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t62, i64 536, i1 false)
  br label %bb12
bb12:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t65, ptr %v1, ptr %l40)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t65, i64 536, i1 false)
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l36, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t68, ptr %l42, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lower:Lowerer", ptr %t69, i32 0, i32 4
  store ptr %t71, ptr %l44, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/free:Free", ptr %t72, i32 0, i32 2
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinOwn(ptr %v1, ptr %t75, i64 %t76)
  store i1 %t79, ptr %l48
  br label %bb15
bb15:
  %t80 = load ptr, ptr %l44, !tbaa !29
  %t81 = load i1, ptr %l48, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t80, i1 %t81)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2folang_3aCommandLine_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"compiler/olang:CommandLine"
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !24
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l14
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d185, i32 0, i32 1) }, ptr %l3, !tbaa !27
  store i1 false, ptr %l4, !tbaa !21
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l15
  br label %bb3
bb3:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l5
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l16
  br label %bb4
bb4:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d186, i32 0, i32 1) }, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %l8, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d188, i32 0, i32 1) }, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d189, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t9 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 0
  %t10 = load i64, ptr %l0, !tbaa !24
  store i64 %t10, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 1
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t11
  %t13 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 2
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %t13
  %t15 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 3
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t16, ptr %t15, !tbaa !27
  %t17 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 4
  %t18 = load i1, ptr %l4, !tbaa !21
  store i1 %t18, ptr %t17, !tbaa !21
  %t19 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 5
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t19
  %t21 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t21
  %t23 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 7
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 8
  %t26 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t26, ptr %t25, !tbaa !27
  %t27 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 9
  store i1 false, ptr %t27, !tbaa !21
  %t29 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 10
  %t30 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t30, ptr %t29, !tbaa !27
  %t31 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 11
  store i1 false, ptr %t31, !tbaa !21
  %t33 = getelementptr %"compiler/olang:CommandLine", ptr %l17, i32 0, i32 12
  %t34 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t34, ptr %t33, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l17, i64 240, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/olang:Passes" @compiler_2folang_3aPasses_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/olang:Passes"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/olang:Passes" undef, i64 0, 0
  store %"compiler/olang:Passes" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/olang:Passes", ptr %rv
  ret %"compiler/olang:Passes" %rr
}

define i32 @main(i32 %argc, ptr %argv) #0 {
entry:
  store i32 %argc, ptr @__olang_argc
  store ptr %argv, ptr @__olang_argv
  call void @__olang_thread_init()
  call void @std_2ffilepath_2elivePath_2einit()
  call void @compiler_2folang_2emain()
  call void @__olang_prog_end()
  ret i32 0
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-debug" }>, align 8
@.d7 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-race" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-quick" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"fuzzing" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"OLANG_OBJECTS" }>, align 8
declare void @__olang_errpay_pop()
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-debug" }>, align 8
@.d26 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-race" }>, align 8
@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"-sanitize" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-quick" }>, align 8
@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-memory" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-fuzz" }>, align 8
@.d32 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"-bench" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"TargetOs" }>, align 8
@.d35 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"TargetArch" }>, align 8
@.d36 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"TargetCpu" }>, align 8
@.d37 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"TargetVectorBits" }>, align 8
@.d38 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"TargetHasFma" }>, align 8
@.d39 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"DebugBuild" }>, align 8
@.d40 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"RaceBuild" }>, align 8
@.d41 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"TestBuild" }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-g" }>, align 8
@.d43 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-fsanitize=thread" }>, align 8
@.d44 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"-fno-omit-frame-pointer" }>, align 8
@.d45 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"-gline-tables-only" }>, align 8
@.d46 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"-gline-tables-only" }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O2" }>, align 8
@.d48 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-Xclang" }>, align 8
@.d49 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"-disable-llvm-passes" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d51 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-S" }>, align 8
@.d54 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"-emit-llvm" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"-" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d60 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d70 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d71 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"its code is lost" }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"a C import's code needs clang to be compiled" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d75 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"-shared" }>, align 8
@.d76 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"-fPIC" }>, align 8
@.d77 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-O2" }>, align 8
@.d78 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-w" }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-x" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d82 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d83 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"clang could not be run" }>, align 8
@.d84 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"clang could not compile it: " }>, align 8
@.d85 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d86 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"its library cannot be written" }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"olang: reuse check: " }>, align 8
@.d89 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" differs\0A" }>, align 8
@.d90 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"olang: reuse check: " }>, align 8
@.d91 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" objects, " }>, align 8
@.d92 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" written afresh\0A" }>, align 8
@.d93 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"olang: reuse check: " }>, align 8
@.d94 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" modules reused, every object the same\0A" }>, align 8
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

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aScoper(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Scoper"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l49 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"compiler/typed:Plan"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l81 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l83 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l85 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l87 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l107 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l109 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l115 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l117 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l119 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l121 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l123 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l125 = alloca %"compiler/scope:fnRecs"
  %l127 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l129 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l147 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l149 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l159 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l161 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l163 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l169 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l171 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l173 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l175 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l177 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l179 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l181 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l183 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l185 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l187 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l189 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l193 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l195 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l197 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l199 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l201 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l203 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l205 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l207 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l209 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l211 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l215 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l217 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l219 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l223 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l225 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l231 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l233 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l235 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l237 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l239 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l241 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l243 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l245 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l247 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l249 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l251 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l253 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l255 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l257 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l258 = alloca { i64, ptr }
  %l259 = alloca i64
  %l260 = alloca { i64, ptr }
  %l262 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l264 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l266 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l268 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l270 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l272 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l274 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l276 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l278 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l280 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l282 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l284 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l286 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l288 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l290 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l292 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l294 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l296 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t123 = alloca %"compiler/typed:Plan", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 8968, i1 false)
  %t2 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 1
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 3
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 6
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 7
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 8
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l13
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 9
  %t34 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0, ptr %t32)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t35, ptr %t36
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 10
  %t39 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %t41
  %t42 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 11
  %t44 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t42)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %t46
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 12
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 13
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 14
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 15
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 16
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 17
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 18
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 19
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t82)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %t86
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 20
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t87)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l37
  br label %bb18
bb18:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t91 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %t91
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 21
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l39
  br label %bb19
bb19:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %t96
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 22
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t97)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l41
  br label %bb20
bb20:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  %t101 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %t101
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 24
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l43
  br label %bb21
bb21:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %t106
  %t107 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 25
  %t109 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t107)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l45
  br label %bb22
bb22:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t111
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 31
  %t114 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t114, ptr %l47
  br label %bb23
bb23:
  %t115 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l47
  %t116 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t115, ptr %t116
  %t117 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 32
  %t119 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H90251316700b89c67e565c550ab10b7e(ptr %v0, ptr %t117)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t119, ptr %l49
  br label %bb24
bb24:
  %t120 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l49
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t120, ptr %t121
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 33
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t123, ptr %v0, ptr %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l51, ptr %t123, i64 536, i1 false)
  br label %bb25
bb25:
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 33
  call void @llvm.memmove.p0.p0.i64(ptr %t125, ptr %l51, i64 536, i1 false)
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 34
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t126)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l53
  br label %bb26
bb26:
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  %t130 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %t130
  %t131 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 35
  %t133 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t131)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l55
  br label %bb27
bb27:
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  %t135 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %t135
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 36
  %t138 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t136)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t138, ptr %l57
  br label %bb28
bb28:
  %t139 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l57
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t139, ptr %t140
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 37
  %t143 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l59
  br label %bb29
bb29:
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t145
  %t146 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 38
  %t148 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t146)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l61
  br label %bb30
bb30:
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  %t150 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %t150
  %t151 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 39
  %t153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t151)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l63
  br label %bb31
bb31:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %t155
  %t156 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 40
  %t158 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t156)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l65
  br label %bb32
bb32:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  %t160 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %t160
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 43
  %t163 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t161)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t163, ptr %l67
  br label %bb33
bb33:
  %t164 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t164, ptr %t165
  %t166 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 44
  %t168 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t166)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t168, ptr %l69
  br label %bb34
bb34:
  %t169 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  %t170 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 44
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t169, ptr %t170
  %t171 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 45
  %t173 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t171)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t173, ptr %l71
  br label %bb35
bb35:
  %t174 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t174, ptr %t175
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 46
  %t178 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t176)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t178, ptr %l73
  br label %bb36
bb36:
  %t179 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l73
  %t180 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t179, ptr %t180
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 47
  %t183 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t181)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %l75
  br label %bb37
bb37:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  %t185 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t185
  %t186 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 48
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t186)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l77
  br label %bb38
bb38:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  %t190 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %t190
  %t191 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 49
  %t193 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t191)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t193, ptr %l79
  br label %bb39
bb39:
  %t194 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 49
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t194, ptr %t195
  %t196 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 50
  %t198 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t196)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t198, ptr %l81
  br label %bb40
bb40:
  %t199 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l81
  %t200 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t199, ptr %t200
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 53
  %t203 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %t201)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t203, ptr %l83
  br label %bb41
bb41:
  %t204 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83
  %t205 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 53
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t204, ptr %t205
  %t206 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 54
  %t208 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t206)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t208, ptr %l85
  br label %bb42
bb42:
  %t209 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t209, ptr %t210
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 55
  %t213 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t211)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t213, ptr %l87
  br label %bb43
bb43:
  %t214 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l87
  %t215 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t214, ptr %t215
  %t216 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 58
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t216)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l89
  br label %bb44
bb44:
  %t219 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  %t220 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t219, ptr %t220
  %t221 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 60
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %t221)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l91
  br label %bb45
bb45:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  %t225 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %t225
  %t226 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 61
  %t228 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t226)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l93
  br label %bb46
bb46:
  %t229 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  %t230 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %t230
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 62
  %t233 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t231)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l95
  br label %bb47
bb47:
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  %t235 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %t235
  %t236 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 66
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t236)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l97
  br label %bb48
bb48:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  %t240 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %t240
  %t241 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 67
  %t243 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t241)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243, ptr %l99
  br label %bb49
bb49:
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  %t245 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %t245
  %t246 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 68
  %t248 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t246)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l101
  br label %bb50
bb50:
  %t249 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %t250
  %t251 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 69
  %t253 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t251)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l103
  br label %bb51
bb51:
  %t254 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  %t255 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t254, ptr %t255
  %t256 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 71
  %t258 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t256)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t258, ptr %l105
  br label %bb52
bb52:
  %t259 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l105
  %t260 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t259, ptr %t260
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 73
  %t263 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t261)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t263, ptr %l107
  br label %bb53
bb53:
  %t264 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t264, ptr %t265
  %t266 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 75
  %t268 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t266)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t268, ptr %l109
  br label %bb54
bb54:
  %t269 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109
  %t270 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t269, ptr %t270
  %t271 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 81
  %t273 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t271)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l111
  br label %bb55
bb55:
  %t274 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  %t275 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t274, ptr %t275
  %t276 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 92
  %t278 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %t276)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t278, ptr %l113
  br label %bb56
bb56:
  %t279 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l113
  %t280 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 92
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t279, ptr %t280
  %t281 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 93
  %t283 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t281)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t283, ptr %l115
  br label %bb57
bb57:
  %t284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l115
  %t285 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 93
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t284, ptr %t285
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 94
  %t288 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t286)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t288, ptr %l117
  br label %bb58
bb58:
  %t289 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l117
  %t290 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 94
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t289, ptr %t290
  %t291 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 95
  %t293 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t291)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t293, ptr %l119
  br label %bb59
bb59:
  %t294 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119
  %t295 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 95
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t294, ptr %t295
  %t296 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 96
  %t298 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t296)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t298, ptr %l121
  br label %bb60
bb60:
  %t299 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l121
  %t300 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 96
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t299, ptr %t300
  %t301 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 97
  %t303 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H09c3079d182b8cef4a686eac89911323(ptr %v0, ptr %t301)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t303, ptr %l123
  br label %bb61
bb61:
  %t304 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l123
  %t305 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 97
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %t305
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 98
  %t308 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t306)
  store %"compiler/scope:fnRecs" %t308, ptr %l125
  br label %bb62
bb62:
  %t309 = load %"compiler/scope:fnRecs", ptr %l125
  %t310 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 98
  store %"compiler/scope:fnRecs" %t309, ptr %t310
  %t311 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 102
  %t313 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H1486ed990d77c8f720439dfec9d6318c(ptr %v0, ptr %t311)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t313, ptr %l127
  br label %bb63
bb63:
  %t314 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l127
  %t315 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 102
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t314, ptr %t315
  %t316 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 103
  %t318 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t316)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t318, ptr %l129
  br label %bb64
bb64:
  %t319 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l129
  %t320 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t319, ptr %t320
  %t321 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 107
  %t323 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t321)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l131
  br label %bb65
bb65:
  %t324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  %t325 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 107
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %t325
  %t326 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 108
  %t328 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t326)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %l133
  br label %bb66
bb66:
  %t329 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  %t330 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t329, ptr %t330
  %t331 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 109
  %t333 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t331)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t333, ptr %l135
  br label %bb67
bb67:
  %t334 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  %t335 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t334, ptr %t335
  %t336 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 110
  %t338 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t336)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t338, ptr %l137
  br label %bb68
bb68:
  %t339 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l137
  %t340 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t339, ptr %t340
  %t341 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 111
  %t343 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t341)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t343, ptr %l139
  br label %bb69
bb69:
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  %t345 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %t345
  %t346 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 112
  %t348 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t346)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %l141
  br label %bb70
bb70:
  %t349 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  %t350 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t349, ptr %t350
  %t351 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 113
  %t353 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t351)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t353, ptr %l143
  br label %bb71
bb71:
  %t354 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l143
  %t355 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 113
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t354, ptr %t355
  %t356 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 114
  %t358 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t356)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t358, ptr %l145
  br label %bb72
bb72:
  %t359 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l145
  %t360 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 114
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t359, ptr %t360
  %t361 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 116
  %t363 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t361)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t363, ptr %l147
  br label %bb73
bb73:
  %t364 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l147
  %t365 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 116
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t364, ptr %t365
  %t366 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 117
  %t368 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t366)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t368, ptr %l149
  br label %bb74
bb74:
  %t369 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l149
  %t370 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 117
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t369, ptr %t370
  %t371 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 118
  %t373 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t371)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t373, ptr %l151
  br label %bb75
bb75:
  %t374 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  %t375 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 118
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t374, ptr %t375
  %t376 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 119
  %t378 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hdb5ecd177dbbe8266fbcd9adcd3a6e46(ptr %v0, ptr %t376)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t378, ptr %l153
  br label %bb76
bb76:
  %t379 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153
  %t380 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 119
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t379, ptr %t380
  %t381 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 121
  %t383 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t381)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l155
  br label %bb77
bb77:
  %t384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  %t385 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 121
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %t385
  %t386 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 122
  %t388 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t386)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %l157
  br label %bb78
bb78:
  %t389 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l157
  %t390 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 122
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t389, ptr %t390
  %t391 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 123
  %t393 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0, ptr %t391)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t393, ptr %l159
  br label %bb79
bb79:
  %t394 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159
  %t395 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 123
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t394, ptr %t395
  %t396 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 129
  %t398 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t396)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l161
  br label %bb80
bb80:
  %t399 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l161
  %t400 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %t400
  %t401 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 134
  %t403 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t401)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t403, ptr %l163
  br label %bb81
bb81:
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l163
  %t405 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 134
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %t405
  %t406 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 135
  %t408 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t406)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l165
  br label %bb82
bb82:
  %t409 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165
  %t410 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t409, ptr %t410
  %t411 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 149
  %t413 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t411)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t413, ptr %l167
  br label %bb83
bb83:
  %t414 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l167
  %t415 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 149
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t414, ptr %t415
  %t416 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 150
  %t418 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t416)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t418, ptr %l169
  br label %bb84
bb84:
  %t419 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169
  %t420 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 150
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t419, ptr %t420
  %t421 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 151
  %t423 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t421)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t423, ptr %l171
  br label %bb85
bb85:
  %t424 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l171
  %t425 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t424, ptr %t425
  %t426 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 152
  %t428 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t426)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t428, ptr %l173
  br label %bb86
bb86:
  %t429 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173
  %t430 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 152
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t429, ptr %t430
  %t431 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 153
  %t433 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t431)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t433, ptr %l175
  br label %bb87
bb87:
  %t434 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175
  %t435 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 153
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t434, ptr %t435
  %t436 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 154
  %t438 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t436)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t438, ptr %l177
  br label %bb88
bb88:
  %t439 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l177
  %t440 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 154
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t439, ptr %t440
  %t441 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 155
  %t443 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t441)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t443, ptr %l179
  br label %bb89
bb89:
  %t444 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l179
  %t445 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t444, ptr %t445
  %t446 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 156
  %t448 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t446)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t448, ptr %l181
  br label %bb90
bb90:
  %t449 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181
  %t450 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t449, ptr %t450
  %t451 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 158
  %t453 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t451)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t453, ptr %l183
  br label %bb91
bb91:
  %t454 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l183
  %t455 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 158
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t454, ptr %t455
  %t456 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 160
  %t458 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e(ptr %v0, ptr %t456)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t458, ptr %l185
  br label %bb92
bb92:
  %t459 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185
  %t460 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 160
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t459, ptr %t460
  %t461 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 161
  %t463 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t461)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t463, ptr %l187
  br label %bb93
bb93:
  %t464 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l187
  %t465 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 161
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t464, ptr %t465
  %t466 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 162
  %t468 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t466)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t468, ptr %l189
  br label %bb94
bb94:
  %t469 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189
  %t470 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 162
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %t470
  %t471 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 163
  %t473 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t471)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t473, ptr %l191
  br label %bb95
bb95:
  %t474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l191
  %t475 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 163
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, ptr %t475
  %t476 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 164
  %t478 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t476)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %l193
  br label %bb96
bb96:
  %t479 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l193
  %t480 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 164
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t479, ptr %t480
  %t481 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 165
  %t483 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t481)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t483, ptr %l195
  br label %bb97
bb97:
  %t484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l195
  %t485 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 165
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t484, ptr %t485
  %t486 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 166
  %t488 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t486)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t488, ptr %l197
  br label %bb98
bb98:
  %t489 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l197
  %t490 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 166
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t489, ptr %t490
  %t491 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 167
  %t493 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t491)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t493, ptr %l199
  br label %bb99
bb99:
  %t494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l199
  %t495 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, ptr %t495
  %t496 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 168
  %t498 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t496)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t498, ptr %l201
  br label %bb100
bb100:
  %t499 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l201
  %t500 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t499, ptr %t500
  %t501 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 169
  %t503 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t501)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t503, ptr %l203
  br label %bb101
bb101:
  %t504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l203
  %t505 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t504, ptr %t505
  %t506 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 170
  %t508 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H02d7c113dc0c806945ae5d5c07175526(ptr %v0, ptr %t506)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t508, ptr %l205
  br label %bb102
bb102:
  %t509 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l205
  %t510 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 170
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t509, ptr %t510
  %t511 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 171
  %t513 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %t511)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t513, ptr %l207
  br label %bb103
bb103:
  %t514 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l207
  %t515 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 171
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t514, ptr %t515
  %t516 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 172
  %t518 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t516)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t518, ptr %l209
  br label %bb104
bb104:
  %t519 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l209
  %t520 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 172
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t519, ptr %t520
  %t521 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 174
  %t523 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t521)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t523, ptr %l211
  br label %bb105
bb105:
  %t524 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l211
  %t525 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 174
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t524, ptr %t525
  %t526 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 175
  %t528 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t526)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t528, ptr %l213
  br label %bb106
bb106:
  %t529 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l213
  %t530 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 175
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t529, ptr %t530
  %t531 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 176
  %t533 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t531)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t533, ptr %l215
  br label %bb107
bb107:
  %t534 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l215
  %t535 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t534, ptr %t535
  %t536 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 177
  %t538 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t536)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t538, ptr %l217
  br label %bb108
bb108:
  %t539 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l217
  %t540 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 177
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t539, ptr %t540
  %t541 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 179
  %t543 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t541)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t543, ptr %l219
  br label %bb109
bb109:
  %t544 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l219
  %t545 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 179
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t544, ptr %t545
  %t546 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 180
  %t548 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t546)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t548, ptr %l221
  br label %bb110
bb110:
  %t549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  %t550 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %t550
  %t551 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 181
  %t553 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t551)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %l223
  br label %bb111
bb111:
  %t554 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l223
  %t555 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 181
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t554, ptr %t555
  %t556 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 182
  %t558 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t556)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t558, ptr %l225
  br label %bb112
bb112:
  %t559 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225
  %t560 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 182
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %t560
  %t561 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 183
  %t563 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t561)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t563, ptr %l227
  br label %bb113
bb113:
  %t564 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  %t565 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 183
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t564, ptr %t565
  %t566 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 186
  %t568 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e(ptr %v0, ptr %t566)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t568, ptr %l229
  br label %bb114
bb114:
  %t569 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l229
  %t570 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 186
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t569, ptr %t570
  %t571 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 187
  %t573 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t571)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t573, ptr %l231
  br label %bb115
bb115:
  %t574 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l231
  %t575 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 187
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t574, ptr %t575
  %t576 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 188
  %t578 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %t576)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t578, ptr %l233
  br label %bb116
bb116:
  %t579 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l233
  %t580 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 188
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t579, ptr %t580
  %t581 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 189
  %t583 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t581)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t583, ptr %l235
  br label %bb117
bb117:
  %t584 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l235
  %t585 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 189
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t584, ptr %t585
  %t586 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 192
  %t588 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t586)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t588, ptr %l237
  br label %bb118
bb118:
  %t589 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l237
  %t590 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t589, ptr %t590
  %t591 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 193
  %t593 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t591)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t593, ptr %l239
  br label %bb119
bb119:
  %t594 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l239
  %t595 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 193
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t594, ptr %t595
  %t596 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 194
  %t598 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t596)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t598, ptr %l241
  br label %bb120
bb120:
  %t599 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l241
  %t600 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 194
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t599, ptr %t600
  %t601 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 195
  %t603 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t601)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t603, ptr %l243
  br label %bb121
bb121:
  %t604 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l243
  %t605 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 195
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t604, ptr %t605
  %t606 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 216
  %t608 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H33ad8677ba7b567a135a5f5a3960fb01(ptr %v0, ptr %t606)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l245
  br label %bb122
bb122:
  %t609 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l245
  %t610 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 216
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t609, ptr %t610
  %t611 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 219
  %t613 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t611)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t613, ptr %l247
  br label %bb123
bb123:
  %t614 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l247
  %t615 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 219
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t614, ptr %t615
  %t616 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 221
  %t618 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t616)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t618, ptr %l249
  br label %bb124
bb124:
  %t619 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l249
  %t620 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 221
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t619, ptr %t620
  %t621 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 222
  %t623 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t621)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t623, ptr %l251
  br label %bb125
bb125:
  %t624 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l251
  %t625 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 222
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t624, ptr %t625
  %t626 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 223
  %t628 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %t626)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t628, ptr %l253
  br label %bb126
bb126:
  %t629 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l253
  %t630 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 223
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t629, ptr %t630
  %t631 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 224
  %t633 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t631)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t633, ptr %l255
  br label %bb127
bb127:
  %t634 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l255
  %t635 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 224
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t634, ptr %t635
  %t636 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 225
  %t638 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t636)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t638, ptr %l257
  br label %bb128
bb128:
  %t639 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257
  %t640 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 225
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t639, ptr %t640
  %t641 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 228
  %t642 = load { i64, ptr }, ptr %t641, !tbaa !27
  store { i64, ptr } %t642, ptr %l258, !tbaa !27
  %t643 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t644 = extractvalue { i64, ptr } %t643, 0
  store i64 %t644, ptr %l259, !tbaa !24
  %t645 = load i64, ptr %l259, !tbaa !24
  %t646 = mul i64 %t645, 1
  %t647 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t646)
  %t648 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t649 = insertvalue { i64, ptr } %t648, ptr %t647, 1
  store { i64, ptr } %t649, ptr %l260, !tbaa !27
  %t650 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = load i64, ptr %l259, !tbaa !24
  %t655 = mul i64 %t654, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t651, ptr %t653, i64 %t655, i1 false)
  %t656 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t657 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 228
  store { i64, ptr } %t656, ptr %t657, !tbaa !27
  %t658 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 231
  %t660 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t658)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t660, ptr %l262
  br label %bb129
bb129:
  %t661 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l262
  %t662 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 231
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t661, ptr %t662
  %t663 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 232
  %t665 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t663)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t665, ptr %l264
  br label %bb130
bb130:
  %t666 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l264
  %t667 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 232
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t666, ptr %t667
  %t668 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 233
  %t670 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t668)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t670, ptr %l266
  br label %bb131
bb131:
  %t671 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l266
  %t672 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 233
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t671, ptr %t672
  %t673 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 234
  %t675 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t673)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t675, ptr %l268
  br label %bb132
bb132:
  %t676 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l268
  %t677 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 234
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t676, ptr %t677
  %t678 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 235
  %t680 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %t678)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t680, ptr %l270
  br label %bb133
bb133:
  %t681 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l270
  %t682 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 235
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t681, ptr %t682
  %t683 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 236
  %t685 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t683)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t685, ptr %l272
  br label %bb134
bb134:
  %t686 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l272
  %t687 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 236
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t686, ptr %t687
  %t688 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 239
  %t690 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H914f32a339b5444c6d16c69a20d2d561(ptr %v0, ptr %t688)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t690, ptr %l274
  br label %bb135
bb135:
  %t691 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l274
  %t692 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 239
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t691, ptr %t692
  %t693 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 240
  %t695 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %t693)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t695, ptr %l276
  br label %bb136
bb136:
  %t696 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l276
  %t697 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 240
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t696, ptr %t697
  %t698 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 241
  %t700 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t698)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t700, ptr %l278
  br label %bb137
bb137:
  %t701 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l278
  %t702 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 241
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t701, ptr %t702
  %t703 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 242
  %t705 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0, ptr %t703)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t705, ptr %l280
  br label %bb138
bb138:
  %t706 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l280
  %t707 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 242
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t706, ptr %t707
  %t708 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 249
  %t710 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__H3d323b423d49e8dd9f04e04715566ac1(ptr %v0, ptr %t708)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t710, ptr %l282
  br label %bb139
bb139:
  %t711 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l282
  %t712 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 249
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t711, ptr %t712
  %t713 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 250
  %t715 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hf0da9692a6959d4aeac270438b2ff1fc(ptr %v0, ptr %t713)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t715, ptr %l284
  br label %bb140
bb140:
  %t716 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l284
  %t717 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 250
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t716, ptr %t717
  %t718 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 251
  %t720 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %t718)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t720, ptr %l286
  br label %bb141
bb141:
  %t721 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286
  %t722 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 251
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t721, ptr %t722
  %t723 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 252
  %t725 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t723)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t725, ptr %l288
  br label %bb142
bb142:
  %t726 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l288
  %t727 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 252
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t726, ptr %t727
  %t728 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 253
  %t730 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %t728)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t730, ptr %l290
  br label %bb143
bb143:
  %t731 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l290
  %t732 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 253
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t731, ptr %t732
  %t733 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 254
  %t735 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t733)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t735, ptr %l292
  br label %bb144
bb144:
  %t736 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l292
  %t737 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 254
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t736, ptr %t737
  %t738 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 255
  %t740 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %t738)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t740, ptr %l294
  br label %bb145
bb145:
  %t741 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l294
  %t742 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 255
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t741, ptr %t742
  %t743 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 256
  %t745 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t743)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t745, ptr %l296
  br label %bb146
bb146:
  %t746 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l296
  %t747 = getelementptr %"compiler/scope:Scoper", ptr %l1, i32 0, i32 256
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t746, ptr %t747
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 8968, i1 false)
  br label %ret
ret:
  ret void
}

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
define internal { i64, ptr } @olang_lambda_95(ptr %env, ptr %v0, i64 %a0) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInstNote(ptr %vc0, ptr %v0, ptr %cv0, i64 %a0)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define internal { i64, ptr } @olang_lambda_96(ptr %env, ptr %v0, i32 %a0) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %vc0, ptr %v0, ptr %cv0, i32 %a0)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

@.d97 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": it does not check " }>, align 8
@.d98 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" yet" }>, align 8
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-l" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, { i64, ptr } %t4)
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

@.d103 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"./build/" }>, align 8
@.d104 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_test" }>, align 8
@.d105 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @abort() noreturn
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e_3e(ptr %v0, { i64, ptr } %t4)
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

@.d106 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"sanitize_thread " }>, align 8
@.d107 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d108 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/fuzz" }>, align 8
@.d109 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Asum " }>, align 8
@.d110 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"olang front record" }>, align 8
@.d111 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"end" }>, align 8
@.d112 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"read " }>, align 8
@.d113 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"body " }>, align 8
@.d114 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sig " }>, align 8
@.d115 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"baked " }>, align 8
@.d116 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/rec/" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d118 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".f" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"c" }>, align 8
@.d120 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d123 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"+" }>, align 8
@.d126 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@.d129 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d130 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" mutable" }>, align 8
@.d131 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"/rec" }>, align 8
@.d132 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d133 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"olang front record\0A" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d136 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"body " }>, align 8
@.d137 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d138 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d139 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"end\0A" }>, align 8
@.d140 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sum " }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d142 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"thread_local(initialexec)" }>, align 8
@.d143 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"thread_local" }>, align 8
@.d144 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"running a file" }>, align 8
@.d145 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d146 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d147 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d148 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"\0Aroot " }>, align 8
@.d149 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d150 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d151 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d152 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"embed " }>, align 8
@.d153 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d154 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define internal i1 @olang_lambda_155(ptr %env, i64 %a0, i64 %a1) #0 {
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

@.d156 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d157 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d158 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"/rec/" }>, align 8
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d160 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".v" }>, align 8
@.d161 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"attributes #" }>, align 8
@.d162 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"\22target-cpu\22" }>, align 8
@.d163 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22target-cpu\22=\22" }>, align 8
@.d164 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"\22target-features\22=\22" }>, align 8
@.d165 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"\22tune-cpu\22=\22" }>, align 8
@.d166 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr %"<sys/resource.h>:rlimit" @olang_2emir_2eHelperKind_2eZero_2e_3csys_2fresource_2eh_3e_3arlimit() #0 {
entry:
  %l0 = alloca %"<sys/resource.h>:rlimit"
  %rv = alloca %"<sys/resource.h>:rlimit"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"<sys/resource.h>:rlimit" @_3csys_2fresource_2eh_3e_3arlimit_2ector(ptr %t1)
  store %"<sys/resource.h>:rlimit" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"<sys/resource.h>:rlimit", ptr %l0
  store %"<sys/resource.h>:rlimit" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"<sys/resource.h>:rlimit", ptr %rv
  ret %"<sys/resource.h>:rlimit" %rr
}

declare i32 @getrlimit(i32, ptr)
@.d168 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d169 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define internal i1 @olang_lambda_170(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
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

@.d171 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d172 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"\0Asum " }>, align 8
@.d173 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"end" }>, align 8
@.d174 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"size " }>, align 8
@.d175 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"split " }>, align 8
@.d176 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"inst " }>, align 8
@.d177 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"1" }>, align 8
@.d178 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"read " }>, align 8
@.d179 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"part " }>, align 8
@.d180 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"locs " }>, align 8
@.d181 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"locs " }>, align 8
@.d182 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".p" }>, align 8
@.d183 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ll" }>, align 8
@.d184 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:Plan"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 536, i1 false)
  %t2 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 536, i1 false)
  br label %ret
ret:
  ret void
}

@.d185 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d186 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"native" }>, align 8
@.d187 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d188 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d189 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare void @__olang_thread_init()
declare void @__olang_prog_end()
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_H3754a7a53f9c3df2a9a6243d146906a5(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H90251316700b89c67e565c550ab10b7e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_Hbd2ae184353a9c65166b58ded2f03aef(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 80
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 80
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H7ef236450d3feb960a8cf3e06f49bf11(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H46e9870415440eb929428c107005dab1(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H09c3079d182b8cef4a686eac89911323(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Heb206f2e84d8edcc6bd0c4cf1e4ad9b1(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRecs"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRecs", ptr %a0
  store %"compiler/scope:fnRecs" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/scope:fnRecs", ptr %l1
  store %"compiler/scope:fnRecs" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hdb5ecd177dbbe8266fbcd9adcd3a6e46(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Haa0337ae63b732d75ee2e0a37f501ff2(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 64
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 64
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H02d7c113dc0c806945ae5d5c07175526(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H7b35f03bb561057eca2e7862ee253215(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 72
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 72
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H33ad8677ba7b567a135a5f5a3960fb01(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_Hb5684bfafa29c4cae0e6f1c5df0e58ef(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_H914f32a339b5444c6d16c69a20d2d561(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H22e6af9a6dfb33c1c3ba8b840b708334(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__H3d323b423d49e8dd9f04e04715566ac1(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_Hf0da9692a6959d4aeac270438b2ff1fc(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e(ptr %v0, ptr %a0) #0 {
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/typed:Plan"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/typed:Plan", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 536
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
  %t15 = getelementptr %"compiler/typed:Plan", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 536, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/typed:Plan", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 536, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
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
  %t4 = mul i64 %t3, 80
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_H3754a7a53f9c3df2a9a6243d146906a5(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_Hbd2ae184353a9c65166b58ded2f03aef(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
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
  %t4 = mul i64 %t3, 72
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__H46e9870415440eb929428c107005dab1(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H5e5591591a9c0dc82035b67f3c188b05(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
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
  %t4 = mul i64 %t3, 112
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Heb206f2e84d8edcc6bd0c4cf1e4ad9b1(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H42ee29add8a5c225791d9887f7c78b2f(ptr %v0, ptr %t15)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H7b35f03bb561057eca2e7862ee253215(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
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
  %t4 = mul i64 %t3, 48
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Arra_Hb5684bfafa29c4cae0e6f1c5df0e58ef(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3a_H22e6af9a6dfb33c1c3ba8b840b708334(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
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
  %t4 = mul i64 %t3, 120
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e(ptr %v0, ptr %t15)
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
define linkonce_odr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %l3 = alloca %"compiler/eval:Image"
  %rv = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %a0
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %v0, ptr %t3)
  store %"compiler/eval:Image" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/eval:Image", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l1, i32 0, i32 1
  store %"compiler/eval:Image" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l1
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %rv
  ret %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hc8a994261b444ea12c5b83da9413a98f(ptr %v0, ptr %t15)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
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
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %t15)
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

define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  %l3 = alloca %"compiler/scope:Placement"
  %rv = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %a0
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %t3)
  store %"compiler/scope:Placement" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:Placement", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  store %"compiler/scope:Placement" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %rv
  ret %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H5e5591591a9c0dc82035b67f3c188b05(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %a0
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %rv
  ret %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H42ee29add8a5c225791d9887f7c78b2f(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t3)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:fnRec"
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
  %t4 = mul i64 %t3, 48
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
  %t15 = getelementptr %"compiler/scope:fnRec", ptr %t14, i64 %t12
  %t17 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %t15)
  store %"compiler/scope:fnRec" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/scope:fnRec", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/scope:fnRec", ptr %t22, i64 %t20
  store %"compiler/scope:fnRec" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define linkonce_odr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %a0
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %rv
  ret %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %a0
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %rv
  ret %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e(ptr %v0, ptr %a0) #0 {
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

declare ptr @__olang_scope_mine_slow(ptr) noinline
define linkonce_odr %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Image"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/eval:Image"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/eval:Image", ptr %a0
  store %"compiler/eval:Image" %t2, ptr %l1
  %t3 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 1
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/eval:Image", ptr %l1
  store %"compiler/eval:Image" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Image", ptr %rv
  ret %"compiler/eval:Image" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hc8a994261b444ea12c5b83da9413a98f(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Placement"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/scope:Placement"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:Placement", ptr %a0
  store %"compiler/scope:Placement" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
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
  %t19 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/scope:Placement", ptr %l1
  store %"compiler/scope:Placement" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Placement", ptr %rv
  ret %"compiler/scope:Placement" %rr
}

define linkonce_odr %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRec", ptr %a0
  store %"compiler/scope:fnRec" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/scope:fnRec", ptr %l1
  store %"compiler/scope:fnRec" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRec", ptr %rv
  ret %"compiler/scope:fnRec" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feval_3aBlob_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feval_3aBlob_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/eval:Blob"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/eval:Blob", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 272
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
  %t15 = getelementptr %"compiler/eval:Blob", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 272, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/eval:Blob", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 272, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

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

declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUsage(ptr %v0)
declare i32 @compiler_2folang_2eusage(ptr %v0, ptr %v1, ptr %a0, %"compiler/diagmsg:Msg" %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2folang_2eendsWithOlang(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAMode(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownFlag(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2folang_2emodesOf(ptr %v0, i64 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOptionNotForMode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOptionNeedsValue(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingAlone(ptr %v0)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuzzTimeNotNumber(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eQuickAlone(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpretBuilds(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDocOneName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsRule(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eHelpOneMode(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeFirst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotASource(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingQuick(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eListingUsage(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCapsOneFile(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNeedsName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeNoFiles(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeOneFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eModeNeedsFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiUsage(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuzzTimeAlone(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBenchFuzz(ptr %v0)
declare i32 @compiler_2folang_2echeckOutput(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v0)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, %"compiler/target:Target" } @compiler_2ftarget_2eTarget_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTargetForeignMode(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDefineBuiltin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eCFlags(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_57b10a8a18d2546b_cbe9beb9d768873f = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fsha256_2eHex(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2ePid()
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7f1024592ae32589_c3207624e3c1a39d = external constant [0 x i8]
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
declare %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2finterp_2eLoadLibrary(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eObjects(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eLen_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eLen_3ccompiler_2femit_3aObject_3e(ptr %v0, ptr %a0)
declare %"compiler/build:Unit" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aUnit_3e_2eAt_3ccompiler_2fbuild_3aUnit_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/emit:Object" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aObject_3e_2eAt_3ccompiler_2femit_3aObject_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_dd8573ae343ff812_8decdc106ea08ebe = external constant [0 x i8]
declare { i32, ptr } @compiler_2folang_2ecompiler_2folang_3aPasses_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, ptr %a2, ptr %a3)
declare void @compiler_2fviews_3aKept_2ector(ptr %out, ptr %v0)
declare void @compiler_2finterp_2eAnalyze(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, i1 %a1, ptr %a2)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @compiler_2finterp_2eDecideValues(ptr %v0, ptr %a0)
declare i64 @compiler_2finterp_2eDecideAsserts(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2finterp_2eBake(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fscope_3aScoper_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRun(ptr %v0, ptr %a0)
declare void @compiler_2finterp_3aExec_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eExplainNoItem(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHasFatal(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2folang_2eplacement(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i1 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eLen_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %a0)
declare %"compiler/check:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aGap_3e_2eAt_3ccompiler_2fcheck_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fbuild_2eUnbuildable(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinks(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_436dc8a09a076c49_2aa9a29c41caf045 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eInterpLink(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2feval_2eInterpCrash = external constant <{ [8 x i8], ptr }>
declare void @std_2fos_2eOnCrash(ptr %v0, { i64, ptr } %a0)
declare void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eTestHeader(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eRunTests(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare i32 @compiler_2finterp_2ecompiler_2finterp_3aExec_2eRunMain(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d9ce39c2cb08642b_edb226294df0b2a7 = external constant [0 x i8]
declare i32 @compiler_2folang_2eRunWith_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare void @compiler_2femit_3aEmitter_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eFnAttrs(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2fbuild_2eThinFrom = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\80\00\00\00\00\00" }>, align 8
@G_2ecompiler_2femit_2ePartSizeDev = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\08\00\00\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_35f66c671a330e3b_6eeb89ad8cfe86d7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbuild_2eIrHash(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4afdb1689badfcbe_51dadc062e53b0fa = external constant [0 x i8]
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @std_2fprelude_2fiterator_2estd_2fprelude_2ftext_3aLineIter_2eToVec_3cstd_2fprelude_2ftex_H26ca3914517df8db224f03300752057f(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/views:Cand" @compiler_2fviews_3aCand_2ector(ptr %v0, i64 %a0)
@olang_loc_93c2e7e0e9d3fc9d_9b0421dcc7332219 = external constant [0 x i8]
@olang_loc_84a3e2344dbd522f_43f41d04722675ab = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eAt_3ccompiler_2feval_3aBlob_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2folang_2ehexByte(ptr %v0, i8 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2folang_2echeckOthers(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H4aa8749bc5cf37a88c7557cdc2f2204a(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2folang_2ereaderRecords(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H5a6cbfc85b925203d0895958ef20509b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2folang_2eothers(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
@olang_loc_846f5cba2595e881_10a4c3193801545 = external constant [0 x i8]
declare i1 @compiler_2folang_2eputFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eReplace_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_73c3116820f750d_32f9964414b76079 = external constant [0 x i8]
declare { i64, ptr } @compiler_2folang_2ebuildInputs(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_23d2168bab4aeae0_126950dc9613ccec = external constant [0 x i8]
@olang_loc_a3d985a905b98e7d_1a99d62f9ee112a1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbedded(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2eHashOf(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_8700ae4b71dc05e7_516835b7a25a65bb = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
@olang_loc_a5855f4dee34d57_8118d8286dddc923 = external constant [0 x i8]
@olang_loc_41f7007871036c59_ebaca9e4fb154265 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_f7f4c072cfaa5bcd_bcba1f0f81b5e6d1 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_e0ebb5362b30f9f0_cd8defb7a2603e4 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_b1bbe7d7728f376b_6cafbb8887a833cf = external constant [0 x i8]
@G_2e_3csys_2fresource_2eh_3e_2eRLIMIT__AS = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\09\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_d08b4058070637_1afa872325ddc10b = external constant [0 x i8]
declare void @compiler_2femit_3aReused_2ector(ptr %out, ptr %v0, i64 %a0)
@olang_loc_c1a782ed22f6e4da_8f8a46f1bbe3750e = external constant [0 x i8]
@olang_loc_4bd32f38a8f0cd79_dca9eb70c03b276d = external constant [0 x i8]
@olang_loc_9f046166df78394c_19ebe858eda28990 = external constant [0 x i8]
@olang_loc_bf473baf1c029b13_418433d5ed11016f = external constant [0 x i8]
@olang_loc_bf364593c37f36b6_b34dd6c09cfd1bf2 = external constant [0 x i8]
@olang_loc_886f2cb50b6e4c95_721d2f1d3fca9e71 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @compiler_2ffacts_2ecompiler_2ffacts_3aTable_2eHolds(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_Hdbddd02cd2a4e500be7fb1cacf89c9ab(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinCount(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinPlan(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinOwn(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2ffilepath_2elivePath_2einit()
declare void @compiler_2folang_2emain()
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInstNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"<sys/resource.h>:rlimit" @_3csys_2fresource_2eh_3e_3arlimit_2ector(ptr %v0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
