source_filename = "compiler_free-1.quick.ll"
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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/free:feed" = type { i64, i64, i64, i64, { i64, [2 x i64] }, { i64, [2 x i64] }, i64 }
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/free:reason" = type { i64, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/free:walker" = type { ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/free:mustW" = type { ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/free:orCall" = type { i64, i64, i64, i64, i64, ptr, ptr }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2ffree_2ebaseOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l4, !tbaa !29
  br label %bb23
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 4
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Elem", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l4, !tbaa !29
  br label %bb23
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 8}
  %t47 = icmp eq i64 %t45, 5
  store i1 %t47, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Payload", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store ptr null, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_aa0994ef0ced0737_f892d7c71adaceeb)
  unreachable
bb23:
  %t61 = load ptr, ptr %l4, !tbaa !29
  store ptr %t61, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedCopy(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca i64
  %l15 = alloca i32
  %l18 = alloca i1
  %l22 = alloca %"compiler/free:feed"
  %l25 = alloca i64
  %l29 = alloca %"compiler/free:feed"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 78
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/free:Free", ptr %t9, i32 0, i32 74
  store ptr %t11, ptr %l10, !tbaa !29
  %t16 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t16, ptr %l13
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  %t19 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t17, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18)
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l15
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb6, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l14
  br label %bb5
bb5:
  %t24 = load i64, ptr %l14, !tbaa !24
  store i64 %t24, ptr %l8, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t25 = load i64, ptr %l8, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/free:Free", ptr %t30, i32 0, i32 73
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t32, i64 %t33)
  store %"compiler/free:feed" %t36, ptr %l22
  br label %bb11
bb10:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb12
bb11:
  %t37 = getelementptr %"compiler/free:feed", ptr %l22, i32 0, i32 6
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = icmp sge i64 %t38, 0
  store i1 %t40, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l18, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/free:Free", ptr %t43, i32 0, i32 73
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t45, i64 %t46)
  store %"compiler/free:feed" %t49, ptr %l29
  br label %bb15
bb14:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb16
bb15:
  %t50 = getelementptr %"compiler/free:feed", ptr %l29, i32 0, i32 3
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l25, !tbaa !24
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load i64, ptr %l25, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFrees(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 78
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l4, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l1, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 1
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l11
  br label %bb6
bb5:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb7
bb6:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l7, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLocalPlaceOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l28 = alloca i64
  %l29 = alloca i32
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
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 78
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  store i1 %t10, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l6, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb5:
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/free:Free", ptr %t14, i32 0, i32 67
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l13
  br label %bb6
bb6:
  %t19 = load i64, ptr %l10, !tbaa !24
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = icmp sge i64 %t19, %t20
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb11
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/free:Free", ptr %t24, i32 0, i32 67
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l19
  br label %bb10
bb10:
  %t31 = load i1, ptr %l19, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 64
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t43 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t39, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t43, ptr %l27
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l27
  %t46 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t44, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t45)
  %t47 = extractvalue { i32, i64 } %t46, 1
  %t48 = extractvalue { i32, i64 } %t46, 0
  store i32 %t48, ptr %l29
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb17, label %ok.50, !prof !99
ok.50:
  store i64 %t47, ptr %l28
  br label %bb16
bb16:
  %t51 = load i64, ptr %l28, !tbaa !24
  store i64 %t51, ptr %l22, !tbaa !24
  br label %bb19
bb17:
  br label %bb18
bb18:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load i64, ptr %l22, !tbaa !24
  store i64 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSplitPath(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l14 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 78
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
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
  call void @__olang_check_failed(ptr @olang_loc_6a56aba8df98d2ec_68c83986518f8c70)
  unreachable
bb5:
  %t12 = mul i64 0, 8
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6a56aba8df98d2ec_68c83986518f8c70)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:Free", ptr %t16, i32 0, i32 72
  store ptr %t18, ptr %l11, !tbaa !29
  %t23 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t23, ptr %l14
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l14
  %t26 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf6c82cf5f0e7149f7052eb5498c4cd14(ptr %v0, ptr %v1, ptr %t24, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t25)
  %t27 = extractvalue { i32, { i64, ptr } } %t26, 1
  %t28 = extractvalue { i32, { i64, ptr } } %t26, 0
  store i32 %t28, ptr %l16
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb10, label %ok.30, !prof !99
ok.30:
  store { i64, ptr } %t27, ptr %l15
  br label %bb9
bb9:
  %t31 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l17, !tbaa !24
  %t33 = load i64, ptr %l17, !tbaa !24
  %t34 = mul i64 %t33, 8
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l18, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l17, !tbaa !24
  %t43 = mul i64 %t42, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t44, ptr %l9, !tbaa !27
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t45 = icmp sge i64 0, 0
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = icmp sle i64 0, 1152921504606846975
  br i1 %t47, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8ae6f1105e3c6679_a593dc3435f5df1d)
  unreachable
bb14:
  %t49 = mul i64 0, 8
  %t50 = insertvalue { i64, ptr } undef, i64 0, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t51, ptr %l9, !tbaa !27
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_8ae6f1105e3c6679_a593dc3435f5df1d)
  unreachable
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l33 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l53 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i32
  %l61 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i32
  %l77 = alloca ptr
  %l78 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
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
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l5
  %t5 = getelementptr %"compiler/typed:Block", ptr %a2, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb75
bb4:
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %l29, !tbaa !27
  %t21 = load i64, ptr %l7, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 %t21
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l9, !tbaa !29
  %t28 = load ptr, ptr %l9, !tbaa !29
  store ptr %t28, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t29 = load ptr, ptr %l32, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = load ptr, ptr %l32, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 17}
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l33, !tbaa !21
  br label %bb7
bb7:
  %t36 = load i1, ptr %l33, !tbaa !21
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l10, !tbaa !23
  %t43 = load ptr, ptr %l9, !tbaa !29
  %t45 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l11, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t49 = load i32, ptr %l10, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t52 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %s0, ptr %v1, ptr %l5, i64 %t51, ptr %t52)
  br label %bb11
bb11:
  br label %bb73
bb12:
  %t56 = load ptr, ptr %l9, !tbaa !29
  store ptr %t56, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t57 = load ptr, ptr %l44, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = load ptr, ptr %l44, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 17}
  %t63 = icmp eq i64 %t61, 1
  store i1 %t63, ptr %l45, !tbaa !21
  br label %bb14
bb14:
  %t64 = load i1, ptr %l45, !tbaa !21
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t65 = load ptr, ptr %l9, !tbaa !29
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t67, i32 0, i32 1
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l12, !tbaa !29
  %t71 = load ptr, ptr %l9, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l13, !tbaa !29
  br label %bb17
bb16:
  br label %bb36
bb17:
  %t77 = load ptr, ptr %l13, !tbaa !29
  %t79 = call i64 @compiler_2ffree_2ewholeCopySite(ptr %v1, ptr %t77)
  store i64 %t79, ptr %l53
  br label %bb18
bb18:
  %t80 = load i64, ptr %l53, !tbaa !24
  store i64 %t80, ptr %l14, !tbaa !24
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t82 = load i64, ptr %l14, !tbaa !24
  %t85 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v2, ptr %t81, i64 %t82)
  %t86 = extractvalue { i32, i64 } %t85, 1
  %t87 = extractvalue { i32, i64 } %t85, 0
  store i32 %t87, ptr %l58
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb20, label %ok.89, !prof !99
ok.89:
  store i64 %t86, ptr %l57
  br label %bb19
bb19:
  %t90 = load i64, ptr %l57, !tbaa !24
  store i64 %t90, ptr %l54, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 -1, ptr %l54, !tbaa !24
  br label %bb22
bb22:
  %t91 = load i64, ptr %l54, !tbaa !24
  store i64 %t91, ptr %l15, !tbaa !24
  %t92 = load i64, ptr %l15, !tbaa !24
  %t94 = icmp sge i64 %t92, 0
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t96 = load i64, ptr %l15, !tbaa !24
  %t99 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %s0, ptr %l5, i64 %t96)
  store i1 %t99, ptr %l64
  br label %bb25
bb24:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb26
bb25:
  %t100 = load i1, ptr %l64, !tbaa !21
  store i1 %t100, ptr %l61, !tbaa !21
  br label %bb26
bb26:
  %t101 = load i1, ptr %l61, !tbaa !21
  br i1 %t101, label %bb27, label %bb28
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l65, !tbaa !29
  %t103 = load i64, ptr %l1, !tbaa !24
  store i64 %t103, ptr %l66, !tbaa !24
  %t104 = load i64, ptr %l15, !tbaa !24
  store i64 %t104, ptr %l67, !tbaa !24
  %t105 = load i64, ptr %l15, !tbaa !24
  %t108 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %s0, ptr %s0, ptr %l5, i64 %t105)
  %t109 = extractvalue { i32, ptr } %t108, 1
  %t110 = extractvalue { i32, ptr } %t108, 0
  store i32 %t110, ptr %l72
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb30, label %ok.112, !prof !99
ok.112:
  store ptr %t109, ptr %l71
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t113 = load ptr, ptr %l71, !tbaa !29
  store ptr %t113, ptr %l68, !tbaa !29
  br label %bb33
bb30:
  %t114 = load i32, ptr %l72, !tbaa !23
  %t115 = icmp eq i32 %t114, 65536
  br i1 %t115, label %bb31, label %bb32
bb31:
  call void @__olang_bang_failed_plain(ptr @olang_loc_5e4bdb92ce033105_74c6fffa83d8f4b9)
  unreachable
bb32:
  call void @__olang_bang_failed_plain(ptr @olang_loc_3c9da0e6d6f67483_45a341cc236b558f)
  unreachable
bb33:
  %t117 = load i64, ptr %l14, !tbaa !24
  %t118 = load ptr, ptr %l12, !tbaa !29
  %t119 = load ptr, ptr %l4, !tbaa !29
  %t120 = load ptr, ptr %l65, !tbaa !29
  %t121 = load i64, ptr %l66, !tbaa !24
  %t122 = load i64, ptr %l67, !tbaa !24
  %t123 = load ptr, ptr %l68, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedStore(ptr %v0, ptr %s0, ptr %v1, ptr %v3, ptr %t120, i64 %t121, i64 %t122, ptr %t123, i64 %t117, ptr %t118, ptr %t119)
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb73
bb36:
  %t127 = load ptr, ptr %l9, !tbaa !29
  store ptr %t127, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t128 = load ptr, ptr %l77, !tbaa !29
  %t129 = icmp ne ptr %t128, null
  br i1 %t129, label %bb37, label %bb38
bb37:
  %t131 = load ptr, ptr %l77, !tbaa !29
  %t132 = load i64, ptr %t131, !range !{i64 0, i64 17}
  %t134 = icmp eq i64 %t132, 3
  store i1 %t134, ptr %l78, !tbaa !21
  br label %bb38
bb38:
  %t135 = load i1, ptr %l78, !tbaa !21
  br i1 %t135, label %bb39, label %bb40
bb39:
  %t136 = load ptr, ptr %l9, !tbaa !29
  %t138 = getelementptr { i64, [3 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", ptr }, ptr %t138, i32 0, i32 1
  %t140 = load ptr, ptr %t139
  store ptr %t140, ptr %l16, !tbaa !29
  br label %bb41
bb40:
  br label %bb50
bb41:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l1, !tbaa !24
  %t144 = load ptr, ptr %l16, !tbaa !29
  %t146 = getelementptr %"compiler/typed:If", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t149 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t142, i64 %t143, ptr %t147, ptr %t148, ptr %t149)
  br label %bb42
bb42:
  %t155 = load ptr, ptr %l16, !tbaa !29
  %t157 = getelementptr %"compiler/typed:If", ptr %t155, i32 0, i32 2
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = icmp eq ptr %t158, null
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb43, label %bb44
bb43:
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l93, !tbaa !29
  %t165 = load i64, ptr %l1, !tbaa !24
  store i64 %t165, ptr %l94, !tbaa !24
  %t166 = load ptr, ptr %l16, !tbaa !29
  %t168 = getelementptr %"compiler/typed:If", ptr %t166, i32 0, i32 2
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = icmp eq ptr %t169, null
  br i1 %t171, label %bb45, label %bb46
bb44:
  br label %bb49
bb45:
  call void @__olang_check_failed(ptr @olang_loc_e18b9bec1e794c30_83d73385e9669d24)
  unreachable
bb46:
  br label %bb47
bb47:
  %t173 = load ptr, ptr %l16, !tbaa !29
  %t175 = getelementptr %"compiler/typed:If", ptr %t173, i32 0, i32 2
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t177 = load ptr, ptr %l3, !tbaa !29
  %t178 = load ptr, ptr %l4, !tbaa !29
  %t179 = load ptr, ptr %l93, !tbaa !29
  %t180 = load i64, ptr %l94, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t179, i64 %t180, ptr %t176, ptr %t177, ptr %t178)
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb73
bb50:
  %t184 = load ptr, ptr %l9, !tbaa !29
  store ptr %t184, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t185 = load ptr, ptr %l102, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb51, label %bb52
bb51:
  %t188 = load ptr, ptr %l102, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 17}
  %t191 = icmp eq i64 %t189, 4
  store i1 %t191, ptr %l103, !tbaa !21
  br label %bb52
bb52:
  %t192 = load i1, ptr %l103, !tbaa !21
  br i1 %t192, label %bb53, label %bb54
bb53:
  %t193 = load ptr, ptr %l9, !tbaa !29
  %t195 = getelementptr { i64, [3 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t195, i32 0, i32 1
  %t197 = load ptr, ptr %t196
  store ptr %t197, ptr %l17, !tbaa !29
  %t199 = load ptr, ptr %l9, !tbaa !29
  %t201 = getelementptr { i64, [3 x i64] }, ptr %t199, i32 0, i32 1
  %t202 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t201, i32 0, i32 2
  %t203 = load ptr, ptr %t202
  store ptr %t203, ptr %l18, !tbaa !29
  br label %bb55
bb54:
  br label %bb61
bb55:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i64, ptr %l1, !tbaa !24
  %t207 = load ptr, ptr %l17, !tbaa !29
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t209 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t205, i64 %t206, ptr %t207, ptr %t208, ptr %t209)
  br label %bb56
bb56:
  %t215 = load ptr, ptr %l18, !tbaa !29
  %t217 = icmp eq ptr %t215, null
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb57, label %bb58
bb57:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i64, ptr %l1, !tbaa !24
  %t223 = load ptr, ptr %l18, !tbaa !29
  %t224 = load ptr, ptr %l3, !tbaa !29
  %t225 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t221, i64 %t222, ptr %t223, ptr %t224, ptr %t225)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  br label %bb73
bb61:
  %t231 = load ptr, ptr %l9, !tbaa !29
  store ptr %t231, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t232 = load ptr, ptr %l123, !tbaa !29
  %t233 = icmp ne ptr %t232, null
  br i1 %t233, label %bb62, label %bb63
bb62:
  %t235 = load ptr, ptr %l123, !tbaa !29
  %t236 = load i64, ptr %t235, !range !{i64 0, i64 17}
  %t238 = icmp eq i64 %t236, 11
  store i1 %t238, ptr %l124, !tbaa !21
  br label %bb63
bb63:
  %t239 = load i1, ptr %l124, !tbaa !21
  br i1 %t239, label %bb64, label %bb65
bb64:
  %t240 = load ptr, ptr %l9, !tbaa !29
  %t242 = getelementptr { i64, [3 x i64] }, ptr %t240, i32 0, i32 1
  %t243 = getelementptr { %"compiler/source:Span", ptr }, ptr %t242, i32 0, i32 1
  %t244 = load ptr, ptr %t243
  store ptr %t244, ptr %l19, !tbaa !29
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i64, ptr %l1, !tbaa !24
  %t248 = load ptr, ptr %l19, !tbaa !29
  %t249 = load ptr, ptr %l3, !tbaa !29
  %t250 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t246, i64 %t247, ptr %t248, ptr %t249, ptr %t250)
  br label %bb67
bb67:
  br label %bb73
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_51fe1291bf78cb56_b8b2e6162161098a)
  unreachable
bb73:
  br label %bb74
bb74:
  %t256 = load i64, ptr %l7, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l7, !tbaa !24
  br label %bb2
bb75:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedStore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, i64 %a2, ptr %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca %"compiler/typed:Local"
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l22 = alloca ptr
  %l26 = alloca %"compiler/typed:Local"
  %l28 = alloca ptr
  %l32 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i64
  %l52 = alloca i64
  %l57 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca i64
  %l70 = alloca ptr
  %l71 = alloca i1
  %l78 = alloca i64
  %l80 = alloca ptr
  %l84 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l85 = alloca i64
  %l86 = alloca i32
  %l89 = alloca i1
  %l93 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i64
  %l103 = alloca ptr
  %l107 = alloca { i64, [2 x i64] }
  %l109 = alloca { i64, ptr }
  %l113 = alloca i1
  %l115 = alloca i1
  %l117 = alloca i1
  %l119 = alloca i1
  %l121 = alloca { i64, ptr }
  %l123 = alloca { i64, [2 x i64] }
  %l125 = alloca { i64, [2 x i64] }
  %l127 = alloca i1
  %l129 = alloca i1
  %l131 = alloca { i64, ptr }
  %l135 = alloca i1
  %l137 = alloca i1
  %l139 = alloca { i64, [2 x i64] }
  %l141 = alloca { i64, [2 x i64] }
  %l143 = alloca i1
  %l145 = alloca i1
  %l150 = alloca ptr
  %l153 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l156 = alloca i64
  %l158 = alloca ptr
  %l165 = alloca %"compiler/free:feed"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l22
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l22, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 7
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t11, i64 %t12)
  store %"compiler/typed:Local" %t15, ptr %l26
  br label %bb2
bb2:
  %t16 = load %"compiler/typed:Local", ptr %l26
  store %"compiler/typed:Local" %t16, ptr %l8
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l28
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l28, !tbaa !29
  store ptr %t20, ptr %l9, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 4
  %t22 = load i32, ptr %t21, !range !{i32 0, i32 7}
  %t24 = trunc i64 1 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb6
bb5:
  %t29 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 6
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l32, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l32, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb10
bb8:
  %t33 = load ptr, ptr %l9, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t33, i32 %t35)
  store i1 %t38, ptr %l37
  br label %bb9
bb9:
  %t39 = load i1, ptr %l37, !tbaa !21
  store i1 %t39, ptr %l34, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l34, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb14
bb12:
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t43 = getelementptr %"compiler/typed:LocalUses", ptr %t41, i32 0, i32 4
  %t44 = load i64, ptr %l2, !tbaa !24
  %t47 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v3, ptr %t43, i64 %t44)
  store i1 %t47, ptr %l42
  br label %bb13
bb13:
  %t48 = load i1, ptr %l42, !tbaa !21
  store i1 %t48, ptr %l38, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l38, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb18
bb16:
  %t50 = load ptr, ptr %l6, !tbaa !29
  %t52 = getelementptr %"compiler/typed:LocalUses", ptr %t50, i32 0, i32 6
  %t53 = load i64, ptr %l2, !tbaa !24
  %t56 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v3, ptr %t52, i64 %t53)
  store i1 %t56, ptr %l47
  br label %bb17
bb17:
  %t57 = load i1, ptr %l47, !tbaa !21
  store i1 %t57, ptr %l43, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l43, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  br label %bb21
bb21:
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = getelementptr %"compiler/typed:LocalUses", ptr %t59, i32 0, i32 8
  store ptr %t61, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t63 = load i64, ptr %l11, !tbaa !24
  store i64 %t63, ptr %l50, !tbaa !24
  %t64 = load ptr, ptr %l10, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v3, ptr %t64)
  store i64 %t66, ptr %l52
  br label %bb23
bb23:
  %t67 = load i64, ptr %l50, !tbaa !24
  %t68 = load i64, ptr %l52, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb24, label %bb25
bb24:
  br label %bb32
bb25:
  br label %bb26
bb26:
  %t73 = load ptr, ptr %l10, !tbaa !29
  %t74 = load i64, ptr %l11, !tbaa !24
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v3, ptr %t73, i64 %t74)
  store i64 %t77, ptr %l57
  br label %bb27
bb27:
  %t78 = load i64, ptr %l57, !tbaa !24
  %t80 = load i64, ptr %l2, !tbaa !24
  %t83 = icmp eq i64 %t78, %t80
  br i1 %t83, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t85 = load i64, ptr %l11, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l11, !tbaa !24
  br label %bb22
bb32:
  store i64 -1, ptr %l13, !tbaa !24
  %t89 = load ptr, ptr %l5, !tbaa !29
  store ptr %t89, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t90 = load ptr, ptr %l63, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb33, label %bb34
bb33:
  %t93 = load ptr, ptr %l63, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 3
  store i1 %t96, ptr %l64, !tbaa !21
  br label %bb34
bb34:
  %t97 = load i1, ptr %l64, !tbaa !21
  br i1 %t97, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l5, !tbaa !29
  %t102 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v2, ptr %t98, ptr %t99)
  store i64 %t102, ptr %l69
  br label %bb38
bb38:
  %t103 = load i64, ptr %l69, !tbaa !24
  store i64 %t103, ptr %l13, !tbaa !24
  br label %bb55
bb39:
  %t104 = load ptr, ptr %l5, !tbaa !29
  store ptr %t104, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t105 = load ptr, ptr %l70, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb40, label %bb41
bb40:
  %t108 = load ptr, ptr %l70, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 8}
  %t111 = icmp eq i64 %t109, 1
  store i1 %t111, ptr %l71, !tbaa !21
  br label %bb41
bb41:
  %t112 = load i1, ptr %l71, !tbaa !21
  br i1 %t112, label %bb42, label %bb43
bb42:
  %t113 = load ptr, ptr %l5, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t115, i32 0, i32 2
  %t117 = load i64, ptr %t116
  store i64 %t117, ptr %l14, !tbaa !24
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t121, i32 0, i32 3
  %t123 = load i32, ptr %t122
  store i32 %t123, ptr %l15, !tbaa !23
  br label %bb44
bb43:
  br label %bb50
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/free:Free", ptr %t125, i32 0, i32 68
  store ptr %t127, ptr %l80, !tbaa !29
  %t128 = load i64, ptr %l14, !tbaa !24
  %t129 = load i32, ptr %l15, !tbaa !23
  %t131 = sext i32 %t129 to i64
  %t134 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s7, i64 %t128, i64 %t131)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t134, ptr %l84
  br label %bb45
bb45:
  %t135 = load ptr, ptr %l80, !tbaa !29
  %t136 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l84
  %t137 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t135, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t136)
  %t138 = extractvalue { i32, i64 } %t137, 1
  %t139 = extractvalue { i32, i64 } %t137, 0
  store i32 %t139, ptr %l86
  %t140 = icmp ne i32 %t139, 0
  br i1 %t140, label %bb47, label %ok.141, !prof !99
ok.141:
  store i64 %t138, ptr %l85
  br label %bb46
bb46:
  %t142 = load i64, ptr %l85, !tbaa !24
  store i64 %t142, ptr %l78, !tbaa !24
  br label %bb49
bb47:
  br label %bb48
bb48:
  store i64 -1, ptr %l78, !tbaa !24
  br label %bb49
bb49:
  %t143 = load i64, ptr %l78, !tbaa !24
  store i64 %t143, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_52b05c17772fc4a9_239015c769d5fa15)
  unreachable
bb55:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t146 = icmp slt i64 %t144, 0
  br i1 %t146, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb59
bb57:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/free:Free", ptr %t148, i32 0, i32 12
  %t151 = load i64, ptr %l13, !tbaa !24
  %t154 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t150, i64 %t151)
  store i1 %t154, ptr %l93
  br label %bb58
bb58:
  %t155 = load i1, ptr %l93, !tbaa !21
  %t156 = xor i1 %t155, true
  store i1 %t156, ptr %l89, !tbaa !21
  br label %bb59
bb59:
  %t158 = load i1, ptr %l89, !tbaa !21
  br i1 %t158, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb63
bb61:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l3, !tbaa !29
  %t163 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t159, ptr %t160)
  store i64 %t163, ptr %l98
  br label %bb62
bb62:
  %t164 = load i64, ptr %l98, !tbaa !24
  %t165 = icmp slt i64 %t164, 0
  store i1 %t165, ptr %l95, !tbaa !21
  br label %bb63
bb63:
  %t167 = load i1, ptr %l95, !tbaa !21
  br i1 %t167, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb65:
  br label %bb66
bb66:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/free:Free", ptr %t168, i32 0, i32 3
  %t171 = load i64, ptr %l1, !tbaa !24
  %t174 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t170, i64 %t171)
  store ptr %t174, ptr %l103
  br label %bb67
bb67:
  %t175 = load ptr, ptr %l103, !tbaa !29
  store ptr %t175, ptr %l16, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l1, !tbaa !24
  %t178 = load ptr, ptr %l3, !tbaa !29
  %t182 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %t176, i64 %t177, ptr %t178)
  store { i64, [2 x i64] } %t182, ptr %l107
  br label %bb68
bb68:
  %t183 = load { i64, [2 x i64] }, ptr %l107
  store { i64, [2 x i64] } %t183, ptr %l17
  %t184 = load ptr, ptr %l16, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Plan", ptr %t184, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  store { i64, ptr } %t187, ptr %l109, !tbaa !27
  %t188 = load i64, ptr %l4, !tbaa !24
  %t190 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr { i64, [2 x i64] }, ptr %t191, i64 %t188
  %t193 = load { i64, [2 x i64] }, ptr %t192
  store { i64, [2 x i64] } %t193, ptr %l18
  %t195 = load { i64, [2 x i64] }, ptr %l17
  %t197 = call i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %t195)
  store i1 %t197, ptr %l113
  br label %bb69
bb69:
  %t198 = load i1, ptr %l113, !tbaa !21
  %t199 = xor i1 %t198, true
  br i1 %t199, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb73
bb71:
  %t201 = load { i64, [2 x i64] }, ptr %l18
  %t203 = call i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %t201)
  store i1 %t203, ptr %l117
  br label %bb72
bb72:
  %t204 = load i1, ptr %l117, !tbaa !21
  %t205 = xor i1 %t204, true
  store i1 %t205, ptr %l115, !tbaa !21
  br label %bb73
bb73:
  %t207 = load i1, ptr %l115, !tbaa !21
  br i1 %t207, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb84
bb75:
  %t208 = load ptr, ptr %l16, !tbaa !29
  %t210 = getelementptr %"compiler/typed:Plan", ptr %t208, i32 0, i32 1
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l121, !tbaa !27
  %t212 = load i64, ptr %l2, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr { i64, [2 x i64] }, ptr %t215, i64 %t212
  %t217 = load { i64, [2 x i64] }, ptr %t216
  store { i64, [2 x i64] } %t217, ptr %l123
  %t218 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t218, ptr %l125
  %t221 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l123, ptr %l125)
  store i1 %t221, ptr %l127
  br label %bb76
bb76:
  %t222 = load i1, ptr %l127, !tbaa !21
  %t223 = xor i1 %t222, true
  br i1 %t223, label %bb77, label %bb78
bb77:
  %t225 = load ptr, ptr %l16, !tbaa !29
  %t227 = getelementptr %"compiler/typed:Plan", ptr %t225, i32 0, i32 1
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l131, !tbaa !27
  %t229 = load i64, ptr %l2, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr { i64, [2 x i64] }, ptr %t232, i64 %t229
  %t234 = load { i64, [2 x i64] }, ptr %t233
  %t236 = extractvalue { i64, [2 x i64] } %t234, 0
  %t237 = icmp eq i64 %t236, 5
  br i1 %t237, label %bb79, label %bb80
bb78:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb83
bb79:
  %t239 = load { i64, [2 x i64] }, ptr %l17
  %t241 = call i1 @compiler_2ffree_2eisBlock({ i64, [2 x i64] } %t239)
  store i1 %t241, ptr %l137
  br label %bb81
bb80:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb82
bb81:
  %t242 = load i1, ptr %l137, !tbaa !21
  store i1 %t242, ptr %l135, !tbaa !21
  br label %bb82
bb82:
  %t243 = load i1, ptr %l135, !tbaa !21
  %t244 = xor i1 %t243, true
  store i1 %t244, ptr %l129, !tbaa !21
  br label %bb83
bb83:
  %t246 = load i1, ptr %l129, !tbaa !21
  store i1 %t246, ptr %l119, !tbaa !21
  br label %bb84
bb84:
  %t247 = load i1, ptr %l119, !tbaa !21
  br i1 %t247, label %bb85, label %bb86
bb85:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb86:
  br label %bb87
bb87:
  %t248 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t248, ptr %l139
  %t249 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t249, ptr %l141
  %t252 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l139, ptr %l141)
  store i1 %t252, ptr %l143
  br label %bb88
bb88:
  %t253 = load i1, ptr %l143, !tbaa !21
  %t254 = xor i1 %t253, true
  br i1 %t254, label %bb89, label %bb90
bb89:
  %t256 = load { i64, [2 x i64] }, ptr %l18
  %t258 = extractvalue { i64, [2 x i64] } %t256, 0
  %t259 = icmp eq i64 %t258, 3
  %t261 = xor i1 %t259, true
  store i1 %t261, ptr %l145, !tbaa !21
  br label %bb91
bb90:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb91
bb91:
  %t263 = load i1, ptr %l145, !tbaa !21
  br i1 %t263, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb93:
  br label %bb94
bb94:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/free:Free", ptr %t264, i32 0, i32 74
  store ptr %t266, ptr %l150, !tbaa !29
  %t267 = load i64, ptr %l1, !tbaa !24
  %t268 = load i64, ptr %l2, !tbaa !24
  %t271 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t267, i64 %t268)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t271, ptr %l153
  br label %bb95
bb95:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/free:Free", ptr %t272, i32 0, i32 73
  %t276 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eLen_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t274)
  store i64 %t276, ptr %l156
  br label %bb96
bb96:
  %t277 = load ptr, ptr %l150, !tbaa !29
  %t278 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l153
  %t279 = load i64, ptr %l156, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t277, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t278, i64 %t279)
  br label %bb97
bb97:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/free:Free", ptr %t280, i32 0, i32 73
  store ptr %t282, ptr %l158, !tbaa !29
  %t283 = load i64, ptr %l1, !tbaa !24
  %t284 = load i64, ptr %l2, !tbaa !24
  %t285 = load i64, ptr %l13, !tbaa !24
  %t286 = load i64, ptr %l4, !tbaa !24
  %t287 = load { i64, [2 x i64] }, ptr %l17
  %t288 = load { i64, [2 x i64] }, ptr %l18
  %t295 = call %"compiler/free:feed" @compiler_2ffree_3afeed_2ector(ptr %s0, i64 %t283, i64 %t284, i64 %t285, i64 %t286, { i64, [2 x i64] } %t287, { i64, [2 x i64] } %t288)
  store %"compiler/free:feed" %t295, ptr %l165
  br label %bb98
bb98:
  %t296 = load ptr, ptr %l158, !tbaa !29
  %t297 = load %"compiler/free:feed", ptr %l165
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2ePush_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t296, %"compiler/free:feed" %t297)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l61 = alloca ptr
  %l67 = alloca ptr
  %l68 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecandTarget(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownLocalCand(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eglobalCand(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t34, ptr %t35)
  br label %bb9
bb9:
  br label %bb90
bb10:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t39 = load ptr, ptr %l29, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t42 = load ptr, ptr %l29, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 17}
  %t45 = icmp eq i64 %t43, 0
  store i1 %t45, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l30, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t53, ptr %t54)
  br label %bb16
bb16:
  br label %bb90
bb17:
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t58 = load ptr, ptr %l37, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t61 = load ptr, ptr %l37, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 17}
  %t64 = icmp eq i64 %t62, 2
  store i1 %t64, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [3 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", ptr }, ptr %t68, i32 0, i32 1
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l5, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t72, ptr %t73)
  br label %bb23
bb23:
  br label %bb90
bb24:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t77 = load ptr, ptr %l45, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t80 = load ptr, ptr %l45, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 17}
  %t83 = icmp eq i64 %t81, 3
  store i1 %t83, ptr %l46, !tbaa !21
  br label %bb26
bb26:
  %t84 = load i1, ptr %l46, !tbaa !21
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [3 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr }, ptr %t87, i32 0, i32 1
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb39
bb29:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr %"compiler/typed:If", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t91, ptr %t95)
  br label %bb30
bb30:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l6, !tbaa !29
  %t101 = getelementptr %"compiler/typed:If", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t98, ptr %t102)
  br label %bb31
bb31:
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t107 = getelementptr %"compiler/typed:If", ptr %t105, i32 0, i32 2
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l61, !tbaa !29
  %t115 = load ptr, ptr %l6, !tbaa !29
  %t117 = getelementptr %"compiler/typed:If", ptr %t115, i32 0, i32 2
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  br i1 %t120, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_f0ef9f3a8cd9f24a_5f2afb921a19c616)
  unreachable
bb35:
  br label %bb36
bb36:
  %t122 = load ptr, ptr %l6, !tbaa !29
  %t124 = getelementptr %"compiler/typed:If", ptr %t122, i32 0, i32 2
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t126 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t126, ptr %t125)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb90
bb39:
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t129 = load ptr, ptr %l67, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb40, label %bb41
bb40:
  %t132 = load ptr, ptr %l67, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 17}
  %t135 = icmp eq i64 %t133, 4
  store i1 %t135, ptr %l68, !tbaa !21
  br label %bb41
bb41:
  %t136 = load i1, ptr %l68, !tbaa !21
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t139 = getelementptr { i64, [3 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t139, i32 0, i32 1
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l7, !tbaa !29
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr { i64, [3 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t145, i32 0, i32 2
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l8, !tbaa !29
  br label %bb44
bb43:
  br label %bb50
bb44:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  br label %bb45
bb45:
  %t153 = load ptr, ptr %l8, !tbaa !29
  %t155 = icmp eq ptr %t153, null
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb46, label %bb47
bb46:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t159, ptr %t160)
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb49
bb49:
  br label %bb90
bb50:
  %t163 = load ptr, ptr %l1, !tbaa !29
  store ptr %t163, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t164 = load ptr, ptr %l82, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb51, label %bb52
bb51:
  %t167 = load ptr, ptr %l82, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 17}
  %t170 = icmp eq i64 %t168, 6
  store i1 %t170, ptr %l83, !tbaa !21
  br label %bb52
bb52:
  %t171 = load i1, ptr %l83, !tbaa !21
  br i1 %t171, label %bb53, label %bb54
bb53:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr { i64, [3 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", ptr }, ptr %t174, i32 0, i32 1
  %t176 = load ptr, ptr %t175
  store ptr %t176, ptr %l9, !tbaa !29
  br label %bb59
bb54:
  %t178 = load ptr, ptr %l1, !tbaa !29
  store ptr %t178, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t179 = load ptr, ptr %l88, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb55, label %bb56
bb55:
  %t182 = load ptr, ptr %l88, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 17}
  %t185 = icmp eq i64 %t183, 16
  store i1 %t185, ptr %l89, !tbaa !21
  br label %bb56
bb56:
  %t186 = load i1, ptr %l89, !tbaa !21
  br i1 %t186, label %bb57, label %bb58
bb57:
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr { i64, [3 x i64] }, ptr %t187, i32 0, i32 1
  %t190 = getelementptr { %"compiler/source:Span", ptr }, ptr %t189, i32 0, i32 1
  %t191 = load ptr, ptr %t190
  store ptr %t191, ptr %l9, !tbaa !29
  br label %bb59
bb58:
  br label %bb64
bb59:
  %t193 = load ptr, ptr %l9, !tbaa !29
  %t195 = icmp eq ptr %t193, null
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb60, label %bb61
bb60:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %t199, ptr %t200)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb90
bb64:
  %t203 = load ptr, ptr %l1, !tbaa !29
  store ptr %t203, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t204 = load ptr, ptr %l99, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb65, label %bb66
bb65:
  %t207 = load ptr, ptr %l99, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 17}
  %t210 = icmp eq i64 %t208, 11
  store i1 %t210, ptr %l100, !tbaa !21
  br label %bb66
bb66:
  %t211 = load i1, ptr %l100, !tbaa !21
  br i1 %t211, label %bb67, label %bb68
bb67:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr { i64, [3 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", ptr }, ptr %t214, i32 0, i32 1
  %t216 = load ptr, ptr %t215
  store ptr %t216, ptr %l10, !tbaa !29
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t218, ptr %t219)
  br label %bb70
bb70:
  br label %bb90
bb71:
  %t222 = load ptr, ptr %l1, !tbaa !29
  store ptr %t222, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t223 = load ptr, ptr %l107, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb72, label %bb73
bb72:
  %t226 = load ptr, ptr %l107, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 17}
  %t229 = icmp eq i64 %t227, 12
  store i1 %t229, ptr %l108, !tbaa !21
  br label %bb73
bb73:
  %t230 = load i1, ptr %l108, !tbaa !21
  br i1 %t230, label %bb74, label %bb75
bb74:
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", ptr }, ptr %t233, i32 0, i32 1
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l11, !tbaa !29
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t237, ptr %t238)
  br label %bb77
bb77:
  br label %bb90
bb78:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t242 = load ptr, ptr %l115, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb79, label %bb80
bb79:
  %t245 = load ptr, ptr %l115, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 17}
  %t248 = icmp eq i64 %t246, 13
  store i1 %t248, ptr %l116, !tbaa !21
  br label %bb80
bb80:
  %t249 = load i1, ptr %l116, !tbaa !21
  br i1 %t249, label %bb81, label %bb82
bb81:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [3 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", ptr }, ptr %t252, i32 0, i32 1
  %t254 = load ptr, ptr %t253
  store ptr %t254, ptr %l12, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load ptr, ptr %l12, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Join", ptr %t257, i32 0, i32 0
  %t260 = load ptr, ptr %t259, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %t256, ptr %t260)
  br label %bb84
bb84:
  br label %bb90
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_1befe4f0760966d8_ea99a8b72a88b024)
  unreachable
bb90:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2egenPlace(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l9 = alloca i32
  %l13 = alloca i64
  %l15 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca i64
  %l26 = alloca i1
  %l30 = alloca i1
  %l31 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 15
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t7, i64 %t8)
  store i32 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i32, ptr %l9, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:Free", ptr %t13, i32 0, i32 10
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l13
  br label %bb3
bb3:
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = icmp sge i64 %t20, 0
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/free:Free", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l17, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/free:Free", ptr %t27, i32 0, i32 9
  %t30 = load i64, ptr %l1, !tbaa !24
  %t33 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t29, i64 %t30)
  store i32 %t33, ptr %l21
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb9
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/free:Free", ptr %t34, i32 0, i32 10
  %t37 = load i64, ptr %l1, !tbaa !24
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t36, i64 %t37)
  store i64 %t40, ptr %l25
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l17, !tbaa !29
  %t42 = load i32, ptr %l21, !tbaa !23
  %t43 = load i64, ptr %l25, !tbaa !24
  %t44 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %t41, i32 %t42, i64 %t43)
  store i1 %t44, ptr %l26
  br label %bb8
bb8:
  %t45 = load i1, ptr %l26, !tbaa !21
  store i1 %t45, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l15, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l30
  br label %bb13
bb13:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/free:Free", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  store ptr %t57, ptr %l33, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  store ptr %t58, ptr %l34, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l37
  br label %bb16
bb15:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb19
bb16:
  %t64 = load ptr, ptr %l34, !tbaa !29
  %t65 = load i32, ptr %l37, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t66, ptr %l38
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load i32, ptr %l38, !tbaa !23
  %t69 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t69, ptr %l39
  br label %bb18
bb18:
  %t70 = load i1, ptr %l39, !tbaa !21
  store i1 %t70, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t71 = load i1, ptr %l31, !tbaa !21
  store i1 %t71, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %lp4 = alloca ptr
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
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i32
  %l33 = alloca i1
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i32
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i64
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca i32
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca i1
  %l72 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l80 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l90 = alloca i64
  %l93 = alloca i64
  %l114 = alloca i64
  %l117 = alloca i1
  %l121 = alloca i1
  %l122 = alloca i1
  %l126 = alloca i1
  %l129 = alloca i64
  %l131 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca i64
  %l150 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l166 = alloca i1
  %l168 = alloca ptr
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l175 = alloca i64
  %l180 = alloca i1
  %l183 = alloca ptr
  %l186 = alloca i32
  %l187 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l199 = alloca i1
  %l201 = alloca ptr
  %l204 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l206 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l208 = alloca i64
  %l212 = alloca ptr
  %l213 = alloca i32
  %l214 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l216 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l24
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l24, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l25, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l28
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l25, !tbaa !29
  %t12 = load i32, ptr %l28, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l29
  br label %bb3
bb3:
  %t14 = load i32, ptr %l29, !tbaa !23
  store i32 %t14, ptr %l3, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/free:Free", ptr %t15, i32 0, i32 20
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H0fa35282e56bd0cd9b08251ba99b9868(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l33
  br label %bb4
bb4:
  %t22 = load i1, ptr %l33, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/free:Free", ptr %t23, i32 0, i32 20
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H08f3244764437e29647226f03a29c83b(ptr %v0, ptr %v1, ptr %t25, i32 %t26)
  %t30 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t29, 1
  %t31 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t29, 0
  store i32 %t31, ptr %l39
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb8, label %ok.33, !prof !99
ok.33:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l38
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l41
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l42
  br label %bb11
bb10:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l34
  br label %bb12
bb11:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l34
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %rv
  br label %ret
bb13:
  %t40 = ptrtoint ptr %v1 to i64
  store i64 %t40, ptr %l43, !tbaa !24
  %t41 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3aFree__2eheldPlaces_2elocal_2e4
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t43 = call ptr @__olang_region_make(ptr %v1)
  %t44 = ptrtoint ptr %t43 to i64
  store i64 %t44, ptr %l43, !tbaa !24
  br label %bb15
bb15:
  %t45 = load i64, ptr %l43
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t46, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l45
  br label %bb16
bb16:
  %t48 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3aFree__2eheldPlaces_2elocal_2e4
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t50 = load i64, ptr %l43
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45, i32 0, i32 0
  %t53 = load { i64, ptr }, ptr %t52
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = call ptr @__olang_region_or(ptr %t54, ptr null)
  %t56 = icmp ne ptr %t55, null
  %t57 = select i1 %t56, ptr %t55, ptr null
  %t58 = icmp eq ptr %t57, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t58)
  br label %bb18
bb18:
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t59, ptr %lp4
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t61 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/free:Free", ptr %t62, i32 0, i32 20
  store ptr %t64, ptr %l48, !tbaa !29
  %t65 = load i32, ptr %l3, !tbaa !23
  store i32 %t65, ptr %l49, !tbaa !23
  %t66 = load ptr, ptr %lp4
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l50
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l52
  br label %bb19
bb19:
  %t70 = load ptr, ptr %l48, !tbaa !29
  %t71 = load i32, ptr %l49, !tbaa !23
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H127fb385441fbfd25cd8404c6b268b5d(ptr %v0, ptr %s0, ptr %t70, i32 %t71, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72)
  br label %bb20
bb20:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t74 = load i32, ptr %l3, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l55
  br label %bb21
bb21:
  %t78 = load i32, ptr %l55, !range !{i32 0, i32 33}
  store i32 %t78, ptr %l5
  %t79 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t81 = trunc i64 19 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb22, label %bb23
bb22:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l58, !tbaa !29
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t86 = load i32, ptr %l3, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l61
  br label %bb24
bb23:
  %t90 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t92 = trunc i64 18 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb29, label %bb30
bb24:
  %t95 = load ptr, ptr %l58, !tbaa !29
  %t96 = load i32, ptr %l61, !tbaa !23
  %t97 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %v1, ptr %t95, i32 %t96)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l62
  br label %bb25
bb25:
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l64
  br label %bb26
bb26:
  %t100 = load ptr, ptr %lp4
  %t101 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t100
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l65
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  %t103 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %t103
  %t104 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3aFree__2eheldPlaces_2elocal_2e4
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t106 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = call ptr @__olang_region_or(ptr %t108, ptr null)
  %t110 = icmp ne ptr %t109, null
  %t111 = select i1 %t110, ptr %t109, ptr null
  call void @__olang_region_drop(ptr %t111)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l65
  br label %bb28
bb28:
  br label %bb114
bb29:
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t113 = load i32, ptr %l3, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l72
  br label %bb31
bb30:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb32
bb31:
  %t117 = load i1, ptr %l72, !tbaa !21
  store i1 %t117, ptr %l69, !tbaa !21
  br label %bb32
bb32:
  %t118 = load i1, ptr %l69, !tbaa !21
  br i1 %t118, label %bb33, label %bb34
bb33:
  %t119 = load ptr, ptr %l2, !tbaa !29
  store ptr %t119, ptr %l73, !tbaa !29
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t121 = load i32, ptr %l3, !tbaa !23
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t124, ptr %l76
  br label %bb35
bb34:
  %t125 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t127 = trunc i64 23 to i32
  %t128 = icmp eq i32 %t125, %t127
  br i1 %t128, label %bb92, label %bb93
bb35:
  %t130 = load ptr, ptr %l73, !tbaa !29
  %t131 = load i32, ptr %l76, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t132, ptr %l77
  br label %bb36
bb36:
  %t133 = load i32, ptr %l77, !range !{i32 0, i32 6}
  store i32 %t133, ptr %l6
  %t134 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t136 = trunc i64 0 to i32
  %t137 = icmp eq i32 %t134, %t136
  br i1 %t137, label %bb37, label %bb38
bb37:
  %t139 = load ptr, ptr %l2, !tbaa !29
  store ptr %t139, ptr %l80, !tbaa !29
  %t140 = load ptr, ptr %l2, !tbaa !29
  %t141 = load i32, ptr %l3, !tbaa !23
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l83
  br label %bb39
bb38:
  %t145 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t147 = trunc i64 1 to i32
  %t148 = icmp eq i32 %t145, %t147
  br i1 %t148, label %bb73, label %bb74
bb39:
  %t150 = load ptr, ptr %l80, !tbaa !29
  %t151 = load i32, ptr %l83, !tbaa !23
  %t152 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t150, i32 %t151)
  store { i64, ptr } %t152, ptr %l84
  br label %bb40
bb40:
  %t153 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t153, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 0
  store i64 %t156, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t158 = load i64, ptr %l9, !tbaa !24
  %t159 = load i64, ptr %l8, !tbaa !24
  %t162 = icmp sgt i64 %t158, %t159
  br i1 %t162, label %bb41, label %bb42
bb41:
  %t164 = load i64, ptr %l10, !tbaa !24
  %t166 = icmp sgt i64 %t164, 0
  br i1 %t166, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb46
bb43:
  %t168 = load i64, ptr %l9, !tbaa !24
  %t169 = load i64, ptr %l8, !tbaa !24
  %t172 = sub i64 %t168, %t169
  %t173 = load i64, ptr %l10, !tbaa !24
  %t176 = add i64 %t172, %t173
  %t178 = sub i64 %t176, 1
  %t179 = load i64, ptr %l10, !tbaa !24
  %t182 = sdiv i64 %t178, %t179
  store i64 %t182, ptr %l93, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb45
bb45:
  %t184 = load i64, ptr %l93, !tbaa !24
  store i64 %t184, ptr %l90, !tbaa !24
  br label %bb46
bb46:
  %t185 = load i64, ptr %l90, !tbaa !24
  store i64 %t185, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  %t186 = load i64, ptr %l12, !tbaa !24
  %t187 = load i64, ptr %l11, !tbaa !24
  %t190 = icmp slt i64 %t186, %t187
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb48, label %bb49
bb48:
  br label %bb72
bb49:
  br label %bb50
bb50:
  %t194 = load i64, ptr %l8, !tbaa !24
  %t195 = load i64, ptr %l12, !tbaa !24
  %t196 = load i64, ptr %l10, !tbaa !24
  %t199 = mul i64 %t195, %t196
  %t202 = add i64 %t194, %t199
  store i64 %t202, ptr %l13, !tbaa !24
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i32, ptr %l3, !tbaa !23
  %t206 = load i64, ptr %l13, !tbaa !24
  %t210 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t204, i32 %t205, i64 %t206)
  store i64 %t210, ptr %l114
  br label %bb51
bb51:
  %t211 = load i64, ptr %l114, !tbaa !24
  store i64 %t211, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l14, !tbaa !24
  %t214 = icmp sge i64 %t212, 0
  br i1 %t214, label %bb52, label %bb53
bb52:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/free:Free", ptr %t216, i32 0, i32 12
  %t219 = load i64, ptr %l14, !tbaa !24
  %t222 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t218, i64 %t219)
  store i1 %t222, ptr %l121
  br label %bb54
bb53:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb59
bb54:
  %t223 = load i1, ptr %l121, !tbaa !21
  br i1 %t223, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb58
bb56:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/free:Free", ptr %t224, i32 0, i32 13
  %t227 = load i64, ptr %l14, !tbaa !24
  %t230 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t226, i64 %t227)
  store i1 %t230, ptr %l126
  br label %bb57
bb57:
  %t231 = load i1, ptr %l126, !tbaa !21
  store i1 %t231, ptr %l122, !tbaa !21
  br label %bb58
bb58:
  %t232 = load i1, ptr %l122, !tbaa !21
  store i1 %t232, ptr %l117, !tbaa !21
  br label %bb59
bb59:
  %t233 = load i1, ptr %l117, !tbaa !21
  br i1 %t233, label %bb60, label %bb61
bb60:
  %t234 = load ptr, ptr %lp4
  %t235 = load i64, ptr %l14, !tbaa !24
  %t238 = call i64 @compiler_2ffree_2eaddTo(ptr %v1, ptr %t234, i64 %t235)
  store i64 %t238, ptr %l129
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t240, ptr %l131, !tbaa !27
  %t241 = load i64, ptr %l13, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 %t241
  %t246 = load i32, ptr %t245, !tbaa !33
  %t249 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t239, i32 %t246)
  store i1 %t249, ptr %l134
  br label %bb64
bb64:
  %t250 = load i1, ptr %l134, !tbaa !21
  %t251 = xor i1 %t250, true
  br i1 %t251, label %bb65, label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s9
  %t253 = load ptr, ptr %lp4
  store ptr %t253, ptr %l136, !tbaa !29
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t255, ptr %l138, !tbaa !27
  %t256 = load i64, ptr %l13, !tbaa !24
  %t258 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i32, ptr %t259, i64 %t256
  %t261 = load i32, ptr %t260, !tbaa !33
  %t264 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %v0, ptr %t254, i32 %t261)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l141
  br label %bb67
bb66:
  br label %bb70
bb67:
  %t266 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t266, ptr %l143
  br label %bb68
bb68:
  %t267 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  %t268 = call ptr @__olang_scope_alloc_a(ptr %s9, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t267, ptr %t268
  %t269 = load ptr, ptr %l136, !tbaa !29
  %t271 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v1, ptr %v0, ptr %t269, ptr %t268)
  store i64 %t271, ptr %l145
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s9)
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t272 = load i64, ptr %l12, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l12, !tbaa !24
  br label %bb47
bb72:
  br label %bb91
bb73:
  %t276 = load ptr, ptr %l2, !tbaa !29
  store ptr %t276, ptr %l150, !tbaa !29
  %t277 = load ptr, ptr %l2, !tbaa !29
  %t278 = load i32, ptr %l3, !tbaa !23
  %t281 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t277, i32 %t278)
  store i32 %t281, ptr %l153
  br label %bb75
bb74:
  br label %bb90
bb75:
  %t282 = load ptr, ptr %l150, !tbaa !29
  %t283 = load i32, ptr %l153, !tbaa !23
  %t284 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t282, i32 %t283)
  store { i64, ptr } %t284, ptr %l154
  br label %bb76
bb76:
  %t285 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t285, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t286 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t288 = extractvalue { i64, ptr } %t286, 0
  store i64 %t288, ptr %l17, !tbaa !24
  br label %bb77
bb77:
  %t290 = load i64, ptr %l16, !tbaa !24
  %t291 = load i64, ptr %l17, !tbaa !24
  %t294 = icmp slt i64 %t290, %t291
  %t296 = xor i1 %t294, true
  br i1 %t296, label %bb78, label %bb79
bb78:
  br label %bb89
bb79:
  br label %bb80
bb80:
  %t298 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t298, ptr %l161, !tbaa !27
  %t299 = load i64, ptr %l16, !tbaa !24
  %t301 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr i32, ptr %t302, i64 %t299
  %t304 = load i32, ptr %t303, !tbaa !33
  store i32 %t304, ptr %l18, !tbaa !23
  %t306 = load ptr, ptr %l2, !tbaa !29
  %t307 = load i32, ptr %l18, !tbaa !23
  %t310 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t306, i32 %t307)
  store i1 %t310, ptr %l166
  br label %bb81
bb81:
  %t311 = load i1, ptr %l166, !tbaa !21
  %t312 = xor i1 %t311, true
  br i1 %t312, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s15
  %t314 = load ptr, ptr %lp4
  store ptr %t314, ptr %l168, !tbaa !29
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load i32, ptr %l18, !tbaa !23
  %t319 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %v0, ptr %t315, i32 %t316)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t319, ptr %l171
  br label %bb84
bb83:
  br label %bb87
bb84:
  %t321 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l171)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t321, ptr %l173
  br label %bb85
bb85:
  %t322 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  %t323 = call ptr @__olang_scope_alloc_a(ptr %s15, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %t323
  %t324 = load ptr, ptr %l168, !tbaa !29
  %t326 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v1, ptr %v0, ptr %t324, ptr %t323)
  store i64 %t326, ptr %l175
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s15)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t327 = load i64, ptr %l16, !tbaa !24
  %t329 = add i64 %t327, 1
  store i64 %t329, ptr %l16, !tbaa !24
  br label %bb77
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  br label %bb113
bb92:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb94
bb93:
  %t331 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t333 = trunc i64 22 to i32
  %t334 = icmp eq i32 %t331, %t333
  store i1 %t334, ptr %l180, !tbaa !21
  br label %bb94
bb94:
  %t336 = load i1, ptr %l180, !tbaa !21
  br i1 %t336, label %bb95, label %bb96
bb95:
  %t337 = load ptr, ptr %l2, !tbaa !29
  store ptr %t337, ptr %l183, !tbaa !29
  %t338 = load ptr, ptr %l2, !tbaa !29
  %t339 = load i32, ptr %l3, !tbaa !23
  %t342 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t338, i32 %t339)
  store i32 %t342, ptr %l186
  br label %bb97
bb96:
  br label %bb112
bb97:
  %t343 = load ptr, ptr %l183, !tbaa !29
  %t344 = load i32, ptr %l186, !tbaa !23
  %t345 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t343, i32 %t344)
  store { i64, ptr } %t345, ptr %l187
  br label %bb98
bb98:
  %t346 = load { i64, ptr }, ptr %l187, !tbaa !27
  store { i64, ptr } %t346, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t347 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t347, 0
  store i64 %t349, ptr %l21, !tbaa !24
  br label %bb99
bb99:
  %t351 = load i64, ptr %l20, !tbaa !24
  %t352 = load i64, ptr %l21, !tbaa !24
  %t355 = icmp slt i64 %t351, %t352
  %t357 = xor i1 %t355, true
  br i1 %t357, label %bb100, label %bb101
bb100:
  br label %bb111
bb101:
  br label %bb102
bb102:
  %t359 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t359, ptr %l194, !tbaa !27
  %t360 = load i64, ptr %l20, !tbaa !24
  %t362 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = getelementptr i32, ptr %t363, i64 %t360
  %t365 = load i32, ptr %t364, !tbaa !33
  store i32 %t365, ptr %l22, !tbaa !23
  %t367 = load ptr, ptr %l2, !tbaa !29
  %t368 = load i32, ptr %l22, !tbaa !23
  %t371 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t367, i32 %t368)
  store i1 %t371, ptr %l199
  br label %bb103
bb103:
  %t372 = load i1, ptr %l199, !tbaa !21
  %t373 = xor i1 %t372, true
  br i1 %t373, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s21
  %t375 = load ptr, ptr %lp4
  store ptr %t375, ptr %l201, !tbaa !29
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load i32, ptr %l22, !tbaa !23
  %t380 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %v0, ptr %t376, i32 %t377)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %l204
  br label %bb106
bb105:
  br label %bb109
bb106:
  %t382 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l204)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %l206
  br label %bb107
bb107:
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l206
  %t384 = call ptr @__olang_scope_alloc_a(ptr %s21, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %t384
  %t385 = load ptr, ptr %l201, !tbaa !29
  %t387 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v1, ptr %v0, ptr %t385, ptr %t384)
  store i64 %t387, ptr %l208
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s21)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t388 = load i64, ptr %l20, !tbaa !24
  %t390 = add i64 %t388, 1
  store i64 %t390, ptr %l20, !tbaa !24
  br label %bb99
bb111:
  br label %bb112
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/free:Free", ptr %t392, i32 0, i32 20
  store ptr %t394, ptr %l212, !tbaa !29
  %t395 = load i32, ptr %l3, !tbaa !23
  store i32 %t395, ptr %l213, !tbaa !23
  %t396 = load ptr, ptr %lp4
  %t397 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t396
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %l214
  %t399 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l214)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %l216
  br label %bb115
bb115:
  %t400 = load ptr, ptr %l212, !tbaa !29
  %t401 = load i32, ptr %l213, !tbaa !23
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l216
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H127fb385441fbfd25cd8404c6b268b5d(ptr %v0, ptr %s0, ptr %t400, i32 %t401, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402)
  br label %bb116
bb116:
  %t403 = load ptr, ptr %lp4
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t403
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 10
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:Free", ptr %t16, i32 0, i32 10
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = icmp eq i64 %t23, -4
  store i1 %t24, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l10, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisNamed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l8
  br label %bb4
bb4:
  %t12 = load i1, ptr %l8, !tbaa !21
  store i1 %t12, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l5, !tbaa !21
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2enewPlace(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3, i32 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca %"compiler/free:reason"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:Free", ptr %t7, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t9, i32 %a1)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:Free", ptr %t13, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t15, i64 %a2)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/free:Free", ptr %t19, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t21, i1 %a3)
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/free:Free", ptr %t25, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t27, i1 false)
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t31, i1 false)
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:Free", ptr %t33, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t35, i32 %a4)
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/free:Free", ptr %t39, i32 0, i32 48
  %t42 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t41, i64 %t42)
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/free:Free", ptr %t45, i32 0, i32 49
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t47, i1 false)
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/free:Free", ptr %t49, i32 0, i32 50
  store ptr %t51, ptr %l32, !tbaa !29
  %t52 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  store i64 %t52, ptr %l33, !tbaa !24
  %t53 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t53, ptr %l34
  br label %bb10
bb10:
  %t54 = load i64, ptr %l33, !tbaa !24
  %t55 = load %"compiler/source:Span", ptr %l34
  %t56 = call %"compiler/free:reason" @compiler_2ffree_3areason_2ector(ptr %v0, ptr %v0, i64 %t54, i64 -1, %"compiler/source:Span" %t55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store %"compiler/free:reason" %t56, ptr %l35
  br label %bb11
bb11:
  %t57 = load ptr, ptr %l32, !tbaa !29
  %t58 = load %"compiler/free:reason", ptr %l35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2ePush_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v0, ptr %t57, %"compiler/free:reason" %t58)
  br label %bb12
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/free:Free", ptr %t59, i32 0, i32 76
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t61, i1 %a5)
  br label %bb13
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/free:Free", ptr %t65, i32 0, i32 65
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t67, i64 -1)
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/free:Free", ptr %t69, i32 0, i32 66
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t71, i64 -1)
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:Free", ptr %t73, i32 0, i32 69
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t75, i64 -1)
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/free:Free", ptr %t77, i32 0, i32 70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t79, i64 -1)
  br label %bb17
bb17:
  %t81 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownCode(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i64
  %l14 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l31 = alloca ptr
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i64
  %l43 = alloca i1
  %l44 = alloca i64
  %l49 = alloca i64
  %l57 = alloca ptr
  %l60 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp eq i64 %t7, -3
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/free:Free", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l14
  br label %bb4
bb3:
  br label %bb26
bb4:
  %t18 = load ptr, ptr %l14, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 1
  %t21 = load { i64, [2 x i64] }, ptr %t20
  store { i64, [2 x i64] } %t21, ptr %l3
  %t23 = load { i64, [2 x i64] }, ptr %l3
  %t25 = extractvalue { i64, [2 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 0
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t29 = getelementptr { i64 }, ptr %t28, i32 0, i32 0
  %t30 = load i64, ptr %t29
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/free:Free", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l25
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t44, i64 %t45)
  store i64 %t46, ptr %l26
  br label %bb9
bb9:
  %t47 = load i64, ptr %l26, !tbaa !24
  store i64 %t47, ptr %l2, !tbaa !24
  br label %bb25
bb10:
  %t48 = load { i64, [2 x i64] }, ptr %l3
  %t50 = extractvalue { i64, [2 x i64] } %t48, 0
  %t51 = icmp eq i64 %t50, 1
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t54 = getelementptr { i32, i32 }, ptr %t53, i32 0, i32 0
  %t55 = load i32, ptr %t54
  store i32 %t55, ptr %l5, !tbaa !23
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t57)
  store ptr %t59, ptr %l31
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t60)
  store ptr %t62, ptr %l33
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t63)
  store ptr %t65, ptr %l35
  br label %bb16
bb16:
  %t66 = load i32, ptr %l5, !tbaa !23
  %t67 = load ptr, ptr %l35, !tbaa !29
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t67, i32 %t66)
  store i32 %t69, ptr %l37
  br label %bb17
bb17:
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t71 = load i32, ptr %l37, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l38
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l31, !tbaa !29
  %t74 = load i32, ptr %l38, !tbaa !23
  %t75 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t73, i32 %t74)
  store i64 %t75, ptr %l39
  br label %bb19
bb19:
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %l2, !tbaa !24
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_997f49c366488af5_93d2651ee5683809)
  unreachable
bb25:
  br label %bb26
bb26:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = icmp slt i64 %t78, 0
  br i1 %t80, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb30
bb28:
  %t82 = load i64, ptr %l2, !tbaa !24
  store i64 %t82, ptr %l44, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/free:Free", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/load:Loader", ptr %t89, i32 0, i32 10
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l49
  br label %bb29
bb29:
  %t94 = load i64, ptr %l44, !tbaa !24
  %t95 = load i64, ptr %l49, !tbaa !24
  %t96 = icmp sge i64 %t94, %t95
  store i1 %t96, ptr %l43, !tbaa !21
  br label %bb30
bb30:
  %t98 = load i1, ptr %l43, !tbaa !21
  br i1 %t98, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/free:Free", ptr %t100, i32 0, i32 0
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/load:Loader", ptr %t106, i32 0, i32 10
  %t109 = load i64, ptr %l2, !tbaa !24
  %t112 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t108, i64 %t109)
  store ptr %t112, ptr %l57
  br label %bb34
bb34:
  %t113 = load ptr, ptr %l57, !tbaa !29
  %t115 = getelementptr %"compiler/load:Module", ptr %t113, i32 0, i32 2
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t118, ptr %l60
  br label %bb35
bb35:
  %t119 = load i1, ptr %l60, !tbaa !21
  %t120 = xor i1 %t119, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t120, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownLocalCand(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l5 = alloca %"compiler/typed:Local"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l19 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l24 = alloca ptr
  %l29 = alloca %"compiler/typed:Local"
  %l33 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l47 = alloca i64
  %s1 = alloca %olang.scope
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb29
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/free:Free", ptr %t22, i32 0, i32 77
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t25, i64 %t28)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l19
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32, ptr %l4
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:Free", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 77
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t35, i64 %t39)
  store ptr %t42, ptr %l24
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Body", ptr %t43, i32 0, i32 7
  %t46 = load i32, ptr %l3, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t51 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t45, i64 %t48)
  store %"compiler/typed:Local" %t51, ptr %l29
  br label %bb8
bb8:
  %t52 = load %"compiler/typed:Local", ptr %l29
  store %"compiler/typed:Local" %t52, ptr %l5
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/free:Free", ptr %t53, i32 0, i32 64
  %t56 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t59 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H874ab6ecb906549bc54547c0392d06e9(ptr %v0, ptr %t55, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t56)
  store i1 %t59, ptr %l33
  br label %bb9
bb9:
  %t60 = load i1, ptr %l33, !tbaa !21
  br i1 %t60, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb12
bb11:
  %t61 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 7}
  %t64 = trunc i64 1 to i32
  %t65 = icmp eq i32 %t62, %t64
  %t67 = xor i1 %t65, true
  store i1 %t67, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t69 = load i1, ptr %l34, !tbaa !21
  br i1 %t69, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb15
bb14:
  %t70 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 6
  %t71 = load i1, ptr %t70, !tbaa !21
  store i1 %t71, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t73 = load i1, ptr %l38, !tbaa !21
  br i1 %t73, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb17:
  br label %bb18
bb18:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t78, ptr %l42
  br label %bb19
bb19:
  %t79 = load i1, ptr %l42, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb21:
  br label %bb22
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l2, !tbaa !23
  %t84 = load i32, ptr %l2, !tbaa !23
  %t88 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2enewPlace(ptr %v0, ptr %t82, i32 %t83, i64 -3, i1 false, i32 %t84, i1 false)
  store i64 %t88, ptr %l47
  br label %bb23
bb23:
  %t89 = load i64, ptr %l47, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/free:Free", ptr %t90, i32 0, i32 12
  %t93 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t92, i64 %t93, i1 true)
  br label %bb24
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/free:Free", ptr %t96, i32 0, i32 65
  %t99 = load i64, ptr %l6, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/free:Free", ptr %t100, i32 0, i32 77
  %t103 = load i64, ptr %t102, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t98, i64 %t99, i64 %t103)
  br label %bb25
bb25:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/free:Free", ptr %t107, i32 0, i32 66
  %t110 = load i64, ptr %l6, !tbaa !24
  %t111 = load i32, ptr %l3, !tbaa !23
  %t113 = sext i32 %t111 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t109, i64 %t110, i64 %t113)
  br label %bb26
bb26:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/free:Free", ptr %t117, i32 0, i32 64
  %t120 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t121 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t119, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t120, i64 %t121)
  br label %bb27
bb27:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/free:Free", ptr %t125, i32 0, i32 67
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/free:Free", ptr %t128, i32 0, i32 77
  %t131 = load i64, ptr %t130, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t127, i64 %t131, i1 true)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s1)
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_3f4c383e8983fca5_b7613254c9da681)
  unreachable
bb34:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i32
  %l33 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca i32
  %l51 = alloca i1
  %l58 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb4:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l15
  br label %bb5
bb5:
  %t18 = load i1, ptr %l15, !tbaa !21
  store i1 %t18, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l19
  br label %bb9
bb9:
  %t25 = load i1, ptr %l19, !tbaa !21
  store i1 %t25, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l21, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l24
  br label %bb14
bb14:
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = load i32, ptr %l24, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l25
  br label %bb15
bb15:
  %t37 = load i32, ptr %l25, !tbaa !23
  store i32 %t37, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l28
  br label %bb16
bb16:
  %t43 = load i32, ptr %l28, !range !{i32 0, i32 33}
  store i32 %t43, ptr %l4
  %t44 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t46 = trunc i64 19 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l3, !tbaa !23
  %t53 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t49, i32 %t50)
  store i1 %t53, ptr %l33
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t54 = load i1, ptr %l33, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
bb20:
  %t55 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t57 = trunc i64 18 to i32
  %t58 = icmp eq i32 %t55, %t57
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb22:
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load i32, ptr %l3, !tbaa !23
  %t66 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t62, i32 %t63)
  store i1 %t66, ptr %l40
  br label %bb23
bb23:
  %t67 = load i1, ptr %l40, !tbaa !21
  %t68 = xor i1 %t67, true
  store i1 %t68, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t70 = load i1, ptr %l37, !tbaa !21
  br i1 %t70, label %bb25, label %bb26
bb25:
  store i1 false, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t72 = load ptr, ptr %l2, !tbaa !29
  store ptr %t72, ptr %l43, !tbaa !29
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t74 = load i32, ptr %l3, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l46
  br label %bb28
bb28:
  %t78 = load ptr, ptr %l43, !tbaa !29
  %t79 = load i32, ptr %l46, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t80, ptr %l47
  br label %bb29
bb29:
  %t81 = load i32, ptr %l47, !range !{i32 0, i32 6}
  store i32 %t81, ptr %l5
  %t82 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t84 = trunc i64 0 to i32
  %t85 = icmp eq i32 %t82, %t84
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb30, label %bb31
bb30:
  %t89 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t91 = trunc i64 1 to i32
  %t92 = icmp eq i32 %t89, %t91
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l51, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t96 = load i1, ptr %l51, !tbaa !21
  br i1 %t96, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l58
  br label %bb36
bb36:
  %t103 = load i1, ptr %l58, !tbaa !21
  store i1 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erelsFit(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i1
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l28 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i64
  %l39 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i64
  %l49 = alloca i1
  %l55 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = add i64 %t1, 2
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb30
bb3:
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t13, ptr %l15, !tbaa !27
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t14
  %t19 = load i64, ptr %t18, !tbaa !34
  store i64 %t19, ptr %l4, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t21, ptr %l18, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i64, ptr %t27, i64 %t24
  %t29 = load i64, ptr %t28, !tbaa !34
  store i64 %t29, ptr %l5, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t31, ptr %l22, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t32, 2
  %t36 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i64, ptr %t37, i64 %t34
  %t39 = load i64, ptr %t38, !tbaa !34
  store i64 %t39, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb5, label %bb6
bb5:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp slt i64 %t45, 63
  store i1 %t47, ptr %l28, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb7
bb7:
  %t49 = load i1, ptr %l28, !tbaa !21
  br i1 %t49, label %bb8, label %bb9
bb8:
  %t50 = load i64, ptr %l2, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  store i64 %t51, ptr %l33, !tbaa !24
  %t52 = load i64, ptr %l33, !tbaa !24
  %t53 = load i64, ptr %l33, !tbaa !24
  %t54 = shl i64 1, %t53
  %t57 = and i64 %t50, %t54
  %t59 = icmp ne i64 %t57, 0
  store i1 %t59, ptr %l31, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l31, !tbaa !21
  store i1 %t61, ptr %l7, !tbaa !21
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = icmp sge i64 %t62, 0
  br i1 %t64, label %bb11, label %bb12
bb11:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t68 = icmp slt i64 %t66, 63
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb13
bb13:
  %t70 = load i1, ptr %l39, !tbaa !21
  br i1 %t70, label %bb14, label %bb15
bb14:
  %t71 = load i64, ptr %l2, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  store i64 %t72, ptr %l44, !tbaa !24
  %t73 = load i64, ptr %l44, !tbaa !24
  %t74 = load i64, ptr %l44, !tbaa !24
  %t75 = shl i64 1, %t74
  %t78 = and i64 %t71, %t75
  %t80 = icmp ne i64 %t78, 0
  store i1 %t80, ptr %l42, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb16
bb16:
  %t82 = load i1, ptr %l42, !tbaa !21
  store i1 %t82, ptr %l8, !tbaa !21
  %t83 = load i1, ptr %l7, !tbaa !21
  br i1 %t83, label %bb17, label %bb18
bb17:
  %t85 = load i1, ptr %l8, !tbaa !21
  %t87 = xor i1 %t85, true
  store i1 %t87, ptr %l49, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb19
bb19:
  %t89 = load i1, ptr %l49, !tbaa !21
  br i1 %t89, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t91 = load i64, ptr %l6, !tbaa !24
  %t93 = icmp eq i64 %t91, 1
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t95 = load i1, ptr %l7, !tbaa !21
  %t96 = load i1, ptr %l8, !tbaa !21
  %t99 = icmp ne i1 %t95, %t96
  store i1 %t99, ptr %l55, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb25
bb25:
  %t101 = load i1, ptr %l55, !tbaa !21
  br i1 %t101, label %bb26, label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t103 = load i64, ptr %l3, !tbaa !24
  %t105 = add i64 %t103, 3
  store i64 %t105, ptr %l3, !tbaa !24
  br label %bb1
bb30:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erowBefore(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1, %"compiler/free:letGo" %a2) #0 {
entry:
  %l1 = alloca %"compiler/free:letGo"
  %l2 = alloca %"compiler/free:letGo"
  %l16 = alloca i1
  %rv = alloca i1
  store %"compiler/free:letGo" %a1, ptr %l1
  store %"compiler/free:letGo" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 5
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  %t7 = getelementptr %"compiler/free:letGo", ptr %l2, i32 0, i32 5
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t12 = icmp eq i64 %t8, %t9
  %t15 = icmp ne i1 %t6, %t12
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = getelementptr %"compiler/free:letGo", ptr %l2, i32 0, i32 5
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t22 = icmp eq i64 %t18, %t19
  store i1 %t22, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t25 = load %"compiler/free:letGo", ptr %l1
  %t26 = load %"compiler/free:letGo", ptr %l2
  %t30 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebefore(ptr %v0, ptr %a0, %"compiler/free:letGo" %t25, %"compiler/free:letGo" %t26)
  store i1 %t30, ptr %l16
  br label %bb4
bb4:
  %t31 = load i1, ptr %l16, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esave(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i64
  %l47 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l76 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca i64
  %l88 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca i64
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 3
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i64, ptr %l22, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/free:walker", ptr %t7, i32 0, i32 3
  store ptr %t9, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l25, !tbaa !24
  %t12 = load ptr, ptr %l5, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v1, ptr %t12)
  store i64 %t14, ptr %l27
  br label %bb3
bb3:
  %t15 = load i64, ptr %l25, !tbaa !24
  %t16 = load i64, ptr %l27, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb12
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v1, ptr %v1, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l32
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l32, !tbaa !29
  store ptr %t26, ptr %l7, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  store i64 %t27, ptr %l33, !tbaa !24
  %t28 = load ptr, ptr %l7, !tbaa !29
  store ptr %t28, ptr %l34, !tbaa !29
  %t29 = ptrtoint ptr %v1 to i64
  store i64 %t29, ptr %l35, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l34, !tbaa !29
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr %v1)
  %t34 = ptrtoint ptr %t33 to i64
  store i64 %t34, ptr %l35, !tbaa !24
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l7, !tbaa !29
  %t36 = load i64, ptr %l35
  %t37 = inttoptr i64 %t36 to ptr
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t37, ptr %t35)
  store i64 %t39, ptr %l38
  br label %bb10
bb10:
  %t40 = load i64, ptr %l33, !tbaa !24
  %t41 = load i64, ptr %l38, !tbaa !24
  %t42 = add i64 %t40, %t41
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l6, !tbaa !24
  br label %bb2
bb12:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l43, !tbaa !24
  %t51 = load i64, ptr %l43, !tbaa !24
  %t52 = icmp sge i64 %t51, 0
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load i64, ptr %l43, !tbaa !24
  %t55 = icmp sle i64 %t54, 1152921504606846975
  br i1 %t55, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_cba1607a5f8c25be_1da50212bb736ed2)
  unreachable
bb15:
  %t57 = load i64, ptr %l43, !tbaa !24
  %t58 = mul i64 %t57, 8
  %t59 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l8, !tbaa !27
  %t63 = load i64, ptr %l4, !tbaa !24
  store i64 %t63, ptr %l47, !tbaa !24
  %t64 = load i64, ptr %l47, !tbaa !24
  %t65 = icmp sge i64 %t64, 0
  br i1 %t65, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_cba1607a5f8c25be_1da50212bb736ed2)
  unreachable
bb17:
  %t67 = load i64, ptr %l47, !tbaa !24
  %t68 = icmp sle i64 %t67, 1152921504606846975
  br i1 %t68, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_a35b07018a31f4f3_69e61a5b7415d1c7)
  unreachable
bb19:
  %t70 = load i64, ptr %l47, !tbaa !24
  %t71 = mul i64 %t70, 8
  %t72 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t76 = load i64, ptr %l3, !tbaa !24
  store i64 %t76, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t78 = load i64, ptr %l12, !tbaa !24
  %t79 = load i64, ptr %l11, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_a35b07018a31f4f3_69e61a5b7415d1c7)
  unreachable
bb21:
  %t84 = load i64, ptr %l13, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb26
bb23:
  %t88 = load i64, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l13, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l13, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l58, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb25
bb25:
  %t104 = load i64, ptr %l58, !tbaa !24
  store i64 %t104, ptr %l55, !tbaa !24
  br label %bb26
bb26:
  %t105 = load i64, ptr %l55, !tbaa !24
  store i64 %t105, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb27
bb27:
  %t106 = load i64, ptr %l15, !tbaa !24
  %t107 = load i64, ptr %l14, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb28, label %bb29
bb28:
  br label %bb45
bb29:
  br label %bb30
bb30:
  %t114 = load i64, ptr %l11, !tbaa !24
  %t115 = load i64, ptr %l15, !tbaa !24
  %t116 = load i64, ptr %l13, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  store i64 %t122, ptr %l16, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t124, ptr %l76, !tbaa !27
  %t125 = load i64, ptr %l16, !tbaa !24
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr i64, ptr %t130, i64 %t125
  store i64 %t126, ptr %t131, !tbaa !34
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr %"compiler/free:walker", ptr %t132, i32 0, i32 3
  %t135 = load i64, ptr %l16, !tbaa !24
  %t138 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v1, ptr %v1, ptr %t134, i64 %t135)
  store ptr %t138, ptr %l82
  br label %bb31
bb31:
  %t139 = load ptr, ptr %l82, !tbaa !29
  store ptr %t139, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb32
bb32:
  %t140 = load i64, ptr %l18, !tbaa !24
  store i64 %t140, ptr %l83, !tbaa !24
  %t141 = load ptr, ptr %l17, !tbaa !29
  store ptr %t141, ptr %l84, !tbaa !29
  %t142 = ptrtoint ptr %v1 to i64
  store i64 %t142, ptr %l85, !tbaa !24
  %t143 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t143, label %bb33, label %bb34
bb33:
  %t145 = load ptr, ptr %l84, !tbaa !29
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr %v1)
  %t147 = ptrtoint ptr %t146 to i64
  store i64 %t147, ptr %l85, !tbaa !24
  br label %bb34
bb34:
  %t148 = load ptr, ptr %l17, !tbaa !29
  %t149 = load i64, ptr %l85
  %t150 = inttoptr i64 %t149 to ptr
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t150, ptr %t148)
  store i64 %t152, ptr %l88
  br label %bb35
bb35:
  %t153 = load i64, ptr %l83, !tbaa !24
  %t154 = load i64, ptr %l88, !tbaa !24
  %t155 = icmp slt i64 %t153, %t154
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb36, label %bb37
bb36:
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t159 = load ptr, ptr %l17, !tbaa !29
  store ptr %t159, ptr %l91, !tbaa !29
  %t160 = ptrtoint ptr %v1 to i64
  store i64 %t160, ptr %l92, !tbaa !24
  %t161 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t161, label %bb39, label %bb40
bb39:
  %t163 = load ptr, ptr %l91, !tbaa !29
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr %v1)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l92, !tbaa !24
  br label %bb40
bb40:
  %t166 = load ptr, ptr %l17, !tbaa !29
  %t167 = load i64, ptr %l18, !tbaa !24
  %t168 = load i64, ptr %l92
  %t169 = inttoptr i64 %t168 to ptr
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t169, ptr %t166, i64 %t167)
  store i64 %t172, ptr %l96
  br label %bb41
bb41:
  %t173 = load i64, ptr %l96, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t174, ptr %l97, !tbaa !27
  %t175 = load i64, ptr %l10, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i64, ptr %t180, i64 %t175
  store i64 %t173, ptr %t181, !tbaa !34
  %t182 = load i64, ptr %l10, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l10, !tbaa !24
  br label %bb42
bb42:
  %t186 = load i64, ptr %l18, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l18, !tbaa !24
  br label %bb32
bb43:
  br label %bb44
bb44:
  %t190 = load i64, ptr %l15, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l15, !tbaa !24
  br label %bb27
bb45:
  %t194 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t194, ptr %l106, !tbaa !27
  %t195 = load i64, ptr %l3, !tbaa !24
  %t196 = load i64, ptr %l10, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i64, ptr %t200, i64 %t195
  store i64 %t196, ptr %t201, !tbaa !34
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/free:Free", ptr %t202, i32 0, i32 61
  %t205 = load i64, ptr %l2, !tbaa !24
  %t206 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eSetAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t204, i64 %t205, { i64, ptr } %t206)
  br label %bb46
bb46:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/free:Free", ptr %t210, i32 0, i32 62
  %t213 = load i64, ptr %l2, !tbaa !24
  %t214 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eSetAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t212, i64 %t213, { i64, ptr } %t214)
  br label %bb47
bb47:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i1
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l28 = alloca ptr
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %s0 = alloca %olang.scope
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = call i64 @compiler_2ffree_2eokind(i64 %t1)
  store i64 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i64, ptr %l7, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2ffree_2eoval(i64 %t5)
  store i64 %t7, ptr %l9
  br label %bb2
bb2:
  %t8 = load i64, ptr %l9, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t13 = icmp ne i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr @G_2ecompiler_2ffree_2eOParC, !tbaa !24
  %t19 = icmp ne i64 %t15, %t16
  store i1 %t19, ptr %l13, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l13, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t22, i64 %t23)
  store i64 %t26, ptr %l19
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t27 = load i64, ptr %l5, !tbaa !24
  store i64 %t27, ptr %l20, !tbaa !24
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %v1, ptr %t28)
  store i64 %t30, ptr %l22
  br label %bb10
bb10:
  %t31 = load i64, ptr %l20, !tbaa !24
  %t32 = load i64, ptr %l22, !tbaa !24
  %t33 = icmp sge i64 %t31, %t32
  br i1 %t33, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l3, !tbaa !29
  store ptr %t35, ptr %l24, !tbaa !29
  %t36 = load i64, ptr %l4, !tbaa !24
  %t37 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t40 = icmp eq i64 %t36, %t37
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v1, ptr %s0, ptr %t42, i64 %t43)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l31
  br label %bb16
bb15:
  store ptr %a0, ptr %l35, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v1, ptr %v1, ptr %t48, i64 %t49)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l38
  br label %bb18
bb16:
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l33
  br label %bb17
bb17:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t56 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  store ptr %t56, ptr %l28, !tbaa !29
  br label %bb21
bb18:
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l40
  br label %bb19
bb19:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  %t61 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = load ptr, ptr %l35, !tbaa !29
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %v1, ptr %s0, ptr %t62, ptr %t61)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l42
  br label %bb20
bb20:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  %t66 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  store ptr %t66, ptr %l28, !tbaa !29
  br label %bb21
bb21:
  %t68 = load ptr, ptr %l24, !tbaa !29
  %t69 = load ptr, ptr %l28, !tbaa !29
  %t70 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s0, ptr %t68, ptr %t69)
  store i64 %t70, ptr %l44
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i32
  %l39 = alloca i64
  %l40 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i32
  %rv = alloca i64
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:Free", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l18
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l18, !tbaa !29
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
  br label %bb16
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/free:Free", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/load:Loader", ptr %t44, i32 0, i32 6
  %t47 = load i64, ptr %l3, !tbaa !24
  %t50 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t46, i64 %t47)
  %t51 = extractvalue { i32, i64 } %t50, 1
  %t52 = extractvalue { i32, i64 } %t50, 0
  store i32 %t52, ptr %l32
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb13, label %ok.54, !prof !99
ok.54:
  store i64 %t51, ptr %l31
  br label %bb12
bb12:
  %t55 = load i64, ptr %l31, !tbaa !24
  store i64 %t55, ptr %l25, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb15
bb15:
  %t56 = load i64, ptr %l25, !tbaa !24
  store i64 %t56, ptr %l21, !tbaa !24
  br label %bb32
bb16:
  %t57 = load { i64, [2 x i64] }, ptr %l2
  %t59 = extractvalue { i64, [2 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 1
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t63 = getelementptr { i32, i32 }, ptr %t62, i32 0, i32 0
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l4, !tbaa !23
  %t66 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t67 = getelementptr { i32, i32 }, ptr %t66, i32 0, i32 1
  %t68 = load i32, ptr %t67
  store i32 %t68, ptr %l5, !tbaa !23
  br label %bb19
bb18:
  br label %bb27
bb19:
  %t70 = load i32, ptr %l5, !tbaa !23
  %t72 = icmp eq i32 %t70, 0
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/free:Free", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/load:Loader", ptr %t80, i32 0, i32 7
  %t83 = load i32, ptr %l4, !tbaa !23
  %t85 = sext i32 %t83 to i64
  %t88 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t82, i64 %t85)
  %t89 = extractvalue { i32, i64 } %t88, 1
  %t90 = extractvalue { i32, i64 } %t88, 0
  store i32 %t90, ptr %l48
  %t91 = icmp ne i32 %t90, 0
  br i1 %t91, label %bb23, label %ok.92, !prof !99
ok.92:
  store i64 %t89, ptr %l47
  br label %bb22
bb21:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb26
bb22:
  %t93 = load i64, ptr %l47, !tbaa !24
  store i64 %t93, ptr %l40, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb25
bb25:
  %t94 = load i64, ptr %l40, !tbaa !24
  store i64 %t94, ptr %l39, !tbaa !24
  br label %bb26
bb26:
  %t95 = load i64, ptr %l39, !tbaa !24
  store i64 %t95, ptr %l21, !tbaa !24
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_12d027853a0706eb_617ec39b0606fdd7)
  unreachable
bb32:
  %t96 = load i64, ptr %l21, !tbaa !24
  store i64 %t96, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewalk(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca i64
  %l22 = alloca i1
  %l26 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l35 = alloca i32
  %l38 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l46 = alloca i32
  %l49 = alloca i1
  %l52 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca ptr
  %l67 = alloca ptr
  %l83 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l10, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
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
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l15
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l15, !tbaa !29
  store ptr %t19, ptr %l4, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t20, i32 %t24)
  store i64 %t27, ptr %l19
  br label %bb6
bb6:
  %t28 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t29 = load i64, ptr %l19, !tbaa !24
  %t31 = icmp eq i64 %t29, %t28
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Body", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t33, i32 %t37)
  store { i64, ptr } %t40, ptr %l26
  br label %bb9
bb8:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t44 = icmp eq i64 %t42, 1
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l22, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t47 = load ptr, ptr %l4, !tbaa !29
  store ptr %t47, ptr %l29, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %t51, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s2, ptr %t48, i32 %t52)
  store { i64, ptr } %t55, ptr %l33
  br label %bb13
bb12:
  br label %bb34
bb13:
  %t56 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 0
  %t59 = load i32, ptr %t58, !tbaa !33
  %t60 = load ptr, ptr %l29, !tbaa !29
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t60, i32 %t59)
  store i32 %t62, ptr %l35
  br label %bb14
bb14:
  %t63 = load i32, ptr %l35, !tbaa !23
  store i32 %t63, ptr %l5, !tbaa !23
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t65 = load i32, ptr %l5, !tbaa !23
  %t68 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l38
  br label %bb15
bb15:
  %t69 = load i1, ptr %l38, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t70 = load ptr, ptr %l4, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t72 = load i32, ptr %l5, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l42
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t76 = load ptr, ptr %l39, !tbaa !29
  %t77 = load i32, ptr %l42, !tbaa !23
  %t78 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t78, ptr %l43
  br label %bb19
bb19:
  %t79 = load i32, ptr %l43, !tbaa !23
  store i32 %t79, ptr %l5, !tbaa !23
  br label %bb20
bb20:
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t81 = load i32, ptr %l5, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l46
  br label %bb21
bb21:
  %t85 = load i32, ptr %l46, !range !{i32 0, i32 33}
  %t87 = trunc i64 18 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb22, label %bb23
bb22:
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t91 = load i32, ptr %l5, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l52
  br label %bb24
bb23:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb25
bb24:
  %t95 = load i1, ptr %l52, !tbaa !21
  store i1 %t95, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t96 = load i1, ptr %l49, !tbaa !21
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t97 = load ptr, ptr %l4, !tbaa !29
  %t98 = load i32, ptr %l5, !tbaa !23
  %t101 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l56
  br label %bb28
bb27:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb29
bb28:
  %t102 = load i1, ptr %l56, !tbaa !21
  store i1 %t102, ptr %l53, !tbaa !21
  br label %bb29
bb29:
  %t103 = load i1, ptr %l53, !tbaa !21
  br i1 %t103, label %bb30, label %bb31
bb30:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t104, i64 %t105)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l1, !tbaa !24
  %t112 = call ptr @compiler_2ffree_2ewalker_2enewWalker(ptr %v0, ptr %v0, ptr %t108, i64 %t109, i1 false)
  store ptr %t112, ptr %l61
  br label %bb35
bb35:
  %t113 = load ptr, ptr %l61, !tbaa !29
  store ptr %t113, ptr %l6, !tbaa !29
  br label %bb36
bb36:
  %t114 = load ptr, ptr %l6, !tbaa !29
  %t116 = getelementptr %"compiler/free:walker", ptr %t114, i32 0, i32 5
  store i1 false, ptr %t116, !tbaa !21
  %t117 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereset(ptr %v0, ptr %t117)
  br label %bb37
bb37:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l64, !tbaa !29
  %t120 = load ptr, ptr %l64, !tbaa !29
  %t121 = getelementptr %"compiler/free:Free", ptr %t120, i32 0, i32 4
  %t122 = load i64, ptr %t121, !tbaa !24
  %t124 = add i64 %t122, 1
  %t126 = load ptr, ptr %l64, !tbaa !29
  %t127 = getelementptr %"compiler/free:Free", ptr %t126, i32 0, i32 4
  store i64 %t124, ptr %t127, !tbaa !24
  %t128 = load ptr, ptr %l6, !tbaa !29
  store ptr %t128, ptr %l67, !tbaa !29
  %t129 = load ptr, ptr %l3, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Body", ptr %t129, i32 0, i32 11
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_30cfd3b464a887aa_ca3830b5343a05a6)
  unreachable
bb39:
  br label %bb40
bb40:
  %t136 = load ptr, ptr %l3, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Body", ptr %t136, i32 0, i32 11
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t140 = load ptr, ptr %l67, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v0, ptr %t140, ptr %t139)
  br label %bb41
bb41:
  %t142 = load ptr, ptr %l6, !tbaa !29
  %t144 = getelementptr %"compiler/free:walker", ptr %t142, i32 0, i32 5
  %t145 = load i1, ptr %t144, !tbaa !21
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb36
bb46:
  %t149 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamPaths(ptr %v0, ptr %t149)
  br label %bb47
bb47:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l6, !tbaa !29
  %t153 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esave(ptr %v0, ptr %v0, ptr %t151, ptr %t152, i64 %t153)
  br label %bb48
bb48:
  br i1 %a2, label %bb49, label %bb50
bb49:
  %t159 = load ptr, ptr %l6, !tbaa !29
  %t161 = getelementptr %"compiler/free:walker", ptr %t159, i32 0, i32 2
  store i1 true, ptr %t161, !tbaa !21
  %t162 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereset(ptr %v0, ptr %t162)
  br label %bb51
bb50:
  br label %bb57
bb51:
  %t164 = load ptr, ptr %l6, !tbaa !29
  store ptr %t164, ptr %l83, !tbaa !29
  %t165 = load ptr, ptr %l3, !tbaa !29
  %t167 = getelementptr %"compiler/typed:Body", ptr %t165, i32 0, i32 11
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  br i1 %t170, label %bb52, label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_3a3557a9366273b1_8eafb121351cf8d)
  unreachable
bb53:
  br label %bb54
bb54:
  %t172 = load ptr, ptr %l3, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Body", ptr %t172, i32 0, i32 11
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t176 = load ptr, ptr %l83, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v0, ptr %t176, ptr %t175)
  br label %bb55
bb55:
  %t178 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviews(ptr %v0, ptr %t178)
  br label %bb56
bb56:
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:mustW", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/free:Free", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:mustW", ptr %t7, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t6, i64 %t10)
  store ptr %t13, ptr %l10
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 5
  store ptr %t16, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l13, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l15
  br label %bb3
bb3:
  %t22 = load i64, ptr %l13, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb12
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t28, i64 %t29)
  store i32 %t32, ptr %l20
  br label %bb7
bb7:
  %t33 = load i32, ptr %l20, !tbaa !23
  %t36 = sext i32 %t33 to i64
  %t40 = icmp eq i64 %t36, %a1
  br i1 %t40, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb2
bb12:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/free:leaf"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l40 = alloca i64
  %l47 = alloca ptr
  %l55 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca ptr
  %l60 = alloca i64
  %l61 = alloca i64
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca i64
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca ptr
  %l91 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca ptr
  %l94 = alloca i1
  %l98 = alloca i1
  %l100 = alloca ptr
  %l102 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i32
  %l106 = alloca i32
  %l109 = alloca i1
  %l111 = alloca i1
  %l112 = alloca ptr
  %l114 = alloca i32
  %l116 = alloca ptr
  %l117 = alloca i1
  %l126 = alloca i64
  %l131 = alloca i64
  %l132 = alloca i32
  %l148 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l159 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l162 = alloca i64
  %l163 = alloca i64
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca %"compiler/source:Span"
  %l170 = alloca i64
  %l171 = alloca ptr
  %l174 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l183 = alloca ptr
  %l186 = alloca i64
  %l187 = alloca ptr
  %l191 = alloca i1
  %l192 = alloca i64
  %l195 = alloca i64
  %l198 = alloca i64
  %l204 = alloca ptr
  %l205 = alloca i1
  %l210 = alloca ptr
  %l211 = alloca i64
  %l212 = alloca ptr
  %l213 = alloca ptr
  %l214 = alloca %"compiler/source:Span"
  %l215 = alloca ptr
  %l217 = alloca %"compiler/source:Span"
  %l218 = alloca { i64, ptr }
  %l224 = alloca ptr
  %l225 = alloca i64
  %l226 = alloca i64
  %l228 = alloca %"compiler/source:Span"
  %l229 = alloca %"compiler/source:Span"
  %l231 = alloca ptr
  %l233 = alloca i32
  %l234 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l236 = alloca i64
  %l238 = alloca i64
  %l243 = alloca %"compiler/free:leaf"
  %l245 = alloca %"compiler/free:leaf"
  %l246 = alloca ptr
  %l247 = alloca i64
  %l248 = alloca i64
  %l250 = alloca %"compiler/source:Span"
  %l251 = alloca %"compiler/source:Span"
  %l255 = alloca i64
  %l257 = alloca i1
  %l261 = alloca i1
  %l263 = alloca ptr
  %l264 = alloca ptr
  %l266 = alloca i32
  %l272 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l274 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l275 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l277 = alloca ptr
  %l278 = alloca i1
  %l283 = alloca ptr
  %l284 = alloca i64
  %l285 = alloca ptr
  %l286 = alloca ptr
  %l287 = alloca %"compiler/source:Span"
  %l288 = alloca ptr
  %l290 = alloca %"compiler/source:Span"
  %l291 = alloca { i64, ptr }
  %l295 = alloca ptr
  %l296 = alloca i64
  %l297 = alloca i64
  %l299 = alloca %"compiler/source:Span"
  %l300 = alloca %"compiler/source:Span"
  %l301 = alloca ptr
  %l302 = alloca i1
  %l307 = alloca ptr
  %l308 = alloca i64
  %l309 = alloca ptr
  %l310 = alloca ptr
  %l311 = alloca %"compiler/source:Span"
  %l312 = alloca ptr
  %l314 = alloca %"compiler/source:Span"
  %l315 = alloca { i64, ptr }
  %l322 = alloca ptr
  %l324 = alloca i32
  %l325 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l327 = alloca i64
  %l329 = alloca i1
  %l333 = alloca i1
  %l335 = alloca ptr
  %l336 = alloca ptr
  %l338 = alloca i32
  %l344 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l346 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l347 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l351 = alloca ptr
  %l352 = alloca ptr
  %l353 = alloca %"compiler/source:Span"
  %l354 = alloca ptr
  %l356 = alloca %"compiler/source:Span"
  %l357 = alloca { i64, ptr }
  %l358 = alloca { i64, ptr }
  %l361 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 9
  %t4 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %t3, ptr %t4)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t10 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v2, ptr %v2, ptr %t7)
  store ptr %t10, ptr %l27
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l27, !tbaa !29
  store ptr %t11, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:walker", ptr %t12, i32 0, i32 32
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l30, !tbaa !29
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t25 = load ptr, ptr %l35, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l35, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l36, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l36, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l34, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l34, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Call", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = sext i32 %t39 to i64
  store i64 %t41, ptr %l40, !tbaa !24
  br label %bb10
bb9:
  store i64 -1, ptr %l40, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l40, !tbaa !24
  %t44 = load ptr, ptr %l30, !tbaa !29
  %t45 = getelementptr %"compiler/free:walker", ptr %t44, i32 0, i32 32
  store i64 %t43, ptr %t45, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t52 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyStored(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %t46, ptr %t47, ptr %t48)
  store ptr %t52, ptr %l47
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l47, !tbaa !29
  store ptr %t53, ptr %l6, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/free:walker", ptr %t54, i32 0, i32 34
  %t57 = load i64, ptr %t56, !tbaa !24
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/free:walker", ptr %t59, i32 0, i32 35
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l8, !tbaa !24
  %t64 = load ptr, ptr %l6, !tbaa !29
  %t66 = icmp eq ptr %t64, null
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l55, !tbaa !29
  %t71 = load ptr, ptr %l6, !tbaa !29
  %t73 = call i64 @compiler_2ffree_2eownCopySite(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l57
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t74 = load i64, ptr %l57, !tbaa !24
  %t75 = load ptr, ptr %l55, !tbaa !29
  %t76 = getelementptr %"compiler/free:walker", ptr %t75, i32 0, i32 34
  store i64 %t74, ptr %t76, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l58, !tbaa !29
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t80 = call i64 @compiler_2ffree_2ereadLocalOf(ptr %v2, ptr %t78)
  store i64 %t80, ptr %l60
  br label %bb15
bb15:
  %t81 = load i64, ptr %l60, !tbaa !24
  %t82 = load ptr, ptr %l58, !tbaa !29
  %t83 = getelementptr %"compiler/free:walker", ptr %t82, i32 0, i32 35
  store i64 %t81, ptr %t83, !tbaa !24
  br label %bb16
bb16:
  %t84 = ptrtoint ptr %s0 to i64
  store i64 %t84, ptr %l61, !tbaa !24
  %t85 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t85, label %bb17, label %bb18
bb17:
  %t87 = call ptr @__olang_region_make(ptr %s0)
  %t88 = ptrtoint ptr %t87 to i64
  store i64 %t88, ptr %l61, !tbaa !24
  br label %bb18
bb18:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t91 = load i64, ptr %l61
  %t92 = inttoptr i64 %t91 to ptr
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v2, ptr %t92, ptr %t89, ptr %t90)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l65
  br label %bb19
bb19:
  %t96 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t96, label %bb20, label %bb21
bb20:
  %t98 = load i64, ptr %l61
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65, i32 0, i32 0
  %t101 = load { i64, ptr }, ptr %t100
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = call ptr @__olang_region_or(ptr %t102, ptr null)
  %t104 = icmp ne ptr %t103, null
  %t105 = select i1 %t104, ptr %t103, ptr null
  %t106 = icmp eq ptr %t105, %t99
  call void @__olang_region_settle(ptr %t99, i1 %t106)
  br label %bb21
bb21:
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l9
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb22, label %bb23
bb22:
  %t114 = ptrtoint ptr %s0 to i64
  store i64 %t114, ptr %l70, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t115, label %bb24, label %bb25
bb23:
  br label %bb31
bb24:
  %t117 = call ptr @__olang_region_make(ptr %s0)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l70, !tbaa !24
  br label %bb25
bb25:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/free:walker", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t125 = load i64, ptr %l70
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call ptr @__olang_scope_alloc_a(ptr %t126, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %t127
  %t128 = load i64, ptr %l70
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = load i64, ptr %l70
  %t131 = inttoptr i64 %t130 to ptr
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %t129, ptr %t131, ptr %t122, ptr %t127)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l76
  br label %bb26
bb26:
  %t135 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t135, label %bb27, label %bb28
bb27:
  %t137 = load i64, ptr %l70
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = call ptr @__olang_region_or(ptr %t141, ptr null)
  %t143 = icmp ne ptr %t142, null
  %t144 = select i1 %t143, ptr %t142, ptr null
  %t145 = icmp eq ptr %t144, %t138
  call void @__olang_region_settle(ptr %t138, i1 %t145)
  br label %bb28
bb28:
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %l78
  %t147 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l9
  %t148 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t148, label %bb29, label %bb30
bb29:
  %t150 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr null
  call void @__olang_region_drop(ptr %t155)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l78
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t156 = load i64, ptr %l7, !tbaa !24
  %t158 = load i64, ptr %l8, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/free:walker", ptr %t160, i32 0, i32 34
  store i64 %t156, ptr %t164, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/free:walker", ptr %t165, i32 0, i32 35
  store i64 %t158, ptr %t169, !tbaa !24
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i64, ptr %l5, !tbaa !24
  %t174 = getelementptr %"compiler/free:walker", ptr %t170, i32 0, i32 32
  store i64 %t171, ptr %t174, !tbaa !24
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/free:walker", ptr %t175, i32 0, i32 9
  %t179 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %s0, ptr %t177)
  %t180 = extractvalue { i32, ptr } %t179, 1
  %t181 = extractvalue { i32, ptr } %t179, 0
  store i32 %t181, ptr %l92
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb33, label %ok.183, !prof !99
ok.183:
  store ptr %t180, ptr %l91
  br label %bb32
bb32:
  %t184 = load ptr, ptr %l91, !tbaa !29
  store ptr %t184, ptr %l88, !tbaa !29
  br label %bb35
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t185 = load ptr, ptr %l2, !tbaa !29
  store ptr %t185, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t186 = load ptr, ptr %l93, !tbaa !29
  %t187 = icmp ne ptr %t186, null
  br i1 %t187, label %bb36, label %bb37
bb36:
  %t189 = load ptr, ptr %l93, !tbaa !29
  %t190 = load i64, ptr %t189, !range !{i64 0, i64 8}
  %t192 = icmp eq i64 %t190, 0
  store i1 %t192, ptr %l94, !tbaa !21
  br label %bb37
bb37:
  %t193 = load i1, ptr %l94, !tbaa !21
  %t194 = xor i1 %t193, true
  br i1 %t194, label %bb38, label %bb39
bb38:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t196)
  store ptr %t198, ptr %l100
  br label %bb40
bb39:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb45
bb40:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t199)
  store ptr %t201, ptr %l102
  br label %bb41
bb41:
  %t202 = load ptr, ptr %l2, !tbaa !29
  %t204 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t202)
  store i32 %t204, ptr %l104
  br label %bb42
bb42:
  %t205 = load ptr, ptr %l102, !tbaa !29
  %t206 = load i32, ptr %l104, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t205, i32 %t206)
  store i32 %t207, ptr %l105
  br label %bb43
bb43:
  %t208 = load ptr, ptr %l100, !tbaa !29
  %t209 = load i32, ptr %l105, !tbaa !23
  %t210 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t210, ptr %l106
  br label %bb44
bb44:
  %t211 = load i32, ptr %l106, !range !{i32 0, i32 33}
  %t213 = trunc i64 19 to i32
  %t214 = icmp eq i32 %t211, %t213
  store i1 %t214, ptr %l98, !tbaa !21
  br label %bb45
bb45:
  %t216 = load i1, ptr %l98, !tbaa !21
  br i1 %t216, label %bb46, label %bb47
bb46:
  %t217 = load ptr, ptr %l3, !tbaa !29
  %t219 = call i1 @compiler_2ffree_2ecopiedStore(ptr %v2, ptr %t217)
  store i1 %t219, ptr %l111
  br label %bb48
bb47:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb49
bb48:
  %t220 = load i1, ptr %l111, !tbaa !21
  store i1 %t220, ptr %l109, !tbaa !21
  br label %bb49
bb49:
  %t221 = load i1, ptr %l109, !tbaa !21
  br i1 %t221, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s4
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l112, !tbaa !29
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t223)
  store i32 %t225, ptr %l114
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t226 = load %"compiler/source:Span", ptr %l1
  %t227 = load ptr, ptr %l112, !tbaa !29
  %t228 = load i32, ptr %l114, !tbaa !23
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %s4, ptr %t227, i32 %t228, %"compiler/source:Span" %t226, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb54:
  %t230 = load ptr, ptr %l2, !tbaa !29
  store ptr %t230, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t231 = load ptr, ptr %l116, !tbaa !29
  %t232 = icmp ne ptr %t231, null
  br i1 %t232, label %bb55, label %bb56
bb55:
  %t234 = load ptr, ptr %l116, !tbaa !29
  %t235 = load i64, ptr %t234, !range !{i64 0, i64 8}
  %t237 = icmp eq i64 %t235, 0
  store i1 %t237, ptr %l117, !tbaa !21
  br label %bb56
bb56:
  %t238 = load i1, ptr %l117, !tbaa !21
  br i1 %t238, label %bb57, label %bb58
bb57:
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t241, i32 0, i32 2
  %t243 = load i32, ptr %t242
  store i32 %t243, ptr %l12, !tbaa !23
  br label %bb59
bb58:
  br label %bb82
bb59:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load i32, ptr %l12, !tbaa !23
  %t248 = sext i32 %t246 to i64
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %s0, ptr %t245, i64 %t248, ptr %l9)
  br label %bb60
bb60:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/free:walker", ptr %t252, i32 0, i32 7
  %t255 = load i32, ptr %l12, !tbaa !23
  %t257 = sext i32 %t255 to i64
  %t260 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t254, i64 %t257)
  %t261 = extractvalue { i32, i64 } %t260, 1
  %t262 = extractvalue { i32, i64 } %t260, 0
  store i32 %t262, ptr %l132
  %t263 = icmp ne i32 %t262, 0
  br i1 %t263, label %bb62, label %ok.264, !prof !99
ok.264:
  store i64 %t261, ptr %l131
  br label %bb61
bb61:
  %t265 = load i64, ptr %l131, !tbaa !24
  store i64 %t265, ptr %l126, !tbaa !24
  br label %bb64
bb62:
  br label %bb63
bb63:
  store i64 -1, ptr %l126, !tbaa !24
  br label %bb64
bb64:
  %t266 = load i64, ptr %l126, !tbaa !24
  store i64 %t266, ptr %l13, !tbaa !24
  %t267 = load i64, ptr %l13, !tbaa !24
  %t269 = icmp sge i64 %t267, 0
  br i1 %t269, label %bb65, label %bb66
bb65:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load i64, ptr %l13, !tbaa !24
  %t273 = load ptr, ptr %l3, !tbaa !29
  %t274 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreField(ptr %v0, ptr %v2, ptr %s0, ptr %t271, i64 %t272, ptr %t273, ptr %l9, %"compiler/source:Span" %t274)
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb68
bb68:
  %t280 = load i64, ptr %l13, !tbaa !24
  %t282 = icmp sge i64 %t280, 0
  br i1 %t282, label %bb69, label %bb70
bb69:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i64, ptr %l13, !tbaa !24
  %t286 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeField(ptr %v0, ptr %v2, ptr %t284, i64 %t285, ptr %t286)
  br label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb72
bb72:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i32, ptr %l12, !tbaa !23
  %t293 = sext i32 %t291 to i64
  %t296 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eownLocal(ptr %v0, ptr %t290, i64 %t293)
  store i64 %t296, ptr %l148
  br label %bb73
bb73:
  %t297 = load i64, ptr %l148, !tbaa !24
  store i64 %t297, ptr %l14, !tbaa !24
  %t298 = load i64, ptr %l14, !tbaa !24
  %t300 = icmp sge i64 %t298, 0
  br i1 %t300, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s8
  %t302 = load ptr, ptr %l0, !tbaa !29
  store ptr %t302, ptr %l151, !tbaa !29
  %t303 = load i64, ptr %l14, !tbaa !24
  store i64 %t303, ptr %l152, !tbaa !24
  %t304 = load ptr, ptr %l3, !tbaa !29
  store ptr %t304, ptr %l153, !tbaa !29
  store ptr %l9, ptr %l154, !tbaa !29
  %t305 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t305, ptr %l155
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load i32, ptr %l12, !tbaa !23
  %t309 = sext i32 %t307 to i64
  %t312 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2elocalName(ptr %v0, ptr %s8, ptr %t306, i64 %t309)
  store { i64, ptr } %t312, ptr %l159
  br label %bb76
bb75:
  br label %bb81
bb76:
  %t313 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t313, 0
  %t315 = extractvalue { i64, ptr } %t313, 1
  %t316 = mul i64 %t314, 1
  %t317 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t316)
  call void @llvm.memcpy.p0.p0.i64(ptr %t317, ptr %t315, i64 %t316, i1 false)
  %t318 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t317, 1
  %t320 = load ptr, ptr %l151, !tbaa !29
  %t321 = load i64, ptr %l152, !tbaa !24
  %t322 = load ptr, ptr %l153, !tbaa !29
  %t323 = load ptr, ptr %l154, !tbaa !29
  %t324 = load %"compiler/source:Span", ptr %l155
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v2, ptr %s0, ptr %s8, ptr %t320, i64 %t321, ptr %t322, ptr %t323, %"compiler/source:Span" %t324, { i64, ptr } %t319, i1 false)
  br label %bb77
bb77:
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l161, !tbaa !29
  %t327 = load i64, ptr %l14, !tbaa !24
  store i64 %t327, ptr %l162, !tbaa !24
  %t328 = load i64, ptr @G_2ecompiler_2ffree_2eLAssign, !tbaa !24
  store i64 %t328, ptr %l163, !tbaa !24
  %t329 = load ptr, ptr %l2, !tbaa !29
  %t331 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t329)
  store %"compiler/source:Span" %t331, ptr %l165
  br label %bb78
bb78:
  %t332 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s8, i32 0, i32 0)
  store %"compiler/source:Span" %t332, ptr %l166
  br label %bb79
bb79:
  %t333 = load ptr, ptr %l161, !tbaa !29
  %t334 = load i64, ptr %l162, !tbaa !24
  %t335 = load i64, ptr %l163, !tbaa !24
  %t336 = load %"compiler/source:Span", ptr %l165
  %t337 = load %"compiler/source:Span", ptr %l166
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t333, i64 %t334, i64 %t335, %"compiler/source:Span" %t336, %"compiler/source:Span" %t337, i64 -1)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s8)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb82:
  br i1 true, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_620cc86993d1ee05_2ed463b6a2f232e1)
  unreachable
bb87:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/free:walker", ptr %t338, i32 0, i32 0
  %t341 = load ptr, ptr %t340, !tbaa !29
  %t342 = load ptr, ptr %l2, !tbaa !29
  %t345 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t341, ptr %t342)
  store i64 %t345, ptr %l170
  br label %bb88
bb88:
  %t346 = load i64, ptr %l170, !tbaa !24
  store i64 %t346, ptr %l15, !tbaa !24
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l171, !tbaa !29
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load ptr, ptr %l2, !tbaa !29
  %t352 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %s0, ptr %t348, ptr %t349)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %l174
  br label %bb89
bb89:
  %t353 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l174
  %t354 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t353, ptr %t354
  %t355 = load i64, ptr %l15, !tbaa !24
  %t356 = load %"compiler/source:Span", ptr %l1
  %t357 = load ptr, ptr %l171, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2einOwner(ptr %v0, ptr %s0, ptr %s0, ptr %t357, ptr %t354, i64 %t355, %"compiler/source:Span" %t356, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb90
bb90:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/free:walker", ptr %t361, i32 0, i32 2
  %t364 = load i1, ptr %t363, !tbaa !21
  br i1 %t364, label %bb91, label %bb92
bb91:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load ptr, ptr %l2, !tbaa !29
  %t368 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eorStoreOf(ptr %v0, ptr %v1, ptr %v2, ptr %t366, ptr %t367, ptr %t368)
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  %t372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t372, ptr %l183, !tbaa !29
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load ptr, ptr %l2, !tbaa !29
  %t377 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewithinOf(ptr %v0, ptr %v1, ptr %t373, ptr %t374)
  store i64 %t377, ptr %l186
  br label %bb95
bb95:
  %t378 = load i64, ptr %l186, !tbaa !24
  %t379 = load ptr, ptr %l183, !tbaa !29
  %t380 = getelementptr %"compiler/free:walker", ptr %t379, i32 0, i32 30
  store i64 %t378, ptr %t380, !tbaa !24
  %t381 = load ptr, ptr %l0, !tbaa !29
  store ptr %t381, ptr %l187, !tbaa !29
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t383 = load ptr, ptr %l3, !tbaa !29
  %t384 = load ptr, ptr %l2, !tbaa !29
  %t388 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2esameValue(ptr %v0, ptr %v2, ptr %v1, ptr %t382, ptr %t383, ptr %t384)
  store i1 %t388, ptr %l191
  br label %bb96
bb96:
  %t389 = load i1, ptr %l191, !tbaa !21
  br i1 %t389, label %bb97, label %bb98
bb97:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l2, !tbaa !29
  %t394 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2einsidePlace(ptr %v0, ptr %v1, ptr %t390, ptr %t391)
  store i64 %t394, ptr %l195
  br label %bb99
bb98:
  store i64 -1, ptr %l192, !tbaa !24
  br label %bb100
bb99:
  %t395 = load i64, ptr %l195, !tbaa !24
  store i64 %t395, ptr %l192, !tbaa !24
  br label %bb100
bb100:
  %t396 = load i64, ptr %l192, !tbaa !24
  %t397 = load ptr, ptr %l187, !tbaa !29
  %t398 = getelementptr %"compiler/free:walker", ptr %t397, i32 0, i32 31
  store i64 %t396, ptr %t398, !tbaa !24
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load ptr, ptr %l2, !tbaa !29
  %t403 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshRoot(ptr %v0, ptr %v1, ptr %t399, ptr %t400)
  store i64 %t403, ptr %l198
  br label %bb101
bb101:
  %t404 = load i64, ptr %l198, !tbaa !24
  store i64 %t404, ptr %l16, !tbaa !24
  %t405 = load i64, ptr %l16, !tbaa !24
  %t407 = icmp sge i64 %t405, 0
  br i1 %t407, label %bb102, label %bb103
bb102:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i64, ptr %l16, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %s0, ptr %t409, i64 %t410, ptr %l9)
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb105
bb105:
  %t414 = load ptr, ptr %l2, !tbaa !29
  store ptr %t414, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t415 = load ptr, ptr %l204, !tbaa !29
  %t416 = icmp ne ptr %t415, null
  br i1 %t416, label %bb106, label %bb107
bb106:
  %t418 = load ptr, ptr %l204, !tbaa !29
  %t419 = load i64, ptr %t418, !range !{i64 0, i64 8}
  %t421 = icmp eq i64 %t419, 3
  store i1 %t421, ptr %l205, !tbaa !21
  br label %bb107
bb107:
  %t422 = load i1, ptr %l205, !tbaa !21
  br i1 %t422, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb147
bb110:
  store %olang.scope zeroinitializer, ptr %s12
  %t423 = load i64, ptr %l15, !tbaa !24
  %t425 = icmp sge i64 %t423, 0
  br i1 %t425, label %bb111, label %bb112
bb111:
  store %olang.scope zeroinitializer, ptr %s13
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l210, !tbaa !29
  %t428 = load i64, ptr %l15, !tbaa !24
  store i64 %t428, ptr %l211, !tbaa !24
  %t429 = load ptr, ptr %l3, !tbaa !29
  store ptr %t429, ptr %l212, !tbaa !29
  store ptr %l9, ptr %l213, !tbaa !29
  %t430 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t430, ptr %l214
  %t431 = load ptr, ptr %l0, !tbaa !29
  store ptr %t431, ptr %l215, !tbaa !29
  %t432 = load ptr, ptr %l2, !tbaa !29
  %t434 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t432)
  store %"compiler/source:Span" %t434, ptr %l217
  br label %bb113
bb112:
  br label %bb119
bb113:
  %t435 = load ptr, ptr %l215, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l217
  %t437 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s13, ptr %t435, %"compiler/source:Span" %t436)
  store { i64, ptr } %t437, ptr %l218
  br label %bb114
bb114:
  %t438 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t438, 0
  %t440 = extractvalue { i64, ptr } %t438, 1
  %t441 = mul i64 %t439, 1
  %t442 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t441)
  call void @llvm.memcpy.p0.p0.i64(ptr %t442, ptr %t440, i64 %t441, i1 false)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t442, 1
  %t445 = load i64, ptr %l16, !tbaa !24
  %t447 = icmp sge i64 %t445, 0
  %t448 = load ptr, ptr %l210, !tbaa !29
  %t449 = load i64, ptr %l211, !tbaa !24
  %t450 = load ptr, ptr %l212, !tbaa !29
  %t451 = load ptr, ptr %l213, !tbaa !29
  %t452 = load %"compiler/source:Span", ptr %l214
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v2, ptr %s0, ptr %s13, ptr %t448, i64 %t449, ptr %t450, ptr %t451, %"compiler/source:Span" %t452, { i64, ptr } %t444, i1 %t447)
  br label %bb115
bb115:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/free:walker", ptr %t455, i32 0, i32 30
  store i64 -1, ptr %t457, !tbaa !24
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/free:walker", ptr %t458, i32 0, i32 31
  store i64 -1, ptr %t460, !tbaa !24
  %t461 = load ptr, ptr %l0, !tbaa !29
  store ptr %t461, ptr %l224, !tbaa !29
  %t462 = load i64, ptr %l15, !tbaa !24
  store i64 %t462, ptr %l225, !tbaa !24
  %t463 = load i64, ptr @G_2ecompiler_2ffree_2eLAssign, !tbaa !24
  store i64 %t463, ptr %l226, !tbaa !24
  %t464 = load ptr, ptr %l2, !tbaa !29
  %t466 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t464)
  store %"compiler/source:Span" %t466, ptr %l228
  br label %bb116
bb116:
  %t467 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s13, i32 0, i32 0)
  store %"compiler/source:Span" %t467, ptr %l229
  br label %bb117
bb117:
  %t468 = load ptr, ptr %l224, !tbaa !29
  %t469 = load i64, ptr %l225, !tbaa !24
  %t470 = load i64, ptr %l226, !tbaa !24
  %t471 = load %"compiler/source:Span", ptr %l228
  %t472 = load %"compiler/source:Span", ptr %l229
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t468, i64 %t469, i64 %t470, %"compiler/source:Span" %t471, %"compiler/source:Span" %t472, i64 -1)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb119:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t475 = getelementptr %"compiler/free:walker", ptr %t473, i32 0, i32 0
  %t476 = load ptr, ptr %t475, !tbaa !29
  store ptr %t476, ptr %l231, !tbaa !29
  %t477 = load ptr, ptr %l2, !tbaa !29
  %t479 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t477)
  store i32 %t479, ptr %l233
  br label %bb120
bb120:
  %t480 = load ptr, ptr %l231, !tbaa !29
  %t481 = load i32, ptr %l233, !tbaa !23
  %t482 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t480, i32 %t481)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t482, ptr %l234
  br label %bb121
bb121:
  %t483 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l234
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t483, ptr %l17
  store ptr %l17, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb122
bb122:
  store %olang.scope zeroinitializer, ptr %s15
  %t485 = load i64, ptr %l19, !tbaa !24
  store i64 %t485, ptr %l236, !tbaa !24
  %t486 = load ptr, ptr %l18, !tbaa !29
  %t488 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s12, ptr %t486)
  store i64 %t488, ptr %l238
  br label %bb123
bb123:
  %t489 = load i64, ptr %l236, !tbaa !24
  %t490 = load i64, ptr %l238, !tbaa !24
  %t491 = icmp slt i64 %t489, %t490
  %t493 = xor i1 %t491, true
  br i1 %t493, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s15)
  br label %bb133
bb125:
  br label %bb126
bb126:
  %t495 = load ptr, ptr %l18, !tbaa !29
  %t496 = load i64, ptr %l19, !tbaa !24
  %t499 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s12, ptr %s12, ptr %t495, i64 %t496)
  store %"compiler/free:leaf" %t499, ptr %l243
  br label %bb127
bb127:
  %t501 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s15, ptr %l243)
  store %"compiler/free:leaf" %t501, ptr %l245
  br label %bb128
bb128:
  %t502 = load %"compiler/free:leaf", ptr %l245
  store %"compiler/free:leaf" %t502, ptr %l20
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l246, !tbaa !29
  %t504 = getelementptr %"compiler/free:leaf", ptr %l20, i32 0, i32 1
  %t505 = load i64, ptr %t504, !tbaa !24
  store i64 %t505, ptr %l247, !tbaa !24
  %t506 = load i64, ptr @G_2ecompiler_2ffree_2eLLeaf, !tbaa !24
  store i64 %t506, ptr %l248, !tbaa !24
  %t507 = load ptr, ptr %l2, !tbaa !29
  %t509 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t507)
  store %"compiler/source:Span" %t509, ptr %l250
  br label %bb129
bb129:
  %t510 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s15, i32 0, i32 0)
  store %"compiler/source:Span" %t510, ptr %l251
  br label %bb130
bb130:
  %t511 = load ptr, ptr %l246, !tbaa !29
  %t512 = load i64, ptr %l247, !tbaa !24
  %t513 = load i64, ptr %l248, !tbaa !24
  %t514 = load %"compiler/source:Span", ptr %l250
  %t515 = load %"compiler/source:Span", ptr %l251
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t511, i64 %t512, i64 %t513, %"compiler/source:Span" %t514, %"compiler/source:Span" %t515, i64 -1)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s15)
  br label %bb132
bb132:
  %t516 = load i64, ptr %l19, !tbaa !24
  %t518 = add i64 %t516, 1
  store i64 %t518, ptr %l19, !tbaa !24
  br label %bb122
bb133:
  %t521 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s12, ptr %l17)
  store i64 %t521, ptr %l255
  br label %bb134
bb134:
  %t522 = load i64, ptr %l255, !tbaa !24
  %t523 = icmp sgt i64 %t522, 0
  br i1 %t523, label %bb135, label %bb136
bb135:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load ptr, ptr %l3, !tbaa !29
  %t527 = load ptr, ptr %l6, !tbaa !29
  %t531 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoredWhole(ptr %v0, ptr %v2, ptr %v0, ptr %t525, ptr %t526, ptr %t527)
  store i1 %t531, ptr %l261
  br label %bb137
bb136:
  store i1 false, ptr %l257, !tbaa !21
  br label %bb138
bb137:
  %t532 = load i1, ptr %l261, !tbaa !21
  %t533 = xor i1 %t532, true
  store i1 %t533, ptr %l257, !tbaa !21
  br label %bb138
bb138:
  %t535 = load i1, ptr %l257, !tbaa !21
  br i1 %t535, label %bb139, label %bb140
bb139:
  %t536 = load ptr, ptr %l0, !tbaa !29
  store ptr %t536, ptr %l263, !tbaa !29
  store ptr %l17, ptr %l264, !tbaa !29
  %t537 = load ptr, ptr %l2, !tbaa !29
  %t539 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t537)
  store i32 %t539, ptr %l266
  br label %bb141
bb140:
  br label %bb146
bb141:
  %t540 = load ptr, ptr %l3, !tbaa !29
  %t541 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t543 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t541, ptr %t543
  %t544 = load %"compiler/source:Span", ptr %l1
  %t545 = load ptr, ptr %l6, !tbaa !29
  %t546 = load ptr, ptr %l263, !tbaa !29
  %t547 = load ptr, ptr %l264, !tbaa !29
  %t548 = load i32, ptr %l266, !tbaa !23
  %t553 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyInto(ptr %v0, ptr %s12, ptr %v2, ptr %s0, ptr %v0, ptr %s0, ptr %t546, ptr %t547, i32 %t548, ptr %t540, ptr %t543, %"compiler/source:Span" %t544, ptr %t545)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t553, ptr %l272
  br label %bb142
bb142:
  %t555 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l272)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t555, ptr %l274
  br label %bb143
bb143:
  %t556 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t556, ptr %l275
  %t557 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l274
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t557, ptr %l9
  %t558 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t558, label %bb144, label %bb145
bb144:
  %t560 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l275, i32 0, i32 0
  %t561 = load { i64, ptr }, ptr %t560
  %t562 = extractvalue { i64, ptr } %t561, 1
  %t563 = call ptr @__olang_region_or(ptr %t562, ptr null)
  %t564 = icmp ne ptr %t563, null
  %t565 = select i1 %t564, ptr %t563, ptr null
  call void @__olang_region_drop(ptr %t565)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l275
  br label %bb145
bb145:
  br label %bb146
bb146:
  call void @__olang_scope_close(ptr %s12)
  br label %bb194
bb147:
  %t566 = load ptr, ptr %l2, !tbaa !29
  store ptr %t566, ptr %l277, !tbaa !29
  store i1 false, ptr %l278, !tbaa !21
  %t567 = load ptr, ptr %l277, !tbaa !29
  %t568 = icmp ne ptr %t567, null
  br i1 %t568, label %bb148, label %bb149
bb148:
  %t570 = load ptr, ptr %l277, !tbaa !29
  %t571 = load i64, ptr %t570, !range !{i64 0, i64 8}
  %t573 = icmp eq i64 %t571, 1
  store i1 %t573, ptr %l278, !tbaa !21
  br label %bb149
bb149:
  %t574 = load i1, ptr %l278, !tbaa !21
  br i1 %t574, label %bb150, label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb162
bb152:
  %t575 = load i64, ptr %l15, !tbaa !24
  %t577 = icmp sge i64 %t575, 0
  br i1 %t577, label %bb153, label %bb154
bb153:
  store %olang.scope zeroinitializer, ptr %s19
  %t579 = load ptr, ptr %l0, !tbaa !29
  store ptr %t579, ptr %l283, !tbaa !29
  %t580 = load i64, ptr %l15, !tbaa !24
  store i64 %t580, ptr %l284, !tbaa !24
  %t581 = load ptr, ptr %l3, !tbaa !29
  store ptr %t581, ptr %l285, !tbaa !29
  store ptr %l9, ptr %l286, !tbaa !29
  %t582 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t582, ptr %l287
  %t583 = load ptr, ptr %l0, !tbaa !29
  store ptr %t583, ptr %l288, !tbaa !29
  %t584 = load ptr, ptr %l2, !tbaa !29
  %t586 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t584)
  store %"compiler/source:Span" %t586, ptr %l290
  br label %bb155
bb154:
  br label %bb161
bb155:
  %t587 = load ptr, ptr %l288, !tbaa !29
  %t588 = load %"compiler/source:Span", ptr %l290
  %t589 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s19, ptr %t587, %"compiler/source:Span" %t588)
  store { i64, ptr } %t589, ptr %l291
  br label %bb156
bb156:
  %t590 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t591 = extractvalue { i64, ptr } %t590, 0
  %t592 = extractvalue { i64, ptr } %t590, 1
  %t593 = mul i64 %t591, 1
  %t594 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t593)
  call void @llvm.memcpy.p0.p0.i64(ptr %t594, ptr %t592, i64 %t593, i1 false)
  %t595 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t594, 1
  %t597 = load ptr, ptr %l283, !tbaa !29
  %t598 = load i64, ptr %l284, !tbaa !24
  %t599 = load ptr, ptr %l285, !tbaa !29
  %t600 = load ptr, ptr %l286, !tbaa !29
  %t601 = load %"compiler/source:Span", ptr %l287
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v2, ptr %s0, ptr %s19, ptr %t597, i64 %t598, ptr %t599, ptr %t600, %"compiler/source:Span" %t601, { i64, ptr } %t596, i1 false)
  br label %bb157
bb157:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t605 = getelementptr %"compiler/free:walker", ptr %t603, i32 0, i32 30
  store i64 -1, ptr %t605, !tbaa !24
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t608 = getelementptr %"compiler/free:walker", ptr %t606, i32 0, i32 31
  store i64 -1, ptr %t608, !tbaa !24
  %t609 = load ptr, ptr %l0, !tbaa !29
  store ptr %t609, ptr %l295, !tbaa !29
  %t610 = load i64, ptr %l15, !tbaa !24
  store i64 %t610, ptr %l296, !tbaa !24
  %t611 = load i64, ptr @G_2ecompiler_2ffree_2eLAssign, !tbaa !24
  store i64 %t611, ptr %l297, !tbaa !24
  %t612 = load ptr, ptr %l2, !tbaa !29
  %t614 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t612)
  store %"compiler/source:Span" %t614, ptr %l299
  br label %bb158
bb158:
  %t615 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s19, i32 0, i32 0)
  store %"compiler/source:Span" %t615, ptr %l300
  br label %bb159
bb159:
  %t616 = load ptr, ptr %l295, !tbaa !29
  %t617 = load i64, ptr %l296, !tbaa !24
  %t618 = load i64, ptr %l297, !tbaa !24
  %t619 = load %"compiler/source:Span", ptr %l299
  %t620 = load %"compiler/source:Span", ptr %l300
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t616, i64 %t617, i64 %t618, %"compiler/source:Span" %t619, %"compiler/source:Span" %t620, i64 -1)
  br label %bb160
bb160:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb161:
  br label %bb194
bb162:
  %t621 = load ptr, ptr %l2, !tbaa !29
  store ptr %t621, ptr %l301, !tbaa !29
  store i1 false, ptr %l302, !tbaa !21
  %t622 = load ptr, ptr %l301, !tbaa !29
  %t623 = icmp ne ptr %t622, null
  br i1 %t623, label %bb163, label %bb164
bb163:
  %t625 = load ptr, ptr %l301, !tbaa !29
  %t626 = load i64, ptr %t625, !range !{i64 0, i64 8}
  %t628 = icmp eq i64 %t626, 4
  store i1 %t628, ptr %l302, !tbaa !21
  br label %bb164
bb164:
  %t629 = load i1, ptr %l302, !tbaa !21
  br i1 %t629, label %bb165, label %bb166
bb165:
  br label %bb167
bb166:
  br label %bb189
bb167:
  store %olang.scope zeroinitializer, ptr %s20
  %t630 = load i64, ptr %l15, !tbaa !24
  %t632 = icmp sge i64 %t630, 0
  br i1 %t632, label %bb168, label %bb169
bb168:
  store %olang.scope zeroinitializer, ptr %s21
  %t634 = load ptr, ptr %l0, !tbaa !29
  store ptr %t634, ptr %l307, !tbaa !29
  %t635 = load i64, ptr %l15, !tbaa !24
  store i64 %t635, ptr %l308, !tbaa !24
  %t636 = load ptr, ptr %l3, !tbaa !29
  store ptr %t636, ptr %l309, !tbaa !29
  store ptr %l9, ptr %l310, !tbaa !29
  %t637 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t637, ptr %l311
  %t638 = load ptr, ptr %l0, !tbaa !29
  store ptr %t638, ptr %l312, !tbaa !29
  %t639 = load ptr, ptr %l2, !tbaa !29
  %t641 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t639)
  store %"compiler/source:Span" %t641, ptr %l314
  br label %bb170
bb169:
  br label %bb173
bb170:
  %t642 = load ptr, ptr %l312, !tbaa !29
  %t643 = load %"compiler/source:Span", ptr %l314
  %t644 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s21, ptr %t642, %"compiler/source:Span" %t643)
  store { i64, ptr } %t644, ptr %l315
  br label %bb171
bb171:
  %t645 = load { i64, ptr }, ptr %l315, !tbaa !27
  %t646 = extractvalue { i64, ptr } %t645, 0
  %t647 = extractvalue { i64, ptr } %t645, 1
  %t648 = mul i64 %t646, 1
  %t649 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t648)
  call void @llvm.memcpy.p0.p0.i64(ptr %t649, ptr %t647, i64 %t648, i1 false)
  %t650 = insertvalue { i64, ptr } undef, i64 %t646, 0
  %t651 = insertvalue { i64, ptr } %t650, ptr %t649, 1
  %t652 = load i64, ptr %l16, !tbaa !24
  %t654 = icmp sge i64 %t652, 0
  %t655 = load ptr, ptr %l307, !tbaa !29
  %t656 = load i64, ptr %l308, !tbaa !24
  %t657 = load ptr, ptr %l309, !tbaa !29
  %t658 = load ptr, ptr %l310, !tbaa !29
  %t659 = load %"compiler/source:Span", ptr %l311
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v2, ptr %s0, ptr %s21, ptr %t655, i64 %t656, ptr %t657, ptr %t658, %"compiler/source:Span" %t659, { i64, ptr } %t651, i1 %t654)
  br label %bb172
bb172:
  %t662 = load ptr, ptr %l0, !tbaa !29
  %t664 = getelementptr %"compiler/free:walker", ptr %t662, i32 0, i32 30
  store i64 -1, ptr %t664, !tbaa !24
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t667 = getelementptr %"compiler/free:walker", ptr %t665, i32 0, i32 31
  store i64 -1, ptr %t667, !tbaa !24
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb173:
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/free:walker", ptr %t668, i32 0, i32 0
  %t671 = load ptr, ptr %t670, !tbaa !29
  store ptr %t671, ptr %l322, !tbaa !29
  %t672 = load ptr, ptr %l2, !tbaa !29
  %t674 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t672)
  store i32 %t674, ptr %l324
  br label %bb174
bb174:
  %t675 = load ptr, ptr %l322, !tbaa !29
  %t676 = load i32, ptr %l324, !tbaa !23
  %t677 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t675, i32 %t676)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t677, ptr %l325
  br label %bb175
bb175:
  %t678 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l325
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t678, ptr %l21
  %t680 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s20, ptr %l21)
  store i64 %t680, ptr %l327
  br label %bb176
bb176:
  %t681 = load i64, ptr %l327, !tbaa !24
  %t682 = icmp sgt i64 %t681, 0
  br i1 %t682, label %bb177, label %bb178
bb177:
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load ptr, ptr %l3, !tbaa !29
  %t686 = load ptr, ptr %l6, !tbaa !29
  %t690 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoredWhole(ptr %v0, ptr %v2, ptr %v0, ptr %t684, ptr %t685, ptr %t686)
  store i1 %t690, ptr %l333
  br label %bb179
bb178:
  store i1 false, ptr %l329, !tbaa !21
  br label %bb180
bb179:
  %t691 = load i1, ptr %l333, !tbaa !21
  %t692 = xor i1 %t691, true
  store i1 %t692, ptr %l329, !tbaa !21
  br label %bb180
bb180:
  %t694 = load i1, ptr %l329, !tbaa !21
  br i1 %t694, label %bb181, label %bb182
bb181:
  %t695 = load ptr, ptr %l0, !tbaa !29
  store ptr %t695, ptr %l335, !tbaa !29
  store ptr %l21, ptr %l336, !tbaa !29
  %t696 = load ptr, ptr %l2, !tbaa !29
  %t698 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t696)
  store i32 %t698, ptr %l338
  br label %bb183
bb182:
  br label %bb188
bb183:
  %t699 = load ptr, ptr %l3, !tbaa !29
  %t700 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t702 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t700, ptr %t702
  %t703 = load %"compiler/source:Span", ptr %l1
  %t704 = load ptr, ptr %l6, !tbaa !29
  %t705 = load ptr, ptr %l335, !tbaa !29
  %t706 = load ptr, ptr %l336, !tbaa !29
  %t707 = load i32, ptr %l338, !tbaa !23
  %t712 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyInto(ptr %v0, ptr %s20, ptr %v2, ptr %s0, ptr %v0, ptr %s0, ptr %t705, ptr %t706, i32 %t707, ptr %t699, ptr %t702, %"compiler/source:Span" %t703, ptr %t704)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t712, ptr %l344
  br label %bb184
bb184:
  %t714 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l344)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t714, ptr %l346
  br label %bb185
bb185:
  %t715 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t715, ptr %l347
  %t716 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l346
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t716, ptr %l9
  %t717 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9
  br i1 %t717, label %bb186, label %bb187
bb186:
  %t719 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l347, i32 0, i32 0
  %t720 = load { i64, ptr }, ptr %t719
  %t721 = extractvalue { i64, ptr } %t720, 1
  %t722 = call ptr @__olang_region_or(ptr %t721, ptr null)
  %t723 = icmp ne ptr %t722, null
  %t724 = select i1 %t723, ptr %t722, ptr null
  call void @__olang_region_drop(ptr %t724)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l347
  br label %bb187
bb187:
  br label %bb188
bb188:
  call void @__olang_scope_close(ptr %s20)
  br label %bb194
bb189:
  br i1 true, label %bb190, label %bb191
bb190:
  br label %bb192
bb191:
  br label %bb193
bb192:
  br label %bb194
bb193:
  call void @__olang_check_failed(ptr @olang_loc_e251e9e241135754_793c210c71879d50)
  unreachable
bb194:
  %t725 = load i64, ptr %l16, !tbaa !24
  %t727 = icmp slt i64 %t725, 0
  br i1 %t727, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s24
  %t729 = load ptr, ptr %l0, !tbaa !29
  store ptr %t729, ptr %l351, !tbaa !29
  store ptr %l9, ptr %l352, !tbaa !29
  %t730 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t730, ptr %l353
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l354, !tbaa !29
  %t732 = load ptr, ptr %l2, !tbaa !29
  %t734 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t732)
  store %"compiler/source:Span" %t734, ptr %l356
  br label %bb197
bb196:
  br label %bb201
bb197:
  %t735 = load ptr, ptr %l354, !tbaa !29
  %t736 = load %"compiler/source:Span", ptr %l356
  %t737 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s24, ptr %t735, %"compiler/source:Span" %t736)
  store { i64, ptr } %t737, ptr %l357
  br label %bb198
bb198:
  %t738 = load { i64, ptr }, ptr %l357, !tbaa !27
  %t739 = extractvalue { i64, ptr } %t738, 0
  %t740 = extractvalue { i64, ptr } %t738, 1
  %t741 = mul i64 %t739, 1
  %t742 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t741)
  call void @llvm.memcpy.p0.p0.i64(ptr %t742, ptr %t740, i64 %t741, i1 false)
  %t743 = insertvalue { i64, ptr } undef, i64 %t739, 0
  %t744 = insertvalue { i64, ptr } %t743, ptr %t742, 1
  store { i64, ptr } %t744, ptr %l358, !tbaa !27
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t746 = load ptr, ptr %l2, !tbaa !29
  %t749 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewithinOf(ptr %v0, ptr %v1, ptr %t745, ptr %t746)
  store i64 %t749, ptr %l361
  br label %bb199
bb199:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/free:walker", ptr %t750, i32 0, i32 31
  %t753 = load i64, ptr %t752, !tbaa !24
  %t754 = load ptr, ptr %l351, !tbaa !29
  %t755 = load ptr, ptr %l352, !tbaa !29
  %t756 = load %"compiler/source:Span", ptr %l353
  %t757 = load { i64, ptr }, ptr %l358, !tbaa !27
  %t758 = load i64, ptr %l361, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %s0, ptr %s24, ptr %t754, ptr %t755, %"compiler/source:Span" %t756, { i64, ptr } %t757, i1 true, i64 %t758, i64 %t753)
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s24)
  br label %bb201
bb201:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t762 = getelementptr %"compiler/free:walker", ptr %t760, i32 0, i32 30
  store i64 -1, ptr %t762, !tbaa !24
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = getelementptr %"compiler/free:walker", ptr %t763, i32 0, i32 31
  store i64 -1, ptr %t765, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecloseAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i32
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i1
  %l27 = alloca ptr
  %l38 = alloca ptr
  %l44 = alloca %"compiler/typed:BlockInfo"
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 37
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Block", ptr %t4, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t12 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H1c6ff733ce949281236b08418b935189(ptr %v0, ptr %v0, ptr %t3, i64 %t9)
  %t13 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t12, 1
  %t14 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t12, 0
  store i32 %t14, ptr %l16
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l15
  br label %bb1
bb1:
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l18
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l2
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:walker", ptr %t21, i32 0, i32 37
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Block", ptr %t24, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t32 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H48be4d072aa67a39865369f0fe94a62c(ptr %v0, ptr %t23, i64 %t29)
  store i1 %t32, ptr %l24
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:walker", ptr %t33, i32 0, i32 11
  %t36 = load i64, ptr %t35, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l27, !tbaa !29
  %t39 = load ptr, ptr %l27, !tbaa !29
  %t40 = getelementptr %"compiler/free:walker", ptr %t39, i32 0, i32 11
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = add i64 %t41, 1
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = getelementptr %"compiler/free:walker", ptr %t45, i32 0, i32 11
  store i64 %t43, ptr %t46, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/free:walker", ptr %t47, i32 0, i32 13
  %t50 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t49, i64 %t50)
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/free:walker", ptr %t53, i32 0, i32 12
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l4, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i64, ptr %l3, !tbaa !24
  %t62 = getelementptr %"compiler/free:walker", ptr %t58, i32 0, i32 12
  store i64 %t59, ptr %t62, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t63)
  store ptr %t65, ptr %l38
  br label %bb8
bb8:
  %t66 = load ptr, ptr %l38, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Body", ptr %t66, i32 0, i32 8
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Block", ptr %t69, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t77 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t68, i64 %t74)
  store %"compiler/typed:BlockInfo" %t77, ptr %l44
  br label %bb9
bb9:
  %t78 = getelementptr %"compiler/typed:BlockInfo", ptr %l44, i32 0, i32 2
  %t79 = load %"compiler/source:Span", ptr %t78
  store %"compiler/source:Span" %t79, ptr %l5
  store ptr %l2, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t82 = load i64, ptr %l7, !tbaa !24
  store i64 %t82, ptr %l47, !tbaa !24
  %t83 = load ptr, ptr %l6, !tbaa !29
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t83)
  store i64 %t85, ptr %l49
  br label %bb11
bb11:
  %t86 = load i64, ptr %l47, !tbaa !24
  %t87 = load i64, ptr %l49, !tbaa !24
  %t88 = icmp slt i64 %t86, %t87
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t93 = load i64, ptr %l7, !tbaa !24
  %t96 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t92, i64 %t93)
  store i32 %t96, ptr %l54
  br label %bb15
bb15:
  %t97 = load i32, ptr %l54, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCallsOf(ptr %v0, ptr %t98, %"compiler/source:Span" %t99, i32 %t97)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t104 = load i64, ptr %l7, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l7, !tbaa !24
  br label %bb10
bb18:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/free:walker", ptr %t108, i32 0, i32 13
  %t111 = load i64, ptr %l3, !tbaa !24
  %t112 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t111, i64 %t112)
  br label %bb19
bb19:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l4, !tbaa !24
  %t120 = getelementptr %"compiler/free:walker", ptr %t116, i32 0, i32 12
  store i64 %t117, ptr %t120, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eelemRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i1
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i64
  %l60 = alloca i64
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2ffree_2einElement(ptr %v1, ptr %a1)
  store i1 %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load i1, ptr %l12, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = getelementptr %"compiler/free:walker", ptr %a0, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t12)
  store i64 %t14, ptr %l17
  br label %bb5
bb5:
  %t15 = load i64, ptr %l17, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb11
bb8:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l7, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l24, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l21, !tbaa !24
  store i64 %t43, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb13, label %bb14
bb13:
  br label %bb30
bb14:
  br label %bb15
bb15:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l10, !tbaa !24
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load i64, ptr %l10, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t62, i64 %t63)
  store i64 %t66, ptr %l44
  br label %bb16
bb16:
  %t67 = load i64, ptr %l44, !tbaa !24
  %t68 = call i64 @compiler_2ffree_2eokind(i64 %t67)
  store i64 %t68, ptr %l45
  br label %bb17
bb17:
  %t69 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t70 = load i64, ptr %l45, !tbaa !24
  %t72 = icmp eq i64 %t70, %t69
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/free:Free", ptr %t74, i32 0, i32 13
  store ptr %t76, ptr %l50, !tbaa !29
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t77, i64 %t78)
  store i64 %t81, ptr %l53
  br label %bb20
bb19:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb23
bb20:
  %t82 = load i64, ptr %l53, !tbaa !24
  %t83 = call i64 @compiler_2ffree_2eoval(i64 %t82)
  store i64 %t83, ptr %l54
  br label %bb21
bb21:
  %t84 = load ptr, ptr %l50, !tbaa !29
  %t85 = load i64, ptr %l54, !tbaa !24
  %t86 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t84, i64 %t85)
  store i1 %t86, ptr %l55
  br label %bb22
bb22:
  %t87 = load i1, ptr %l55, !tbaa !21
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb23
bb23:
  %t88 = load i1, ptr %l48, !tbaa !21
  br i1 %t88, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t89 = load ptr, ptr %l2, !tbaa !29
  store ptr %t89, ptr %l56, !tbaa !29
  %t90 = load i64, ptr %l4, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l60
  br label %bb27
bb27:
  %t96 = load ptr, ptr %l56, !tbaa !29
  %t97 = load i64, ptr %l57, !tbaa !24
  %t98 = load i64, ptr %l60, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v2, ptr %t96, i64 %t97, i64 %t98)
  br label %bb28
bb28:
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l4, !tbaa !24
  br label %bb29
bb29:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l9, !tbaa !24
  br label %bb12
bb30:
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t108 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v2, ptr %t107, i64 %t108)
  br label %bb31
bb31:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeeder(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l19 = alloca i64
  %l20 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:walker", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/free:Free", ptr %t8, i32 0, i32 73
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eLen_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l8
  br label %bb3
bb3:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = icmp eq i64 %t13, 0
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l4, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/free:walker", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/free:Free", ptr %t21, i32 0, i32 74
  store ptr %t23, ptr %l14, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/free:walker", ptr %t24, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t27, i64 %t28)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, ptr %l18
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l14, !tbaa !29
  %t33 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  %t34 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t33)
  %t35 = extractvalue { i32, i64 } %t34, 1
  %t36 = extractvalue { i32, i64 } %t34, 0
  store i32 %t36, ptr %l20
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb10, label %ok.38, !prof !99
ok.38:
  store i64 %t35, ptr %l19
  br label %bb9
bb9:
  %t39 = load i64, ptr %l19, !tbaa !24
  store i64 %t39, ptr %l11, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i64, ptr %l11, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeederArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i64 @compiler_2ffree_2efieldRootLocal(ptr %v1, ptr %t17)
  store i64 %t19, ptr %l13
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %l13, !tbaa !24
  %t22 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeeder(ptr %v0, ptr %t20, i64 %t21)
  store i64 %t22, ptr %l14
  br label %bb7
bb7:
  %t23 = load i64, ptr %l14, !tbaa !24
  store i64 %t23, ptr %l4, !tbaa !24
  br label %bb20
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 17
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l16, !tbaa !21
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l3, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeederArg(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  store i64 %t43, ptr %l23
  br label %bb14
bb14:
  %t44 = load i64, ptr %l23, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_555e391ca9f1c191_fbd79fc4fd463c05)
  unreachable
bb20:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t11 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %v1, ptr %t9, ptr %a2)
  store i64 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp sgt i64 %t12, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/free:walker", ptr %t15, i32 0, i32 4
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t17, i64 %t18)
  store i1 %t21, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t22 = load i1, ptr %l14, !tbaa !21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/free:walker", ptr %t24, i32 0, i32 5
  store i1 true, ptr %t26, !tbaa !21
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2einsidePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l10 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ederefRoot(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %a0, ptr %t11)
  store i64 %t14, ptr %l10
  br label %bb5
bb5:
  %t15 = load i64, ptr %l10, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eownLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i64
  %l16 = alloca ptr
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i64
  %l22 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:walker", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/free:Free", ptr %t8, i32 0, i32 67
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/free:walker", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t10, i64 %t14)
  store i1 %t17, ptr %l10
  br label %bb3
bb3:
  %t18 = load i1, ptr %l10, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l4, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/free:walker", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/free:Free", ptr %t26, i32 0, i32 64
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:walker", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t32, i64 %t33)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t36, ptr %l20
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t38 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  %t39 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t37, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t38)
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l22
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb10, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l21
  br label %bb9
bb9:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l13, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load i64, ptr %l13, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereadOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca i32
  %lp13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/free:leaf"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca i1
  %l36 = alloca i1
  %l47 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i32
  %l57 = alloca %"compiler/source:Span"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca i64
  %l69 = alloca ptr
  %l72 = alloca i64
  %l73 = alloca i64
  %l77 = alloca i1
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca %"compiler/free:leaf"
  %l91 = alloca ptr
  %l94 = alloca i64
  %l95 = alloca i64
  %l100 = alloca i1
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l4
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 1
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l5, !tbaa !23
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t29, i32 0, i32 2
  %t31 = load i32, ptr %t30
  %t35 = sext i32 %t31 to i64
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:walker", ptr %t36, i32 0, i32 35
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = icmp ne i64 %t35, %t39
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb5
bb5:
  %t44 = load i1, ptr %l24, !tbaa !21
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t47, i32 0, i32 0
  %t49 = load %"compiler/source:Span", ptr %t48
  store %"compiler/source:Span" %t49, ptr %l7
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t53, i32 0, i32 1
  %t55 = load i32, ptr %t54
  store i32 %t55, ptr %l8, !tbaa !23
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t59, i32 0, i32 2
  %t61 = load i32, ptr %t60
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/free:walker", ptr %t63, i32 0, i32 33
  %t68 = sext i32 %t61 to i64
  %t71 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %t65, i64 %t68)
  store i1 %t71, ptr %l47
  br label %bb8
bb7:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb9
bb8:
  %t72 = load i1, ptr %l47, !tbaa !21
  store i1 %t72, ptr %l36, !tbaa !21
  br label %bb9
bb9:
  %t73 = load i1, ptr %l36, !tbaa !21
  br i1 %t73, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t76, i32 0, i32 0
  %t78 = load %"compiler/source:Span", ptr %t77
  store %"compiler/source:Span" %t78, ptr %l10
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t82, i32 0, i32 1
  %t84 = load i32, ptr %t83
  store i32 %t84, ptr %l11, !tbaa !23
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t88, i32 0, i32 2
  %t90 = load i32, ptr %t89
  store i32 %t90, ptr %l12, !tbaa !23
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l54, !tbaa !29
  %t93 = load i32, ptr %l2, !tbaa !23
  store i32 %t93, ptr %l55, !tbaa !23
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t94)
  store %"compiler/source:Span" %t96, ptr %l57
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t97 = load ptr, ptr %l54, !tbaa !29
  %t98 = load i32, ptr %l55, !tbaa !23
  %t99 = load %"compiler/source:Span", ptr %l57
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %s1, ptr %t97, i32 %t98, %"compiler/source:Span" %t99, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb14:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t100, ptr %t101)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l60
  br label %bb15
bb15:
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t105, ptr %lp13
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  %t107 = load ptr, ptr %lp13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %t107
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t110 = load ptr, ptr %lp13
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eelemRead(ptr %v0, ptr %v1, ptr %v2, ptr %t108, ptr %t109, ptr %t110)
  br label %bb16
bb16:
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t118 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t114, ptr %t115)
  store i64 %t118, ptr %l66
  br label %bb17
bb17:
  %t119 = load i64, ptr %l66, !tbaa !24
  store i64 %t119, ptr %l14, !tbaa !24
  %t120 = load i64, ptr %l14, !tbaa !24
  %t122 = icmp sge i64 %t120, 0
  br i1 %t122, label %bb18, label %bb19
bb18:
  %t124 = load ptr, ptr %lp13
  store ptr %t124, ptr %l69, !tbaa !29
  %t125 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = call i64 @compiler_2ffree_2eorig(i64 %t125, i64 %t126)
  store i64 %t129, ptr %l72
  br label %bb20
bb19:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t132 = load i32, ptr %l2, !tbaa !23
  %t136 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedRead(ptr %v0, ptr %v1, ptr %t130, ptr %t131, i32 %t132)
  store i1 %t136, ptr %l77
  br label %bb22
bb20:
  %t137 = load ptr, ptr %l69, !tbaa !29
  %t138 = load i64, ptr %l72, !tbaa !24
  %t139 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t137, i64 %t138)
  store i64 %t139, ptr %l73
  br label %bb21
bb21:
  br label %bb37
bb22:
  %t140 = load i1, ptr %l77, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t143 = load ptr, ptr %l3, !tbaa !29
  %t144 = load i32, ptr %l2, !tbaa !23
  %t147 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s5, ptr %t143, i32 %t144)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t147, ptr %l81
  br label %bb25
bb24:
  br label %bb36
bb25:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  %t149 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %t149
  store ptr %t149, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb26
bb26:
  %t151 = load i64, ptr %l16, !tbaa !24
  store i64 %t151, ptr %l83, !tbaa !24
  %t152 = load ptr, ptr %l15, !tbaa !29
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s5, ptr %t152)
  store i64 %t154, ptr %l85
  br label %bb27
bb27:
  %t155 = load i64, ptr %l83, !tbaa !24
  %t156 = load i64, ptr %l85, !tbaa !24
  %t157 = icmp slt i64 %t155, %t156
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb28, label %bb29
bb28:
  br label %bb35
bb29:
  br label %bb30
bb30:
  %t161 = load ptr, ptr %l15, !tbaa !29
  %t162 = load i64, ptr %l16, !tbaa !24
  %t165 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s5, ptr %s5, ptr %t161, i64 %t162)
  store %"compiler/free:leaf" %t165, ptr %l90
  br label %bb31
bb31:
  %t166 = load %"compiler/free:leaf", ptr %l90
  store %"compiler/free:leaf" %t166, ptr %l17
  %t167 = load ptr, ptr %lp13
  store ptr %t167, ptr %l91, !tbaa !29
  %t168 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t169 = getelementptr %"compiler/free:leaf", ptr %l17, i32 0, i32 1
  %t170 = load i64, ptr %t169, !tbaa !24
  %t173 = call i64 @compiler_2ffree_2eorig(i64 %t168, i64 %t170)
  store i64 %t173, ptr %l94
  br label %bb32
bb32:
  %t174 = load ptr, ptr %l91, !tbaa !29
  %t175 = load i64, ptr %l94, !tbaa !24
  %t176 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t174, i64 %t175)
  store i64 %t176, ptr %l95
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t177 = load i64, ptr %l16, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l16, !tbaa !24
  br label %bb26
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l2, !tbaa !23
  %t185 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %t181, i32 %t182)
  store i1 %t185, ptr %l100
  br label %bb38
bb38:
  %t186 = load i1, ptr %l100, !tbaa !21
  br i1 %t186, label %bb39, label %bb40
bb39:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load ptr, ptr %lp13
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %v2, ptr %t187, ptr %t188)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  %t191 = load ptr, ptr %lp13
  %t192 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t191
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eregisteredAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i64
  %l27 = alloca %"compiler/typed:Plan"
  %l29 = alloca %"compiler/typed:Plan"
  %l37 = alloca %"compiler/typed:Plan"
  %l39 = alloca %"compiler/typed:Plan"
  %l40 = alloca { i64, ptr }
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i32
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca i1
  %s0 = alloca %olang.scope
  %t6 = alloca { i64, [2 x i64] }, align 8
  %t38 = alloca %"compiler/typed:Plan", align 8
  %t41 = alloca %"compiler/typed:Plan", align 8
  %t59 = alloca %"compiler/typed:Plan", align 8
  %t62 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [2 x i64] }, ptr %t6, i32 0, i32 0
  store i64 0, ptr %t7
  %t8 = load { i64, [2 x i64] }, ptr %t6
  store { i64, [2 x i64] } %t8, ptr %l4
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/free:walker", ptr %t10, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l12, !tbaa !24
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = getelementptr %"compiler/free:Free", ptr %t14, i32 0, i32 3
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l15
  br label %bb1
bb1:
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = icmp sge i32 %t23, 0
  store i1 %t25, ptr %l17, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb4
bb4:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l1, !tbaa !23
  %t30 = sext i32 %t28 to i64
  store i64 %t30, ptr %l22, !tbaa !24
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/free:Free", ptr %t31, i32 0, i32 3
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/free:walker", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %t36, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t38, ptr %v0, ptr %v0, ptr %t33, i64 %t37)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t38, i64 536, i1 false)
  br label %bb7
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb7:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t41, ptr %v0, ptr %l27)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t41, i64 536, i1 false)
  br label %bb8
bb8:
  %t43 = getelementptr %"compiler/typed:Plan", ptr %l29, i32 0, i32 0
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = load i64, ptr %l22, !tbaa !24
  %t49 = icmp slt i64 %t47, %t46
  store i1 %t49, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t51 = load i1, ptr %l20, !tbaa !21
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/free:Free", ptr %t52, i32 0, i32 3
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/free:walker", ptr %t55, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t59, ptr %v0, ptr %v0, ptr %t54, i64 %t58)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t59, i64 536, i1 false)
  br label %bb12
bb11:
  br label %bb14
bb12:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t62, ptr %v0, ptr %l37)
  call void @llvm.memmove.p0.p0.i64(ptr %l39, ptr %t62, i64 536, i1 false)
  br label %bb13
bb13:
  %t64 = getelementptr %"compiler/typed:Plan", ptr %l39, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l40, !tbaa !27
  %t66 = load i32, ptr %l1, !tbaa !23
  %t68 = sext i32 %t66 to i64
  %t70 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i64 %t68
  %t73 = load { i64, [2 x i64] }, ptr %t72
  store { i64, [2 x i64] } %t73, ptr %l4
  br label %bb14
bb14:
  %t75 = load { i64, [2 x i64] }, ptr %l4
  %t77 = extractvalue { i64, [2 x i64] } %t75, 0
  %t78 = icmp eq i64 %t77, 1
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb15, label %bb16
bb15:
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t83 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eregister(ptr %v0, ptr %t82, i32 %t83)
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  %t86 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t87 = getelementptr { i32 }, ptr %t86, i32 0, i32 0
  %t88 = load i32, ptr %t87
  %t92 = sext i32 %t88 to i64
  store i64 %t92, ptr %l6, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/free:walker", ptr %t94, i32 0, i32 37
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H1c6ff733ce949281236b08418b935189(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  %t101 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t100, 1
  %t102 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t100, 0
  store i32 %t102, ptr %l57
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb20, label %ok.104, !prof !99
ok.104:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l56
  br label %bb19
bb19:
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l56)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l59
  br label %bb22
bb20:
  br label %bb21
bb21:
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l60
  br label %bb23
bb22:
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l52
  br label %bb24
bb23:
  %t109 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t109, ptr %l52
  br label %bb24
bb24:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l7
  %t111 = load i32, ptr %l2, !tbaa !23
  %t114 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l7, i32 %t111)
  store i1 %t114, ptr %l63
  br label %bb25
bb25:
  %t115 = load i1, ptr %l63, !tbaa !21
  %t116 = xor i1 %t115, true
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l7, i32 %t118)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/free:walker", ptr %t121, i32 0, i32 37
  %t124 = load i64, ptr %l6, !tbaa !24
  %t125 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4057097bf127937e673a7f89a723e29a(ptr %v0, ptr %s0, ptr %t123, i64 %t124, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2eremoves(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i1
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca i32
  %l64 = alloca %"compiler/source:Span"
  %l67 = alloca i1
  %l70 = alloca i1
  %l75 = alloca i1
  %l77 = alloca ptr
  %l79 = alloca ptr
  %l81 = alloca i64
  %l85 = alloca %"compiler/source:Span"
  %l86 = alloca { i64, ptr }
  %l92 = alloca i1
  %l95 = alloca i1
  %l96 = alloca i1
  %l99 = alloca i1
  %l100 = alloca i1
  %l108 = alloca i64
  %l110 = alloca i64
  %l111 = alloca i64
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l125 = alloca i64
  %l126 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t5, ptr %l15, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l16, !tbaa !24
  %t8 = load i64, ptr %l16, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l17, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l16, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t19, ptr %l15, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:walker", ptr %t21, i32 0, i32 44
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l20
  br label %bb4
bb4:
  %t26 = load i64, ptr %l20, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = icmp sgt i64 %t27, %t28
  br i1 %t31, label %bb5, label %bb6
bb5:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = icmp sgt i64 %t33, 0
  br i1 %t35, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb10
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = sub i64 %t37, %t38
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = add i64 %t41, %t42
  %t47 = sub i64 %t45, 1
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = sdiv i64 %t47, %t48
  store i64 %t51, ptr %l27, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l27, !tbaa !24
  store i64 %t53, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t54 = load i64, ptr %l24, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb62
bb13:
  br label %bb14
bb14:
  %t63 = load i64, ptr %l2, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l4, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l7, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:walker", ptr %t73, i32 0, i32 49
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  store i64 %t79, ptr %l48
  br label %bb15
bb15:
  %t80 = load i64, ptr %l48, !tbaa !24
  store i64 %t80, ptr %l8, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/free:walker", ptr %t81, i32 0, i32 44
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t83, i64 %t84)
  store i64 %t87, ptr %l52
  br label %bb16
bb16:
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l52, !tbaa !24
  %t91 = icmp ne i64 %t89, %t88
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb21
bb18:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/free:walker", ptr %t93, i32 0, i32 48
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t95, i64 %t96)
  store %"compiler/source:Span" %t99, ptr %l59
  br label %bb19
bb19:
  %t100 = getelementptr %"compiler/source:Span", ptr %l59, i32 0, i32 0
  %t101 = load i32, ptr %t100, !tbaa !23
  store i32 %t101, ptr %l60, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/free:walker", ptr %t102, i32 0, i32 48
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t104, i64 %t105)
  store %"compiler/source:Span" %t108, ptr %l64
  br label %bb20
bb20:
  %t109 = getelementptr %"compiler/source:Span", ptr %l64, i32 0, i32 1
  %t110 = load i32, ptr %t109, !tbaa !23
  %t111 = load i32, ptr %l60, !tbaa !23
  %t113 = icmp sge i32 %t111, %t110
  store i1 %t113, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t115 = load i1, ptr %l55, !tbaa !21
  br i1 %t115, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb24
bb23:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  store i1 %t118, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t120 = load i1, ptr %l67, !tbaa !21
  br i1 %t120, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb28
bb26:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/free:walker", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/free:Free", ptr %t124, i32 0, i32 23
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t126, i64 %t127)
  store i1 %t130, ptr %l75
  br label %bb27
bb27:
  %t131 = load i1, ptr %l75, !tbaa !21
  store i1 %t131, ptr %l70, !tbaa !21
  br label %bb28
bb28:
  %t132 = load i1, ptr %l70, !tbaa !21
  br i1 %t132, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb61
bb30:
  br label %bb31
bb31:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/free:walker", ptr %t133, i32 0, i32 0
  %t136 = load ptr, ptr %t135, !tbaa !29
  store ptr %t136, ptr %l77, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t137)
  store ptr %t139, ptr %l79
  br label %bb32
bb32:
  %t140 = load ptr, ptr %l79, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Body", ptr %t140, i32 0, i32 3
  %t143 = load i64, ptr %t142, !tbaa !24
  store i64 %t143, ptr %l81, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/free:walker", ptr %t144, i32 0, i32 48
  %t147 = load i64, ptr %l7, !tbaa !24
  %t150 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t146, i64 %t147)
  store %"compiler/source:Span" %t150, ptr %l85
  br label %bb33
bb33:
  %t151 = load ptr, ptr %l77, !tbaa !29
  %t152 = load i64, ptr %l81, !tbaa !24
  %t153 = load %"compiler/source:Span", ptr %l85
  %t154 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %s3, ptr %t151, i64 %t152, %"compiler/source:Span" %t153)
  store { i64, ptr } %t154, ptr %l86
  br label %bb34
bb34:
  %t155 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t155, ptr %l9, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t160 = sub i64 %t158, 1
  store i64 %t160, ptr %l10, !tbaa !24
  br label %bb35
bb35:
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = icmp sge i64 %t162, 0
  br i1 %t164, label %bb36, label %bb37
bb36:
  %t166 = load i64, ptr %l10, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i8, ptr %t169, i64 %t166
  %t171 = load i8, ptr %t170, !tbaa !32
  %t173 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t171)
  store i1 %t173, ptr %l95
  br label %bb38
bb37:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb46
bb38:
  %t174 = load i1, ptr %l95, !tbaa !21
  br i1 %t174, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb42
bb40:
  %t175 = load i64, ptr %l10, !tbaa !24
  %t177 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr i8, ptr %t178, i64 %t175
  %t180 = load i8, ptr %t179, !tbaa !32
  %t182 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t180)
  store i1 %t182, ptr %l99
  br label %bb41
bb41:
  %t183 = load i1, ptr %l99, !tbaa !21
  store i1 %t183, ptr %l96, !tbaa !21
  br label %bb42
bb42:
  %t184 = load i1, ptr %l96, !tbaa !21
  br i1 %t184, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb45
bb44:
  %t185 = load i64, ptr %l10, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i8, ptr %t188, i64 %t185
  %t190 = load i8, ptr %t189, !tbaa !32
  %t192 = icmp eq i8 %t190, 95
  store i1 %t192, ptr %l100, !tbaa !21
  br label %bb45
bb45:
  %t194 = load i1, ptr %l100, !tbaa !21
  store i1 %t194, ptr %l92, !tbaa !21
  br label %bb46
bb46:
  %t195 = load i1, ptr %l92, !tbaa !21
  %t196 = xor i1 %t195, true
  br i1 %t196, label %bb47, label %bb48
bb47:
  br label %bb51
bb48:
  br label %bb49
bb49:
  %t198 = load i64, ptr %l10, !tbaa !24
  %t200 = sub i64 %t198, 1
  store i64 %t200, ptr %l10, !tbaa !24
  br label %bb50
bb50:
  br label %bb35
bb51:
  %t202 = load i64, ptr %l10, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l108, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  store i64 %t207, ptr %l110, !tbaa !24
  %t208 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 0
  store i64 %t209, ptr %l111, !tbaa !24
  %t210 = load i64, ptr %l108, !tbaa !24
  %t211 = icmp sge i64 %t210, 0
  br i1 %t211, label %bb52, label %bb53
bb52:
  %t213 = load i64, ptr %l108, !tbaa !24
  %t214 = load i64, ptr %l110, !tbaa !24
  %t215 = icmp sle i64 %t213, %t214
  br i1 %t215, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_3f338d8afa9da51a_e8058e9e002c9166)
  unreachable
bb54:
  %t217 = load i64, ptr %l110, !tbaa !24
  %t218 = load i64, ptr %l111, !tbaa !24
  %t219 = icmp sle i64 %t217, %t218
  br i1 %t219, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_3f338d8afa9da51a_e8058e9e002c9166)
  unreachable
bb56:
  %t221 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = load i64, ptr %l108, !tbaa !24
  %t224 = load i64, ptr %l110, !tbaa !24
  %t225 = getelementptr i8, ptr %t222, i64 %t223
  %t226 = sub i64 %t224, %t223
  %t227 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t225, 1
  store { i64, ptr } %t228, ptr %l11, !tbaa !27
  %t230 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t234 = icmp sgt i64 %t232, 0
  br i1 %t234, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_3f338d8afa9da51a_e8058e9e002c9166)
  unreachable
bb58:
  %t236 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t237 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t240 = extractvalue { i64, ptr } %t236, 1
  %t241 = extractvalue { i64, ptr } %t236, 0
  %t242 = add i64 %t238, %t241
  %t243 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t242)
  call void @olang_textcopy(ptr %t243, ptr %t237, i64 %t238)
  %t244 = getelementptr i8, ptr %t243, i64 %t238
  call void @olang_textcopy(ptr %t244, ptr %t240, i64 %t241)
  %t245 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t243, 1
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t246, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s3)
  br label %bb61
bb61:
  %t248 = load i64, ptr %l6, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l6, !tbaa !24
  br label %bb11
bb62:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l123, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t252, ptr %l124, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t254 = extractvalue { i64, ptr } %t253, 0
  store i64 %t254, ptr %l125, !tbaa !24
  %t255 = load i64, ptr %l125, !tbaa !24
  %t256 = mul i64 %t255, 1
  %t257 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t256)
  %t258 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t257, 1
  store { i64, ptr } %t259, ptr %l126, !tbaa !27
  %t260 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = load i64, ptr %l125, !tbaa !24
  %t265 = mul i64 %t264, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t261, ptr %t263, i64 %t265, i1 false)
  %t266 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t266, ptr %l124, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t267, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereturnedOwnLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb20
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load i64, ptr %l14, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = call i64 @compiler_2ffree_2eokind(i64 %t19)
  store i64 %t21, ptr %l16
  br label %bb7
bb7:
  %t22 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t23 = load i64, ptr %l16, !tbaa !24
  %t25 = icmp eq i64 %t23, %t22
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/free:walker", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = call i64 @compiler_2ffree_2eoval(i64 %t31)
  store i64 %t33, ptr %l23
  br label %bb10
bb9:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb12
bb10:
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = load i64, ptr %l23, !tbaa !24
  %t36 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %t34, i64 %t35)
  store i1 %t36, ptr %l24
  br label %bb11
bb11:
  %t37 = load i1, ptr %l24, !tbaa !21
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/free:walker", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l26, !tbaa !29
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = call i64 @compiler_2ffree_2eoval(i64 %t43)
  store i64 %t45, ptr %l28
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t46 = load i64, ptr @G_2ecompiler_2ffree_2eRStore, !tbaa !24
  store i64 %t46, ptr %l29, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t47)
  store ptr %t49, ptr %l31
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l31, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 3
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l28, !tbaa !24
  %t57 = load i64, ptr %l29, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %s3, ptr %t55, i64 %t56, i64 %t57, i64 %t53, %"compiler/source:Span" %a2, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb1
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t5)
  store ptr %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t16 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %v1, ptr %t13, i64 %t11, %"compiler/source:Span" %a1)
  store { i64, ptr } %t16, ptr %l9
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t17, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca i32
  %l49 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca i64
  %l57 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:walker", ptr %t8, i32 0, i32 29
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l10, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:walker", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eheldPlaces(ptr %v0, ptr %s2, ptr %t19, i32 %a1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l17
  br label %bb7
bb7:
  %t25 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s2, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l19
  br label %bb8
bb8:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t27 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %t27
  store ptr %t27, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = load i64, ptr %l5, !tbaa !24
  store i64 %t29, ptr %l21, !tbaa !24
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t30)
  store i64 %t32, ptr %l23
  br label %bb10
bb10:
  %t33 = load i64, ptr %l21, !tbaa !24
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = icmp slt i64 %t33, %t34
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb12:
  br label %bb13
bb13:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l28
  br label %bb14
bb14:
  %t44 = load i64, ptr %l28, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/free:walker", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/free:Free", ptr %t48, i32 0, i32 79
  %t51 = load i1, ptr %t50, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t53 = load i64, ptr %l6, !tbaa !24
  store i64 %t53, ptr %l32, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/free:walker", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/free:Free", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 4
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l37, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t67)
  store ptr %t69, ptr %l39
  br label %bb17
bb16:
  br label %bb25
bb17:
  %t70 = load ptr, ptr %l39, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t70, i32 0, i32 3
  %t73 = load i64, ptr %t72, !tbaa !24
  %t74 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t78 = load ptr, ptr %l37, !tbaa !29
  %t81 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s4, ptr %t78, i64 %t73, i64 %t77)
  store { i64, ptr } %t81, ptr %l44
  br label %bb18
bb18:
  %t82 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t84 = load i64, ptr %l32, !tbaa !24
  %t85 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t86 = add i64 %t83, %t85
  %t87 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t90 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = add i64 %t89, %t92
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t82, i64 %t83)
  %t98 = getelementptr i8, ptr %t97, i64 %t83
  %t99 = call i64 @__olang_fmt_i64(ptr %t98, i64 %t84)
  %t100 = getelementptr i8, ptr %t98, i64 %t85
  call void @olang_textcopy(ptr %t100, ptr %t87, i64 %t88)
  %t101 = getelementptr i8, ptr %t100, i64 %t88
  call void @olang_textcopy(ptr %t101, ptr %t91, i64 %t92)
  %t102 = getelementptr i8, ptr %t101, i64 %t92
  call void @olang_textcopy(ptr %t102, ptr %t94, i64 %t95)
  %t103 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t97, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = call i32 @std_2fio_2ePrintErr(ptr %s4, { i64, ptr } %t111)
  store i32 %t113, ptr %l47
  %t114 = icmp ne i32 %t113, 0
  br i1 %t114, label %bb20, label %ok.115, !prof !99
ok.115:
  br label %bb19
bb19:
  br label %bb24
bb20:
  %t116 = load i32, ptr %l47, !tbaa !23
  %t117 = ashr i32 %t116, 16
  %t119 = icmp eq i32 %t117, 1
  store i1 %t119, ptr %l49, !tbaa !21
  %t120 = load i32, ptr %l47, !tbaa !23
  %t121 = ashr i32 %t120, 16
  %t123 = icmp eq i32 %t121, 1
  br i1 %t123, label %bb21, label %bb22
bb21:
  call void @__olang_errpay_pop()
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/free:walker", ptr %t125, i32 0, i32 0
  %t128 = load ptr, ptr %t127, !tbaa !29
  store ptr %t128, ptr %l53, !tbaa !29
  %t129 = load i64, ptr %l6, !tbaa !24
  store i64 %t129, ptr %l54, !tbaa !24
  %t130 = load i64, ptr @G_2ecompiler_2ffree_2eRCopied, !tbaa !24
  store i64 %t130, ptr %l55, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t131)
  store ptr %t133, ptr %l57
  br label %bb26
bb26:
  %t134 = load ptr, ptr %l57, !tbaa !29
  %t136 = getelementptr %"compiler/typed:Body", ptr %t134, i32 0, i32 3
  %t137 = load i64, ptr %t136, !tbaa !24
  store i64 %t137, ptr %l59, !tbaa !24
  %t138 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t138, ptr %l60
  store { i64, ptr } %a3, ptr %l61, !tbaa !27
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l2
  %t144 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s3, ptr %t140, %"compiler/source:Span" %t141)
  store { i64, ptr } %t144, ptr %l64
  br label %bb27
bb27:
  %t145 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t147 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t150 = add i64 %t146, %t149
  %t151 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t154 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = add i64 %t153, %t156
  %t158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t159 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t145, i64 %t146)
  %t162 = getelementptr i8, ptr %t161, i64 %t146
  call void @olang_textcopy(ptr %t162, ptr %t148, i64 %t149)
  %t163 = getelementptr i8, ptr %t162, i64 %t149
  call void @olang_textcopy(ptr %t163, ptr %t151, i64 %t152)
  %t164 = getelementptr i8, ptr %t163, i64 %t152
  call void @olang_textcopy(ptr %t164, ptr %t155, i64 %t156)
  %t165 = getelementptr i8, ptr %t164, i64 %t156
  call void @olang_textcopy(ptr %t165, ptr %t158, i64 %t159)
  %t166 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t161, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } %t167, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l53, !tbaa !29
  %t176 = load i64, ptr %l54, !tbaa !24
  %t177 = load i64, ptr %l55, !tbaa !24
  %t178 = load i64, ptr %l59, !tbaa !24
  %t179 = load %"compiler/source:Span", ptr %l60
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %s3, ptr %t175, i64 %t176, i64 %t177, i64 %t178, %"compiler/source:Span" %t179, { i64, ptr } %t174)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t181 = load i64, ptr %l5, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l5, !tbaa !24
  br label %bb9
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l19 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca i64
  %l29 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l49 = alloca i32
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t10 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  store i64 %t10, ptr %l13
  br label %bb1
bb1:
  %t11 = load i64, ptr %l13, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:walker", ptr %t16, i32 0, i32 2
  %t19 = load i1, ptr %t18, !tbaa !21
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb3:
  br label %bb12
bb4:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = getelementptr %"compiler/free:Free", ptr %t23, i32 0, i32 33
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/free:walker", ptr %t26, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t25, i64 %t29)
  store ptr %t32, ptr %l24
  br label %bb6
bb5:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb8
bb6:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l24, !tbaa !29
  %t36 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t34, i64 %t33)
  store i64 %t36, ptr %l26
  br label %bb7
bb7:
  %t37 = load i64, ptr %l26, !tbaa !24
  %t38 = icmp sgt i64 %t37, 0
  store i1 %t38, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t40 = load i1, ptr %l19, !tbaa !21
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t43 = getelementptr %"compiler/free:Free", ptr %t41, i32 0, i32 40
  store i1 true, ptr %t43, !tbaa !21
  br label %bb11
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t44 = load ptr, ptr %l4, !tbaa !29
  store ptr %t44, ptr %l29, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t45)
  store i32 %t47, ptr %l31
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l29, !tbaa !29
  %t49 = load i32, ptr %l31, !tbaa !23
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t48, i32 %t49)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l32
  br label %bb14
bb14:
  %t51 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l6
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s0, ptr %l6)
  store i64 %t53, ptr %l34
  br label %bb15
bb15:
  %t54 = load i64, ptr %l34, !tbaa !24
  %t55 = icmp eq i64 %t54, 0
  br i1 %t55, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = call i64 @compiler_2ffree_2eownCopySite(ptr %v1, ptr %t57)
  store i64 %t59, ptr %l37
  br label %bb19
bb19:
  %t60 = load i64, ptr %l37, !tbaa !24
  %t61 = icmp sge i64 %t60, 0
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l1, !tbaa !29
  store ptr %t63, ptr %l39, !tbaa !29
  br label %bb22
bb21:
  store ptr null, ptr %l39, !tbaa !29
  br label %bb22
bb22:
  %t66 = load ptr, ptr %l39, !tbaa !29
  store ptr %t66, ptr %l7, !tbaa !29
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l43
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l43)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l45
  br label %bb23
bb23:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l8
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l46, !tbaa !29
  store ptr %l6, ptr %l47, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t74)
  store i32 %t76, ptr %l49
  br label %bb24
bb24:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = load ptr, ptr %l7, !tbaa !29
  %t80 = load ptr, ptr %l46, !tbaa !29
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = load i32, ptr %l49, !tbaa !23
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyInto(ptr %v0, ptr %s0, ptr %v1, ptr %s0, ptr %v1, ptr %s0, ptr %t80, ptr %t81, i32 %t82, ptr %t77, ptr %l8, %"compiler/source:Span" %a3, ptr %t79)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l54
  br label %bb25
bb25:
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l54)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l56
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2ffree_2efindIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l15 = alloca ptr
  %l31 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l6, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:If", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %t22, i64 %t23)
  store ptr %t26, ptr %l15
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l15, !tbaa !29
  store ptr %t27, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/typed:If", ptr %t37, i32 0, i32 2
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/typed:If", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  br i1 %t51, label %bb11, label %bb12
bb10:
  br label %bb15
bb11:
  call void @__olang_check_failed(ptr @olang_loc_2779327e577b2afc_81ce12c77e8d0b58)
  unreachable
bb12:
  br label %bb13
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:If", ptr %t53, i32 0, i32 2
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i64, ptr %l1, !tbaa !24
  %t60 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %t56, i64 %t57)
  store ptr %t60, ptr %l31
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l31, !tbaa !29
  store ptr %t61, ptr %rv
  br label %ret
bb15:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ffree_2eisConversion(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = trunc i64 20 to i32
  %t4 = icmp eq i32 %a0, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t8 = extractvalue { i64, ptr } %a1, 0
  %t10 = icmp eq i64 %t8, 1
  store i1 %t10, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l4, !tbaa !21
  store i1 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2eleaves(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 17}
  %t17 = icmp eq i64 %t15, 7
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
  store i1 true, ptr %l1, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6ad9637bd46aa97_a10a430e5eff5d73)
  unreachable
bb15:
  %t19 = load i1, ptr %l1, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2emovesOnly(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l24 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca i1
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
  %t8 = icmp eq i64 %t6, 8
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Collect", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = call i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %t19)
  store i1 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  store i1 %t22, ptr %l4, !tbaa !21
  br label %bb32
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 12
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb20
bb12:
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Seq", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/typed:Seq", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  br i1 %t52, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb19
bb15:
  call void @__olang_check_failed(ptr @olang_loc_66111a817c7bb1ea_259ee9d6b37f7fd6)
  unreachable
bb16:
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Seq", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = call i1 @compiler_2ffree_2emovesOnly(ptr %v0, ptr %t57)
  store i1 %t59, ptr %l30
  br label %bb18
bb18:
  %t60 = load i1, ptr %l30, !tbaa !21
  store i1 %t60, ptr %l24, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l24, !tbaa !21
  store i1 %t61, ptr %l4, !tbaa !21
  br label %bb32
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t63 = load ptr, ptr %l31, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l31, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 17
  store i1 %t69, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l32, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l3, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = call i1 @compiler_2ffree_2emovesOnly(ptr %v0, ptr %t77)
  store i1 %t79, ptr %l38
  br label %bb26
bb26:
  %t80 = load i1, ptr %l38, !tbaa !21
  store i1 %t80, ptr %l4, !tbaa !21
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_7a6e1b2179b57278_bd7dcc1897dee1e4)
  unreachable
bb32:
  %t81 = load i1, ptr %l4, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2eownCopySite(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i1
  %l12 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 4 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 4
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = sext i32 %t27 to i64
  store i64 %t29, ptr %l12, !tbaa !24
  br label %bb8
bb7:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l12, !tbaa !24
  store i64 %t31, ptr %l2, !tbaa !24
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_3413d17bc44a57e3_7c445ad346a50247)
  unreachable
bb14:
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ereadLocalOf(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l2, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t33 = sext i32 %t31 to i64
  store i64 %t33, ptr %l10, !tbaa !24
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d0a35c72e1689727_18f1e8c23ad8e373)
  unreachable
bb16:
  %t35 = load i64, ptr %l10, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_9d733ba55f12146_b889888c2106eef2)
  unreachable
bb22:
  %t36 = load i64, ptr %l3, !tbaa !24
  store i64 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2esamePure(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l3, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t35 = call i1 @compiler_2ffree_2esamePurePlace(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t35, ptr %l20
  br label %bb11
bb11:
  %t36 = load i1, ptr %l20, !tbaa !21
  store i1 %t36, ptr %l11, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_a76c2f62bbf8a003_89a44c6922f8d22f)
  unreachable
bb17:
  %t37 = load i1, ptr %l11, !tbaa !21
  store i1 %t37, ptr %l4, !tbaa !21
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_e31a42735e4aee82_13f2226a4db7316e)
  unreachable
bb23:
  %t38 = load i1, ptr %l4, !tbaa !21
  store i1 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/free:letGo" @compiler_2ffree_3aletGo_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5, %"compiler/source:Span" %a6, i64 %a7, i1 %a8) #0 {
entry:
  %rv = alloca %"compiler/free:letGo"
  br label %start
start:
  br label %bb0
bb0:
  %t20 = insertvalue %"compiler/free:letGo" undef, i64 %a0, 0
  %t22 = insertvalue %"compiler/free:letGo" %t20, i64 %a1, 1
  %t24 = insertvalue %"compiler/free:letGo" %t22, i64 %a2, 2
  %t26 = insertvalue %"compiler/free:letGo" %t24, %"compiler/source:Span" %a3, 3
  %t28 = insertvalue %"compiler/free:letGo" %t26, %"compiler/source:Span" %a4, 4
  %t30 = insertvalue %"compiler/free:letGo" %t28, i64 %a5, 5
  %t32 = insertvalue %"compiler/free:letGo" %t30, %"compiler/source:Span" %a6, 6
  %t34 = insertvalue %"compiler/free:letGo" %t32, i64 %a7, 7
  %t36 = insertvalue %"compiler/free:letGo" %t34, i1 %a8, 8
  store %"compiler/free:letGo" %t36, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:letGo", ptr %rv
  ret %"compiler/free:letGo" %rr
}

define dso_local %"compiler/free:orCall" @compiler_2ffree_3aorCall_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %rv = alloca %"compiler/free:orCall"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/free:orCall" undef, i64 %a0, 0
  %t18 = insertvalue %"compiler/free:orCall" %t16, i64 %a1, 1
  %t20 = insertvalue %"compiler/free:orCall" %t18, i64 %a2, 2
  %t22 = insertvalue %"compiler/free:orCall" %t20, i64 %a3, 3
  %t24 = insertvalue %"compiler/free:orCall" %t22, i64 %a4, 4
  %t26 = insertvalue %"compiler/free:orCall" %t24, ptr %a5, 5
  %t28 = insertvalue %"compiler/free:orCall" %t26, ptr %a6, 6
  store %"compiler/free:orCall" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:orCall", ptr %rv
  ret %"compiler/free:orCall" %rr
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
@__olang_empty_array = external constant [16 x i64]
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0)
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

declare void @__olang_bang_failed_plain(ptr) cold noreturn
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 9}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 9}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb15
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 4, label %bb6 i64 7, label %bb7 i64 8, label %bb8 ]
bb3:
  br label %bb15
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb9, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb10, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  %t44 = icmp eq i32 %t37, %t41
  br i1 %t44, label %bb11, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb12, label %bb1
bb8:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64 }, ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64 }, ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb13, label %bb1
bb9:
  br label %bb3
bb10:
  br label %bb3
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 1
  %t72 = getelementptr { i64, i64 }, ptr %t71, i32 0, i32 1
  %t73 = load i64, ptr %t72
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 1
  %t76 = getelementptr { i64, i64 }, ptr %t75, i32 0, i32 1
  %t77 = load i64, ptr %t76
  %t80 = icmp eq i64 %t73, %t77
  br i1 %t80, label %bb14, label %bb1
bb14:
  br label %bb3
bb15:
  %t82 = load i1, ptr %l2, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

@olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3aFree__2eheldPlaces_2elocal_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
declare void @__olang_region_drop(ptr) noinline
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eassign_2elocal_2e9 = weak hidden constant i1 false
@.d2 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"a whole array of them stored" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a store into it" }>, align 8
define linkonce_odr %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/free:leaf"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/free:leaf"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/free:leaf", ptr %a0
  store %"compiler/free:leaf" %t2, ptr %l1
  %t3 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/free:leaf", ptr %l1
  store %"compiler/free:leaf" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:leaf", ptr %rv
  ret %"compiler/free:leaf" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0) #0 {
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

@.d4 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"a copy of a value holding it" }>, align 8
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

@.d5 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"may let go of anything" }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"removes " }>, align 8
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
@.d7 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"lets go of it" }>, align 8
@.d8 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"its value is handed back here" }>, align 8
@.d9 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"untracked " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_errpay_pop()
@.d12 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a value holding it is made with no store into it, by " }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c": '" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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

@olang_loc_aa0994ef0ced0737_f892d7c71adaceeb = external constant [0 x i8]
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6a56aba8df98d2ec_68c83986518f8c70 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf6c82cf5f0e7149f7052eb5498c4cd14(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_8ae6f1105e3c6679_a593dc3435f5df1d = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2ffree_2ewholeCopySite(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_5e4bdb92ce033105_74c6fffa83d8f4b9 = external constant [0 x i8]
@olang_loc_3c9da0e6d6f67483_45a341cc236b558f = external constant [0 x i8]
@olang_loc_e18b9bec1e794c30_83d73385e9669d24 = external constant [0 x i8]
@olang_loc_51fe1291bf78cb56_b8b2e6162161098a = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_52b05c17772fc4a9_239015c769d5fa15 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %a0)
declare i1 @compiler_2ffree_2eisBlock({ i64, [2 x i64] } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eLen_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare %"compiler/free:feed" @compiler_2ffree_3afeed_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, { i64, [2 x i64] } %a4, { i64, [2 x i64] } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2ePush_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, %"compiler/free:feed" %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecandTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eglobalCand(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f0ef9f3a8cd9f24a_5f2afb921a19c616 = external constant [0 x i8]
@olang_loc_1befe4f0760966d8_ea99a8b72a88b024 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H0fa35282e56bd0cd9b08251ba99b9868(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H08f3244764437e29647226f03a29c83b(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H127fb385441fbfd25cd8404c6b268b5d(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@G_2ecompiler_2ffree_2eRNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/free:reason" @compiler_2ffree_3areason_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2ePush_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:reason" %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_997f49c366488af5_93d2651ee5683809 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H874ab6ecb906549bc54547c0392d06e9(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_3f4c383e8983fca5_b7613254c9da681 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ffree_2eLCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebefore(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1, %"compiler/free:letGo" %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_cba1607a5f8c25be_1da50212bb736ed2 = external constant [0 x i8]
@olang_loc_a35b07018a31f4f3_69e61a5b7415d1c7 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eSetAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @compiler_2ffree_2eokind(i64 %a0)
declare i64 @compiler_2ffree_2eoval(i64 %a0)
@G_2ecompiler_2ffree_2eOPar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOParC = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_12d027853a0706eb_617ec39b0606fdd7 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ewalker_2enewWalker(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereset(ptr %v0, ptr %a0)
@olang_loc_30cfd3b464a887aa_ca3830b5343a05a6 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamPaths(ptr %v0, ptr %a0)
@olang_loc_3a3557a9366273b1_8eafb121351cf8d = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviews(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyStored(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecopiedStore(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeField(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2elocalName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6)
@G_2ecompiler_2ffree_2eLAssign = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5)
@olang_loc_620cc86993d1ee05_2ed463b6a2f232e1 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2einOwner(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eorStoreOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewithinOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2esameValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0)
declare %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eLLeaf = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoredWhole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, %"compiler/source:Span" %a5, ptr %a6)
@olang_loc_e251e9e241135754_793c210c71879d50 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i1 %a4, i64 %a5, i64 %a6)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H1c6ff733ce949281236b08418b935189(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H48be4d072aa67a39865369f0fe94a62c(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCallsOf(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @compiler_2ffree_2einElement(ptr %v0, ptr %a0)
@G_2ecompiler_2ffree_2eOPl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2efieldRootLocal(ptr %v0, ptr %a0)
@olang_loc_555e391ca9f1c191_fbd79fc4fd463c05 = external constant [0 x i8]
declare ptr @compiler_2ffree_2ederefRoot(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ffree_2eorig(i64 %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eregister(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4057097bf127937e673a7f89a723e29a(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_3f338d8afa9da51a_e8058e9e002c9166 = external constant [0 x i8]
@G_2ecompiler_2ffree_2eRStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2ffree_2eRCopied = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_2779327e577b2afc_81ce12c77e8d0b58 = external constant [0 x i8]
@olang_loc_6ad9637bd46aa97_a10a430e5eff5d73 = external constant [0 x i8]
declare i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %a0)
@olang_loc_66111a817c7bb1ea_259ee9d6b37f7fd6 = external constant [0 x i8]
@olang_loc_7a6e1b2179b57278_bd7dcc1897dee1e4 = external constant [0 x i8]
@olang_loc_3413d17bc44a57e3_7c445ad346a50247 = external constant [0 x i8]
@olang_loc_d0a35c72e1689727_18f1e8c23ad8e373 = external constant [0 x i8]
@olang_loc_9d733ba55f12146_b889888c2106eef2 = external constant [0 x i8]
declare i1 @compiler_2ffree_2esamePurePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a76c2f62bbf8a003_89a44c6922f8d22f = external constant [0 x i8]
@olang_loc_e31a42735e4aee82_13f2226a4db7316e = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0)

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
