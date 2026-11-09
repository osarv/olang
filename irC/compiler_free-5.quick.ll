source_filename = "compiler_free-5.quick.ll"
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
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/free:store" = type { i64, i64, i64, %"compiler/source:Span", i64, i64, i64, ptr, ptr }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/free:orStore" = type { i64, i64, ptr, ptr }
%"compiler/free:orCall" = type { i64, i64, i64, i64, i64, ptr, ptr }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:mustW" = type { ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/free:walker" = type { ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/free:retire" = type { i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eDroppedMove(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  %l16 = alloca ptr
  %l24 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 78
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %a1)
  store i64 %t11, ptr %l9
  br label %bb4
bb4:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb8
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:Free", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l16
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 11
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  store i1 %t29, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l12, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:Free", ptr %t33, i32 0, i32 36
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t35, i64 %t36)
  store i64 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l24, !tbaa !24
  store i64 %t40, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  br i1 %t45, label %bb13, label %bb14
bb13:
  store i64 -1, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  %t52 = sub i64 %t48, %t49
  store i64 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFreshCtorAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l4 = alloca ptr
  %l7 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 71
  store ptr %t3, ptr %l4, !tbaa !29
  %t8 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l7
  %t11 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t9, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10)
  store i1 %t11, ptr %l8
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load i1, ptr %l8, !tbaa !21
  store i1 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSoleNow(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca i1
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 78
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %lp1
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/free:Free", ptr %t15, i32 0, i32 53
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l15
  br label %bb5
bb5:
  %t20 = load i64, ptr %l15, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb11
bb8:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l22, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l22, !tbaa !24
  store i64 %t47, ptr %l19, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l19, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb13, label %bb14
bb13:
  br label %bb22
bb14:
  br label %bb15
bb15:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l7, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/free:Free", ptr %t67, i32 0, i32 53
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t69, i64 %t70)
  store i1 %t73, ptr %l43
  br label %bb16
bb16:
  %t74 = load i1, ptr %l43, !tbaa !21
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t75 = load ptr, ptr %lp1
  %t76 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t75, i64 %t76)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l6, !tbaa !24
  br label %bb12
bb22:
  %t83 = load ptr, ptr %lp1
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t83
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayCand(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i32, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t5, i32 %t4)
  store i1 %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l9
  br label %bb5
bb4:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l6, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebefore(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1, %"compiler/free:letGo" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/free:letGo"
  %l2 = alloca %"compiler/free:letGo"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/free:letGo" %a1, ptr %l1
  store %"compiler/free:letGo" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/free:letGo", ptr %l2, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp ne i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 2
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/free:letGo", ptr %l2, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp slt i64 %t10, %t12
  store i1 %t15, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t17 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 3
  %t18 = getelementptr %"compiler/source:Span", ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18, !tbaa !23
  %t20 = getelementptr %"compiler/free:letGo", ptr %l2, i32 0, i32 3
  %t21 = getelementptr %"compiler/source:Span", ptr %t20, i32 0, i32 0
  %t22 = load i32, ptr %t21, !tbaa !23
  %t25 = icmp slt i32 %t19, %t22
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecallAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l18 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  store ptr null, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 11
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_3a516a19293feeda_7f77204653e04cce)
  unreachable
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 11
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t31 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v1, ptr %v1, ptr %t27, i64 %a2)
  store ptr %t31, ptr %l18
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l18, !tbaa !29
  store ptr %t32, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eclassifyHolders(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/free:store"
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/free:store"
  %l23 = alloca i1
  %l24 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i1
  %l51 = alloca ptr
  %l55 = alloca i32
  %l59 = alloca i64
  %l60 = alloca i1
  %l64 = alloca i32
  %l67 = alloca i1
  %l69 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca i32
  %l76 = alloca i32
  %l80 = alloca i1
  %l83 = alloca i1
  %l88 = alloca i1
  %l93 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l107 = alloca %"compiler/free:store"
  %l111 = alloca i1
  %l112 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l117 = alloca i32
  %l118 = alloca { i64, ptr }
  %l121 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 46
  store ptr %t7, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l3, !tbaa !24
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l14
  br label %bb3
bb3:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = load i64, ptr %l14, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb78
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/free:store" %t23, ptr %l19
  br label %bb7
bb7:
  %t24 = load %"compiler/free:store", ptr %l19
  store %"compiler/free:store" %t24, ptr %l4
  %t25 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp slt i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb11
bb9:
  %t32 = load i64, ptr %l5, !tbaa !24
  store i64 %t32, ptr %l24, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:Free", ptr %t33, i32 0, i32 9
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l27
  br label %bb10
bb10:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l27, !tbaa !24
  %t40 = icmp sge i64 %t38, %t39
  store i1 %t40, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l23, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb15
bb13:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/free:Free", ptr %t43, i32 0, i32 11
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t45, i64 %t46)
  store i1 %t49, ptr %l33
  br label %bb14
bb14:
  %t50 = load i1, ptr %l33, !tbaa !21
  store i1 %t50, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t51 = load i1, ptr %l29, !tbaa !21
  br i1 %t51, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb19
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/free:Free", ptr %t52, i32 0, i32 12
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t54, i64 %t55)
  store i1 %t58, ptr %l38
  br label %bb18
bb18:
  %t59 = load i1, ptr %l38, !tbaa !21
  store i1 %t59, ptr %l34, !tbaa !21
  br label %bb19
bb19:
  %t60 = load i1, ptr %l34, !tbaa !21
  br i1 %t60, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb23
bb21:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/free:Free", ptr %t61, i32 0, i32 13
  %t64 = load i64, ptr %l5, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t63, i64 %t64)
  store i1 %t67, ptr %l43
  br label %bb22
bb22:
  %t68 = load i1, ptr %l43, !tbaa !21
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l39, !tbaa !21
  br i1 %t69, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb25:
  br label %bb26
bb26:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/free:Free", ptr %t70, i32 0, i32 10
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t72, i64 %t73)
  store i64 %t76, ptr %l47
  br label %bb27
bb27:
  %t77 = load i64, ptr %l47, !tbaa !24
  %t78 = icmp sge i64 %t77, 0
  br i1 %t78, label %bb28, label %bb29
bb28:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/free:Free", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  store ptr %t83, ptr %l51, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/free:Free", ptr %t84, i32 0, i32 9
  %t87 = load i64, ptr %l5, !tbaa !24
  %t90 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t86, i64 %t87)
  store i32 %t90, ptr %l55
  br label %bb30
bb29:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb33
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/free:Free", ptr %t91, i32 0, i32 10
  %t94 = load i64, ptr %l5, !tbaa !24
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t93, i64 %t94)
  store i64 %t97, ptr %l59
  br label %bb31
bb31:
  %t98 = load ptr, ptr %l51, !tbaa !29
  %t99 = load i32, ptr %l55, !tbaa !23
  %t100 = load i64, ptr %l59, !tbaa !24
  %t101 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %t98, i32 %t99, i64 %t100)
  store i1 %t101, ptr %l60
  br label %bb32
bb32:
  %t102 = load i1, ptr %l60, !tbaa !21
  store i1 %t102, ptr %l49, !tbaa !21
  br label %bb33
bb33:
  %t103 = load i1, ptr %l49, !tbaa !21
  br i1 %t103, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb35:
  br label %bb36
bb36:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/free:Free", ptr %t104, i32 0, i32 15
  %t107 = load i64, ptr %l5, !tbaa !24
  %t110 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t106, i64 %t107)
  store i32 %t110, ptr %l64
  br label %bb37
bb37:
  %t111 = load i32, ptr %l64, !tbaa !23
  store i32 %t111, ptr %l6, !tbaa !23
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t113 = load i32, ptr %l6, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l67
  br label %bb38
bb38:
  %t117 = load i1, ptr %l67, !tbaa !21
  %t118 = xor i1 %t117, true
  br i1 %t118, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb40:
  br label %bb41
bb41:
  %t120 = load ptr, ptr %l1, !tbaa !29
  store ptr %t120, ptr %l69, !tbaa !29
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t122 = load i32, ptr %l6, !tbaa !23
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t121, i32 %t122)
  store i32 %t125, ptr %l72
  br label %bb42
bb42:
  %t126 = load ptr, ptr %l69, !tbaa !29
  %t127 = load i32, ptr %l72, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t128, ptr %l73
  br label %bb43
bb43:
  %t129 = load i32, ptr %l73, !tbaa !23
  store i32 %t129, ptr %l7, !tbaa !23
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t131 = load i32, ptr %l7, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l76
  br label %bb44
bb44:
  %t135 = load i32, ptr %l76, !range !{i32 0, i32 33}
  %t137 = trunc i64 18 to i32
  %t138 = icmp eq i32 %t135, %t137
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb48
bb46:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l7, !tbaa !23
  %t146 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edeclaredHere(ptr %v0, ptr %t142, i32 %t143)
  store i1 %t146, ptr %l83
  br label %bb47
bb47:
  %t147 = load i1, ptr %l83, !tbaa !21
  %t148 = xor i1 %t147, true
  store i1 %t148, ptr %l80, !tbaa !21
  br label %bb48
bb48:
  %t150 = load i1, ptr %l80, !tbaa !21
  br i1 %t150, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb50:
  br label %bb51
bb51:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/free:Free", ptr %t151, i32 0, i32 24
  %t154 = load i32, ptr %l7, !tbaa !23
  %t157 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H2bb64fd79dc59453b9269b2696d6897f(ptr %v0, ptr %t153, i32 %t154)
  store i1 %t157, ptr %l88
  br label %bb52
bb52:
  %t158 = load i1, ptr %l88, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb53, label %bb54
bb53:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/free:Free", ptr %t161, i32 0, i32 24
  %t164 = load i32, ptr %l7, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l93, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l93, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H69db31e35a4e973edf5f90026da8d45a(ptr %v0, ptr %t163, i32 %t164, { i64, ptr } %t165)
  br label %bb55
bb54:
  br label %bb59
bb55:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/free:Free", ptr %t169, i32 0, i32 25
  %t172 = load i32, ptr %l7, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t171, i32 %t172)
  br label %bb56
bb56:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/free:Free", ptr %t175, i32 0, i32 26
  store ptr %t177, ptr %l99, !tbaa !29
  %t178 = load i64, ptr %l5, !tbaa !24
  %t179 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 1
  %t180 = load i64, ptr %t179, !tbaa !24
  %t181 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 2
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 3
  %t184 = load %"compiler/source:Span", ptr %t183
  %t185 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 4
  %t186 = load i64, ptr %t185, !tbaa !24
  %t187 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 5
  %t188 = load i64, ptr %t187, !tbaa !24
  %t189 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 6
  %t190 = load i64, ptr %t189, !tbaa !24
  %t198 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v0, ptr %v0, ptr %v0, i64 %t178, i64 %t180, i64 %t182, %"compiler/source:Span" %t184, i64 %t186, i64 %t188, i64 %t190, ptr null, ptr null)
  store %"compiler/free:store" %t198, ptr %l107
  br label %bb57
bb57:
  %t199 = load ptr, ptr %l99, !tbaa !29
  %t200 = load %"compiler/free:store", ptr %l107
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t199, %"compiler/free:store" %t200)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t201 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 4
  %t202 = load i64, ptr %t201, !tbaa !24
  %t203 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  %t206 = icmp ne i64 %t202, %t203
  br i1 %t206, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb67
bb61:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/free:Free", ptr %t208, i32 0, i32 24
  %t211 = load i32, ptr %l7, !tbaa !23
  %t214 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hdc5ed4f57090b33f7a83fc7b2b1f05b3(ptr %v0, ptr %s2, ptr %t210, i32 %t211)
  %t215 = extractvalue { i32, { i64, ptr } } %t214, 1
  %t216 = extractvalue { i32, { i64, ptr } } %t214, 0
  store i32 %t216, ptr %l117
  %t217 = icmp ne i32 %t216, 0
  br i1 %t217, label %bb63, label %ok.218, !prof !99
ok.218:
  store { i64, ptr } %t215, ptr %l116
  br label %bb62
bb62:
  %t219 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t219, ptr %l112, !tbaa !27
  br label %bb65
bb63:
  br label %bb64
bb64:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l118, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t220, ptr %l112, !tbaa !27
  br label %bb65
bb65:
  %t222 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  %t224 = extractvalue { i64, ptr } %t222, 1
  %t225 = mul i64 %t223, 1
  %t226 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t225)
  call void @llvm.memcpy.p0.p0.i64(ptr %t226, ptr %t224, i64 %t225, i1 false)
  %t227 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t226, 1
  %t230 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t228, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t230, ptr %l121
  br label %bb66
bb66:
  %t231 = load i1, ptr %l121, !tbaa !21
  %t232 = xor i1 %t231, true
  store i1 %t232, ptr %l111, !tbaa !21
  br label %bb67
bb67:
  %t234 = load i1, ptr %l111, !tbaa !21
  br i1 %t234, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb69:
  br label %bb70
bb70:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/free:Free", ptr %t235, i32 0, i32 24
  store ptr %t237, ptr %l124, !tbaa !29
  %t238 = load i32, ptr %l7, !tbaa !23
  store i32 %t238, ptr %l125, !tbaa !23
  %t239 = ptrtoint ptr %s2 to i64
  store i64 %t239, ptr %l126, !tbaa !24
  %t240 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2e1
  br i1 %t240, label %bb71, label %bb72
bb71:
  %t242 = call ptr @__olang_region_make(ptr %s2)
  %t243 = ptrtoint ptr %t242 to i64
  store i64 %t243, ptr %l126, !tbaa !24
  br label %bb72
bb72:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/free:Free", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/generic:Program", ptr %t247, i32 0, i32 0
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = getelementptr %"compiler/load:Loader", ptr %t250, i32 0, i32 4
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t254 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 2
  %t255 = load i64, ptr %t254, !tbaa !24
  %t256 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 3
  %t257 = getelementptr %"compiler/source:Span", ptr %t256, i32 0, i32 0
  %t258 = load i32, ptr %t257, !tbaa !23
  %t260 = sext i32 %t258 to i64
  %t264 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s2, ptr %t253, i64 %t255, i64 %t260)
  store { i64, ptr } %t264, ptr %l135
  br label %bb73
bb73:
  %t265 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t269 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t270 = add i64 %t267, %t269
  %t271 = load i64, ptr %l126
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = call ptr @__olang_scope_alloc(ptr %t272, i64 %t270)
  call void @olang_textcopy(ptr %t273, ptr %t266, i64 %t267)
  %t274 = getelementptr i8, ptr %t273, i64 %t267
  call void @olang_textcopy(ptr %t274, ptr %t268, i64 %t269)
  %t275 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t273, 1
  store { i64, ptr } %t276, ptr %l136, !tbaa !27
  %t277 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2e1
  br i1 %t277, label %bb74, label %bb75
bb74:
  %t279 = load i64, ptr %l126
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = load { i64, ptr }, ptr %l136
  %t282 = extractvalue { i64, ptr } %t281, 1
  %t283 = call ptr @__olang_region_or(ptr %t282, ptr null)
  %t284 = icmp ne ptr %t283, null
  %t285 = select i1 %t284, ptr %t283, ptr null
  %t286 = icmp eq ptr %t285, %t280
  call void @__olang_region_settle(ptr %t280, i1 %t286)
  br label %bb75
bb75:
  %t287 = load ptr, ptr %l124, !tbaa !29
  %t288 = load i32, ptr %l125, !tbaa !23
  %t289 = load { i64, ptr }, ptr %l136, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H69db31e35a4e973edf5f90026da8d45a(ptr %v0, ptr %t287, i32 %t288, { i64, ptr } %t289)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s2)
  br label %bb77
bb77:
  %t290 = load i64, ptr %l3, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l3, !tbaa !24
  br label %bb2
bb78:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edestructs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l11
  br label %bb3
bb3:
  %t16 = load i1, ptr %l11, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l15
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l16
  br label %bb7
bb7:
  %t26 = load i32, ptr %l16, !tbaa !23
  store i32 %t26, ptr %l3, !tbaa !23
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l19
  br label %bb9
bb9:
  %t32 = load i1, ptr %l19, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eglobalCand(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l23 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l27 = alloca i1
  %l32 = alloca ptr
  %l39 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i1
  %l60 = alloca i64
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t24, i32 0, i32 3
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb41
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load i32, ptr %l4, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t34 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t28, i64 %t31)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34, ptr %l23
  br label %bb6
bb6:
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l23
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35, ptr %l5
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 68
  %t39 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H874ab6ecb906549bc54547c0392d06e9(ptr %v0, ptr %t38, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t39)
  store i1 %t42, ptr %l27
  br label %bb7
bb7:
  %t43 = load i1, ptr %l27, !tbaa !21
  br i1 %t43, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/free:Free", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/free:Free", ptr %t47, i32 0, i32 77
  %t50 = load i64, ptr %t49, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t46, i64 %t50)
  store ptr %t53, ptr %l32
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Body", ptr %t54, i32 0, i32 1
  %t57 = load { i64, [2 x i64] }, ptr %t56
  %t61 = extractvalue { i64, [2 x i64] } %t57, 0
  %t62 = icmp eq i64 %t61, 6
  br i1 %t62, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_bb5f0dfb007b1fe9_f99f55ed89f1afa5)
  unreachable
bb20:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t68, ptr %l39
  br label %bb21
bb21:
  %t69 = load i1, ptr %l39, !tbaa !21
  store i1 %t69, ptr %l7, !tbaa !21
  %t70 = load i1, ptr %l7, !tbaa !21
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandleCand(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t78, ptr %l45
  br label %bb24
bb23:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb25
bb24:
  %t79 = load i1, ptr %l45, !tbaa !21
  store i1 %t79, ptr %l42, !tbaa !21
  br label %bb25
bb25:
  %t80 = load i1, ptr %l42, !tbaa !21
  store i1 %t80, ptr %l8, !tbaa !21
  %t81 = load i1, ptr %l7, !tbaa !21
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb26, label %bb27
bb26:
  %t85 = load i1, ptr %l8, !tbaa !21
  %t87 = xor i1 %t85, true
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb28
bb28:
  %t89 = load i1, ptr %l48, !tbaa !21
  br i1 %t89, label %bb29, label %bb30
bb29:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l2, !tbaa !23
  %t94 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l54
  br label %bb31
bb30:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb32
bb31:
  %t95 = load i1, ptr %l54, !tbaa !21
  %t96 = xor i1 %t95, true
  store i1 %t96, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t98 = load i1, ptr %l51, !tbaa !21
  br i1 %t98, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr %l2, !tbaa !23
  %t101 = load i1, ptr %l8, !tbaa !21
  %t102 = load i32, ptr %l2, !tbaa !23
  %t107 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2enewPlace(ptr %v0, ptr %t99, i32 %t100, i64 -4, i1 %t101, i32 %t102, i1 false)
  store i64 %t107, ptr %l60
  br label %bb36
bb36:
  %t108 = load i64, ptr %l60, !tbaa !24
  store i64 %t108, ptr %l9, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/free:Free", ptr %t109, i32 0, i32 12
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load i1, ptr %l7, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t111, i64 %t112, i1 %t113)
  br label %bb37
bb37:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/free:Free", ptr %t117, i32 0, i32 69
  %t120 = load i64, ptr %l9, !tbaa !24
  %t121 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t119, i64 %t120, i64 %t121)
  br label %bb38
bb38:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/free:Free", ptr %t125, i32 0, i32 70
  %t128 = load i64, ptr %l9, !tbaa !24
  %t129 = load i32, ptr %l4, !tbaa !23
  %t131 = sext i32 %t129 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t127, i64 %t128, i64 %t131)
  br label %bb39
bb39:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/free:Free", ptr %t135, i32 0, i32 68
  %t138 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t139 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t137, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t138, i64 %t139)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s1)
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
  call void @__olang_check_failed(ptr @olang_loc_4607beb6ac2e2918_142733ac3129574)
  unreachable
bb46:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisDtor(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i1
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
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb3
bb3:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l5, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:Free", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l15
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 1
  %t27 = load { i64, [2 x i64] }, ptr %t26
  %t31 = extractvalue { i64, [2 x i64] } %t27, 0
  %t32 = icmp eq i64 %t31, 3
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_9eead29ed0644a31_3adf6a8ef4d2d8d5)
  unreachable
bb17:
  %t34 = load i1, ptr %l18, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t24 = icmp eq i64 %t23, -3
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

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2enoteDtor(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l11 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i32
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l37 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i1
  %l47 = alloca ptr
  %l50 = alloca i32
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %t8)
  store ptr %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l11, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 1
  %t15 = load { i64, [2 x i64] }, ptr %t14
  store { i64, [2 x i64] } %t15, ptr %l3
  %t17 = load { i64, [2 x i64] }, ptr %l3
  %t19 = extractvalue { i64, [2 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 3
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t23 = getelementptr { i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/free:Free", ptr %t26, i32 0, i32 81
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i32, ptr %l4, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l21
  br label %bb6
bb6:
  %t34 = load i32, ptr %l21, !tbaa !23
  %t35 = sext i32 %t34 to i64
  %t36 = load i64, ptr %l1, !tbaa !24
  %t37 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t37, i64 %t35, i64 %t36)
  br label %bb7
bb7:
  br label %bb33
bb8:
  %t40 = load { i64, [2 x i64] }, ptr %l3
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 1
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb28
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l2, !tbaa !29
  store ptr %t45, ptr %l26, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/free:Free", ptr %t46, i32 0, i32 1
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store ptr %t52, ptr %l30
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %t55, !tbaa !23
  %t57 = load ptr, ptr %l26, !tbaa !29
  %t59 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s2, ptr %t57, i32 %t56)
  store { i64, ptr } %t59, ptr %l33
  br label %bb13
bb13:
  %t60 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t60, ptr %l5, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = icmp eq i64 %t63, 1
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i32, ptr %t69, i64 0
  %t71 = load i32, ptr %t70, !tbaa !33
  %t74 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t67, i32 %t71)
  store i1 %t74, ptr %l40
  br label %bb16
bb15:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  %t75 = load i1, ptr %l40, !tbaa !21
  store i1 %t75, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l37, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l2, !tbaa !29
  store ptr %t77, ptr %l42, !tbaa !29
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i32, ptr %t80, i64 0
  %t82 = load i32, ptr %t81, !tbaa !33
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t78, i32 %t82)
  store i32 %t85, ptr %l45
  br label %bb20
bb19:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb20:
  %t86 = load ptr, ptr %l42, !tbaa !29
  %t87 = load i32, ptr %l45, !tbaa !23
  %t88 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t88, ptr %l46
  br label %bb21
bb21:
  %t89 = load i1, ptr %l46, !tbaa !21
  store i1 %t89, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t90 = load i1, ptr %l41, !tbaa !21
  br i1 %t90, label %bb23, label %bb24
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l47, !tbaa !29
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t93 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i32, ptr %t94, i64 0
  %t96 = load i32, ptr %t95, !tbaa !33
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t92, i32 %t96)
  store i32 %t99, ptr %l50
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t100 = load ptr, ptr %l47, !tbaa !29
  %t101 = load i32, ptr %l50, !tbaa !23
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eregister(ptr %v0, ptr %t100, i32 %t101)
  br label %bb26
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_4e10a6e17fa9b999_b873e8c9bb06b2fd)
  unreachable
bb33:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyPath(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l24 = alloca i1
  %l27 = alloca i32
  %l31 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i32
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l78 = alloca { i64, ptr }
  %l87 = alloca i1
  %l89 = alloca { i64, ptr }
  %l95 = alloca i1
  %l99 = alloca { i64, ptr }
  %l102 = alloca i1
  %l104 = alloca { i64, ptr }
  %l107 = alloca i1
  %l108 = alloca i1
  %l110 = alloca { i64, ptr }
  %l113 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l14, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  store ptr %t5, ptr %l15, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l18
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l15, !tbaa !29
  %t12 = load i32, ptr %l18, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l19
  br label %bb3
bb3:
  %t14 = load i32, ptr %l19, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t21 = icmp sge i64 %t15, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb7
bb5:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l27
  br label %bb6
bb6:
  %t28 = load i32, ptr %l27, !range !{i32 0, i32 33}
  %t30 = trunc i64 18 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l24, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb11
bb9:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t37 = load i32, ptr %l5, !tbaa !23
  %t40 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l34
  br label %bb10
bb10:
  %t41 = load i1, ptr %l34, !tbaa !21
  %t42 = xor i1 %t41, true
  store i1 %t42, ptr %l31, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l31, !tbaa !21
  br i1 %t44, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb16
bb13:
  %t45 = load ptr, ptr %l4, !tbaa !29
  store ptr %t45, ptr %l37, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t47 = load i32, ptr %l5, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l40
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l37, !tbaa !29
  %t52 = load i32, ptr %l40, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t53, ptr %l41
  br label %bb15
bb15:
  %t54 = load i32, ptr %l41, !range !{i32 0, i32 6}
  %t56 = trunc i64 0 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l36, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t63 = load ptr, ptr %l4, !tbaa !29
  store ptr %t63, ptr %l46, !tbaa !29
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t65 = load i32, ptr %l5, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l49
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l46, !tbaa !29
  %t70 = load i32, ptr %l49, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l50
  br label %bb21
bb21:
  %t72 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t72, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb22, label %bb23
bb22:
  %t83 = load i64, ptr %l9, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb27
bb24:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l59, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb26
bb26:
  %t103 = load i64, ptr %l59, !tbaa !24
  store i64 %t103, ptr %l56, !tbaa !24
  br label %bb27
bb27:
  %t104 = load i64, ptr %l56, !tbaa !24
  store i64 %t104, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb28
bb28:
  %t105 = load i64, ptr %l11, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb29, label %bb30
bb29:
  br label %bb55
bb30:
  br label %bb31
bb31:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t114 = load i64, ptr %l11, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l12, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t124, ptr %l78, !tbaa !27
  %t125 = load i64, ptr %l3, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i64, ptr %t128, i64 %t125
  %t130 = load i64, ptr %t129, !tbaa !34
  %t133 = icmp eq i64 %t123, %t130
  br i1 %t133, label %bb32, label %bb33
bb32:
  %t135 = load i64, ptr %l3, !tbaa !24
  %t137 = add i64 %t135, 1
  %t138 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t143 = icmp slt i64 %t137, %t140
  br i1 %t143, label %bb34, label %bb35
bb33:
  br label %bb41
bb34:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t146, ptr %l89, !tbaa !27
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i32, ptr %t150, i64 %t147
  %t152 = load i32, ptr %t151, !tbaa !33
  %t153 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t154 = load i64, ptr %l3, !tbaa !24
  %t156 = add i64 %t154, 1
  %t161 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyPath(ptr %v0, ptr %v1, ptr %t145, i32 %t152, { i64, ptr } %t153, i64 %t156)
  store i1 %t161, ptr %l95
  br label %bb36
bb35:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb37
bb36:
  %t162 = load i1, ptr %l95, !tbaa !21
  %t163 = xor i1 %t162, true
  store i1 %t163, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t165 = load i1, ptr %l87, !tbaa !21
  br i1 %t165, label %bb38, label %bb39
bb38:
  store i1 false, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb54
bb41:
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t168, ptr %l99, !tbaa !27
  %t169 = load i64, ptr %l12, !tbaa !24
  %t171 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i32, ptr %t172, i64 %t169
  %t174 = load i32, ptr %t173, !tbaa !33
  %t177 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t167, i32 %t174)
  store i1 %t177, ptr %l102
  br label %bb42
bb42:
  %t178 = load i1, ptr %l102, !tbaa !21
  br i1 %t178, label %bb43, label %bb44
bb43:
  br label %bb54
bb44:
  br label %bb45
bb45:
  %t179 = load ptr, ptr %l4, !tbaa !29
  %t180 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t180, ptr %l104, !tbaa !27
  %t181 = load i64, ptr %l12, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i32, ptr %t184, i64 %t181
  %t186 = load i32, ptr %t185, !tbaa !33
  %t189 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t179, i32 %t186)
  store i1 %t189, ptr %l107
  br label %bb46
bb46:
  %t190 = load i1, ptr %l107, !tbaa !21
  br i1 %t190, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb50
bb48:
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t192, ptr %l110, !tbaa !27
  %t193 = load i64, ptr %l12, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i32, ptr %t196, i64 %t193
  %t198 = load i32, ptr %t197, !tbaa !33
  %t201 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t191, i32 %t198)
  store i1 %t201, ptr %l113
  br label %bb49
bb49:
  %t202 = load i1, ptr %l113, !tbaa !21
  store i1 %t202, ptr %l108, !tbaa !21
  br label %bb50
bb50:
  %t203 = load i1, ptr %l108, !tbaa !21
  br i1 %t203, label %bb51, label %bb52
bb51:
  store i1 false, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t205 = load i64, ptr %l11, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l11, !tbaa !24
  br label %bb28
bb55:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eorVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, [2 x i64] } %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i1
  %l64 = alloca i1
  %l72 = alloca { i64, [2 x i64] }
  %l74 = alloca { i64, [2 x i64] }
  %l76 = alloca i1
  %l77 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca i64
  %l85 = alloca i1
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, [2 x i64] }
  %l94 = alloca { i64, [2 x i64] }
  %l96 = alloca i1
  %l98 = alloca i64
  %l106 = alloca { i64, ptr }
  %l110 = alloca i1
  %l111 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, [2 x i64] } %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l5, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sge i64 %t5, 63
  store i1 %t7, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l18, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/free:Free", ptr %t11, i32 0, i32 3
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l25
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l25, !tbaa !29
  store ptr %t18, ptr %l6, !tbaa !29
  %t19 = load i64, ptr %l5, !tbaa !24
  store i64 %t19, ptr %l26, !tbaa !24
  %t20 = load i64, ptr %l26, !tbaa !24
  %t21 = load i64, ptr %l26, !tbaa !24
  %t22 = shl i64 1, %t21
  store i64 %t22, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load i64, ptr %l10, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb13
bb10:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l10, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l10, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l37, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l37, !tbaa !24
  store i64 %t57, ptr %l34, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l34, !tbaa !24
  store i64 %t58, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb14
bb14:
  %t59 = load i64, ptr %l12, !tbaa !24
  %t60 = load i64, ptr %l11, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb43
bb16:
  br label %bb17
bb17:
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l12, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l13, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load i64, ptr %l13, !tbaa !24
  %t83 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t77, i64 %t78, i64 %t79)
  store i64 %t83, ptr %l58
  br label %bb18
bb18:
  %t84 = load i64, ptr %l58, !tbaa !24
  store i64 %t84, ptr %l14, !tbaa !24
  %t85 = load i64, ptr %l14, !tbaa !24
  %t87 = icmp slt i64 %t85, 0
  br i1 %t87, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb21
bb20:
  %t89 = load i64, ptr %l14, !tbaa !24
  %t91 = icmp sge i64 %t89, 63
  store i1 %t91, ptr %l61, !tbaa !21
  br label %bb21
bb21:
  %t93 = load i1, ptr %l61, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb24
bb23:
  %t94 = load i64, ptr %l14, !tbaa !24
  %t95 = load i64, ptr %l5, !tbaa !24
  %t98 = icmp eq i64 %t94, %t95
  store i1 %t98, ptr %l64, !tbaa !21
  br label %bb24
bb24:
  %t100 = load i1, ptr %l64, !tbaa !21
  br i1 %t100, label %bb25, label %bb26
bb25:
  br label %bb42
bb26:
  br label %bb27
bb27:
  %t101 = load ptr, ptr %l6, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Call", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %t104, !tbaa !23
  %t106 = load i64, ptr %l14, !tbaa !24
  %t110 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t101, i32 %t105, i64 %t106)
  store { i64, [2 x i64] } %t110, ptr %l72
  br label %bb28
bb28:
  %t111 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t111, ptr %l74
  %t114 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l72, ptr %l74)
  store i1 %t114, ptr %l76
  br label %bb29
bb29:
  %t115 = load i1, ptr %l76, !tbaa !21
  br i1 %t115, label %bb30, label %bb31
bb30:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Call", ptr %t117, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l80, !tbaa !27
  %t121 = load i64, ptr %l13, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t129 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t116, ptr %t126)
  store i64 %t129, ptr %l83
  br label %bb32
bb31:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb33
bb32:
  %t130 = load i64, ptr %l83, !tbaa !24
  %t131 = icmp sge i64 %t130, 0
  store i1 %t131, ptr %l77, !tbaa !21
  br label %bb33
bb33:
  %t133 = load i1, ptr %l77, !tbaa !21
  br i1 %t133, label %bb34, label %bb35
bb34:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load ptr, ptr %l2, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Call", ptr %t136, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l89, !tbaa !27
  %t140 = load i64, ptr %l13, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr ptr, ptr %t143, i64 %t140
  %t145 = load ptr, ptr %t144, !tbaa !39
  %t149 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltAt(ptr %v0, ptr %v1, ptr %t134, i64 %t135, ptr %t145)
  store { i64, [2 x i64] } %t149, ptr %l92
  br label %bb36
bb35:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb38
bb36:
  %t150 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t150, ptr %l94
  %t153 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l92, ptr %l94)
  store i1 %t153, ptr %l96
  br label %bb37
bb37:
  %t154 = load i1, ptr %l96, !tbaa !21
  store i1 %t154, ptr %l85, !tbaa !21
  br label %bb38
bb38:
  %t155 = load i1, ptr %l85, !tbaa !21
  br i1 %t155, label %bb39, label %bb40
bb39:
  %t156 = load i64, ptr %l7, !tbaa !24
  %t157 = load i64, ptr %l14, !tbaa !24
  store i64 %t157, ptr %l98, !tbaa !24
  %t158 = load i64, ptr %l98, !tbaa !24
  %t159 = load i64, ptr %l98, !tbaa !24
  %t160 = shl i64 1, %t159
  %t163 = or i64 %t156, %t160
  store i64 %t163, ptr %l7, !tbaa !24
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t165 = load i64, ptr %l12, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l12, !tbaa !24
  br label %bb14
bb43:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/free:Free", ptr %t169, i32 0, i32 2
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t173 = load i64, ptr %l3, !tbaa !24
  %t176 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eVarRels(ptr %v0, ptr %s0, ptr %t172, i64 %t173)
  store { i64, ptr } %t176, ptr %l106
  br label %bb44
bb44:
  %t177 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l7, !tbaa !24
  %t184 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erelsFit(ptr %v0, ptr %s0, ptr %t178, { i64, ptr } %t177, i64 %t180)
  store i1 %t184, ptr %l110
  br label %bb45
bb45:
  %t185 = load i1, ptr %l110, !tbaa !21
  br i1 %t185, label %bb46, label %bb47
bb46:
  %t186 = load i64, ptr %l7, !tbaa !24
  store i64 %t186, ptr %l111, !tbaa !24
  br label %bb48
bb47:
  store i64 -1, ptr %l111, !tbaa !24
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t188 = load i64, ptr %l111, !tbaa !24
  store i64 %t188, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eouterFirst(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t69 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 46
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l11
  br label %bb2
bb2:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l18, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l18, !tbaa !24
  store i64 %t37, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l15, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  %t57 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t57, i64 %t55)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb9
bb15:
  %t65 = load ptr, ptr %lp1
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t68 = ptrtoint ptr %t67 to i64
  %t70 = getelementptr { ptr, ptr }, ptr %t69, i32 0, i32 0
  store ptr %t66, ptr %t70, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t72 = getelementptr { ptr, ptr }, ptr %t69, i32 0, i32 1
  store ptr %v0, ptr %t72, !tbaa !28
  %t73 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t74 = insertvalue { ptr, ptr } %t73, ptr %t69, 1
  %t77 = extractvalue { ptr, ptr } %t74, 0
  %t78 = extractvalue { ptr, ptr } %t74, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v1, ptr %s0, ptr %t65, ptr %t77, ptr %t78)
  br label %bb16
bb16:
  %t79 = load ptr, ptr %lp1
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t79
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceMayRegister(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l71 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 7
  store i1 %t26, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb54
bb14:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb15, label %bb16
bb15:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 8}
  %t35 = icmp eq i64 %t33, 2
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb16
bb16:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb17, label %bb18
bb17:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l2, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t47 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  store i1 %t47, ptr %l28
  br label %bb20
bb20:
  %t48 = load i1, ptr %l28, !tbaa !21
  store i1 %t48, ptr %l7, !tbaa !21
  br label %bb54
bb21:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t50 = load ptr, ptr %l29, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb22, label %bb23
bb22:
  %t53 = load ptr, ptr %l29, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 8}
  %t56 = icmp eq i64 %t54, 3
  store i1 %t56, ptr %l30, !tbaa !21
  br label %bb23
bb23:
  %t57 = load i1, ptr %l30, !tbaa !21
  br i1 %t57, label %bb24, label %bb25
bb24:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t60, i32 0, i32 2
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t68 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceMayRegister(ptr %v0, ptr %v1, ptr %t64, ptr %t65)
  store i1 %t68, ptr %l37
  br label %bb27
bb27:
  %t69 = load i1, ptr %l37, !tbaa !21
  store i1 %t69, ptr %l7, !tbaa !21
  br label %bb54
bb28:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb29, label %bb30
bb29:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 4
  store i1 %t77, ptr %l39, !tbaa !21
  br label %bb30
bb30:
  %t78 = load i1, ptr %l39, !tbaa !21
  br i1 %t78, label %bb31, label %bb32
bb31:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Elem", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t92 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceMayRegister(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
  store i1 %t92, ptr %l47
  br label %bb34
bb34:
  %t93 = load i1, ptr %l47, !tbaa !21
  br i1 %t93, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb38
bb36:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l4, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Elem", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t101 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t94, ptr %t98)
  store i1 %t101, ptr %l52
  br label %bb37
bb37:
  %t102 = load i1, ptr %l52, !tbaa !21
  store i1 %t102, ptr %l48, !tbaa !21
  br label %bb38
bb38:
  %t103 = load i1, ptr %l48, !tbaa !21
  store i1 %t103, ptr %l7, !tbaa !21
  br label %bb54
bb39:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store ptr %t104, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t105 = load ptr, ptr %l53, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb40, label %bb41
bb40:
  %t108 = load ptr, ptr %l53, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 8}
  %t111 = icmp eq i64 %t109, 5
  store i1 %t111, ptr %l54, !tbaa !21
  br label %bb41
bb41:
  %t112 = load i1, ptr %l54, !tbaa !21
  br i1 %t112, label %bb42, label %bb43
bb42:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t115, i32 0, i32 2
  %t117 = load ptr, ptr %t116
  store ptr %t117, ptr %l5, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l5, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Payload", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t126 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceMayRegister(ptr %v0, ptr %v1, ptr %t119, ptr %t123)
  store i1 %t126, ptr %l62
  br label %bb45
bb45:
  %t127 = load i1, ptr %l62, !tbaa !21
  store i1 %t127, ptr %l7, !tbaa !21
  br label %bb54
bb46:
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t129 = load ptr, ptr %l63, !tbaa !29
  %t130 = icmp ne ptr %t129, null
  br i1 %t130, label %bb47, label %bb48
bb47:
  %t132 = load ptr, ptr %l63, !tbaa !29
  %t133 = load i64, ptr %t132, !range !{i64 0, i64 8}
  %t135 = icmp eq i64 %t133, 6
  store i1 %t135, ptr %l64, !tbaa !21
  br label %bb48
bb48:
  %t136 = load i1, ptr %l64, !tbaa !21
  br i1 %t136, label %bb49, label %bb50
bb49:
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t139 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t139, i32 0, i32 2
  %t141 = load ptr, ptr %t140
  store ptr %t141, ptr %l6, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t147 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t143, ptr %t144)
  store i1 %t147, ptr %l71
  br label %bb52
bb52:
  %t148 = load i1, ptr %l71, !tbaa !21
  store i1 %t148, ptr %l7, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_a4118a366f7ca1d5_524409770a0878b9)
  unreachable
bb54:
  %t149 = load i1, ptr %l7, !tbaa !21
  store i1 %t149, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca i32
  %l20 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l42 = alloca i64
  %l44 = alloca ptr
  %l48 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l49 = alloca i64
  %l50 = alloca i32
  %s3 = alloca %olang.scope
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t23)
  store i32 %t25, ptr %l18
  br label %bb6
bb6:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = load i32, ptr %l18, !tbaa !23
  %t30 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t27, i32 %t28, i64 %t26)
  store i64 %t30, ptr %l20
  br label %bb7
bb7:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l7, !tbaa !24
  br label %bb33
bb8:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 8}
  %t39 = icmp eq i64 %t37, 4
  store i1 %t39, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l27, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l28, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Elem", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t52)
  store i32 %t54, ptr %l31
  br label %bb14
bb14:
  %t55 = load ptr, ptr %l28, !tbaa !29
  %t56 = load i32, ptr %l31, !tbaa !23
  %t57 = call i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t57, ptr %l32
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l27, !tbaa !29
  %t59 = load i32, ptr %l32, !tbaa !23
  %t60 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t58, i32 %t59, i64 -1)
  store i64 %t60, ptr %l33
  br label %bb16
bb16:
  %t61 = load i64, ptr %l33, !tbaa !24
  store i64 %t61, ptr %l7, !tbaa !24
  br label %bb33
bb17:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb18, label %bb19
bb18:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 8}
  %t69 = icmp eq i64 %t67, 1
  store i1 %t69, ptr %l35, !tbaa !21
  br label %bb19
bb19:
  %t70 = load i1, ptr %l35, !tbaa !21
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t73, i32 0, i32 2
  %t75 = load i64, ptr %t74
  store i64 %t75, ptr %l5, !tbaa !24
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t79, i32 0, i32 3
  %t81 = load i32, ptr %t80
  store i32 %t81, ptr %l6, !tbaa !23
  br label %bb22
bb21:
  br label %bb28
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/free:Free", ptr %t83, i32 0, i32 68
  store ptr %t85, ptr %l44, !tbaa !29
  %t86 = load i64, ptr %l5, !tbaa !24
  %t87 = load i32, ptr %l6, !tbaa !23
  %t89 = sext i32 %t87 to i64
  %t92 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t86, i64 %t89)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t92, ptr %l48
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l44, !tbaa !29
  %t94 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l48
  %t95 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t93, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t94)
  %t96 = extractvalue { i32, i64 } %t95, 1
  %t97 = extractvalue { i32, i64 } %t95, 0
  store i32 %t97, ptr %l50
  %t98 = icmp ne i32 %t97, 0
  br i1 %t98, label %bb25, label %ok.99, !prof !99
ok.99:
  store i64 %t96, ptr %l49
  br label %bb24
bb24:
  %t100 = load i64, ptr %l49, !tbaa !24
  store i64 %t100, ptr %l42, !tbaa !24
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb27
bb27:
  %t101 = load i64, ptr %l42, !tbaa !24
  store i64 %t101, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_5c44d6b41b035ab1_55f561a861d07b6d)
  unreachable
bb33:
  %t102 = load i64, ptr %l7, !tbaa !24
  store i64 %t102, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceable(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:store" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/free:store"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l45 = alloca %"compiler/free:store"
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l55 = alloca ptr
  %l57 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i64
  %l68 = alloca { i64, [2 x i64] }
  %l71 = alloca i64
  %l73 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/free:store" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 7
  %t2 = load ptr, ptr %t1, !tbaa !29
  %t4 = icmp eq ptr %t2, null
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_3bfd4abaed3d7178_ecedd42d9535955c)
  unreachable
bb2:
  br label %bb3
bb3:
  %t6 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 7
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t16 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %t9, i64 %t11, ptr %t12)
  store { i64, [2 x i64] } %t16, ptr %l13
  br label %bb4
bb4:
  %t17 = load { i64, [2 x i64] }, ptr %l13
  %t18 = call i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %t17)
  store i1 %t18, ptr %l14
  br label %bb5
bb5:
  %t19 = load i1, ptr %l14, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t26 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t23)
  store ptr %t26, ptr %l19
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l19, !tbaa !29
  store ptr %t27, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 18}
  %t35 = icmp eq i64 %t33, 5
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr { i64, [5 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Promote", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = call ptr @compiler_2ffree_2ectorCall(ptr %v1, ptr %s0, ptr %t46)
  store ptr %t48, ptr %l28
  br label %bb15
bb15:
  %t49 = load ptr, ptr %l28, !tbaa !29
  store ptr %t49, ptr %l3, !tbaa !29
  br label %bb35
bb16:
  %t50 = load ptr, ptr %l2, !tbaa !29
  store ptr %t50, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t51 = load ptr, ptr %l29, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 18}
  %t57 = icmp eq i64 %t55, 17
  store i1 %t57, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l30, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l5, !tbaa !29
  br label %bb21
bb20:
  br label %bb24
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l35, !tbaa !29
  %t66 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 2
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 3
  %t73 = load %"compiler/source:Span", ptr %t72
  %t74 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 4
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 5
  %t77 = load i64, ptr %t76, !tbaa !24
  %t78 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 6
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t90 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v1, ptr %s3, ptr %s3, i64 %t67, i64 %t69, i64 %t71, %"compiler/source:Span" %t73, i64 %t75, i64 %t77, i64 %t79, ptr %t80, ptr null)
  store %"compiler/free:store" %t90, ptr %l45
  br label %bb22
bb22:
  %t91 = load ptr, ptr %l35, !tbaa !29
  %t92 = load %"compiler/free:store", ptr %l45
  %t93 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceable(ptr %v0, ptr %s3, ptr %t91, %"compiler/free:store" %t92)
  store i1 %t93, ptr %l46
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t94 = load i1, ptr %l46, !tbaa !21
  store i1 %t94, ptr %rv
  br label %ret
bb24:
  %t95 = load ptr, ptr %l2, !tbaa !29
  store ptr %t95, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t96 = load ptr, ptr %l47, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t99 = load ptr, ptr %l47, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 18}
  %t102 = icmp eq i64 %t100, 6
  store i1 %t102, ptr %l48, !tbaa !21
  br label %bb26
bb26:
  %t103 = load i1, ptr %l48, !tbaa !21
  br i1 %t103, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_18f4ed1d8e27b1ae_93487f3f650a5572)
  unreachable
bb35:
  %t105 = load ptr, ptr %l3, !tbaa !29
  %t107 = icmp eq ptr %t105, null
  br i1 %t107, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t110 = load ptr, ptr %l3, !tbaa !29
  store ptr %t110, ptr %l55, !tbaa !29
  %t111 = load ptr, ptr %l55, !tbaa !29
  %t112 = call ptr @__olang_scope_of(ptr %t111, ptr null)
  %t113 = ptrtoint ptr %t112 to i64
  %t115 = inttoptr i64 %t113 to ptr
  %t116 = load ptr, ptr %l55, !tbaa !29
  %t117 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %t115, ptr %t116)
  store i64 %t117, ptr %l57
  br label %bb39
bb39:
  %t118 = load i64, ptr %l57, !tbaa !24
  store i64 %t118, ptr %l6, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = icmp slt i64 %t119, 0
  br i1 %t121, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l61, !tbaa !29
  %t125 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 1
  %t126 = load i64, ptr %t125, !tbaa !24
  store i64 %t126, ptr %l62, !tbaa !24
  %t127 = load ptr, ptr %l3, !tbaa !29
  store ptr %t127, ptr %l63, !tbaa !29
  %t128 = load i64, ptr %l6, !tbaa !24
  store i64 %t128, ptr %l64, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/free:store", ptr %l1, i32 0, i32 1
  %t131 = load i64, ptr %t130, !tbaa !24
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t136 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %t129, i64 %t131, ptr %t132)
  store { i64, [2 x i64] } %t136, ptr %l68
  br label %bb43
bb43:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i64, ptr %l6, !tbaa !24
  %t141 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l71
  br label %bb44
bb44:
  %t142 = load ptr, ptr %l63, !tbaa !29
  %t143 = call ptr @__olang_scope_of(ptr %t142, ptr null)
  %t144 = ptrtoint ptr %t143 to i64
  %t146 = inttoptr i64 %t144 to ptr
  %t147 = load ptr, ptr %l61, !tbaa !29
  %t148 = load i64, ptr %l62, !tbaa !24
  %t149 = load ptr, ptr %l63, !tbaa !29
  %t150 = load i64, ptr %l64, !tbaa !24
  %t151 = load { i64, [2 x i64] }, ptr %l68
  %t152 = load i64, ptr %l71, !tbaa !24
  %t153 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2evarsFit(ptr %v0, ptr %t146, ptr %t147, i64 %t148, ptr %t149, i64 %t150, { i64, [2 x i64] } %t151, i64 %t152)
  store i64 %t153, ptr %l73
  br label %bb45
bb45:
  %t154 = load i64, ptr %l73, !tbaa !24
  %t155 = icmp sge i64 %t154, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t155, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1) #0 {
entry:
  %l1 = alloca %"compiler/free:letGo"
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store %"compiler/free:letGo" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 2
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 6
  %t5 = load %"compiler/source:Span", ptr %t4
  %t9 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %v1, ptr %a0, i64 %t3, %"compiler/source:Span" %t5)
  store { i64, ptr } %t9, ptr %l5
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eregister(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca i1
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l24 = alloca i32
  %l26 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca i32
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 79
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 82
  store ptr %t8, ptr %l9, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l11
  br label %bb3
bb2:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb6
bb3:
  %t12 = load i32, ptr %l1, !tbaa !23
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t13, i32 %t12)
  store i32 %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load i32, ptr %l13, !tbaa !23
  %t17 = sext i32 %t16 to i64
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t20 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t18, i64 %t17)
  store i1 %t20, ptr %l15
  br label %bb5
bb5:
  %t21 = load i1, ptr %l15, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l7, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t25)
  store ptr %t27, ptr %l18
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t28 = load i32, ptr %l1, !tbaa !23
  %t30 = inttoptr i64 0 to ptr
  %t31 = load ptr, ptr %l18, !tbaa !29
  %t33 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s1, ptr %t30, ptr %t31, i32 %t28)
  store { i64, ptr } %t33, ptr %l21
  br label %bb10
bb10:
  %t34 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t36 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t34, i64 %t35)
  %t44 = getelementptr i8, ptr %t43, i64 %t35
  call void @olang_textcopy(ptr %t44, ptr %t37, i64 %t38)
  %t45 = getelementptr i8, ptr %t44, i64 %t38
  call void @olang_textcopy(ptr %t45, ptr %t40, i64 %t41)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t43, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = extractvalue { i64, ptr } %t47, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t56 = call i32 @std_2fio_2ePrintErr(ptr %s1, { i64, ptr } %t54)
  store i32 %t56, ptr %l24
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb12, label %ok.58, !prof !99
ok.58:
  br label %bb11
bb11:
  br label %bb16
bb12:
  %t59 = load i32, ptr %l24, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  store i1 %t62, ptr %l26, !tbaa !21
  %t63 = load i32, ptr %l24, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  br i1 %t66, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t68)
  store ptr %t70, ptr %l30
  br label %bb18
bb18:
  %t71 = load i32, ptr %l1, !tbaa !23
  %t72 = load ptr, ptr %l30, !tbaa !29
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eValueParts(ptr %v0, ptr %s4, ptr %t72, i32 %t71)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l32
  br label %bb19
bb19:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  %t76 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  store ptr %t76, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb20
bb20:
  %t78 = load i64, ptr %l3, !tbaa !24
  store i64 %t78, ptr %l34, !tbaa !24
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s4, ptr %t79)
  store i64 %t81, ptr %l36
  br label %bb21
bb21:
  %t82 = load i64, ptr %l34, !tbaa !24
  %t83 = load i64, ptr %l36, !tbaa !24
  %t84 = icmp slt i64 %t82, %t83
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t88 = load ptr, ptr %l2, !tbaa !29
  %t89 = load i64, ptr %l3, !tbaa !24
  %t92 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s4, ptr %t88, i64 %t89)
  store i32 %t92, ptr %l41
  br label %bb25
bb25:
  %t93 = load i32, ptr %l41, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/free:Free", ptr %t94, i32 0, i32 82
  %t99 = sext i32 %t93 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t96, i64 %t99, i1 true)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t102 = load i64, ptr %l3, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l3, !tbaa !24
  br label %bb20
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eshown(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/free:letGo"
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l10 = alloca i1
  %l23 = alloca i1
  %l27 = alloca { i64, ptr }
  %l40 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/free:letGo" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 23
  %t4 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t5)
  store i1 %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load i1, ptr %l10, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 5
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t18 = icmp ne i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 7
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/free:Free", ptr %t27, i32 0, i32 23
  %t30 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 7
  %t31 = load i64, ptr %t30, !tbaa !24
  %t34 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t29, i64 %t31)
  store i1 %t34, ptr %l23
  br label %bb11
bb11:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 7
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s0, ptr %t37, i64 %t39)
  store { i64, ptr } %t42, ptr %l27
  br label %bb15
bb15:
  %t43 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  store ptr @G_2ecompiler_2ffree_2eRemovalNames, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t45 = load ptr, ptr %l3
  store i64 9, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t56 = load ptr, ptr %l3
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = getelementptr [9 x { i64, ptr }], ptr %t56, i64 0, i64 %t57
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !37
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t65 = load ptr, ptr @__olang_prog_scope
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t65, ptr %s0, { i64, ptr } %t61, { i64, ptr } %t64)
  store i1 %t68, ptr %l40
  br label %bb20
bb20:
  %t69 = load i1, ptr %l40, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l4, !tbaa !24
  br label %bb16
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitPath(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i32
  %l25 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i32
  %l42 = alloca i1
  %l44 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l61 = alloca i1
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l71 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l8, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = load i32, ptr %l12, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l13
  br label %bb3
bb3:
  %t14 = load i32, ptr %l13, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t21 = icmp sge i64 %t15, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb5:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l21
  br label %bb6
bb6:
  %t28 = load i32, ptr %l21, !range !{i32 0, i32 33}
  %t30 = trunc i64 18 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l18, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb11
bb9:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t37 = load i32, ptr %l5, !tbaa !23
  %t40 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l28
  br label %bb10
bb10:
  %t41 = load i1, ptr %l28, !tbaa !21
  %t42 = xor i1 %t41, true
  store i1 %t42, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb16
bb13:
  %t45 = load ptr, ptr %l4, !tbaa !29
  store ptr %t45, ptr %l31, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t47 = load i32, ptr %l5, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l34
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l31, !tbaa !29
  %t52 = load i32, ptr %l34, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t53, ptr %l35
  br label %bb15
bb15:
  %t54 = load i32, ptr %l35, !range !{i32 0, i32 6}
  %t56 = trunc i64 0 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l42
  br label %bb20
bb20:
  %t68 = load i1, ptr %l42, !tbaa !21
  br i1 %t68, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t70 = load ptr, ptr %l4, !tbaa !29
  store ptr %t70, ptr %l44, !tbaa !29
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t72 = load i32, ptr %l5, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l47
  br label %bb24
bb24:
  %t76 = load ptr, ptr %l44, !tbaa !29
  %t77 = load i32, ptr %l47, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t76, i32 %t77)
  store { i64, ptr } %t78, ptr %l48
  br label %bb25
bb25:
  %t79 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t79, ptr %l6, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t80, ptr %l49, !tbaa !27
  %t81 = load i64, ptr %l3, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i64, ptr %t84, i64 %t81
  %t86 = load i64, ptr %t85, !tbaa !34
  %t87 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t92 = icmp sge i64 %t86, %t89
  br i1 %t92, label %bb26, label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t95 = load i64, ptr %l3, !tbaa !24
  %t97 = add i64 %t95, 1
  %t98 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t103 = icmp sge i64 %t97, %t100
  br i1 %t103, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb32
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t106, ptr %l63, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t107, ptr %l64, !tbaa !27
  %t108 = load i64, ptr %l3, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t108
  %t113 = load i64, ptr %t112, !tbaa !34
  %t115 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t120 = load i64, ptr %l3, !tbaa !24
  %t122 = add i64 %t120, 1
  %t127 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitPath(ptr %v0, ptr %v1, ptr %t105, i32 %t118, { i64, ptr } %t119, i64 %t122)
  store i1 %t127, ptr %l71
  br label %bb31
bb31:
  %t128 = load i1, ptr %l71, !tbaa !21
  store i1 %t128, ptr %l61, !tbaa !21
  br label %bb32
bb32:
  %t129 = load i1, ptr %l61, !tbaa !21
  store i1 %t129, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l76 = alloca i1
  %l82 = alloca i1
  %l83 = alloca ptr
  %l91 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l104 = alloca i1
  %l109 = alloca i1
  %l113 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l124 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  br label %bb100
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l20, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l5, !tbaa !29
  store ptr %t23, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t24 = load ptr, ptr %l23, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l23, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 17}
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l24, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l24, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = getelementptr { i64, [3 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l6, !tbaa !29
  br label %bb17
bb8:
  %t38 = load ptr, ptr %l5, !tbaa !29
  store ptr %t38, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t39 = load ptr, ptr %l29, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l29, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 17}
  %t45 = icmp eq i64 %t43, 2
  store i1 %t45, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l30, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr { i64, [3 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", ptr }, ptr %t49, i32 0, i32 1
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l6, !tbaa !29
  br label %bb17
bb12:
  %t53 = load ptr, ptr %l5, !tbaa !29
  store ptr %t53, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t54 = load ptr, ptr %l35, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l35, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 17}
  %t60 = icmp eq i64 %t58, 15
  store i1 %t60, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l6, !tbaa !29
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t72 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  store i1 %t72, ptr %l43
  br label %bb18
bb18:
  %t73 = load i1, ptr %l43, !tbaa !21
  br i1 %t73, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb98
bb22:
  %t75 = load ptr, ptr %l5, !tbaa !29
  store ptr %t75, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t76 = load ptr, ptr %l45, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l45, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 17}
  %t82 = icmp eq i64 %t80, 1
  store i1 %t82, ptr %l46, !tbaa !21
  br label %bb24
bb24:
  %t83 = load i1, ptr %l46, !tbaa !21
  br i1 %t83, label %bb25, label %bb26
bb25:
  %t84 = load ptr, ptr %l5, !tbaa !29
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t86, i32 0, i32 1
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l7, !tbaa !29
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t92 = getelementptr { i64, [3 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t92, i32 0, i32 2
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l8, !tbaa !29
  br label %bb27
bb26:
  br label %bb36
bb27:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l7, !tbaa !29
  %t100 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceMayRegister(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i1 %t100, ptr %l55
  br label %bb28
bb28:
  %t101 = load i1, ptr %l55, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb32
bb30:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t106 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i1 %t106, ptr %l59
  br label %bb31
bb31:
  %t107 = load i1, ptr %l59, !tbaa !21
  store i1 %t107, ptr %l56, !tbaa !21
  br label %bb32
bb32:
  %t108 = load i1, ptr %l56, !tbaa !21
  br i1 %t108, label %bb33, label %bb34
bb33:
  store i1 true, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb98
bb36:
  %t110 = load ptr, ptr %l5, !tbaa !29
  store ptr %t110, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t111 = load ptr, ptr %l61, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb37, label %bb38
bb37:
  %t114 = load ptr, ptr %l61, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 17}
  %t117 = icmp eq i64 %t115, 3
  store i1 %t117, ptr %l62, !tbaa !21
  br label %bb38
bb38:
  %t118 = load i1, ptr %l62, !tbaa !21
  br i1 %t118, label %bb39, label %bb40
bb39:
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t121 = getelementptr { i64, [3 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", ptr }, ptr %t121, i32 0, i32 1
  %t123 = load ptr, ptr %t122
  store ptr %t123, ptr %l9, !tbaa !29
  br label %bb41
bb40:
  br label %bb60
bb41:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l9, !tbaa !29
  %t128 = getelementptr %"compiler/typed:If", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t132 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t125, ptr %t129)
  store i1 %t132, ptr %l70
  br label %bb42
bb42:
  %t133 = load i1, ptr %l70, !tbaa !21
  br i1 %t133, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb46
bb44:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load ptr, ptr %l9, !tbaa !29
  %t137 = getelementptr %"compiler/typed:If", ptr %t135, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Block", ptr %t138, i32 0, i32 1
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t144 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t134, { i64, ptr } %t141)
  store i1 %t144, ptr %l76
  br label %bb45
bb45:
  %t145 = load i1, ptr %l76, !tbaa !21
  store i1 %t145, ptr %l71, !tbaa !21
  br label %bb46
bb46:
  %t146 = load i1, ptr %l71, !tbaa !21
  br i1 %t146, label %bb47, label %bb48
bb47:
  store i1 true, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t148 = load ptr, ptr %l9, !tbaa !29
  %t150 = getelementptr %"compiler/typed:If", ptr %t148, i32 0, i32 2
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb50, label %bb51
bb50:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l83, !tbaa !29
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t160 = getelementptr %"compiler/typed:If", ptr %t158, i32 0, i32 2
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = icmp eq ptr %t161, null
  br i1 %t163, label %bb52, label %bb53
bb51:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb56
bb52:
  call void @__olang_check_failed(ptr @olang_loc_b71f5ffe7a4b5626_fc1be7c1ddcacd52)
  unreachable
bb53:
  br label %bb54
bb54:
  %t165 = load ptr, ptr %l9, !tbaa !29
  %t167 = getelementptr %"compiler/typed:If", ptr %t165, i32 0, i32 2
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Block", ptr %t168, i32 0, i32 1
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t173 = load ptr, ptr %l83, !tbaa !29
  %t175 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t173, { i64, ptr } %t172)
  store i1 %t175, ptr %l91
  br label %bb55
bb55:
  %t176 = load i1, ptr %l91, !tbaa !21
  store i1 %t176, ptr %l82, !tbaa !21
  br label %bb56
bb56:
  %t177 = load i1, ptr %l82, !tbaa !21
  br i1 %t177, label %bb57, label %bb58
bb57:
  store i1 true, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  br label %bb98
bb60:
  %t179 = load ptr, ptr %l5, !tbaa !29
  store ptr %t179, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t180 = load ptr, ptr %l93, !tbaa !29
  %t181 = icmp ne ptr %t180, null
  br i1 %t181, label %bb61, label %bb62
bb61:
  %t183 = load ptr, ptr %l93, !tbaa !29
  %t184 = load i64, ptr %t183, !range !{i64 0, i64 17}
  %t186 = icmp eq i64 %t184, 4
  store i1 %t186, ptr %l94, !tbaa !21
  br label %bb62
bb62:
  %t187 = load i1, ptr %l94, !tbaa !21
  br i1 %t187, label %bb63, label %bb64
bb63:
  %t188 = load ptr, ptr %l5, !tbaa !29
  %t190 = getelementptr { i64, [3 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t190, i32 0, i32 1
  %t192 = load ptr, ptr %t191
  store ptr %t192, ptr %l10, !tbaa !29
  %t194 = load ptr, ptr %l5, !tbaa !29
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t196, i32 0, i32 2
  %t198 = load ptr, ptr %t197
  store ptr %t198, ptr %l11, !tbaa !29
  br label %bb65
bb64:
  br label %bb77
bb65:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l10, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Block", ptr %t201, i32 0, i32 1
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  %t207 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t200, { i64, ptr } %t204)
  store i1 %t207, ptr %l104
  br label %bb66
bb66:
  %t208 = load i1, ptr %l104, !tbaa !21
  br i1 %t208, label %bb67, label %bb68
bb67:
  store i1 true, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  %t210 = load ptr, ptr %l11, !tbaa !29
  %t212 = icmp eq ptr %t210, null
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb70, label %bb71
bb70:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l11, !tbaa !29
  %t219 = getelementptr %"compiler/typed:Block", ptr %t217, i32 0, i32 1
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  %t223 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t216, { i64, ptr } %t220)
  store i1 %t223, ptr %l113
  br label %bb72
bb71:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb73
bb72:
  %t224 = load i1, ptr %l113, !tbaa !21
  store i1 %t224, ptr %l109, !tbaa !21
  br label %bb73
bb73:
  %t225 = load i1, ptr %l109, !tbaa !21
  br i1 %t225, label %bb74, label %bb75
bb74:
  store i1 true, ptr %rv
  br label %ret
bb75:
  br label %bb76
bb76:
  br label %bb98
bb77:
  %t227 = load ptr, ptr %l5, !tbaa !29
  store ptr %t227, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t228 = load ptr, ptr %l115, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb78, label %bb79
bb78:
  %t231 = load ptr, ptr %l115, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 17}
  %t234 = icmp eq i64 %t232, 11
  store i1 %t234, ptr %l116, !tbaa !21
  br label %bb79
bb79:
  %t235 = load i1, ptr %l116, !tbaa !21
  br i1 %t235, label %bb80, label %bb81
bb80:
  %t236 = load ptr, ptr %l5, !tbaa !29
  %t238 = getelementptr { i64, [3 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", ptr }, ptr %t238, i32 0, i32 1
  %t240 = load ptr, ptr %t239
  store ptr %t240, ptr %l12, !tbaa !29
  br label %bb82
bb81:
  br label %bb87
bb82:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l12, !tbaa !29
  %t245 = getelementptr %"compiler/typed:Block", ptr %t243, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t249 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t242, { i64, ptr } %t246)
  store i1 %t249, ptr %l124
  br label %bb83
bb83:
  %t250 = load i1, ptr %l124, !tbaa !21
  br i1 %t250, label %bb84, label %bb85
bb84:
  store i1 true, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  br label %bb98
bb87:
  %t252 = load ptr, ptr %l5, !tbaa !29
  store ptr %t252, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t253 = load ptr, ptr %l126, !tbaa !29
  %t254 = icmp ne ptr %t253, null
  br i1 %t254, label %bb88, label %bb89
bb88:
  %t256 = load ptr, ptr %l126, !tbaa !29
  %t257 = load i64, ptr %t256, !range !{i64 0, i64 17}
  %t259 = icmp eq i64 %t257, 5
  store i1 %t259, ptr %l127, !tbaa !21
  br label %bb89
bb89:
  %t260 = load i1, ptr %l127, !tbaa !21
  br i1 %t260, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb98
bb93:
  br i1 true, label %bb94, label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  store i1 true, ptr %rv
  br label %ret
bb97:
  call void @__olang_check_failed(ptr @olang_loc_80901eaab4a643b4_757281eb5f4291b0)
  unreachable
bb98:
  br label %bb99
bb99:
  %t262 = load i64, ptr %l3, !tbaa !24
  %t264 = add i64 %t262, 1
  store i64 %t264, ptr %l3, !tbaa !24
  br label %bb1
bb100:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2evarsFit(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, [2 x i64] } %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i1
  %l68 = alloca { i64, [2 x i64] }
  %l70 = alloca { i64, [2 x i64] }
  %l72 = alloca i1
  %l73 = alloca i1
  %l77 = alloca { i64, ptr }
  %l80 = alloca { i64, [2 x i64] }
  %l82 = alloca { i64, [2 x i64] }
  %l84 = alloca i1
  %l86 = alloca i64
  %l94 = alloca { i64, ptr }
  %l98 = alloca i1
  %l100 = alloca i64
  %l105 = alloca i1
  %l106 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, [2 x i64] } %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l5, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sge i64 %t5, 63
  store i1 %t7, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l18, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/free:Free", ptr %t11, i32 0, i32 3
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l25
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l25, !tbaa !29
  store ptr %t18, ptr %l6, !tbaa !29
  %t19 = load i64, ptr %l5, !tbaa !24
  store i64 %t19, ptr %l26, !tbaa !24
  %t20 = load i64, ptr %l26, !tbaa !24
  %t21 = load i64, ptr %l26, !tbaa !24
  %t22 = shl i64 1, %t21
  store i64 %t22, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load i64, ptr %l10, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb13
bb10:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l10, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l10, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l37, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l37, !tbaa !24
  store i64 %t57, ptr %l34, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l34, !tbaa !24
  store i64 %t58, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb14
bb14:
  %t59 = load i64, ptr %l12, !tbaa !24
  %t60 = load i64, ptr %l11, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb36
bb16:
  br label %bb17
bb17:
  %t67 = load i64, ptr %l8, !tbaa !24
  %t68 = load i64, ptr %l12, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  store i64 %t75, ptr %l13, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load i64, ptr %l13, !tbaa !24
  %t83 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t77, i64 %t78, i64 %t79)
  store i64 %t83, ptr %l58
  br label %bb18
bb18:
  %t84 = load i64, ptr %l58, !tbaa !24
  store i64 %t84, ptr %l14, !tbaa !24
  %t85 = load i64, ptr %l14, !tbaa !24
  %t87 = icmp slt i64 %t85, 0
  br i1 %t87, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb21
bb20:
  %t89 = load i64, ptr %l14, !tbaa !24
  %t91 = icmp sge i64 %t89, 63
  store i1 %t91, ptr %l61, !tbaa !21
  br label %bb21
bb21:
  %t93 = load i1, ptr %l61, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  br label %bb35
bb23:
  br label %bb24
bb24:
  %t94 = load ptr, ptr %l6, !tbaa !29
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Call", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %t97, !tbaa !23
  %t99 = load i64, ptr %l14, !tbaa !24
  %t103 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t94, i32 %t98, i64 %t99)
  store { i64, [2 x i64] } %t103, ptr %l68
  br label %bb25
bb25:
  %t104 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t104, ptr %l70
  %t107 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l68, ptr %l70)
  store i1 %t107, ptr %l72
  br label %bb26
bb26:
  %t108 = load i1, ptr %l72, !tbaa !21
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t111 = load ptr, ptr %l2, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Call", ptr %t111, i32 0, i32 1
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  store { i64, ptr } %t114, ptr %l77, !tbaa !27
  %t115 = load i64, ptr %l13, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr ptr, ptr %t118, i64 %t115
  %t120 = load ptr, ptr %t119, !tbaa !39
  %t124 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltAt(ptr %v0, ptr %v1, ptr %t109, i64 %t110, ptr %t120)
  store { i64, [2 x i64] } %t124, ptr %l80
  br label %bb29
bb28:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb31
bb29:
  %t125 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t125, ptr %l82
  %t128 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l80, ptr %l82)
  store i1 %t128, ptr %l84
  br label %bb30
bb30:
  %t129 = load i1, ptr %l84, !tbaa !21
  store i1 %t129, ptr %l73, !tbaa !21
  br label %bb31
bb31:
  %t130 = load i1, ptr %l73, !tbaa !21
  br i1 %t130, label %bb32, label %bb33
bb32:
  %t131 = load i64, ptr %l7, !tbaa !24
  %t132 = load i64, ptr %l14, !tbaa !24
  store i64 %t132, ptr %l86, !tbaa !24
  %t133 = load i64, ptr %l86, !tbaa !24
  %t134 = load i64, ptr %l86, !tbaa !24
  %t135 = shl i64 1, %t134
  %t138 = or i64 %t131, %t135
  store i64 %t138, ptr %l7, !tbaa !24
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l12, !tbaa !24
  br label %bb14
bb36:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/free:Free", ptr %t144, i32 0, i32 2
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t148 = load i64, ptr %l3, !tbaa !24
  %t151 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eVarRels(ptr %v0, ptr %s0, ptr %t147, i64 %t148)
  store { i64, ptr } %t151, ptr %l94
  br label %bb37
bb37:
  %t152 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t152, ptr %l15, !tbaa !27
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t155 = load i64, ptr %l7, !tbaa !24
  %t159 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erelsFit(ptr %v0, ptr %s0, ptr %t153, { i64, ptr } %t154, i64 %t155)
  store i1 %t159, ptr %l98
  br label %bb38
bb38:
  %t160 = load i1, ptr %l98, !tbaa !21
  br i1 %t160, label %bb39, label %bb40
bb39:
  %t161 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t161, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t163 = load i64, ptr %l5, !tbaa !24
  store i64 %t163, ptr %l100, !tbaa !24
  %t164 = load i64, ptr %l100, !tbaa !24
  %t165 = load i64, ptr %l100, !tbaa !24
  %t166 = shl i64 1, %t165
  store i64 %t166, ptr %l7, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t170 = load i64, ptr %l7, !tbaa !24
  %t174 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erelsFit(ptr %v0, ptr %s0, ptr %t168, { i64, ptr } %t169, i64 %t170)
  store i1 %t174, ptr %l105
  br label %bb42
bb42:
  %t175 = load i1, ptr %l105, !tbaa !21
  br i1 %t175, label %bb43, label %bb44
bb43:
  %t176 = load i64, ptr %l7, !tbaa !24
  store i64 %t176, ptr %l106, !tbaa !24
  br label %bb45
bb44:
  store i64 -1, ptr %l106, !tbaa !24
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t178 = load i64, ptr %l106, !tbaa !24
  store i64 %t178, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca i1
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i1
  %l57 = alloca i64
  %l58 = alloca ptr
  %l59 = alloca i1
  %l67 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load i32, ptr %l3, !tbaa !23
  %t18 = sext i32 %t16 to i64
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t19)
  store i64 %t21, ptr %l18
  br label %bb6
bb6:
  %t22 = load i64, ptr %l16, !tbaa !24
  %t23 = load i64, ptr %l18, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t26, i64 %t29)
  store i64 %t32, ptr %l24
  br label %bb9
bb8:
  %t33 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t33, ptr %l20, !tbaa !24
  br label %bb10
bb9:
  %t35 = load i64, ptr %l24, !tbaa !24
  store i64 %t35, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t36 = load i64, ptr %l20, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb44
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  store ptr %t37, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t38 = load ptr, ptr %l26, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l26, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 8}
  %t44 = icmp eq i64 %t42, 3
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l27, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t58 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %t52, ptr %t53, ptr %t54)
  store i64 %t58, ptr %l35
  br label %bb17
bb17:
  %t59 = load i64, ptr %l35, !tbaa !24
  store i64 %t59, ptr %l8, !tbaa !24
  br label %bb44
bb18:
  %t60 = load ptr, ptr %l2, !tbaa !29
  store ptr %t60, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l36, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 8}
  %t67 = icmp eq i64 %t65, 4
  store i1 %t67, ptr %l37, !tbaa !21
  br label %bb20
bb20:
  %t68 = load i1, ptr %l37, !tbaa !21
  br i1 %t68, label %bb21, label %bb22
bb21:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Elem", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t84 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %t75, ptr %t76, ptr %t80)
  store i64 %t84, ptr %l46
  br label %bb24
bb24:
  %t85 = load i64, ptr %l46, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  br label %bb44
bb25:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t87 = load ptr, ptr %l47, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t90 = load ptr, ptr %l47, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 5
  store i1 %t93, ptr %l48, !tbaa !21
  br label %bb27
bb27:
  %t94 = load i1, ptr %l48, !tbaa !21
  br i1 %t94, label %bb28, label %bb29
bb28:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l6, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Payload", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t110 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, ptr %t106)
  store i64 %t110, ptr %l57
  br label %bb31
bb31:
  %t111 = load i64, ptr %l57, !tbaa !24
  store i64 %t111, ptr %l8, !tbaa !24
  br label %bb44
bb32:
  %t112 = load ptr, ptr %l2, !tbaa !29
  store ptr %t112, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t113 = load ptr, ptr %l58, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb33, label %bb34
bb33:
  %t116 = load ptr, ptr %l58, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 8}
  %t119 = icmp eq i64 %t117, 2
  store i1 %t119, ptr %l59, !tbaa !21
  br label %bb34
bb34:
  %t120 = load i1, ptr %l59, !tbaa !21
  br i1 %t120, label %bb35, label %bb36
bb35:
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l7, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t129 = load ptr, ptr %l7, !tbaa !29
  %t133 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t127, ptr %t128, ptr %t129)
  store i64 %t133, ptr %l67
  br label %bb38
bb38:
  %t134 = load i64, ptr %l67, !tbaa !24
  store i64 %t134, ptr %l8, !tbaa !24
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  %t135 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t135, ptr %l8, !tbaa !24
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_6cb79447255537d7_e828faabaec907d3)
  unreachable
bb44:
  %t137 = load i64, ptr %l8, !tbaa !24
  store i64 %t137, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewritePlans(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/free:store"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/free:store"
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca %"compiler/free:orStore"
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca %"compiler/free:orCall"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca { i64, [2 x i64] }
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca %"compiler/free:store"
  %l55 = alloca ptr
  %l59 = alloca i1
  %l62 = alloca i1
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca i64
  %l75 = alloca i64
  %l78 = alloca i1
  %l83 = alloca %"compiler/free:store"
  %l88 = alloca i1
  %l89 = alloca i1
  %l93 = alloca i1
  %l100 = alloca i64
  %l106 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l115 = alloca { i64, [2 x i64] }
  %l118 = alloca i1
  %l122 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i64
  %l131 = alloca { i64, [2 x i64] }
  %l133 = alloca { i64, ptr }
  %l134 = alloca i64
  %l138 = alloca i64
  %l149 = alloca i64
  %l151 = alloca i64
  %l156 = alloca %"compiler/free:orStore"
  %l160 = alloca i1
  %l161 = alloca i1
  %l165 = alloca i1
  %l169 = alloca i64
  %l175 = alloca ptr
  %l179 = alloca { i64, [2 x i64] }
  %l181 = alloca i1
  %l183 = alloca i1
  %l185 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l206 = alloca i64
  %l210 = alloca i64
  %l212 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l224 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l230 = alloca i64
  %l234 = alloca i64
  %l236 = alloca { i64, ptr }
  %l237 = alloca i64
  %l241 = alloca i64
  %l251 = alloca i64
  %l253 = alloca i64
  %l258 = alloca %"compiler/free:orCall"
  %l262 = alloca i1
  %l263 = alloca i1
  %l267 = alloca i1
  %l272 = alloca ptr
  %l274 = alloca { i64, ptr }
  %l281 = alloca i64
  %l290 = alloca { i64, [2 x i64] }
  %l292 = alloca i1
  %l297 = alloca ptr
  %l306 = alloca i64
  %l310 = alloca { i64, ptr }
  %l313 = alloca { i64, ptr }
  %l317 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l323 = alloca i64
  %l327 = alloca i64
  %l329 = alloca { i64, ptr }
  %l330 = alloca i64
  %l334 = alloca i64
  %l338 = alloca i64
  %l341 = alloca i64
  %l360 = alloca i64
  %l377 = alloca i64
  %l380 = alloca i64
  %l401 = alloca i64
  %l404 = alloca i1
  %l407 = alloca i1
  %l409 = alloca i64
  %l413 = alloca i1
  %l418 = alloca { i64, ptr }
  %l423 = alloca i64
  %l426 = alloca i1
  %l428 = alloca { i64, ptr }
  %l433 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t744 = alloca { i64, [2 x i64] }, align 8
  %t890 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l44
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/free:Free", ptr %t3, i32 0, i32 46
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l47, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l49
  br label %bb3
bb3:
  %t11 = load i64, ptr %l47, !tbaa !24
  %t12 = load i64, ptr %l49, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/free:store" %t21, ptr %l54
  br label %bb7
bb7:
  %t22 = load %"compiler/free:store", ptr %l54
  store %"compiler/free:store" %t22, ptr %l4
  store ptr %l1, ptr %l55, !tbaa !29
  %t23 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 4
  %t24 = load i64, ptr %t23, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t28 = icmp eq i64 %t24, %t25
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/free:store", ptr %l4
  %t34 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceable(ptr %v0, ptr %v0, ptr %t30, %"compiler/free:store" %t31)
  store i1 %t34, ptr %l62
  br label %bb10
bb9:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb11
bb10:
  %t35 = load i1, ptr %l62, !tbaa !21
  store i1 %t35, ptr %l59, !tbaa !21
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l55, !tbaa !29
  %t37 = load i1, ptr %l59, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %t36, i1 %t37)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb2
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eouterFirst(ptr %v0, ptr %s4, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l66
  br label %bb15
bb15:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  %t46 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  store ptr %t46, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t48 = load i64, ptr %l6, !tbaa !24
  store i64 %t48, ptr %l68, !tbaa !24
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s4, ptr %t49)
  store i64 %t51, ptr %l70
  br label %bb17
bb17:
  %t52 = load i64, ptr %l68, !tbaa !24
  %t53 = load i64, ptr %l70, !tbaa !24
  %t54 = icmp slt i64 %t52, %t53
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb18, label %bb19
bb18:
  br label %bb57
bb19:
  br label %bb20
bb20:
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s4, ptr %t58, i64 %t59)
  store i64 %t62, ptr %l75
  br label %bb21
bb21:
  %t63 = load i64, ptr %l75, !tbaa !24
  store i64 %t63, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l1, i64 %t64)
  store i1 %t67, ptr %l78
  br label %bb22
bb22:
  %t68 = load i1, ptr %l78, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb23, label %bb24
bb23:
  br label %bb56
bb24:
  br label %bb25
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/free:Free", ptr %t71, i32 0, i32 46
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store %"compiler/free:store" %t77, ptr %l83
  br label %bb26
bb26:
  %t78 = load %"compiler/free:store", ptr %l83
  store %"compiler/free:store" %t78, ptr %l8
  %t79 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 0
  %t80 = load i64, ptr %t79, !tbaa !24
  store i64 %t80, ptr %l9, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/free:Free", ptr %t82, i32 0, i32 22
  %t85 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t84, i64 %t86)
  store i1 %t89, ptr %l88
  br label %bb27
bb27:
  %t90 = load i1, ptr %l88, !tbaa !21
  br i1 %t90, label %bb28, label %bb29
bb28:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/free:Free", ptr %t91, i32 0, i32 53
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t93, i64 %t94)
  store i1 %t97, ptr %l93
  br label %bb30
bb29:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb31
bb30:
  %t98 = load i1, ptr %l93, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l89, !tbaa !21
  br label %bb31
bb31:
  %t101 = load i1, ptr %l89, !tbaa !21
  br i1 %t101, label %bb32, label %bb33
bb32:
  br label %bb56
bb33:
  br label %bb34
bb34:
  %t102 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 7
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_b0d58e2b07420cd2_669637d27520b416)
  unreachable
bb36:
  br label %bb37
bb37:
  %t107 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 7
  %t108 = load ptr, ptr %t107, !tbaa !29
  store ptr %t108, ptr %l10, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t114 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v0, ptr %t110, ptr %t111)
  store i64 %t114, ptr %l100
  br label %bb38
bb38:
  %t115 = load i64, ptr %l100, !tbaa !24
  store i64 %t115, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb39, label %bb40
bb39:
  br label %bb56
bb40:
  br label %bb41
bb41:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/free:Free", ptr %t120, i32 0, i32 3
  %t123 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 1
  %t124 = load i64, ptr %t123, !tbaa !24
  %t127 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t122, i64 %t124)
  store ptr %t127, ptr %l106
  br label %bb42
bb42:
  %t128 = load ptr, ptr %l106, !tbaa !29
  store ptr %t128, ptr %l12, !tbaa !29
  %t129 = load ptr, ptr %l12, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Plan", ptr %t129, i32 0, i32 5
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l108, !tbaa !27
  %t133 = load i64, ptr %l11, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i64, ptr %t136, i64 %t133
  %t138 = load i64, ptr %t137, !tbaa !34
  %t140 = icmp ne i64 %t138, 0
  br i1 %t140, label %bb43, label %bb44
bb43:
  br label %bb56
bb44:
  br label %bb45
bb45:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 1
  %t144 = load i64, ptr %t143, !tbaa !24
  %t145 = load ptr, ptr %l10, !tbaa !29
  %t149 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v0, ptr %t142, i64 %t144, ptr %t145)
  store { i64, [2 x i64] } %t149, ptr %l115
  br label %bb46
bb46:
  %t150 = load { i64, [2 x i64] }, ptr %l115
  store { i64, [2 x i64] } %t150, ptr %l13
  %t151 = load { i64, [2 x i64] }, ptr %l13
  %t153 = extractvalue { i64, [2 x i64] } %t151, 0
  %t154 = icmp eq i64 %t153, 7
  br i1 %t154, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb49
bb48:
  %t156 = load { i64, [2 x i64] }, ptr %l13
  %t158 = extractvalue { i64, [2 x i64] } %t156, 0
  %t159 = icmp eq i64 %t158, 8
  store i1 %t159, ptr %l118, !tbaa !21
  br label %bb49
bb49:
  %t161 = load i1, ptr %l118, !tbaa !21
  br i1 %t161, label %bb50, label %bb51
bb50:
  br label %bb56
bb51:
  br label %bb52
bb52:
  %t162 = load ptr, ptr %l12, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Plan", ptr %t162, i32 0, i32 5
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l122, !tbaa !27
  %t166 = load i64, ptr %l11, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i64, ptr %t169, i64 %t166
  store i64 1, ptr %t170, !tbaa !34
  %t171 = load ptr, ptr %l12, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Plan", ptr %t171, i32 0, i32 6
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  store { i64, ptr } %t174, ptr %l125, !tbaa !27
  %t175 = load i64, ptr %l11, !tbaa !24
  store i64 %t175, ptr %l126, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 1
  %t178 = load i64, ptr %t177, !tbaa !24
  %t179 = load i64, ptr %l11, !tbaa !24
  %t180 = load { i64, [2 x i64] }, ptr %l13
  %t185 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedDest(ptr %v0, ptr %t176, i64 %t178, i64 %t179, { i64, [2 x i64] } %t180)
  store { i64, [2 x i64] } %t185, ptr %l131
  br label %bb53
bb53:
  %t186 = load { i64, [2 x i64] }, ptr %l131
  %t187 = load i64, ptr %l126, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, [2 x i64] }, ptr %t189, i64 %t187
  store { i64, [2 x i64] } %t186, ptr %t190
  %t191 = load ptr, ptr %l12, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Plan", ptr %t191, i32 0, i32 8
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l133, !tbaa !27
  %t195 = load i64, ptr %l11, !tbaa !24
  store i64 %t195, ptr %l134, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 1
  %t198 = load i64, ptr %t197, !tbaa !24
  %t199 = load i64, ptr %l9, !tbaa !24
  %t203 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %t196, i64 %t198, i64 %t199)
  store i64 %t203, ptr %l138
  br label %bb54
bb54:
  %t204 = load i64, ptr %l138, !tbaa !24
  %t205 = load i64, ptr %l134, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i64, ptr %t207, i64 %t205
  store i64 %t204, ptr %t208, !tbaa !34
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/free:store", ptr %l8, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  %t212 = load ptr, ptr %l10, !tbaa !29
  %t213 = load i64, ptr %l11, !tbaa !24
  %t214 = load { i64, [2 x i64] }, ptr %l13
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v0, ptr %t209, i64 %t211, ptr %t212, i64 %t213, { i64, [2 x i64] } %t214, i1 true, i1 false)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t220 = load i64, ptr %l6, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l6, !tbaa !24
  br label %bb16
bb57:
  call void @__olang_scope_close(ptr %s4)
  %t224 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewriteFeedCalls(ptr %v0, ptr %t224)
  br label %bb58
bb58:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/free:Free", ptr %t226, i32 0, i32 52
  store ptr %t228, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb59
bb59:
  %t230 = load i64, ptr %l15, !tbaa !24
  store i64 %t230, ptr %l149, !tbaa !24
  %t231 = load ptr, ptr %l14, !tbaa !29
  %t233 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eLen_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %t231)
  store i64 %t233, ptr %l151
  br label %bb60
bb60:
  %t234 = load i64, ptr %l149, !tbaa !24
  %t235 = load i64, ptr %l151, !tbaa !24
  %t236 = icmp slt i64 %t234, %t235
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb61, label %bb62
bb61:
  br label %bb100
bb62:
  br label %bb63
bb63:
  %t240 = load ptr, ptr %l14, !tbaa !29
  %t241 = load i64, ptr %l15, !tbaa !24
  %t244 = call %"compiler/free:orStore" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eAt_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v0, ptr %t240, i64 %t241)
  store %"compiler/free:orStore" %t244, ptr %l156
  br label %bb64
bb64:
  %t245 = load %"compiler/free:orStore", ptr %l156
  store %"compiler/free:orStore" %t245, ptr %l16
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/free:Free", ptr %t246, i32 0, i32 22
  %t249 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t250 = load i64, ptr %t249, !tbaa !24
  %t253 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t248, i64 %t250)
  store i1 %t253, ptr %l160
  br label %bb65
bb65:
  %t254 = load i1, ptr %l160, !tbaa !21
  br i1 %t254, label %bb66, label %bb67
bb66:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/free:Free", ptr %t255, i32 0, i32 53
  %t258 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 1
  %t259 = load i64, ptr %t258, !tbaa !24
  %t262 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t257, i64 %t259)
  store i1 %t262, ptr %l165
  br label %bb68
bb67:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb69
bb68:
  %t263 = load i1, ptr %l165, !tbaa !21
  %t264 = xor i1 %t263, true
  store i1 %t264, ptr %l161, !tbaa !21
  br label %bb69
bb69:
  %t266 = load i1, ptr %l161, !tbaa !21
  br i1 %t266, label %bb70, label %bb71
bb70:
  br label %bb99
bb71:
  br label %bb72
bb72:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 2
  %t269 = load ptr, ptr %t268, !tbaa !29
  %t272 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v0, ptr %t267, ptr %t269)
  store i64 %t272, ptr %l169
  br label %bb73
bb73:
  %t273 = load i64, ptr %l169, !tbaa !24
  store i64 %t273, ptr %l17, !tbaa !24
  %t274 = load i64, ptr %l17, !tbaa !24
  %t276 = icmp slt i64 %t274, 0
  br i1 %t276, label %bb74, label %bb75
bb74:
  br label %bb99
bb75:
  br label %bb76
bb76:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/free:Free", ptr %t278, i32 0, i32 3
  %t281 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t282 = load i64, ptr %t281, !tbaa !24
  %t285 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t280, i64 %t282)
  store ptr %t285, ptr %l175
  br label %bb77
bb77:
  %t286 = load ptr, ptr %l175, !tbaa !29
  store ptr %t286, ptr %l18, !tbaa !29
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t289 = load i64, ptr %t288, !tbaa !24
  %t290 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 2
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t295 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v0, ptr %t287, i64 %t289, ptr %t291)
  store { i64, [2 x i64] } %t295, ptr %l179
  br label %bb78
bb78:
  %t296 = load { i64, [2 x i64] }, ptr %l179
  store { i64, [2 x i64] } %t296, ptr %l19
  %t297 = load { i64, [2 x i64] }, ptr %l19
  %t299 = call i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %t297)
  store i1 %t299, ptr %l181
  br label %bb79
bb79:
  %t300 = load i1, ptr %l181, !tbaa !21
  %t301 = xor i1 %t300, true
  br i1 %t301, label %bb80, label %bb81
bb80:
  %t303 = load ptr, ptr %l18, !tbaa !29
  %t305 = getelementptr %"compiler/typed:Plan", ptr %t303, i32 0, i32 5
  %t306 = load { i64, ptr }, ptr %t305, !tbaa !27
  store { i64, ptr } %t306, ptr %l185, !tbaa !27
  %t307 = load i64, ptr %l17, !tbaa !24
  %t309 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr i64, ptr %t310, i64 %t307
  %t312 = load i64, ptr %t311, !tbaa !34
  %t314 = icmp eq i64 %t312, 0
  store i1 %t314, ptr %l183, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb82
bb82:
  %t316 = load i1, ptr %l183, !tbaa !21
  br i1 %t316, label %bb83, label %bb84
bb83:
  br label %bb99
bb84:
  br label %bb85
bb85:
  %t317 = load ptr, ptr %l18, !tbaa !29
  %t319 = getelementptr %"compiler/typed:Plan", ptr %t317, i32 0, i32 5
  %t320 = load { i64, ptr }, ptr %t319, !tbaa !27
  store { i64, ptr } %t320, ptr %l190, !tbaa !27
  %t321 = load i64, ptr %l17, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr i64, ptr %t324, i64 %t321
  %t326 = load i64, ptr %t325, !tbaa !34
  %t328 = icmp eq i64 %t326, 1
  br i1 %t328, label %bb86, label %bb87
bb86:
  %t330 = load ptr, ptr %l18, !tbaa !29
  %t332 = getelementptr %"compiler/typed:Plan", ptr %t330, i32 0, i32 7
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  store { i64, ptr } %t333, ptr %l195, !tbaa !27
  %t334 = load i64, ptr %l17, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr ptr, ptr %t337, i64 %t334
  %t339 = load ptr, ptr %t338, !tbaa !39
  %t341 = icmp eq ptr %t339, null
  br i1 %t341, label %bb88, label %bb89
bb87:
  br label %bb92
bb88:
  %t343 = load ptr, ptr %l18, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Plan", ptr %t343, i32 0, i32 7
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  store { i64, ptr } %t346, ptr %l200, !tbaa !27
  %t347 = load i64, ptr %l17, !tbaa !24
  %t348 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 3
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t353 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr ptr, ptr %t354, i64 %t347
  store ptr %t349, ptr %t355, !tbaa !39
  %t356 = load ptr, ptr %l18, !tbaa !29
  %t358 = getelementptr %"compiler/typed:Plan", ptr %t356, i32 0, i32 9
  %t359 = load { i64, ptr }, ptr %t358, !tbaa !27
  store { i64, ptr } %t359, ptr %l205, !tbaa !27
  %t360 = load i64, ptr %l17, !tbaa !24
  store i64 %t360, ptr %l206, !tbaa !24
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t363 = load i64, ptr %t362, !tbaa !24
  %t364 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 1
  %t365 = load i64, ptr %t364, !tbaa !24
  %t369 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %t361, i64 %t363, i64 %t365)
  store i64 %t369, ptr %l210
  br label %bb90
bb89:
  br label %bb91
bb90:
  %t370 = load i64, ptr %l210, !tbaa !24
  %t371 = load i64, ptr %l206, !tbaa !24
  %t372 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !27
  %t374 = getelementptr i64, ptr %t373, i64 %t371
  store i64 %t370, ptr %t374, !tbaa !34
  br label %bb91
bb91:
  br label %bb99
bb92:
  %t375 = load ptr, ptr %l18, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Plan", ptr %t375, i32 0, i32 5
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  store { i64, ptr } %t378, ptr %l212, !tbaa !27
  %t379 = load i64, ptr %l17, !tbaa !24
  %t381 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr i64, ptr %t382, i64 %t379
  %t384 = load i64, ptr %t383, !tbaa !34
  %t386 = icmp ne i64 %t384, 0
  br i1 %t386, label %bb93, label %bb94
bb93:
  br label %bb99
bb94:
  br label %bb95
bb95:
  %t388 = load ptr, ptr %l18, !tbaa !29
  %t390 = getelementptr %"compiler/typed:Plan", ptr %t388, i32 0, i32 5
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  store { i64, ptr } %t391, ptr %l217, !tbaa !27
  %t392 = load i64, ptr %l17, !tbaa !24
  %t394 = getelementptr { i64, ptr }, ptr %l217, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !27
  %t396 = getelementptr i64, ptr %t395, i64 %t392
  store i64 2, ptr %t396, !tbaa !34
  %t397 = load ptr, ptr %l18, !tbaa !29
  %t399 = getelementptr %"compiler/typed:Plan", ptr %t397, i32 0, i32 6
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  store { i64, ptr } %t400, ptr %l220, !tbaa !27
  %t401 = load i64, ptr %l17, !tbaa !24
  %t402 = load { i64, [2 x i64] }, ptr %l19
  %t405 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !27
  %t407 = getelementptr { i64, [2 x i64] }, ptr %t406, i64 %t401
  store { i64, [2 x i64] } %t402, ptr %t407
  %t408 = load ptr, ptr %l18, !tbaa !29
  %t410 = getelementptr %"compiler/typed:Plan", ptr %t408, i32 0, i32 7
  %t411 = load { i64, ptr }, ptr %t410, !tbaa !27
  store { i64, ptr } %t411, ptr %l224, !tbaa !27
  %t412 = load i64, ptr %l17, !tbaa !24
  %t413 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 3
  %t414 = load ptr, ptr %t413, !tbaa !29
  %t418 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !27
  %t420 = getelementptr ptr, ptr %t419, i64 %t412
  store ptr %t414, ptr %t420, !tbaa !39
  %t421 = load ptr, ptr %l18, !tbaa !29
  %t423 = getelementptr %"compiler/typed:Plan", ptr %t421, i32 0, i32 8
  %t424 = load { i64, ptr }, ptr %t423, !tbaa !27
  store { i64, ptr } %t424, ptr %l229, !tbaa !27
  %t425 = load i64, ptr %l17, !tbaa !24
  store i64 %t425, ptr %l230, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t428 = load i64, ptr %t427, !tbaa !24
  %t429 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 1
  %t430 = load i64, ptr %t429, !tbaa !24
  %t434 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %t426, i64 %t428, i64 %t430)
  store i64 %t434, ptr %l234
  br label %bb96
bb96:
  %t435 = load i64, ptr %l234, !tbaa !24
  %t436 = load i64, ptr %l230, !tbaa !24
  %t437 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t438 = load ptr, ptr %t437, !tbaa !27
  %t439 = getelementptr i64, ptr %t438, i64 %t436
  store i64 %t435, ptr %t439, !tbaa !34
  %t440 = load ptr, ptr %l18, !tbaa !29
  %t442 = getelementptr %"compiler/typed:Plan", ptr %t440, i32 0, i32 9
  %t443 = load { i64, ptr }, ptr %t442, !tbaa !27
  store { i64, ptr } %t443, ptr %l236, !tbaa !27
  %t444 = load i64, ptr %l17, !tbaa !24
  store i64 %t444, ptr %l237, !tbaa !24
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t447 = load i64, ptr %t446, !tbaa !24
  %t448 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 1
  %t449 = load i64, ptr %t448, !tbaa !24
  %t453 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %t445, i64 %t447, i64 %t449)
  store i64 %t453, ptr %l241
  br label %bb97
bb97:
  %t454 = load i64, ptr %l241, !tbaa !24
  %t455 = load i64, ptr %l237, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l236, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr i64, ptr %t457, i64 %t455
  store i64 %t454, ptr %t458, !tbaa !34
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 0
  %t461 = load i64, ptr %t460, !tbaa !24
  %t462 = getelementptr %"compiler/free:orStore", ptr %l16, i32 0, i32 2
  %t463 = load ptr, ptr %t462, !tbaa !29
  %t464 = load i64, ptr %l17, !tbaa !24
  %t465 = load { i64, [2 x i64] }, ptr %l19
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v0, ptr %t459, i64 %t461, ptr %t463, i64 %t464, { i64, [2 x i64] } %t465, i1 true, i1 false)
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t471 = load i64, ptr %l15, !tbaa !24
  %t473 = add i64 %t471, 1
  store i64 %t473, ptr %l15, !tbaa !24
  br label %bb59
bb100:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/free:Free", ptr %t475, i32 0, i32 51
  store ptr %t477, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb101
bb101:
  %t479 = load i64, ptr %l21, !tbaa !24
  store i64 %t479, ptr %l251, !tbaa !24
  %t480 = load ptr, ptr %l20, !tbaa !29
  %t482 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eLen_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %t480)
  store i64 %t482, ptr %l253
  br label %bb102
bb102:
  %t483 = load i64, ptr %l251, !tbaa !24
  %t484 = load i64, ptr %l253, !tbaa !24
  %t485 = icmp slt i64 %t483, %t484
  %t487 = xor i1 %t485, true
  br i1 %t487, label %bb103, label %bb104
bb103:
  br label %bb188
bb104:
  br label %bb105
bb105:
  %t489 = load ptr, ptr %l20, !tbaa !29
  %t490 = load i64, ptr %l21, !tbaa !24
  %t493 = call %"compiler/free:orCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eAt_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v0, ptr %t489, i64 %t490)
  store %"compiler/free:orCall" %t493, ptr %l258
  br label %bb106
bb106:
  %t494 = load %"compiler/free:orCall", ptr %l258
  store %"compiler/free:orCall" %t494, ptr %l22
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/free:Free", ptr %t495, i32 0, i32 22
  %t498 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t499 = load i64, ptr %t498, !tbaa !24
  %t502 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t497, i64 %t499)
  store i1 %t502, ptr %l262
  br label %bb107
bb107:
  %t503 = load i1, ptr %l262, !tbaa !21
  br i1 %t503, label %bb108, label %bb109
bb108:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/free:Free", ptr %t504, i32 0, i32 53
  %t507 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 4
  %t508 = load i64, ptr %t507, !tbaa !24
  %t511 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t506, i64 %t508)
  store i1 %t511, ptr %l267
  br label %bb110
bb109:
  store i1 false, ptr %l263, !tbaa !21
  br label %bb111
bb110:
  %t512 = load i1, ptr %l267, !tbaa !21
  %t513 = xor i1 %t512, true
  store i1 %t513, ptr %l263, !tbaa !21
  br label %bb111
bb111:
  %t515 = load i1, ptr %l263, !tbaa !21
  br i1 %t515, label %bb112, label %bb113
bb112:
  br label %bb187
bb113:
  br label %bb114
bb114:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/free:Free", ptr %t516, i32 0, i32 3
  %t519 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t520 = load i64, ptr %t519, !tbaa !24
  %t523 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t518, i64 %t520)
  store ptr %t523, ptr %l272
  br label %bb115
bb115:
  %t524 = load ptr, ptr %l272, !tbaa !29
  store ptr %t524, ptr %l23, !tbaa !29
  %t525 = load ptr, ptr %l23, !tbaa !29
  %t527 = getelementptr %"compiler/typed:Plan", ptr %t525, i32 0, i32 5
  %t528 = load { i64, ptr }, ptr %t527, !tbaa !27
  store { i64, ptr } %t528, ptr %l274, !tbaa !27
  %t529 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t530 = load i64, ptr %t529, !tbaa !24
  %t532 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t533 = load ptr, ptr %t532, !tbaa !27
  %t534 = getelementptr i64, ptr %t533, i64 %t530
  %t535 = load i64, ptr %t534, !tbaa !34
  %t537 = icmp ne i64 %t535, 0
  br i1 %t537, label %bb116, label %bb117
bb116:
  br label %bb187
bb117:
  br label %bb118
bb118:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 2
  %t541 = load i64, ptr %t540, !tbaa !24
  %t542 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 3
  %t543 = load i64, ptr %t542, !tbaa !24
  %t547 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t539, i64 %t541, i64 %t543)
  store i64 %t547, ptr %l281
  br label %bb119
bb119:
  %t548 = load i64, ptr %l281, !tbaa !24
  store i64 %t548, ptr %l24, !tbaa !24
  %t549 = load i64, ptr %l24, !tbaa !24
  %t551 = icmp slt i64 %t549, 0
  br i1 %t551, label %bb120, label %bb121
bb120:
  br label %bb187
bb121:
  br label %bb122
bb122:
  %t553 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t554 = load i64, ptr %t553, !tbaa !24
  %t556 = trunc i64 %t554 to i32
  store i32 %t556, ptr %l25, !tbaa !23
  %t559 = load ptr, ptr %l23, !tbaa !29
  %t560 = load i32, ptr %l25, !tbaa !23
  %t561 = load i64, ptr %l24, !tbaa !24
  %t565 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t559, i32 %t560, i64 %t561)
  store { i64, [2 x i64] } %t565, ptr %l290
  br label %bb123
bb123:
  %t566 = load { i64, [2 x i64] }, ptr %l290
  store { i64, [2 x i64] } %t566, ptr %l26
  %t567 = load { i64, [2 x i64] }, ptr %l26
  %t569 = call i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %t567)
  store i1 %t569, ptr %l292
  br label %bb124
bb124:
  %t570 = load i1, ptr %l292, !tbaa !21
  %t571 = xor i1 %t570, true
  br i1 %t571, label %bb125, label %bb126
bb125:
  br label %bb187
bb126:
  br label %bb127
bb127:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t575 = load i64, ptr %t574, !tbaa !24
  %t576 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t577 = load i64, ptr %t576, !tbaa !24
  %t581 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecallAt(ptr %v0, ptr %v0, ptr %t573, i64 %t575, i64 %t577)
  store ptr %t581, ptr %l297
  br label %bb128
bb128:
  %t582 = load ptr, ptr %l297, !tbaa !29
  store ptr %t582, ptr %l27, !tbaa !29
  %t583 = load ptr, ptr %l27, !tbaa !29
  %t585 = icmp eq ptr %t583, null
  br i1 %t585, label %bb129, label %bb130
bb129:
  br label %bb187
bb130:
  br label %bb131
bb131:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t589 = load i64, ptr %t588, !tbaa !24
  %t590 = load ptr, ptr %l27, !tbaa !29
  %t591 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 2
  %t592 = load i64, ptr %t591, !tbaa !24
  %t593 = load { i64, [2 x i64] }, ptr %l26
  %t594 = load i64, ptr %l24, !tbaa !24
  %t601 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eorVars(ptr %v0, ptr %v0, ptr %t587, i64 %t589, ptr %t590, i64 %t592, { i64, [2 x i64] } %t593, i64 %t594)
  store i64 %t601, ptr %l306
  br label %bb132
bb132:
  %t602 = load i64, ptr %l306, !tbaa !24
  store i64 %t602, ptr %l28, !tbaa !24
  %t603 = load i64, ptr %l28, !tbaa !24
  %t605 = icmp slt i64 %t603, 0
  br i1 %t605, label %bb133, label %bb134
bb133:
  br label %bb187
bb134:
  br label %bb135
bb135:
  %t607 = load ptr, ptr %l23, !tbaa !29
  %t609 = getelementptr %"compiler/typed:Plan", ptr %t607, i32 0, i32 5
  %t610 = load { i64, ptr }, ptr %t609, !tbaa !27
  store { i64, ptr } %t610, ptr %l310, !tbaa !27
  %t611 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t612 = load i64, ptr %t611, !tbaa !24
  %t614 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t615 = load ptr, ptr %t614, !tbaa !27
  %t616 = getelementptr i64, ptr %t615, i64 %t612
  store i64 2, ptr %t616, !tbaa !34
  %t617 = load ptr, ptr %l23, !tbaa !29
  %t619 = getelementptr %"compiler/typed:Plan", ptr %t617, i32 0, i32 6
  %t620 = load { i64, ptr }, ptr %t619, !tbaa !27
  store { i64, ptr } %t620, ptr %l313, !tbaa !27
  %t621 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t622 = load i64, ptr %t621, !tbaa !24
  %t623 = load { i64, [2 x i64] }, ptr %l26
  %t626 = getelementptr { i64, ptr }, ptr %l313, i32 0, i32 1
  %t627 = load ptr, ptr %t626, !tbaa !27
  %t628 = getelementptr { i64, [2 x i64] }, ptr %t627, i64 %t622
  store { i64, [2 x i64] } %t623, ptr %t628
  %t629 = load ptr, ptr %l23, !tbaa !29
  %t631 = getelementptr %"compiler/typed:Plan", ptr %t629, i32 0, i32 7
  %t632 = load { i64, ptr }, ptr %t631, !tbaa !27
  store { i64, ptr } %t632, ptr %l317, !tbaa !27
  %t633 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t634 = load i64, ptr %t633, !tbaa !24
  %t635 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 5
  %t636 = load ptr, ptr %t635, !tbaa !29
  %t640 = getelementptr { i64, ptr }, ptr %l317, i32 0, i32 1
  %t641 = load ptr, ptr %t640, !tbaa !27
  %t642 = getelementptr ptr, ptr %t641, i64 %t634
  store ptr %t636, ptr %t642, !tbaa !39
  %t643 = load ptr, ptr %l23, !tbaa !29
  %t645 = getelementptr %"compiler/typed:Plan", ptr %t643, i32 0, i32 8
  %t646 = load { i64, ptr }, ptr %t645, !tbaa !27
  store { i64, ptr } %t646, ptr %l322, !tbaa !27
  %t647 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t648 = load i64, ptr %t647, !tbaa !24
  store i64 %t648, ptr %l323, !tbaa !24
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t651 = load i64, ptr %t650, !tbaa !24
  %t652 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 4
  %t653 = load i64, ptr %t652, !tbaa !24
  %t657 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %t649, i64 %t651, i64 %t653)
  store i64 %t657, ptr %l327
  br label %bb136
bb136:
  %t658 = load i64, ptr %l327, !tbaa !24
  %t659 = load i64, ptr %l323, !tbaa !24
  %t660 = getelementptr { i64, ptr }, ptr %l322, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !27
  %t662 = getelementptr i64, ptr %t661, i64 %t659
  store i64 %t658, ptr %t662, !tbaa !34
  %t663 = load ptr, ptr %l23, !tbaa !29
  %t665 = getelementptr %"compiler/typed:Plan", ptr %t663, i32 0, i32 9
  %t666 = load { i64, ptr }, ptr %t665, !tbaa !27
  store { i64, ptr } %t666, ptr %l329, !tbaa !27
  %t667 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t668 = load i64, ptr %t667, !tbaa !24
  store i64 %t668, ptr %l330, !tbaa !24
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t671 = load i64, ptr %t670, !tbaa !24
  %t672 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 4
  %t673 = load i64, ptr %t672, !tbaa !24
  %t677 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %t669, i64 %t671, i64 %t673)
  store i64 %t677, ptr %l334
  br label %bb137
bb137:
  %t678 = load i64, ptr %l334, !tbaa !24
  %t679 = load i64, ptr %l330, !tbaa !24
  %t680 = getelementptr { i64, ptr }, ptr %l329, i32 0, i32 1
  %t681 = load ptr, ptr %t680, !tbaa !27
  %t682 = getelementptr i64, ptr %t681, i64 %t679
  store i64 %t678, ptr %t682, !tbaa !34
  store i64 0, ptr %l29, !tbaa !24
  store i64 63, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t683 = load i64, ptr %l30, !tbaa !24
  %t684 = load i64, ptr %l29, !tbaa !24
  %t687 = icmp sgt i64 %t683, %t684
  br i1 %t687, label %bb138, label %bb139
bb138:
  %t689 = load i64, ptr %l31, !tbaa !24
  %t691 = icmp sgt i64 %t689, 0
  br i1 %t691, label %bb140, label %bb141
bb139:
  store i64 0, ptr %l338, !tbaa !24
  br label %bb143
bb140:
  %t693 = load i64, ptr %l30, !tbaa !24
  %t694 = load i64, ptr %l29, !tbaa !24
  %t697 = sub i64 %t693, %t694
  %t698 = load i64, ptr %l31, !tbaa !24
  %t701 = add i64 %t697, %t698
  %t703 = sub i64 %t701, 1
  %t704 = load i64, ptr %l31, !tbaa !24
  %t707 = sdiv i64 %t703, %t704
  store i64 %t707, ptr %l341, !tbaa !24
  br label %bb142
bb141:
  store i64 0, ptr %l341, !tbaa !24
  br label %bb142
bb142:
  %t709 = load i64, ptr %l341, !tbaa !24
  store i64 %t709, ptr %l338, !tbaa !24
  br label %bb143
bb143:
  %t710 = load i64, ptr %l338, !tbaa !24
  store i64 %t710, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb144
bb144:
  %t711 = load i64, ptr %l33, !tbaa !24
  %t712 = load i64, ptr %l32, !tbaa !24
  %t715 = icmp slt i64 %t711, %t712
  %t717 = xor i1 %t715, true
  br i1 %t717, label %bb145, label %bb146
bb145:
  br label %bb153
bb146:
  br label %bb147
bb147:
  %t719 = load i64, ptr %l29, !tbaa !24
  %t720 = load i64, ptr %l33, !tbaa !24
  %t721 = load i64, ptr %l31, !tbaa !24
  %t724 = mul i64 %t720, %t721
  %t727 = add i64 %t719, %t724
  store i64 %t727, ptr %l34, !tbaa !24
  %t729 = load i64, ptr %l28, !tbaa !24
  %t730 = load i64, ptr %l34, !tbaa !24
  store i64 %t730, ptr %l360, !tbaa !24
  %t731 = load i64, ptr %l360, !tbaa !24
  %t732 = load i64, ptr %l360, !tbaa !24
  %t733 = shl i64 1, %t732
  %t736 = and i64 %t729, %t733
  %t738 = icmp ne i64 %t736, 0
  br i1 %t738, label %bb148, label %bb149
bb148:
  %t740 = load ptr, ptr %l23, !tbaa !29
  %t741 = load i32, ptr %l25, !tbaa !23
  %t742 = load i64, ptr %l34, !tbaa !24
  %t743 = load i32, ptr %l25, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t744
  %t745 = getelementptr { i64, [2 x i64] }, ptr %t744, i32 0, i32 0
  store i64 4, ptr %t745
  %t747 = insertvalue { i32 } undef, i32 %t743, 0
  %t748 = getelementptr { i64, [2 x i64] }, ptr %t744, i32 0, i32 1
  store { i32 } %t747, ptr %t748
  %t749 = load { i64, [2 x i64] }, ptr %t744
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetPassed(ptr %v0, ptr %t740, i32 %t741, i64 %t742, { i64, [2 x i64] } %t749)
  br label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb151
bb151:
  br label %bb152
bb152:
  %t754 = load i64, ptr %l33, !tbaa !24
  %t756 = add i64 %t754, 1
  store i64 %t756, ptr %l33, !tbaa !24
  br label %bb144
bb153:
  store i64 0, ptr %l35, !tbaa !24
  %t758 = load ptr, ptr %l27, !tbaa !29
  %t760 = getelementptr %"compiler/typed:Call", ptr %t758, i32 0, i32 1
  %t761 = load { i64, ptr }, ptr %t760, !tbaa !27
  %t763 = extractvalue { i64, ptr } %t761, 0
  store i64 %t763, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t765 = load i64, ptr %l36, !tbaa !24
  %t766 = load i64, ptr %l35, !tbaa !24
  %t769 = icmp sgt i64 %t765, %t766
  br i1 %t769, label %bb154, label %bb155
bb154:
  %t771 = load i64, ptr %l37, !tbaa !24
  %t773 = icmp sgt i64 %t771, 0
  br i1 %t773, label %bb156, label %bb157
bb155:
  store i64 0, ptr %l377, !tbaa !24
  br label %bb159
bb156:
  %t775 = load i64, ptr %l36, !tbaa !24
  %t776 = load i64, ptr %l35, !tbaa !24
  %t779 = sub i64 %t775, %t776
  %t780 = load i64, ptr %l37, !tbaa !24
  %t783 = add i64 %t779, %t780
  %t785 = sub i64 %t783, 1
  %t786 = load i64, ptr %l37, !tbaa !24
  %t789 = sdiv i64 %t785, %t786
  store i64 %t789, ptr %l380, !tbaa !24
  br label %bb158
bb157:
  store i64 0, ptr %l380, !tbaa !24
  br label %bb158
bb158:
  %t791 = load i64, ptr %l380, !tbaa !24
  store i64 %t791, ptr %l377, !tbaa !24
  br label %bb159
bb159:
  %t792 = load i64, ptr %l377, !tbaa !24
  store i64 %t792, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb160
bb160:
  %t793 = load i64, ptr %l39, !tbaa !24
  %t794 = load i64, ptr %l38, !tbaa !24
  %t797 = icmp slt i64 %t793, %t794
  %t799 = xor i1 %t797, true
  br i1 %t799, label %bb161, label %bb162
bb161:
  br label %bb186
bb162:
  br label %bb163
bb163:
  %t801 = load i64, ptr %l35, !tbaa !24
  %t802 = load i64, ptr %l39, !tbaa !24
  %t803 = load i64, ptr %l37, !tbaa !24
  %t806 = mul i64 %t802, %t803
  %t809 = add i64 %t801, %t806
  store i64 %t809, ptr %l40, !tbaa !24
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t812 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 2
  %t813 = load i64, ptr %t812, !tbaa !24
  %t814 = load i64, ptr %l40, !tbaa !24
  %t818 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t811, i64 %t813, i64 %t814)
  store i64 %t818, ptr %l401
  br label %bb164
bb164:
  %t819 = load i64, ptr %l401, !tbaa !24
  store i64 %t819, ptr %l41, !tbaa !24
  %t820 = load i64, ptr %l41, !tbaa !24
  %t822 = icmp slt i64 %t820, 0
  br i1 %t822, label %bb165, label %bb166
bb165:
  store i1 true, ptr %l404, !tbaa !21
  br label %bb167
bb166:
  %t824 = load i64, ptr %l41, !tbaa !24
  %t826 = icmp sge i64 %t824, 63
  store i1 %t826, ptr %l404, !tbaa !21
  br label %bb167
bb167:
  %t828 = load i1, ptr %l404, !tbaa !21
  br i1 %t828, label %bb168, label %bb169
bb168:
  store i1 true, ptr %l407, !tbaa !21
  br label %bb170
bb169:
  %t829 = load i64, ptr %l28, !tbaa !24
  %t830 = load i64, ptr %l41, !tbaa !24
  store i64 %t830, ptr %l409, !tbaa !24
  %t831 = load i64, ptr %l409, !tbaa !24
  %t832 = load i64, ptr %l409, !tbaa !24
  %t833 = shl i64 1, %t832
  %t836 = and i64 %t829, %t833
  %t838 = icmp eq i64 %t836, 0
  store i1 %t838, ptr %l407, !tbaa !21
  br label %bb170
bb170:
  %t840 = load i1, ptr %l407, !tbaa !21
  br i1 %t840, label %bb171, label %bb172
bb171:
  store i1 true, ptr %l413, !tbaa !21
  br label %bb173
bb172:
  %t841 = load i64, ptr %l40, !tbaa !24
  %t842 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 3
  %t843 = load i64, ptr %t842, !tbaa !24
  %t846 = icmp eq i64 %t841, %t843
  store i1 %t846, ptr %l413, !tbaa !21
  br label %bb173
bb173:
  %t848 = load i1, ptr %l413, !tbaa !21
  br i1 %t848, label %bb174, label %bb175
bb174:
  br label %bb185
bb175:
  br label %bb176
bb176:
  %t849 = load ptr, ptr %l27, !tbaa !29
  %t851 = getelementptr %"compiler/typed:Call", ptr %t849, i32 0, i32 1
  %t852 = load { i64, ptr }, ptr %t851, !tbaa !27
  store { i64, ptr } %t852, ptr %l418, !tbaa !27
  %t853 = load i64, ptr %l40, !tbaa !24
  %t855 = getelementptr { i64, ptr }, ptr %l418, i32 0, i32 1
  %t856 = load ptr, ptr %t855, !tbaa !27
  %t857 = getelementptr ptr, ptr %t856, i64 %t853
  %t858 = load ptr, ptr %t857, !tbaa !39
  store ptr %t858, ptr %l42, !tbaa !29
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t861 = load ptr, ptr %l42, !tbaa !29
  %t864 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v0, ptr %t860, ptr %t861)
  store i64 %t864, ptr %l423
  br label %bb177
bb177:
  %t865 = load i64, ptr %l423, !tbaa !24
  store i64 %t865, ptr %l43, !tbaa !24
  %t866 = load i64, ptr %l43, !tbaa !24
  %t868 = icmp sge i64 %t866, 0
  br i1 %t868, label %bb178, label %bb179
bb178:
  %t870 = load ptr, ptr %l23, !tbaa !29
  %t872 = getelementptr %"compiler/typed:Plan", ptr %t870, i32 0, i32 5
  %t873 = load { i64, ptr }, ptr %t872, !tbaa !27
  store { i64, ptr } %t873, ptr %l428, !tbaa !27
  %t874 = load i64, ptr %l43, !tbaa !24
  %t876 = getelementptr { i64, ptr }, ptr %l428, i32 0, i32 1
  %t877 = load ptr, ptr %t876, !tbaa !27
  %t878 = getelementptr i64, ptr %t877, i64 %t874
  %t879 = load i64, ptr %t878, !tbaa !34
  %t881 = icmp eq i64 %t879, 1
  store i1 %t881, ptr %l426, !tbaa !21
  br label %bb180
bb179:
  store i1 false, ptr %l426, !tbaa !21
  br label %bb180
bb180:
  %t883 = load i1, ptr %l426, !tbaa !21
  br i1 %t883, label %bb181, label %bb182
bb181:
  %t884 = load ptr, ptr %l23, !tbaa !29
  %t886 = getelementptr %"compiler/typed:Plan", ptr %t884, i32 0, i32 6
  %t887 = load { i64, ptr }, ptr %t886, !tbaa !27
  store { i64, ptr } %t887, ptr %l433, !tbaa !27
  %t888 = load i64, ptr %l43, !tbaa !24
  %t889 = load i32, ptr %l25, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t890
  %t891 = getelementptr { i64, [2 x i64] }, ptr %t890, i32 0, i32 0
  store i64 4, ptr %t891
  %t893 = insertvalue { i32 } undef, i32 %t889, 0
  %t894 = getelementptr { i64, [2 x i64] }, ptr %t890, i32 0, i32 1
  store { i32 } %t893, ptr %t894
  %t895 = load { i64, [2 x i64] }, ptr %t890
  %t898 = getelementptr { i64, ptr }, ptr %l433, i32 0, i32 1
  %t899 = load ptr, ptr %t898, !tbaa !27
  %t900 = getelementptr { i64, [2 x i64] }, ptr %t899, i64 %t888
  store { i64, [2 x i64] } %t895, ptr %t900
  br label %bb184
bb182:
  %t901 = load ptr, ptr %l0, !tbaa !29
  %t902 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 0
  %t903 = load i64, ptr %t902, !tbaa !24
  %t904 = load ptr, ptr %l42, !tbaa !29
  %t905 = getelementptr %"compiler/free:orCall", ptr %l22, i32 0, i32 1
  %t906 = load i64, ptr %t905, !tbaa !24
  %t907 = load { i64, [2 x i64] }, ptr %l26
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v0, ptr %t901, i64 %t903, ptr %t904, i64 %t906, { i64, [2 x i64] } %t907, i1 false, i1 false)
  br label %bb183
bb183:
  br label %bb184
bb184:
  br label %bb185
bb185:
  %t913 = load i64, ptr %l39, !tbaa !24
  %t915 = add i64 %t913, 1
  store i64 %t915, ptr %l39, !tbaa !24
  br label %bb160
bb186:
  br label %bb187
bb187:
  %t917 = load i64, ptr %l21, !tbaa !24
  %t919 = add i64 %t917, 1
  store i64 %t919, ptr %l21, !tbaa !24
  br label %bb101
bb188:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l14 = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Block", ptr %a1, i32 0, i32 1
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t24)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efreshLocal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i1
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca i64
  %l46 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i1, ptr %l11, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i1 false, ptr %l2, !tbaa !21
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:mustW", ptr %t8, i32 0, i32 4
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l15
  br label %bb5
bb5:
  %t13 = load i64, ptr %l15, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb11
bb8:
  %t24 = load i64, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb10
bb10:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l19, !tbaa !24
  br label %bb11
bb11:
  %t41 = load i64, ptr %l19, !tbaa !24
  store i64 %t41, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  br label %bb26
bb14:
  br label %bb15
bb15:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l8, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/free:mustW", ptr %t60, i32 0, i32 4
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t62, i64 %t63)
  store i64 %t66, ptr %l43
  br label %bb16
bb16:
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = load i64, ptr %l43, !tbaa !24
  %t70 = icmp ne i64 %t68, %t67
  br i1 %t70, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l46, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:mustW", ptr %t73, i32 0, i32 5
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l50
  br label %bb20
bb20:
  %t80 = load ptr, ptr %l46, !tbaa !29
  %t81 = load ptr, ptr %l50, !tbaa !29
  %t82 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v0, ptr %t80, ptr %t81, i64 1)
  store i1 %t82, ptr %l51
  br label %bb21
bb21:
  %t83 = load i1, ptr %l51, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb25
bb25:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb12
bb26:
  %t91 = load i1, ptr %l2, !tbaa !21
  store i1 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, %"compiler/source:Span" %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %lp11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca %"compiler/free:leaf"
  %l26 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i1
  %l51 = alloca ptr
  %l56 = alloca i1
  %l57 = alloca ptr
  %l61 = alloca ptr
  %l64 = alloca i64
  %l67 = alloca i1
  %l68 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca ptr
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l90 = alloca i32
  %l93 = alloca i32
  %l94 = alloca i1
  %l97 = alloca i64
  %l99 = alloca i1
  %l102 = alloca ptr
  %l105 = alloca i64
  %l106 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca ptr
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca ptr
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l131 = alloca { i64, ptr }
  %l134 = alloca ptr
  %l137 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca ptr
  %l144 = alloca i64
  %l145 = alloca ptr
  %l146 = alloca i64
  %l149 = alloca i64
  %l152 = alloca ptr
  %l153 = alloca i64
  %l157 = alloca i64
  %l164 = alloca ptr
  %l168 = alloca ptr
  %l169 = alloca i1
  %l172 = alloca ptr
  %l173 = alloca i1
  %l180 = alloca i1
  %l185 = alloca i64
  %l187 = alloca i64
  %l192 = alloca %"compiler/free:leaf"
  %l194 = alloca %"compiler/free:leaf"
  %l196 = alloca ptr
  %l197 = alloca i64
  %l199 = alloca i64
  %l201 = alloca ptr
  %l208 = alloca %"compiler/free:store"
  %l209 = alloca ptr
  %l210 = alloca i64
  %l211 = alloca i64
  %l213 = alloca ptr
  %l215 = alloca i64
  %l216 = alloca %"compiler/source:Span"
  %l217 = alloca i64
  %l219 = alloca ptr
  %l221 = alloca %"compiler/source:Span"
  %l222 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l26
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l26, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t19 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyLeaves(ptr %v0, ptr %v1, ptr %v4, ptr %t16, ptr %t17, ptr %t18, %"compiler/source:Span" %t19)
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %rv
  br label %ret
bb5:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t31 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v2, ptr %v2, ptr %t28)
  store ptr %t31, ptr %l38
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l38, !tbaa !29
  store ptr %t32, ptr %l9, !tbaa !29
  %t33 = load ptr, ptr %l9, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load ptr, ptr %l9, !tbaa !29
  %t41 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v2, ptr %t39)
  store i64 %t41, ptr %l44
  br label %bb9
bb8:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb10
bb9:
  %t42 = load i64, ptr %l44, !tbaa !24
  store i64 %t42, ptr %l42, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l42, !tbaa !24
  store i64 %t43, ptr %l10, !tbaa !24
  %t44 = load i64, ptr %l10, !tbaa !24
  %t46 = icmp sge i64 %t44, 0
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l7, !tbaa !29
  %t50 = getelementptr %"compiler/free:Free", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %l10, !tbaa !24
  %t54 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  store ptr %t54, ptr %l51
  br label %bb13
bb12:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb14
bb13:
  %t55 = load ptr, ptr %l51, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Body", ptr %t55, i32 0, i32 11
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  store i1 %t62, ptr %l47, !tbaa !21
  br label %bb14
bb14:
  %t64 = load i1, ptr %l47, !tbaa !21
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t65 = load ptr, ptr %l8, !tbaa !29
  store ptr %t65, ptr %l57, !tbaa !29
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t68 = getelementptr %"compiler/free:Free", ptr %t66, i32 0, i32 1
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store ptr %t72, ptr %l61
  br label %bb17
bb16:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb19
bb17:
  %t73 = load ptr, ptr %l61, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %t75, !tbaa !23
  %t77 = load ptr, ptr %l57, !tbaa !29
  %t79 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t77, i32 %t76)
  store i64 %t79, ptr %l64
  br label %bb18
bb18:
  %t80 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t81 = load i64, ptr %l64, !tbaa !24
  %t83 = icmp eq i64 %t81, %t80
  store i1 %t83, ptr %l56, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l56, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l8, !tbaa !29
  store ptr %t86, ptr %l68, !tbaa !29
  %t87 = load ptr, ptr %l7, !tbaa !29
  %t89 = getelementptr %"compiler/free:Free", ptr %t87, i32 0, i32 1
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  store ptr %t93, ptr %l72
  br label %bb22
bb21:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb24
bb22:
  %t94 = load ptr, ptr %l72, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Body", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !tbaa !23
  %t98 = load ptr, ptr %l68, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t98, i32 %t97)
  store { i64, ptr } %t100, ptr %l75
  br label %bb23
bb23:
  %t101 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t106 = load i1, ptr %l67, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %l8, !tbaa !29
  store ptr %t107, ptr %l79, !tbaa !29
  %t108 = load ptr, ptr %l8, !tbaa !29
  store ptr %t108, ptr %l80, !tbaa !29
  %t109 = load ptr, ptr %l8, !tbaa !29
  store ptr %t109, ptr %l81, !tbaa !29
  %t110 = load ptr, ptr %l7, !tbaa !29
  %t112 = getelementptr %"compiler/free:Free", ptr %t110, i32 0, i32 1
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  store ptr %t116, ptr %l85
  br label %bb27
bb26:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb32
bb27:
  %t117 = load ptr, ptr %l85, !tbaa !29
  %t119 = getelementptr %"compiler/typed:Body", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %t119, !tbaa !23
  %t121 = load ptr, ptr %l81, !tbaa !29
  %t123 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t121, i32 %t120)
  store { i64, ptr } %t123, ptr %l88
  br label %bb28
bb28:
  %t124 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i32, ptr %t125, i64 0
  %t127 = load i32, ptr %t126, !tbaa !33
  %t128 = load ptr, ptr %l80, !tbaa !29
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t128, i32 %t127)
  store i32 %t130, ptr %l90
  br label %bb29
bb29:
  %t131 = load ptr, ptr %l8, !tbaa !29
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t131, i32 %a2)
  store i32 %t135, ptr %l93
  br label %bb30
bb30:
  %t136 = load ptr, ptr %l79, !tbaa !29
  %t137 = load i32, ptr %l90, !tbaa !23
  %t138 = load i32, ptr %l93, !tbaa !23
  %t139 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t136, i32 %t137, i32 %t138)
  store i1 %t139, ptr %l94
  br label %bb31
bb31:
  %t140 = load i1, ptr %l94, !tbaa !21
  store i1 %t140, ptr %l78, !tbaa !21
  br label %bb32
bb32:
  %t141 = load i1, ptr %l78, !tbaa !21
  br i1 %t141, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s2
  %t142 = load ptr, ptr %l7, !tbaa !29
  %t143 = load i64, ptr %l10, !tbaa !24
  %t146 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %t142, i64 %t143)
  store i64 %t146, ptr %l97
  br label %bb35
bb34:
  br label %bb78
bb35:
  %t147 = load i64, ptr %l97, !tbaa !24
  %t148 = icmp ne i64 %t147, 0
  br i1 %t148, label %bb36, label %bb37
bb36:
  %t150 = load ptr, ptr %l9, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  br i1 %t152, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb43
bb38:
  call void @__olang_check_failed(ptr @olang_loc_3ed6c54977104fdc_6fa493e2929cd018)
  unreachable
bb39:
  br label %bb40
bb40:
  %t154 = load ptr, ptr %l9, !tbaa !29
  store ptr %t154, ptr %l102, !tbaa !29
  %t155 = load ptr, ptr %l7, !tbaa !29
  %t156 = load i64, ptr %l10, !tbaa !24
  %t159 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %t155, i64 %t156)
  store i64 %t159, ptr %l105
  br label %bb41
bb41:
  %t160 = load ptr, ptr %l102, !tbaa !29
  %t161 = load i64, ptr %l105, !tbaa !24
  %t162 = call i1 @compiler_2ftyped_2eViewsMoved(ptr %v2, ptr %t160, i64 %t161)
  store i1 %t162, ptr %l106
  br label %bb42
bb42:
  %t163 = load i1, ptr %l106, !tbaa !21
  %t164 = xor i1 %t163, true
  store i1 %t164, ptr %l99, !tbaa !21
  br label %bb43
bb43:
  %t166 = load i1, ptr %l99, !tbaa !21
  br i1 %t166, label %bb44, label %bb45
bb44:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l108, !tbaa !29
  %t168 = load ptr, ptr %l1, !tbaa !29
  store ptr %t168, ptr %l109, !tbaa !29
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t171 = icmp eq ptr %t169, null
  br i1 %t171, label %bb46, label %bb47
bb45:
  br label %bb50
bb46:
  call void @__olang_check_failed(ptr @olang_loc_3ed6c54977104fdc_6fa493e2929cd018)
  unreachable
bb47:
  br label %bb48
bb48:
  %t173 = load ptr, ptr %l9, !tbaa !29
  %t174 = load ptr, ptr %l3, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l5
  %t176 = load ptr, ptr %l108, !tbaa !29
  %t177 = load ptr, ptr %l109, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewCtor(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t176, ptr %t177, ptr %t173, ptr %t174, %"compiler/source:Span" %t175)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l115
  br label %bb51
bb51:
  %t182 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store ptr %t182, ptr %lp11
  %t183 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  %t184 = load ptr, ptr %lp11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %t184
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l116, !tbaa !29
  %t186 = load ptr, ptr %l116, !tbaa !29
  %t187 = getelementptr %"compiler/free:walker", ptr %t186, i32 0, i32 29
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = add i64 %t188, 1
  %t192 = load ptr, ptr %l116, !tbaa !29
  %t193 = getelementptr %"compiler/free:walker", ptr %t192, i32 0, i32 29
  store i64 %t190, ptr %t193, !tbaa !24
  %t194 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %l119
  br label %bb52
bb52:
  %t195 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t195, ptr %l12
  %t196 = load ptr, ptr %l9, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb53, label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_68d09f9a6af90acb_8af3bb3c4e4b4237)
  unreachable
bb54:
  br label %bb55
bb55:
  %t200 = load ptr, ptr %l9, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Call", ptr %t200, i32 0, i32 1
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t206 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 0
  store i64 %t208, ptr %l15, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s5
  %t210 = load i64, ptr %l14, !tbaa !24
  %t211 = load i64, ptr %l15, !tbaa !24
  %t214 = icmp slt i64 %t210, %t211
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s5)
  br label %bb63
bb58:
  br label %bb59
bb59:
  %t218 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t218, ptr %l131, !tbaa !27
  %t219 = load i64, ptr %l14, !tbaa !24
  %t221 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr ptr, ptr %t222, i64 %t219
  %t224 = load ptr, ptr %t223, !tbaa !39
  store ptr %l12, ptr %l134, !tbaa !29
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t230 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v2, ptr %s5, ptr %t226, ptr %t224)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t230, ptr %l137
  br label %bb60
bb60:
  %t231 = load ptr, ptr %l134, !tbaa !29
  %t232 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l137
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %s2, ptr %s5, ptr %t231, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s5)
  br label %bb62
bb62:
  %t233 = load i64, ptr %l14, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l14, !tbaa !24
  br label %bb56
bb63:
  %t237 = load ptr, ptr %l7, !tbaa !29
  %t239 = getelementptr %"compiler/free:Free", ptr %t237, i32 0, i32 28
  %t240 = load i64, ptr %l10, !tbaa !24
  %t243 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t239, i64 %t240)
  store ptr %t243, ptr %l143
  br label %bb64
bb64:
  %t244 = load ptr, ptr %l143, !tbaa !29
  store ptr %t244, ptr %l17, !tbaa !29
  store i64 0, ptr %l18, !tbaa !24
  br label %bb65
bb65:
  %t245 = load i64, ptr %l18, !tbaa !24
  store i64 %t245, ptr %l144, !tbaa !24
  %t246 = load ptr, ptr %l17, !tbaa !29
  store ptr %t246, ptr %l145, !tbaa !29
  %t247 = ptrtoint ptr %v0 to i64
  store i64 %t247, ptr %l146, !tbaa !24
  %t248 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t248, label %bb66, label %bb67
bb66:
  %t250 = load ptr, ptr %l145, !tbaa !29
  %t251 = call ptr @__olang_region_or(ptr %t250, ptr %v0)
  %t252 = ptrtoint ptr %t251 to i64
  store i64 %t252, ptr %l146, !tbaa !24
  br label %bb67
bb67:
  %t253 = load ptr, ptr %l17, !tbaa !29
  %t254 = load i64, ptr %l146
  %t255 = inttoptr i64 %t254 to ptr
  %t257 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t255, ptr %t253)
  store i64 %t257, ptr %l149
  br label %bb68
bb68:
  %t258 = load i64, ptr %l144, !tbaa !24
  %t259 = load i64, ptr %l149, !tbaa !24
  %t260 = icmp slt i64 %t258, %t259
  %t262 = xor i1 %t260, true
  br i1 %t262, label %bb69, label %bb70
bb69:
  br label %bb77
bb70:
  br label %bb71
bb71:
  %t264 = load ptr, ptr %l17, !tbaa !29
  store ptr %t264, ptr %l152, !tbaa !29
  %t265 = ptrtoint ptr %v0 to i64
  store i64 %t265, ptr %l153, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t266, label %bb72, label %bb73
bb72:
  %t268 = load ptr, ptr %l152, !tbaa !29
  %t269 = call ptr @__olang_region_or(ptr %t268, ptr %v0)
  %t270 = ptrtoint ptr %t269 to i64
  store i64 %t270, ptr %l153, !tbaa !24
  br label %bb73
bb73:
  %t271 = load ptr, ptr %l17, !tbaa !29
  %t272 = load i64, ptr %l18, !tbaa !24
  %t273 = load i64, ptr %l153
  %t274 = inttoptr i64 %t273 to ptr
  %t277 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t274, ptr %t271, i64 %t272)
  store i64 %t277, ptr %l157
  br label %bb74
bb74:
  %t278 = load i64, ptr %l157, !tbaa !24
  %t279 = load ptr, ptr %l7, !tbaa !29
  %t281 = load ptr, ptr %lp11
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ethrough(ptr %v0, ptr %s2, ptr %v5, ptr %t279, i64 %t278, ptr %l12, ptr %t281)
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t286 = load i64, ptr %l18, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l18, !tbaa !24
  br label %bb65
bb77:
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l164, !tbaa !29
  %t291 = load ptr, ptr %l164, !tbaa !29
  %t292 = getelementptr %"compiler/free:walker", ptr %t291, i32 0, i32 29
  %t293 = load i64, ptr %t292, !tbaa !24
  %t295 = sub i64 %t293, 1
  %t297 = load ptr, ptr %l164, !tbaa !29
  %t298 = getelementptr %"compiler/free:walker", ptr %t297, i32 0, i32 29
  store i64 %t295, ptr %t298, !tbaa !24
  %t299 = load ptr, ptr %lp11
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t299
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %rv
  br label %ret
bb78:
  %t302 = load ptr, ptr %l3, !tbaa !29
  store ptr %t302, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t303 = load ptr, ptr %l168, !tbaa !29
  %t304 = icmp ne ptr %t303, null
  br i1 %t304, label %bb79, label %bb80
bb79:
  %t306 = load ptr, ptr %l168, !tbaa !29
  %t307 = load i64, ptr %t306, !range !{i64 0, i64 18}
  %t309 = icmp eq i64 %t307, 0
  store i1 %t309, ptr %l169, !tbaa !21
  br label %bb80
bb80:
  %t310 = load i1, ptr %l169, !tbaa !21
  br i1 %t310, label %bb81, label %bb82
bb81:
  br label %bb87
bb82:
  %t311 = load ptr, ptr %l3, !tbaa !29
  store ptr %t311, ptr %l172, !tbaa !29
  store i1 false, ptr %l173, !tbaa !21
  %t312 = load ptr, ptr %l172, !tbaa !29
  %t313 = icmp ne ptr %t312, null
  br i1 %t313, label %bb83, label %bb84
bb83:
  %t315 = load ptr, ptr %l172, !tbaa !29
  %t316 = load i64, ptr %t315, !range !{i64 0, i64 18}
  %t318 = icmp eq i64 %t316, 1
  store i1 %t318, ptr %l173, !tbaa !21
  br label %bb84
bb84:
  %t319 = load i1, ptr %l173, !tbaa !21
  br i1 %t319, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  %t320 = load ptr, ptr %l4, !tbaa !29
  %t322 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t320
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %rv
  br label %ret
bb88:
  br i1 true, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_7f12d3772dd0a929_45b952e679e83a85)
  unreachable
bb93:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/free:walker", ptr %t324, i32 0, i32 2
  %t327 = load i1, ptr %t326, !tbaa !21
  br i1 %t327, label %bb94, label %bb95
bb94:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/free:walker", ptr %t329, i32 0, i32 29
  %t332 = load i64, ptr %t331, !tbaa !24
  %t334 = icmp eq i64 %t332, 0
  store i1 %t334, ptr %l180, !tbaa !21
  br label %bb96
bb95:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb96
bb96:
  %t336 = load i1, ptr %l180, !tbaa !21
  br i1 %t336, label %bb97, label %bb98
bb97:
  %t337 = load ptr, ptr %l1, !tbaa !29
  store ptr %t337, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb99
bb98:
  br label %bb117
bb99:
  store %olang.scope zeroinitializer, ptr %s14
  %t339 = load i64, ptr %l21, !tbaa !24
  store i64 %t339, ptr %l185, !tbaa !24
  %t340 = load ptr, ptr %l20, !tbaa !29
  %t342 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %t340)
  store i64 %t342, ptr %l187
  br label %bb100
bb100:
  %t343 = load i64, ptr %l185, !tbaa !24
  %t344 = load i64, ptr %l187, !tbaa !24
  %t345 = icmp slt i64 %t343, %t344
  %t347 = xor i1 %t345, true
  br i1 %t347, label %bb101, label %bb102
bb101:
  call void @__olang_scope_close(ptr %s14)
  br label %bb116
bb102:
  br label %bb103
bb103:
  %t349 = load ptr, ptr %l20, !tbaa !29
  %t350 = load i64, ptr %l21, !tbaa !24
  %t353 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %v1, ptr %t349, i64 %t350)
  store %"compiler/free:leaf" %t353, ptr %l192
  br label %bb104
bb104:
  %t355 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s14, ptr %l192)
  store %"compiler/free:leaf" %t355, ptr %l194
  br label %bb105
bb105:
  %t356 = load %"compiler/free:leaf", ptr %l194
  store %"compiler/free:leaf" %t356, ptr %l22
  %t357 = load ptr, ptr %l7, !tbaa !29
  %t359 = getelementptr %"compiler/free:Free", ptr %t357, i32 0, i32 46
  store ptr %t359, ptr %l196, !tbaa !29
  %t360 = getelementptr %"compiler/free:leaf", ptr %l22, i32 0, i32 1
  %t361 = load i64, ptr %t360, !tbaa !24
  store i64 %t361, ptr %l197, !tbaa !24
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/free:walker", ptr %t362, i32 0, i32 1
  %t365 = load i64, ptr %t364, !tbaa !24
  store i64 %t365, ptr %l199, !tbaa !24
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t366)
  store ptr %t368, ptr %l201
  br label %bb106
bb106:
  %t369 = load ptr, ptr %l201, !tbaa !29
  %t371 = getelementptr %"compiler/typed:Body", ptr %t369, i32 0, i32 3
  %t372 = load i64, ptr %t371, !tbaa !24
  %t373 = load %"compiler/source:Span", ptr %l5
  %t374 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  %t375 = load ptr, ptr %l3, !tbaa !29
  %t377 = load i64, ptr %l197, !tbaa !24
  %t378 = load i64, ptr %l199, !tbaa !24
  %t383 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v2, ptr %v0, ptr %v0, i64 %t377, i64 %t378, i64 %t372, %"compiler/source:Span" %t373, i64 %t374, i64 -1, i64 -1, ptr %t375, ptr null)
  store %"compiler/free:store" %t383, ptr %l208
  br label %bb107
bb107:
  %t384 = load ptr, ptr %l196, !tbaa !29
  %t385 = load %"compiler/free:store", ptr %l208
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t384, %"compiler/free:store" %t385)
  br label %bb108
bb108:
  %t386 = load ptr, ptr %l7, !tbaa !29
  store ptr %t386, ptr %l209, !tbaa !29
  %t387 = getelementptr %"compiler/free:leaf", ptr %l22, i32 0, i32 1
  %t388 = load i64, ptr %t387, !tbaa !24
  store i64 %t388, ptr %l210, !tbaa !24
  %t389 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t389, ptr %l211, !tbaa !24
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t390)
  store ptr %t392, ptr %l213
  br label %bb109
bb109:
  %t393 = load ptr, ptr %l213, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Body", ptr %t393, i32 0, i32 3
  %t396 = load i64, ptr %t395, !tbaa !24
  store i64 %t396, ptr %l215, !tbaa !24
  %t397 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t397, ptr %l216
  %t398 = ptrtoint ptr %v0 to i64
  store i64 %t398, ptr %l217, !tbaa !24
  %t399 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t399, label %bb110, label %bb111
bb110:
  %t401 = call ptr @__olang_region_make(ptr %v0)
  %t402 = ptrtoint ptr %t401 to i64
  store i64 %t402, ptr %l217, !tbaa !24
  br label %bb111
bb111:
  %t403 = load ptr, ptr %l0, !tbaa !29
  store ptr %t403, ptr %l219, !tbaa !29
  %t404 = load ptr, ptr %l3, !tbaa !29
  %t406 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t404)
  store %"compiler/source:Span" %t406, ptr %l221
  br label %bb112
bb112:
  %t407 = load ptr, ptr %l219, !tbaa !29
  %t408 = load %"compiler/source:Span", ptr %l221
  %t409 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s14, ptr %t407, %"compiler/source:Span" %t408)
  store { i64, ptr } %t409, ptr %l222
  br label %bb113
bb113:
  %t410 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t411 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t412 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 1
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t415 = add i64 %t411, %t414
  %t416 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t417 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t418 = add i64 %t415, %t417
  %t419 = load i64, ptr %l217
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = call ptr @__olang_scope_alloc(ptr %t420, i64 %t418)
  call void @olang_textcopy(ptr %t421, ptr %t410, i64 %t411)
  %t422 = getelementptr i8, ptr %t421, i64 %t411
  call void @olang_textcopy(ptr %t422, ptr %t413, i64 %t414)
  %t423 = getelementptr i8, ptr %t422, i64 %t414
  call void @olang_textcopy(ptr %t423, ptr %t416, i64 %t417)
  %t424 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t421, 1
  %t427 = load i64, ptr %l217
  %t428 = inttoptr i64 %t427 to ptr
  %t429 = extractvalue { i64, ptr } %t425, 0
  %t430 = extractvalue { i64, ptr } %t425, 1
  %t431 = mul i64 %t429, 1
  %t432 = call ptr @__olang_scope_alloc(ptr %t428, i64 %t431)
  call void @llvm.memcpy.p0.p0.i64(ptr %t432, ptr %t430, i64 %t431, i1 false)
  %t433 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t434 = insertvalue { i64, ptr } %t433, ptr %t432, 1
  %t435 = load ptr, ptr %l209, !tbaa !29
  %t436 = load i64, ptr %l210, !tbaa !24
  %t437 = load i64, ptr %l211, !tbaa !24
  %t438 = load i64, ptr %l215, !tbaa !24
  %t439 = load %"compiler/source:Span", ptr %l216
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t435, i64 %t436, i64 %t437, i64 %t438, %"compiler/source:Span" %t439, { i64, ptr } %t434)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s14)
  br label %bb115
bb115:
  %t441 = load i64, ptr %l21, !tbaa !24
  %t443 = add i64 %t441, 1
  store i64 %t443, ptr %l21, !tbaa !24
  br label %bb99
bb116:
  br label %bb117
bb117:
  %t445 = load ptr, ptr %l4, !tbaa !29
  %t447 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t445
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t447, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/free:leaf"
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/free:leaf"
  %l14 = alloca i64
  %l20 = alloca i1
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca %"compiler/free:leaf"
  %l35 = alloca %"compiler/free:leaf"
  %l38 = alloca i1
  %l39 = alloca i1
  %l43 = alloca i1
  %l49 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i1
  %l56 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca i64
  %l62 = alloca i32
  %l63 = alloca ptr
  %l65 = alloca i64
  %l66 = alloca i1
  %l68 = alloca i64
  %l70 = alloca i64
  %l75 = alloca %"compiler/free:leaf"
  %l77 = alloca %"compiler/free:leaf"
  %l81 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca i64
  %l86 = alloca i64
  %l88 = alloca ptr
  %l90 = alloca i64
  %l91 = alloca %"compiler/source:Span"
  %l93 = alloca i64
  %l97 = alloca i64
  %l101 = alloca %"compiler/free:store"
  %l104 = alloca ptr
  %l105 = alloca i64
  %l106 = alloca i64
  %l108 = alloca ptr
  %l110 = alloca i64
  %l111 = alloca %"compiler/source:Span"
  %l112 = alloca i64
  %l114 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l122 = alloca i64
  %l124 = alloca i64
  %l126 = alloca ptr
  %l133 = alloca %"compiler/free:store"
  %l134 = alloca ptr
  %l135 = alloca i64
  %l136 = alloca i64
  %l138 = alloca ptr
  %l140 = alloca i64
  %l141 = alloca %"compiler/source:Span"
  %l142 = alloca i64
  %l144 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l147 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
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
  %t8 = getelementptr %"compiler/free:walker", ptr %t6, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:walker", ptr %t13, i32 0, i32 29
  %t16 = load i64, ptr %t15, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  store i1 %t18, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l20, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l24
  br label %bb7
bb7:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l5
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t25 = load i64, ptr %l7, !tbaa !24
  store i64 %t25, ptr %l26, !tbaa !24
  %t26 = load ptr, ptr %l6, !tbaa !29
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %t26)
  store i64 %t28, ptr %l28
  br label %bb9
bb9:
  %t29 = load i64, ptr %l26, !tbaa !24
  %t30 = load i64, ptr %l28, !tbaa !24
  %t31 = icmp slt i64 %t29, %t30
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb11:
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l6, !tbaa !29
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %v1, ptr %t35, i64 %t36)
  store %"compiler/free:leaf" %t39, ptr %l33
  br label %bb13
bb13:
  %t41 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s3, ptr %l33)
  store %"compiler/free:leaf" %t41, ptr %l35
  br label %bb14
bb14:
  %t42 = load %"compiler/free:leaf", ptr %l35
  store %"compiler/free:leaf" %t42, ptr %l8
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/free:leaf", ptr %l8, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %t43, i64 %t45)
  store i1 %t48, ptr %l38
  br label %bb15
bb15:
  %t49 = load i1, ptr %l38, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb19
bb17:
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t52 = getelementptr %"compiler/free:Free", ptr %t50, i32 0, i32 13
  %t53 = getelementptr %"compiler/free:leaf", ptr %l8, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t52, i64 %t54)
  store i1 %t57, ptr %l43
  br label %bb18
bb18:
  %t58 = load i1, ptr %l43, !tbaa !21
  store i1 %t58, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t59 = load i1, ptr %l39, !tbaa !21
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t60 = getelementptr %"compiler/free:leaf", ptr %l8, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t61)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l7, !tbaa !24
  br label %bb8
bb25:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = call i64 @compiler_2ffree_2eownCopySite(ptr %v2, ptr %t68)
  store i64 %t70, ptr %l49
  br label %bb26
bb26:
  %t71 = load i64, ptr %l49, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t73, ptr %l51
  br label %bb27
bb27:
  %t74 = load i64, ptr %l51, !tbaa !24
  %t75 = icmp eq i64 %t74, 1
  br i1 %t75, label %bb28, label %bb29
bb28:
  %t77 = load i64, ptr %l9, !tbaa !24
  %t79 = icmp sge i64 %t77, 0
  store i1 %t79, ptr %l53, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb30
bb30:
  %t81 = load i1, ptr %l53, !tbaa !21
  br i1 %t81, label %bb31, label %bb32
bb31:
  %t82 = load ptr, ptr %l4, !tbaa !29
  store ptr %t82, ptr %l57, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/free:walker", ptr %t83, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  store i64 %t86, ptr %l59, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  store i64 %t87, ptr %l60, !tbaa !24
  %t88 = load ptr, ptr %l2, !tbaa !29
  %t90 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t88)
  store i32 %t90, ptr %l62
  br label %bb33
bb32:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb36
bb33:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l63, !tbaa !29
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 0)
  store i64 %t93, ptr %l65
  br label %bb34
bb34:
  %t94 = load ptr, ptr %l57, !tbaa !29
  %t95 = load i64, ptr %l59, !tbaa !24
  %t96 = load i64, ptr %l60, !tbaa !24
  %t97 = load i32, ptr %l62, !tbaa !23
  %t98 = load ptr, ptr %l63, !tbaa !29
  %t99 = load i64, ptr %l65, !tbaa !24
  %t100 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitLeaf(ptr %v0, ptr %v1, ptr %t94, i64 %t95, i64 %t96, i32 %t97, ptr %t98, i64 %t99)
  store i1 %t100, ptr %l66
  br label %bb35
bb35:
  %t101 = load i1, ptr %l66, !tbaa !21
  store i1 %t101, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t102 = load i1, ptr %l56, !tbaa !21
  store i1 %t102, ptr %l10, !tbaa !21
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s7
  %t105 = load i64, ptr %l12, !tbaa !24
  store i64 %t105, ptr %l68, !tbaa !24
  %t106 = load ptr, ptr %l11, !tbaa !29
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %t106)
  store i64 %t108, ptr %l70
  br label %bb38
bb38:
  %t109 = load i64, ptr %l68, !tbaa !24
  %t110 = load i64, ptr %l70, !tbaa !24
  %t111 = icmp slt i64 %t109, %t110
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb76
bb40:
  br label %bb41
bb41:
  %t115 = load ptr, ptr %l11, !tbaa !29
  %t116 = load i64, ptr %l12, !tbaa !24
  %t119 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %v1, ptr %t115, i64 %t116)
  store %"compiler/free:leaf" %t119, ptr %l75
  br label %bb42
bb42:
  %t121 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s7, ptr %l75)
  store %"compiler/free:leaf" %t121, ptr %l77
  br label %bb43
bb43:
  %t122 = load %"compiler/free:leaf", ptr %l77
  store %"compiler/free:leaf" %t122, ptr %l13
  %t123 = getelementptr %"compiler/free:leaf", ptr %l13, i32 0, i32 1
  %t124 = load i64, ptr %t123, !tbaa !24
  store i64 %t124, ptr %l14, !tbaa !24
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l5, i64 %t126)
  store i1 %t129, ptr %l81
  br label %bb44
bb44:
  %t130 = load i1, ptr %l81, !tbaa !21
  br i1 %t130, label %bb45, label %bb46
bb45:
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t133 = getelementptr %"compiler/free:Free", ptr %t131, i32 0, i32 46
  store ptr %t133, ptr %l83, !tbaa !29
  %t134 = load i64, ptr %l14, !tbaa !24
  store i64 %t134, ptr %l84, !tbaa !24
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/free:walker", ptr %t135, i32 0, i32 1
  %t138 = load i64, ptr %t137, !tbaa !24
  store i64 %t138, ptr %l86, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t139)
  store ptr %t141, ptr %l88
  br label %bb47
bb46:
  br label %bb65
bb47:
  %t142 = load ptr, ptr %l88, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Body", ptr %t142, i32 0, i32 3
  %t145 = load i64, ptr %t144, !tbaa !24
  store i64 %t145, ptr %l90, !tbaa !24
  %t146 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t146, ptr %l91
  %t147 = load i1, ptr %l10, !tbaa !21
  br i1 %t147, label %bb48, label %bb49
bb48:
  %t149 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  store i64 %t149, ptr %l93, !tbaa !24
  br label %bb50
bb49:
  %t151 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  store i64 %t151, ptr %l93, !tbaa !24
  br label %bb50
bb50:
  %t153 = load i1, ptr %l10, !tbaa !21
  br i1 %t153, label %bb51, label %bb52
bb51:
  %t155 = load i64, ptr %l9, !tbaa !24
  store i64 %t155, ptr %l97, !tbaa !24
  br label %bb53
bb52:
  store i64 -1, ptr %l97, !tbaa !24
  br label %bb53
bb53:
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t159 = load i64, ptr %l84, !tbaa !24
  %t160 = load i64, ptr %l86, !tbaa !24
  %t161 = load i64, ptr %l90, !tbaa !24
  %t162 = load %"compiler/source:Span", ptr %l91
  %t163 = load i64, ptr %l93, !tbaa !24
  %t164 = load i64, ptr %l97, !tbaa !24
  %t166 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v2, ptr %v0, ptr %v0, i64 %t159, i64 %t160, i64 %t161, %"compiler/source:Span" %t162, i64 %t163, i64 -1, i64 %t164, ptr %t157, ptr null)
  store %"compiler/free:store" %t166, ptr %l101
  br label %bb54
bb54:
  %t167 = load ptr, ptr %l83, !tbaa !29
  %t168 = load %"compiler/free:store", ptr %l101
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t167, %"compiler/free:store" %t168)
  br label %bb55
bb55:
  %t169 = load i1, ptr %l10, !tbaa !21
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s9
  %t173 = load ptr, ptr %l4, !tbaa !29
  store ptr %t173, ptr %l104, !tbaa !29
  %t174 = load i64, ptr %l14, !tbaa !24
  store i64 %t174, ptr %l105, !tbaa !24
  %t175 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t175, ptr %l106, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t176)
  store ptr %t178, ptr %l108
  br label %bb58
bb57:
  br label %bb64
bb58:
  %t179 = load ptr, ptr %l108, !tbaa !29
  %t181 = getelementptr %"compiler/typed:Body", ptr %t179, i32 0, i32 3
  %t182 = load i64, ptr %t181, !tbaa !24
  store i64 %t182, ptr %l110, !tbaa !24
  %t183 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t183, ptr %l111
  %t184 = ptrtoint ptr %v0 to i64
  store i64 %t184, ptr %l112, !tbaa !24
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t185, label %bb59, label %bb60
bb59:
  %t187 = call ptr @__olang_region_make(ptr %v0)
  %t188 = ptrtoint ptr %t187 to i64
  store i64 %t188, ptr %l112, !tbaa !24
  br label %bb60
bb60:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l114, !tbaa !29
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t190)
  store %"compiler/source:Span" %t192, ptr %l116
  br label %bb61
bb61:
  %t193 = load ptr, ptr %l114, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l116
  %t195 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s9, ptr %t193, %"compiler/source:Span" %t194)
  store { i64, ptr } %t195, ptr %l117
  br label %bb62
bb62:
  %t196 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t198 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t201 = add i64 %t197, %t200
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t204 = add i64 %t201, %t203
  %t205 = load i64, ptr %l112
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc(ptr %t206, i64 %t204)
  call void @olang_textcopy(ptr %t207, ptr %t196, i64 %t197)
  %t208 = getelementptr i8, ptr %t207, i64 %t197
  call void @olang_textcopy(ptr %t208, ptr %t199, i64 %t200)
  %t209 = getelementptr i8, ptr %t208, i64 %t200
  call void @olang_textcopy(ptr %t209, ptr %t202, i64 %t203)
  %t210 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t207, 1
  %t213 = load i64, ptr %l112
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = extractvalue { i64, ptr } %t211, 0
  %t216 = extractvalue { i64, ptr } %t211, 1
  %t217 = mul i64 %t215, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %t214, i64 %t217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t218, ptr %t216, i64 %t217, i1 false)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  %t221 = load ptr, ptr %l104, !tbaa !29
  %t222 = load i64, ptr %l105, !tbaa !24
  %t223 = load i64, ptr %l106, !tbaa !24
  %t224 = load i64, ptr %l110, !tbaa !24
  %t225 = load %"compiler/source:Span", ptr %l111
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t221, i64 %t222, i64 %t223, i64 %t224, %"compiler/source:Span" %t225, { i64, ptr } %t220)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s9)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s7)
  br label %bb75
bb65:
  %t227 = load ptr, ptr %l4, !tbaa !29
  %t229 = getelementptr %"compiler/free:Free", ptr %t227, i32 0, i32 46
  store ptr %t229, ptr %l121, !tbaa !29
  %t230 = load i64, ptr %l14, !tbaa !24
  store i64 %t230, ptr %l122, !tbaa !24
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/free:walker", ptr %t231, i32 0, i32 1
  %t234 = load i64, ptr %t233, !tbaa !24
  store i64 %t234, ptr %l124, !tbaa !24
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t235)
  store ptr %t237, ptr %l126
  br label %bb66
bb66:
  %t238 = load ptr, ptr %l126, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Body", ptr %t238, i32 0, i32 3
  %t241 = load i64, ptr %t240, !tbaa !24
  %t242 = load %"compiler/source:Span", ptr %l3
  %t243 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  %t244 = load ptr, ptr %l2, !tbaa !29
  %t246 = load i64, ptr %l122, !tbaa !24
  %t247 = load i64, ptr %l124, !tbaa !24
  %t252 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v2, ptr %v0, ptr %v0, i64 %t246, i64 %t247, i64 %t241, %"compiler/source:Span" %t242, i64 %t243, i64 -1, i64 -1, ptr %t244, ptr null)
  store %"compiler/free:store" %t252, ptr %l133
  br label %bb67
bb67:
  %t253 = load ptr, ptr %l121, !tbaa !29
  %t254 = load %"compiler/free:store", ptr %l133
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t253, %"compiler/free:store" %t254)
  br label %bb68
bb68:
  %t255 = load ptr, ptr %l4, !tbaa !29
  store ptr %t255, ptr %l134, !tbaa !29
  %t256 = load i64, ptr %l14, !tbaa !24
  store i64 %t256, ptr %l135, !tbaa !24
  %t257 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t257, ptr %l136, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t258)
  store ptr %t260, ptr %l138
  br label %bb69
bb69:
  %t261 = load ptr, ptr %l138, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Body", ptr %t261, i32 0, i32 3
  %t264 = load i64, ptr %t263, !tbaa !24
  store i64 %t264, ptr %l140, !tbaa !24
  %t265 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t265, ptr %l141
  %t266 = ptrtoint ptr %v0 to i64
  store i64 %t266, ptr %l142, !tbaa !24
  %t267 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t267, label %bb70, label %bb71
bb70:
  %t269 = call ptr @__olang_region_make(ptr %v0)
  %t270 = ptrtoint ptr %t269 to i64
  store i64 %t270, ptr %l142, !tbaa !24
  br label %bb71
bb71:
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l144, !tbaa !29
  %t272 = load ptr, ptr %l2, !tbaa !29
  %t274 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t272)
  store %"compiler/source:Span" %t274, ptr %l146
  br label %bb72
bb72:
  %t275 = load ptr, ptr %l144, !tbaa !29
  %t276 = load %"compiler/source:Span", ptr %l146
  %t277 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s7, ptr %t275, %"compiler/source:Span" %t276)
  store { i64, ptr } %t277, ptr %l147
  br label %bb73
bb73:
  %t278 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t280 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = add i64 %t279, %t282
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t286 = add i64 %t283, %t285
  %t287 = load i64, ptr %l142
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = call ptr @__olang_scope_alloc(ptr %t288, i64 %t286)
  call void @olang_textcopy(ptr %t289, ptr %t278, i64 %t279)
  %t290 = getelementptr i8, ptr %t289, i64 %t279
  call void @olang_textcopy(ptr %t290, ptr %t281, i64 %t282)
  %t291 = getelementptr i8, ptr %t290, i64 %t282
  call void @olang_textcopy(ptr %t291, ptr %t284, i64 %t285)
  %t292 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t289, 1
  %t295 = load i64, ptr %l142
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = extractvalue { i64, ptr } %t293, 0
  %t298 = extractvalue { i64, ptr } %t293, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %t296, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t303 = load ptr, ptr %l134, !tbaa !29
  %t304 = load i64, ptr %l135, !tbaa !24
  %t305 = load i64, ptr %l136, !tbaa !24
  %t306 = load i64, ptr %l140, !tbaa !24
  %t307 = load %"compiler/source:Span", ptr %l141
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t303, i64 %t304, i64 %t305, i64 %t306, %"compiler/source:Span" %t307, { i64, ptr } %t302)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s7)
  br label %bb75
bb75:
  %t309 = load i64, ptr %l12, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l12, !tbaa !24
  br label %bb37
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCallsOf(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca i32
  %l28 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l43 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca i1
  %l54 = alloca i1
  %l59 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca %"compiler/source:Span"
  %l72 = alloca %"compiler/source:Span"
  %l77 = alloca ptr
  %l78 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca i64
  %l83 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i64
  %l94 = alloca i64
  %l95 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l15, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eValueParts(ptr %v0, ptr %s1, ptr %t9, i32 %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l18
  br label %bb2
bb2:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t16 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  store ptr %t16, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t18 = load i64, ptr %l6, !tbaa !24
  store i64 %t18, ptr %l20, !tbaa !24
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s1, ptr %t19)
  store i64 %t21, ptr %l22
  br label %bb4
bb4:
  %t22 = load i64, ptr %l20, !tbaa !24
  %t23 = load i64, ptr %l22, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb5, label %bb6
bb5:
  br label %bb54
bb6:
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s1, ptr %t28, i64 %t29)
  store i32 %t32, ptr %l27
  br label %bb8
bb8:
  %t33 = load i32, ptr %l27, !tbaa !23
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/free:Free", ptr %t34, i32 0, i32 81
  %t39 = sext i32 %t33 to i64
  %t42 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t36, i64 %t39)
  %t43 = extractvalue { i32, i64 } %t42, 1
  %t44 = extractvalue { i32, i64 } %t42, 0
  store i32 %t44, ptr %l34
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb10, label %ok.46, !prof !99
ok.46:
  store i64 %t43, ptr %l33
  br label %bb9
bb9:
  %t47 = load i64, ptr %l33, !tbaa !24
  store i64 %t47, ptr %l28, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l28, !tbaa !24
  store i64 %t48, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb13, label %bb14
bb13:
  br label %bb53
bb14:
  br label %bb15
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/free:walker", ptr %t53, i32 0, i32 2
  %t56 = load i1, ptr %t55, !tbaa !21
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = getelementptr %"compiler/free:Free", ptr %t60, i32 0, i32 60
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l43
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/free:walker", ptr %t67, i32 0, i32 1
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load ptr, ptr %l43, !tbaa !29
  %t73 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t71, i64 %t70)
  store i64 %t73, ptr %l46
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = getelementptr %"compiler/free:Free", ptr %t74, i32 0, i32 35
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t76, i64 %t77)
  store i1 %t80, ptr %l50
  br label %bb21
bb21:
  %t81 = load i1, ptr %l50, !tbaa !21
  br i1 %t81, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/free:walker", ptr %t82, i32 0, i32 2
  %t85 = load i1, ptr %t84, !tbaa !21
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb24, label %bb25
bb23:
  br label %bb37
bb24:
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t91 = getelementptr %"compiler/free:Free", ptr %t89, i32 0, i32 35
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/free:walker", ptr %t92, i32 0, i32 1
  %t95 = load i64, ptr %t94, !tbaa !24
  %t98 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t91, i64 %t95)
  store i1 %t98, ptr %l59
  br label %bb26
bb25:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb27
bb26:
  %t99 = load i1, ptr %l59, !tbaa !21
  %t100 = xor i1 %t99, true
  store i1 %t100, ptr %l54, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l54, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t105 = getelementptr %"compiler/free:Free", ptr %t103, i32 0, i32 35
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/free:walker", ptr %t106, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t105, i64 %t109, i1 true)
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t112 = load ptr, ptr %l3, !tbaa !29
  %t114 = getelementptr %"compiler/free:Free", ptr %t112, i32 0, i32 40
  store i1 true, ptr %t114, !tbaa !21
  br label %bb31
bb31:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/free:walker", ptr %t115, i32 0, i32 2
  %t118 = load i1, ptr %t117, !tbaa !21
  br i1 %t118, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s7
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l68, !tbaa !29
  %t121 = load i64, ptr @G_2ecompiler_2ffree_2eAnyPlace, !tbaa !24
  store i64 %t121, ptr %l69, !tbaa !24
  %t122 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  store i64 %t122, ptr %l70, !tbaa !24
  %t123 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t123, ptr %l71
  %t124 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s7, i32 0, i32 0)
  store %"compiler/source:Span" %t124, ptr %l72
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load ptr, ptr %l68, !tbaa !29
  %t127 = load i64, ptr %l69, !tbaa !24
  %t128 = load i64, ptr %l70, !tbaa !24
  %t129 = load %"compiler/source:Span", ptr %l71
  %t130 = load %"compiler/source:Span", ptr %l72
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t126, i64 %t127, i64 %t128, %"compiler/source:Span" %t129, %"compiler/source:Span" %t130, i64 %t125)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb36:
  br label %bb53
bb37:
  %t132 = load ptr, ptr %l3, !tbaa !29
  %t134 = getelementptr %"compiler/free:Free", ptr %t132, i32 0, i32 34
  %t135 = load i64, ptr %l8, !tbaa !24
  %t138 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t134, i64 %t135)
  store ptr %t138, ptr %l77
  br label %bb38
bb38:
  %t139 = load ptr, ptr %l77, !tbaa !29
  store ptr %t139, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s9
  %t140 = load i64, ptr %l10, !tbaa !24
  store i64 %t140, ptr %l78, !tbaa !24
  %t141 = load ptr, ptr %l9, !tbaa !29
  store ptr %t141, ptr %l79, !tbaa !29
  %t142 = ptrtoint ptr %v0 to i64
  store i64 %t142, ptr %l80, !tbaa !24
  %t143 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t143, label %bb40, label %bb41
bb40:
  %t145 = load ptr, ptr %l79, !tbaa !29
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr %v0)
  %t147 = ptrtoint ptr %t146 to i64
  store i64 %t147, ptr %l80, !tbaa !24
  br label %bb41
bb41:
  %t148 = load ptr, ptr %l9, !tbaa !29
  %t149 = load i64, ptr %l80
  %t150 = inttoptr i64 %t149 to ptr
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t150, ptr %t148)
  store i64 %t152, ptr %l83
  br label %bb42
bb42:
  %t153 = load i64, ptr %l78, !tbaa !24
  %t154 = load i64, ptr %l83, !tbaa !24
  %t155 = icmp slt i64 %t153, %t154
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb44:
  br label %bb45
bb45:
  %t159 = load ptr, ptr %l9, !tbaa !29
  store ptr %t159, ptr %l86, !tbaa !29
  %t160 = ptrtoint ptr %v0 to i64
  store i64 %t160, ptr %l87, !tbaa !24
  %t161 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t161, label %bb46, label %bb47
bb46:
  %t163 = load ptr, ptr %l86, !tbaa !29
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr %v0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l87, !tbaa !24
  br label %bb47
bb47:
  %t166 = load ptr, ptr %l9, !tbaa !29
  %t167 = load i64, ptr %l10, !tbaa !24
  %t168 = load i64, ptr %l87
  %t169 = inttoptr i64 %t168 to ptr
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t169, ptr %t166, i64 %t167)
  store i64 %t172, ptr %l91
  br label %bb48
bb48:
  %t173 = load i64, ptr %l91, !tbaa !24
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l92, !tbaa !29
  store i64 %t173, ptr %l93, !tbaa !24
  %t176 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  store i64 %t176, ptr %l94, !tbaa !24
  %t177 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t177, ptr %l95
  %t178 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s9, i32 0, i32 0)
  store %"compiler/source:Span" %t178, ptr %l96
  br label %bb49
bb49:
  %t179 = load i64, ptr %l8, !tbaa !24
  %t180 = load ptr, ptr %l92, !tbaa !29
  %t181 = load i64, ptr %l93, !tbaa !24
  %t182 = load i64, ptr %l94, !tbaa !24
  %t183 = load %"compiler/source:Span", ptr %l95
  %t184 = load %"compiler/source:Span", ptr %l96
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t180, i64 %t181, i64 %t182, %"compiler/source:Span" %t183, %"compiler/source:Span" %t184, i64 %t179)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s9)
  br label %bb51
bb51:
  %t186 = load i64, ptr %l10, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l10, !tbaa !24
  br label %bb39
bb52:
  br label %bb53
bb53:
  %t190 = load i64, ptr %l6, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l6, !tbaa !24
  br label %bb3
bb54:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egoAll(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:walker", ptr %t6, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t15 = getelementptr %"compiler/free:Free", ptr %t13, i32 0, i32 35
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:walker", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t15, i64 %t19)
  store i1 %t22, ptr %l14
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t23 = load i1, ptr %l14, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t28 = getelementptr %"compiler/free:Free", ptr %t26, i32 0, i32 35
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:walker", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t28, i64 %t32, i1 true)
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = getelementptr %"compiler/free:Free", ptr %t35, i32 0, i32 40
  store i1 true, ptr %t37, !tbaa !21
  br label %bb7
bb7:
  br label %ret
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l21, !tbaa !29
  %t39 = load i64, ptr @G_2ecompiler_2ffree_2eAnyPlace, !tbaa !24
  store i64 %t39, ptr %l22, !tbaa !24
  %t40 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  store i64 %t40, ptr %l23, !tbaa !24
  store %"compiler/source:Span" %a1, ptr %l24
  %t44 = call %"compiler/source:Span" @compiler_2ffree_2ereceiverSpan(ptr %v1, ptr %a2)
  store %"compiler/source:Span" %t44, ptr %l26
  br label %bb9
bb9:
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = load i64, ptr %l22, !tbaa !24
  %t48 = load i64, ptr %l23, !tbaa !24
  %t49 = load %"compiler/source:Span", ptr %l24
  %t50 = load %"compiler/source:Span", ptr %l26
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t46, i64 %t47, i64 %t48, %"compiler/source:Span" %t49, %"compiler/source:Span" %t50, i64 %a3)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/source:Span" %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca { i64, { i64, ptr } }
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l40 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l68 = alloca i64
  %l69 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l71 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i64
  %l100 = alloca ptr
  %l101 = alloca i1
  %l118 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l129 = alloca i64
  %l137 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l140 = alloca i64
  %l142 = alloca i64
  %l143 = alloca { i64, ptr }
  %l146 = alloca { i64, { i64, ptr } }
  %l148 = alloca { i64, ptr }
  %l150 = alloca i64
  %l152 = alloca i64
  %l153 = alloca { i64, ptr }
  %l158 = alloca i1
  %l161 = alloca ptr
  %l165 = alloca i64
  %l167 = alloca i64
  %l170 = alloca i1
  %l174 = alloca ptr
  %l179 = alloca i1
  %l183 = alloca i64
  %l193 = alloca ptr
  %l195 = alloca %"compiler/source:Span"
  %l196 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l199 = alloca i64
  %l204 = alloca i1
  %l208 = alloca i1
  %l209 = alloca i1
  %l212 = alloca i1
  %l214 = alloca i1
  %l216 = alloca i1
  %l219 = alloca ptr
  %l221 = alloca %"compiler/source:Span"
  %l222 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l225 = alloca i64
  %l230 = alloca i1
  %l233 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l236 = alloca i64
  %l238 = alloca i64
  %l239 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l252 = alloca %"compiler/free:store"
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l31
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l31, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 3
  %t12 = load i64, ptr %t11, !tbaa !24
  store i64 %t12, ptr %l6, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  store i64 %t14, ptr %l7, !tbaa !24
  store i64 -1, ptr %l8, !tbaa !24
  store i64 -1, ptr %l9, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t16, ptr %l36, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l37, !tbaa !24
  %t19 = load i64, ptr %l37, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l38, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l37, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t30, ptr %lp10
  %t31 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t32 = load ptr, ptr %lp10
  store { i64, ptr } %t31, ptr %t32, !tbaa !27
  %t33 = load ptr, ptr %l2, !tbaa !29
  store ptr %t33, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t34 = load ptr, ptr %l39, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb2, label %bb3
bb2:
  %t37 = load ptr, ptr %l39, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 18}
  %t40 = icmp eq i64 %t38, 0
  store i1 %t40, ptr %l40, !tbaa !21
  br label %bb3
bb3:
  %t41 = load i1, ptr %l40, !tbaa !21
  br i1 %t41, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t42 = load i64, ptr @G_2ecompiler_2ffree_2eSOk, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  br label %bb111
bb7:
  %t44 = load ptr, ptr %l2, !tbaa !29
  store ptr %t44, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t45 = load ptr, ptr %l44, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t48 = load ptr, ptr %l44, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l45, !tbaa !21
  br label %bb9
bb9:
  %t52 = load i1, ptr %l45, !tbaa !21
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t53 = load i64, ptr @G_2ecompiler_2ffree_2eSOk, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  br label %bb111
bb13:
  %t55 = load ptr, ptr %l2, !tbaa !29
  store ptr %t55, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t56 = load ptr, ptr %l49, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l49, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 18}
  %t62 = icmp eq i64 %t60, 4
  store i1 %t62, ptr %l50, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l50, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr { i64, [5 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l11, !tbaa !29
  br label %bb18
bb17:
  br label %bb26
bb18:
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t71 = load ptr, ptr %l11, !tbaa !29
  %t74 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t70, ptr %t71)
  store i64 %t74, ptr %l57
  br label %bb19
bb19:
  %t75 = load i64, ptr %l57, !tbaa !24
  store i64 %t75, ptr %l12, !tbaa !24
  %t76 = load i64, ptr %l12, !tbaa !24
  %t77 = load i64, ptr %l1, !tbaa !24
  %t80 = icmp eq i64 %t76, %t77
  br i1 %t80, label %bb20, label %bb21
bb20:
  %t82 = load i64, ptr @G_2ecompiler_2ffree_2eSMove, !tbaa !24
  store i64 %t82, ptr %l7, !tbaa !24
  %t84 = load i64, ptr %l12, !tbaa !24
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb25
bb21:
  store { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l63, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t86, ptr %l64, !tbaa !27
  %t87 = load ptr, ptr %lp10
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  %t90 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  store i64 %t91, ptr %l66, !tbaa !24
  %t93 = load i64, ptr %l66, !tbaa !24
  %t94 = icmp eq i64 %t89, %t93
  br i1 %t94, label %bb22, label %bb23
bb22:
  %t96 = load ptr, ptr %lp10
  %t97 = getelementptr { i64, ptr }, ptr %t96, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = load i64, ptr %l66, !tbaa !24
  %t102 = mul i64 %t101, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t98, ptr %t100, i64 %t102, i1 false)
  br label %bb24
bb23:
  %t103 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l68, !tbaa !24
  %t105 = load i64, ptr %l68, !tbaa !24
  %t106 = mul i64 %t105, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t106)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l69, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l68, !tbaa !24
  %t115 = mul i64 %t114, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %t113, i64 %t115, i1 false)
  %t116 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t117 = load ptr, ptr %lp10
  store { i64, ptr } %t116, ptr %t117, !tbaa !27
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb111
bb26:
  %t118 = load ptr, ptr %l2, !tbaa !29
  store ptr %t118, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t119 = load ptr, ptr %l70, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb27, label %bb28
bb27:
  %t122 = load ptr, ptr %l70, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 18}
  %t125 = icmp eq i64 %t123, 17
  store i1 %t125, ptr %l71, !tbaa !21
  br label %bb28
bb28:
  %t126 = load i1, ptr %l71, !tbaa !21
  br i1 %t126, label %bb29, label %bb30
bb29:
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l13, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l1, !tbaa !24
  %t135 = load ptr, ptr %l13, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l3
  %t137 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %t133, i64 %t134, ptr %t135, %"compiler/source:Span" %t136, i1 %t137)
  br label %bb32
bb32:
  br label %ret
bb33:
  %t143 = load ptr, ptr %l2, !tbaa !29
  store ptr %t143, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t144 = load ptr, ptr %l81, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb34, label %bb35
bb34:
  %t147 = load ptr, ptr %l81, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 18}
  %t150 = icmp eq i64 %t148, 12
  store i1 %t150, ptr %l82, !tbaa !21
  br label %bb35
bb35:
  %t151 = load i1, ptr %l82, !tbaa !21
  br i1 %t151, label %bb36, label %bb37
bb36:
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t154, i32 0, i32 2
  %t156 = load ptr, ptr %t155
  store ptr %t156, ptr %l14, !tbaa !29
  br label %bb38
bb37:
  br label %bb46
bb38:
  %t158 = load ptr, ptr %l14, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Seq", ptr %t158, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = icmp eq ptr %t161, null
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb39, label %bb40
bb39:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l91, !tbaa !29
  %t168 = load i64, ptr %l1, !tbaa !24
  store i64 %t168, ptr %l92, !tbaa !24
  %t169 = load ptr, ptr %l14, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Seq", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = icmp eq ptr %t172, null
  br i1 %t174, label %bb41, label %bb42
bb40:
  br label %bb45
bb41:
  call void @__olang_check_failed(ptr @olang_loc_7676aaa4af173342_5bef0e3278c42ba6)
  unreachable
bb42:
  br label %bb43
bb43:
  %t176 = load ptr, ptr %l14, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Seq", ptr %t176, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l3
  %t181 = load i1, ptr %l4, !tbaa !21
  %t182 = load ptr, ptr %l91, !tbaa !29
  %t183 = load i64, ptr %l92, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %t182, i64 %t183, ptr %t179, %"compiler/source:Span" %t180, i1 %t181)
  br label %bb44
bb44:
  br label %ret
bb45:
  br label %bb111
bb46:
  %t187 = load ptr, ptr %l2, !tbaa !29
  store ptr %t187, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t188 = load ptr, ptr %l100, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb47, label %bb48
bb47:
  %t191 = load ptr, ptr %l100, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 18}
  %t194 = icmp eq i64 %t192, 14
  store i1 %t194, ptr %l101, !tbaa !21
  br label %bb48
bb48:
  %t195 = load i1, ptr %l101, !tbaa !21
  br i1 %t195, label %bb49, label %bb50
bb49:
  %t196 = load ptr, ptr %l2, !tbaa !29
  %t198 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t198, i32 0, i32 2
  %t200 = load ptr, ptr %t199
  store ptr %t200, ptr %l15, !tbaa !29
  br label %bb51
bb50:
  br label %bb71
bb51:
  %t202 = load ptr, ptr %l15, !tbaa !29
  %t204 = getelementptr %"compiler/typed:Try", ptr %t202, i32 0, i32 0
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = icmp eq ptr %t205, null
  %t209 = xor i1 %t207, true
  store i1 %t209, ptr %l16, !tbaa !21
  %t211 = load ptr, ptr %l15, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Try", ptr %t211, i32 0, i32 1
  %t214 = load { i64, ptr }, ptr %t213, !tbaa !27
  store { i64, ptr } %t214, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t216 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t216, 0
  store i64 %t218, ptr %l19, !tbaa !24
  br label %bb52
bb52:
  %t220 = load i64, ptr %l18, !tbaa !24
  %t221 = load i64, ptr %l19, !tbaa !24
  %t224 = icmp slt i64 %t220, %t221
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb53, label %bb54
bb53:
  br label %bb60
bb54:
  br label %bb55
bb55:
  %t228 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t228, ptr %l118, !tbaa !27
  %t229 = load i64, ptr %l18, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr ptr, ptr %t232, i64 %t229
  %t234 = load ptr, ptr %t233, !tbaa !39
  %t238 = getelementptr %"compiler/typed:Clause", ptr %t234, i32 0, i32 4
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb56, label %bb57
bb56:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb58
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t245 = load i64, ptr %l18, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l18, !tbaa !24
  br label %bb52
bb60:
  %t249 = load i1, ptr %l16, !tbaa !21
  br i1 %t249, label %bb61, label %bb62
bb61:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l128, !tbaa !29
  %t252 = load i64, ptr %l1, !tbaa !24
  store i64 %t252, ptr %l129, !tbaa !24
  %t253 = load ptr, ptr %l15, !tbaa !29
  %t255 = getelementptr %"compiler/typed:Try", ptr %t253, i32 0, i32 0
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t258 = icmp eq ptr %t256, null
  br i1 %t258, label %bb63, label %bb64
bb62:
  br label %bb67
bb63:
  call void @__olang_check_failed(ptr @olang_loc_a47d70a6f4791f29_9aa1d88f57dbf58d)
  unreachable
bb64:
  br label %bb65
bb65:
  %t260 = load ptr, ptr %l15, !tbaa !29
  %t262 = getelementptr %"compiler/typed:Try", ptr %t260, i32 0, i32 0
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l3
  %t265 = load i1, ptr %l4, !tbaa !21
  %t266 = load ptr, ptr %l128, !tbaa !29
  %t267 = load i64, ptr %l129, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %t266, i64 %t267, ptr %t263, %"compiler/source:Span" %t264, i1 %t265)
  br label %bb66
bb66:
  br label %ret
bb67:
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l137, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t271, ptr %l138, !tbaa !27
  %t272 = load ptr, ptr %lp10
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 0
  %t275 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 0
  store i64 %t276, ptr %l140, !tbaa !24
  %t278 = load i64, ptr %l140, !tbaa !24
  %t279 = icmp eq i64 %t274, %t278
  br i1 %t279, label %bb68, label %bb69
bb68:
  %t281 = load ptr, ptr %lp10
  %t282 = getelementptr { i64, ptr }, ptr %t281, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = load i64, ptr %l140, !tbaa !24
  %t287 = mul i64 %t286, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t283, ptr %t285, i64 %t287, i1 false)
  br label %bb70
bb69:
  %t288 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t288, 0
  store i64 %t289, ptr %l142, !tbaa !24
  %t290 = load i64, ptr %l142, !tbaa !24
  %t291 = mul i64 %t290, 1
  %t292 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t291)
  %t293 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t292, 1
  store { i64, ptr } %t294, ptr %l143, !tbaa !27
  %t295 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = load i64, ptr %l142, !tbaa !24
  %t300 = mul i64 %t299, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t296, ptr %t298, i64 %t300, i1 false)
  %t301 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t302 = load ptr, ptr %lp10
  store { i64, ptr } %t301, ptr %t302, !tbaa !27
  br label %bb70
bb70:
  br label %bb111
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb110
bb74:
  store %olang.scope zeroinitializer, ptr %s15
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load ptr, ptr %l2, !tbaa !29
  %t307 = call { i64, { i64, ptr } } @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshSite(ptr %v0, ptr %v1, ptr %s15, ptr %t303, ptr %t304)
  store { i64, { i64, ptr } } %t307, ptr %l146
  br label %bb75
bb75:
  %t308 = load { i64, { i64, ptr } }, ptr %l146
  store { i64, { i64, ptr } } %t308, ptr %l21
  %t309 = getelementptr { i64, { i64, ptr } }, ptr %l21, i32 0, i32 0
  %t310 = load i64, ptr %t309, !tbaa !24
  store i64 %t310, ptr %l9, !tbaa !24
  %t312 = getelementptr { i64, { i64, ptr } }, ptr %l21, i32 0, i32 1
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  store { i64, ptr } %t313, ptr %l148, !tbaa !27
  %t314 = load ptr, ptr %lp10
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  %t317 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t317, 0
  store i64 %t318, ptr %l150, !tbaa !24
  %t320 = load i64, ptr %l150, !tbaa !24
  %t321 = icmp eq i64 %t316, %t320
  br i1 %t321, label %bb76, label %bb77
bb76:
  %t323 = load ptr, ptr %lp10
  %t324 = getelementptr { i64, ptr }, ptr %t323, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = load i64, ptr %l150, !tbaa !24
  %t329 = mul i64 %t328, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t325, ptr %t327, i64 %t329, i1 false)
  br label %bb78
bb77:
  %t330 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t330, 0
  store i64 %t331, ptr %l152, !tbaa !24
  %t332 = load i64, ptr %l152, !tbaa !24
  %t333 = mul i64 %t332, 1
  %t334 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t333)
  %t335 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t334, 1
  store { i64, ptr } %t336, ptr %l153, !tbaa !27
  %t337 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = load i64, ptr %l152, !tbaa !24
  %t342 = mul i64 %t341, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t338, ptr %t340, i64 %t342, i1 false)
  %t343 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t344 = load ptr, ptr %lp10
  store { i64, ptr } %t343, ptr %t344, !tbaa !27
  br label %bb78
bb78:
  %t345 = load i64, ptr %l9, !tbaa !24
  %t347 = icmp sge i64 %t345, 0
  br i1 %t347, label %bb79, label %bb80
bb79:
  %t349 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  store i64 %t349, ptr %l7, !tbaa !24
  br label %bb109
bb80:
  store %olang.scope zeroinitializer, ptr %s17
  %t351 = load ptr, ptr %lp10
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  %t354 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s17, { i64, ptr } %t352, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t354, ptr %l158
  br label %bb81
bb81:
  %t355 = load i1, ptr %l158, !tbaa !21
  br i1 %t355, label %bb82, label %bb83
bb82:
  %t356 = load ptr, ptr %l2, !tbaa !29
  %t359 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t356)
  store ptr %t359, ptr %l161
  br label %bb84
bb83:
  br label %bb108
bb84:
  %t360 = load ptr, ptr %l161, !tbaa !29
  store ptr %t360, ptr %l22, !tbaa !29
  %t361 = load ptr, ptr %l22, !tbaa !29
  %t363 = icmp eq ptr %t361, null
  %t365 = xor i1 %t363, true
  br i1 %t365, label %bb85, label %bb86
bb85:
  %t367 = load ptr, ptr %l22, !tbaa !29
  %t369 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t367)
  store i64 %t369, ptr %l167
  br label %bb87
bb86:
  store i64 -1, ptr %l165, !tbaa !24
  br label %bb88
bb87:
  %t370 = load i64, ptr %l167, !tbaa !24
  store i64 %t370, ptr %l165, !tbaa !24
  br label %bb88
bb88:
  %t371 = load i64, ptr %l165, !tbaa !24
  store i64 %t371, ptr %l23, !tbaa !24
  %t372 = load i64, ptr %l23, !tbaa !24
  %t374 = icmp sge i64 %t372, 0
  br i1 %t374, label %bb89, label %bb90
bb89:
  %t376 = load ptr, ptr %l5, !tbaa !29
  %t378 = getelementptr %"compiler/free:Free", ptr %t376, i32 0, i32 1
  %t379 = load i64, ptr %l23, !tbaa !24
  %t382 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t378, i64 %t379)
  store ptr %t382, ptr %l174
  br label %bb91
bb90:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb92
bb91:
  %t383 = load ptr, ptr %l174, !tbaa !29
  %t385 = getelementptr %"compiler/typed:Body", ptr %t383, i32 0, i32 11
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = icmp eq ptr %t386, null
  %t390 = xor i1 %t388, true
  store i1 %t390, ptr %l170, !tbaa !21
  br label %bb92
bb92:
  %t392 = load i1, ptr %l170, !tbaa !21
  br i1 %t392, label %bb93, label %bb94
bb93:
  %t393 = load ptr, ptr %l5, !tbaa !29
  %t395 = getelementptr %"compiler/free:Free", ptr %t393, i32 0, i32 36
  %t396 = load i64, ptr %l23, !tbaa !24
  %t399 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t395, i64 %t396)
  store i64 %t399, ptr %l183
  br label %bb95
bb94:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb96
bb95:
  %t400 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  %t401 = load i64, ptr %l1, !tbaa !24
  %t404 = add i64 %t400, %t401
  %t405 = load i64, ptr %l183, !tbaa !24
  %t407 = icmp eq i64 %t405, %t404
  store i1 %t407, ptr %l179, !tbaa !21
  br label %bb96
bb96:
  %t409 = load i1, ptr %l179, !tbaa !21
  br i1 %t409, label %bb97, label %bb98
bb97:
  %t410 = load i64, ptr @G_2ecompiler_2ffree_2eSMove, !tbaa !24
  store i64 %t410, ptr %l7, !tbaa !24
  %t412 = load i64, ptr %l1, !tbaa !24
  store i64 %t412, ptr %l8, !tbaa !24
  br label %bb99
bb98:
  br label %bb99
bb99:
  %t414 = load i64, ptr %l7, !tbaa !24
  %t415 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  %t418 = icmp eq i64 %t414, %t415
  br i1 %t418, label %bb100, label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s20
  %t420 = load ptr, ptr %l0, !tbaa !29
  store ptr %t420, ptr %l193, !tbaa !29
  %t421 = load ptr, ptr %l2, !tbaa !29
  %t423 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t421)
  store %"compiler/source:Span" %t423, ptr %l195
  br label %bb102
bb101:
  br label %bb107
bb102:
  %t424 = load ptr, ptr %l193, !tbaa !29
  %t425 = load %"compiler/source:Span", ptr %l195
  %t426 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s20, ptr %t424, %"compiler/source:Span" %t425)
  store { i64, ptr } %t426, ptr %l196
  br label %bb103
bb103:
  %t427 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t429 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t429, 1
  %t431 = extractvalue { i64, ptr } %t429, 0
  %t432 = add i64 %t428, %t431
  %t433 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 61, ptr getelementptr inbounds (<{ i64, [61 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t436 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t435)
  call void @olang_textcopy(ptr %t436, ptr %t427, i64 %t428)
  %t437 = getelementptr i8, ptr %t436, i64 %t428
  call void @olang_textcopy(ptr %t437, ptr %t430, i64 %t431)
  %t438 = getelementptr i8, ptr %t437, i64 %t431
  call void @olang_textcopy(ptr %t438, ptr %t433, i64 %t434)
  %t439 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t436, 1
  store { i64, ptr } %t440, ptr %l197, !tbaa !27
  %t441 = load ptr, ptr %lp10
  %t442 = load { i64, ptr }, ptr %t441, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t442, 0
  %t444 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t445 = extractvalue { i64, ptr } %t444, 0
  store i64 %t445, ptr %l199, !tbaa !24
  %t447 = load i64, ptr %l199, !tbaa !24
  %t448 = icmp eq i64 %t443, %t447
  br i1 %t448, label %bb104, label %bb105
bb104:
  %t450 = load ptr, ptr %lp10
  %t451 = getelementptr { i64, ptr }, ptr %t450, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !27
  %t453 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = load i64, ptr %l199, !tbaa !24
  %t456 = mul i64 %t455, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t452, ptr %t454, i64 %t456, i1 false)
  br label %bb106
bb105:
  %t457 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t458 = load ptr, ptr %lp10
  store { i64, ptr } %t457, ptr %t458, !tbaa !27
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s20)
  br label %bb107
bb107:
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s17)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s15)
  br label %bb111
bb110:
  call void @__olang_check_failed(ptr @olang_loc_c3165b793781225b_53a43f46ee99ca6f)
  unreachable
bb111:
  %t459 = load i64, ptr %l7, !tbaa !24
  %t460 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t463 = icmp eq i64 %t459, %t460
  br i1 %t463, label %bb112, label %bb113
bb112:
  %t465 = load ptr, ptr %l5, !tbaa !29
  %t467 = getelementptr %"compiler/free:Free", ptr %t465, i32 0, i32 13
  %t468 = load i64, ptr %l1, !tbaa !24
  %t471 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t467, i64 %t468)
  store i1 %t471, ptr %l208
  br label %bb114
bb113:
  store i1 false, ptr %l204, !tbaa !21
  br label %bb115
bb114:
  %t472 = load i1, ptr %l208, !tbaa !21
  store i1 %t472, ptr %l204, !tbaa !21
  br label %bb115
bb115:
  %t473 = load i1, ptr %l204, !tbaa !21
  br i1 %t473, label %bb116, label %bb117
bb116:
  %t474 = load ptr, ptr %l5, !tbaa !29
  %t475 = load i64, ptr %l1, !tbaa !24
  %t478 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplainElems(ptr %v0, ptr %t474, i64 %t475)
  store i1 %t478, ptr %l212
  br label %bb118
bb117:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb119
bb118:
  %t479 = load i1, ptr %l212, !tbaa !21
  %t480 = xor i1 %t479, true
  store i1 %t480, ptr %l209, !tbaa !21
  br label %bb119
bb119:
  %t482 = load i1, ptr %l209, !tbaa !21
  br i1 %t482, label %bb120, label %bb121
bb120:
  %t483 = load ptr, ptr %l2, !tbaa !29
  %t485 = call i1 @compiler_2ffree_2emovesOnly(ptr %v1, ptr %t483)
  store i1 %t485, ptr %l216
  br label %bb122
bb121:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb123
bb122:
  %t486 = load i1, ptr %l216, !tbaa !21
  %t487 = xor i1 %t486, true
  store i1 %t487, ptr %l214, !tbaa !21
  br label %bb123
bb123:
  %t489 = load i1, ptr %l214, !tbaa !21
  br i1 %t489, label %bb124, label %bb125
bb124:
  store %olang.scope zeroinitializer, ptr %s22
  %t490 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  store i64 %t490, ptr %l7, !tbaa !24
  %t492 = load ptr, ptr %l0, !tbaa !29
  store ptr %t492, ptr %l219, !tbaa !29
  %t493 = load ptr, ptr %l2, !tbaa !29
  %t495 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t493)
  store %"compiler/source:Span" %t495, ptr %l221
  br label %bb126
bb125:
  br label %bb131
bb126:
  %t496 = load ptr, ptr %l219, !tbaa !29
  %t497 = load %"compiler/source:Span", ptr %l221
  %t498 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s22, ptr %t496, %"compiler/source:Span" %t497)
  store { i64, ptr } %t498, ptr %l222
  br label %bb127
bb127:
  %t499 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t500 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t501 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t501, 1
  %t503 = extractvalue { i64, ptr } %t501, 0
  %t504 = add i64 %t500, %t503
  %t505 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t506 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t507 = add i64 %t504, %t506
  %t508 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t507)
  call void @olang_textcopy(ptr %t508, ptr %t499, i64 %t500)
  %t509 = getelementptr i8, ptr %t508, i64 %t500
  call void @olang_textcopy(ptr %t509, ptr %t502, i64 %t503)
  %t510 = getelementptr i8, ptr %t509, i64 %t503
  call void @olang_textcopy(ptr %t510, ptr %t505, i64 %t506)
  %t511 = insertvalue { i64, ptr } undef, i64 %t507, 0
  %t512 = insertvalue { i64, ptr } %t511, ptr %t508, 1
  store { i64, ptr } %t512, ptr %l223, !tbaa !27
  %t513 = load ptr, ptr %lp10
  %t514 = load { i64, ptr }, ptr %t513, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t514, 0
  %t516 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t517 = extractvalue { i64, ptr } %t516, 0
  store i64 %t517, ptr %l225, !tbaa !24
  %t519 = load i64, ptr %l225, !tbaa !24
  %t520 = icmp eq i64 %t515, %t519
  br i1 %t520, label %bb128, label %bb129
bb128:
  %t522 = load ptr, ptr %lp10
  %t523 = getelementptr { i64, ptr }, ptr %t522, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !27
  %t525 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !27
  %t527 = load i64, ptr %l225, !tbaa !24
  %t528 = mul i64 %t527, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t524, ptr %t526, i64 %t528, i1 false)
  br label %bb130
bb129:
  %t529 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t530 = load ptr, ptr %lp10
  store { i64, ptr } %t529, ptr %t530, !tbaa !27
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s22)
  br label %bb131
bb131:
  %t531 = load i64, ptr %l7, !tbaa !24
  %t532 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t535 = icmp eq i64 %t531, %t532
  br i1 %t535, label %bb132, label %bb133
bb132:
  %t537 = load i1, ptr %l4, !tbaa !21
  store i1 %t537, ptr %l230, !tbaa !21
  br label %bb134
bb133:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb134
bb134:
  %t539 = load i1, ptr %l230, !tbaa !21
  br i1 %t539, label %bb135, label %bb136
bb135:
  %t540 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  store i64 %t540, ptr %l7, !tbaa !24
  store { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l233, !tbaa !27
  %t542 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t542, ptr %l234, !tbaa !27
  %t543 = load ptr, ptr %lp10
  %t544 = load { i64, ptr }, ptr %t543, !tbaa !27
  %t545 = extractvalue { i64, ptr } %t544, 0
  %t546 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t547 = extractvalue { i64, ptr } %t546, 0
  store i64 %t547, ptr %l236, !tbaa !24
  %t549 = load i64, ptr %l236, !tbaa !24
  %t550 = icmp eq i64 %t545, %t549
  br i1 %t550, label %bb137, label %bb138
bb136:
  br label %bb140
bb137:
  %t552 = load ptr, ptr %lp10
  %t553 = getelementptr { i64, ptr }, ptr %t552, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !27
  %t555 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = load i64, ptr %l236, !tbaa !24
  %t558 = mul i64 %t557, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t554, ptr %t556, i64 %t558, i1 false)
  br label %bb139
bb138:
  %t559 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t560 = extractvalue { i64, ptr } %t559, 0
  store i64 %t560, ptr %l238, !tbaa !24
  %t561 = load i64, ptr %l238, !tbaa !24
  %t562 = mul i64 %t561, 1
  %t563 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t562)
  %t564 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr %t563, 1
  store { i64, ptr } %t565, ptr %l239, !tbaa !27
  %t566 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !27
  %t568 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t569 = load ptr, ptr %t568, !tbaa !27
  %t570 = load i64, ptr %l238, !tbaa !24
  %t571 = mul i64 %t570, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t567, ptr %t569, i64 %t571, i1 false)
  %t572 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t573 = load ptr, ptr %lp10
  store { i64, ptr } %t572, ptr %t573, !tbaa !27
  br label %bb139
bb139:
  br label %bb140
bb140:
  %t574 = load ptr, ptr %l5, !tbaa !29
  %t576 = getelementptr %"compiler/free:Free", ptr %t574, i32 0, i32 46
  store ptr %t576, ptr %l241, !tbaa !29
  %t577 = load i64, ptr %l1, !tbaa !24
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/free:walker", ptr %t578, i32 0, i32 1
  %t581 = load i64, ptr %t580, !tbaa !24
  %t582 = load i64, ptr %l6, !tbaa !24
  %t583 = load %"compiler/source:Span", ptr %l3
  %t584 = load i64, ptr %l7, !tbaa !24
  %t585 = load i64, ptr %l8, !tbaa !24
  %t586 = load i64, ptr %l9, !tbaa !24
  %t587 = load ptr, ptr %l2, !tbaa !29
  %t597 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v1, ptr %v0, ptr %v0, i64 %t577, i64 %t581, i64 %t582, %"compiler/source:Span" %t583, i64 %t584, i64 %t585, i64 %t586, ptr %t587, ptr null)
  store %"compiler/free:store" %t597, ptr %l252
  br label %bb141
bb141:
  %t598 = load ptr, ptr %l241, !tbaa !29
  %t599 = load %"compiler/free:store", ptr %l252
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t598, %"compiler/free:store" %t599)
  br label %bb142
bb142:
  %t600 = load i64, ptr %l7, !tbaa !24
  %t601 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  %t604 = icmp eq i64 %t600, %t601
  br i1 %t604, label %bb143, label %bb144
bb143:
  %t606 = load i64, ptr %l6, !tbaa !24
  store i64 %t606, ptr %l24, !tbaa !24
  %t608 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t608, ptr %l25
  %t610 = load ptr, ptr %l5, !tbaa !29
  %t612 = getelementptr %"compiler/free:Free", ptr %t610, i32 0, i32 54
  %t613 = load i64, ptr %t612, !tbaa !24
  %t615 = icmp sge i64 %t613, 0
  br i1 %t615, label %bb145, label %bb146
bb144:
  br label %bb149
bb145:
  %t617 = load ptr, ptr %l5, !tbaa !29
  %t619 = getelementptr %"compiler/free:Free", ptr %t617, i32 0, i32 55
  %t620 = load i64, ptr %t619, !tbaa !24
  %t622 = load ptr, ptr %l5, !tbaa !29
  %t624 = getelementptr %"compiler/free:Free", ptr %t622, i32 0, i32 56
  %t625 = load %"compiler/source:Span", ptr %t624
  store i64 %t620, ptr %l24, !tbaa !24
  store %"compiler/source:Span" %t625, ptr %l25
  %t631 = load ptr, ptr %l5, !tbaa !29
  %t633 = getelementptr %"compiler/free:Free", ptr %t631, i32 0, i32 54
  store i64 -1, ptr %t633, !tbaa !24
  br label %bb147
bb146:
  br label %bb147
bb147:
  %t634 = load ptr, ptr %l5, !tbaa !29
  %t635 = load i64, ptr %l1, !tbaa !24
  %t636 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  %t637 = load i64, ptr %l24, !tbaa !24
  %t638 = load %"compiler/source:Span", ptr %l25
  %t639 = load ptr, ptr %lp10
  %t640 = load { i64, ptr }, ptr %t639, !tbaa !27
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t634, i64 %t635, i64 %t636, i64 %t637, %"compiler/source:Span" %t638, { i64, ptr } %t640)
  br label %bb148
bb148:
  br label %bb149
bb149:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamPaths(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l57 = alloca i64
  %l61 = alloca i64
  %l65 = alloca i1
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i1
  %l100 = alloca i64
  %l104 = alloca i64
  %l106 = alloca i1
  %l113 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l141 = alloca i1
  %l145 = alloca i64
  %l151 = alloca i64
  %l155 = alloca i1
  %l159 = alloca i1
  %l161 = alloca i1
  %l163 = alloca i1
  %l167 = alloca i1
  %l171 = alloca i1
  %l172 = alloca i1
  %l179 = alloca i1
  %l184 = alloca ptr
  %l186 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:walker", ptr %t6, i32 0, i32 51
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l29
  br label %bb1
bb1:
  %t11 = load i64, ptr %l29, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb7
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l36, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l36, !tbaa !24
  store i64 %t38, ptr %l33, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l33, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb90
bb10:
  br label %bb11
bb11:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/free:walker", ptr %t58, i32 0, i32 51
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l57
  br label %bb12
bb12:
  %t65 = load i64, ptr %l57, !tbaa !24
  store i64 %t65, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/free:walker", ptr %t66, i32 0, i32 53
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l61
  br label %bb13
bb13:
  %t73 = load i64, ptr %l61, !tbaa !24
  store i64 %t73, ptr %l9, !tbaa !24
  store i1 false, ptr %l10, !tbaa !21
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/free:walker", ptr %t74, i32 0, i32 22
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t76, i64 %t77)
  store i1 %t80, ptr %l65
  br label %bb14
bb14:
  %t81 = load i1, ptr %l65, !tbaa !21
  store i1 %t81, ptr %l11, !tbaa !21
  store i64 0, ptr %l12, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/free:walker", ptr %t82, i32 0, i32 14
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t84)
  store i64 %t86, ptr %l68
  br label %bb15
bb15:
  %t87 = load i64, ptr %l68, !tbaa !24
  store i64 %t87, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t88 = load i64, ptr %l13, !tbaa !24
  %t89 = load i64, ptr %l12, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb16, label %bb17
bb16:
  %t94 = load i64, ptr %l14, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb21
bb18:
  %t98 = load i64, ptr %l13, !tbaa !24
  %t99 = load i64, ptr %l12, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l14, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l14, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l75, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb20
bb20:
  %t114 = load i64, ptr %l75, !tbaa !24
  store i64 %t114, ptr %l72, !tbaa !24
  br label %bb21
bb21:
  %t115 = load i64, ptr %l72, !tbaa !24
  store i64 %t115, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb22
bb22:
  %t116 = load i64, ptr %l16, !tbaa !24
  %t117 = load i64, ptr %l15, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb23, label %bb24
bb23:
  br label %bb38
bb24:
  br label %bb25
bb25:
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l16, !tbaa !24
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l17, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/free:walker", ptr %t134, i32 0, i32 14
  %t137 = load i64, ptr %l17, !tbaa !24
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t136, i64 %t137)
  store i64 %t140, ptr %l96
  br label %bb26
bb26:
  %t141 = load i64, ptr %l9, !tbaa !24
  %t142 = load i64, ptr %l96, !tbaa !24
  %t144 = icmp slt i64 %t142, %t141
  br i1 %t144, label %bb27, label %bb28
bb27:
  %t146 = load i64, ptr %l9, !tbaa !24
  store i64 %t146, ptr %l100, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/free:walker", ptr %t147, i32 0, i32 15
  %t150 = load i64, ptr %l17, !tbaa !24
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l104
  br label %bb29
bb28:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb30
bb29:
  %t154 = load i64, ptr %l100, !tbaa !24
  %t155 = load i64, ptr %l104, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  store i1 %t156, ptr %l99, !tbaa !21
  br label %bb30
bb30:
  %t158 = load i1, ptr %l99, !tbaa !21
  br i1 %t158, label %bb31, label %bb32
bb31:
  %t159 = load i1, ptr %l11, !tbaa !21
  %t161 = xor i1 %t159, true
  store i1 %t161, ptr %l106, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb33
bb33:
  %t163 = load i1, ptr %l106, !tbaa !21
  br i1 %t163, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb36
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t164 = load i64, ptr %l16, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l16, !tbaa !24
  br label %bb22
bb38:
  store i64 0, ptr %l18, !tbaa !24
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/free:walker", ptr %t168, i32 0, i32 51
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l113
  br label %bb39
bb39:
  %t173 = load i64, ptr %l113, !tbaa !24
  store i64 %t173, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t174 = load i64, ptr %l19, !tbaa !24
  %t175 = load i64, ptr %l18, !tbaa !24
  %t178 = icmp sgt i64 %t174, %t175
  br i1 %t178, label %bb40, label %bb41
bb40:
  %t180 = load i64, ptr %l20, !tbaa !24
  %t182 = icmp sgt i64 %t180, 0
  br i1 %t182, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb45
bb42:
  %t184 = load i64, ptr %l19, !tbaa !24
  %t185 = load i64, ptr %l18, !tbaa !24
  %t188 = sub i64 %t184, %t185
  %t189 = load i64, ptr %l20, !tbaa !24
  %t192 = add i64 %t188, %t189
  %t194 = sub i64 %t192, 1
  %t195 = load i64, ptr %l20, !tbaa !24
  %t198 = sdiv i64 %t194, %t195
  store i64 %t198, ptr %l120, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb44
bb44:
  %t200 = load i64, ptr %l120, !tbaa !24
  store i64 %t200, ptr %l117, !tbaa !24
  br label %bb45
bb45:
  %t201 = load i64, ptr %l117, !tbaa !24
  store i64 %t201, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb46
bb46:
  %t202 = load i64, ptr %l22, !tbaa !24
  %t203 = load i64, ptr %l21, !tbaa !24
  %t206 = icmp slt i64 %t202, %t203
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb47, label %bb48
bb47:
  br label %bb80
bb48:
  br label %bb49
bb49:
  %t210 = load i64, ptr %l18, !tbaa !24
  %t211 = load i64, ptr %l22, !tbaa !24
  %t212 = load i64, ptr %l20, !tbaa !24
  %t215 = mul i64 %t211, %t212
  %t218 = add i64 %t210, %t215
  store i64 %t218, ptr %l23, !tbaa !24
  %t220 = load i64, ptr %l23, !tbaa !24
  %t221 = load i64, ptr %l7, !tbaa !24
  %t224 = icmp eq i64 %t220, %t221
  br i1 %t224, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb53
bb51:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/free:walker", ptr %t226, i32 0, i32 51
  %t229 = load i64, ptr %l23, !tbaa !24
  %t232 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t228, i64 %t229)
  store i64 %t232, ptr %l145
  br label %bb52
bb52:
  %t233 = load i64, ptr %l8, !tbaa !24
  %t234 = load i64, ptr %l145, !tbaa !24
  %t236 = icmp ne i64 %t234, %t233
  store i1 %t236, ptr %l141, !tbaa !21
  br label %bb53
bb53:
  %t238 = load i1, ptr %l141, !tbaa !21
  br i1 %t238, label %bb54, label %bb55
bb54:
  br label %bb79
bb55:
  br label %bb56
bb56:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/free:walker", ptr %t239, i32 0, i32 53
  %t242 = load i64, ptr %l23, !tbaa !24
  %t245 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t241, i64 %t242)
  store i64 %t245, ptr %l151
  br label %bb57
bb57:
  %t246 = load i64, ptr %l151, !tbaa !24
  store i64 %t246, ptr %l24, !tbaa !24
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i64, ptr %l9, !tbaa !24
  %t249 = load i64, ptr %l24, !tbaa !24
  %t253 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexclusive(ptr %v0, ptr %t247, i64 %t248, i64 %t249)
  store i1 %t253, ptr %l155
  br label %bb58
bb58:
  %t254 = load i1, ptr %l155, !tbaa !21
  br i1 %t254, label %bb59, label %bb60
bb59:
  br label %bb79
bb60:
  br label %bb61
bb61:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l9, !tbaa !24
  %t257 = load i64, ptr %l24, !tbaa !24
  %t261 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eloopAround(ptr %v0, ptr %t255, i64 %t256, i64 %t257)
  store i1 %t261, ptr %l159
  br label %bb62
bb62:
  %t262 = load i1, ptr %l159, !tbaa !21
  %t263 = xor i1 %t262, true
  br i1 %t263, label %bb63, label %bb64
bb63:
  %t265 = load i1, ptr %l11, !tbaa !21
  br i1 %t265, label %bb65, label %bb66
bb64:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb75
bb65:
  %t267 = load i64, ptr %l24, !tbaa !24
  %t268 = load i64, ptr %l9, !tbaa !24
  %t271 = icmp sgt i64 %t267, %t268
  store i1 %t271, ptr %l163, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb67
bb67:
  %t273 = load i1, ptr %l163, !tbaa !21
  br i1 %t273, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l167, !tbaa !21
  br label %bb74
bb69:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/free:walker", ptr %t274, i32 0, i32 22
  %t277 = load i64, ptr %l24, !tbaa !24
  %t280 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t276, i64 %t277)
  store i1 %t280, ptr %l171
  br label %bb70
bb70:
  %t281 = load i1, ptr %l171, !tbaa !21
  br i1 %t281, label %bb71, label %bb72
bb71:
  %t282 = load i64, ptr %l9, !tbaa !24
  %t283 = load i64, ptr %l24, !tbaa !24
  %t286 = icmp sgt i64 %t282, %t283
  store i1 %t286, ptr %l172, !tbaa !21
  br label %bb73
bb72:
  store i1 false, ptr %l172, !tbaa !21
  br label %bb73
bb73:
  %t288 = load i1, ptr %l172, !tbaa !21
  store i1 %t288, ptr %l167, !tbaa !21
  br label %bb74
bb74:
  %t289 = load i1, ptr %l167, !tbaa !21
  store i1 %t289, ptr %l161, !tbaa !21
  br label %bb75
bb75:
  %t290 = load i1, ptr %l161, !tbaa !21
  br i1 %t290, label %bb76, label %bb77
bb76:
  br label %bb79
bb77:
  br label %bb78
bb78:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb79
bb79:
  %t291 = load i64, ptr %l22, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l22, !tbaa !24
  br label %bb46
bb80:
  %t295 = load i1, ptr %l10, !tbaa !21
  br i1 %t295, label %bb81, label %bb82
bb81:
  %t297 = load ptr, ptr %l1, !tbaa !29
  %t299 = getelementptr %"compiler/free:Free", ptr %t297, i32 0, i32 32
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/free:walker", ptr %t300, i32 0, i32 1
  %t303 = load i64, ptr %t302, !tbaa !24
  %t306 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t299, i64 %t303)
  store ptr %t306, ptr %l184
  br label %bb83
bb82:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb85
bb83:
  %t307 = load i64, ptr %l8, !tbaa !24
  %t308 = load ptr, ptr %l184, !tbaa !29
  %t310 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t308, i64 %t307)
  store i64 %t310, ptr %l186
  br label %bb84
bb84:
  %t311 = load i64, ptr %l186, !tbaa !24
  %t312 = icmp sgt i64 %t311, 0
  store i1 %t312, ptr %l179, !tbaa !21
  br label %bb85
bb85:
  %t314 = load i1, ptr %l179, !tbaa !21
  br i1 %t314, label %bb86, label %bb87
bb86:
  %t315 = load ptr, ptr %l1, !tbaa !29
  %t317 = getelementptr %"compiler/free:Free", ptr %t315, i32 0, i32 40
  store i1 true, ptr %t317, !tbaa !21
  br label %bb88
bb87:
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t318 = load i64, ptr %l6, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l6, !tbaa !24
  br label %bb8
bb90:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereset(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 4
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l16, !tbaa !24
  store i64 %t33, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l13, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/free:walker", ptr %t53, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t55, i64 %t51, i1 false)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/free:walker", ptr %t63, i32 0, i32 11
  store i64 0, ptr %t65, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/free:walker", ptr %t66, i32 0, i32 12
  store i64 0, ptr %t68, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/free:walker", ptr %t69, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t71)
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:walker", ptr %t73, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t75)
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/free:walker", ptr %t77, i32 0, i32 22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t79)
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/free:walker", ptr %t81, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t83)
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/free:walker", ptr %t85, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t87)
  br label %bb19
bb19:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/free:walker", ptr %t89, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t91)
  br label %bb20
bb20:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/free:walker", ptr %t93, i32 0, i32 18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t95)
  br label %bb21
bb21:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/free:walker", ptr %t97, i32 0, i32 19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t99)
  br label %bb22
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/free:walker", ptr %t101, i32 0, i32 24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t103)
  br label %bb23
bb23:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/free:walker", ptr %t105, i32 0, i32 25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t107)
  br label %bb24
bb24:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/free:walker", ptr %t109, i32 0, i32 26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t111)
  br label %bb25
bb25:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/free:walker", ptr %t113, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t115)
  br label %bb26
bb26:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/free:walker", ptr %t117, i32 0, i32 42
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t119)
  br label %bb27
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/free:walker", ptr %t121, i32 0, i32 43
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t123)
  br label %bb28
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/free:walker", ptr %t125, i32 0, i32 44
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t127)
  br label %bb29
bb29:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/free:walker", ptr %t129, i32 0, i32 45
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t131)
  br label %bb30
bb30:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/free:walker", ptr %t133, i32 0, i32 46
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t135)
  br label %bb31
bb31:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/free:walker", ptr %t137, i32 0, i32 47
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t139)
  br label %bb32
bb32:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/free:walker", ptr %t141, i32 0, i32 48
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t143)
  br label %bb33
bb33:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/free:walker", ptr %t145, i32 0, i32 49
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t147)
  br label %bb34
bb34:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/free:walker", ptr %t149, i32 0, i32 50
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t151)
  br label %bb35
bb35:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/free:walker", ptr %t153, i32 0, i32 36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t155)
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/free:walker", ptr %t157, i32 0, i32 37
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hcb8ba31809995dcae45f5acc6cf39f88(ptr %v0, ptr %t159)
  br label %bb37
bb37:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/free:walker", ptr %t161, i32 0, i32 51
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t163)
  br label %bb38
bb38:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/free:walker", ptr %t165, i32 0, i32 52
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t167)
  br label %bb39
bb39:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/free:walker", ptr %t169, i32 0, i32 53
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t171)
  br label %bb40
bb40:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/free:walker", ptr %t173, i32 0, i32 54
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t175)
  br label %bb41
bb41:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/free:walker", ptr %t177, i32 0, i32 55
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t179)
  br label %bb42
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eresult(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l25 = alloca ptr
  %l27 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l9, !tbaa !24
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = load i64, ptr %l11, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l16
  br label %bb6
bb6:
  %t23 = load i64, ptr %l16, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = call i64 @compiler_2ffree_2eokind(i64 %t24)
  store i64 %t26, ptr %l18
  br label %bb7
bb7:
  %t27 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t28 = load i64, ptr %l18, !tbaa !24
  %t30 = icmp eq i64 %t28, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/free:Free", ptr %t32, i32 0, i32 28
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/free:walker", ptr %t35, i32 0, i32 1
  %t38 = load i64, ptr %t37, !tbaa !24
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t34, i64 %t38)
  store ptr %t41, ptr %l25
  br label %bb11
bb11:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load ptr, ptr %l25, !tbaa !29
  %t45 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t43, i64 %t42)
  store i64 %t45, ptr %l27
  br label %bb12
bb12:
  %t46 = load i64, ptr %l27, !tbaa !24
  %t47 = icmp sgt i64 %t46, 0
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/free:Free", ptr %t49, i32 0, i32 40
  store i1 true, ptr %t51, !tbaa !21
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l4, !tbaa !24
  br label %bb1
bb17:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca ptr
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l7, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb26
bb6:
  %t26 = load ptr, ptr %l4, !tbaa !29
  store ptr %t26, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 0
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb20
bb11:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t36 = load i32, ptr %l3, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l22
  br label %bb12
bb12:
  %t40 = load i1, ptr %l22, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l26
  br label %bb15
bb14:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb16
bb15:
  %t46 = load i1, ptr %l26, !tbaa !21
  %t47 = xor i1 %t46, true
  store i1 %t47, ptr %l23, !tbaa !21
  br label %bb16
bb16:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_311feee871305b59_d38294057dde4ced)
  unreachable
bb25:
  store ptr null, ptr %rv
  br label %ret
bb26:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb27, label %bb28
bb27:
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 3
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb28
bb28:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb29, label %bb30
bb29:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = call ptr @compiler_2ffree_2ederefRoot(ptr %v1, ptr %v2, ptr %t69)
  store ptr %t71, ptr %l38
  br label %bb32
bb32:
  %t72 = load ptr, ptr %l38, !tbaa !29
  store ptr %t72, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store ptr null, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_421add8d063ee188_aab923ea260c413c)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l37 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i64
  %l45 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i1
  %l63 = alloca i1
  %l68 = alloca i64
  %l77 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t11)
  store i32 %t13, ptr %l14
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i32, ptr %l14, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t16, ptr %l15
  br label %bb3
bb3:
  %t17 = load i1, ptr %l15, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb8
bb5:
  %t20 = load ptr, ptr %l3, !tbaa !29
  store ptr %t20, ptr %l18, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t21)
  store i32 %t23, ptr %l20
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t25 = load i32, ptr %l20, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t26, ptr %l21
  br label %bb7
bb7:
  %t27 = load i1, ptr %l21, !tbaa !21
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t30 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t33 = load ptr, ptr %l24, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = load ptr, ptr %l24, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 18}
  %t39 = icmp eq i64 %t37, 2
  store i1 %t39, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l25, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  br label %bb46
bb16:
  %t47 = load ptr, ptr %l5, !tbaa !29
  store ptr %t47, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t48 = load ptr, ptr %l30, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb17, label %bb18
bb17:
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 8}
  %t54 = icmp eq i64 %t52, 0
  store i1 %t54, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t55 = load i1, ptr %l31, !tbaa !21
  br i1 %t55, label %bb19, label %bb20
bb19:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t58, i32 0, i32 2
  %t60 = load i32, ptr %t59
  store i32 %t60, ptr %l6, !tbaa !23
  br label %bb21
bb20:
  br label %bb29
bb21:
  %t62 = load i32, ptr %l6, !tbaa !23
  %t64 = sext i32 %t62 to i64
  store i64 %t64, ptr %l37, !tbaa !24
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr %"compiler/free:Free", ptr %t65, i32 0, i32 57
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/free:walker", ptr %t68, i32 0, i32 1
  %t71 = load i64, ptr %t70, !tbaa !24
  %t74 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t67, i64 %t71)
  store ptr %t74, ptr %l42
  br label %bb22
bb22:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t75)
  store i64 %t76, ptr %l43
  br label %bb23
bb23:
  %t77 = load i64, ptr %l37, !tbaa !24
  %t78 = load i64, ptr %l43, !tbaa !24
  %t79 = icmp slt i64 %t77, %t78
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"compiler/free:Free", ptr %t81, i32 0, i32 57
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/free:walker", ptr %t84, i32 0, i32 1
  %t87 = load i64, ptr %t86, !tbaa !24
  %t90 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t83, i64 %t87)
  store ptr %t90, ptr %l50
  br label %bb26
bb25:
  %t91 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t91, ptr %l45, !tbaa !24
  br label %bb28
bb26:
  %t93 = load ptr, ptr %l50, !tbaa !29
  %t94 = load i32, ptr %l6, !tbaa !23
  %t96 = sext i32 %t94 to i64
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t93, i64 %t96)
  store i64 %t99, ptr %l54
  br label %bb27
bb27:
  %t100 = load i64, ptr %l54, !tbaa !24
  store i64 %t100, ptr %l45, !tbaa !24
  br label %bb28
bb28:
  %t101 = load i64, ptr %l45, !tbaa !24
  store i64 %t101, ptr %l4, !tbaa !24
  br label %bb45
bb29:
  %t102 = load ptr, ptr %l5, !tbaa !29
  store ptr %t102, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t103 = load ptr, ptr %l56, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb30, label %bb31
bb30:
  %t106 = load ptr, ptr %l56, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 3
  store i1 %t109, ptr %l57, !tbaa !21
  br label %bb31
bb31:
  %t110 = load i1, ptr %l57, !tbaa !21
  br i1 %t110, label %bb32, label %bb33
bb32:
  %t111 = load ptr, ptr %l5, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l7, !tbaa !29
  br label %bb34
bb33:
  br label %bb40
bb34:
  %t117 = load ptr, ptr %l7, !tbaa !29
  %t119 = call i1 @compiler_2ffree_2epureBase(ptr %v1, ptr %t117)
  store i1 %t119, ptr %l63
  br label %bb35
bb35:
  %t120 = load i1, ptr %l63, !tbaa !21
  %t121 = xor i1 %t120, true
  br i1 %t121, label %bb36, label %bb37
bb36:
  store i64 -1, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t125 = load ptr, ptr %l5, !tbaa !29
  %t128 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  store i64 %t128, ptr %l68
  br label %bb39
bb39:
  %t129 = load i64, ptr %l68, !tbaa !24
  store i64 %t129, ptr %l4, !tbaa !24
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store i64 -1, ptr %rv
  br label %ret
bb44:
  call void @__olang_check_failed(ptr @olang_loc_34bfc259355dec67_8a2d14d061fee643)
  unreachable
bb45:
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i64 -1, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_806a74b5c91de186_4e306eb4964e9ec2)
  unreachable
bb51:
  %t132 = load i64, ptr %l4, !tbaa !24
  %t134 = icmp slt i64 %t132, 0
  br i1 %t134, label %bb52, label %bb53
bb52:
  store i64 -1, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t137 = load i64, ptr %l4, !tbaa !24
  %t138 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  %t141 = icmp sge i64 %t137, %t138
  br i1 %t141, label %bb55, label %bb56
bb55:
  %t143 = load i64, ptr %l4, !tbaa !24
  %t144 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  %t147 = sub i64 %t143, %t144
  store i64 %t147, ptr %l77, !tbaa !24
  br label %bb57
bb56:
  %t149 = load i64, ptr %l4, !tbaa !24
  store i64 %t149, ptr %l77, !tbaa !24
  br label %bb57
bb57:
  %t151 = load i64, ptr %l77, !tbaa !24
  store i64 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i1
  %l44 = alloca ptr
  %l46 = alloca i64
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:walker", ptr %t5, i32 0, i32 8
  %t8 = load i32, ptr %t7, !tbaa !23
  %t13 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t4, i32 %t8, i64 %a1)
  store i64 %t13, ptr %l14
  br label %bb1
bb1:
  %t14 = load i64, ptr %l14, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  br i1 %t17, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l5, !tbaa !24
  %t22 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %s1, ptr %t19, i64 %t20, ptr %a2, ptr %t22, %"compiler/source:Span" %a4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, i1 false)
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:walker", ptr %t29, i32 0, i32 2
  %t32 = load i1, ptr %t31, !tbaa !21
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t36 = load ptr, ptr %l3, !tbaa !29
  store ptr %t36, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb7:
  br label %bb25
bb8:
  %t38 = load i64, ptr %l7, !tbaa !24
  store i64 %t38, ptr %l26, !tbaa !24
  %t39 = load ptr, ptr %l6, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t39)
  store i64 %t41, ptr %l28
  br label %bb9
bb9:
  %t42 = load i64, ptr %l26, !tbaa !24
  %t43 = load i64, ptr %l28, !tbaa !24
  %t44 = icmp slt i64 %t42, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb10, label %bb11
bb10:
  br label %bb24
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t48, i64 %t49)
  store i64 %t52, ptr %l33
  br label %bb13
bb13:
  %t53 = load i64, ptr %l33, !tbaa !24
  store i64 %t53, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t56 = call i64 @compiler_2ffree_2eokind(i64 %t54)
  store i64 %t56, ptr %l35
  br label %bb14
bb14:
  %t57 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t58 = load i64, ptr %l35, !tbaa !24
  %t60 = icmp ne i64 %t58, %t57
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/free:walker", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/free:Free", ptr %t65, i32 0, i32 28
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/free:walker", ptr %t68, i32 0, i32 1
  %t71 = load i64, ptr %t70, !tbaa !24
  %t74 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t67, i64 %t71)
  store ptr %t74, ptr %l44
  br label %bb17
bb16:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb19
bb17:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load ptr, ptr %l44, !tbaa !29
  %t78 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t76, i64 %t75)
  store i64 %t78, ptr %l46
  br label %bb18
bb18:
  %t79 = load i64, ptr %l46, !tbaa !24
  %t80 = icmp sgt i64 %t79, 0
  store i1 %t80, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t82 = load i1, ptr %l38, !tbaa !21
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/free:walker", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/free:Free", ptr %t86, i32 0, i32 40
  store i1 true, ptr %t88, !tbaa !21
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l7, !tbaa !24
  br label %bb8
bb24:
  br label %bb25
bb25:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreOne(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/source:Span" %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t2, i32 0, i32 29
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t9 = getelementptr %"compiler/free:walker", ptr %t8, i32 0, i32 29
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s0, ptr %t10, ptr %t11)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l11
  br label %bb1
bb1:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l5
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = getelementptr %"compiler/free:walker", ptr %t17, i32 0, i32 29
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = sub i64 %t19, 1
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = getelementptr %"compiler/free:walker", ptr %t23, i32 0, i32 29
  store i64 %t21, ptr %t24, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreAs(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t25, i64 %a1, ptr %t27, ptr %l5, %"compiler/source:Span" %a3, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, i1 %a4, i1 false)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euse(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 29
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:walker", ptr %t8, i32 0, i32 24
  %t11 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t10, i64 %t11)
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/free:walker", ptr %t14, i32 0, i32 25
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:walker", ptr %t17, i32 0, i32 12
  %t20 = load i64, ptr %t19, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t16, i64 %t20)
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/free:walker", ptr %t23, i32 0, i32 26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t25, %"compiler/source:Span" %a2)
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:walker", ptr %t29, i32 0, i32 28
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:walker", ptr %t36, i32 0, i32 27
  %t39 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t38, i64 %t39)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca i64
  store ptr %a0, ptr %l0
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
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:walker", ptr %t8, i32 0, i32 29
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:walker", ptr %t16, i32 0, i32 38
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  store ptr %a1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  store i64 %t26, ptr %l18, !tbaa !24
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t27)
  store i64 %t29, ptr %l20
  br label %bb11
bb11:
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = load i64, ptr %l20, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb12, label %bb13
bb12:
  br label %bb27
bb13:
  br label %bb14
bb14:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t36, i64 %t37)
  store i64 %t40, ptr %l25
  br label %bb15
bb15:
  %t41 = load i64, ptr %l25, !tbaa !24
  store i64 %t41, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = call i64 @compiler_2ffree_2eokind(i64 %t42)
  store i64 %t44, ptr %l27
  br label %bb16
bb16:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t50 = icmp eq i64 %t46, %t47
  br i1 %t50, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb19
bb18:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t56 = icmp eq i64 %t52, %t53
  store i1 %t56, ptr %l31, !tbaa !21
  br label %bb19
bb19:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb20, label %bb21
bb20:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/free:walker", ptr %t59, i32 0, i32 42
  store ptr %t61, ptr %l36, !tbaa !29
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = call i64 @compiler_2ffree_2eoval(i64 %t62)
  store i64 %t64, ptr %l38
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t65 = load ptr, ptr %l36, !tbaa !29
  %t66 = load i64, ptr %l38, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  br label %bb23
bb23:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/free:walker", ptr %t67, i32 0, i32 43
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/free:walker", ptr %t70, i32 0, i32 12
  %t73 = load i64, ptr %t72, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t69, i64 %t73)
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l3, !tbaa !24
  br label %bb10
bb27:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2ffree_2ectorCall(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 6
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
  call void @__olang_check_failed(ptr @olang_loc_546be3fdfb2e7861_5a4791e17fa5075d)
  unreachable
bb11:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2ffree_2ederefRoot(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l5, !tbaa !29
  br label %bb32
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t30, i32 0, i32 2
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call ptr @compiler_2ffree_2ederefRoot(ptr %v0, ptr %v1, ptr %t34)
  store ptr %t36, ptr %l21
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l21, !tbaa !29
  store ptr %t37, ptr %l5, !tbaa !29
  br label %bb32
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 4
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l23, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Elem", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = call ptr @compiler_2ffree_2ederefRoot(ptr %v0, ptr %v1, ptr %t56)
  store ptr %t58, ptr %l30
  br label %bb19
bb19:
  %t59 = load ptr, ptr %l30, !tbaa !29
  store ptr %t59, ptr %l5, !tbaa !29
  br label %bb32
bb20:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 8}
  %t67 = icmp eq i64 %t65, 5
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb22
bb22:
  %t68 = load i1, ptr %l32, !tbaa !21
  br i1 %t68, label %bb23, label %bb24
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Payload", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = call ptr @compiler_2ffree_2ederefRoot(ptr %v0, ptr %v1, ptr %t78)
  store ptr %t80, ptr %l39
  br label %bb26
bb26:
  %t81 = load ptr, ptr %l39, !tbaa !29
  store ptr %t81, ptr %l5, !tbaa !29
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_5891e56eddc46c99_f944b0e713971375)
  unreachable
bb32:
  %t82 = load ptr, ptr %l5, !tbaa !29
  store ptr %t82, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l20 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Block", ptr %a0, i32 0, i32 1
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
  br label %bb10
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
  %t30 = call ptr @compiler_2ffree_2efindCallStmt(ptr %v0, ptr %v1, ptr %t24, i64 %a1)
  store ptr %t30, ptr %l20
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l20, !tbaa !29
  store ptr %t31, ptr %l6, !tbaa !29
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load ptr, ptr %l6, !tbaa !29
  store ptr %t38, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i1 @compiler_2ffree_2ereachedThrough(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l15
  br label %bb6
bb6:
  %t21 = load i1, ptr %l15, !tbaa !21
  store i1 %t21, ptr %l6, !tbaa !21
  br label %bb37
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l16, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t41 = call i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  store i1 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load i1, ptr %l24, !tbaa !21
  store i1 %t42, ptr %l6, !tbaa !21
  br label %bb37
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t44 = load ptr, ptr %l25, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 4
  store i1 %t50, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l26, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb25
bb19:
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Elem", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = call i1 @compiler_2ffree_2epureIndex(ptr %v0, ptr %t61)
  store i1 %t63, ptr %l33
  br label %bb20
bb20:
  %t64 = load i1, ptr %l33, !tbaa !21
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Elem", ptr %t65, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t72 = call i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  store i1 %t72, ptr %l38
  br label %bb23
bb22:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb24
bb23:
  %t73 = load i1, ptr %l38, !tbaa !21
  store i1 %t73, ptr %l34, !tbaa !21
  br label %bb24
bb24:
  %t74 = load i1, ptr %l34, !tbaa !21
  store i1 %t74, ptr %l6, !tbaa !21
  br label %bb37
bb25:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t76 = load ptr, ptr %l39, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb26, label %bb27
bb26:
  %t79 = load ptr, ptr %l39, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 8}
  %t82 = icmp eq i64 %t80, 5
  store i1 %t82, ptr %l40, !tbaa !21
  br label %bb27
bb27:
  %t83 = load i1, ptr %l40, !tbaa !21
  br i1 %t83, label %bb28, label %bb29
bb28:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Payload", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t97 = call i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %t93, ptr %t94)
  store i1 %t97, ptr %l48
  br label %bb31
bb31:
  %t98 = load i1, ptr %l48, !tbaa !21
  store i1 %t98, ptr %l6, !tbaa !21
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_40628693553637f3_9a0aaf33c7b3625f)
  unreachable
bb37:
  %t99 = load i1, ptr %l6, !tbaa !21
  store i1 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2estmtMoves(ptr %v0, ptr %a0) #0 {
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
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i1
  %l65 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t17 = load ptr, ptr %l14, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 4
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 18}
  %t32 = icmp eq i64 %t30, 2
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb11
bb11:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_c5daa4e55685553d_6576efec0cd8f099)
  unreachable
bb20:
  %t34 = load i1, ptr %l13, !tbaa !21
  store i1 %t34, ptr %l6, !tbaa !21
  br label %bb64
bb21:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t36 = load ptr, ptr %l22, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb22, label %bb23
bb22:
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 17}
  %t42 = icmp eq i64 %t40, 4
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb23
bb23:
  %t43 = load i1, ptr %l23, !tbaa !21
  br i1 %t43, label %bb24, label %bb25
bb24:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [3 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb35
bb26:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = call i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %t56)
  store i1 %t58, ptr %l31
  br label %bb27
bb27:
  %t59 = load i1, ptr %l31, !tbaa !21
  br i1 %t59, label %bb28, label %bb29
bb28:
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  br i1 %t62, label %bb30, label %bb31
bb29:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb34
bb30:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb33
bb31:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = call i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %t64)
  store i1 %t66, ptr %l37
  br label %bb32
bb32:
  %t67 = load i1, ptr %l37, !tbaa !21
  store i1 %t67, ptr %l35, !tbaa !21
  br label %bb33
bb33:
  %t68 = load i1, ptr %l35, !tbaa !21
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb34
bb34:
  %t69 = load i1, ptr %l32, !tbaa !21
  store i1 %t69, ptr %l6, !tbaa !21
  br label %bb64
bb35:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb36, label %bb37
bb36:
  %t74 = load ptr, ptr %l38, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 17}
  %t77 = icmp eq i64 %t75, 11
  store i1 %t77, ptr %l39, !tbaa !21
  br label %bb37
bb37:
  %t78 = load i1, ptr %l39, !tbaa !21
  br i1 %t78, label %bb38, label %bb39
bb38:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr }, ptr %t81, i32 0, i32 1
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = call i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %t85)
  store i1 %t87, ptr %l45
  br label %bb41
bb41:
  %t88 = load i1, ptr %l45, !tbaa !21
  store i1 %t88, ptr %l6, !tbaa !21
  br label %bb64
bb42:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb43, label %bb44
bb43:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 17}
  %t96 = icmp eq i64 %t94, 3
  store i1 %t96, ptr %l47, !tbaa !21
  br label %bb44
bb44:
  %t97 = load i1, ptr %l47, !tbaa !21
  br i1 %t97, label %bb45, label %bb46
bb45:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr { i64, [3 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", ptr }, ptr %t100, i32 0, i32 1
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l5, !tbaa !29
  br label %bb47
bb46:
  br label %bb59
bb47:
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = getelementptr %"compiler/typed:If", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = call i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %t107)
  store i1 %t109, ptr %l54
  br label %bb48
bb48:
  %t110 = load i1, ptr %l54, !tbaa !21
  br i1 %t110, label %bb49, label %bb50
bb49:
  %t111 = load ptr, ptr %l5, !tbaa !29
  %t113 = getelementptr %"compiler/typed:If", ptr %t111, i32 0, i32 2
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  br i1 %t116, label %bb51, label %bb52
bb50:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb58
bb51:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb57
bb52:
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t120 = getelementptr %"compiler/typed:If", ptr %t118, i32 0, i32 2
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = icmp eq ptr %t121, null
  br i1 %t123, label %bb53, label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_d17276f5db7535d5_c56bc4e021877641)
  unreachable
bb54:
  br label %bb55
bb55:
  %t125 = load ptr, ptr %l5, !tbaa !29
  %t127 = getelementptr %"compiler/typed:If", ptr %t125, i32 0, i32 2
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = call i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %t128)
  store i1 %t130, ptr %l65
  br label %bb56
bb56:
  %t131 = load i1, ptr %l65, !tbaa !21
  store i1 %t131, ptr %l59, !tbaa !21
  br label %bb57
bb57:
  %t132 = load i1, ptr %l59, !tbaa !21
  store i1 %t132, ptr %l55, !tbaa !21
  br label %bb58
bb58:
  %t133 = load i1, ptr %l55, !tbaa !21
  store i1 %t133, ptr %l6, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_3f14ee3b5ae87b07_81e960a9339250a3)
  unreachable
bb64:
  %t134 = load i1, ptr %l6, !tbaa !21
  store i1 %t134, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2ffree_2ewalker_2enewWalker(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
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
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, [2 x i64] }
  %l34 = alloca i32
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l44 = alloca ptr
  %l48 = alloca %"compiler/free:walker"
  %l87 = alloca ptr
  %l90 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l127 = alloca i64
  %l130 = alloca i64
  %l135 = alloca ptr
  %l137 = alloca ptr
  %l138 = alloca i64
  %l140 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l151 = alloca i64
  %l155 = alloca i64
  %l158 = alloca i64
  %l179 = alloca i32
  %l188 = alloca ptr
  %l191 = alloca i64
  %l192 = alloca i64
  %l198 = alloca { i64, ptr }
  %l207 = alloca { i64, ptr }
  %l212 = alloca i64
  %l215 = alloca i64
  %l233 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l243 = alloca i64
  %l246 = alloca i64
  %l267 = alloca ptr
  %l268 = alloca { i64, ptr }
  %l271 = alloca i64
  %l285 = alloca i64
  %l289 = alloca i64
  %l292 = alloca i64
  %l311 = alloca ptr
  %l315 = alloca i32
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  %t12 = alloca %"compiler/free:walker", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 6
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l44, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2ffree_3awalker_2ector(ptr %t12, ptr %v0, ptr %v0, ptr %t9, i64 %t10, i1 %t11)
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t12, i64 1624, i1 false)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 1624, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %l48, i64 1624, i1 false)
  %t18 = load ptr, ptr %l44, !tbaa !29
  %t19 = getelementptr %"compiler/free:Free", ptr %t18, i32 0, i32 6
  store ptr %t16, ptr %t19, !tbaa !29
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/free:Free", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_4f4bebe43ccb3632_b2d0ff49dc2f09b6)
  unreachable
bb6:
  br label %bb7
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/free:Free", ptr %t27, i32 0, i32 6
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l3, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = getelementptr %"compiler/free:walker", ptr %t32, i32 0, i32 1
  store i64 %t33, ptr %t36, !tbaa !24
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i1, ptr %l2, !tbaa !21
  %t41 = getelementptr %"compiler/free:walker", ptr %t37, i32 0, i32 2
  store i1 %t38, ptr %t41, !tbaa !21
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = getelementptr %"compiler/free:walker", ptr %t42, i32 0, i32 5
  store i1 false, ptr %t44, !tbaa !21
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = getelementptr %"compiler/free:walker", ptr %t45, i32 0, i32 6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t47)
  br label %bb8
bb8:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr %"compiler/free:walker", ptr %t49, i32 0, i32 7
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t51)
  br label %bb9
bb9:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t57 = getelementptr %"compiler/free:walker", ptr %t53, i32 0, i32 8
  store i32 %t54, ptr %t57, !tbaa !23
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/free:walker", ptr %t58, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %t60)
  br label %bb10
bb10:
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t64 = getelementptr %"compiler/free:walker", ptr %t62, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t64)
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = getelementptr %"compiler/free:walker", ptr %t66, i32 0, i32 40
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Hca84839cdf395382408370342cfafe64(ptr %v0, ptr %t68)
  br label %bb12
bb12:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/free:walker", ptr %t70, i32 0, i32 23
  store i64 0, ptr %t72, !tbaa !24
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t75 = getelementptr %"compiler/free:walker", ptr %t73, i32 0, i32 28
  store i64 0, ptr %t75, !tbaa !24
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = getelementptr %"compiler/free:walker", ptr %t76, i32 0, i32 29
  store i64 0, ptr %t78, !tbaa !24
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/free:walker", ptr %t79, i32 0, i32 30
  store i64 -1, ptr %t81, !tbaa !24
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t84 = getelementptr %"compiler/free:walker", ptr %t82, i32 0, i32 31
  store i64 -1, ptr %t84, !tbaa !24
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t87 = getelementptr %"compiler/free:walker", ptr %t85, i32 0, i32 33
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc1e7c6bbb3acbd34c924c83b2bb772b9(ptr %v0, ptr %t87)
  br label %bb13
bb13:
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t91 = getelementptr %"compiler/free:walker", ptr %t89, i32 0, i32 39
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t91)
  br label %bb14
bb14:
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = getelementptr %"compiler/free:walker", ptr %t93, i32 0, i32 34
  store i64 -1, ptr %t95, !tbaa !24
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/free:walker", ptr %t96, i32 0, i32 35
  store i64 -1, ptr %t98, !tbaa !24
  %t99 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereset(ptr %v0, ptr %t99)
  br label %bb15
bb15:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/free:Free", ptr %t101, i32 0, i32 1
  %t104 = load i64, ptr %l1, !tbaa !24
  %t107 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t103, i64 %t104)
  store ptr %t107, ptr %l87
  br label %bb16
bb16:
  %t108 = load ptr, ptr %l87, !tbaa !29
  store ptr %t108, ptr %l4, !tbaa !29
  %t109 = load ptr, ptr %l4, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Body", ptr %t109, i32 0, i32 7
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t111)
  store i64 %t113, ptr %l90
  br label %bb17
bb17:
  %t114 = load i64, ptr %l90, !tbaa !24
  store i64 %t114, ptr %l5, !tbaa !24
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t117 = getelementptr %"compiler/free:walker", ptr %t115, i32 0, i32 3
  %t118 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H2ad576503181bd1b8552368bfa2352a6(ptr %v0, ptr %t117, i64 %t118)
  br label %bb18
bb18:
  %t121 = load ptr, ptr %l3, !tbaa !29
  %t123 = getelementptr %"compiler/free:walker", ptr %t121, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t123)
  br label %bb19
bb19:
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t127 = getelementptr %"compiler/free:walker", ptr %t125, i32 0, i32 21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t127)
  br label %bb20
bb20:
  %t129 = load ptr, ptr %l3, !tbaa !29
  %t131 = getelementptr %"compiler/free:walker", ptr %t129, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t131)
  br label %bb21
bb21:
  store i64 0, ptr %l6, !tbaa !24
  %t133 = load i64, ptr %l5, !tbaa !24
  store i64 %t133, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l7, !tbaa !24
  %t136 = load i64, ptr %l6, !tbaa !24
  %t139 = icmp sgt i64 %t135, %t136
  br i1 %t139, label %bb22, label %bb23
bb22:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = icmp sgt i64 %t141, 0
  br i1 %t143, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb27
bb24:
  %t145 = load i64, ptr %l7, !tbaa !24
  %t146 = load i64, ptr %l6, !tbaa !24
  %t149 = sub i64 %t145, %t146
  %t150 = load i64, ptr %l8, !tbaa !24
  %t153 = add i64 %t149, %t150
  %t155 = sub i64 %t153, 1
  %t156 = load i64, ptr %l8, !tbaa !24
  %t159 = sdiv i64 %t155, %t156
  store i64 %t159, ptr %l107, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb26
bb26:
  %t161 = load i64, ptr %l107, !tbaa !24
  store i64 %t161, ptr %l104, !tbaa !24
  br label %bb27
bb27:
  %t162 = load i64, ptr %l104, !tbaa !24
  store i64 %t162, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s3
  %t163 = load i64, ptr %l10, !tbaa !24
  %t164 = load i64, ptr %l9, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb30:
  br label %bb31
bb31:
  %t171 = load i64, ptr %l6, !tbaa !24
  %t172 = load i64, ptr %l10, !tbaa !24
  %t173 = load i64, ptr %l8, !tbaa !24
  %t176 = mul i64 %t172, %t173
  %t179 = add i64 %t171, %t176
  store i64 %t179, ptr %l11, !tbaa !24
  %t181 = load ptr, ptr %l3, !tbaa !29
  %t183 = getelementptr %"compiler/free:walker", ptr %t181, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t183, i1 false)
  br label %bb32
bb32:
  %t185 = load i64, ptr %l11, !tbaa !24
  store i64 %t185, ptr %l127, !tbaa !24
  %t186 = load ptr, ptr %l3, !tbaa !29
  %t188 = getelementptr %"compiler/free:walker", ptr %t186, i32 0, i32 3
  %t190 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %t188)
  store i64 %t190, ptr %l130
  br label %bb33
bb33:
  %t191 = load i64, ptr %l127, !tbaa !24
  %t192 = load i64, ptr %l130, !tbaa !24
  %t193 = icmp slt i64 %t191, %t192
  br i1 %t193, label %bb34, label %bb35
bb34:
  %t195 = load ptr, ptr %l3, !tbaa !29
  %t197 = getelementptr %"compiler/free:walker", ptr %t195, i32 0, i32 3
  %t198 = load i64, ptr %l11, !tbaa !24
  %t201 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t197, i64 %t198)
  store ptr %t201, ptr %l135
  br label %bb36
bb35:
  %t202 = load ptr, ptr %l3, !tbaa !29
  %t204 = getelementptr %"compiler/free:walker", ptr %t202, i32 0, i32 3
  store ptr %t204, ptr %l137, !tbaa !29
  %t205 = ptrtoint ptr %v0 to i64
  store i64 %t205, ptr %l138, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t206, label %bb38, label %bb39
bb36:
  %t208 = load ptr, ptr %l135, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t208)
  br label %bb37
bb37:
  br label %bb42
bb38:
  %t209 = call ptr @__olang_region_make(ptr %v0)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l138, !tbaa !24
  br label %bb39
bb39:
  %t211 = load i64, ptr %l138
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t212, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t213, ptr %l140
  br label %bb40
bb40:
  %t214 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140
  %t215 = load i64, ptr %l138
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = call ptr @__olang_scope_alloc_a(ptr %t216, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %t217
  %t218 = load ptr, ptr %l137, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t218, ptr %t217)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t220 = load ptr, ptr %l3, !tbaa !29
  %t222 = getelementptr %"compiler/free:walker", ptr %t220, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t222, i64 0)
  br label %bb43
bb43:
  %t224 = load ptr, ptr %l3, !tbaa !29
  %t226 = getelementptr %"compiler/free:walker", ptr %t224, i32 0, i32 21
  store ptr %t226, ptr %l145, !tbaa !29
  %t227 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 0, i32 0)
  store %"compiler/source:Span" %t227, ptr %l146
  br label %bb44
bb44:
  %t228 = load ptr, ptr %l145, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l146
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t228, %"compiler/source:Span" %t229)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s3)
  br label %bb46
bb46:
  %t230 = load i64, ptr %l10, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l10, !tbaa !24
  br label %bb28
bb47:
  store i64 0, ptr %l12, !tbaa !24
  %t234 = load ptr, ptr %l4, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Body", ptr %t234, i32 0, i32 5
  %t238 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t236)
  store i64 %t238, ptr %l151
  br label %bb48
bb48:
  %t239 = load i64, ptr %l151, !tbaa !24
  store i64 %t239, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t240 = load i64, ptr %l13, !tbaa !24
  %t241 = load i64, ptr %l12, !tbaa !24
  %t244 = icmp sgt i64 %t240, %t241
  br i1 %t244, label %bb49, label %bb50
bb49:
  %t246 = load i64, ptr %l14, !tbaa !24
  %t248 = icmp sgt i64 %t246, 0
  br i1 %t248, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb54
bb51:
  %t250 = load i64, ptr %l13, !tbaa !24
  %t251 = load i64, ptr %l12, !tbaa !24
  %t254 = sub i64 %t250, %t251
  %t255 = load i64, ptr %l14, !tbaa !24
  %t258 = add i64 %t254, %t255
  %t260 = sub i64 %t258, 1
  %t261 = load i64, ptr %l14, !tbaa !24
  %t264 = sdiv i64 %t260, %t261
  store i64 %t264, ptr %l158, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l158, !tbaa !24
  br label %bb53
bb53:
  %t266 = load i64, ptr %l158, !tbaa !24
  store i64 %t266, ptr %l155, !tbaa !24
  br label %bb54
bb54:
  %t267 = load i64, ptr %l155, !tbaa !24
  store i64 %t267, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb55
bb55:
  %t268 = load i64, ptr %l16, !tbaa !24
  %t269 = load i64, ptr %l15, !tbaa !24
  %t272 = icmp slt i64 %t268, %t269
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb56, label %bb57
bb56:
  br label %bb65
bb57:
  br label %bb58
bb58:
  %t276 = load i64, ptr %l12, !tbaa !24
  %t277 = load i64, ptr %l16, !tbaa !24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = mul i64 %t277, %t278
  %t284 = add i64 %t276, %t281
  store i64 %t284, ptr %l17, !tbaa !24
  %t286 = load ptr, ptr %l4, !tbaa !29
  %t288 = getelementptr %"compiler/typed:Body", ptr %t286, i32 0, i32 5
  %t289 = load i64, ptr %l17, !tbaa !24
  %t292 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t288, i64 %t289)
  store i32 %t292, ptr %l179
  br label %bb59
bb59:
  %t293 = load i32, ptr %l179, !tbaa !23
  %t294 = sext i32 %t293 to i64
  store i64 %t294, ptr %l18, !tbaa !24
  %t296 = load ptr, ptr %l3, !tbaa !29
  %t298 = getelementptr %"compiler/free:walker", ptr %t296, i32 0, i32 6
  %t299 = load i64, ptr %l18, !tbaa !24
  %t300 = load i64, ptr %l17, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t298, i64 %t299, i64 %t300)
  br label %bb60
bb60:
  %t304 = load ptr, ptr %l3, !tbaa !29
  %t306 = getelementptr %"compiler/free:walker", ptr %t304, i32 0, i32 3
  %t307 = load i64, ptr %l18, !tbaa !24
  %t310 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t306, i64 %t307)
  store ptr %t310, ptr %l188
  br label %bb61
bb61:
  %t311 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t312 = load i64, ptr %l17, !tbaa !24
  %t315 = call i64 @compiler_2ffree_2eorig(i64 %t311, i64 %t312)
  store i64 %t315, ptr %l191
  br label %bb62
bb62:
  %t316 = load ptr, ptr %l188, !tbaa !29
  %t317 = load i64, ptr %l191, !tbaa !24
  %t318 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t316, i64 %t317)
  store i64 %t318, ptr %l192
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t319 = load i64, ptr %l16, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l16, !tbaa !24
  br label %bb55
bb65:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/free:Free", ptr %t323, i32 0, i32 62
  %t326 = load i64, ptr %l1, !tbaa !24
  %t329 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t325, i64 %t326)
  store { i64, ptr } %t329, ptr %l198
  br label %bb66
bb66:
  %t330 = load { i64, ptr }, ptr %l198, !tbaa !27
  store { i64, ptr } %t330, ptr %l19, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = load i64, ptr %l5, !tbaa !24
  %t336 = add i64 %t334, 1
  %t339 = icmp eq i64 %t333, %t336
  br i1 %t339, label %bb67, label %bb68
bb67:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/free:Free", ptr %t341, i32 0, i32 61
  %t344 = load i64, ptr %l1, !tbaa !24
  %t347 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t343, i64 %t344)
  store { i64, ptr } %t347, ptr %l207
  br label %bb69
bb68:
  br label %bb96
bb69:
  %t348 = load { i64, ptr }, ptr %l207, !tbaa !27
  store { i64, ptr } %t348, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t349 = load i64, ptr %l5, !tbaa !24
  store i64 %t349, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t351 = load i64, ptr %l22, !tbaa !24
  %t352 = load i64, ptr %l21, !tbaa !24
  %t355 = icmp sgt i64 %t351, %t352
  br i1 %t355, label %bb70, label %bb71
bb70:
  %t357 = load i64, ptr %l23, !tbaa !24
  %t359 = icmp sgt i64 %t357, 0
  br i1 %t359, label %bb72, label %bb73
bb71:
  store i64 0, ptr %l212, !tbaa !24
  br label %bb75
bb72:
  %t361 = load i64, ptr %l22, !tbaa !24
  %t362 = load i64, ptr %l21, !tbaa !24
  %t365 = sub i64 %t361, %t362
  %t366 = load i64, ptr %l23, !tbaa !24
  %t369 = add i64 %t365, %t366
  %t371 = sub i64 %t369, 1
  %t372 = load i64, ptr %l23, !tbaa !24
  %t375 = sdiv i64 %t371, %t372
  store i64 %t375, ptr %l215, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l215, !tbaa !24
  br label %bb74
bb74:
  %t377 = load i64, ptr %l215, !tbaa !24
  store i64 %t377, ptr %l212, !tbaa !24
  br label %bb75
bb75:
  %t378 = load i64, ptr %l212, !tbaa !24
  store i64 %t378, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb76
bb76:
  %t379 = load i64, ptr %l25, !tbaa !24
  %t380 = load i64, ptr %l24, !tbaa !24
  %t383 = icmp slt i64 %t379, %t380
  %t385 = xor i1 %t383, true
  br i1 %t385, label %bb77, label %bb78
bb77:
  br label %bb95
bb78:
  br label %bb79
bb79:
  %t387 = load i64, ptr %l21, !tbaa !24
  %t388 = load i64, ptr %l25, !tbaa !24
  %t389 = load i64, ptr %l23, !tbaa !24
  %t392 = mul i64 %t388, %t389
  %t395 = add i64 %t387, %t392
  store i64 %t395, ptr %l26, !tbaa !24
  %t397 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t397, ptr %l233, !tbaa !27
  %t398 = load i64, ptr %l26, !tbaa !24
  %t400 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i64, ptr %t401, i64 %t398
  %t403 = load i64, ptr %t402, !tbaa !34
  store i64 %t403, ptr %l27, !tbaa !24
  %t405 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t405, ptr %l236, !tbaa !27
  %t406 = load i64, ptr %l26, !tbaa !24
  %t408 = add i64 %t406, 1
  %t410 = getelementptr { i64, ptr }, ptr %l236, i32 0, i32 1
  %t411 = load ptr, ptr %t410, !tbaa !27
  %t412 = getelementptr i64, ptr %t411, i64 %t408
  %t413 = load i64, ptr %t412, !tbaa !34
  store i64 %t413, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t415 = load i64, ptr %l28, !tbaa !24
  %t416 = load i64, ptr %l27, !tbaa !24
  %t419 = icmp sgt i64 %t415, %t416
  br i1 %t419, label %bb80, label %bb81
bb80:
  %t421 = load i64, ptr %l29, !tbaa !24
  %t423 = icmp sgt i64 %t421, 0
  br i1 %t423, label %bb82, label %bb83
bb81:
  store i64 0, ptr %l243, !tbaa !24
  br label %bb85
bb82:
  %t425 = load i64, ptr %l28, !tbaa !24
  %t426 = load i64, ptr %l27, !tbaa !24
  %t429 = sub i64 %t425, %t426
  %t430 = load i64, ptr %l29, !tbaa !24
  %t433 = add i64 %t429, %t430
  %t435 = sub i64 %t433, 1
  %t436 = load i64, ptr %l29, !tbaa !24
  %t439 = sdiv i64 %t435, %t436
  store i64 %t439, ptr %l246, !tbaa !24
  br label %bb84
bb83:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb84
bb84:
  %t441 = load i64, ptr %l246, !tbaa !24
  store i64 %t441, ptr %l243, !tbaa !24
  br label %bb85
bb85:
  %t442 = load i64, ptr %l243, !tbaa !24
  store i64 %t442, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb86
bb86:
  %t443 = load i64, ptr %l31, !tbaa !24
  %t444 = load i64, ptr %l30, !tbaa !24
  %t447 = icmp slt i64 %t443, %t444
  %t449 = xor i1 %t447, true
  br i1 %t449, label %bb87, label %bb88
bb87:
  br label %bb93
bb88:
  br label %bb89
bb89:
  %t451 = load i64, ptr %l27, !tbaa !24
  %t452 = load i64, ptr %l31, !tbaa !24
  %t453 = load i64, ptr %l29, !tbaa !24
  %t456 = mul i64 %t452, %t453
  %t459 = add i64 %t451, %t456
  store i64 %t459, ptr %l32, !tbaa !24
  %t461 = load ptr, ptr %l3, !tbaa !29
  %t463 = getelementptr %"compiler/free:walker", ptr %t461, i32 0, i32 3
  %t464 = load i64, ptr %l26, !tbaa !24
  %t467 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t463, i64 %t464)
  store ptr %t467, ptr %l267
  br label %bb90
bb90:
  %t468 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t468, ptr %l268, !tbaa !27
  %t469 = load i64, ptr %l32, !tbaa !24
  %t471 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = getelementptr i64, ptr %t472, i64 %t469
  %t474 = load i64, ptr %t473, !tbaa !34
  %t475 = load ptr, ptr %l267, !tbaa !29
  %t477 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t475, i64 %t474)
  store i64 %t477, ptr %l271
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t478 = load i64, ptr %l31, !tbaa !24
  %t480 = add i64 %t478, 1
  store i64 %t480, ptr %l31, !tbaa !24
  br label %bb86
bb93:
  br label %bb94
bb94:
  %t482 = load i64, ptr %l25, !tbaa !24
  %t484 = add i64 %t482, 1
  store i64 %t484, ptr %l25, !tbaa !24
  br label %bb76
bb95:
  br label %bb96
bb96:
  %t486 = load ptr, ptr %l4, !tbaa !29
  %t488 = getelementptr %"compiler/typed:Body", ptr %t486, i32 0, i32 1
  %t489 = load { i64, [2 x i64] }, ptr %t488
  store { i64, [2 x i64] } %t489, ptr %l33
  %t491 = load { i64, [2 x i64] }, ptr %l33
  %t493 = extractvalue { i64, [2 x i64] } %t491, 0
  %t494 = icmp eq i64 %t493, 1
  br i1 %t494, label %bb97, label %bb98
bb97:
  %t496 = getelementptr { i64, [2 x i64] }, ptr %l33, i32 0, i32 1
  %t497 = getelementptr { i32, i32 }, ptr %t496, i32 0, i32 0
  %t498 = load i32, ptr %t497
  store i32 %t498, ptr %l34, !tbaa !23
  br label %bb99
bb98:
  br label %bb115
bb99:
  %t500 = load ptr, ptr %l3, !tbaa !29
  %t501 = load i32, ptr %l34, !tbaa !23
  %t504 = getelementptr %"compiler/free:walker", ptr %t500, i32 0, i32 8
  store i32 %t501, ptr %t504, !tbaa !23
  store i64 0, ptr %l35, !tbaa !24
  %t505 = load ptr, ptr %l4, !tbaa !29
  %t507 = getelementptr %"compiler/typed:Body", ptr %t505, i32 0, i32 10
  %t509 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t507)
  store i64 %t509, ptr %l285
  br label %bb100
bb100:
  %t510 = load i64, ptr %l285, !tbaa !24
  store i64 %t510, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t511 = load i64, ptr %l36, !tbaa !24
  %t512 = load i64, ptr %l35, !tbaa !24
  %t515 = icmp sgt i64 %t511, %t512
  br i1 %t515, label %bb101, label %bb102
bb101:
  %t517 = load i64, ptr %l37, !tbaa !24
  %t519 = icmp sgt i64 %t517, 0
  br i1 %t519, label %bb103, label %bb104
bb102:
  store i64 0, ptr %l289, !tbaa !24
  br label %bb106
bb103:
  %t521 = load i64, ptr %l36, !tbaa !24
  %t522 = load i64, ptr %l35, !tbaa !24
  %t525 = sub i64 %t521, %t522
  %t526 = load i64, ptr %l37, !tbaa !24
  %t529 = add i64 %t525, %t526
  %t531 = sub i64 %t529, 1
  %t532 = load i64, ptr %l37, !tbaa !24
  %t535 = sdiv i64 %t531, %t532
  store i64 %t535, ptr %l292, !tbaa !24
  br label %bb105
bb104:
  store i64 0, ptr %l292, !tbaa !24
  br label %bb105
bb105:
  %t537 = load i64, ptr %l292, !tbaa !24
  store i64 %t537, ptr %l289, !tbaa !24
  br label %bb106
bb106:
  %t538 = load i64, ptr %l289, !tbaa !24
  store i64 %t538, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb107
bb107:
  %t539 = load i64, ptr %l39, !tbaa !24
  %t540 = load i64, ptr %l38, !tbaa !24
  %t543 = icmp slt i64 %t539, %t540
  %t545 = xor i1 %t543, true
  br i1 %t545, label %bb108, label %bb109
bb108:
  br label %bb114
bb109:
  br label %bb110
bb110:
  %t547 = load i64, ptr %l35, !tbaa !24
  %t548 = load i64, ptr %l39, !tbaa !24
  %t549 = load i64, ptr %l37, !tbaa !24
  %t552 = mul i64 %t548, %t549
  %t555 = add i64 %t547, %t552
  store i64 %t555, ptr %l40, !tbaa !24
  %t557 = load ptr, ptr %l3, !tbaa !29
  %t559 = getelementptr %"compiler/free:walker", ptr %t557, i32 0, i32 7
  store ptr %t559, ptr %l311, !tbaa !29
  %t560 = load ptr, ptr %l4, !tbaa !29
  %t562 = getelementptr %"compiler/typed:Body", ptr %t560, i32 0, i32 10
  %t563 = load i64, ptr %l40, !tbaa !24
  %t566 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t562, i64 %t563)
  store i32 %t566, ptr %l315
  br label %bb111
bb111:
  %t567 = load i32, ptr %l315, !tbaa !23
  %t568 = sext i32 %t567 to i64
  %t569 = load i64, ptr %l40, !tbaa !24
  %t570 = load ptr, ptr %l311, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t570, i64 %t568, i64 %t569)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t573 = load i64, ptr %l39, !tbaa !24
  %t575 = add i64 %t573, 1
  store i64 %t575, ptr %l39, !tbaa !24
  br label %bb107
bb114:
  br label %bb120
bb115:
  br i1 true, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb120
bb119:
  call void @__olang_check_failed(ptr @olang_loc_47453ae46be9b210_439bef1cf54c0f44)
  unreachable
bb120:
  %t577 = load ptr, ptr %l3, !tbaa !29
  store ptr %t577, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/free:retire" @compiler_2ffree_3aretire_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %rv = alloca %"compiler/free:retire"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/free:retire" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/free:retire" %t8, %"compiler/source:Span" %a1, 1
  %t12 = insertvalue %"compiler/free:retire" %t10, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, 2
  store %"compiler/free:retire" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:retire", ptr %rv
  ret %"compiler/free:retire" %rr
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d3 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c": note: an existing one is stored into an owning place here, which another may still hold" }>, align 8
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
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
define internal i1 @olang_lambda_4(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/free:store"
  %l4 = alloca %"compiler/free:store"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l10 = alloca %"compiler/free:store"
  %l14 = alloca %"compiler/free:store"
  %l23 = alloca i1
  %l32 = alloca %"compiler/source:Span"
  %l36 = alloca %"compiler/source:Span"
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 46
  %t4 = load i64, ptr %l0, !tbaa !24
  %t7 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %vc0, ptr %vc0, ptr %t3, i64 %t4)
  store %"compiler/free:store" %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load %"compiler/free:store", ptr %l10
  store %"compiler/free:store" %t8, ptr %l3
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/free:Free", ptr %t9, i32 0, i32 46
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %vc0, ptr %vc0, ptr %t11, i64 %t12)
  store %"compiler/free:store" %t15, ptr %l14
  br label %bb2
bb2:
  %t16 = load %"compiler/free:store", ptr %l14
  store %"compiler/free:store" %t16, ptr %l4
  %t17 = getelementptr %"compiler/free:store", ptr %l3, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = icmp ne i64 %t18, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = getelementptr %"compiler/free:store", ptr %l3, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t31 = icmp slt i64 %t26, %t28
  store i1 %t31, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t33 = getelementptr %"compiler/free:store", ptr %l3, i32 0, i32 7
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb8
bb7:
  %t38 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 7
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = icmp eq ptr %t39, null
  store i1 %t41, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l23, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t44 = load i64, ptr %l0, !tbaa !24
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  store i1 %t48, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t50 = getelementptr %"compiler/free:store", ptr %l3, i32 0, i32 7
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_239d88d441cb182b_2c8019ca300f83c7)
  unreachable
bb13:
  br label %bb14
bb14:
  %t55 = getelementptr %"compiler/free:store", ptr %l3, i32 0, i32 7
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %vc0, ptr %t56)
  store %"compiler/source:Span" %t58, ptr %l32
  br label %bb15
bb15:
  %t59 = load %"compiler/source:Span", ptr %l32
  store %"compiler/source:Span" %t59, ptr %l5
  %t60 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 7
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = icmp eq ptr %t61, null
  br i1 %t63, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_239d88d441cb182b_2c8019ca300f83c7)
  unreachable
bb17:
  br label %bb18
bb18:
  %t65 = getelementptr %"compiler/free:store", ptr %l4, i32 0, i32 7
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %vc0, ptr %t66)
  store %"compiler/source:Span" %t68, ptr %l36
  br label %bb19
bb19:
  %t69 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t69, ptr %l6
  %t70 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t72 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t73 = load i32, ptr %t72, !tbaa !23
  %t76 = icmp ne i32 %t71, %t73
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t78 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t79 = load i32, ptr %t78, !tbaa !23
  %t80 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t84 = icmp slt i32 %t79, %t81
  store i1 %t84, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t86 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 1
  %t89 = load i32, ptr %t88, !tbaa !23
  %t92 = icmp ne i32 %t87, %t89
  br i1 %t92, label %bb23, label %bb24
bb23:
  %t94 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t95 = load i32, ptr %t94, !tbaa !23
  %t96 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 1
  %t97 = load i32, ptr %t96, !tbaa !23
  %t100 = icmp sgt i32 %t95, %t97
  store i1 %t100, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t102 = load i64, ptr %l0, !tbaa !24
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  store i1 %t106, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d5 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"free: registered " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_errpay_pop()
@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ffree_3areason_2e3 = weak hidden constant i1 false
@.d7 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"its new value is existing storage: '" }>, align 8
@.d8 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"'; give it new storage - a constructor call, '$...', 'Copy()'" }>, align 8
@.d9 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"its new value is a copy holding other owners too: '" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d11 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"its new value is existing storage a copy shares: '" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d14 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"its new value is moved out of another place" }>, align 8
@.d15 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"its new value has a default" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"its new value is existing storage: '" }>, align 8
@.d18 = private constant <{ i64, [61 x i8] }> <{ i64 0, [61 x i8] c"'; give it new storage - a constructor call, '$...', 'Copy()'" }>, align 8
@.d19 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"its elements may hold storage built with it: '" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d21 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"its new value is kept in another place too" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eMovBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\40\00\00\00\00" }>, align 8
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_3a516a19293feeda_7f77204653e04cce = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0)
declare %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edeclaredHere(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H2bb64fd79dc59453b9269b2696d6897f(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H69db31e35a4e973edf5f90026da8d45a(ptr %v0, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, ptr %a8)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:store" %a1)
@G_2ecompiler_2ffree_2eSFail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hdc5ed4f57090b33f7a83fc7b2b1f05b3(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H874ab6ecb906549bc54547c0392d06e9(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_bb5f0dfb007b1fe9_f99f55ed89f1afa5 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandleCand(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2enewPlace(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3, i32 %a4, i1 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
@olang_loc_4607beb6ac2e2918_142733ac3129574 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
@olang_loc_9eead29ed0644a31_3adf6a8ef4d2d8d5 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_4e10a6e17fa9b999_b873e8c9bb06b2fd = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eVarRels(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erelsFit(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a4118a366f7ca1d5_524409770a0878b9 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_5c44d6b41b035ab1_55f561a861d07b6d = external constant [0 x i8]
@olang_loc_3bfd4abaed3d7178_ecedd42d9535955c = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %a0)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_18f4ed1d8e27b1ae_93487f3f650a5572 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2etextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eValueParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@G_2ecompiler_2ffree_2eLCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eRemovalNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaresCopy(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b71f5ffe7a4b5626_fc1be7c1ddcacd52 = external constant [0 x i8]
@olang_loc_80901eaab4a643b4_757281eb5f4291b0 = external constant [0 x i8]
@G_2ecompiler_2ffree_2eMustNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_6cb79447255537d7_e828faabaec907d3 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ffree_2eSFresh = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@olang_loc_b0d58e2b07420cd2_669637d27520b416 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedDest(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [2 x i64] } %a3)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, [2 x i64] } %a4, i1 %a5, i1 %a6)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewriteFeedCalls(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eLen_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %a0)
declare %"compiler/free:orStore" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eAt_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eLen_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %a0)
declare %"compiler/free:orCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eAt_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetPassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2, { i64, [2 x i64] } %a3)
declare void @compiler_2ffree_2ecompiler_2ffree_3amustW_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3ed6c54977104fdc_6fa493e2929cd018 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eViewsMoved(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewCtor(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_68d09f9a6af90acb_8af3bb3c4e4b4237 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
@olang_loc_7f12d3772dd0a929_45b952e679e83a85 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0)
declare %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ffree_2eRMade = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eownCopySite(ptr %v0, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitLeaf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4, i64 %a5)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eAnyPlace = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5)
declare %"compiler/source:Span" @compiler_2ffree_2ereceiverSpan(ptr %v0, ptr %a0)
@G_2ecompiler_2ffree_2eSOk = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSMove = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@olang_loc_7676aaa4af173342_5bef0e3278c42ba6 = external constant [0 x i8]
@olang_loc_a47d70a6f4791f29_9aa1d88f57dbf58d = external constant [0 x i8]
declare { i64, { i64, ptr } } @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshSite(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_c3165b793781225b_53a43f46ee99ca6f = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplainElems(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2emovesOnly(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ehas(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexclusive(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eloopAround(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hcb8ba31809995dcae45f5acc6cf39f88(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2eokind(i64 %a0)
@G_2ecompiler_2ffree_2eONew = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_311feee871305b59_d38294057dde4ced = external constant [0 x i8]
@olang_loc_421add8d063ee188_aab923ea260c413c = external constant [0 x i8]
declare i1 @compiler_2ffree_2epureBase(ptr %v0, ptr %a0)
@olang_loc_34bfc259355dec67_8a2d14d061fee643 = external constant [0 x i8]
@olang_loc_806a74b5c91de186_4e306eb4964e9ec2 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreAs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6, i1 %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2ffree_2eOPl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOMov = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2eoval(i64 %a0)
@olang_loc_546be3fdfb2e7861_5a4791e17fa5075d = external constant [0 x i8]
@olang_loc_5891e56eddc46c99_f944b0e713971375 = external constant [0 x i8]
declare ptr @compiler_2ffree_2efindCallStmt(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ereachedThrough(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ffree_2epureIndex(ptr %v0, ptr %a0)
@olang_loc_40628693553637f3_9a0aaf33c7b3625f = external constant [0 x i8]
@olang_loc_c5daa4e55685553d_6576efec0cd8f099 = external constant [0 x i8]
declare i1 @compiler_2ffree_2eyieldsMoved(ptr %v0, ptr %a0)
@olang_loc_d17276f5db7535d5_c56bc4e021877641 = external constant [0 x i8]
@olang_loc_3f14ee3b5ae87b07_81e960a9339250a3 = external constant [0 x i8]
declare void @compiler_2ffree_3awalker_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_4f4bebe43ccb3632_b2d0ff49dc2f09b6 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Hca84839cdf395382408370342cfafe64(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc1e7c6bbb3acbd34c924c83b2bb772b9(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H2ad576503181bd1b8552368bfa2352a6(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eOPar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2eorig(i64 %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2eAt_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_47453ae46be9b210_439bef1cf54c0f44 = external constant [0 x i8]
@olang_loc_239d88d441cb182b_2c8019ca300f83c7 = external constant [0 x i8]

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
