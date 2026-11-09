source_filename = "compiler_free-4.quick.ll"
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
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:feedCall" = type { i64, i64, i64, i64, i64, i1 }
%"compiler/free:feed" = type { i64, i64, i64, i64, { i64, [2 x i64] }, { i64, [2 x i64] }, i64 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/free:mustW" = type { ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/free:walker" = type { ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
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
  br label %bb9
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
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t24 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %t18)
  store i64 %t24, ptr %l18
  br label %bb7
bb7:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t27 = add i64 %t25, %t26
  store i64 %t27, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l4, !tbaa !24
  br label %bb1
bb9:
  %t33 = load i64, ptr %l2, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eDecide(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i64 %a2) #0 {
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
  %l10 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
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
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca i64
  %l88 = alloca i64
  %l90 = alloca i64
  %l91 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l128 = alloca i64
  %l133 = alloca ptr
  %l137 = alloca i1
  %l140 = alloca i1
  %l145 = alloca ptr
  %l148 = alloca i1
  %l150 = alloca ptr
  %l153 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i64
  %l158 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca ptr
  %l168 = alloca i64
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca ptr
  %l174 = alloca i64
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca ptr
  %l180 = alloca i64
  %l182 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l185 = alloca ptr
  %l186 = alloca i64
  %l188 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca ptr
  %l192 = alloca i64
  %l194 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l208 = alloca ptr
  %l215 = alloca ptr
  %l219 = alloca i64
  %l220 = alloca ptr
  %l223 = alloca i1
  %l226 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca i64
  %l234 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l237 = alloca ptr
  %l238 = alloca i64
  %l240 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l243 = alloca ptr
  %l244 = alloca i64
  %l246 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l249 = alloca ptr
  %l250 = alloca i64
  %l252 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l259 = alloca ptr
  %l260 = alloca i64
  %l266 = alloca ptr
  %l267 = alloca i64
  %l284 = alloca i64
  %l287 = alloca i64
  %l310 = alloca ptr
  %l315 = alloca ptr
  %l319 = alloca ptr
  %l329 = alloca i64
  %l335 = alloca i64
  %l338 = alloca i64
  %l359 = alloca ptr
  %l368 = alloca i64
  %l371 = alloca { i64, ptr }
  %l376 = alloca i64
  %l379 = alloca { i64, ptr }
  %l381 = alloca i64
  %l387 = alloca i64
  %l390 = alloca i64
  %l412 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l417 = alloca i64
  %l420 = alloca i64
  %l438 = alloca ptr
  %l439 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l446 = alloca i64
  %l449 = alloca i64
  %l470 = alloca { i64, ptr }
  %l478 = alloca { i64, ptr }
  %l483 = alloca i1
  %l489 = alloca ptr
  %l495 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l496 = alloca i64
  %l506 = alloca { i64, ptr }
  %l513 = alloca i64
  %l515 = alloca i64
  %l520 = alloca i64
  %l532 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l534 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l536 = alloca i64
  %l538 = alloca i64
  %l543 = alloca i64
  %l554 = alloca i64
  %l555 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l556 = alloca i64
  %l566 = alloca { i64, ptr }
  %l573 = alloca i64
  %l575 = alloca i64
  %l580 = alloca i64
  %l593 = alloca ptr
  %l594 = alloca i64
  %l595 = alloca ptr
  %l596 = alloca i64
  %l599 = alloca i64
  %l602 = alloca ptr
  %l603 = alloca i64
  %l607 = alloca i64
  %l618 = alloca i64
  %l621 = alloca i64
  %l624 = alloca i64
  %l639 = alloca i32
  %l641 = alloca i1
  %l648 = alloca i64
  %l651 = alloca i64
  %l672 = alloca ptr
  %l673 = alloca i64
  %l675 = alloca i1
  %l679 = alloca i1
  %l682 = alloca i1
  %l683 = alloca i1
  %l686 = alloca i1
  %l691 = alloca i1
  %l694 = alloca ptr
  %l698 = alloca ptr
  %l699 = alloca i64
  %l704 = alloca { i64, ptr }
  %l708 = alloca ptr
  %l712 = alloca ptr
  %l714 = alloca i64
  %l718 = alloca ptr
  %l722 = alloca { i64, ptr }
  %l725 = alloca i32
  %l727 = alloca i1
  %l732 = alloca i64
  %l737 = alloca i64
  %l740 = alloca i64
  %l762 = alloca i64
  %l763 = alloca ptr
  %l765 = alloca i1
  %l771 = alloca i64
  %l777 = alloca i64
  %l780 = alloca i64
  %l783 = alloca i64
  %l790 = alloca i32
  %l792 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s69 = alloca %olang.scope
  %t895 = alloca i64
  %t1033 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l92, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l93
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %l93)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l95
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  %t6 = load ptr, ptr %l92, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t7
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = getelementptr %"compiler/free:Free", ptr %t8, i32 0, i32 7
  store i64 %t9, ptr %t12, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:Free", ptr %t13, i32 0, i32 1
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l100
  br label %bb2
bb2:
  %t18 = load i64, ptr %l100, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb8
bb5:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l108, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l108, !tbaa !24
  store i64 %t47, ptr %l105, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l105, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  br label %bb113
bb11:
  br label %bb12
bb12:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l9, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l128
  br label %bb13
bb13:
  %t72 = load i64, ptr %l128, !tbaa !24
  store i64 %t72, ptr %l10, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/free:Free", ptr %t73, i32 0, i32 21
  %t76 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  br label %bb14
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/free:Free", ptr %t79, i32 0, i32 22
  store ptr %t81, ptr %l133, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/free:Free", ptr %t82, i32 0, i32 8
  %t85 = load i1, ptr %t84, !tbaa !21
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb15, label %bb16
bb15:
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = icmp eq i64 %t89, -3
  br i1 %t91, label %bb17, label %bb18
bb16:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb20
bb17:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb19
bb18:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l2, !tbaa !24
  %t97 = icmp eq i64 %t93, %t94
  store i1 %t97, ptr %l140, !tbaa !21
  br label %bb19
bb19:
  %t99 = load i1, ptr %l140, !tbaa !21
  store i1 %t99, ptr %l137, !tbaa !21
  br label %bb20
bb20:
  %t100 = load ptr, ptr %l133, !tbaa !29
  %t101 = load i1, ptr %l137, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t100, i1 %t101)
  br label %bb21
bb21:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/free:Free", ptr %t102, i32 0, i32 23
  store ptr %t104, ptr %l145, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownCode(ptr %v0, ptr %t105, i64 %t106)
  store i1 %t109, ptr %l148
  br label %bb22
bb22:
  %t110 = load ptr, ptr %l145, !tbaa !29
  %t111 = load i1, ptr %l148, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t110, i1 %t111)
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/free:Free", ptr %t112, i32 0, i32 27
  store ptr %t114, ptr %l150, !tbaa !29
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i64, ptr %l9, !tbaa !24
  %t119 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2epreludeCode(ptr %v0, ptr %t115, i64 %t116)
  store i1 %t119, ptr %l153
  br label %bb24
bb24:
  %t120 = load ptr, ptr %l150, !tbaa !29
  %t121 = load i1, ptr %l153, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t120, i1 %t121)
  br label %bb25
bb25:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/free:Free", ptr %t122, i32 0, i32 28
  store ptr %t124, ptr %l155, !tbaa !29
  %t125 = ptrtoint ptr %v0 to i64
  store i64 %t125, ptr %l156, !tbaa !24
  %t126 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t126, label %bb26, label %bb27
bb26:
  %t128 = call ptr @__olang_region_make(ptr %v0)
  %t129 = ptrtoint ptr %t128 to i64
  store i64 %t129, ptr %l156, !tbaa !24
  br label %bb27
bb27:
  %t130 = load i64, ptr %l156
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t131, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l158
  br label %bb28
bb28:
  %t133 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l158
  %t134 = load i64, ptr %l156
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call ptr @__olang_scope_alloc_a(ptr %t135, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %t136
  %t137 = load ptr, ptr %l155, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t137, ptr %t136)
  br label %bb29
bb29:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/free:Free", ptr %t139, i32 0, i32 29
  store ptr %t141, ptr %l161, !tbaa !29
  %t142 = ptrtoint ptr %v0 to i64
  store i64 %t142, ptr %l162, !tbaa !24
  %t143 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = call ptr @__olang_region_make(ptr %v0)
  %t146 = ptrtoint ptr %t145 to i64
  store i64 %t146, ptr %l162, !tbaa !24
  br label %bb31
bb31:
  %t147 = load i64, ptr %l162
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t148, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %l164
  br label %bb32
bb32:
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l164
  %t151 = load i64, ptr %l162
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call ptr @__olang_scope_alloc_a(ptr %t152, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t153
  %t154 = load ptr, ptr %l161, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t154, ptr %t153)
  br label %bb33
bb33:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/free:Free", ptr %t156, i32 0, i32 30
  store ptr %t158, ptr %l167, !tbaa !29
  %t159 = ptrtoint ptr %v0 to i64
  store i64 %t159, ptr %l168, !tbaa !24
  %t160 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t160, label %bb34, label %bb35
bb34:
  %t162 = call ptr @__olang_region_make(ptr %v0)
  %t163 = ptrtoint ptr %t162 to i64
  store i64 %t163, ptr %l168, !tbaa !24
  br label %bb35
bb35:
  %t164 = load i64, ptr %l168
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t165, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %l170
  br label %bb36
bb36:
  %t167 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  %t168 = load i64, ptr %l168
  %t169 = inttoptr i64 %t168 to ptr
  %t170 = call ptr @__olang_scope_alloc_a(ptr %t169, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t167, ptr %t170
  %t171 = load ptr, ptr %l167, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t171, ptr %t170)
  br label %bb37
bb37:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/free:Free", ptr %t173, i32 0, i32 31
  store ptr %t175, ptr %l173, !tbaa !29
  %t176 = ptrtoint ptr %v0 to i64
  store i64 %t176, ptr %l174, !tbaa !24
  %t177 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t177, label %bb38, label %bb39
bb38:
  %t179 = call ptr @__olang_region_make(ptr %v0)
  %t180 = ptrtoint ptr %t179 to i64
  store i64 %t180, ptr %l174, !tbaa !24
  br label %bb39
bb39:
  %t181 = load i64, ptr %l174
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t182, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183, ptr %l176
  br label %bb40
bb40:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  %t185 = load i64, ptr %l174
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = call ptr @__olang_scope_alloc_a(ptr %t186, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t187
  %t188 = load ptr, ptr %l173, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t188, ptr %t187)
  br label %bb41
bb41:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/free:Free", ptr %t190, i32 0, i32 32
  store ptr %t192, ptr %l179, !tbaa !29
  %t193 = ptrtoint ptr %v0 to i64
  store i64 %t193, ptr %l180, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t194, label %bb42, label %bb43
bb42:
  %t196 = call ptr @__olang_region_make(ptr %v0)
  %t197 = ptrtoint ptr %t196 to i64
  store i64 %t197, ptr %l180, !tbaa !24
  br label %bb43
bb43:
  %t198 = load i64, ptr %l180
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t199, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l182
  br label %bb44
bb44:
  %t201 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l182
  %t202 = load i64, ptr %l180
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = call ptr @__olang_scope_alloc_a(ptr %t203, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t201, ptr %t204
  %t205 = load ptr, ptr %l179, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t205, ptr %t204)
  br label %bb45
bb45:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/free:Free", ptr %t207, i32 0, i32 33
  store ptr %t209, ptr %l185, !tbaa !29
  %t210 = ptrtoint ptr %v0 to i64
  store i64 %t210, ptr %l186, !tbaa !24
  %t211 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t211, label %bb46, label %bb47
bb46:
  %t213 = call ptr @__olang_region_make(ptr %v0)
  %t214 = ptrtoint ptr %t213 to i64
  store i64 %t214, ptr %l186, !tbaa !24
  br label %bb47
bb47:
  %t215 = load i64, ptr %l186
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t216, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %l188
  br label %bb48
bb48:
  %t218 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188
  %t219 = load i64, ptr %l186
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = call ptr @__olang_scope_alloc_a(ptr %t220, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %t221
  %t222 = load ptr, ptr %l185, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t222, ptr %t221)
  br label %bb49
bb49:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/free:Free", ptr %t224, i32 0, i32 34
  store ptr %t226, ptr %l191, !tbaa !29
  %t227 = ptrtoint ptr %v0 to i64
  store i64 %t227, ptr %l192, !tbaa !24
  %t228 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t228, label %bb50, label %bb51
bb50:
  %t230 = call ptr @__olang_region_make(ptr %v0)
  %t231 = ptrtoint ptr %t230 to i64
  store i64 %t231, ptr %l192, !tbaa !24
  br label %bb51
bb51:
  %t232 = load i64, ptr %l192
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t233, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l194
  br label %bb52
bb52:
  %t235 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l194
  %t236 = load i64, ptr %l192
  %t237 = inttoptr i64 %t236 to ptr
  %t238 = call ptr @__olang_scope_alloc_a(ptr %t237, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t235, ptr %t238
  %t239 = load ptr, ptr %l191, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t239, ptr %t238)
  br label %bb53
bb53:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/free:Free", ptr %t241, i32 0, i32 35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t243, i1 false)
  br label %bb54
bb54:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/free:Free", ptr %t245, i32 0, i32 36
  %t248 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t247, i64 %t248)
  br label %bb55
bb55:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/free:Free", ptr %t251, i32 0, i32 37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t253, i1 true)
  br label %bb56
bb56:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/free:Free", ptr %t255, i32 0, i32 38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t257, i1 false)
  br label %bb57
bb57:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/free:Free", ptr %t259, i32 0, i32 1
  %t262 = load i64, ptr %l9, !tbaa !24
  %t265 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t261, i64 %t262)
  store ptr %t265, ptr %l208
  br label %bb58
bb58:
  %t266 = load ptr, ptr %l208, !tbaa !29
  %t268 = getelementptr %"compiler/typed:Body", ptr %t266, i32 0, i32 1
  %t269 = load { i64, [2 x i64] }, ptr %t268
  store { i64, [2 x i64] } %t269, ptr %l11
  %t271 = load { i64, [2 x i64] }, ptr %l11
  %t273 = extractvalue { i64, [2 x i64] } %t271, 0
  %t274 = icmp eq i64 %t273, 0
  br i1 %t274, label %bb59, label %bb60
bb59:
  %t276 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t277 = getelementptr { i64 }, ptr %t276, i32 0, i32 0
  %t278 = load i64, ptr %t277
  store i64 %t278, ptr %l12, !tbaa !24
  br label %bb61
bb60:
  br label %bb72
bb61:
  store %olang.scope zeroinitializer, ptr %s3
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/free:Free", ptr %t280, i32 0, i32 0
  %t283 = load ptr, ptr %t282, !tbaa !29
  store ptr %t283, ptr %l215, !tbaa !29
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/free:Free", ptr %t284, i32 0, i32 0
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t288 = load i64, ptr %l12, !tbaa !24
  %t291 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t287, i64 %t288)
  store i64 %t291, ptr %l219
  br label %bb62
bb62:
  %t292 = load ptr, ptr %l215, !tbaa !29
  %t293 = load i64, ptr %l219, !tbaa !24
  %t294 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s3, ptr %t292, i64 %t293)
  store ptr %t294, ptr %l220
  br label %bb63
bb63:
  %t295 = load ptr, ptr %l220, !tbaa !29
  %t297 = getelementptr %"compiler/ast:Func", ptr %t295, i32 0, i32 7
  %t298 = load i1, ptr %t297, !tbaa !21
  br i1 %t298, label %bb64, label %bb65
bb64:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load i64, ptr %l12, !tbaa !24
  %t304 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandedToC(ptr %v0, ptr %t300, i64 %t301)
  store i1 %t304, ptr %l226
  br label %bb66
bb65:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb67
bb66:
  %t305 = load i1, ptr %l226, !tbaa !21
  store i1 %t305, ptr %l223, !tbaa !21
  br label %bb67
bb67:
  %t306 = load i1, ptr %l223, !tbaa !21
  br i1 %t306, label %bb68, label %bb69
bb68:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/free:Free", ptr %t307, i32 0, i32 39
  %t310 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t309, i64 %t310)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s3)
  br label %bb77
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_38e68c2f90f7ff92_433845456bb6222e)
  unreachable
bb77:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/free:Free", ptr %t313, i32 0, i32 57
  store ptr %t315, ptr %l231, !tbaa !29
  %t316 = ptrtoint ptr %v0 to i64
  store i64 %t316, ptr %l232, !tbaa !24
  %t317 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t317, label %bb78, label %bb79
bb78:
  %t319 = call ptr @__olang_region_make(ptr %v0)
  %t320 = ptrtoint ptr %t319 to i64
  store i64 %t320, ptr %l232, !tbaa !24
  br label %bb79
bb79:
  %t321 = load i64, ptr %l232
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t322, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l234
  br label %bb80
bb80:
  %t324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l234
  %t325 = load i64, ptr %l232
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = call ptr @__olang_scope_alloc_a(ptr %t326, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %t327
  %t328 = load ptr, ptr %l231, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t328, ptr %t327)
  br label %bb81
bb81:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/free:Free", ptr %t330, i32 0, i32 58
  store ptr %t332, ptr %l237, !tbaa !29
  %t333 = ptrtoint ptr %v0 to i64
  store i64 %t333, ptr %l238, !tbaa !24
  %t334 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t334, label %bb82, label %bb83
bb82:
  %t336 = call ptr @__olang_region_make(ptr %v0)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l238, !tbaa !24
  br label %bb83
bb83:
  %t338 = load i64, ptr %l238
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t339, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t340, ptr %l240
  br label %bb84
bb84:
  %t341 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l240
  %t342 = load i64, ptr %l238
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = call ptr @__olang_scope_alloc_a(ptr %t343, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t341, ptr %t344
  %t345 = load ptr, ptr %l237, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t345, ptr %t344)
  br label %bb85
bb85:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/free:Free", ptr %t347, i32 0, i32 59
  store ptr %t349, ptr %l243, !tbaa !29
  %t350 = ptrtoint ptr %v0 to i64
  store i64 %t350, ptr %l244, !tbaa !24
  %t351 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1
  br i1 %t351, label %bb86, label %bb87
bb86:
  %t353 = call ptr @__olang_region_make(ptr %v0)
  %t354 = ptrtoint ptr %t353 to i64
  store i64 %t354, ptr %l244, !tbaa !24
  br label %bb87
bb87:
  %t355 = load i64, ptr %l244
  %t356 = inttoptr i64 %t355 to ptr
  %t357 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t356, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t357, ptr %l246
  br label %bb88
bb88:
  %t358 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l246
  %t359 = load i64, ptr %l244
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = call ptr @__olang_scope_alloc_a(ptr %t360, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t358, ptr %t361
  %t362 = load ptr, ptr %l243, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_H788cd74f9c006611bc4bb459b5b22001(ptr %v0, ptr %v0, ptr %t362, ptr %t361)
  br label %bb89
bb89:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/free:Free", ptr %t364, i32 0, i32 60
  store ptr %t366, ptr %l249, !tbaa !29
  %t367 = ptrtoint ptr %v0 to i64
  store i64 %t367, ptr %l250, !tbaa !24
  %t368 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t368, label %bb90, label %bb91
bb90:
  %t370 = call ptr @__olang_region_make(ptr %v0)
  %t371 = ptrtoint ptr %t370 to i64
  store i64 %t371, ptr %l250, !tbaa !24
  br label %bb91
bb91:
  %t372 = load i64, ptr %l250
  %t373 = inttoptr i64 %t372 to ptr
  %t374 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t373, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %l252
  br label %bb92
bb92:
  %t375 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l252
  %t376 = load i64, ptr %l250
  %t377 = inttoptr i64 %t376 to ptr
  %t378 = call ptr @__olang_scope_alloc_a(ptr %t377, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %t378
  %t379 = load ptr, ptr %l249, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t379, ptr %t378)
  br label %bb93
bb93:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/free:Free", ptr %t381, i32 0, i32 42
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t383, i1 false)
  br label %bb94
bb94:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/free:Free", ptr %t385, i32 0, i32 43
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t387, i1 false)
  br label %bb95
bb95:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/free:Free", ptr %t389, i32 0, i32 61
  store ptr %t391, ptr %l259, !tbaa !29
  %t392 = ptrtoint ptr %v0 to i64
  store i64 %t392, ptr %l260, !tbaa !24
  %t393 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t393, label %bb96, label %bb97
bb96:
  %t395 = call ptr @__olang_region_make(ptr %v0)
  %t396 = ptrtoint ptr %t395 to i64
  store i64 %t396, ptr %l260, !tbaa !24
  br label %bb97
bb97:
  %t397 = icmp sge i64 0, 0
  br i1 %t397, label %bb98, label %bb99
bb98:
  %t399 = icmp sle i64 0, 1152921504606846975
  br i1 %t399, label %bb100, label %bb101
bb99:
  call void @__olang_check_failed(ptr @olang_loc_cfa78d5b759fffbc_7789424fbd23b3b0)
  unreachable
bb100:
  %t401 = mul i64 0, 8
  %t402 = load i64, ptr %l260
  %t403 = inttoptr i64 %t402 to ptr
  %t404 = insertvalue { i64, ptr } undef, i64 0, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t406 = load ptr, ptr %l259, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t406, { i64, ptr } %t405)
  br label %bb102
bb101:
  call void @__olang_check_failed(ptr @olang_loc_cfa78d5b759fffbc_7789424fbd23b3b0)
  unreachable
bb102:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/free:Free", ptr %t408, i32 0, i32 62
  store ptr %t410, ptr %l266, !tbaa !29
  %t411 = ptrtoint ptr %v0 to i64
  store i64 %t411, ptr %l267, !tbaa !24
  %t412 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t412, label %bb103, label %bb104
bb103:
  %t414 = call ptr @__olang_region_make(ptr %v0)
  %t415 = ptrtoint ptr %t414 to i64
  store i64 %t415, ptr %l267, !tbaa !24
  br label %bb104
bb104:
  %t416 = icmp sge i64 0, 0
  br i1 %t416, label %bb105, label %bb106
bb105:
  %t418 = icmp sle i64 0, 1152921504606846975
  br i1 %t418, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_c07c4c0bbb573d1f_6e3b998739460953)
  unreachable
bb107:
  %t420 = mul i64 0, 8
  %t421 = load i64, ptr %l267
  %t422 = inttoptr i64 %t421 to ptr
  %t423 = insertvalue { i64, ptr } undef, i64 0, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t425 = load ptr, ptr %l266, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t425, { i64, ptr } %t424)
  br label %bb109
bb108:
  call void @__olang_check_failed(ptr @olang_loc_c07c4c0bbb573d1f_6e3b998739460953)
  unreachable
bb109:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/free:Free", ptr %t427, i32 0, i32 67
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t429, i1 false)
  br label %bb110
bb110:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2enoteDtor(ptr %v0, ptr %t431, i64 %t432)
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t435 = load i64, ptr %l8, !tbaa !24
  %t437 = add i64 %t435, 1
  store i64 %t437, ptr %l8, !tbaa !24
  br label %bb9
bb113:
  %t439 = load i64, ptr %l2, !tbaa !24
  %t441 = icmp slt i64 %t439, 0
  br i1 %t441, label %bb114, label %bb115
bb114:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb115:
  br label %bb116
bb116:
  store i64 0, ptr %l13, !tbaa !24
  %t443 = load i64, ptr %l3, !tbaa !24
  store i64 %t443, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t445 = load i64, ptr %l14, !tbaa !24
  %t446 = load i64, ptr %l13, !tbaa !24
  %t449 = icmp sgt i64 %t445, %t446
  br i1 %t449, label %bb117, label %bb118
bb117:
  %t451 = load i64, ptr %l15, !tbaa !24
  %t453 = icmp sgt i64 %t451, 0
  br i1 %t453, label %bb119, label %bb120
bb118:
  store i64 0, ptr %l284, !tbaa !24
  br label %bb122
bb119:
  %t455 = load i64, ptr %l14, !tbaa !24
  %t456 = load i64, ptr %l13, !tbaa !24
  %t459 = sub i64 %t455, %t456
  %t460 = load i64, ptr %l15, !tbaa !24
  %t463 = add i64 %t459, %t460
  %t465 = sub i64 %t463, 1
  %t466 = load i64, ptr %l15, !tbaa !24
  %t469 = sdiv i64 %t465, %t466
  store i64 %t469, ptr %l287, !tbaa !24
  br label %bb121
bb120:
  store i64 0, ptr %l287, !tbaa !24
  br label %bb121
bb121:
  %t471 = load i64, ptr %l287, !tbaa !24
  store i64 %t471, ptr %l284, !tbaa !24
  br label %bb122
bb122:
  %t472 = load i64, ptr %l284, !tbaa !24
  store i64 %t472, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb123
bb123:
  %t473 = load i64, ptr %l17, !tbaa !24
  %t474 = load i64, ptr %l16, !tbaa !24
  %t477 = icmp slt i64 %t473, %t474
  %t479 = xor i1 %t477, true
  br i1 %t479, label %bb124, label %bb125
bb124:
  br label %bb137
bb125:
  br label %bb126
bb126:
  %t481 = load i64, ptr %l13, !tbaa !24
  %t482 = load i64, ptr %l17, !tbaa !24
  %t483 = load i64, ptr %l15, !tbaa !24
  %t486 = mul i64 %t482, %t483
  %t489 = add i64 %t481, %t486
  store i64 %t489, ptr %l18, !tbaa !24
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i64, ptr %l18, !tbaa !24
  %t495 = getelementptr %"compiler/free:Free", ptr %t491, i32 0, i32 77
  store i64 %t492, ptr %t495, !tbaa !24
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/free:Free", ptr %t496, i32 0, i32 1
  %t499 = load i64, ptr %l18, !tbaa !24
  %t502 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t498, i64 %t499)
  store ptr %t502, ptr %l310
  br label %bb127
bb127:
  %t503 = load ptr, ptr %l310, !tbaa !29
  %t505 = getelementptr %"compiler/typed:Body", ptr %t503, i32 0, i32 11
  %t506 = load ptr, ptr %t505, !tbaa !29
  %t508 = icmp eq ptr %t506, null
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb128, label %bb129
bb128:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l315, !tbaa !29
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t515 = getelementptr %"compiler/free:Free", ptr %t513, i32 0, i32 1
  %t516 = load i64, ptr %l18, !tbaa !24
  %t519 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t515, i64 %t516)
  store ptr %t519, ptr %l319
  br label %bb130
bb129:
  br label %bb135
bb130:
  %t520 = load ptr, ptr %l319, !tbaa !29
  %t522 = getelementptr %"compiler/typed:Body", ptr %t520, i32 0, i32 11
  %t523 = load ptr, ptr %t522, !tbaa !29
  store ptr %t523, ptr %l19, !tbaa !29
  %t525 = load ptr, ptr %l19, !tbaa !29
  %t527 = icmp eq ptr %t525, null
  br i1 %t527, label %bb131, label %bb132
bb131:
  call void @__olang_check_failed(ptr @olang_loc_4a2ee03059613aea_a0006d5774bd9126)
  unreachable
bb132:
  br label %bb133
bb133:
  %t529 = load ptr, ptr %l19, !tbaa !29
  %t530 = load ptr, ptr %l315, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v0, ptr %t530, ptr %t529)
  br label %bb134
bb134:
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t532 = load i64, ptr %l17, !tbaa !24
  %t534 = add i64 %t532, 1
  store i64 %t534, ptr %l17, !tbaa !24
  br label %bb123
bb137:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/free:Free", ptr %t536, i32 0, i32 9
  %t540 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t538)
  store i64 %t540, ptr %l329
  br label %bb138
bb138:
  %t541 = load i64, ptr %l329, !tbaa !24
  %t542 = icmp eq i64 %t541, 0
  br i1 %t542, label %bb139, label %bb140
bb139:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb140:
  br label %bb141
bb141:
  store i64 0, ptr %l20, !tbaa !24
  %t544 = load i64, ptr %l3, !tbaa !24
  store i64 %t544, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t546 = load i64, ptr %l21, !tbaa !24
  %t547 = load i64, ptr %l20, !tbaa !24
  %t550 = icmp sgt i64 %t546, %t547
  br i1 %t550, label %bb142, label %bb143
bb142:
  %t552 = load i64, ptr %l22, !tbaa !24
  %t554 = icmp sgt i64 %t552, 0
  br i1 %t554, label %bb144, label %bb145
bb143:
  store i64 0, ptr %l335, !tbaa !24
  br label %bb147
bb144:
  %t556 = load i64, ptr %l21, !tbaa !24
  %t557 = load i64, ptr %l20, !tbaa !24
  %t560 = sub i64 %t556, %t557
  %t561 = load i64, ptr %l22, !tbaa !24
  %t564 = add i64 %t560, %t561
  %t566 = sub i64 %t564, 1
  %t567 = load i64, ptr %l22, !tbaa !24
  %t570 = sdiv i64 %t566, %t567
  store i64 %t570, ptr %l338, !tbaa !24
  br label %bb146
bb145:
  store i64 0, ptr %l338, !tbaa !24
  br label %bb146
bb146:
  %t572 = load i64, ptr %l338, !tbaa !24
  store i64 %t572, ptr %l335, !tbaa !24
  br label %bb147
bb147:
  %t573 = load i64, ptr %l335, !tbaa !24
  store i64 %t573, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb148
bb148:
  %t574 = load i64, ptr %l24, !tbaa !24
  %t575 = load i64, ptr %l23, !tbaa !24
  %t578 = icmp slt i64 %t574, %t575
  %t580 = xor i1 %t578, true
  br i1 %t580, label %bb149, label %bb150
bb149:
  br label %bb158
bb150:
  br label %bb151
bb151:
  %t582 = load i64, ptr %l20, !tbaa !24
  %t583 = load i64, ptr %l24, !tbaa !24
  %t584 = load i64, ptr %l22, !tbaa !24
  %t587 = mul i64 %t583, %t584
  %t590 = add i64 %t582, %t587
  store i64 %t590, ptr %l25, !tbaa !24
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t594 = getelementptr %"compiler/free:Free", ptr %t592, i32 0, i32 1
  %t595 = load i64, ptr %l25, !tbaa !24
  %t598 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t594, i64 %t595)
  store ptr %t598, ptr %l359
  br label %bb152
bb152:
  %t599 = load ptr, ptr %l359, !tbaa !29
  %t601 = getelementptr %"compiler/typed:Body", ptr %t599, i32 0, i32 11
  %t602 = load ptr, ptr %t601, !tbaa !29
  %t604 = icmp eq ptr %t602, null
  %t606 = xor i1 %t604, true
  br i1 %t606, label %bb153, label %bb154
bb153:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t609 = load i64, ptr %l25, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindFeeds(ptr %v0, ptr %t608, i64 %t609)
  br label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb156
bb156:
  br label %bb157
bb157:
  %t612 = load i64, ptr %l24, !tbaa !24
  %t614 = add i64 %t612, 1
  store i64 %t614, ptr %l24, !tbaa !24
  br label %bb148
bb158:
  %t616 = call i64 @std_2ftime_2eNow()
  store i64 %t616, ptr %l368
  br label %bb159
bb159:
  %t617 = load i64, ptr %l368, !tbaa !24
  store i64 %t617, ptr %l26, !tbaa !24
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/free:Free", ptr %t618, i32 0, i32 2
  %t621 = load ptr, ptr %t620, !tbaa !29
  %t623 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eCalleesFirst(ptr %v0, ptr %s0, ptr %t621)
  store { i64, ptr } %t623, ptr %l371
  br label %bb160
bb160:
  %t624 = load { i64, ptr }, ptr %l371, !tbaa !27
  store { i64, ptr } %t624, ptr %l27, !tbaa !27
  %t625 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t627 = extractvalue { i64, ptr } %t625, 0
  %t628 = load i64, ptr %l3, !tbaa !24
  %t631 = icmp ne i64 %t627, %t628
  br i1 %t631, label %bb161, label %bb162
bb161:
  %t633 = load i64, ptr %l3, !tbaa !24
  store i64 %t633, ptr %l376, !tbaa !24
  %t634 = load i64, ptr %l376, !tbaa !24
  %t635 = icmp sge i64 %t634, 0
  br i1 %t635, label %bb163, label %bb164
bb162:
  br label %bb182
bb163:
  %t637 = load i64, ptr %l376, !tbaa !24
  %t638 = icmp sle i64 %t637, 1152921504606846975
  br i1 %t638, label %bb165, label %bb166
bb164:
  call void @__olang_check_failed(ptr @olang_loc_b4402838d0fec99d_8d63b3fead7ad2c9)
  unreachable
bb165:
  %t640 = load i64, ptr %l376, !tbaa !24
  %t641 = mul i64 %t640, 8
  %t642 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t641)
  %t643 = insertvalue { i64, ptr } undef, i64 %t640, 0
  %t644 = insertvalue { i64, ptr } %t643, ptr %t642, 1
  store { i64, ptr } %t644, ptr %l379, !tbaa !27
  %t645 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t646 = extractvalue { i64, ptr } %t645, 0
  %t647 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t648 = extractvalue { i64, ptr } %t647, 0
  store i64 %t648, ptr %l381, !tbaa !24
  %t650 = load i64, ptr %l381, !tbaa !24
  %t651 = icmp eq i64 %t646, %t650
  br i1 %t651, label %bb167, label %bb168
bb166:
  call void @__olang_check_failed(ptr @olang_loc_b4402838d0fec99d_8d63b3fead7ad2c9)
  unreachable
bb167:
  %t653 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !27
  %t655 = getelementptr { i64, ptr }, ptr %l379, i32 0, i32 1
  %t656 = load ptr, ptr %t655, !tbaa !27
  %t657 = load i64, ptr %l381, !tbaa !24
  %t658 = mul i64 %t657, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t654, ptr %t656, i64 %t658, i1 false)
  br label %bb169
bb168:
  %t659 = load { i64, ptr }, ptr %l379, !tbaa !27
  store { i64, ptr } %t659, ptr %l27, !tbaa !27
  br label %bb169
bb169:
  store i64 0, ptr %l28, !tbaa !24
  %t660 = load i64, ptr %l3, !tbaa !24
  store i64 %t660, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t662 = load i64, ptr %l29, !tbaa !24
  %t663 = load i64, ptr %l28, !tbaa !24
  %t666 = icmp sgt i64 %t662, %t663
  br i1 %t666, label %bb170, label %bb171
bb170:
  %t668 = load i64, ptr %l30, !tbaa !24
  %t670 = icmp sgt i64 %t668, 0
  br i1 %t670, label %bb172, label %bb173
bb171:
  store i64 0, ptr %l387, !tbaa !24
  br label %bb175
bb172:
  %t672 = load i64, ptr %l29, !tbaa !24
  %t673 = load i64, ptr %l28, !tbaa !24
  %t676 = sub i64 %t672, %t673
  %t677 = load i64, ptr %l30, !tbaa !24
  %t680 = add i64 %t676, %t677
  %t682 = sub i64 %t680, 1
  %t683 = load i64, ptr %l30, !tbaa !24
  %t686 = sdiv i64 %t682, %t683
  store i64 %t686, ptr %l390, !tbaa !24
  br label %bb174
bb173:
  store i64 0, ptr %l390, !tbaa !24
  br label %bb174
bb174:
  %t688 = load i64, ptr %l390, !tbaa !24
  store i64 %t688, ptr %l387, !tbaa !24
  br label %bb175
bb175:
  %t689 = load i64, ptr %l387, !tbaa !24
  store i64 %t689, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb176
bb176:
  %t690 = load i64, ptr %l32, !tbaa !24
  %t691 = load i64, ptr %l31, !tbaa !24
  %t694 = icmp slt i64 %t690, %t691
  %t696 = xor i1 %t694, true
  br i1 %t696, label %bb177, label %bb178
bb177:
  br label %bb181
bb178:
  br label %bb179
bb179:
  %t698 = load i64, ptr %l28, !tbaa !24
  %t699 = load i64, ptr %l32, !tbaa !24
  %t700 = load i64, ptr %l30, !tbaa !24
  %t703 = mul i64 %t699, %t700
  %t706 = add i64 %t698, %t703
  store i64 %t706, ptr %l33, !tbaa !24
  %t708 = load i64, ptr %l33, !tbaa !24
  %t709 = load i64, ptr %l33, !tbaa !24
  %t712 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t713 = load ptr, ptr %t712, !tbaa !27
  %t714 = getelementptr i64, ptr %t713, i64 %t708
  store i64 %t709, ptr %t714, !tbaa !34
  br label %bb180
bb180:
  %t715 = load i64, ptr %l32, !tbaa !24
  %t717 = add i64 %t715, 1
  store i64 %t717, ptr %l32, !tbaa !24
  br label %bb176
bb181:
  br label %bb182
bb182:
  %t719 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t719, ptr %l412
  br label %bb183
bb183:
  %t720 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l412
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t720, ptr %l34
  store i64 0, ptr %l35, !tbaa !24
  %t721 = load i64, ptr %l3, !tbaa !24
  store i64 %t721, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t723 = load i64, ptr %l36, !tbaa !24
  %t724 = load i64, ptr %l35, !tbaa !24
  %t727 = icmp sgt i64 %t723, %t724
  br i1 %t727, label %bb184, label %bb185
bb184:
  %t729 = load i64, ptr %l37, !tbaa !24
  %t731 = icmp sgt i64 %t729, 0
  br i1 %t731, label %bb186, label %bb187
bb185:
  store i64 0, ptr %l417, !tbaa !24
  br label %bb189
bb186:
  %t733 = load i64, ptr %l36, !tbaa !24
  %t734 = load i64, ptr %l35, !tbaa !24
  %t737 = sub i64 %t733, %t734
  %t738 = load i64, ptr %l37, !tbaa !24
  %t741 = add i64 %t737, %t738
  %t743 = sub i64 %t741, 1
  %t744 = load i64, ptr %l37, !tbaa !24
  %t747 = sdiv i64 %t743, %t744
  store i64 %t747, ptr %l420, !tbaa !24
  br label %bb188
bb187:
  store i64 0, ptr %l420, !tbaa !24
  br label %bb188
bb188:
  %t749 = load i64, ptr %l420, !tbaa !24
  store i64 %t749, ptr %l417, !tbaa !24
  br label %bb189
bb189:
  %t750 = load i64, ptr %l417, !tbaa !24
  store i64 %t750, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb190
bb190:
  store %olang.scope zeroinitializer, ptr %s22
  %t751 = load i64, ptr %l39, !tbaa !24
  %t752 = load i64, ptr %l38, !tbaa !24
  %t755 = icmp slt i64 %t751, %t752
  %t757 = xor i1 %t755, true
  br i1 %t757, label %bb191, label %bb192
bb191:
  call void @__olang_scope_close(ptr %s22)
  br label %bb197
bb192:
  br label %bb193
bb193:
  %t759 = load i64, ptr %l35, !tbaa !24
  %t760 = load i64, ptr %l39, !tbaa !24
  %t761 = load i64, ptr %l37, !tbaa !24
  %t764 = mul i64 %t760, %t761
  %t767 = add i64 %t759, %t764
  store i64 %t767, ptr %l40, !tbaa !24
  store ptr %l34, ptr %l438, !tbaa !29
  %t769 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t769, ptr %l439
  br label %bb194
bb194:
  %t770 = load ptr, ptr %l438, !tbaa !29
  %t771 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l439
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %s0, ptr %s22, ptr %t770, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t771)
  br label %bb195
bb195:
  call void @__olang_scope_close(ptr %s22)
  br label %bb196
bb196:
  %t772 = load i64, ptr %l39, !tbaa !24
  %t774 = add i64 %t772, 1
  store i64 %t774, ptr %l39, !tbaa !24
  br label %bb190
bb197:
  store i64 0, ptr %l41, !tbaa !24
  %t776 = load i64, ptr %l3, !tbaa !24
  store i64 %t776, ptr %l42, !tbaa !24
  store i64 1, ptr %l43, !tbaa !24
  %t778 = load i64, ptr %l42, !tbaa !24
  %t779 = load i64, ptr %l41, !tbaa !24
  %t782 = icmp sgt i64 %t778, %t779
  br i1 %t782, label %bb198, label %bb199
bb198:
  %t784 = load i64, ptr %l43, !tbaa !24
  %t786 = icmp sgt i64 %t784, 0
  br i1 %t786, label %bb200, label %bb201
bb199:
  store i64 0, ptr %l446, !tbaa !24
  br label %bb203
bb200:
  %t788 = load i64, ptr %l42, !tbaa !24
  %t789 = load i64, ptr %l41, !tbaa !24
  %t792 = sub i64 %t788, %t789
  %t793 = load i64, ptr %l43, !tbaa !24
  %t796 = add i64 %t792, %t793
  %t798 = sub i64 %t796, 1
  %t799 = load i64, ptr %l43, !tbaa !24
  %t802 = sdiv i64 %t798, %t799
  store i64 %t802, ptr %l449, !tbaa !24
  br label %bb202
bb201:
  store i64 0, ptr %l449, !tbaa !24
  br label %bb202
bb202:
  %t804 = load i64, ptr %l449, !tbaa !24
  store i64 %t804, ptr %l446, !tbaa !24
  br label %bb203
bb203:
  %t805 = load i64, ptr %l446, !tbaa !24
  store i64 %t805, ptr %l44, !tbaa !24
  store i64 0, ptr %l45, !tbaa !24
  br label %bb204
bb204:
  %t806 = load i64, ptr %l45, !tbaa !24
  %t807 = load i64, ptr %l44, !tbaa !24
  %t810 = icmp slt i64 %t806, %t807
  %t812 = xor i1 %t810, true
  br i1 %t812, label %bb205, label %bb206
bb205:
  br label %bb224
bb206:
  br label %bb207
bb207:
  %t814 = load i64, ptr %l41, !tbaa !24
  %t815 = load i64, ptr %l45, !tbaa !24
  %t816 = load i64, ptr %l43, !tbaa !24
  %t819 = mul i64 %t815, %t816
  %t822 = add i64 %t814, %t819
  store i64 %t822, ptr %l46, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s26
  %t824 = load ptr, ptr %l0, !tbaa !29
  %t826 = getelementptr %"compiler/free:Free", ptr %t824, i32 0, i32 2
  %t827 = load ptr, ptr %t826, !tbaa !29
  %t828 = load i64, ptr %l46, !tbaa !24
  %t831 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eCalleesOf(ptr %v0, ptr %s26, ptr %t827, i64 %t828)
  store { i64, ptr } %t831, ptr %l470
  br label %bb208
bb208:
  %t832 = load { i64, ptr }, ptr %l470, !tbaa !27
  %t833 = extractvalue { i64, ptr } %t832, 0
  %t834 = extractvalue { i64, ptr } %t832, 1
  %t835 = mul i64 %t833, 8
  %t836 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t835)
  call void @llvm.memcpy.p0.p0.i64(ptr %t836, ptr %t834, i64 %t835, i1 false)
  %t837 = insertvalue { i64, ptr } undef, i64 %t833, 0
  %t838 = insertvalue { i64, ptr } %t837, ptr %t836, 1
  store { i64, ptr } %t838, ptr %l47, !tbaa !27
  store i64 0, ptr %l48, !tbaa !24
  %t840 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t842 = extractvalue { i64, ptr } %t840, 0
  store i64 %t842, ptr %l49, !tbaa !24
  br label %bb209
bb209:
  %t844 = load i64, ptr %l48, !tbaa !24
  %t845 = load i64, ptr %l49, !tbaa !24
  %t848 = icmp slt i64 %t844, %t845
  %t850 = xor i1 %t848, true
  br i1 %t850, label %bb210, label %bb211
bb210:
  br label %bb222
bb211:
  br label %bb212
bb212:
  %t852 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t852, ptr %l478, !tbaa !27
  %t853 = load i64, ptr %l48, !tbaa !24
  %t855 = getelementptr { i64, ptr }, ptr %l478, i32 0, i32 1
  %t856 = load ptr, ptr %t855, !tbaa !27
  %t857 = getelementptr i64, ptr %t856, i64 %t853
  %t858 = load i64, ptr %t857, !tbaa !34
  store i64 %t858, ptr %l50, !tbaa !24
  %t860 = load i64, ptr %l50, !tbaa !24
  %t862 = icmp sge i64 %t860, 0
  br i1 %t862, label %bb213, label %bb214
bb213:
  %t864 = load i64, ptr %l50, !tbaa !24
  %t865 = load i64, ptr %l3, !tbaa !24
  %t868 = icmp slt i64 %t864, %t865
  store i1 %t868, ptr %l483, !tbaa !21
  br label %bb215
bb214:
  store i1 false, ptr %l483, !tbaa !21
  br label %bb215
bb215:
  %t870 = load i1, ptr %l483, !tbaa !21
  br i1 %t870, label %bb216, label %bb217
bb216:
  %t871 = load i64, ptr %l50, !tbaa !24
  %t874 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %s0, ptr %s0, ptr %l34, i64 %t871)
  store ptr %t874, ptr %l489
  br label %bb218
bb217:
  br label %bb220
bb218:
  %t875 = load i64, ptr %l46, !tbaa !24
  %t876 = load ptr, ptr %l489, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t876, i64 %t875)
  br label %bb219
bb219:
  br label %bb220
bb220:
  br label %bb221
bb221:
  %t878 = load i64, ptr %l48, !tbaa !24
  %t880 = add i64 %t878, 1
  store i64 %t880, ptr %l48, !tbaa !24
  br label %bb209
bb222:
  call void @__olang_scope_close(ptr %s26)
  br label %bb223
bb223:
  %t882 = load i64, ptr %l45, !tbaa !24
  %t884 = add i64 %t882, 1
  store i64 %t884, ptr %l45, !tbaa !24
  br label %bb204
bb224:
  store i64 0, ptr %l51, !tbaa !24
  %t886 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t886, ptr %l495
  br label %bb225
bb225:
  %t887 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l495
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t887, ptr %l52
  %t888 = load i64, ptr %l3, !tbaa !24
  store i64 %t888, ptr %l496, !tbaa !24
  %t889 = load i64, ptr %l496, !tbaa !24
  %t890 = icmp sge i64 %t889, 0
  br i1 %t890, label %bb226, label %bb227
bb226:
  %t892 = load i64, ptr %l496, !tbaa !24
  %t893 = mul i64 %t892, 1
  %t894 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t893)
  store i64 0, ptr %t895
  br label %fill.896
fill.896:
  %t899 = load i64, ptr %t895
  %t900 = icmp slt i64 %t899, %t892
  br i1 %t900, label %fillb.897, label %filld.898
fillb.897:
  %t901 = getelementptr i1, ptr %t894, i64 %t899
  store i1 true, ptr %t901
  %t902 = add i64 %t899, 1
  store i64 %t902, ptr %t895
  br label %fill.896
filld.898:
  %t903 = insertvalue { i64, ptr } undef, i64 %t892, 0
  %t904 = insertvalue { i64, ptr } %t903, ptr %t894, 1
  store { i64, ptr } %t904, ptr %l53, !tbaa !27
  %t906 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t906, ptr %l54, !tbaa !27
  store i64 0, ptr %l55, !tbaa !24
  %t908 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t910 = extractvalue { i64, ptr } %t908, 0
  store i64 %t910, ptr %l56, !tbaa !24
  br label %bb228
bb227:
  call void @__olang_check_failed(ptr @olang_loc_7774858aec9876f0_864a54e21bf2c67c)
  unreachable
bb228:
  %t912 = load i64, ptr %l55, !tbaa !24
  %t913 = load i64, ptr %l56, !tbaa !24
  %t916 = icmp slt i64 %t912, %t913
  %t918 = xor i1 %t916, true
  br i1 %t918, label %bb229, label %bb230
bb229:
  br label %bb234
bb230:
  br label %bb231
bb231:
  %t920 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t920, ptr %l506, !tbaa !27
  %t921 = load i64, ptr %l55, !tbaa !24
  %t923 = getelementptr { i64, ptr }, ptr %l506, i32 0, i32 1
  %t924 = load ptr, ptr %t923, !tbaa !27
  %t925 = getelementptr i64, ptr %t924, i64 %t921
  %t926 = load i64, ptr %t925, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l52, i64 %t926)
  br label %bb232
bb232:
  br label %bb233
bb233:
  %t931 = load i64, ptr %l55, !tbaa !24
  %t933 = add i64 %t931, 1
  store i64 %t933, ptr %l55, !tbaa !24
  br label %bb228
bb234:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb235
bb235:
  %t935 = load i64, ptr %l58, !tbaa !24
  store i64 %t935, ptr %l513, !tbaa !24
  %t937 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l52)
  store i64 %t937, ptr %l515
  br label %bb236
bb236:
  %t938 = load i64, ptr %l513, !tbaa !24
  %t939 = load i64, ptr %l515, !tbaa !24
  %t940 = icmp slt i64 %t938, %t939
  %t942 = xor i1 %t940, true
  br i1 %t942, label %bb237, label %bb238
bb237:
  br label %bb260
bb238:
  br label %bb239
bb239:
  %t944 = load i64, ptr %l58, !tbaa !24
  %t947 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l52, i64 %t944)
  store i64 %t947, ptr %l520
  br label %bb240
bb240:
  %t948 = load i64, ptr %l520, !tbaa !24
  store i64 %t948, ptr %l59, !tbaa !24
  %t949 = load i64, ptr %l59, !tbaa !24
  %t951 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t952 = load ptr, ptr %t951, !tbaa !27
  %t953 = getelementptr i1, ptr %t952, i64 %t949
  store i1 false, ptr %t953, !tbaa !31
  %t954 = load ptr, ptr %l0, !tbaa !29
  %t956 = getelementptr %"compiler/free:Free", ptr %t954, i32 0, i32 40
  store i1 false, ptr %t956, !tbaa !21
  %t957 = load i64, ptr %l51, !tbaa !24
  %t959 = add i64 %t957, 1
  store i64 %t959, ptr %l51, !tbaa !24
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t962 = load i64, ptr %l59, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2emustOf(ptr %v0, ptr %t961, i64 %t962)
  br label %bb241
bb241:
  %t965 = load ptr, ptr %l0, !tbaa !29
  %t967 = getelementptr %"compiler/free:Free", ptr %t965, i32 0, i32 40
  %t968 = load i1, ptr %t967, !tbaa !21
  %t970 = xor i1 %t968, true
  br i1 %t970, label %bb242, label %bb243
bb242:
  br label %bb259
bb243:
  br label %bb244
bb244:
  store %olang.scope zeroinitializer, ptr %s37
  %t972 = load i64, ptr %l59, !tbaa !24
  %t975 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s37, ptr %l34, i64 %t972)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t975, ptr %l532
  br label %bb245
bb245:
  %t977 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s37, ptr %l532)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t977, ptr %l534
  br label %bb246
bb246:
  %t978 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l534
  %t979 = call ptr @__olang_scope_alloc_a(ptr %s37, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t978, ptr %t979
  store ptr %t979, ptr %l60, !tbaa !29
  store i64 0, ptr %l61, !tbaa !24
  br label %bb247
bb247:
  %t981 = load i64, ptr %l61, !tbaa !24
  store i64 %t981, ptr %l536, !tbaa !24
  %t982 = load ptr, ptr %l60, !tbaa !29
  %t984 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s37, ptr %t982)
  store i64 %t984, ptr %l538
  br label %bb248
bb248:
  %t985 = load i64, ptr %l536, !tbaa !24
  %t986 = load i64, ptr %l538, !tbaa !24
  %t987 = icmp slt i64 %t985, %t986
  %t989 = xor i1 %t987, true
  br i1 %t989, label %bb249, label %bb250
bb249:
  br label %bb258
bb250:
  br label %bb251
bb251:
  %t991 = load ptr, ptr %l60, !tbaa !29
  %t992 = load i64, ptr %l61, !tbaa !24
  %t995 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s37, ptr %t991, i64 %t992)
  store i64 %t995, ptr %l543
  br label %bb252
bb252:
  %t996 = load i64, ptr %l543, !tbaa !24
  store i64 %t996, ptr %l62, !tbaa !24
  %t997 = load i64, ptr %l62, !tbaa !24
  %t999 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t1000 = load ptr, ptr %t999, !tbaa !27
  %t1001 = getelementptr i1, ptr %t1000, i64 %t997
  %t1002 = load i1, ptr %t1001, !tbaa !31
  %t1004 = xor i1 %t1002, true
  br i1 %t1004, label %bb253, label %bb254
bb253:
  %t1006 = load i64, ptr %l62, !tbaa !24
  %t1008 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t1009 = load ptr, ptr %t1008, !tbaa !27
  %t1010 = getelementptr i1, ptr %t1009, i64 %t1006
  store i1 true, ptr %t1010, !tbaa !31
  %t1011 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l52, i64 %t1011)
  br label %bb255
bb254:
  br label %bb256
bb255:
  br label %bb256
bb256:
  br label %bb257
bb257:
  %t1014 = load i64, ptr %l61, !tbaa !24
  %t1016 = add i64 %t1014, 1
  store i64 %t1016, ptr %l61, !tbaa !24
  br label %bb247
bb258:
  call void @__olang_scope_close(ptr %s37)
  br label %bb259
bb259:
  %t1018 = load i64, ptr %l58, !tbaa !24
  %t1020 = add i64 %t1018, 1
  store i64 %t1020, ptr %l58, !tbaa !24
  br label %bb235
bb260:
  %t1022 = call i64 @std_2ftime_2eNow()
  store i64 %t1022, ptr %l554
  br label %bb261
bb261:
  %t1023 = load i64, ptr %l554, !tbaa !24
  store i64 %t1023, ptr %l63, !tbaa !24
  store i64 0, ptr %l64, !tbaa !24
  %t1024 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1024, ptr %l555
  br label %bb262
bb262:
  %t1025 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l555
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1025, ptr %l65
  %t1026 = load i64, ptr %l3, !tbaa !24
  store i64 %t1026, ptr %l556, !tbaa !24
  %t1027 = load i64, ptr %l556, !tbaa !24
  %t1028 = icmp sge i64 %t1027, 0
  br i1 %t1028, label %bb263, label %bb264
bb263:
  %t1030 = load i64, ptr %l556, !tbaa !24
  %t1031 = mul i64 %t1030, 1
  %t1032 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1031)
  store i64 0, ptr %t1033
  br label %fill.1034
fill.1034:
  %t1037 = load i64, ptr %t1033
  %t1038 = icmp slt i64 %t1037, %t1030
  br i1 %t1038, label %fillb.1035, label %filld.1036
fillb.1035:
  %t1039 = getelementptr i1, ptr %t1032, i64 %t1037
  store i1 true, ptr %t1039
  %t1040 = add i64 %t1037, 1
  store i64 %t1040, ptr %t1033
  br label %fill.1034
filld.1036:
  %t1041 = insertvalue { i64, ptr } undef, i64 %t1030, 0
  %t1042 = insertvalue { i64, ptr } %t1041, ptr %t1032, 1
  store { i64, ptr } %t1042, ptr %l66, !tbaa !27
  %t1044 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t1044, ptr %l67, !tbaa !27
  store i64 0, ptr %l68, !tbaa !24
  %t1046 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t1048 = extractvalue { i64, ptr } %t1046, 0
  store i64 %t1048, ptr %l69, !tbaa !24
  br label %bb265
bb264:
  call void @__olang_check_failed(ptr @olang_loc_a3e4b8257e528993_6ac514faf6c963df)
  unreachable
bb265:
  %t1050 = load i64, ptr %l68, !tbaa !24
  %t1051 = load i64, ptr %l69, !tbaa !24
  %t1054 = icmp slt i64 %t1050, %t1051
  %t1056 = xor i1 %t1054, true
  br i1 %t1056, label %bb266, label %bb267
bb266:
  br label %bb271
bb267:
  br label %bb268
bb268:
  %t1058 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t1058, ptr %l566, !tbaa !27
  %t1059 = load i64, ptr %l68, !tbaa !24
  %t1061 = getelementptr { i64, ptr }, ptr %l566, i32 0, i32 1
  %t1062 = load ptr, ptr %t1061, !tbaa !27
  %t1063 = getelementptr i64, ptr %t1062, i64 %t1059
  %t1064 = load i64, ptr %t1063, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l65, i64 %t1064)
  br label %bb269
bb269:
  br label %bb270
bb270:
  %t1069 = load i64, ptr %l68, !tbaa !24
  %t1071 = add i64 %t1069, 1
  store i64 %t1071, ptr %l68, !tbaa !24
  br label %bb265
bb271:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb272
bb272:
  %t1073 = load i64, ptr %l71, !tbaa !24
  store i64 %t1073, ptr %l573, !tbaa !24
  %t1075 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l65)
  store i64 %t1075, ptr %l575
  br label %bb273
bb273:
  %t1076 = load i64, ptr %l573, !tbaa !24
  %t1077 = load i64, ptr %l575, !tbaa !24
  %t1078 = icmp slt i64 %t1076, %t1077
  %t1080 = xor i1 %t1078, true
  br i1 %t1080, label %bb274, label %bb275
bb274:
  br label %bb300
bb275:
  br label %bb276
bb276:
  %t1082 = load i64, ptr %l71, !tbaa !24
  %t1085 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l65, i64 %t1082)
  store i64 %t1085, ptr %l580
  br label %bb277
bb277:
  %t1086 = load i64, ptr %l580, !tbaa !24
  store i64 %t1086, ptr %l72, !tbaa !24
  %t1087 = load i64, ptr %l72, !tbaa !24
  %t1089 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t1090 = load ptr, ptr %t1089, !tbaa !27
  %t1091 = getelementptr i1, ptr %t1090, i64 %t1087
  store i1 false, ptr %t1091, !tbaa !31
  %t1092 = load ptr, ptr %l0, !tbaa !29
  %t1094 = getelementptr %"compiler/free:Free", ptr %t1092, i32 0, i32 40
  store i1 false, ptr %t1094, !tbaa !21
  %t1095 = load i64, ptr %l64, !tbaa !24
  %t1097 = add i64 %t1095, 1
  store i64 %t1097, ptr %l64, !tbaa !24
  %t1099 = load ptr, ptr %l0, !tbaa !29
  %t1100 = load i64, ptr %l72, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewalk(ptr %v0, ptr %t1099, i64 %t1100, i1 false)
  br label %bb278
bb278:
  %t1103 = load ptr, ptr %l0, !tbaa !29
  %t1105 = getelementptr %"compiler/free:Free", ptr %t1103, i32 0, i32 40
  %t1106 = load i1, ptr %t1105, !tbaa !21
  %t1108 = xor i1 %t1106, true
  br i1 %t1108, label %bb279, label %bb280
bb279:
  br label %bb299
bb280:
  br label %bb281
bb281:
  %t1110 = load ptr, ptr %l0, !tbaa !29
  %t1112 = getelementptr %"compiler/free:Free", ptr %t1110, i32 0, i32 60
  %t1113 = load i64, ptr %l72, !tbaa !24
  %t1116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1112, i64 %t1113)
  store ptr %t1116, ptr %l593
  br label %bb282
bb282:
  %t1117 = load ptr, ptr %l593, !tbaa !29
  store ptr %t1117, ptr %l73, !tbaa !29
  store i64 0, ptr %l74, !tbaa !24
  br label %bb283
bb283:
  %t1118 = load i64, ptr %l74, !tbaa !24
  store i64 %t1118, ptr %l594, !tbaa !24
  %t1119 = load ptr, ptr %l73, !tbaa !29
  store ptr %t1119, ptr %l595, !tbaa !29
  %t1120 = ptrtoint ptr %v0 to i64
  store i64 %t1120, ptr %l596, !tbaa !24
  %t1121 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1121, label %bb284, label %bb285
bb284:
  %t1123 = load ptr, ptr %l595, !tbaa !29
  %t1124 = call ptr @__olang_region_or(ptr %t1123, ptr %v0)
  %t1125 = ptrtoint ptr %t1124 to i64
  store i64 %t1125, ptr %l596, !tbaa !24
  br label %bb285
bb285:
  %t1126 = load ptr, ptr %l73, !tbaa !29
  %t1127 = load i64, ptr %l596
  %t1128 = inttoptr i64 %t1127 to ptr
  %t1130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t1128, ptr %t1126)
  store i64 %t1130, ptr %l599
  br label %bb286
bb286:
  %t1131 = load i64, ptr %l594, !tbaa !24
  %t1132 = load i64, ptr %l599, !tbaa !24
  %t1133 = icmp slt i64 %t1131, %t1132
  %t1135 = xor i1 %t1133, true
  br i1 %t1135, label %bb287, label %bb288
bb287:
  br label %bb298
bb288:
  br label %bb289
bb289:
  %t1137 = load ptr, ptr %l73, !tbaa !29
  store ptr %t1137, ptr %l602, !tbaa !29
  %t1138 = ptrtoint ptr %v0 to i64
  store i64 %t1138, ptr %l603, !tbaa !24
  %t1139 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1139, label %bb290, label %bb291
bb290:
  %t1141 = load ptr, ptr %l602, !tbaa !29
  %t1142 = call ptr @__olang_region_or(ptr %t1141, ptr %v0)
  %t1143 = ptrtoint ptr %t1142 to i64
  store i64 %t1143, ptr %l603, !tbaa !24
  br label %bb291
bb291:
  %t1144 = load ptr, ptr %l73, !tbaa !29
  %t1145 = load i64, ptr %l74, !tbaa !24
  %t1146 = load i64, ptr %l603
  %t1147 = inttoptr i64 %t1146 to ptr
  %t1150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t1147, ptr %t1144, i64 %t1145)
  store i64 %t1150, ptr %l607
  br label %bb292
bb292:
  %t1151 = load i64, ptr %l607, !tbaa !24
  store i64 %t1151, ptr %l75, !tbaa !24
  %t1152 = load i64, ptr %l75, !tbaa !24
  %t1154 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t1155 = load ptr, ptr %t1154, !tbaa !27
  %t1156 = getelementptr i1, ptr %t1155, i64 %t1152
  %t1157 = load i1, ptr %t1156, !tbaa !31
  %t1159 = xor i1 %t1157, true
  br i1 %t1159, label %bb293, label %bb294
bb293:
  %t1161 = load i64, ptr %l75, !tbaa !24
  %t1163 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t1164 = load ptr, ptr %t1163, !tbaa !27
  %t1165 = getelementptr i1, ptr %t1164, i64 %t1161
  store i1 true, ptr %t1165, !tbaa !31
  %t1166 = load i64, ptr %l75, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l65, i64 %t1166)
  br label %bb295
bb294:
  br label %bb296
bb295:
  br label %bb296
bb296:
  br label %bb297
bb297:
  %t1169 = load i64, ptr %l74, !tbaa !24
  %t1171 = add i64 %t1169, 1
  store i64 %t1171, ptr %l74, !tbaa !24
  br label %bb283
bb298:
  br label %bb299
bb299:
  %t1173 = load i64, ptr %l71, !tbaa !24
  %t1175 = add i64 %t1173, 1
  store i64 %t1175, ptr %l71, !tbaa !24
  br label %bb272
bb300:
  %t1177 = call i64 @std_2ftime_2eNow()
  store i64 %t1177, ptr %l618
  br label %bb301
bb301:
  %t1178 = load i64, ptr %l618, !tbaa !24
  store i64 %t1178, ptr %l76, !tbaa !24
  %t1179 = load ptr, ptr %l0, !tbaa !29
  %t1181 = getelementptr %"compiler/free:Free", ptr %t1179, i32 0, i32 79
  %t1182 = load i1, ptr %t1181, !tbaa !21
  br i1 %t1182, label %bb302, label %bb303
bb302:
  store %olang.scope zeroinitializer, ptr %s53
  %t1184 = load i64, ptr %l3, !tbaa !24
  store i64 %t1184, ptr %l621, !tbaa !24
  %t1185 = load ptr, ptr %l0, !tbaa !29
  %t1187 = getelementptr %"compiler/free:Free", ptr %t1185, i32 0, i32 9
  %t1189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t1187)
  store i64 %t1189, ptr %l624
  br label %bb304
bb303:
  br label %bb311
bb304:
  %t1190 = load i64, ptr %l51, !tbaa !24
  %t1191 = load i64, ptr %l63, !tbaa !24
  %t1192 = load i64, ptr %l26, !tbaa !24
  %t1195 = sub i64 %t1191, %t1192
  %t1197 = sdiv i64 %t1195, 1000000
  %t1198 = load i64, ptr %l64, !tbaa !24
  %t1199 = load ptr, ptr %l0, !tbaa !29
  %t1201 = getelementptr %"compiler/free:Free", ptr %t1199, i32 0, i32 4
  %t1202 = load i64, ptr %t1201, !tbaa !24
  %t1203 = load i64, ptr %l76, !tbaa !24
  %t1204 = load i64, ptr %l63, !tbaa !24
  %t1207 = sub i64 %t1203, %t1204
  %t1209 = sdiv i64 %t1207, 1000000
  %t1210 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t1211 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t1212 = load i64, ptr %l621, !tbaa !24
  %t1213 = call i64 @__olang_fmt_i64(ptr null, i64 %t1212)
  %t1214 = add i64 %t1211, %t1213
  %t1215 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t1216 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t1217 = add i64 %t1214, %t1216
  %t1218 = load i64, ptr %l624, !tbaa !24
  %t1219 = call i64 @__olang_fmt_i64(ptr null, i64 %t1218)
  %t1220 = add i64 %t1217, %t1219
  %t1221 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t1222 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t1223 = add i64 %t1220, %t1222
  %t1225 = call i64 @__olang_fmt_i64(ptr null, i64 %t1190)
  %t1226 = add i64 %t1223, %t1225
  %t1227 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t1228 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t1229 = add i64 %t1226, %t1228
  %t1231 = call i64 @__olang_fmt_i64(ptr null, i64 %t1197)
  %t1232 = add i64 %t1229, %t1231
  %t1233 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t1234 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t1235 = add i64 %t1232, %t1234
  %t1237 = call i64 @__olang_fmt_i64(ptr null, i64 %t1198)
  %t1238 = add i64 %t1235, %t1237
  %t1239 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t1240 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t1241 = add i64 %t1238, %t1240
  %t1243 = call i64 @__olang_fmt_i64(ptr null, i64 %t1202)
  %t1244 = add i64 %t1241, %t1243
  %t1245 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t1246 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t1247 = add i64 %t1244, %t1246
  %t1249 = call i64 @__olang_fmt_i64(ptr null, i64 %t1209)
  %t1250 = add i64 %t1247, %t1249
  %t1251 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t1252 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t1253 = add i64 %t1250, %t1252
  %t1254 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1253)
  call void @olang_textcopy(ptr %t1254, ptr %t1210, i64 %t1211)
  %t1255 = getelementptr i8, ptr %t1254, i64 %t1211
  %t1256 = call i64 @__olang_fmt_i64(ptr %t1255, i64 %t1212)
  %t1257 = getelementptr i8, ptr %t1255, i64 %t1213
  call void @olang_textcopy(ptr %t1257, ptr %t1215, i64 %t1216)
  %t1258 = getelementptr i8, ptr %t1257, i64 %t1216
  %t1259 = call i64 @__olang_fmt_i64(ptr %t1258, i64 %t1218)
  %t1260 = getelementptr i8, ptr %t1258, i64 %t1219
  call void @olang_textcopy(ptr %t1260, ptr %t1221, i64 %t1222)
  %t1261 = getelementptr i8, ptr %t1260, i64 %t1222
  %t1262 = call i64 @__olang_fmt_i64(ptr %t1261, i64 %t1190)
  %t1263 = getelementptr i8, ptr %t1261, i64 %t1225
  call void @olang_textcopy(ptr %t1263, ptr %t1227, i64 %t1228)
  %t1264 = getelementptr i8, ptr %t1263, i64 %t1228
  %t1265 = call i64 @__olang_fmt_i64(ptr %t1264, i64 %t1197)
  %t1266 = getelementptr i8, ptr %t1264, i64 %t1231
  call void @olang_textcopy(ptr %t1266, ptr %t1233, i64 %t1234)
  %t1267 = getelementptr i8, ptr %t1266, i64 %t1234
  %t1268 = call i64 @__olang_fmt_i64(ptr %t1267, i64 %t1198)
  %t1269 = getelementptr i8, ptr %t1267, i64 %t1237
  call void @olang_textcopy(ptr %t1269, ptr %t1239, i64 %t1240)
  %t1270 = getelementptr i8, ptr %t1269, i64 %t1240
  %t1271 = call i64 @__olang_fmt_i64(ptr %t1270, i64 %t1202)
  %t1272 = getelementptr i8, ptr %t1270, i64 %t1243
  call void @olang_textcopy(ptr %t1272, ptr %t1245, i64 %t1246)
  %t1273 = getelementptr i8, ptr %t1272, i64 %t1246
  %t1274 = call i64 @__olang_fmt_i64(ptr %t1273, i64 %t1209)
  %t1275 = getelementptr i8, ptr %t1273, i64 %t1249
  call void @olang_textcopy(ptr %t1275, ptr %t1251, i64 %t1252)
  %t1276 = insertvalue { i64, ptr } undef, i64 %t1253, 0
  %t1277 = insertvalue { i64, ptr } %t1276, ptr %t1254, 1
  %t1279 = extractvalue { i64, ptr } %t1277, 0
  %t1280 = extractvalue { i64, ptr } %t1277, 1
  %t1281 = mul i64 %t1279, 1
  %t1282 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1281)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1282, ptr %t1280, i64 %t1281, i1 false)
  %t1283 = insertvalue { i64, ptr } undef, i64 %t1279, 0
  %t1284 = insertvalue { i64, ptr } %t1283, ptr %t1282, 1
  %t1286 = call i32 @std_2fio_2ePrintErr(ptr %s53, { i64, ptr } %t1284)
  store i32 %t1286, ptr %l639
  %t1287 = icmp ne i32 %t1286, 0
  br i1 %t1287, label %bb306, label %ok.1288, !prof !99
ok.1288:
  br label %bb305
bb305:
  br label %bb310
bb306:
  %t1289 = load i32, ptr %l639, !tbaa !23
  %t1290 = ashr i32 %t1289, 16
  %t1292 = icmp eq i32 %t1290, 1
  store i1 %t1292, ptr %l641, !tbaa !21
  %t1293 = load i32, ptr %l639, !tbaa !23
  %t1294 = ashr i32 %t1293, 16
  %t1296 = icmp eq i32 %t1294, 1
  br i1 %t1296, label %bb307, label %bb308
bb307:
  call void @__olang_errpay_pop()
  br label %bb308
bb308:
  br label %bb309
bb309:
  br label %bb310
bb310:
  call void @__olang_scope_close(ptr %s53)
  br label %bb311
bb311:
  store i64 0, ptr %l77, !tbaa !24
  %t1298 = load i64, ptr %l3, !tbaa !24
  store i64 %t1298, ptr %l78, !tbaa !24
  store i64 1, ptr %l79, !tbaa !24
  %t1300 = load i64, ptr %l78, !tbaa !24
  %t1301 = load i64, ptr %l77, !tbaa !24
  %t1304 = icmp sgt i64 %t1300, %t1301
  br i1 %t1304, label %bb312, label %bb313
bb312:
  %t1306 = load i64, ptr %l79, !tbaa !24
  %t1308 = icmp sgt i64 %t1306, 0
  br i1 %t1308, label %bb314, label %bb315
bb313:
  store i64 0, ptr %l648, !tbaa !24
  br label %bb317
bb314:
  %t1310 = load i64, ptr %l78, !tbaa !24
  %t1311 = load i64, ptr %l77, !tbaa !24
  %t1314 = sub i64 %t1310, %t1311
  %t1315 = load i64, ptr %l79, !tbaa !24
  %t1318 = add i64 %t1314, %t1315
  %t1320 = sub i64 %t1318, 1
  %t1321 = load i64, ptr %l79, !tbaa !24
  %t1324 = sdiv i64 %t1320, %t1321
  store i64 %t1324, ptr %l651, !tbaa !24
  br label %bb316
bb315:
  store i64 0, ptr %l651, !tbaa !24
  br label %bb316
bb316:
  %t1326 = load i64, ptr %l651, !tbaa !24
  store i64 %t1326, ptr %l648, !tbaa !24
  br label %bb317
bb317:
  %t1327 = load i64, ptr %l648, !tbaa !24
  store i64 %t1327, ptr %l80, !tbaa !24
  store i64 0, ptr %l81, !tbaa !24
  br label %bb318
bb318:
  %t1328 = load i64, ptr %l81, !tbaa !24
  %t1329 = load i64, ptr %l80, !tbaa !24
  %t1332 = icmp slt i64 %t1328, %t1329
  %t1334 = xor i1 %t1332, true
  br i1 %t1334, label %bb319, label %bb320
bb319:
  br label %bb359
bb320:
  br label %bb321
bb321:
  %t1336 = load i64, ptr %l77, !tbaa !24
  %t1337 = load i64, ptr %l81, !tbaa !24
  %t1338 = load i64, ptr %l79, !tbaa !24
  %t1341 = mul i64 %t1337, %t1338
  %t1344 = add i64 %t1336, %t1341
  store i64 %t1344, ptr %l82, !tbaa !24
  %t1346 = load ptr, ptr %l0, !tbaa !29
  %t1348 = getelementptr %"compiler/free:Free", ptr %t1346, i32 0, i32 34
  %t1349 = load i64, ptr %l82, !tbaa !24
  %t1352 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1348, i64 %t1349)
  store ptr %t1352, ptr %l672
  br label %bb322
bb322:
  %t1353 = load ptr, ptr %l672, !tbaa !29
  %t1354 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1353)
  store i64 %t1354, ptr %l673
  br label %bb323
bb323:
  %t1355 = load i64, ptr %l673, !tbaa !24
  %t1356 = icmp sgt i64 %t1355, 0
  br i1 %t1356, label %bb324, label %bb325
bb324:
  store i1 true, ptr %l675, !tbaa !21
  br label %bb327
bb325:
  %t1358 = load ptr, ptr %l0, !tbaa !29
  %t1360 = getelementptr %"compiler/free:Free", ptr %t1358, i32 0, i32 35
  %t1361 = load i64, ptr %l82, !tbaa !24
  %t1364 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1360, i64 %t1361)
  store i1 %t1364, ptr %l679
  br label %bb326
bb326:
  %t1365 = load i1, ptr %l679, !tbaa !21
  store i1 %t1365, ptr %l675, !tbaa !21
  br label %bb327
bb327:
  %t1366 = load i1, ptr %l675, !tbaa !21
  br i1 %t1366, label %bb328, label %bb329
bb328:
  %t1367 = load ptr, ptr %l0, !tbaa !29
  %t1368 = load i64, ptr %l82, !tbaa !24
  %t1371 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eimplicit(ptr %v0, ptr %t1367, i64 %t1368)
  store i1 %t1371, ptr %l682
  br label %bb330
bb329:
  br label %bb357
bb330:
  %t1372 = load i1, ptr %l682, !tbaa !21
  br i1 %t1372, label %bb331, label %bb332
bb331:
  %t1373 = load ptr, ptr %l0, !tbaa !29
  %t1374 = load i64, ptr %l82, !tbaa !24
  %t1377 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emodelled(ptr %v0, ptr %t1373, i64 %t1374)
  store i1 %t1377, ptr %l686
  br label %bb333
bb332:
  store i1 false, ptr %l683, !tbaa !21
  br label %bb334
bb333:
  %t1378 = load i1, ptr %l686, !tbaa !21
  %t1379 = xor i1 %t1378, true
  store i1 %t1379, ptr %l683, !tbaa !21
  br label %bb334
bb334:
  %t1381 = load i1, ptr %l683, !tbaa !21
  br i1 %t1381, label %bb335, label %bb336
bb335:
  %t1382 = load ptr, ptr %l0, !tbaa !29
  %t1384 = getelementptr %"compiler/free:Free", ptr %t1382, i32 0, i32 35
  %t1385 = load i64, ptr %l82, !tbaa !24
  %t1388 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1384, i64 %t1385)
  store i1 %t1388, ptr %l691
  br label %bb337
bb336:
  br label %bb356
bb337:
  %t1389 = load i1, ptr %l691, !tbaa !21
  br i1 %t1389, label %bb338, label %bb339
bb338:
  %t1390 = load ptr, ptr %l0, !tbaa !29
  %t1392 = getelementptr %"compiler/free:Free", ptr %t1390, i32 0, i32 44
  store i1 true, ptr %t1392, !tbaa !21
  br label %bb342
bb339:
  %t1393 = load ptr, ptr %l0, !tbaa !29
  %t1395 = getelementptr %"compiler/free:Free", ptr %t1393, i32 0, i32 45
  store ptr %t1395, ptr %l694, !tbaa !29
  %t1396 = load ptr, ptr %l0, !tbaa !29
  %t1398 = getelementptr %"compiler/free:Free", ptr %t1396, i32 0, i32 34
  %t1399 = load i64, ptr %l82, !tbaa !24
  %t1402 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1398, i64 %t1399)
  store ptr %t1402, ptr %l698
  br label %bb340
bb340:
  %t1403 = load ptr, ptr %l694, !tbaa !29
  %t1404 = load ptr, ptr %l698, !tbaa !29
  %t1405 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %v0, ptr %t1403, ptr %t1404)
  store i64 %t1405, ptr %l699
  br label %bb341
bb341:
  br label %bb342
bb342:
  %t1406 = load ptr, ptr %l0, !tbaa !29
  %t1408 = getelementptr %"compiler/free:Free", ptr %t1406, i32 0, i32 79
  %t1409 = load i1, ptr %t1408, !tbaa !21
  br i1 %t1409, label %bb343, label %bb344
bb343:
  store %olang.scope zeroinitializer, ptr %s62
  %t1411 = load ptr, ptr %l0, !tbaa !29
  %t1412 = load i64, ptr %l82, !tbaa !24
  %t1415 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s62, ptr %t1411, i64 %t1412)
  store { i64, ptr } %t1415, ptr %l704
  br label %bb345
bb344:
  br label %bb355
bb345:
  %t1416 = load ptr, ptr %l0, !tbaa !29
  %t1418 = getelementptr %"compiler/free:Free", ptr %t1416, i32 0, i32 0
  %t1419 = load ptr, ptr %t1418, !tbaa !29
  %t1421 = getelementptr %"compiler/generic:Program", ptr %t1419, i32 0, i32 0
  %t1422 = load ptr, ptr %t1421, !tbaa !29
  %t1424 = getelementptr %"compiler/load:Loader", ptr %t1422, i32 0, i32 4
  %t1425 = load ptr, ptr %t1424, !tbaa !29
  store ptr %t1425, ptr %l708, !tbaa !29
  %t1426 = load ptr, ptr %l0, !tbaa !29
  %t1428 = getelementptr %"compiler/free:Free", ptr %t1426, i32 0, i32 1
  %t1429 = load i64, ptr %l82, !tbaa !24
  %t1432 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t1428, i64 %t1429)
  store ptr %t1432, ptr %l712
  br label %bb346
bb346:
  %t1433 = load ptr, ptr %l712, !tbaa !29
  %t1435 = getelementptr %"compiler/typed:Body", ptr %t1433, i32 0, i32 3
  %t1436 = load i64, ptr %t1435, !tbaa !24
  store i64 %t1436, ptr %l714, !tbaa !24
  %t1437 = load ptr, ptr %l0, !tbaa !29
  %t1439 = getelementptr %"compiler/free:Free", ptr %t1437, i32 0, i32 1
  %t1440 = load i64, ptr %l82, !tbaa !24
  %t1443 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t1439, i64 %t1440)
  store ptr %t1443, ptr %l718
  br label %bb347
bb347:
  %t1444 = load ptr, ptr %l718, !tbaa !29
  %t1446 = getelementptr %"compiler/typed:Body", ptr %t1444, i32 0, i32 4
  %t1447 = getelementptr %"compiler/source:Span", ptr %t1446, i32 0, i32 0
  %t1448 = load i32, ptr %t1447, !tbaa !23
  %t1450 = sext i32 %t1448 to i64
  %t1451 = load ptr, ptr %l708, !tbaa !29
  %t1452 = load i64, ptr %l714, !tbaa !24
  %t1454 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s62, ptr %t1451, i64 %t1452, i64 %t1450)
  store { i64, ptr } %t1454, ptr %l722
  br label %bb348
bb348:
  %t1455 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t1456 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t1457 = load { i64, ptr }, ptr %l704, !tbaa !27
  %t1458 = extractvalue { i64, ptr } %t1457, 1
  %t1459 = extractvalue { i64, ptr } %t1457, 0
  %t1460 = add i64 %t1456, %t1459
  %t1461 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t1462 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t1463 = add i64 %t1460, %t1462
  %t1464 = load { i64, ptr }, ptr %l722, !tbaa !27
  %t1465 = extractvalue { i64, ptr } %t1464, 1
  %t1466 = extractvalue { i64, ptr } %t1464, 0
  %t1467 = add i64 %t1463, %t1466
  %t1468 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t1469 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t1470 = add i64 %t1467, %t1469
  %t1471 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1470)
  call void @olang_textcopy(ptr %t1471, ptr %t1455, i64 %t1456)
  %t1472 = getelementptr i8, ptr %t1471, i64 %t1456
  call void @olang_textcopy(ptr %t1472, ptr %t1458, i64 %t1459)
  %t1473 = getelementptr i8, ptr %t1472, i64 %t1459
  call void @olang_textcopy(ptr %t1473, ptr %t1461, i64 %t1462)
  %t1474 = getelementptr i8, ptr %t1473, i64 %t1462
  call void @olang_textcopy(ptr %t1474, ptr %t1465, i64 %t1466)
  %t1475 = getelementptr i8, ptr %t1474, i64 %t1466
  call void @olang_textcopy(ptr %t1475, ptr %t1468, i64 %t1469)
  %t1476 = insertvalue { i64, ptr } undef, i64 %t1470, 0
  %t1477 = insertvalue { i64, ptr } %t1476, ptr %t1471, 1
  %t1479 = extractvalue { i64, ptr } %t1477, 0
  %t1480 = extractvalue { i64, ptr } %t1477, 1
  %t1481 = mul i64 %t1479, 1
  %t1482 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1481)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1482, ptr %t1480, i64 %t1481, i1 false)
  %t1483 = insertvalue { i64, ptr } undef, i64 %t1479, 0
  %t1484 = insertvalue { i64, ptr } %t1483, ptr %t1482, 1
  %t1486 = call i32 @std_2fio_2ePrintErr(ptr %s62, { i64, ptr } %t1484)
  store i32 %t1486, ptr %l725
  %t1487 = icmp ne i32 %t1486, 0
  br i1 %t1487, label %bb350, label %ok.1488, !prof !99
ok.1488:
  br label %bb349
bb349:
  br label %bb354
bb350:
  %t1489 = load i32, ptr %l725, !tbaa !23
  %t1490 = ashr i32 %t1489, 16
  %t1492 = icmp eq i32 %t1490, 1
  store i1 %t1492, ptr %l727, !tbaa !21
  %t1493 = load i32, ptr %l725, !tbaa !23
  %t1494 = ashr i32 %t1493, 16
  %t1496 = icmp eq i32 %t1494, 1
  br i1 %t1496, label %bb351, label %bb352
bb351:
  call void @__olang_errpay_pop()
  br label %bb352
bb352:
  br label %bb353
bb353:
  br label %bb354
bb354:
  call void @__olang_scope_close(ptr %s62)
  br label %bb355
bb355:
  br label %bb356
bb356:
  br label %bb357
bb357:
  br label %bb358
bb358:
  %t1498 = load i64, ptr %l81, !tbaa !24
  %t1500 = add i64 %t1498, 1
  store i64 %t1500, ptr %l81, !tbaa !24
  br label %bb318
bb359:
  %t1502 = call i64 @std_2ftime_2eNow()
  store i64 %t1502, ptr %l732
  br label %bb360
bb360:
  %t1503 = load i64, ptr %l732, !tbaa !24
  store i64 %t1503, ptr %l83, !tbaa !24
  store i64 0, ptr %l84, !tbaa !24
  %t1504 = load i64, ptr %l3, !tbaa !24
  store i64 %t1504, ptr %l85, !tbaa !24
  store i64 1, ptr %l86, !tbaa !24
  %t1506 = load i64, ptr %l85, !tbaa !24
  %t1507 = load i64, ptr %l84, !tbaa !24
  %t1510 = icmp sgt i64 %t1506, %t1507
  br i1 %t1510, label %bb361, label %bb362
bb361:
  %t1512 = load i64, ptr %l86, !tbaa !24
  %t1514 = icmp sgt i64 %t1512, 0
  br i1 %t1514, label %bb363, label %bb364
bb362:
  store i64 0, ptr %l737, !tbaa !24
  br label %bb366
bb363:
  %t1516 = load i64, ptr %l85, !tbaa !24
  %t1517 = load i64, ptr %l84, !tbaa !24
  %t1520 = sub i64 %t1516, %t1517
  %t1521 = load i64, ptr %l86, !tbaa !24
  %t1524 = add i64 %t1520, %t1521
  %t1526 = sub i64 %t1524, 1
  %t1527 = load i64, ptr %l86, !tbaa !24
  %t1530 = sdiv i64 %t1526, %t1527
  store i64 %t1530, ptr %l740, !tbaa !24
  br label %bb365
bb364:
  store i64 0, ptr %l740, !tbaa !24
  br label %bb365
bb365:
  %t1532 = load i64, ptr %l740, !tbaa !24
  store i64 %t1532, ptr %l737, !tbaa !24
  br label %bb366
bb366:
  %t1533 = load i64, ptr %l737, !tbaa !24
  store i64 %t1533, ptr %l87, !tbaa !24
  store i64 0, ptr %l88, !tbaa !24
  br label %bb367
bb367:
  %t1534 = load i64, ptr %l88, !tbaa !24
  %t1535 = load i64, ptr %l87, !tbaa !24
  %t1538 = icmp slt i64 %t1534, %t1535
  %t1540 = xor i1 %t1538, true
  br i1 %t1540, label %bb368, label %bb369
bb368:
  br label %bb373
bb369:
  br label %bb370
bb370:
  %t1542 = load i64, ptr %l84, !tbaa !24
  %t1543 = load i64, ptr %l88, !tbaa !24
  %t1544 = load i64, ptr %l86, !tbaa !24
  %t1547 = mul i64 %t1543, %t1544
  %t1550 = add i64 %t1542, %t1547
  %t1552 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewalk(ptr %v0, ptr %t1552, i64 %t1550, i1 true)
  br label %bb371
bb371:
  br label %bb372
bb372:
  %t1556 = load i64, ptr %l88, !tbaa !24
  %t1558 = add i64 %t1556, 1
  store i64 %t1558, ptr %l88, !tbaa !24
  br label %bb367
bb373:
  %t1560 = call i64 @std_2ftime_2eNow()
  store i64 %t1560, ptr %l762
  br label %bb374
bb374:
  %t1561 = load i64, ptr %l762, !tbaa !24
  store i64 %t1561, ptr %l90, !tbaa !24
  %t1562 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1562, ptr %l763, !tbaa !29
  %t1563 = load ptr, ptr %l0, !tbaa !29
  %t1565 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ereachedTasks(ptr %v0, ptr %t1563)
  store i1 %t1565, ptr %l765
  br label %bb375
bb375:
  %t1566 = load i1, ptr %l765, !tbaa !21
  %t1567 = load ptr, ptr %l763, !tbaa !29
  %t1568 = getelementptr %"compiler/free:Free", ptr %t1567, i32 0, i32 41
  store i1 %t1566, ptr %t1568, !tbaa !21
  %t1569 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2egenKeeps(ptr %v0, ptr %t1569)
  br label %bb376
bb376:
  %t1571 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2edecide(ptr %v0, ptr %t1571)
  br label %bb377
bb377:
  %t1573 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eclassifyHolders(ptr %v0, ptr %t1573)
  br label %bb378
bb378:
  %t1575 = load ptr, ptr %l0, !tbaa !29
  %t1577 = getelementptr %"compiler/free:Free", ptr %t1575, i32 0, i32 78
  store i1 true, ptr %t1577, !tbaa !21
  %t1578 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewritePlans(ptr %v0, ptr %t1578)
  br label %bb379
bb379:
  %t1580 = call i64 @std_2ftime_2eNow()
  store i64 %t1580, ptr %l771
  br label %bb380
bb380:
  %t1581 = load i64, ptr %l771, !tbaa !24
  store i64 %t1581, ptr %l91, !tbaa !24
  %t1582 = load ptr, ptr %l0, !tbaa !29
  %t1584 = getelementptr %"compiler/free:Free", ptr %t1582, i32 0, i32 79
  %t1585 = load i1, ptr %t1584, !tbaa !21
  br i1 %t1585, label %bb381, label %bb382
bb381:
  store %olang.scope zeroinitializer, ptr %s69
  %t1587 = load i64, ptr %l90, !tbaa !24
  %t1588 = load i64, ptr %l83, !tbaa !24
  %t1591 = sub i64 %t1587, %t1588
  %t1593 = sdiv i64 %t1591, 1000000
  store i64 %t1593, ptr %l777, !tbaa !24
  %t1594 = load ptr, ptr %l0, !tbaa !29
  %t1596 = getelementptr %"compiler/free:Free", ptr %t1594, i32 0, i32 47
  %t1598 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t1596)
  store i64 %t1598, ptr %l780
  br label %bb383
bb382:
  br label %bb391
bb383:
  %t1599 = load ptr, ptr %l0, !tbaa !29
  %t1601 = getelementptr %"compiler/free:Free", ptr %t1599, i32 0, i32 46
  %t1603 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t1601)
  store i64 %t1603, ptr %l783
  br label %bb384
bb384:
  %t1604 = load i64, ptr %l91, !tbaa !24
  %t1605 = load i64, ptr %l90, !tbaa !24
  %t1608 = sub i64 %t1604, %t1605
  %t1610 = sdiv i64 %t1608, 1000000
  %t1611 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t1612 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t1613 = load i64, ptr %l777, !tbaa !24
  %t1614 = call i64 @__olang_fmt_i64(ptr null, i64 %t1613)
  %t1615 = add i64 %t1612, %t1614
  %t1616 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t1617 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t1618 = add i64 %t1615, %t1617
  %t1619 = load i64, ptr %l780, !tbaa !24
  %t1620 = call i64 @__olang_fmt_i64(ptr null, i64 %t1619)
  %t1621 = add i64 %t1618, %t1620
  %t1622 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t1623 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t1624 = add i64 %t1621, %t1623
  %t1625 = load i64, ptr %l783, !tbaa !24
  %t1626 = call i64 @__olang_fmt_i64(ptr null, i64 %t1625)
  %t1627 = add i64 %t1624, %t1626
  %t1628 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t1629 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t1630 = add i64 %t1627, %t1629
  %t1632 = call i64 @__olang_fmt_i64(ptr null, i64 %t1610)
  %t1633 = add i64 %t1630, %t1632
  %t1634 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t1635 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t1636 = add i64 %t1633, %t1635
  %t1637 = call ptr @__olang_scope_alloc(ptr %s69, i64 %t1636)
  call void @olang_textcopy(ptr %t1637, ptr %t1611, i64 %t1612)
  %t1638 = getelementptr i8, ptr %t1637, i64 %t1612
  %t1639 = call i64 @__olang_fmt_i64(ptr %t1638, i64 %t1613)
  %t1640 = getelementptr i8, ptr %t1638, i64 %t1614
  call void @olang_textcopy(ptr %t1640, ptr %t1616, i64 %t1617)
  %t1641 = getelementptr i8, ptr %t1640, i64 %t1617
  %t1642 = call i64 @__olang_fmt_i64(ptr %t1641, i64 %t1619)
  %t1643 = getelementptr i8, ptr %t1641, i64 %t1620
  call void @olang_textcopy(ptr %t1643, ptr %t1622, i64 %t1623)
  %t1644 = getelementptr i8, ptr %t1643, i64 %t1623
  %t1645 = call i64 @__olang_fmt_i64(ptr %t1644, i64 %t1625)
  %t1646 = getelementptr i8, ptr %t1644, i64 %t1626
  call void @olang_textcopy(ptr %t1646, ptr %t1628, i64 %t1629)
  %t1647 = getelementptr i8, ptr %t1646, i64 %t1629
  %t1648 = call i64 @__olang_fmt_i64(ptr %t1647, i64 %t1610)
  %t1649 = getelementptr i8, ptr %t1647, i64 %t1632
  call void @olang_textcopy(ptr %t1649, ptr %t1634, i64 %t1635)
  %t1650 = insertvalue { i64, ptr } undef, i64 %t1636, 0
  %t1651 = insertvalue { i64, ptr } %t1650, ptr %t1637, 1
  %t1653 = extractvalue { i64, ptr } %t1651, 0
  %t1654 = extractvalue { i64, ptr } %t1651, 1
  %t1655 = mul i64 %t1653, 1
  %t1656 = call ptr @__olang_scope_alloc(ptr %s69, i64 %t1655)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1656, ptr %t1654, i64 %t1655, i1 false)
  %t1657 = insertvalue { i64, ptr } undef, i64 %t1653, 0
  %t1658 = insertvalue { i64, ptr } %t1657, ptr %t1656, 1
  %t1660 = call i32 @std_2fio_2ePrintErr(ptr %s69, { i64, ptr } %t1658)
  store i32 %t1660, ptr %l790
  %t1661 = icmp ne i32 %t1660, 0
  br i1 %t1661, label %bb386, label %ok.1662, !prof !99
ok.1662:
  br label %bb385
bb385:
  br label %bb390
bb386:
  %t1663 = load i32, ptr %l790, !tbaa !23
  %t1664 = ashr i32 %t1663, 16
  %t1666 = icmp eq i32 %t1664, 1
  store i1 %t1666, ptr %l792, !tbaa !21
  %t1667 = load i32, ptr %l790, !tbaa !23
  %t1668 = ashr i32 %t1667, 16
  %t1670 = icmp eq i32 %t1668, 1
  br i1 %t1670, label %bb387, label %bb388
bb387:
  call void @__olang_errpay_pop()
  br label %bb388
bb388:
  br label %bb389
bb389:
  br label %bb390
bb390:
  call void @__olang_scope_close(ptr %s69)
  br label %bb391
bb391:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsHandle(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i1
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
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 11
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t8)
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
  %t18 = getelementptr %"compiler/free:Free", ptr %t16, i32 0, i32 11
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t18, i64 %t19)
  store i1 %t22, ptr %l14
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t23 = load i1, ptr %l14, !tbaa !21
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePlaceKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i32
  %l9 = alloca i64
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 9
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t3, i64 %t4)
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:Free", ptr %t8, i32 0, i32 10
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t10, i64 %t11)
  store i64 %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = insertvalue { i32, i64 } undef, i32 %t15, 0
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = insertvalue { i32, i64 } %t16, i64 %t17, 1
  store { i32, i64 } %t18, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ePlaceOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i64
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t9, ptr %a1)
  store i64 %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load i64, ptr %l8, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eentry(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i64
  %l19 = alloca i1
  %l23 = alloca i1
  %l26 = alloca ptr
  %l30 = alloca i64
  %l31 = alloca ptr
  %l36 = alloca i1
  %l39 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i1
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
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i64 }, ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  store i64 %t22, ptr %l12, !tbaa !24
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1c505c1b55d06586_a0a7e4d6315dd1d2)
  unreachable
bb10:
  %t24 = load i64, ptr %l12, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp slt i64 %t25, 0
  br i1 %t27, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb14
bb12:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 43
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t31, i64 %t32)
  store i1 %t35, ptr %l23
  br label %bb13
bb13:
  %t36 = load i1, ptr %l23, !tbaa !21
  store i1 %t36, ptr %l19, !tbaa !21
  br label %bb14
bb14:
  %t37 = load i1, ptr %l19, !tbaa !21
  br i1 %t37, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/free:Free", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l26, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/free:Free", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t46, i64 %t47)
  store i64 %t50, ptr %l30
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = load i64, ptr %l30, !tbaa !24
  %t53 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t53, ptr %l31
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l31, !tbaa !29
  store ptr %t54, ptr %l5, !tbaa !29
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/ast:Func", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb22
bb21:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = getelementptr %"compiler/ast:Func", ptr %t64, i32 0, i32 7
  %t67 = load i1, ptr %t66, !tbaa !21
  store i1 %t67, ptr %l36, !tbaa !21
  br label %bb22
bb22:
  %t69 = load i1, ptr %l36, !tbaa !21
  br i1 %t69, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb27
bb24:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/free:Free", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/load:Loader", ptr %t76, i32 0, i32 3
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t79, i32 %t83)
  store { i64, ptr } %t86, ptr %l46
  br label %bb25
bb25:
  %t87 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t88, ptr %l47
  br label %bb26
bb26:
  %t89 = load i1, ptr %l47, !tbaa !21
  store i1 %t89, ptr %l39, !tbaa !21
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t90 = load i1, ptr %l39, !tbaa !21
  store i1 %t90, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedFits(ptr %v0, ptr %a0, %"compiler/free:feedCall" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/free:feedCall"
  %l2 = alloca %"compiler/free:feed"
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca ptr
  %l9 = alloca %"compiler/free:feed"
  %l13 = alloca i64
  %l20 = alloca ptr
  %l25 = alloca { i64, [2 x i64] }
  %l26 = alloca { i64, [2 x i64] }
  %l28 = alloca { i64, [2 x i64] }
  %l30 = alloca i1
  %l37 = alloca ptr
  %l48 = alloca i64
  %l50 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/free:feedCall" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 73
  %t4 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 4
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t3, i64 %t5)
  store %"compiler/free:feed" %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load %"compiler/free:feed", ptr %l9
  store %"compiler/free:feed" %t9, ptr %l2
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 3
  %t14 = load i64, ptr %t13, !tbaa !24
  %t18 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t10, i64 %t12, i64 %t14)
  store i64 %t18, ptr %l13
  br label %bb2
bb2:
  %t19 = load i64, ptr %l13, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp slt i64 %t20, 0
  br i1 %t22, label %bb3, label %bb4
bb3:
  store i1 true, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/free:Free", ptr %t25, i32 0, i32 3
  %t28 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 0
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t27, i64 %t29)
  store ptr %t32, ptr %l20
  br label %bb6
bb6:
  %t33 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 1
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = trunc i64 %t34 to i32
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t42 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t39, i32 %t36, i64 %t38)
  store { i64, [2 x i64] } %t42, ptr %l25
  br label %bb7
bb7:
  %t43 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t43, ptr %l4
  %t44 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t44, ptr %l26
  %t45 = getelementptr %"compiler/free:feed", ptr %l2, i32 0, i32 4
  %t46 = load { i64, [2 x i64] }, ptr %t45
  store { i64, [2 x i64] } %t46, ptr %l28
  %t49 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l26, ptr %l28)
  store i1 %t49, ptr %l30
  br label %bb8
bb8:
  %t50 = load i1, ptr %l30, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  %t53 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 5
  %t54 = load i1, ptr %t53, !tbaa !21
  %t56 = xor i1 %t54, true
  store i1 %t56, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 0
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 1
  %t62 = load i64, ptr %t61, !tbaa !24
  %t66 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecallAt(ptr %v0, ptr %v0, ptr %t58, i64 %t60, i64 %t62)
  store ptr %t66, ptr %l37
  br label %bb12
bb12:
  %t67 = load ptr, ptr %l37, !tbaa !29
  store ptr %t67, ptr %l5, !tbaa !29
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t70 = icmp eq ptr %t68, null
  br i1 %t70, label %bb13, label %bb14
bb13:
  %t72 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 5
  %t73 = load i1, ptr %t72, !tbaa !21
  %t75 = xor i1 %t73, true
  store i1 %t75, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 0
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t81 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 2
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load { i64, [2 x i64] }, ptr %l4
  %t84 = load i64, ptr %l3, !tbaa !24
  %t91 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eorVars(ptr %v0, ptr %v0, ptr %t77, i64 %t79, ptr %t80, i64 %t82, { i64, [2 x i64] } %t83, i64 %t84)
  store i64 %t91, ptr %l48
  br label %bb16
bb16:
  %t92 = load i64, ptr %l48, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  br i1 %t93, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb19
bb18:
  %t95 = getelementptr %"compiler/free:feedCall", ptr %l1, i32 0, i32 5
  %t96 = load i1, ptr %t95, !tbaa !21
  %t98 = xor i1 %t96, true
  store i1 %t98, ptr %l50, !tbaa !21
  br label %bb19
bb19:
  %t100 = load i1, ptr %l50, !tbaa !21
  store i1 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindCands(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindStmt(ptr %v0, ptr %v1, ptr %a0, ptr %t24)
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

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindFeeds(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"compiler/typed:LocalUses"
  %l8 = alloca ptr
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca i64
  %l17 = alloca ptr
  %l19 = alloca %"compiler/typed:LocalUses"
  %l20 = alloca ptr
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %t27 = alloca %"compiler/typed:LocalUses", align 8
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
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 14
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eLastCopies(ptr %v0, ptr %s0, ptr %t14, i1 true)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t16, ptr %l12
  br label %bb5
bb5:
  %t17 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t17, ptr %l3
  %t19 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %s0, ptr %l3)
  store i64 %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load i64, ptr %l14, !tbaa !24
  %t21 = icmp eq i64 %t20, 0
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l17
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t27, ptr %v0, ptr %v0, ptr %s0, ptr %t28, ptr %t26)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t27, i64 704, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l19, i64 704, i1 false)
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l20, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  store i64 %t31, ptr %l21, !tbaa !24
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t32, i32 0, i32 11
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_1a9841d5ac3bc9f7_8d61e2fce1a4aee3)
  unreachable
bb13:
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Body", ptr %t39, i32 0, i32 11
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t44 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t43, i64 %t44, ptr %t42, ptr %l3, ptr %l4)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisContents(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/free:letGo"
  %l8 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/free:letGo"
  %l23 = alloca i1
  %l27 = alloca i1
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 49
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i1, ptr %l8, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/free:Free", ptr %t10, i32 0, i32 47
  store ptr %t12, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l3, !tbaa !24
  store i64 %t14, ptr %l12, !tbaa !24
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb7, label %bb8
bb7:
  br label %bb22
bb8:
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t24, i64 %t25)
  store %"compiler/free:letGo" %t28, ptr %l19
  br label %bb10
bb10:
  %t29 = load %"compiler/free:letGo", ptr %l19
  store %"compiler/free:letGo" %t29, ptr %l4
  %t30 = getelementptr %"compiler/free:letGo", ptr %l4, i32 0, i32 0
  %t31 = load i64, ptr %t30, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp eq i64 %t31, %t32
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t37 = getelementptr %"compiler/free:letGo", ptr %l4, i32 0, i32 5
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load i64, ptr @G_2ecompiler_2ffree_2eLVacate, !tbaa !24
  %t42 = icmp eq i64 %t38, %t39
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l23, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/free:Free", ptr %t45, i32 0, i32 23
  %t48 = getelementptr %"compiler/free:letGo", ptr %l4, i32 0, i32 1
  %t49 = load i64, ptr %t48, !tbaa !24
  %t52 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t47, i64 %t49)
  store i1 %t52, ptr %l31
  br label %bb16
bb15:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb17
bb16:
  %t53 = load i1, ptr %l31, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l3, !tbaa !24
  br label %bb5
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l75 = alloca i1
  %l76 = alloca i1
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l95 = alloca { i64, ptr }
  %l100 = alloca i1
  %l108 = alloca i1
  %l109 = alloca ptr
  %l115 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l130 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i1
  %l141 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca i1
  %l164 = alloca i1
  %l166 = alloca i1
  %l170 = alloca ptr
  %l174 = alloca i1
  %l178 = alloca i1
  %l180 = alloca ptr
  %l181 = alloca i1
  %l184 = alloca ptr
  %l185 = alloca i1
  %l197 = alloca { i64, ptr }
  %l202 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i1
  %l220 = alloca { i64, ptr }
  %l225 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l238 = alloca i1
  %l239 = alloca ptr
  %l240 = alloca i1
  %l248 = alloca i1
  %l249 = alloca i1
  %l254 = alloca i1
  %l255 = alloca ptr
  %l261 = alloca i1
  %l262 = alloca i1
  %l266 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i1
  %l277 = alloca i1
  %l278 = alloca ptr
  %l284 = alloca i1
  %l294 = alloca { i64, ptr }
  %l310 = alloca { i64, ptr }
  %l315 = alloca i1
  %l322 = alloca ptr
  %l323 = alloca i1
  %l328 = alloca i1
  %l329 = alloca ptr
  %l330 = alloca i1
  %l333 = alloca ptr
  %l334 = alloca i1
  %l343 = alloca i1
  %l344 = alloca ptr
  %l345 = alloca i1
  %l353 = alloca i1
  %l359 = alloca i1
  %l360 = alloca ptr
  %l366 = alloca i1
  %l367 = alloca ptr
  %l368 = alloca i1
  %l377 = alloca i1
  %l378 = alloca ptr
  %l384 = alloca i1
  %l390 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t2 = load ptr, ptr %l43, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l43, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l44, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l44, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb17
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t11 = load ptr, ptr %l47, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l47, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l48, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l48, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t20 = load ptr, ptr %l51, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l51, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 2
  store i1 %t26, ptr %l52, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l52, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t29 = load ptr, ptr %l55, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb13, label %bb14
bb13:
  %t32 = load ptr, ptr %l55, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 18}
  %t35 = icmp eq i64 %t33, 3
  store i1 %t35, ptr %l56, !tbaa !21
  br label %bb14
bb14:
  %t36 = load i1, ptr %l56, !tbaa !21
  br i1 %t36, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t39 = load ptr, ptr %l60, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb19, label %bb20
bb19:
  %t42 = load ptr, ptr %l60, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 4
  store i1 %t45, ptr %l61, !tbaa !21
  br label %bb20
bb20:
  %t46 = load i1, ptr %l61, !tbaa !21
  br i1 %t46, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %rv
  br label %ret
bb24:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t49 = load ptr, ptr %l65, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb25, label %bb26
bb25:
  %t52 = load ptr, ptr %l65, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 18}
  %t55 = icmp eq i64 %t53, 5
  store i1 %t55, ptr %l66, !tbaa !21
  br label %bb26
bb26:
  %t56 = load i1, ptr %l66, !tbaa !21
  br i1 %t56, label %bb27, label %bb28
bb27:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60
  store i32 %t61, ptr %l2, !tbaa !23
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l3, !tbaa !29
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l2, !tbaa !23
  %t73 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edestructs(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l75
  br label %bb30
bb30:
  %t74 = load i1, ptr %l75, !tbaa !21
  br i1 %t74, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb34
bb32:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Promote", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t82 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t75, ptr %t79)
  store i1 %t82, ptr %l80
  br label %bb33
bb33:
  %t83 = load i1, ptr %l80, !tbaa !21
  store i1 %t83, ptr %l76, !tbaa !21
  br label %bb34
bb34:
  %t84 = load i1, ptr %l76, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
bb35:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t86 = load ptr, ptr %l81, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb36, label %bb37
bb36:
  %t89 = load ptr, ptr %l81, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 18}
  %t92 = icmp eq i64 %t90, 7
  store i1 %t92, ptr %l82, !tbaa !21
  br label %bb37
bb37:
  %t93 = load i1, ptr %l82, !tbaa !21
  br i1 %t93, label %bb38, label %bb39
bb38:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr { i64, [5 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t96, i32 0, i32 2
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb58
bb40:
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Make", ptr %t100, i32 0, i32 2
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  store i64 %t107, ptr %l7, !tbaa !24
  br label %bb41
bb41:
  %t109 = load i64, ptr %l6, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb42, label %bb43
bb42:
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t117 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t117, ptr %l95, !tbaa !27
  %t118 = load i64, ptr %l6, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr ptr, ptr %t121, i64 %t118
  %t123 = load ptr, ptr %t122, !tbaa !39
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t129 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t125, ptr %t123)
  store i1 %t129, ptr %l100
  br label %bb45
bb45:
  %t130 = load i1, ptr %l100, !tbaa !21
  br i1 %t130, label %bb46, label %bb47
bb46:
  store i1 true, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t132 = load i64, ptr %l6, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l6, !tbaa !24
  br label %bb41
bb50:
  %t136 = load ptr, ptr %l4, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Make", ptr %t136, i32 0, i32 3
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = icmp eq ptr %t139, null
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb51, label %bb52
bb51:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l109, !tbaa !29
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Make", ptr %t146, i32 0, i32 3
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  br i1 %t151, label %bb53, label %bb54
bb52:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb57
bb53:
  call void @__olang_check_failed(ptr @olang_loc_ec4c329f8a2f93df_8cb0fdf9b7b252db)
  unreachable
bb54:
  br label %bb55
bb55:
  %t153 = load ptr, ptr %l4, !tbaa !29
  %t155 = getelementptr %"compiler/typed:Make", ptr %t153, i32 0, i32 3
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load ptr, ptr %l109, !tbaa !29
  %t159 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t157, ptr %t156)
  store i1 %t159, ptr %l115
  br label %bb56
bb56:
  %t160 = load i1, ptr %l115, !tbaa !21
  store i1 %t160, ptr %l108, !tbaa !21
  br label %bb57
bb57:
  %t161 = load i1, ptr %l108, !tbaa !21
  store i1 %t161, ptr %rv
  br label %ret
bb58:
  %t162 = load ptr, ptr %l1, !tbaa !29
  store ptr %t162, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t163 = load ptr, ptr %l116, !tbaa !29
  %t164 = icmp ne ptr %t163, null
  br i1 %t164, label %bb59, label %bb60
bb59:
  %t166 = load ptr, ptr %l116, !tbaa !29
  %t167 = load i64, ptr %t166, !range !{i64 0, i64 18}
  %t169 = icmp eq i64 %t167, 16
  store i1 %t169, ptr %l117, !tbaa !21
  br label %bb60
bb60:
  %t170 = load i1, ptr %l117, !tbaa !21
  br i1 %t170, label %bb61, label %bb62
bb61:
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr { i64, [5 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t173, i32 0, i32 2
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l9, !tbaa !29
  br label %bb63
bb62:
  br label %bb85
bb63:
  %t177 = load ptr, ptr %l9, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Text", ptr %t177, i32 0, i32 0
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  store { i64, ptr } %t180, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t182, 0
  store i64 %t184, ptr %l12, !tbaa !24
  br label %bb64
bb64:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t187 = load i64, ptr %l12, !tbaa !24
  %t190 = icmp slt i64 %t186, %t187
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb65, label %bb66
bb65:
  br label %bb84
bb66:
  br label %bb67
bb67:
  %t194 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t194, ptr %l130, !tbaa !27
  %t195 = load i64, ptr %l11, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr ptr, ptr %t198, i64 %t195
  %t200 = load ptr, ptr %t199, !tbaa !39
  store ptr %t200, ptr %l13, !tbaa !29
  %t202 = load ptr, ptr %l13, !tbaa !29
  store ptr %t202, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t203 = load ptr, ptr %l133, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb68, label %bb69
bb68:
  %t206 = load ptr, ptr %l133, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 2}
  %t209 = icmp eq i64 %t207, 1
  store i1 %t209, ptr %l134, !tbaa !21
  br label %bb69
bb69:
  %t210 = load i1, ptr %l134, !tbaa !21
  br i1 %t210, label %bb70, label %bb71
bb70:
  %t211 = load ptr, ptr %l13, !tbaa !29
  %t213 = getelementptr { i64, [2 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { ptr }, ptr %t213, i32 0, i32 0
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l14, !tbaa !29
  br label %bb72
bb71:
  br label %bb77
bb72:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load ptr, ptr %l14, !tbaa !29
  %t221 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t217, ptr %t218)
  store i1 %t221, ptr %l141
  br label %bb73
bb73:
  %t222 = load i1, ptr %l141, !tbaa !21
  br i1 %t222, label %bb74, label %bb75
bb74:
  store i1 true, ptr %rv
  br label %ret
bb75:
  br label %bb76
bb76:
  br label %bb82
bb77:
  br i1 true, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_285dc0af82d31c87_50e1bc6ae6554e83)
  unreachable
bb82:
  br label %bb83
bb83:
  %t224 = load i64, ptr %l11, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l11, !tbaa !24
  br label %bb64
bb84:
  store i1 false, ptr %rv
  br label %ret
bb85:
  %t229 = load ptr, ptr %l1, !tbaa !29
  store ptr %t229, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t230 = load ptr, ptr %l146, !tbaa !29
  %t231 = icmp ne ptr %t230, null
  br i1 %t231, label %bb86, label %bb87
bb86:
  %t233 = load ptr, ptr %l146, !tbaa !29
  %t234 = load i64, ptr %t233, !range !{i64 0, i64 18}
  %t236 = icmp eq i64 %t234, 6
  store i1 %t236, ptr %l147, !tbaa !21
  br label %bb87
bb87:
  %t237 = load i1, ptr %l147, !tbaa !21
  br i1 %t237, label %bb88, label %bb89
bb88:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = getelementptr { i64, [5 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t240, i32 0, i32 2
  %t242 = load ptr, ptr %t241
  store ptr %t242, ptr %l15, !tbaa !29
  br label %bb90
bb89:
  br label %bb134
bb90:
  %t244 = load ptr, ptr %l15, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Call", ptr %t244, i32 0, i32 0
  %t247 = load ptr, ptr %t246, !tbaa !29
  store ptr %t247, ptr %l16, !tbaa !29
  %t249 = load ptr, ptr %l16, !tbaa !29
  store ptr %t249, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t250 = load ptr, ptr %l154, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb91, label %bb92
bb91:
  %t253 = load ptr, ptr %l154, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 5}
  %t256 = icmp eq i64 %t254, 0
  store i1 %t256, ptr %l155, !tbaa !21
  br label %bb92
bb92:
  %t257 = load i1, ptr %l155, !tbaa !21
  br i1 %t257, label %bb93, label %bb94
bb93:
  %t258 = load ptr, ptr %l16, !tbaa !29
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { i32 }, ptr %t260, i32 0, i32 0
  %t262 = load i32, ptr %t261
  store i32 %t262, ptr %l17, !tbaa !23
  br label %bb95
bb94:
  br label %bb108
bb95:
  %t264 = load i32, ptr %l17, !tbaa !23
  %t266 = sext i32 %t264 to i64
  store i64 %t266, ptr %l18, !tbaa !24
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load i64, ptr %l18, !tbaa !24
  %t272 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisCase(ptr %v0, ptr %t268, i64 %t269)
  store i1 %t272, ptr %l164
  br label %bb96
bb96:
  %t273 = load i1, ptr %l164, !tbaa !21
  %t274 = xor i1 %t273, true
  br i1 %t274, label %bb97, label %bb98
bb97:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/free:Free", ptr %t276, i32 0, i32 1
  %t279 = load i64, ptr %l18, !tbaa !24
  %t282 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t278, i64 %t279)
  store ptr %t282, ptr %l170
  br label %bb99
bb98:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb104
bb99:
  %t283 = load ptr, ptr %l170, !tbaa !29
  %t285 = getelementptr %"compiler/typed:Body", ptr %t283, i32 0, i32 11
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t288 = icmp eq ptr %t286, null
  br i1 %t288, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb103
bb101:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/free:Free", ptr %t290, i32 0, i32 38
  %t293 = load i64, ptr %l18, !tbaa !24
  %t296 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t292, i64 %t293)
  store i1 %t296, ptr %l178
  br label %bb102
bb102:
  %t297 = load i1, ptr %l178, !tbaa !21
  store i1 %t297, ptr %l174, !tbaa !21
  br label %bb103
bb103:
  %t298 = load i1, ptr %l174, !tbaa !21
  store i1 %t298, ptr %l166, !tbaa !21
  br label %bb104
bb104:
  %t299 = load i1, ptr %l166, !tbaa !21
  br i1 %t299, label %bb105, label %bb106
bb105:
  store i1 true, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  br label %bb123
bb108:
  %t301 = load ptr, ptr %l16, !tbaa !29
  store ptr %t301, ptr %l180, !tbaa !29
  store i1 false, ptr %l181, !tbaa !21
  %t302 = load ptr, ptr %l180, !tbaa !29
  %t303 = icmp ne ptr %t302, null
  br i1 %t303, label %bb109, label %bb110
bb109:
  %t305 = load ptr, ptr %l180, !tbaa !29
  %t306 = load i64, ptr %t305, !range !{i64 0, i64 5}
  %t308 = icmp eq i64 %t306, 4
  store i1 %t308, ptr %l181, !tbaa !21
  br label %bb110
bb110:
  %t309 = load i1, ptr %l181, !tbaa !21
  br i1 %t309, label %bb111, label %bb112
bb111:
  br label %bb117
bb112:
  %t310 = load ptr, ptr %l16, !tbaa !29
  store ptr %t310, ptr %l184, !tbaa !29
  store i1 false, ptr %l185, !tbaa !21
  %t311 = load ptr, ptr %l184, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb113, label %bb114
bb113:
  %t314 = load ptr, ptr %l184, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 5}
  %t317 = icmp eq i64 %t315, 1
  store i1 %t317, ptr %l185, !tbaa !21
  br label %bb114
bb114:
  %t318 = load i1, ptr %l185, !tbaa !21
  br i1 %t318, label %bb115, label %bb116
bb115:
  br label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb123
bb118:
  br i1 true, label %bb119, label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb122
bb121:
  store i1 true, ptr %rv
  br label %ret
bb122:
  call void @__olang_check_failed(ptr @olang_loc_f9703b3e8b4d3f8c_114f0f1572d2eea8)
  unreachable
bb123:
  %t320 = load ptr, ptr %l15, !tbaa !29
  %t322 = getelementptr %"compiler/typed:Call", ptr %t320, i32 0, i32 1
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  store { i64, ptr } %t323, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t325 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t325, 0
  store i64 %t327, ptr %l21, !tbaa !24
  br label %bb124
bb124:
  %t329 = load i64, ptr %l20, !tbaa !24
  %t330 = load i64, ptr %l21, !tbaa !24
  %t333 = icmp slt i64 %t329, %t330
  %t335 = xor i1 %t333, true
  br i1 %t335, label %bb125, label %bb126
bb125:
  br label %bb133
bb126:
  br label %bb127
bb127:
  %t337 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t337, ptr %l197, !tbaa !27
  %t338 = load i64, ptr %l20, !tbaa !24
  %t340 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = getelementptr ptr, ptr %t341, i64 %t338
  %t343 = load ptr, ptr %t342, !tbaa !39
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t349 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t345, ptr %t343)
  store i1 %t349, ptr %l202
  br label %bb128
bb128:
  %t350 = load i1, ptr %l202, !tbaa !21
  br i1 %t350, label %bb129, label %bb130
bb129:
  store i1 true, ptr %rv
  br label %ret
bb130:
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t352 = load i64, ptr %l20, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l20, !tbaa !24
  br label %bb124
bb133:
  store i1 false, ptr %rv
  br label %ret
bb134:
  %t357 = load ptr, ptr %l1, !tbaa !29
  store ptr %t357, ptr %l207, !tbaa !29
  store i1 false, ptr %l208, !tbaa !21
  %t358 = load ptr, ptr %l207, !tbaa !29
  %t359 = icmp ne ptr %t358, null
  br i1 %t359, label %bb135, label %bb136
bb135:
  %t361 = load ptr, ptr %l207, !tbaa !29
  %t362 = load i64, ptr %t361, !range !{i64 0, i64 18}
  %t364 = icmp eq i64 %t362, 9
  store i1 %t364, ptr %l208, !tbaa !21
  br label %bb136
bb136:
  %t365 = load i1, ptr %l208, !tbaa !21
  br i1 %t365, label %bb137, label %bb138
bb137:
  %t366 = load ptr, ptr %l1, !tbaa !29
  %t368 = getelementptr { i64, [5 x i64] }, ptr %t366, i32 0, i32 1
  %t369 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t368, i32 0, i32 4
  %t370 = load { i64, ptr }, ptr %t369
  store { i64, ptr } %t370, ptr %l23, !tbaa !27
  br label %bb139
bb138:
  br label %bb150
bb139:
  %t372 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t372, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t374 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t374, 0
  store i64 %t376, ptr %l26, !tbaa !24
  br label %bb140
bb140:
  %t378 = load i64, ptr %l25, !tbaa !24
  %t379 = load i64, ptr %l26, !tbaa !24
  %t382 = icmp slt i64 %t378, %t379
  %t384 = xor i1 %t382, true
  br i1 %t384, label %bb141, label %bb142
bb141:
  br label %bb149
bb142:
  br label %bb143
bb143:
  %t386 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t386, ptr %l220, !tbaa !27
  %t387 = load i64, ptr %l25, !tbaa !24
  %t389 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = getelementptr ptr, ptr %t390, i64 %t387
  %t392 = load ptr, ptr %t391, !tbaa !39
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t398 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t394, ptr %t392)
  store i1 %t398, ptr %l225
  br label %bb144
bb144:
  %t399 = load i1, ptr %l225, !tbaa !21
  br i1 %t399, label %bb145, label %bb146
bb145:
  store i1 true, ptr %rv
  br label %ret
bb146:
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t401 = load i64, ptr %l25, !tbaa !24
  %t403 = add i64 %t401, 1
  store i64 %t403, ptr %l25, !tbaa !24
  br label %bb140
bb149:
  store i1 false, ptr %rv
  br label %ret
bb150:
  %t406 = load ptr, ptr %l1, !tbaa !29
  store ptr %t406, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t407 = load ptr, ptr %l230, !tbaa !29
  %t408 = icmp ne ptr %t407, null
  br i1 %t408, label %bb151, label %bb152
bb151:
  %t410 = load ptr, ptr %l230, !tbaa !29
  %t411 = load i64, ptr %t410, !range !{i64 0, i64 18}
  %t413 = icmp eq i64 %t411, 17
  store i1 %t413, ptr %l231, !tbaa !21
  br label %bb152
bb152:
  %t414 = load i1, ptr %l231, !tbaa !21
  br i1 %t414, label %bb153, label %bb154
bb153:
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr { i64, [5 x i64] }, ptr %t415, i32 0, i32 1
  %t418 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t417, i32 0, i32 2
  %t419 = load ptr, ptr %t418
  store ptr %t419, ptr %l28, !tbaa !29
  br label %bb155
bb154:
  br label %bb157
bb155:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load ptr, ptr %l28, !tbaa !29
  %t425 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t421, ptr %t422)
  store i1 %t425, ptr %l238
  br label %bb156
bb156:
  %t426 = load i1, ptr %l238, !tbaa !21
  store i1 %t426, ptr %rv
  br label %ret
bb157:
  %t427 = load ptr, ptr %l1, !tbaa !29
  store ptr %t427, ptr %l239, !tbaa !29
  store i1 false, ptr %l240, !tbaa !21
  %t428 = load ptr, ptr %l239, !tbaa !29
  %t429 = icmp ne ptr %t428, null
  br i1 %t429, label %bb158, label %bb159
bb158:
  %t431 = load ptr, ptr %l239, !tbaa !29
  %t432 = load i64, ptr %t431, !range !{i64 0, i64 18}
  %t434 = icmp eq i64 %t432, 11
  store i1 %t434, ptr %l240, !tbaa !21
  br label %bb159
bb159:
  %t435 = load i1, ptr %l240, !tbaa !21
  br i1 %t435, label %bb160, label %bb161
bb160:
  %t436 = load ptr, ptr %l1, !tbaa !29
  %t438 = getelementptr { i64, [5 x i64] }, ptr %t436, i32 0, i32 1
  %t439 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t438, i32 0, i32 2
  %t440 = load ptr, ptr %t439
  store ptr %t440, ptr %l29, !tbaa !29
  br label %bb162
bb161:
  br label %bb178
bb162:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load ptr, ptr %l29, !tbaa !29
  %t445 = getelementptr %"compiler/typed:Cond", ptr %t443, i32 0, i32 0
  %t446 = load ptr, ptr %t445, !tbaa !29
  %t449 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t442, ptr %t446)
  store i1 %t449, ptr %l248
  br label %bb163
bb163:
  %t450 = load i1, ptr %l248, !tbaa !21
  br i1 %t450, label %bb164, label %bb165
bb164:
  store i1 true, ptr %l249, !tbaa !21
  br label %bb173
bb165:
  %t451 = load ptr, ptr %l29, !tbaa !29
  %t453 = getelementptr %"compiler/typed:Cond", ptr %t451, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !29
  %t456 = icmp eq ptr %t454, null
  %t458 = xor i1 %t456, true
  br i1 %t458, label %bb166, label %bb167
bb166:
  %t460 = load ptr, ptr %l0, !tbaa !29
  store ptr %t460, ptr %l255, !tbaa !29
  %t461 = load ptr, ptr %l29, !tbaa !29
  %t463 = getelementptr %"compiler/typed:Cond", ptr %t461, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !29
  %t466 = icmp eq ptr %t464, null
  br i1 %t466, label %bb168, label %bb169
bb167:
  store i1 false, ptr %l254, !tbaa !21
  br label %bb172
bb168:
  call void @__olang_check_failed(ptr @olang_loc_c329a7357b4632ae_1972f4ce8b92321a)
  unreachable
bb169:
  br label %bb170
bb170:
  %t468 = load ptr, ptr %l29, !tbaa !29
  %t470 = getelementptr %"compiler/typed:Cond", ptr %t468, i32 0, i32 1
  %t471 = load ptr, ptr %t470, !tbaa !29
  %t472 = load ptr, ptr %l255, !tbaa !29
  %t474 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t472, ptr %t471)
  store i1 %t474, ptr %l261
  br label %bb171
bb171:
  %t475 = load i1, ptr %l261, !tbaa !21
  store i1 %t475, ptr %l254, !tbaa !21
  br label %bb172
bb172:
  %t476 = load i1, ptr %l254, !tbaa !21
  store i1 %t476, ptr %l249, !tbaa !21
  br label %bb173
bb173:
  %t477 = load i1, ptr %l249, !tbaa !21
  br i1 %t477, label %bb174, label %bb175
bb174:
  store i1 true, ptr %l262, !tbaa !21
  br label %bb177
bb175:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load ptr, ptr %l29, !tbaa !29
  %t481 = getelementptr %"compiler/typed:Cond", ptr %t479, i32 0, i32 2
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t485 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t478, ptr %t482)
  store i1 %t485, ptr %l266
  br label %bb176
bb176:
  %t486 = load i1, ptr %l266, !tbaa !21
  store i1 %t486, ptr %l262, !tbaa !21
  br label %bb177
bb177:
  %t487 = load i1, ptr %l262, !tbaa !21
  store i1 %t487, ptr %rv
  br label %ret
bb178:
  %t488 = load ptr, ptr %l1, !tbaa !29
  store ptr %t488, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t489 = load ptr, ptr %l267, !tbaa !29
  %t490 = icmp ne ptr %t489, null
  br i1 %t490, label %bb179, label %bb180
bb179:
  %t492 = load ptr, ptr %l267, !tbaa !29
  %t493 = load i64, ptr %t492, !range !{i64 0, i64 18}
  %t495 = icmp eq i64 %t493, 14
  store i1 %t495, ptr %l268, !tbaa !21
  br label %bb180
bb180:
  %t496 = load i1, ptr %l268, !tbaa !21
  br i1 %t496, label %bb181, label %bb182
bb181:
  %t497 = load ptr, ptr %l1, !tbaa !29
  %t499 = getelementptr { i64, [5 x i64] }, ptr %t497, i32 0, i32 1
  %t500 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t499, i32 0, i32 2
  %t501 = load ptr, ptr %t500
  store ptr %t501, ptr %l30, !tbaa !29
  br label %bb183
bb182:
  br label %bb213
bb183:
  %t503 = load ptr, ptr %l30, !tbaa !29
  %t505 = getelementptr %"compiler/typed:Try", ptr %t503, i32 0, i32 0
  %t506 = load ptr, ptr %t505, !tbaa !29
  %t508 = icmp eq ptr %t506, null
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb184, label %bb185
bb184:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l278, !tbaa !29
  %t513 = load ptr, ptr %l30, !tbaa !29
  %t515 = getelementptr %"compiler/typed:Try", ptr %t513, i32 0, i32 0
  %t516 = load ptr, ptr %t515, !tbaa !29
  %t518 = icmp eq ptr %t516, null
  br i1 %t518, label %bb186, label %bb187
bb185:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb190
bb186:
  call void @__olang_check_failed(ptr @olang_loc_ce4a56608212b1d3_28564c72fb26107)
  unreachable
bb187:
  br label %bb188
bb188:
  %t520 = load ptr, ptr %l30, !tbaa !29
  %t522 = getelementptr %"compiler/typed:Try", ptr %t520, i32 0, i32 0
  %t523 = load ptr, ptr %t522, !tbaa !29
  %t524 = load ptr, ptr %l278, !tbaa !29
  %t526 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t524, ptr %t523)
  store i1 %t526, ptr %l284
  br label %bb189
bb189:
  %t527 = load i1, ptr %l284, !tbaa !21
  store i1 %t527, ptr %l277, !tbaa !21
  br label %bb190
bb190:
  %t528 = load i1, ptr %l277, !tbaa !21
  br i1 %t528, label %bb191, label %bb192
bb191:
  store i1 true, ptr %rv
  br label %ret
bb192:
  br label %bb193
bb193:
  %t530 = load ptr, ptr %l30, !tbaa !29
  %t532 = getelementptr %"compiler/typed:Try", ptr %t530, i32 0, i32 1
  %t533 = load { i64, ptr }, ptr %t532, !tbaa !27
  store { i64, ptr } %t533, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t535 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t535, 0
  store i64 %t537, ptr %l33, !tbaa !24
  br label %bb194
bb194:
  %t539 = load i64, ptr %l32, !tbaa !24
  %t540 = load i64, ptr %l33, !tbaa !24
  %t543 = icmp slt i64 %t539, %t540
  %t545 = xor i1 %t543, true
  br i1 %t545, label %bb195, label %bb196
bb195:
  br label %bb212
bb196:
  br label %bb197
bb197:
  %t547 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t547, ptr %l294, !tbaa !27
  %t548 = load i64, ptr %l32, !tbaa !24
  %t550 = getelementptr { i64, ptr }, ptr %l294, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !27
  %t552 = getelementptr ptr, ptr %t551, i64 %t548
  %t553 = load ptr, ptr %t552, !tbaa !39
  store ptr %t553, ptr %l34, !tbaa !29
  %t555 = load ptr, ptr %l34, !tbaa !29
  %t557 = getelementptr %"compiler/typed:Clause", ptr %t555, i32 0, i32 3
  %t558 = load ptr, ptr %t557, !tbaa !29
  %t560 = icmp eq ptr %t558, null
  %t562 = xor i1 %t560, true
  br i1 %t562, label %bb198, label %bb199
bb198:
  store i1 true, ptr %rv
  br label %ret
bb199:
  br label %bb200
bb200:
  %t565 = load ptr, ptr %l34, !tbaa !29
  %t567 = getelementptr %"compiler/typed:Clause", ptr %t565, i32 0, i32 4
  %t568 = load { i64, ptr }, ptr %t567, !tbaa !27
  store { i64, ptr } %t568, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t570 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t570, 0
  store i64 %t572, ptr %l37, !tbaa !24
  br label %bb201
bb201:
  %t574 = load i64, ptr %l36, !tbaa !24
  %t575 = load i64, ptr %l37, !tbaa !24
  %t578 = icmp slt i64 %t574, %t575
  %t580 = xor i1 %t578, true
  br i1 %t580, label %bb202, label %bb203
bb202:
  br label %bb210
bb203:
  br label %bb204
bb204:
  %t582 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t582, ptr %l310, !tbaa !27
  %t583 = load i64, ptr %l36, !tbaa !24
  %t585 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !27
  %t587 = getelementptr ptr, ptr %t586, i64 %t583
  %t588 = load ptr, ptr %t587, !tbaa !39
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t594 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t590, ptr %t588)
  store i1 %t594, ptr %l315
  br label %bb205
bb205:
  %t595 = load i1, ptr %l315, !tbaa !21
  br i1 %t595, label %bb206, label %bb207
bb206:
  store i1 true, ptr %rv
  br label %ret
bb207:
  br label %bb208
bb208:
  br label %bb209
bb209:
  %t597 = load i64, ptr %l36, !tbaa !24
  %t599 = add i64 %t597, 1
  store i64 %t599, ptr %l36, !tbaa !24
  br label %bb201
bb210:
  br label %bb211
bb211:
  %t601 = load i64, ptr %l32, !tbaa !24
  %t603 = add i64 %t601, 1
  store i64 %t603, ptr %l32, !tbaa !24
  br label %bb194
bb212:
  store i1 false, ptr %rv
  br label %ret
bb213:
  %t606 = load ptr, ptr %l1, !tbaa !29
  store ptr %t606, ptr %l322, !tbaa !29
  store i1 false, ptr %l323, !tbaa !21
  %t607 = load ptr, ptr %l322, !tbaa !29
  %t608 = icmp ne ptr %t607, null
  br i1 %t608, label %bb214, label %bb215
bb214:
  %t610 = load ptr, ptr %l322, !tbaa !29
  %t611 = load i64, ptr %t610, !range !{i64 0, i64 18}
  %t613 = icmp eq i64 %t611, 15
  store i1 %t613, ptr %l323, !tbaa !21
  br label %bb215
bb215:
  %t614 = load i1, ptr %l323, !tbaa !21
  br i1 %t614, label %bb216, label %bb217
bb216:
  %t615 = load ptr, ptr %l1, !tbaa !29
  %t617 = getelementptr { i64, [5 x i64] }, ptr %t615, i32 0, i32 1
  %t618 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t617, i32 0, i32 2
  %t619 = load ptr, ptr %t618
  store ptr %t619, ptr %l39, !tbaa !29
  br label %bb218
bb217:
  br label %bb237
bb218:
  %t621 = load ptr, ptr %l39, !tbaa !29
  store ptr %t621, ptr %l329, !tbaa !29
  store i1 false, ptr %l330, !tbaa !21
  %t622 = load ptr, ptr %l329, !tbaa !29
  %t623 = icmp ne ptr %t622, null
  br i1 %t623, label %bb219, label %bb220
bb219:
  %t625 = load ptr, ptr %l329, !tbaa !29
  %t626 = load i64, ptr %t625, !range !{i64 0, i64 3}
  %t628 = icmp eq i64 %t626, 0
  store i1 %t628, ptr %l330, !tbaa !21
  br label %bb220
bb220:
  %t629 = load i1, ptr %l330, !tbaa !21
  br i1 %t629, label %bb221, label %bb222
bb221:
  br label %bb223
bb222:
  br label %bb224
bb223:
  store i1 false, ptr %l328, !tbaa !21
  br label %bb236
bb224:
  %t630 = load ptr, ptr %l39, !tbaa !29
  store ptr %t630, ptr %l333, !tbaa !29
  store i1 false, ptr %l334, !tbaa !21
  %t631 = load ptr, ptr %l333, !tbaa !29
  %t632 = icmp ne ptr %t631, null
  br i1 %t632, label %bb225, label %bb226
bb225:
  %t634 = load ptr, ptr %l333, !tbaa !29
  %t635 = load i64, ptr %t634, !range !{i64 0, i64 3}
  %t637 = icmp eq i64 %t635, 1
  store i1 %t637, ptr %l334, !tbaa !21
  br label %bb226
bb226:
  %t638 = load i1, ptr %l334, !tbaa !21
  br i1 %t638, label %bb227, label %bb228
bb227:
  %t639 = load ptr, ptr %l39, !tbaa !29
  %t641 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 1
  %t642 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t641, i32 0, i32 0
  %t643 = load i32, ptr %t642
  store i32 %t643, ptr %l40, !tbaa !23
  br label %bb229
bb228:
  br label %bb231
bb229:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t647 = getelementptr %"compiler/free:Free", ptr %t645, i32 0, i32 38
  %t648 = load i32, ptr %l40, !tbaa !23
  %t650 = sext i32 %t648 to i64
  %t653 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t647, i64 %t650)
  store i1 %t653, ptr %l343
  br label %bb230
bb230:
  %t654 = load i1, ptr %l343, !tbaa !21
  store i1 %t654, ptr %l328, !tbaa !21
  br label %bb236
bb231:
  br i1 true, label %bb232, label %bb233
bb232:
  br label %bb234
bb233:
  br label %bb235
bb234:
  store i1 true, ptr %l328, !tbaa !21
  br label %bb236
bb235:
  call void @__olang_check_failed(ptr @olang_loc_8c3ff88e405c7c2b_15d3403d537d031f)
  unreachable
bb236:
  %t655 = load i1, ptr %l328, !tbaa !21
  store i1 %t655, ptr %rv
  br label %ret
bb237:
  %t656 = load ptr, ptr %l1, !tbaa !29
  store ptr %t656, ptr %l344, !tbaa !29
  store i1 false, ptr %l345, !tbaa !21
  %t657 = load ptr, ptr %l344, !tbaa !29
  %t658 = icmp ne ptr %t657, null
  br i1 %t658, label %bb238, label %bb239
bb238:
  %t660 = load ptr, ptr %l344, !tbaa !29
  %t661 = load i64, ptr %t660, !range !{i64 0, i64 18}
  %t663 = icmp eq i64 %t661, 12
  store i1 %t663, ptr %l345, !tbaa !21
  br label %bb239
bb239:
  %t664 = load i1, ptr %l345, !tbaa !21
  br i1 %t664, label %bb240, label %bb241
bb240:
  %t665 = load ptr, ptr %l1, !tbaa !29
  %t667 = getelementptr { i64, [5 x i64] }, ptr %t665, i32 0, i32 1
  %t668 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t667, i32 0, i32 2
  %t669 = load ptr, ptr %t668
  store ptr %t669, ptr %l41, !tbaa !29
  br label %bb242
bb241:
  br label %bb254
bb242:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = load ptr, ptr %l41, !tbaa !29
  %t674 = getelementptr %"compiler/typed:Seq", ptr %t672, i32 0, i32 0
  %t675 = load { i64, ptr }, ptr %t674, !tbaa !27
  %t678 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t671, { i64, ptr } %t675)
  store i1 %t678, ptr %l353
  br label %bb243
bb243:
  %t679 = load i1, ptr %l353, !tbaa !21
  br i1 %t679, label %bb244, label %bb245
bb244:
  store i1 true, ptr %rv
  br label %ret
bb245:
  br label %bb246
bb246:
  %t681 = load ptr, ptr %l41, !tbaa !29
  %t683 = getelementptr %"compiler/typed:Seq", ptr %t681, i32 0, i32 1
  %t684 = load ptr, ptr %t683, !tbaa !29
  %t686 = icmp eq ptr %t684, null
  %t688 = xor i1 %t686, true
  br i1 %t688, label %bb247, label %bb248
bb247:
  %t690 = load ptr, ptr %l0, !tbaa !29
  store ptr %t690, ptr %l360, !tbaa !29
  %t691 = load ptr, ptr %l41, !tbaa !29
  %t693 = getelementptr %"compiler/typed:Seq", ptr %t691, i32 0, i32 1
  %t694 = load ptr, ptr %t693, !tbaa !29
  %t696 = icmp eq ptr %t694, null
  br i1 %t696, label %bb249, label %bb250
bb248:
  store i1 false, ptr %l359, !tbaa !21
  br label %bb253
bb249:
  call void @__olang_check_failed(ptr @olang_loc_637aed21ecd584b9_ebc4f5a84b828bd)
  unreachable
bb250:
  br label %bb251
bb251:
  %t698 = load ptr, ptr %l41, !tbaa !29
  %t700 = getelementptr %"compiler/typed:Seq", ptr %t698, i32 0, i32 1
  %t701 = load ptr, ptr %t700, !tbaa !29
  %t702 = load ptr, ptr %l360, !tbaa !29
  %t704 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t702, ptr %t701)
  store i1 %t704, ptr %l366
  br label %bb252
bb252:
  %t705 = load i1, ptr %l366, !tbaa !21
  store i1 %t705, ptr %l359, !tbaa !21
  br label %bb253
bb253:
  %t706 = load i1, ptr %l359, !tbaa !21
  store i1 %t706, ptr %rv
  br label %ret
bb254:
  %t707 = load ptr, ptr %l1, !tbaa !29
  store ptr %t707, ptr %l367, !tbaa !29
  store i1 false, ptr %l368, !tbaa !21
  %t708 = load ptr, ptr %l367, !tbaa !29
  %t709 = icmp ne ptr %t708, null
  br i1 %t709, label %bb255, label %bb256
bb255:
  %t711 = load ptr, ptr %l367, !tbaa !29
  %t712 = load i64, ptr %t711, !range !{i64 0, i64 18}
  %t714 = icmp eq i64 %t712, 8
  store i1 %t714, ptr %l368, !tbaa !21
  br label %bb256
bb256:
  %t715 = load i1, ptr %l368, !tbaa !21
  br i1 %t715, label %bb257, label %bb258
bb257:
  %t716 = load ptr, ptr %l1, !tbaa !29
  %t718 = getelementptr { i64, [5 x i64] }, ptr %t716, i32 0, i32 1
  %t719 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t718, i32 0, i32 2
  %t720 = load ptr, ptr %t719
  store ptr %t720, ptr %l42, !tbaa !29
  br label %bb259
bb258:
  br label %bb271
bb259:
  %t722 = load ptr, ptr %l42, !tbaa !29
  %t724 = getelementptr %"compiler/typed:Collect", ptr %t722, i32 0, i32 0
  %t725 = load ptr, ptr %t724, !tbaa !29
  %t727 = icmp eq ptr %t725, null
  %t729 = xor i1 %t727, true
  br i1 %t729, label %bb260, label %bb261
bb260:
  %t731 = load ptr, ptr %l0, !tbaa !29
  store ptr %t731, ptr %l378, !tbaa !29
  %t732 = load ptr, ptr %l42, !tbaa !29
  %t734 = getelementptr %"compiler/typed:Collect", ptr %t732, i32 0, i32 0
  %t735 = load ptr, ptr %t734, !tbaa !29
  %t737 = icmp eq ptr %t735, null
  br i1 %t737, label %bb262, label %bb263
bb261:
  store i1 false, ptr %l377, !tbaa !21
  br label %bb266
bb262:
  call void @__olang_check_failed(ptr @olang_loc_683418f7a5c8092_d6a8437e0252bcd6)
  unreachable
bb263:
  br label %bb264
bb264:
  %t739 = load ptr, ptr %l42, !tbaa !29
  %t741 = getelementptr %"compiler/typed:Collect", ptr %t739, i32 0, i32 0
  %t742 = load ptr, ptr %t741, !tbaa !29
  %t743 = load ptr, ptr %l378, !tbaa !29
  %t745 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emayRegister(ptr %v0, ptr %v1, ptr %t743, ptr %t742)
  store i1 %t745, ptr %l384
  br label %bb265
bb265:
  %t746 = load i1, ptr %l384, !tbaa !21
  store i1 %t746, ptr %l377, !tbaa !21
  br label %bb266
bb266:
  %t747 = load i1, ptr %l377, !tbaa !21
  br i1 %t747, label %bb267, label %bb268
bb267:
  store i1 true, ptr %rv
  br label %ret
bb268:
  br label %bb269
bb269:
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load ptr, ptr %l42, !tbaa !29
  %t752 = getelementptr %"compiler/typed:Collect", ptr %t750, i32 0, i32 1
  %t753 = load ptr, ptr %t752, !tbaa !29
  %t755 = getelementptr %"compiler/typed:Block", ptr %t753, i32 0, i32 1
  %t756 = load { i64, ptr }, ptr %t755, !tbaa !27
  %t759 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %t749, { i64, ptr } %t756)
  store i1 %t759, ptr %l390
  br label %bb270
bb270:
  %t760 = load i1, ptr %l390, !tbaa !21
  store i1 %t760, ptr %rv
  br label %ret
bb271:
  br i1 true, label %bb272, label %bb273
bb272:
  br label %bb274
bb273:
  br label %bb275
bb274:
  store i1 true, ptr %rv
  br label %ret
bb275:
  call void @__olang_check_failed(ptr @olang_loc_edaf755937fbeeee_2c55fc89855df6da)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2emustOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
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
  %l16 = alloca i1
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l49 = alloca ptr
  %l55 = alloca %"compiler/free:mustW"
  %l59 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l94 = alloca i64
  %l98 = alloca i64
  %l101 = alloca i64
  %l120 = alloca ptr
  %l124 = alloca i32
  %l128 = alloca ptr
  %l132 = alloca i32
  %l137 = alloca ptr
  %l145 = alloca i64
  %l149 = alloca i64
  %l152 = alloca i64
  %l173 = alloca i64
  %l176 = alloca i1
  %l179 = alloca i1
  %l183 = alloca i64
  %l184 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca i64
  %l190 = alloca i64
  %l191 = alloca i64
  %l195 = alloca i64
  %l204 = alloca i64
  %l206 = alloca ptr
  %l208 = alloca ptr
  %l212 = alloca ptr
  %l213 = alloca i64
  %l214 = alloca i64
  %l215 = alloca i64
  %l219 = alloca i64
  %l232 = alloca ptr
  %l233 = alloca ptr
  %l234 = alloca i64
  %l239 = alloca i64
  %l241 = alloca i64
  %l246 = alloca i64
  %l247 = alloca ptr
  %l248 = alloca i64
  %l257 = alloca i64
  %l259 = alloca i64
  %l264 = alloca ptr
  %l265 = alloca i64
  %l268 = alloca i64
  %l269 = alloca i64
  %l272 = alloca i1
  %l276 = alloca i64
  %l280 = alloca i64
  %l287 = alloca i1
  %l291 = alloca i1
  %l293 = alloca i1
  %l297 = alloca i1
  %l305 = alloca ptr
  %l306 = alloca ptr
  %l307 = alloca i64
  %l312 = alloca i64
  %l314 = alloca i64
  %l319 = alloca i64
  %l320 = alloca ptr
  %l321 = alloca i64
  %l330 = alloca ptr
  %l331 = alloca ptr
  %l332 = alloca i64
  %l337 = alloca i64
  %l341 = alloca i64
  %l344 = alloca i64
  %l362 = alloca ptr
  %l363 = alloca i64
  %l365 = alloca ptr
  %l368 = alloca i1
  %t18 = alloca %"compiler/free:mustW", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l49
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l49, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2ffree_3amustW_2ector(ptr %t18, ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t18, i64 176, i1 false)
  br label %bb5
bb5:
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 176, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %l55, i64 176, i1 false)
  store ptr %t21, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t23, i32 0, i32 7
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l59
  br label %bb6
bb6:
  %t28 = load i64, ptr %l59, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb12
bb9:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l66, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb11
bb11:
  %t55 = load i64, ptr %l66, !tbaa !24
  store i64 %t55, ptr %l63, !tbaa !24
  br label %bb12
bb12:
  %t56 = load i64, ptr %l63, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l9, !tbaa !24
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/free:mustW", ptr %t75, i32 0, i32 2
  %t78 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t77, i64 %t78)
  br label %bb17
bb17:
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = getelementptr %"compiler/free:mustW", ptr %t81, i32 0, i32 3
  %t84 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t83, i64 %t84)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l8, !tbaa !24
  br label %bb13
bb20:
  store i64 0, ptr %l10, !tbaa !24
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t93 = getelementptr %"compiler/typed:Body", ptr %t91, i32 0, i32 5
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t93)
  store i64 %t95, ptr %l94
  br label %bb21
bb21:
  %t96 = load i64, ptr %l94, !tbaa !24
  store i64 %t96, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l10, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t103 = load i64, ptr %l12, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb27
bb24:
  %t107 = load i64, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l12, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l101, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb26
bb26:
  %t123 = load i64, ptr %l101, !tbaa !24
  store i64 %t123, ptr %l98, !tbaa !24
  br label %bb27
bb27:
  %t124 = load i64, ptr %l98, !tbaa !24
  store i64 %t124, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  %t125 = load i64, ptr %l14, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb29, label %bb30
bb29:
  br label %bb37
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l10, !tbaa !24
  %t134 = load i64, ptr %l14, !tbaa !24
  %t135 = load i64, ptr %l12, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l15, !tbaa !24
  %t143 = load ptr, ptr %l3, !tbaa !29
  %t145 = getelementptr %"compiler/free:mustW", ptr %t143, i32 0, i32 2
  store ptr %t145, ptr %l120, !tbaa !29
  %t146 = load ptr, ptr %l2, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Body", ptr %t146, i32 0, i32 5
  %t149 = load i64, ptr %l15, !tbaa !24
  %t152 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t148, i64 %t149)
  store i32 %t152, ptr %l124
  br label %bb32
bb32:
  %t153 = load i32, ptr %l124, !tbaa !23
  %t154 = sext i32 %t153 to i64
  %t155 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  %t156 = load ptr, ptr %l120, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t156, i64 %t154, i64 %t155)
  br label %bb33
bb33:
  %t159 = load ptr, ptr %l3, !tbaa !29
  %t161 = getelementptr %"compiler/free:mustW", ptr %t159, i32 0, i32 3
  store ptr %t161, ptr %l128, !tbaa !29
  %t162 = load ptr, ptr %l2, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Body", ptr %t162, i32 0, i32 5
  %t165 = load i64, ptr %l15, !tbaa !24
  %t168 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t164, i64 %t165)
  store i32 %t168, ptr %l132
  br label %bb34
bb34:
  %t169 = load i32, ptr %l132, !tbaa !23
  %t170 = sext i32 %t169 to i64
  %t171 = load i64, ptr %l15, !tbaa !24
  %t172 = load ptr, ptr %l128, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t172, i64 %t170, i64 %t171)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t175 = load i64, ptr %l14, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l14, !tbaa !24
  br label %bb28
bb37:
  %t179 = load ptr, ptr %l3, !tbaa !29
  store ptr %t179, ptr %l137, !tbaa !29
  %t180 = load ptr, ptr %l2, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Body", ptr %t180, i32 0, i32 11
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_1d9a56a827ed845f_5cc839dbc781b743)
  unreachable
bb39:
  br label %bb40
bb40:
  %t187 = load ptr, ptr %l2, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Body", ptr %t187, i32 0, i32 11
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t191 = load ptr, ptr %l137, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v0, ptr %t191, ptr %t190)
  br label %bb41
bb41:
  br label %bb42
bb42:
  store i1 false, ptr %l16, !tbaa !21
  store i64 0, ptr %l17, !tbaa !24
  %t193 = load ptr, ptr %l3, !tbaa !29
  %t195 = getelementptr %"compiler/free:mustW", ptr %t193, i32 0, i32 4
  %t197 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t195)
  store i64 %t197, ptr %l145
  br label %bb43
bb43:
  %t198 = load i64, ptr %l145, !tbaa !24
  store i64 %t198, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t199 = load i64, ptr %l18, !tbaa !24
  %t200 = load i64, ptr %l17, !tbaa !24
  %t203 = icmp sgt i64 %t199, %t200
  br i1 %t203, label %bb44, label %bb45
bb44:
  %t205 = load i64, ptr %l19, !tbaa !24
  %t207 = icmp sgt i64 %t205, 0
  br i1 %t207, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb49
bb46:
  %t209 = load i64, ptr %l18, !tbaa !24
  %t210 = load i64, ptr %l17, !tbaa !24
  %t213 = sub i64 %t209, %t210
  %t214 = load i64, ptr %l19, !tbaa !24
  %t217 = add i64 %t213, %t214
  %t219 = sub i64 %t217, 1
  %t220 = load i64, ptr %l19, !tbaa !24
  %t223 = sdiv i64 %t219, %t220
  store i64 %t223, ptr %l152, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb48
bb48:
  %t225 = load i64, ptr %l152, !tbaa !24
  store i64 %t225, ptr %l149, !tbaa !24
  br label %bb49
bb49:
  %t226 = load i64, ptr %l149, !tbaa !24
  store i64 %t226, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb50
bb50:
  %t227 = load i64, ptr %l21, !tbaa !24
  %t228 = load i64, ptr %l20, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb51, label %bb52
bb51:
  br label %bb81
bb52:
  br label %bb53
bb53:
  %t235 = load i64, ptr %l17, !tbaa !24
  %t236 = load i64, ptr %l21, !tbaa !24
  %t237 = load i64, ptr %l19, !tbaa !24
  %t240 = mul i64 %t236, %t237
  %t243 = add i64 %t235, %t240
  store i64 %t243, ptr %l22, !tbaa !24
  %t245 = load ptr, ptr %l3, !tbaa !29
  %t247 = getelementptr %"compiler/free:mustW", ptr %t245, i32 0, i32 4
  %t248 = load i64, ptr %l22, !tbaa !24
  %t251 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t247, i64 %t248)
  store i64 %t251, ptr %l173
  br label %bb54
bb54:
  %t252 = load i64, ptr %l173, !tbaa !24
  store i64 %t252, ptr %l23, !tbaa !24
  %t253 = load i64, ptr %l23, !tbaa !24
  %t255 = icmp slt i64 %t253, 0
  br i1 %t255, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l176, !tbaa !21
  br label %bb58
bb56:
  %t257 = load ptr, ptr %l3, !tbaa !29
  %t258 = load i64, ptr %l23, !tbaa !24
  %t261 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %t257, i64 %t258)
  store i1 %t261, ptr %l179
  br label %bb57
bb57:
  %t262 = load i1, ptr %l179, !tbaa !21
  store i1 %t262, ptr %l176, !tbaa !21
  br label %bb58
bb58:
  %t263 = load i1, ptr %l176, !tbaa !21
  br i1 %t263, label %bb59, label %bb60
bb59:
  br label %bb80
bb60:
  br label %bb61
bb61:
  %t264 = load ptr, ptr %l3, !tbaa !29
  %t266 = getelementptr %"compiler/free:mustW", ptr %t264, i32 0, i32 2
  %t267 = load i64, ptr %l23, !tbaa !24
  %t270 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t266, i64 %t267)
  store i64 %t270, ptr %l183
  br label %bb62
bb62:
  %t271 = load ptr, ptr %l3, !tbaa !29
  store ptr %t271, ptr %l184, !tbaa !29
  %t272 = load ptr, ptr %l3, !tbaa !29
  %t274 = getelementptr %"compiler/free:mustW", ptr %t272, i32 0, i32 5
  %t275 = load i64, ptr %l22, !tbaa !24
  %t278 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t274, i64 %t275)
  store ptr %t278, ptr %l188
  br label %bb63
bb63:
  %t279 = load ptr, ptr %l184, !tbaa !29
  %t280 = load ptr, ptr %l188, !tbaa !29
  %t281 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v0, ptr %t279, ptr %t280)
  store i64 %t281, ptr %l189
  br label %bb64
bb64:
  %t282 = load i64, ptr %l183, !tbaa !24
  %t283 = load i64, ptr %l189, !tbaa !24
  %t284 = call i64 @compiler_2ffree_2emeet(i64 %t282, i64 %t283)
  store i64 %t284, ptr %l190
  br label %bb65
bb65:
  %t285 = load i64, ptr %l190, !tbaa !24
  store i64 %t285, ptr %l24, !tbaa !24
  %t286 = load i64, ptr %l24, !tbaa !24
  store i64 %t286, ptr %l191, !tbaa !24
  %t287 = load ptr, ptr %l3, !tbaa !29
  %t289 = getelementptr %"compiler/free:mustW", ptr %t287, i32 0, i32 2
  %t290 = load i64, ptr %l23, !tbaa !24
  %t293 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t289, i64 %t290)
  store i64 %t293, ptr %l195
  br label %bb66
bb66:
  %t294 = load i64, ptr %l191, !tbaa !24
  %t295 = load i64, ptr %l195, !tbaa !24
  %t296 = icmp ne i64 %t294, %t295
  br i1 %t296, label %bb67, label %bb68
bb67:
  %t298 = load ptr, ptr %l3, !tbaa !29
  %t300 = getelementptr %"compiler/free:mustW", ptr %t298, i32 0, i32 2
  %t301 = load i64, ptr %l23, !tbaa !24
  %t302 = load i64, ptr %l24, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t300, i64 %t301, i64 %t302)
  br label %bb69
bb68:
  br label %bb70
bb69:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb70
bb70:
  %t306 = load ptr, ptr %l3, !tbaa !29
  %t308 = getelementptr %"compiler/free:mustW", ptr %t306, i32 0, i32 3
  %t309 = load i64, ptr %l23, !tbaa !24
  %t312 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t308, i64 %t309)
  store i64 %t312, ptr %l204
  br label %bb71
bb71:
  %t313 = load ptr, ptr %l3, !tbaa !29
  %t315 = getelementptr %"compiler/free:mustW", ptr %t313, i32 0, i32 0
  %t316 = load ptr, ptr %t315, !tbaa !29
  store ptr %t316, ptr %l206, !tbaa !29
  %t317 = load ptr, ptr %l3, !tbaa !29
  %t319 = getelementptr %"compiler/free:mustW", ptr %t317, i32 0, i32 3
  store ptr %t319, ptr %l208, !tbaa !29
  %t320 = load ptr, ptr %l3, !tbaa !29
  %t322 = getelementptr %"compiler/free:mustW", ptr %t320, i32 0, i32 5
  %t323 = load i64, ptr %l22, !tbaa !24
  %t326 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t322, i64 %t323)
  store ptr %t326, ptr %l212
  br label %bb72
bb72:
  %t327 = load ptr, ptr %l206, !tbaa !29
  %t328 = load ptr, ptr %l208, !tbaa !29
  %t329 = load ptr, ptr %l212, !tbaa !29
  %t330 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v0, ptr %v0, ptr %t327, ptr %t328, ptr %t329)
  store i64 %t330, ptr %l213
  br label %bb73
bb73:
  %t331 = load i64, ptr %l204, !tbaa !24
  %t332 = load i64, ptr %l213, !tbaa !24
  %t333 = call i64 @compiler_2ffree_2emeet(i64 %t331, i64 %t332)
  store i64 %t333, ptr %l214
  br label %bb74
bb74:
  %t334 = load i64, ptr %l214, !tbaa !24
  store i64 %t334, ptr %l25, !tbaa !24
  %t335 = load i64, ptr %l25, !tbaa !24
  store i64 %t335, ptr %l215, !tbaa !24
  %t336 = load ptr, ptr %l3, !tbaa !29
  %t338 = getelementptr %"compiler/free:mustW", ptr %t336, i32 0, i32 3
  %t339 = load i64, ptr %l23, !tbaa !24
  %t342 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t338, i64 %t339)
  store i64 %t342, ptr %l219
  br label %bb75
bb75:
  %t343 = load i64, ptr %l215, !tbaa !24
  %t344 = load i64, ptr %l219, !tbaa !24
  %t345 = icmp ne i64 %t343, %t344
  br i1 %t345, label %bb76, label %bb77
bb76:
  %t347 = load ptr, ptr %l3, !tbaa !29
  %t349 = getelementptr %"compiler/free:mustW", ptr %t347, i32 0, i32 3
  %t350 = load i64, ptr %l23, !tbaa !24
  %t351 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t349, i64 %t350, i64 %t351)
  br label %bb78
bb77:
  br label %bb79
bb78:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t355 = load i64, ptr %l21, !tbaa !24
  %t357 = add i64 %t355, 1
  store i64 %t357, ptr %l21, !tbaa !24
  br label %bb50
bb81:
  %t359 = load i1, ptr %l16, !tbaa !21
  %t361 = xor i1 %t359, true
  br i1 %t361, label %bb82, label %bb83
bb82:
  br label %bb86
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  br label %bb42
bb86:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/free:Free", ptr %t363, i32 0, i32 58
  %t366 = load i64, ptr %l1, !tbaa !24
  %t369 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t365, i64 %t366)
  store ptr %t369, ptr %l232
  br label %bb87
bb87:
  %t370 = load ptr, ptr %l232, !tbaa !29
  store ptr %t370, ptr %l26, !tbaa !29
  %t371 = load ptr, ptr %l26, !tbaa !29
  store ptr %t371, ptr %l233, !tbaa !29
  %t372 = ptrtoint ptr %v0 to i64
  store i64 %t372, ptr %l234, !tbaa !24
  %t373 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t373, label %bb88, label %bb89
bb88:
  %t375 = load ptr, ptr %l233, !tbaa !29
  %t376 = call ptr @__olang_region_or(ptr %t375, ptr %v0)
  %t377 = ptrtoint ptr %t376 to i64
  store i64 %t377, ptr %l234, !tbaa !24
  br label %bb89
bb89:
  %t378 = load ptr, ptr %l26, !tbaa !29
  %t379 = load i64, ptr %l234
  %t380 = inttoptr i64 %t379 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t380, ptr %t378)
  br label %bb90
bb90:
  %t382 = load ptr, ptr %l3, !tbaa !29
  %t384 = getelementptr %"compiler/free:mustW", ptr %t382, i32 0, i32 3
  store ptr %t384, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb91
bb91:
  %t386 = load i64, ptr %l28, !tbaa !24
  store i64 %t386, ptr %l239, !tbaa !24
  %t387 = load ptr, ptr %l27, !tbaa !29
  %t389 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t387)
  store i64 %t389, ptr %l241
  br label %bb92
bb92:
  %t390 = load i64, ptr %l239, !tbaa !24
  %t391 = load i64, ptr %l241, !tbaa !24
  %t392 = icmp slt i64 %t390, %t391
  %t394 = xor i1 %t392, true
  br i1 %t394, label %bb93, label %bb94
bb93:
  br label %bb101
bb94:
  br label %bb95
bb95:
  %t396 = load ptr, ptr %l27, !tbaa !29
  %t397 = load i64, ptr %l28, !tbaa !24
  %t400 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t396, i64 %t397)
  store i64 %t400, ptr %l246
  br label %bb96
bb96:
  %t401 = load i64, ptr %l246, !tbaa !24
  store i64 %t401, ptr %l29, !tbaa !24
  %t402 = load ptr, ptr %l26, !tbaa !29
  store ptr %t402, ptr %l247, !tbaa !29
  %t403 = ptrtoint ptr %v0 to i64
  store i64 %t403, ptr %l248, !tbaa !24
  %t404 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t404, label %bb97, label %bb98
bb97:
  %t406 = load ptr, ptr %l247, !tbaa !29
  %t407 = call ptr @__olang_region_or(ptr %t406, ptr %v0)
  %t408 = ptrtoint ptr %t407 to i64
  store i64 %t408, ptr %l248, !tbaa !24
  br label %bb98
bb98:
  %t409 = load ptr, ptr %l26, !tbaa !29
  %t410 = load i64, ptr %l29, !tbaa !24
  %t411 = load i64, ptr %l248
  %t412 = inttoptr i64 %t411 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %t412, ptr %t409, i64 %t410)
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t415 = load i64, ptr %l28, !tbaa !24
  %t417 = add i64 %t415, 1
  store i64 %t417, ptr %l28, !tbaa !24
  br label %bb91
bb101:
  %t419 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  store i64 %t419, ptr %l30, !tbaa !24
  store i1 true, ptr %l31, !tbaa !21
  %t421 = load ptr, ptr %l3, !tbaa !29
  %t423 = getelementptr %"compiler/free:mustW", ptr %t421, i32 0, i32 6
  store ptr %t423, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb102
bb102:
  %t425 = load i64, ptr %l33, !tbaa !24
  store i64 %t425, ptr %l257, !tbaa !24
  %t426 = load ptr, ptr %l32, !tbaa !29
  %t428 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t426)
  store i64 %t428, ptr %l259
  br label %bb103
bb103:
  %t429 = load i64, ptr %l257, !tbaa !24
  %t430 = load i64, ptr %l259, !tbaa !24
  %t431 = icmp slt i64 %t429, %t430
  %t433 = xor i1 %t431, true
  br i1 %t433, label %bb104, label %bb105
bb104:
  br label %bb115
bb105:
  br label %bb106
bb106:
  %t435 = load ptr, ptr %l32, !tbaa !29
  %t436 = load i64, ptr %l33, !tbaa !24
  %t439 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t435, i64 %t436)
  store ptr %t439, ptr %l264
  br label %bb107
bb107:
  %t440 = load ptr, ptr %l264, !tbaa !29
  store ptr %t440, ptr %l34, !tbaa !29
  %t441 = load i64, ptr %l30, !tbaa !24
  store i64 %t441, ptr %l265, !tbaa !24
  %t442 = load ptr, ptr %l3, !tbaa !29
  %t443 = load ptr, ptr %l34, !tbaa !29
  %t446 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v0, ptr %t442, ptr %t443)
  store i64 %t446, ptr %l268
  br label %bb108
bb108:
  %t447 = load i64, ptr %l265, !tbaa !24
  %t448 = load i64, ptr %l268, !tbaa !24
  %t449 = call i64 @compiler_2ffree_2emeet(i64 %t447, i64 %t448)
  store i64 %t449, ptr %l269
  br label %bb109
bb109:
  %t450 = load i64, ptr %l269, !tbaa !24
  store i64 %t450, ptr %l30, !tbaa !24
  %t451 = load ptr, ptr %l3, !tbaa !29
  %t452 = load ptr, ptr %l34, !tbaa !29
  %t455 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v0, ptr %t451, ptr %t452, i64 0)
  store i1 %t455, ptr %l272
  br label %bb110
bb110:
  %t456 = load i1, ptr %l272, !tbaa !21
  %t457 = xor i1 %t456, true
  br i1 %t457, label %bb111, label %bb112
bb111:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb113
bb112:
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t459 = load i64, ptr %l33, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l33, !tbaa !24
  br label %bb102
bb115:
  %t463 = load i64, ptr %l30, !tbaa !24
  store i64 %t463, ptr %l276, !tbaa !24
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/free:Free", ptr %t464, i32 0, i32 36
  %t467 = load i64, ptr %l1, !tbaa !24
  %t470 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t466, i64 %t467)
  store i64 %t470, ptr %l280
  br label %bb116
bb116:
  %t471 = load i64, ptr %l276, !tbaa !24
  %t472 = load i64, ptr %l280, !tbaa !24
  %t473 = icmp ne i64 %t471, %t472
  br i1 %t473, label %bb117, label %bb118
bb117:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/free:Free", ptr %t475, i32 0, i32 36
  %t478 = load i64, ptr %l1, !tbaa !24
  %t479 = load i64, ptr %l30, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t477, i64 %t478, i64 %t479)
  br label %bb119
bb118:
  br label %bb120
bb119:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/free:Free", ptr %t483, i32 0, i32 40
  store i1 true, ptr %t485, !tbaa !21
  br label %bb120
bb120:
  %t486 = load i1, ptr %l31, !tbaa !21
  store i1 %t486, ptr %l287, !tbaa !21
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t489 = getelementptr %"compiler/free:Free", ptr %t487, i32 0, i32 37
  %t490 = load i64, ptr %l1, !tbaa !24
  %t493 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t489, i64 %t490)
  store i1 %t493, ptr %l291
  br label %bb121
bb121:
  %t494 = load i1, ptr %l287, !tbaa !21
  %t495 = load i1, ptr %l291, !tbaa !21
  %t496 = icmp ne i1 %t494, %t495
  br i1 %t496, label %bb122, label %bb123
bb122:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t500 = getelementptr %"compiler/free:Free", ptr %t498, i32 0, i32 37
  %t501 = load i64, ptr %l1, !tbaa !24
  %t504 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t500, i64 %t501)
  store i1 %t504, ptr %l297
  br label %bb124
bb123:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb125
bb124:
  %t505 = load i1, ptr %l297, !tbaa !21
  store i1 %t505, ptr %l293, !tbaa !21
  br label %bb125
bb125:
  %t506 = load i1, ptr %l293, !tbaa !21
  br i1 %t506, label %bb126, label %bb127
bb126:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/free:Free", ptr %t507, i32 0, i32 37
  %t510 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t509, i64 %t510, i1 false)
  br label %bb128
bb127:
  br label %bb129
bb128:
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t515 = getelementptr %"compiler/free:Free", ptr %t513, i32 0, i32 40
  store i1 true, ptr %t515, !tbaa !21
  br label %bb129
bb129:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/free:Free", ptr %t516, i32 0, i32 57
  %t519 = load i64, ptr %l1, !tbaa !24
  %t522 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t518, i64 %t519)
  store ptr %t522, ptr %l305
  br label %bb130
bb130:
  %t523 = load ptr, ptr %l305, !tbaa !29
  store ptr %t523, ptr %l35, !tbaa !29
  %t524 = load ptr, ptr %l35, !tbaa !29
  store ptr %t524, ptr %l306, !tbaa !29
  %t525 = ptrtoint ptr %v0 to i64
  store i64 %t525, ptr %l307, !tbaa !24
  %t526 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t526, label %bb131, label %bb132
bb131:
  %t528 = load ptr, ptr %l306, !tbaa !29
  %t529 = call ptr @__olang_region_or(ptr %t528, ptr %v0)
  %t530 = ptrtoint ptr %t529 to i64
  store i64 %t530, ptr %l307, !tbaa !24
  br label %bb132
bb132:
  %t531 = load ptr, ptr %l35, !tbaa !29
  %t532 = load i64, ptr %l307
  %t533 = inttoptr i64 %t532 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t533, ptr %t531)
  br label %bb133
bb133:
  %t535 = load ptr, ptr %l3, !tbaa !29
  %t537 = getelementptr %"compiler/free:mustW", ptr %t535, i32 0, i32 2
  store ptr %t537, ptr %l36, !tbaa !29
  store i64 0, ptr %l37, !tbaa !24
  br label %bb134
bb134:
  %t539 = load i64, ptr %l37, !tbaa !24
  store i64 %t539, ptr %l312, !tbaa !24
  %t540 = load ptr, ptr %l36, !tbaa !29
  %t542 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t540)
  store i64 %t542, ptr %l314
  br label %bb135
bb135:
  %t543 = load i64, ptr %l312, !tbaa !24
  %t544 = load i64, ptr %l314, !tbaa !24
  %t545 = icmp slt i64 %t543, %t544
  %t547 = xor i1 %t545, true
  br i1 %t547, label %bb136, label %bb137
bb136:
  br label %bb144
bb137:
  br label %bb138
bb138:
  %t549 = load ptr, ptr %l36, !tbaa !29
  %t550 = load i64, ptr %l37, !tbaa !24
  %t553 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t549, i64 %t550)
  store i64 %t553, ptr %l319
  br label %bb139
bb139:
  %t554 = load i64, ptr %l319, !tbaa !24
  store i64 %t554, ptr %l38, !tbaa !24
  %t555 = load ptr, ptr %l35, !tbaa !29
  store ptr %t555, ptr %l320, !tbaa !29
  %t556 = ptrtoint ptr %v0 to i64
  store i64 %t556, ptr %l321, !tbaa !24
  %t557 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t557, label %bb140, label %bb141
bb140:
  %t559 = load ptr, ptr %l320, !tbaa !29
  %t560 = call ptr @__olang_region_or(ptr %t559, ptr %v0)
  %t561 = ptrtoint ptr %t560 to i64
  store i64 %t561, ptr %l321, !tbaa !24
  br label %bb141
bb141:
  %t562 = load ptr, ptr %l35, !tbaa !29
  %t563 = load i64, ptr %l38, !tbaa !24
  %t564 = load i64, ptr %l321
  %t565 = inttoptr i64 %t564 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %t565, ptr %t562, i64 %t563)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t568 = load i64, ptr %l37, !tbaa !24
  %t570 = add i64 %t568, 1
  store i64 %t570, ptr %l37, !tbaa !24
  br label %bb134
bb144:
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/free:Free", ptr %t572, i32 0, i32 59
  %t575 = load i64, ptr %l1, !tbaa !24
  %t578 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_Ha64a825bb0b4fc6c7596ac96329c2853(ptr %v0, ptr %v0, ptr %t574, i64 %t575)
  store ptr %t578, ptr %l330
  br label %bb145
bb145:
  %t579 = load ptr, ptr %l330, !tbaa !29
  store ptr %t579, ptr %l39, !tbaa !29
  %t580 = load ptr, ptr %l39, !tbaa !29
  store ptr %t580, ptr %l331, !tbaa !29
  %t581 = ptrtoint ptr %v0 to i64
  store i64 %t581, ptr %l332, !tbaa !24
  %t582 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1
  br i1 %t582, label %bb146, label %bb147
bb146:
  %t584 = load ptr, ptr %l331, !tbaa !29
  %t585 = call ptr @__olang_region_or(ptr %t584, ptr %v0)
  %t586 = ptrtoint ptr %t585 to i64
  store i64 %t586, ptr %l332, !tbaa !24
  br label %bb147
bb147:
  %t587 = load ptr, ptr %l39, !tbaa !29
  %t588 = load i64, ptr %l332
  %t589 = inttoptr i64 %t588 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %t589, ptr %t587)
  br label %bb148
bb148:
  store i64 0, ptr %l40, !tbaa !24
  %t591 = load ptr, ptr %l2, !tbaa !29
  %t593 = getelementptr %"compiler/typed:Body", ptr %t591, i32 0, i32 7
  %t595 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t593)
  store i64 %t595, ptr %l337
  br label %bb149
bb149:
  %t596 = load i64, ptr %l337, !tbaa !24
  store i64 %t596, ptr %l41, !tbaa !24
  store i64 1, ptr %l42, !tbaa !24
  %t597 = load i64, ptr %l41, !tbaa !24
  %t598 = load i64, ptr %l40, !tbaa !24
  %t601 = icmp sgt i64 %t597, %t598
  br i1 %t601, label %bb150, label %bb151
bb150:
  %t603 = load i64, ptr %l42, !tbaa !24
  %t605 = icmp sgt i64 %t603, 0
  br i1 %t605, label %bb152, label %bb153
bb151:
  store i64 0, ptr %l341, !tbaa !24
  br label %bb155
bb152:
  %t607 = load i64, ptr %l41, !tbaa !24
  %t608 = load i64, ptr %l40, !tbaa !24
  %t611 = sub i64 %t607, %t608
  %t612 = load i64, ptr %l42, !tbaa !24
  %t615 = add i64 %t611, %t612
  %t617 = sub i64 %t615, 1
  %t618 = load i64, ptr %l42, !tbaa !24
  %t621 = sdiv i64 %t617, %t618
  store i64 %t621, ptr %l344, !tbaa !24
  br label %bb154
bb153:
  store i64 0, ptr %l344, !tbaa !24
  br label %bb154
bb154:
  %t623 = load i64, ptr %l344, !tbaa !24
  store i64 %t623, ptr %l341, !tbaa !24
  br label %bb155
bb155:
  %t624 = load i64, ptr %l341, !tbaa !24
  store i64 %t624, ptr %l43, !tbaa !24
  store i64 0, ptr %l44, !tbaa !24
  br label %bb156
bb156:
  %t625 = load i64, ptr %l44, !tbaa !24
  %t626 = load i64, ptr %l43, !tbaa !24
  %t629 = icmp slt i64 %t625, %t626
  %t631 = xor i1 %t629, true
  br i1 %t631, label %bb157, label %bb158
bb157:
  br label %bb165
bb158:
  br label %bb159
bb159:
  %t633 = load i64, ptr %l40, !tbaa !24
  %t634 = load i64, ptr %l44, !tbaa !24
  %t635 = load i64, ptr %l42, !tbaa !24
  %t638 = mul i64 %t634, %t635
  %t641 = add i64 %t633, %t638
  store i64 %t641, ptr %l45, !tbaa !24
  %t643 = load ptr, ptr %l39, !tbaa !29
  store ptr %t643, ptr %l362, !tbaa !29
  %t644 = ptrtoint ptr %v0 to i64
  store i64 %t644, ptr %l363, !tbaa !24
  %t645 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1
  br i1 %t645, label %bb160, label %bb161
bb160:
  %t647 = load ptr, ptr %l362, !tbaa !29
  %t648 = call ptr @__olang_region_or(ptr %t647, ptr %v0)
  %t649 = ptrtoint ptr %t648 to i64
  store i64 %t649, ptr %l363, !tbaa !24
  br label %bb161
bb161:
  %t650 = load ptr, ptr %l39, !tbaa !29
  store ptr %t650, ptr %l365, !tbaa !29
  %t651 = load ptr, ptr %l3, !tbaa !29
  %t652 = load i64, ptr %l45, !tbaa !24
  %t655 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efreshLocal(ptr %v0, ptr %t651, i64 %t652)
  store i1 %t655, ptr %l368
  br label %bb162
bb162:
  %t656 = load i64, ptr %l363
  %t657 = inttoptr i64 %t656 to ptr
  %t658 = load ptr, ptr %l365, !tbaa !29
  %t659 = load i1, ptr %l368, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %t657, ptr %t658, i1 %t659)
  br label %bb163
bb163:
  br label %bb164
bb164:
  %t660 = load i64, ptr %l44, !tbaa !24
  %t662 = add i64 %t660, 1
  store i64 %t662, ptr %l44, !tbaa !24
  br label %bb156
bb165:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i32
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l25 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l37 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i32
  %l48 = alloca i32
  %l53 = alloca i32
  %l56 = alloca i1
  %l59 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i32
  %l68 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l80 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l94 = alloca i1
  %l97 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l106 = alloca i1
  %l109 = alloca i1
  %l112 = alloca i1
  %l115 = alloca i1
  %l118 = alloca i1
  %l131 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l16, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  store ptr %t5, ptr %l17, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l20
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l17, !tbaa !29
  %t12 = load i32, ptr %l20, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l21
  br label %bb3
bb3:
  %t14 = load i32, ptr %l21, !tbaa !23
  store i32 %t14, ptr %l4, !tbaa !23
  %t15 = load i32, ptr %l4, !tbaa !23
  %t17 = sext i32 %t15 to i64
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t17, i64 %t18)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t21, ptr %l25
  br label %bb4
bb4:
  %t22 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l25
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t22, ptr %l5
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/free:Free", ptr %t23, i32 0, i32 17
  %t26 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t29 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t25, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26)
  %t30 = extractvalue { i32, i64 } %t29, 1
  %t31 = extractvalue { i32, i64 } %t29, 0
  store i32 %t31, ptr %l31
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb6, label %ok.33, !prof !99
ok.33:
  store i64 %t30, ptr %l30
  br label %bb5
bb5:
  %t34 = load i64, ptr %l30, !tbaa !24
  store i64 %t34, ptr %l26, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l26, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp eq i64 %t36, 1
  br i1 %t38, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp eq i64 %t41, 2
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/free:Free", ptr %t45, i32 0, i32 16
  %t48 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t51 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t47, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t48)
  %t52 = extractvalue { i32, i64 } %t51, 1
  %t53 = extractvalue { i32, i64 } %t51, 0
  store i32 %t53, ptr %l42
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb15, label %ok.55, !prof !99
ok.55:
  store i64 %t52, ptr %l41
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t56 = load i64, ptr %l41, !tbaa !24
  store i64 %t56, ptr %l37, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %l37, !tbaa !24
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t57 = load i64, ptr %l37, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
bb18:
  store i1 false, ptr %l7, !tbaa !21
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t58, ptr %l8, !tbaa !23
  store i1 false, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  store i1 false, ptr %l12, !tbaa !21
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = icmp slt i64 %t60, 0
  br i1 %t62, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t65 = load i32, ptr %l4, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l48
  br label %bb21
bb20:
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t70 = load i32, ptr %l4, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l65
  br label %bb34
bb21:
  %t74 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t76 = trunc i64 19 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t80 = load i32, ptr %l4, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l53
  br label %bb24
bb23:
  br label %bb33
bb24:
  %t84 = load i32, ptr %l53, !tbaa !23
  store i32 %t84, ptr %l8, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l8, !tbaa !23
  %t89 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %t85, i32 %t86)
  store i1 %t89, ptr %l56
  br label %bb25
bb25:
  %t90 = load i1, ptr %l56, !tbaa !21
  store i1 %t90, ptr %l7, !tbaa !21
  %t91 = load i1, ptr %l7, !tbaa !21
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb26, label %bb27
bb26:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i32, ptr %l8, !tbaa !23
  %t99 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edtorCand(ptr %v0, ptr %t95, i32 %t96)
  store i1 %t99, ptr %l62
  br label %bb28
bb27:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb29
bb28:
  %t100 = load i1, ptr %l62, !tbaa !21
  store i1 %t100, ptr %l59, !tbaa !21
  br label %bb29
bb29:
  %t101 = load i1, ptr %l59, !tbaa !21
  br i1 %t101, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l7, !tbaa !21
  store i1 true, ptr %l12, !tbaa !21
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  br label %bb81
bb34:
  %t102 = load i32, ptr %l65, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb35, label %bb36
bb35:
  %t107 = load ptr, ptr %l3, !tbaa !29
  %t108 = load i32, ptr %l4, !tbaa !23
  %t111 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l71
  br label %bb37
bb36:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb38
bb37:
  %t112 = load i1, ptr %l71, !tbaa !21
  store i1 %t112, ptr %l68, !tbaa !21
  br label %bb38
bb38:
  %t113 = load i1, ptr %l68, !tbaa !21
  br i1 %t113, label %bb39, label %bb40
bb39:
  %t114 = load ptr, ptr %l3, !tbaa !29
  store ptr %t114, ptr %l73, !tbaa !29
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t116 = load i32, ptr %l4, !tbaa !23
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t119, ptr %l76
  br label %bb41
bb40:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb43
bb41:
  %t120 = load ptr, ptr %l73, !tbaa !29
  %t121 = load i32, ptr %l76, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t122, ptr %l77
  br label %bb42
bb42:
  %t123 = load i32, ptr %l77, !range !{i32 0, i32 6}
  %t125 = trunc i64 0 to i32
  %t126 = icmp eq i32 %t123, %t125
  store i1 %t126, ptr %l72, !tbaa !21
  br label %bb43
bb43:
  %t128 = load i1, ptr %l72, !tbaa !21
  br i1 %t128, label %bb44, label %bb45
bb44:
  %t129 = load ptr, ptr %l3, !tbaa !29
  store ptr %t129, ptr %l80, !tbaa !29
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t131 = load i32, ptr %l4, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t134, ptr %l83
  br label %bb46
bb45:
  br label %bb80
bb46:
  %t135 = load ptr, ptr %l80, !tbaa !29
  %t136 = load i32, ptr %l83, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t137, ptr %l84
  br label %bb47
bb47:
  %t138 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t138, ptr %l13, !tbaa !27
  %t139 = load i64, ptr %l2, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t145 = icmp slt i64 %t139, %t142
  br i1 %t145, label %bb48, label %bb49
bb48:
  %t147 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t147, ptr %l89, !tbaa !27
  %t148 = load i64, ptr %l2, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t148
  %t153 = load i32, ptr %t152, !tbaa !33
  store i32 %t153, ptr %l8, !tbaa !23
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l8, !tbaa !23
  %t159 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %t155, i32 %t156)
  store i1 %t159, ptr %l94
  br label %bb50
bb49:
  br label %bb79
bb50:
  %t160 = load i1, ptr %l94, !tbaa !21
  store i1 %t160, ptr %l7, !tbaa !21
  %t161 = load i1, ptr %l7, !tbaa !21
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb51, label %bb52
bb51:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l8, !tbaa !23
  %t169 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandleCand(ptr %v0, ptr %t165, i32 %t166)
  store i1 %t169, ptr %l100
  br label %bb53
bb52:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb54
bb53:
  %t170 = load i1, ptr %l100, !tbaa !21
  store i1 %t170, ptr %l97, !tbaa !21
  br label %bb54
bb54:
  %t171 = load i1, ptr %l97, !tbaa !21
  br i1 %t171, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l7, !tbaa !21
  store i1 true, ptr %l9, !tbaa !21
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t172 = load i1, ptr %l7, !tbaa !21
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb58, label %bb59
bb58:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l8, !tbaa !23
  %t180 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %t176, i32 %t177)
  store i1 %t180, ptr %l106
  br label %bb60
bb59:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb61
bb60:
  %t181 = load i1, ptr %l106, !tbaa !21
  store i1 %t181, ptr %l103, !tbaa !21
  br label %bb61
bb61:
  %t182 = load i1, ptr %l103, !tbaa !21
  br i1 %t182, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l7, !tbaa !21
  store i1 true, ptr %l10, !tbaa !21
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t183 = load i1, ptr %l7, !tbaa !21
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb65, label %bb66
bb65:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load i32, ptr %l8, !tbaa !23
  %t191 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayCand(ptr %v0, ptr %t187, i32 %t188)
  store i1 %t191, ptr %l112
  br label %bb67
bb66:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb68
bb67:
  %t192 = load i1, ptr %l112, !tbaa !21
  store i1 %t192, ptr %l109, !tbaa !21
  br label %bb68
bb68:
  %t193 = load i1, ptr %l109, !tbaa !21
  br i1 %t193, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l7, !tbaa !21
  store i1 true, ptr %l11, !tbaa !21
  br label %bb71
bb70:
  br label %bb71
bb71:
  %t194 = load i1, ptr %l7, !tbaa !21
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb72, label %bb73
bb72:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr %l8, !tbaa !23
  %t202 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edtorCand(ptr %v0, ptr %t198, i32 %t199)
  store i1 %t202, ptr %l118
  br label %bb74
bb73:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb75
bb74:
  %t203 = load i1, ptr %l118, !tbaa !21
  store i1 %t203, ptr %l115, !tbaa !21
  br label %bb75
bb75:
  %t204 = load i1, ptr %l115, !tbaa !21
  br i1 %t204, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l7, !tbaa !21
  store i1 true, ptr %l12, !tbaa !21
  br label %bb78
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t205 = load i1, ptr %l7, !tbaa !21
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb82, label %bb83
bb82:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/free:Free", ptr %t209, i32 0, i32 17
  %t212 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t211, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t212, i64 1)
  br label %bb84
bb83:
  br label %bb85
bb84:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb85:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i32, ptr %l4, !tbaa !23
  %t218 = load i64, ptr %l2, !tbaa !24
  %t219 = load i1, ptr %l9, !tbaa !21
  %t220 = load i32, ptr %l8, !tbaa !23
  %t221 = load i1, ptr %l12, !tbaa !21
  %t228 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2enewPlace(ptr %v0, ptr %t216, i32 %t217, i64 %t218, i1 %t219, i32 %t220, i1 %t221)
  store i64 %t228, ptr %l131
  br label %bb86
bb86:
  %t229 = load i64, ptr %l131, !tbaa !24
  store i64 %t229, ptr %l14, !tbaa !24
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/free:Free", ptr %t230, i32 0, i32 12
  %t233 = load i64, ptr %l14, !tbaa !24
  %t234 = load i1, ptr %l10, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t232, i64 %t233, i1 %t234)
  br label %bb87
bb87:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"compiler/free:Free", ptr %t238, i32 0, i32 13
  %t241 = load i64, ptr %l14, !tbaa !24
  %t242 = load i1, ptr %l11, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t240, i64 %t241, i1 %t242)
  br label %bb88
bb88:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/free:Free", ptr %t246, i32 0, i32 16
  %t249 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t250 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t248, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t249, i64 %t250)
  br label %bb89
bb89:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/free:Free", ptr %t254, i32 0, i32 17
  %t257 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t256, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t257, i64 2)
  br label %bb90
bb90:
  %t260 = load i64, ptr %l14, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t260, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplainElems(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:Free", ptr %t7, i32 0, i32 15
  %t13 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t9, i64 %a1)
  store i32 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l7, !tbaa !29
  %t15 = load i32, ptr %l11, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t16, ptr %l12
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = load i32, ptr %l12, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l13
  br label %bb4
bb4:
  %t20 = load i32, ptr %l13, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l16
  br label %bb5
bb5:
  %t26 = load i1, ptr %l16, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t33, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb9
bb8:
  %t34 = load i1, ptr %l21, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l18, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ereachedTasks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
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
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l49 = alloca i64
  %l69 = alloca i1
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i64
  %l84 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca i64
  %l113 = alloca i64
  %l134 = alloca ptr
  %l135 = alloca i64
  %l136 = alloca ptr
  %l137 = alloca i64
  %l140 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca i64
  %l148 = alloca i64
  %l151 = alloca i1
  %l157 = alloca ptr
  %l163 = alloca i64
  %l165 = alloca i64
  %l170 = alloca i64
  %l174 = alloca i1
  %l179 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l192 = alloca i1
  %l196 = alloca i1
  %l206 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l208 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l210 = alloca i64
  %l212 = alloca i64
  %l217 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l37
  br label %bb1
bb1:
  %t6 = load i64, ptr %l37, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l38, !tbaa !24
  %t8 = load i64, ptr %l38, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l38, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l2, !tbaa !27
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l41
  br label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_98179ed2ec661f5d_533fcebe8f905861)
  unreachable
bb4:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb10
bb7:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l49, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l49, !tbaa !24
  store i64 %t47, ptr %l46, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l46, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l9, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eentry(ptr %v0, ptr %t67, i64 %t68)
  store i1 %t71, ptr %l69
  br label %bb15
bb15:
  %t72 = load i1, ptr %l69, !tbaa !21
  %t73 = xor i1 %t72, true
  br i1 %t73, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t75 = load i64, ptr %l9, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i1, ptr %t78, i64 %t75
  store i1 true, ptr %t79, !tbaa !31
  %t80 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t80)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l8, !tbaa !24
  br label %bb11
bb21:
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l76
  br label %bb22
bb22:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t89 = load i64, ptr %l1, !tbaa !24
  store i64 %t89, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t91 = load i64, ptr %l12, !tbaa !24
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = icmp sgt i64 %t91, %t92
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load i64, ptr %l13, !tbaa !24
  %t99 = icmp sgt i64 %t97, 0
  br i1 %t99, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb28
bb25:
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = sub i64 %t101, %t102
  %t106 = load i64, ptr %l13, !tbaa !24
  %t109 = add i64 %t105, %t106
  %t111 = sub i64 %t109, 1
  %t112 = load i64, ptr %l13, !tbaa !24
  %t115 = sdiv i64 %t111, %t112
  store i64 %t115, ptr %l84, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb27
bb27:
  %t117 = load i64, ptr %l84, !tbaa !24
  store i64 %t117, ptr %l81, !tbaa !24
  br label %bb28
bb28:
  %t118 = load i64, ptr %l81, !tbaa !24
  store i64 %t118, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t119 = load i64, ptr %l15, !tbaa !24
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb31:
  br label %bb32
bb32:
  %t127 = load i64, ptr %l11, !tbaa !24
  %t128 = load i64, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = mul i64 %t128, %t129
  %t135 = add i64 %t127, %t132
  store i64 %t135, ptr %l16, !tbaa !24
  store ptr %l10, ptr %l102, !tbaa !29
  %t137 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s6, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l103
  br label %bb33
bb33:
  %t138 = load ptr, ptr %l102, !tbaa !29
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %s0, ptr %s6, ptr %t138, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb35:
  %t140 = load i64, ptr %l15, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l15, !tbaa !24
  br label %bb29
bb36:
  store i64 0, ptr %l17, !tbaa !24
  %t144 = load i64, ptr %l1, !tbaa !24
  store i64 %t144, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t146 = load i64, ptr %l18, !tbaa !24
  %t147 = load i64, ptr %l17, !tbaa !24
  %t150 = icmp sgt i64 %t146, %t147
  br i1 %t150, label %bb37, label %bb38
bb37:
  %t152 = load i64, ptr %l19, !tbaa !24
  %t154 = icmp sgt i64 %t152, 0
  br i1 %t154, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb42
bb39:
  %t156 = load i64, ptr %l18, !tbaa !24
  %t157 = load i64, ptr %l17, !tbaa !24
  %t160 = sub i64 %t156, %t157
  %t161 = load i64, ptr %l19, !tbaa !24
  %t164 = add i64 %t160, %t161
  %t166 = sub i64 %t164, 1
  %t167 = load i64, ptr %l19, !tbaa !24
  %t170 = sdiv i64 %t166, %t167
  store i64 %t170, ptr %l113, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb41
bb41:
  %t172 = load i64, ptr %l113, !tbaa !24
  store i64 %t172, ptr %l110, !tbaa !24
  br label %bb42
bb42:
  %t173 = load i64, ptr %l110, !tbaa !24
  store i64 %t173, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb43
bb43:
  %t174 = load i64, ptr %l21, !tbaa !24
  %t175 = load i64, ptr %l20, !tbaa !24
  %t178 = icmp slt i64 %t174, %t175
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb44, label %bb45
bb44:
  br label %bb69
bb45:
  br label %bb46
bb46:
  %t182 = load i64, ptr %l17, !tbaa !24
  %t183 = load i64, ptr %l21, !tbaa !24
  %t184 = load i64, ptr %l19, !tbaa !24
  %t187 = mul i64 %t183, %t184
  %t190 = add i64 %t182, %t187
  store i64 %t190, ptr %l22, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/free:Free", ptr %t192, i32 0, i32 60
  %t195 = load i64, ptr %l22, !tbaa !24
  %t198 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t194, i64 %t195)
  store ptr %t198, ptr %l134
  br label %bb47
bb47:
  %t199 = load ptr, ptr %l134, !tbaa !29
  store ptr %t199, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb48
bb48:
  %t200 = load i64, ptr %l24, !tbaa !24
  store i64 %t200, ptr %l135, !tbaa !24
  %t201 = load ptr, ptr %l23, !tbaa !29
  store ptr %t201, ptr %l136, !tbaa !29
  %t202 = ptrtoint ptr %v0 to i64
  store i64 %t202, ptr %l137, !tbaa !24
  %t203 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t203, label %bb49, label %bb50
bb49:
  %t205 = load ptr, ptr %l136, !tbaa !29
  %t206 = call ptr @__olang_region_or(ptr %t205, ptr %v0)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l137, !tbaa !24
  br label %bb50
bb50:
  %t208 = load ptr, ptr %l23, !tbaa !29
  %t209 = load i64, ptr %l137
  %t210 = inttoptr i64 %t209 to ptr
  %t212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t210, ptr %t208)
  store i64 %t212, ptr %l140
  br label %bb51
bb51:
  %t213 = load i64, ptr %l135, !tbaa !24
  %t214 = load i64, ptr %l140, !tbaa !24
  %t215 = icmp slt i64 %t213, %t214
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb52, label %bb53
bb52:
  br label %bb67
bb53:
  br label %bb54
bb54:
  %t219 = load ptr, ptr %l23, !tbaa !29
  store ptr %t219, ptr %l143, !tbaa !29
  %t220 = ptrtoint ptr %v0 to i64
  store i64 %t220, ptr %l144, !tbaa !24
  %t221 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t221, label %bb55, label %bb56
bb55:
  %t223 = load ptr, ptr %l143, !tbaa !29
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr %v0)
  %t225 = ptrtoint ptr %t224 to i64
  store i64 %t225, ptr %l144, !tbaa !24
  br label %bb56
bb56:
  %t226 = load ptr, ptr %l23, !tbaa !29
  %t227 = load i64, ptr %l24, !tbaa !24
  %t228 = load i64, ptr %l144
  %t229 = inttoptr i64 %t228 to ptr
  %t232 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t229, ptr %t226, i64 %t227)
  store i64 %t232, ptr %l148
  br label %bb57
bb57:
  %t233 = load i64, ptr %l148, !tbaa !24
  store i64 %t233, ptr %l25, !tbaa !24
  %t234 = load i64, ptr %l25, !tbaa !24
  %t236 = icmp sge i64 %t234, 0
  br i1 %t236, label %bb58, label %bb59
bb58:
  %t238 = load i64, ptr %l25, !tbaa !24
  %t239 = load i64, ptr %l1, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  store i1 %t242, ptr %l151, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb60
bb60:
  %t244 = load i1, ptr %l151, !tbaa !21
  br i1 %t244, label %bb61, label %bb62
bb61:
  %t245 = load i64, ptr %l25, !tbaa !24
  %t248 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %s0, ptr %s0, ptr %l10, i64 %t245)
  store ptr %t248, ptr %l157
  br label %bb63
bb62:
  br label %bb65
bb63:
  %t249 = load i64, ptr %l22, !tbaa !24
  %t250 = load ptr, ptr %l157, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t250, i64 %t249)
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t252 = load i64, ptr %l24, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l24, !tbaa !24
  br label %bb48
bb67:
  br label %bb68
bb68:
  %t256 = load i64, ptr %l21, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l21, !tbaa !24
  br label %bb43
bb69:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb70
bb70:
  %t260 = load i64, ptr %l26, !tbaa !24
  store i64 %t260, ptr %l163, !tbaa !24
  %t262 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t262, ptr %l165
  br label %bb71
bb71:
  %t263 = load i64, ptr %l163, !tbaa !24
  %t264 = load i64, ptr %l165, !tbaa !24
  %t265 = icmp slt i64 %t263, %t264
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb72, label %bb73
bb72:
  br label %bb112
bb73:
  br label %bb74
bb74:
  %t269 = load i64, ptr %l26, !tbaa !24
  %t272 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l3, i64 %t269)
  store i64 %t272, ptr %l170
  br label %bb75
bb75:
  %t273 = load i64, ptr %l170, !tbaa !24
  store i64 %t273, ptr %l27, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/free:Free", ptr %t274, i32 0, i32 42
  %t277 = load i64, ptr %l27, !tbaa !24
  %t280 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t276, i64 %t277)
  store i1 %t280, ptr %l174
  br label %bb76
bb76:
  %t281 = load i1, ptr %l174, !tbaa !21
  br i1 %t281, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  store %olang.scope zeroinitializer, ptr %s18
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/free:Free", ptr %t283, i32 0, i32 2
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t287 = load i64, ptr %l27, !tbaa !24
  %t290 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eCalleesOf(ptr %v0, ptr %s18, ptr %t286, i64 %t287)
  store { i64, ptr } %t290, ptr %l179
  br label %bb80
bb80:
  %t291 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = extractvalue { i64, ptr } %t291, 1
  %t294 = mul i64 %t292, 8
  %t295 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  store { i64, ptr } %t297, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t299 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t299, 0
  store i64 %t301, ptr %l30, !tbaa !24
  br label %bb81
bb81:
  %t303 = load i64, ptr %l29, !tbaa !24
  %t304 = load i64, ptr %l30, !tbaa !24
  %t307 = icmp slt i64 %t303, %t304
  %t309 = xor i1 %t307, true
  br i1 %t309, label %bb82, label %bb83
bb82:
  br label %bb96
bb83:
  br label %bb84
bb84:
  %t311 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t311, ptr %l187, !tbaa !27
  %t312 = load i64, ptr %l29, !tbaa !24
  %t314 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = getelementptr i64, ptr %t315, i64 %t312
  %t317 = load i64, ptr %t316, !tbaa !34
  store i64 %t317, ptr %l31, !tbaa !24
  %t319 = load i64, ptr %l31, !tbaa !24
  %t321 = icmp slt i64 %t319, 0
  br i1 %t321, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l192, !tbaa !21
  br label %bb87
bb86:
  %t323 = load i64, ptr %l31, !tbaa !24
  %t324 = load i64, ptr %l1, !tbaa !24
  %t327 = icmp sge i64 %t323, %t324
  store i1 %t327, ptr %l192, !tbaa !21
  br label %bb87
bb87:
  %t329 = load i1, ptr %l192, !tbaa !21
  br i1 %t329, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l196, !tbaa !21
  br label %bb90
bb89:
  %t330 = load i64, ptr %l31, !tbaa !24
  %t332 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t333 = load ptr, ptr %t332, !tbaa !27
  %t334 = getelementptr i1, ptr %t333, i64 %t330
  %t335 = load i1, ptr %t334, !tbaa !31
  store i1 %t335, ptr %l196, !tbaa !21
  br label %bb90
bb90:
  %t337 = load i1, ptr %l196, !tbaa !21
  br i1 %t337, label %bb91, label %bb92
bb91:
  br label %bb95
bb92:
  br label %bb93
bb93:
  %t338 = load i64, ptr %l31, !tbaa !24
  %t340 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = getelementptr i1, ptr %t341, i64 %t338
  store i1 true, ptr %t342, !tbaa !31
  %t343 = load i64, ptr %l31, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t343)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t346 = load i64, ptr %l29, !tbaa !24
  %t348 = add i64 %t346, 1
  store i64 %t348, ptr %l29, !tbaa !24
  br label %bb81
bb96:
  call void @__olang_scope_close(ptr %s18)
  store %olang.scope zeroinitializer, ptr %s22
  %t350 = load i64, ptr %l27, !tbaa !24
  %t353 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s22, ptr %l10, i64 %t350)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t353, ptr %l206
  br label %bb97
bb97:
  %t355 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s22, ptr %l206)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t355, ptr %l208
  br label %bb98
bb98:
  %t356 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l208
  %t357 = call ptr @__olang_scope_alloc_a(ptr %s22, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t356, ptr %t357
  store ptr %t357, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb99
bb99:
  %t359 = load i64, ptr %l33, !tbaa !24
  store i64 %t359, ptr %l210, !tbaa !24
  %t360 = load ptr, ptr %l32, !tbaa !29
  %t362 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s22, ptr %t360)
  store i64 %t362, ptr %l212
  br label %bb100
bb100:
  %t363 = load i64, ptr %l210, !tbaa !24
  %t364 = load i64, ptr %l212, !tbaa !24
  %t365 = icmp slt i64 %t363, %t364
  %t367 = xor i1 %t365, true
  br i1 %t367, label %bb101, label %bb102
bb101:
  br label %bb110
bb102:
  br label %bb103
bb103:
  %t369 = load ptr, ptr %l32, !tbaa !29
  %t370 = load i64, ptr %l33, !tbaa !24
  %t373 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s22, ptr %t369, i64 %t370)
  store i64 %t373, ptr %l217
  br label %bb104
bb104:
  %t374 = load i64, ptr %l217, !tbaa !24
  store i64 %t374, ptr %l34, !tbaa !24
  %t375 = load i64, ptr %l34, !tbaa !24
  %t377 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr i1, ptr %t378, i64 %t375
  %t380 = load i1, ptr %t379, !tbaa !31
  br i1 %t380, label %bb105, label %bb106
bb105:
  br label %bb109
bb106:
  br label %bb107
bb107:
  %t382 = load i64, ptr %l34, !tbaa !24
  %t384 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = getelementptr i1, ptr %t385, i64 %t382
  store i1 true, ptr %t386, !tbaa !31
  %t387 = load i64, ptr %l34, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t387)
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t390 = load i64, ptr %l33, !tbaa !24
  %t392 = add i64 %t390, 1
  store i64 %t392, ptr %l33, !tbaa !24
  br label %bb99
bb110:
  call void @__olang_scope_close(ptr %s22)
  br label %bb111
bb111:
  %t394 = load i64, ptr %l26, !tbaa !24
  %t396 = add i64 %t394, 1
  store i64 %t396, ptr %l26, !tbaa !24
  br label %bb70
bb112:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, [2 x i64] } %a4, i1 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i1
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
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca ptr
  %l48 = alloca i64
  %l51 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i1
  %l60 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, [2 x i64] }
  %l69 = alloca { i64, [2 x i64] }
  %l71 = alloca i1
  %l73 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l77 = alloca i1
  %l83 = alloca i1
  %l85 = alloca { i64, ptr }
  %l89 = alloca { i64, [2 x i64] }
  %l91 = alloca { i64, [2 x i64] }
  %l93 = alloca i1
  %l95 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l107 = alloca i1
  %l115 = alloca i1
  %l117 = alloca i1
  %l119 = alloca { i64, ptr }
  %l123 = alloca { i64, [2 x i64] }
  %l125 = alloca { i64, [2 x i64] }
  %l127 = alloca i1
  %l129 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l153 = alloca i1
  %l159 = alloca i1
  %l161 = alloca { i64, ptr }
  %l165 = alloca { i64, [2 x i64] }
  %l167 = alloca { i64, [2 x i64] }
  %l169 = alloca i1
  %l171 = alloca { i64, ptr }
  %l176 = alloca ptr
  %l177 = alloca i1
  %l183 = alloca i1
  %l185 = alloca { i64, ptr }
  %l189 = alloca { i64, [2 x i64] }
  %l191 = alloca { i64, [2 x i64] }
  %l193 = alloca i1
  %l195 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l201 = alloca i1
  %l207 = alloca i64
  %l210 = alloca i1
  %l214 = alloca i1
  %l218 = alloca ptr
  %l224 = alloca i64
  %l226 = alloca ptr
  %l230 = alloca ptr
  %l233 = alloca i64
  %l238 = alloca i1
  %l241 = alloca i1
  %l246 = alloca i1
  %l251 = alloca { i64, [2 x i64] }
  %l253 = alloca { i64, [2 x i64] }
  %l255 = alloca i1
  %l263 = alloca i64
  %l269 = alloca i64
  %l272 = alloca i64
  %l291 = alloca i64
  %l308 = alloca i64
  %l311 = alloca i64
  %l332 = alloca i64
  %l335 = alloca i1
  %l338 = alloca i1
  %l340 = alloca i64
  %l347 = alloca { i64, ptr }
  %l354 = alloca ptr
  %l355 = alloca i1
  %l367 = alloca ptr
  %l368 = alloca i1
  %l377 = alloca ptr
  %l378 = alloca i64
  %t13 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store { i64, [2 x i64] } %a4, ptr %l4
  store i1 %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l41
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l41, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = trunc i64 %t9 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 0
  store i64 4, ptr %t14
  %t16 = insertvalue { i32 } undef, i32 %t11, 0
  %t17 = getelementptr { i64, [2 x i64] }, ptr %t13, i32 0, i32 1
  store { i32 } %t16, ptr %t17
  %t18 = load { i64, [2 x i64] }, ptr %t13
  store { i64, [2 x i64] } %t18, ptr %l8
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t24 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l48
  br label %bb2
bb2:
  %t25 = load i64, ptr %l48, !tbaa !24
  store i64 %t25, ptr %l9, !tbaa !24
  %t26 = load i1, ptr %l5, !tbaa !21
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb3, label %bb4
bb3:
  %t30 = load i64, ptr %l9, !tbaa !24
  %t32 = icmp sge i64 %t30, 0
  store i1 %t32, ptr %l51, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l51, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp ne i64 %t35, %t36
  store i1 %t39, ptr %l54, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb8
bb8:
  %t41 = load i1, ptr %l54, !tbaa !21
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Plan", ptr %t42, i32 0, i32 5
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l60, !tbaa !27
  %t46 = load i64, ptr %l9, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i64, ptr %t49, i64 %t46
  %t51 = load i64, ptr %t50, !tbaa !34
  %t53 = icmp eq i64 %t51, 1
  store i1 %t53, ptr %l58, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb11
bb11:
  %t55 = load i1, ptr %l58, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t56 = load ptr, ptr %l7, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Plan", ptr %t56, i32 0, i32 6
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l65, !tbaa !27
  %t60 = load i64, ptr %l9, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, [2 x i64] }, ptr %t63, i64 %t60
  %t65 = load { i64, [2 x i64] }, ptr %t64
  store { i64, [2 x i64] } %t65, ptr %l67
  %t66 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t66, ptr %l69
  %t69 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l67, ptr %l69)
  store i1 %t69, ptr %l71
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t70 = load i1, ptr %l71, !tbaa !21
  br i1 %t70, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l7, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Plan", ptr %t71, i32 0, i32 6
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l73, !tbaa !27
  %t75 = load i64, ptr %l9, !tbaa !24
  %t76 = load { i64, [2 x i64] }, ptr %l8
  %t79 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i64 %t75
  store { i64, [2 x i64] } %t76, ptr %t81
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %ret
bb18:
  %t82 = load ptr, ptr %l2, !tbaa !29
  store ptr %t82, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t83 = load ptr, ptr %l76, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t86 = load ptr, ptr %l76, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 18}
  %t89 = icmp eq i64 %t87, 5
  store i1 %t89, ptr %l77, !tbaa !21
  br label %bb20
bb20:
  %t90 = load i1, ptr %l77, !tbaa !21
  br i1 %t90, label %bb21, label %bb22
bb21:
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l10, !tbaa !29
  br label %bb23
bb22:
  br label %bb32
bb23:
  %t97 = load i1, ptr %l5, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb27
bb25:
  %t99 = load ptr, ptr %l7, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Plan", ptr %t99, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l85, !tbaa !27
  %t103 = load ptr, ptr %l10, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Promote", ptr %t103, i32 0, i32 1
  %t106 = load i32, ptr %t105, !tbaa !23
  %t108 = sext i32 %t106 to i64
  %t110 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i64 %t108
  %t113 = load { i64, [2 x i64] }, ptr %t112
  store { i64, [2 x i64] } %t113, ptr %l89
  %t114 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t114, ptr %l91
  %t117 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l89, ptr %l91)
  store i1 %t117, ptr %l93
  br label %bb26
bb26:
  %t118 = load i1, ptr %l93, !tbaa !21
  store i1 %t118, ptr %l83, !tbaa !21
  br label %bb27
bb27:
  %t119 = load i1, ptr %l83, !tbaa !21
  br i1 %t119, label %bb28, label %bb29
bb28:
  %t120 = load ptr, ptr %l7, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Plan", ptr %t120, i32 0, i32 0
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l95, !tbaa !27
  %t124 = load ptr, ptr %l10, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Promote", ptr %t124, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  %t129 = sext i32 %t127 to i64
  %t130 = load { i64, [2 x i64] }, ptr %l8
  %t133 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, [2 x i64] }, ptr %t134, i64 %t129
  store { i64, [2 x i64] } %t130, ptr %t135
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i64, ptr %l1, !tbaa !24
  %t138 = load ptr, ptr %l10, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Promote", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t142 = load i64, ptr %l3, !tbaa !24
  %t143 = load { i64, [2 x i64] }, ptr %l4
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %t136, i64 %t137, ptr %t141, i64 %t142, { i64, [2 x i64] } %t143, i1 false, i1 true)
  br label %bb31
bb31:
  br label %bb187
bb32:
  %t149 = load ptr, ptr %l2, !tbaa !29
  store ptr %t149, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t150 = load ptr, ptr %l106, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb33, label %bb34
bb33:
  %t153 = load ptr, ptr %l106, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 18}
  %t156 = icmp eq i64 %t154, 7
  store i1 %t156, ptr %l107, !tbaa !21
  br label %bb34
bb34:
  %t157 = load i1, ptr %l107, !tbaa !21
  br i1 %t157, label %bb35, label %bb36
bb35:
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t160, i32 0, i32 2
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l11, !tbaa !29
  br label %bb37
bb36:
  br label %bb55
bb37:
  %t164 = load ptr, ptr %l11, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Make", ptr %t164, i32 0, i32 4
  %t167 = load i32, ptr %t166, !tbaa !23
  %t169 = icmp sge i32 %t167, 0
  br i1 %t169, label %bb38, label %bb39
bb38:
  %t171 = load i1, ptr %l5, !tbaa !21
  br i1 %t171, label %bb40, label %bb41
bb39:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb44
bb40:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb43
bb41:
  %t173 = load ptr, ptr %l7, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Plan", ptr %t173, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  store { i64, ptr } %t176, ptr %l119, !tbaa !27
  %t177 = load ptr, ptr %l11, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Make", ptr %t177, i32 0, i32 4
  %t180 = load i32, ptr %t179, !tbaa !23
  %t182 = sext i32 %t180 to i64
  %t184 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, [2 x i64] }, ptr %t185, i64 %t182
  %t187 = load { i64, [2 x i64] }, ptr %t186
  store { i64, [2 x i64] } %t187, ptr %l123
  %t188 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t188, ptr %l125
  %t191 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l123, ptr %l125)
  store i1 %t191, ptr %l127
  br label %bb42
bb42:
  %t192 = load i1, ptr %l127, !tbaa !21
  store i1 %t192, ptr %l117, !tbaa !21
  br label %bb43
bb43:
  %t193 = load i1, ptr %l117, !tbaa !21
  store i1 %t193, ptr %l115, !tbaa !21
  br label %bb44
bb44:
  %t194 = load i1, ptr %l115, !tbaa !21
  br i1 %t194, label %bb45, label %bb46
bb45:
  %t195 = load ptr, ptr %l7, !tbaa !29
  %t197 = getelementptr %"compiler/typed:Plan", ptr %t195, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  store { i64, ptr } %t198, ptr %l129, !tbaa !27
  %t199 = load ptr, ptr %l11, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Make", ptr %t199, i32 0, i32 4
  %t202 = load i32, ptr %t201, !tbaa !23
  %t204 = sext i32 %t202 to i64
  %t205 = load { i64, [2 x i64] }, ptr %l8
  %t208 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, [2 x i64] }, ptr %t209, i64 %t204
  store { i64, [2 x i64] } %t205, ptr %t210
  br label %bb47
bb46:
  br label %bb47
bb47:
  %t211 = load ptr, ptr %l11, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Make", ptr %t211, i32 0, i32 2
  %t214 = load { i64, ptr }, ptr %t213, !tbaa !27
  store { i64, ptr } %t214, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t216 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t216, 0
  store i64 %t218, ptr %l14, !tbaa !24
  br label %bb48
bb48:
  %t220 = load i64, ptr %l13, !tbaa !24
  %t221 = load i64, ptr %l14, !tbaa !24
  %t224 = icmp slt i64 %t220, %t221
  %t226 = xor i1 %t224, true
  br i1 %t226, label %bb49, label %bb50
bb49:
  br label %bb54
bb50:
  br label %bb51
bb51:
  %t228 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t228, ptr %l142, !tbaa !27
  %t229 = load i64, ptr %l13, !tbaa !24
  %t231 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr ptr, ptr %t232, i64 %t229
  %t234 = load ptr, ptr %t233, !tbaa !39
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i64, ptr %l1, !tbaa !24
  %t239 = load i64, ptr %l3, !tbaa !24
  %t240 = load { i64, [2 x i64] }, ptr %l4
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %t236, i64 %t237, ptr %t234, i64 %t239, { i64, [2 x i64] } %t240, i1 false, i1 false)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t246 = load i64, ptr %l13, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l13, !tbaa !24
  br label %bb48
bb54:
  br label %bb187
bb55:
  %t250 = load ptr, ptr %l2, !tbaa !29
  store ptr %t250, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t251 = load ptr, ptr %l152, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb56, label %bb57
bb56:
  %t254 = load ptr, ptr %l152, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 16
  store i1 %t257, ptr %l153, !tbaa !21
  br label %bb57
bb57:
  %t258 = load i1, ptr %l153, !tbaa !21
  br i1 %t258, label %bb58, label %bb59
bb58:
  %t259 = load ptr, ptr %l2, !tbaa !29
  %t261 = getelementptr { i64, [5 x i64] }, ptr %t259, i32 0, i32 1
  %t262 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t261, i32 0, i32 2
  %t263 = load ptr, ptr %t262
  store ptr %t263, ptr %l16, !tbaa !29
  br label %bb60
bb59:
  br label %bb68
bb60:
  %t265 = load i1, ptr %l5, !tbaa !21
  br i1 %t265, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb64
bb62:
  %t267 = load ptr, ptr %l7, !tbaa !29
  %t269 = getelementptr %"compiler/typed:Plan", ptr %t267, i32 0, i32 0
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l161, !tbaa !27
  %t271 = load ptr, ptr %l16, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Text", ptr %t271, i32 0, i32 1
  %t274 = load i32, ptr %t273, !tbaa !23
  %t276 = sext i32 %t274 to i64
  %t278 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr { i64, [2 x i64] }, ptr %t279, i64 %t276
  %t281 = load { i64, [2 x i64] }, ptr %t280
  store { i64, [2 x i64] } %t281, ptr %l165
  %t282 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t282, ptr %l167
  %t285 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l165, ptr %l167)
  store i1 %t285, ptr %l169
  br label %bb63
bb63:
  %t286 = load i1, ptr %l169, !tbaa !21
  store i1 %t286, ptr %l159, !tbaa !21
  br label %bb64
bb64:
  %t287 = load i1, ptr %l159, !tbaa !21
  br i1 %t287, label %bb65, label %bb66
bb65:
  %t288 = load ptr, ptr %l7, !tbaa !29
  %t290 = getelementptr %"compiler/typed:Plan", ptr %t288, i32 0, i32 0
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  store { i64, ptr } %t291, ptr %l171, !tbaa !27
  %t292 = load ptr, ptr %l16, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Text", ptr %t292, i32 0, i32 1
  %t295 = load i32, ptr %t294, !tbaa !23
  %t297 = sext i32 %t295 to i64
  %t298 = load { i64, [2 x i64] }, ptr %l8
  %t301 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr { i64, [2 x i64] }, ptr %t302, i64 %t297
  store { i64, [2 x i64] } %t298, ptr %t303
  br label %bb67
bb66:
  br label %bb67
bb67:
  br label %bb187
bb68:
  %t304 = load ptr, ptr %l2, !tbaa !29
  store ptr %t304, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t305 = load ptr, ptr %l176, !tbaa !29
  %t306 = icmp ne ptr %t305, null
  br i1 %t306, label %bb69, label %bb70
bb69:
  %t308 = load ptr, ptr %l176, !tbaa !29
  %t309 = load i64, ptr %t308, !range !{i64 0, i64 18}
  %t311 = icmp eq i64 %t309, 8
  store i1 %t311, ptr %l177, !tbaa !21
  br label %bb70
bb70:
  %t312 = load i1, ptr %l177, !tbaa !21
  br i1 %t312, label %bb71, label %bb72
bb71:
  %t313 = load ptr, ptr %l2, !tbaa !29
  %t315 = getelementptr { i64, [5 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t315, i32 0, i32 2
  %t317 = load ptr, ptr %t316
  store ptr %t317, ptr %l17, !tbaa !29
  br label %bb73
bb72:
  br label %bb81
bb73:
  %t319 = load i1, ptr %l5, !tbaa !21
  br i1 %t319, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb77
bb75:
  %t321 = load ptr, ptr %l7, !tbaa !29
  %t323 = getelementptr %"compiler/typed:Plan", ptr %t321, i32 0, i32 0
  %t324 = load { i64, ptr }, ptr %t323, !tbaa !27
  store { i64, ptr } %t324, ptr %l185, !tbaa !27
  %t325 = load ptr, ptr %l17, !tbaa !29
  %t327 = getelementptr %"compiler/typed:Collect", ptr %t325, i32 0, i32 2
  %t328 = load i32, ptr %t327, !tbaa !23
  %t330 = sext i32 %t328 to i64
  %t332 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t333 = load ptr, ptr %t332, !tbaa !27
  %t334 = getelementptr { i64, [2 x i64] }, ptr %t333, i64 %t330
  %t335 = load { i64, [2 x i64] }, ptr %t334
  store { i64, [2 x i64] } %t335, ptr %l189
  %t336 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t336, ptr %l191
  %t339 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l189, ptr %l191)
  store i1 %t339, ptr %l193
  br label %bb76
bb76:
  %t340 = load i1, ptr %l193, !tbaa !21
  store i1 %t340, ptr %l183, !tbaa !21
  br label %bb77
bb77:
  %t341 = load i1, ptr %l183, !tbaa !21
  br i1 %t341, label %bb78, label %bb79
bb78:
  %t342 = load ptr, ptr %l7, !tbaa !29
  %t344 = getelementptr %"compiler/typed:Plan", ptr %t342, i32 0, i32 0
  %t345 = load { i64, ptr }, ptr %t344, !tbaa !27
  store { i64, ptr } %t345, ptr %l195, !tbaa !27
  %t346 = load ptr, ptr %l17, !tbaa !29
  %t348 = getelementptr %"compiler/typed:Collect", ptr %t346, i32 0, i32 2
  %t349 = load i32, ptr %t348, !tbaa !23
  %t351 = sext i32 %t349 to i64
  %t352 = load { i64, [2 x i64] }, ptr %l8
  %t355 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr { i64, [2 x i64] }, ptr %t356, i64 %t351
  store { i64, [2 x i64] } %t352, ptr %t357
  br label %bb80
bb79:
  br label %bb80
bb80:
  br label %bb187
bb81:
  %t358 = load ptr, ptr %l2, !tbaa !29
  store ptr %t358, ptr %l200, !tbaa !29
  store i1 false, ptr %l201, !tbaa !21
  %t359 = load ptr, ptr %l200, !tbaa !29
  %t360 = icmp ne ptr %t359, null
  br i1 %t360, label %bb82, label %bb83
bb82:
  %t362 = load ptr, ptr %l200, !tbaa !29
  %t363 = load i64, ptr %t362, !range !{i64 0, i64 18}
  %t365 = icmp eq i64 %t363, 6
  store i1 %t365, ptr %l201, !tbaa !21
  br label %bb83
bb83:
  %t366 = load i1, ptr %l201, !tbaa !21
  br i1 %t366, label %bb84, label %bb85
bb84:
  %t367 = load ptr, ptr %l2, !tbaa !29
  %t369 = getelementptr { i64, [5 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t369, i32 0, i32 2
  %t371 = load ptr, ptr %t370
  store ptr %t371, ptr %l18, !tbaa !29
  br label %bb86
bb85:
  br label %bb162
bb86:
  %t373 = load ptr, ptr %l18, !tbaa !29
  %t375 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t373)
  store i64 %t375, ptr %l207
  br label %bb87
bb87:
  %t376 = load i64, ptr %l207, !tbaa !24
  store i64 %t376, ptr %l19, !tbaa !24
  %t377 = load i64, ptr %l19, !tbaa !24
  %t379 = icmp slt i64 %t377, 0
  br i1 %t379, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l210, !tbaa !21
  br label %bb90
bb89:
  %t381 = load ptr, ptr %l18, !tbaa !29
  %t383 = getelementptr %"compiler/typed:Call", ptr %t381, i32 0, i32 2
  %t384 = load i32, ptr %t383, !tbaa !23
  %t386 = icmp slt i32 %t384, 0
  store i1 %t386, ptr %l210, !tbaa !21
  br label %bb90
bb90:
  %t388 = load i1, ptr %l210, !tbaa !21
  br i1 %t388, label %bb91, label %bb92
bb91:
  store i1 true, ptr %l214, !tbaa !21
  br label %bb94
bb92:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/free:Free", ptr %t389, i32 0, i32 1
  %t392 = load i64, ptr %l19, !tbaa !24
  %t395 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t391, i64 %t392)
  store ptr %t395, ptr %l218
  br label %bb93
bb93:
  %t396 = load ptr, ptr %l218, !tbaa !29
  %t398 = getelementptr %"compiler/typed:Body", ptr %t396, i32 0, i32 11
  %t399 = load ptr, ptr %t398, !tbaa !29
  %t401 = icmp eq ptr %t399, null
  store i1 %t401, ptr %l214, !tbaa !21
  br label %bb94
bb94:
  %t403 = load i1, ptr %l214, !tbaa !21
  br i1 %t403, label %bb95, label %bb96
bb95:
  br label %ret
bb96:
  br label %bb97
bb97:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load i64, ptr %l19, !tbaa !24
  %t408 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %t404, i64 %t405)
  store i64 %t408, ptr %l224
  br label %bb98
bb98:
  %t409 = load i64, ptr %l224, !tbaa !24
  store i64 %t409, ptr %l20, !tbaa !24
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t410)
  store ptr %t412, ptr %l226
  br label %bb99
bb99:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/free:Free", ptr %t413, i32 0, i32 1
  %t416 = load i64, ptr %l19, !tbaa !24
  %t419 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t415, i64 %t416)
  store ptr %t419, ptr %l230
  br label %bb100
bb100:
  %t420 = load ptr, ptr %l230, !tbaa !29
  %t422 = getelementptr %"compiler/typed:Body", ptr %t420, i32 0, i32 2
  %t423 = load i32, ptr %t422, !tbaa !23
  %t424 = load ptr, ptr %l226, !tbaa !29
  %t426 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t424, i32 %t423)
  store i64 %t426, ptr %l233
  br label %bb101
bb101:
  %t427 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t428 = load i64, ptr %l233, !tbaa !24
  %t430 = icmp eq i64 %t428, %t427
  store i1 %t430, ptr %l21, !tbaa !21
  %t432 = load i1, ptr %l5, !tbaa !21
  %t434 = xor i1 %t432, true
  br i1 %t434, label %bb102, label %bb103
bb102:
  %t436 = load i1, ptr %l21, !tbaa !21
  %t438 = xor i1 %t436, true
  store i1 %t438, ptr %l238, !tbaa !21
  br label %bb104
bb103:
  store i1 false, ptr %l238, !tbaa !21
  br label %bb104
bb104:
  %t440 = load i1, ptr %l238, !tbaa !21
  br i1 %t440, label %bb105, label %bb106
bb105:
  %t441 = load i1, ptr %l6, !tbaa !21
  %t443 = xor i1 %t441, true
  store i1 %t443, ptr %l241, !tbaa !21
  br label %bb107
bb106:
  store i1 false, ptr %l241, !tbaa !21
  br label %bb107
bb107:
  %t445 = load i1, ptr %l241, !tbaa !21
  br i1 %t445, label %bb108, label %bb109
bb108:
  br label %ret
bb109:
  br label %bb110
bb110:
  %t446 = load i1, ptr %l5, !tbaa !21
  %t448 = xor i1 %t446, true
  br i1 %t448, label %bb111, label %bb112
bb111:
  %t450 = load ptr, ptr %l7, !tbaa !29
  %t451 = load ptr, ptr %l18, !tbaa !29
  %t453 = getelementptr %"compiler/typed:Call", ptr %t451, i32 0, i32 2
  %t454 = load i32, ptr %t453, !tbaa !23
  %t455 = load i64, ptr %l20, !tbaa !24
  %t459 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t450, i32 %t454, i64 %t455)
  store { i64, [2 x i64] } %t459, ptr %l251
  br label %bb113
bb112:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb115
bb113:
  %t460 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t460, ptr %l253
  %t463 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l251, ptr %l253)
  store i1 %t463, ptr %l255
  br label %bb114
bb114:
  %t464 = load i1, ptr %l255, !tbaa !21
  %t465 = xor i1 %t464, true
  store i1 %t465, ptr %l246, !tbaa !21
  br label %bb115
bb115:
  %t467 = load i1, ptr %l246, !tbaa !21
  br i1 %t467, label %bb116, label %bb117
bb116:
  br label %ret
bb117:
  br label %bb118
bb118:
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load i64, ptr %l1, !tbaa !24
  %t470 = load ptr, ptr %l18, !tbaa !29
  %t471 = load i64, ptr %l19, !tbaa !24
  %t472 = load { i64, [2 x i64] }, ptr %l4
  %t473 = load i64, ptr %l20, !tbaa !24
  %t480 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2evarsFit(ptr %v0, ptr %v1, ptr %t468, i64 %t469, ptr %t470, i64 %t471, { i64, [2 x i64] } %t472, i64 %t473)
  store i64 %t480, ptr %l263
  br label %bb119
bb119:
  %t481 = load i64, ptr %l263, !tbaa !24
  store i64 %t481, ptr %l22, !tbaa !24
  %t482 = load i64, ptr %l22, !tbaa !24
  %t484 = icmp slt i64 %t482, 0
  br i1 %t484, label %bb120, label %bb121
bb120:
  br label %ret
bb121:
  br label %bb122
bb122:
  store i64 0, ptr %l23, !tbaa !24
  store i64 63, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t486 = load i64, ptr %l24, !tbaa !24
  %t487 = load i64, ptr %l23, !tbaa !24
  %t490 = icmp sgt i64 %t486, %t487
  br i1 %t490, label %bb123, label %bb124
bb123:
  %t492 = load i64, ptr %l25, !tbaa !24
  %t494 = icmp sgt i64 %t492, 0
  br i1 %t494, label %bb125, label %bb126
bb124:
  store i64 0, ptr %l269, !tbaa !24
  br label %bb128
bb125:
  %t496 = load i64, ptr %l24, !tbaa !24
  %t497 = load i64, ptr %l23, !tbaa !24
  %t500 = sub i64 %t496, %t497
  %t501 = load i64, ptr %l25, !tbaa !24
  %t504 = add i64 %t500, %t501
  %t506 = sub i64 %t504, 1
  %t507 = load i64, ptr %l25, !tbaa !24
  %t510 = sdiv i64 %t506, %t507
  store i64 %t510, ptr %l272, !tbaa !24
  br label %bb127
bb126:
  store i64 0, ptr %l272, !tbaa !24
  br label %bb127
bb127:
  %t512 = load i64, ptr %l272, !tbaa !24
  store i64 %t512, ptr %l269, !tbaa !24
  br label %bb128
bb128:
  %t513 = load i64, ptr %l269, !tbaa !24
  store i64 %t513, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb129
bb129:
  %t514 = load i64, ptr %l27, !tbaa !24
  %t515 = load i64, ptr %l26, !tbaa !24
  %t518 = icmp slt i64 %t514, %t515
  %t520 = xor i1 %t518, true
  br i1 %t520, label %bb130, label %bb131
bb130:
  br label %bb138
bb131:
  br label %bb132
bb132:
  %t522 = load i64, ptr %l23, !tbaa !24
  %t523 = load i64, ptr %l27, !tbaa !24
  %t524 = load i64, ptr %l25, !tbaa !24
  %t527 = mul i64 %t523, %t524
  %t530 = add i64 %t522, %t527
  store i64 %t530, ptr %l28, !tbaa !24
  %t532 = load i64, ptr %l22, !tbaa !24
  %t533 = load i64, ptr %l28, !tbaa !24
  store i64 %t533, ptr %l291, !tbaa !24
  %t534 = load i64, ptr %l291, !tbaa !24
  %t535 = load i64, ptr %l291, !tbaa !24
  %t536 = shl i64 1, %t535
  %t539 = and i64 %t532, %t536
  %t541 = icmp ne i64 %t539, 0
  br i1 %t541, label %bb133, label %bb134
bb133:
  %t543 = load ptr, ptr %l7, !tbaa !29
  %t544 = load ptr, ptr %l18, !tbaa !29
  %t546 = getelementptr %"compiler/typed:Call", ptr %t544, i32 0, i32 2
  %t547 = load i32, ptr %t546, !tbaa !23
  %t548 = load i64, ptr %l28, !tbaa !24
  %t549 = load { i64, [2 x i64] }, ptr %l8
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetPassed(ptr %v0, ptr %t543, i32 %t547, i64 %t548, { i64, [2 x i64] } %t549)
  br label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t554 = load i64, ptr %l27, !tbaa !24
  %t556 = add i64 %t554, 1
  store i64 %t556, ptr %l27, !tbaa !24
  br label %bb129
bb138:
  store i64 0, ptr %l29, !tbaa !24
  %t558 = load ptr, ptr %l18, !tbaa !29
  %t560 = getelementptr %"compiler/typed:Call", ptr %t558, i32 0, i32 1
  %t561 = load { i64, ptr }, ptr %t560, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t561, 0
  store i64 %t563, ptr %l30, !tbaa !24
  store i64 1, ptr %l31, !tbaa !24
  %t565 = load i64, ptr %l30, !tbaa !24
  %t566 = load i64, ptr %l29, !tbaa !24
  %t569 = icmp sgt i64 %t565, %t566
  br i1 %t569, label %bb139, label %bb140
bb139:
  %t571 = load i64, ptr %l31, !tbaa !24
  %t573 = icmp sgt i64 %t571, 0
  br i1 %t573, label %bb141, label %bb142
bb140:
  store i64 0, ptr %l308, !tbaa !24
  br label %bb144
bb141:
  %t575 = load i64, ptr %l30, !tbaa !24
  %t576 = load i64, ptr %l29, !tbaa !24
  %t579 = sub i64 %t575, %t576
  %t580 = load i64, ptr %l31, !tbaa !24
  %t583 = add i64 %t579, %t580
  %t585 = sub i64 %t583, 1
  %t586 = load i64, ptr %l31, !tbaa !24
  %t589 = sdiv i64 %t585, %t586
  store i64 %t589, ptr %l311, !tbaa !24
  br label %bb143
bb142:
  store i64 0, ptr %l311, !tbaa !24
  br label %bb143
bb143:
  %t591 = load i64, ptr %l311, !tbaa !24
  store i64 %t591, ptr %l308, !tbaa !24
  br label %bb144
bb144:
  %t592 = load i64, ptr %l308, !tbaa !24
  store i64 %t592, ptr %l32, !tbaa !24
  store i64 0, ptr %l33, !tbaa !24
  br label %bb145
bb145:
  %t593 = load i64, ptr %l33, !tbaa !24
  %t594 = load i64, ptr %l32, !tbaa !24
  %t597 = icmp slt i64 %t593, %t594
  %t599 = xor i1 %t597, true
  br i1 %t599, label %bb146, label %bb147
bb146:
  br label %bb161
bb147:
  br label %bb148
bb148:
  %t601 = load i64, ptr %l29, !tbaa !24
  %t602 = load i64, ptr %l33, !tbaa !24
  %t603 = load i64, ptr %l31, !tbaa !24
  %t606 = mul i64 %t602, %t603
  %t609 = add i64 %t601, %t606
  store i64 %t609, ptr %l34, !tbaa !24
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t612 = load i64, ptr %l19, !tbaa !24
  %t613 = load i64, ptr %l34, !tbaa !24
  %t617 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t611, i64 %t612, i64 %t613)
  store i64 %t617, ptr %l332
  br label %bb149
bb149:
  %t618 = load i64, ptr %l332, !tbaa !24
  store i64 %t618, ptr %l35, !tbaa !24
  %t619 = load i64, ptr %l35, !tbaa !24
  %t621 = icmp sge i64 %t619, 0
  br i1 %t621, label %bb150, label %bb151
bb150:
  %t623 = load i64, ptr %l35, !tbaa !24
  %t625 = icmp slt i64 %t623, 63
  store i1 %t625, ptr %l335, !tbaa !21
  br label %bb152
bb151:
  store i1 false, ptr %l335, !tbaa !21
  br label %bb152
bb152:
  %t627 = load i1, ptr %l335, !tbaa !21
  br i1 %t627, label %bb153, label %bb154
bb153:
  %t628 = load i64, ptr %l22, !tbaa !24
  %t629 = load i64, ptr %l35, !tbaa !24
  store i64 %t629, ptr %l340, !tbaa !24
  %t630 = load i64, ptr %l340, !tbaa !24
  %t631 = load i64, ptr %l340, !tbaa !24
  %t632 = shl i64 1, %t631
  %t635 = and i64 %t628, %t632
  %t637 = icmp ne i64 %t635, 0
  store i1 %t637, ptr %l338, !tbaa !21
  br label %bb155
bb154:
  store i1 false, ptr %l338, !tbaa !21
  br label %bb155
bb155:
  %t639 = load i1, ptr %l338, !tbaa !21
  br i1 %t639, label %bb156, label %bb157
bb156:
  %t640 = load ptr, ptr %l0, !tbaa !29
  %t641 = load i64, ptr %l1, !tbaa !24
  %t642 = load ptr, ptr %l18, !tbaa !29
  %t644 = getelementptr %"compiler/typed:Call", ptr %t642, i32 0, i32 1
  %t645 = load { i64, ptr }, ptr %t644, !tbaa !27
  store { i64, ptr } %t645, ptr %l347, !tbaa !27
  %t646 = load i64, ptr %l34, !tbaa !24
  %t648 = getelementptr { i64, ptr }, ptr %l347, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !27
  %t650 = getelementptr ptr, ptr %t649, i64 %t646
  %t651 = load ptr, ptr %t650, !tbaa !39
  %t652 = load i64, ptr %l3, !tbaa !24
  %t653 = load { i64, [2 x i64] }, ptr %l4
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %t640, i64 %t641, ptr %t651, i64 %t652, { i64, [2 x i64] } %t653, i1 false, i1 false)
  br label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t659 = load i64, ptr %l33, !tbaa !24
  %t661 = add i64 %t659, 1
  store i64 %t661, ptr %l33, !tbaa !24
  br label %bb145
bb161:
  br label %bb187
bb162:
  %t663 = load ptr, ptr %l2, !tbaa !29
  store ptr %t663, ptr %l354, !tbaa !29
  store i1 false, ptr %l355, !tbaa !21
  %t664 = load ptr, ptr %l354, !tbaa !29
  %t665 = icmp ne ptr %t664, null
  br i1 %t665, label %bb163, label %bb164
bb163:
  %t667 = load ptr, ptr %l354, !tbaa !29
  %t668 = load i64, ptr %t667, !range !{i64 0, i64 18}
  %t670 = icmp eq i64 %t668, 17
  store i1 %t670, ptr %l355, !tbaa !21
  br label %bb164
bb164:
  %t671 = load i1, ptr %l355, !tbaa !21
  br i1 %t671, label %bb165, label %bb166
bb165:
  %t672 = load ptr, ptr %l2, !tbaa !29
  %t674 = getelementptr { i64, [5 x i64] }, ptr %t672, i32 0, i32 1
  %t675 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t674, i32 0, i32 2
  %t676 = load ptr, ptr %t675
  store ptr %t676, ptr %l36, !tbaa !29
  br label %bb167
bb166:
  br label %bb169
bb167:
  %t678 = load ptr, ptr %l0, !tbaa !29
  %t679 = load i64, ptr %l1, !tbaa !24
  %t680 = load ptr, ptr %l36, !tbaa !29
  %t681 = load i64, ptr %l3, !tbaa !24
  %t682 = load { i64, [2 x i64] }, ptr %l4
  %t683 = load i1, ptr %l5, !tbaa !21
  %t684 = load i1, ptr %l6, !tbaa !21
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %t678, i64 %t679, ptr %t680, i64 %t681, { i64, [2 x i64] } %t682, i1 %t683, i1 %t684)
  br label %bb168
bb168:
  br label %bb187
bb169:
  %t692 = load ptr, ptr %l2, !tbaa !29
  store ptr %t692, ptr %l367, !tbaa !29
  store i1 false, ptr %l368, !tbaa !21
  %t693 = load ptr, ptr %l367, !tbaa !29
  %t694 = icmp ne ptr %t693, null
  br i1 %t694, label %bb170, label %bb171
bb170:
  %t696 = load ptr, ptr %l367, !tbaa !29
  %t697 = load i64, ptr %t696, !range !{i64 0, i64 18}
  %t699 = icmp eq i64 %t697, 12
  store i1 %t699, ptr %l368, !tbaa !21
  br label %bb171
bb171:
  %t700 = load i1, ptr %l368, !tbaa !21
  br i1 %t700, label %bb172, label %bb173
bb172:
  %t701 = load ptr, ptr %l2, !tbaa !29
  %t703 = getelementptr { i64, [5 x i64] }, ptr %t701, i32 0, i32 1
  %t704 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t703, i32 0, i32 2
  %t705 = load ptr, ptr %t704
  store ptr %t705, ptr %l37, !tbaa !29
  br label %bb174
bb173:
  br label %bb182
bb174:
  %t707 = load ptr, ptr %l37, !tbaa !29
  %t709 = getelementptr %"compiler/typed:Seq", ptr %t707, i32 0, i32 1
  %t710 = load ptr, ptr %t709, !tbaa !29
  %t712 = icmp eq ptr %t710, null
  %t714 = xor i1 %t712, true
  br i1 %t714, label %bb175, label %bb176
bb175:
  %t716 = load ptr, ptr %l0, !tbaa !29
  store ptr %t716, ptr %l377, !tbaa !29
  %t717 = load i64, ptr %l1, !tbaa !24
  store i64 %t717, ptr %l378, !tbaa !24
  %t718 = load ptr, ptr %l37, !tbaa !29
  %t720 = getelementptr %"compiler/typed:Seq", ptr %t718, i32 0, i32 1
  %t721 = load ptr, ptr %t720, !tbaa !29
  %t723 = icmp eq ptr %t721, null
  br i1 %t723, label %bb177, label %bb178
bb176:
  br label %bb181
bb177:
  call void @__olang_check_failed(ptr @olang_loc_21335a5a6f6a0d23_1fb4d5f27249eebf)
  unreachable
bb178:
  br label %bb179
bb179:
  %t725 = load ptr, ptr %l37, !tbaa !29
  %t727 = getelementptr %"compiler/typed:Seq", ptr %t725, i32 0, i32 1
  %t728 = load ptr, ptr %t727, !tbaa !29
  %t729 = load i64, ptr %l3, !tbaa !24
  %t730 = load { i64, [2 x i64] }, ptr %l4
  %t731 = load i1, ptr %l5, !tbaa !21
  %t732 = load i1, ptr %l6, !tbaa !21
  %t733 = load ptr, ptr %l377, !tbaa !29
  %t734 = load i64, ptr %l378, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v1, ptr %t733, i64 %t734, ptr %t728, i64 %t729, { i64, [2 x i64] } %t730, i1 %t731, i1 %t732)
  br label %bb180
bb180:
  br label %bb181
bb181:
  br label %bb187
bb182:
  br i1 true, label %bb183, label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb186
bb185:
  br label %bb187
bb186:
  call void @__olang_check_failed(ptr @olang_loc_80551b5782bfdb3b_907a9dbefd6aabe7)
  unreachable
bb187:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estoredMore(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l24 = alloca i64
  %l35 = alloca i1
  %l39 = alloca ptr
  %l41 = alloca i1
  %l42 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca i1
  %l64 = alloca ptr
  %l66 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l10, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l5, !tbaa !24
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load ptr, ptr %l4, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  %t11 = ptrtoint ptr %v0 to i64
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = call ptr @__olang_region_or(ptr %t14, ptr %v0)
  %t16 = ptrtoint ptr %t15 to i64
  store i64 %t16, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t18 = load i64, ptr %l13
  %t19 = inttoptr i64 %t18 to ptr
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t19, ptr %t17)
  store i64 %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load i64, ptr %l11, !tbaa !24
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l4, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  %t29 = ptrtoint ptr %v0 to i64
  store i64 %t29, ptr %l20, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr %v0)
  %t34 = ptrtoint ptr %t33 to i64
  store i64 %t34, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l20
  %t38 = inttoptr i64 %t37 to ptr
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t38, ptr %t35, i64 %t36)
  store i64 %t41, ptr %l24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l24, !tbaa !24
  %t45 = ashr i64 %t42, 32
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = icmp eq i64 %t45, %t46
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l3, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb2
bb16:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = icmp sgt i64 %t59, 1
  br i1 %t61, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb21
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/free:Free", ptr %t63, i32 0, i32 30
  %t66 = load i64, ptr %l1, !tbaa !24
  %t69 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  store ptr %t69, ptr %l39
  br label %bb19
bb19:
  %t70 = load i64, ptr %l2, !tbaa !24
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t73 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t71, i64 %t70)
  store i1 %t73, ptr %l41
  br label %bb20
bb20:
  %t74 = load i1, ptr %l41, !tbaa !21
  store i1 %t74, ptr %l35, !tbaa !21
  br label %bb21
bb21:
  %t75 = load i1, ptr %l35, !tbaa !21
  br i1 %t75, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb27
bb23:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/free:Free", ptr %t76, i32 0, i32 28
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store ptr %t82, ptr %l46
  br label %bb24
bb24:
  %t83 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = call i64 @compiler_2ffree_2eorig(i64 %t83, i64 %t84)
  store i64 %t87, ptr %l49
  br label %bb25
bb25:
  %t88 = load ptr, ptr %l46, !tbaa !29
  %t89 = load i64, ptr %l49, !tbaa !24
  %t90 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t88, i64 %t89)
  store i1 %t90, ptr %l50
  br label %bb26
bb26:
  %t91 = load i1, ptr %l50, !tbaa !21
  store i1 %t91, ptr %l42, !tbaa !21
  br label %bb27
bb27:
  %t92 = load i1, ptr %l42, !tbaa !21
  br i1 %t92, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb33
bb29:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/free:Free", ptr %t93, i32 0, i32 28
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t95, i64 %t96)
  store ptr %t99, ptr %l55
  br label %bb30
bb30:
  %t100 = load i64, ptr @G_2ecompiler_2ffree_2eOParC, !tbaa !24
  %t101 = load i64, ptr %l2, !tbaa !24
  %t104 = call i64 @compiler_2ffree_2eorig(i64 %t100, i64 %t101)
  store i64 %t104, ptr %l58
  br label %bb31
bb31:
  %t105 = load ptr, ptr %l55, !tbaa !29
  %t106 = load i64, ptr %l58, !tbaa !24
  %t107 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t105, i64 %t106)
  store i1 %t107, ptr %l59
  br label %bb32
bb32:
  %t108 = load i1, ptr %l59, !tbaa !21
  store i1 %t108, ptr %l51, !tbaa !21
  br label %bb33
bb33:
  %t109 = load i1, ptr %l51, !tbaa !21
  br i1 %t109, label %bb34, label %bb35
bb34:
  store i1 true, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/free:Free", ptr %t111, i32 0, i32 32
  %t114 = load i64, ptr %l1, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t113, i64 %t114)
  store ptr %t117, ptr %l64
  br label %bb37
bb37:
  %t118 = load i64, ptr %l2, !tbaa !24
  %t119 = load ptr, ptr %l64, !tbaa !29
  %t121 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t119, i64 %t118)
  store i1 %t121, ptr %l66
  br label %bb38
bb38:
  %t122 = load i1, ptr %l66, !tbaa !21
  store i1 %t122, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l63 = alloca i64
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca i64
  %l75 = alloca ptr
  %l81 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Promote", ptr %t16, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  %t21 = sext i32 %t19 to i64
  store i64 %t21, ptr %l9, !tbaa !24
  br label %bb55
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 7
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l3, !tbaa !29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Make", ptr %t38, i32 0, i32 4
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = sext i32 %t41 to i64
  store i64 %t43, ptr %l9, !tbaa !24
  br label %bb55
bb12:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l28, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 18}
  %t52 = icmp eq i64 %t50, 16
  store i1 %t52, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Text", ptr %t60, i32 0, i32 1
  %t63 = load i32, ptr %t62, !tbaa !23
  %t65 = sext i32 %t63 to i64
  store i64 %t65, ptr %l9, !tbaa !24
  br label %bb55
bb18:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t68 = load ptr, ptr %l37, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 18}
  %t74 = icmp eq i64 %t72, 8
  store i1 %t74, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l38, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Collect", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %t84, !tbaa !23
  %t87 = sext i32 %t85 to i64
  store i64 %t87, ptr %l9, !tbaa !24
  br label %bb55
bb24:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb25, label %bb26
bb25:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 18}
  %t96 = icmp eq i64 %t94, 6
  store i1 %t96, ptr %l47, !tbaa !21
  br label %bb26
bb26:
  %t97 = load i1, ptr %l47, !tbaa !21
  br i1 %t97, label %bb27, label %bb28
bb27:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [5 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Call", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = sext i32 %t107 to i64
  store i64 %t109, ptr %l9, !tbaa !24
  br label %bb55
bb30:
  %t111 = load ptr, ptr %l1, !tbaa !29
  store ptr %t111, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t112 = load ptr, ptr %l55, !tbaa !29
  %t113 = icmp ne ptr %t112, null
  br i1 %t113, label %bb31, label %bb32
bb31:
  %t115 = load ptr, ptr %l55, !tbaa !29
  %t116 = load i64, ptr %t115, !range !{i64 0, i64 18}
  %t118 = icmp eq i64 %t116, 17
  store i1 %t118, ptr %l56, !tbaa !21
  br label %bb32
bb32:
  %t119 = load i1, ptr %l56, !tbaa !21
  br i1 %t119, label %bb33, label %bb34
bb33:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l7, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l7, !tbaa !29
  %t130 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t126, ptr %t127)
  store i64 %t130, ptr %l63
  br label %bb36
bb36:
  %t131 = load i64, ptr %l63, !tbaa !24
  store i64 %t131, ptr %l9, !tbaa !24
  br label %bb55
bb37:
  %t132 = load ptr, ptr %l1, !tbaa !29
  store ptr %t132, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t133 = load ptr, ptr %l64, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb38, label %bb39
bb38:
  %t136 = load ptr, ptr %l64, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 18}
  %t139 = icmp eq i64 %t137, 12
  store i1 %t139, ptr %l65, !tbaa !21
  br label %bb39
bb39:
  %t140 = load i1, ptr %l65, !tbaa !21
  br i1 %t140, label %bb40, label %bb41
bb40:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t143, i32 0, i32 2
  %t145 = load ptr, ptr %t144
  store ptr %t145, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb50
bb42:
  %t147 = load ptr, ptr %l8, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Seq", ptr %t147, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb43, label %bb44
bb43:
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l75, !tbaa !29
  %t157 = load ptr, ptr %l8, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Seq", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = icmp eq ptr %t160, null
  br i1 %t162, label %bb45, label %bb46
bb44:
  store i64 -1, ptr %l74, !tbaa !24
  br label %bb49
bb45:
  call void @__olang_check_failed(ptr @olang_loc_2a5f6fd698855c53_bf46ca1a958c9ea7)
  unreachable
bb46:
  br label %bb47
bb47:
  %t164 = load ptr, ptr %l8, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Seq", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t168 = load ptr, ptr %l75, !tbaa !29
  %t170 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t168, ptr %t167)
  store i64 %t170, ptr %l81
  br label %bb48
bb48:
  %t171 = load i64, ptr %l81, !tbaa !24
  store i64 %t171, ptr %l74, !tbaa !24
  br label %bb49
bb49:
  %t172 = load i64, ptr %l74, !tbaa !24
  store i64 %t172, ptr %l9, !tbaa !24
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_4959d0728bd157ab_d85fd94b6e31a9bf)
  unreachable
bb55:
  %t173 = load i64, ptr %l9, !tbaa !24
  store i64 %t173, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i1
  %l58 = alloca ptr
  %l62 = alloca i1
  %l63 = alloca ptr
  %l67 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca i64
  %l84 = alloca i1
  %l94 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca i1
  %l116 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l133 = alloca i64
  %l134 = alloca ptr
  %l135 = alloca i1
  %l143 = alloca i64
  %l144 = alloca ptr
  %l145 = alloca i1
  %l154 = alloca i1
  %l155 = alloca i64
  %l158 = alloca { i64, ptr }
  %l160 = alloca i64
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l18, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t6 = load ptr, ptr %l19, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l19, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l20, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t14 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
bb7:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t17 = load ptr, ptr %l24, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb8, label %bb9
bb8:
  %t20 = load ptr, ptr %l24, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t24 = load i1, ptr %l25, !tbaa !21
  br i1 %t24, label %bb10, label %bb11
bb10:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t37 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %t31, ptr %t32, ptr %t33)
  store i64 %t37, ptr %l33
  br label %bb13
bb13:
  %t38 = load i64, ptr %l33, !tbaa !24
  store i64 %t38, ptr %rv
  br label %ret
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  store ptr %t39, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t40 = load ptr, ptr %l34, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l34, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 3
  store i1 %t46, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l35, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l5, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t60 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %t54, ptr %t55, ptr %t56)
  store i64 %t60, ptr %l43
  br label %bb20
bb20:
  %t61 = load i64, ptr %l43, !tbaa !24
  store i64 %t61, ptr %rv
  br label %ret
bb21:
  %t62 = load ptr, ptr %l2, !tbaa !29
  store ptr %t62, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t63 = load ptr, ptr %l44, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb22, label %bb23
bb22:
  %t66 = load ptr, ptr %l44, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 6
  store i1 %t69, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t70 = load i1, ptr %l45, !tbaa !21
  br i1 %t70, label %bb24, label %bb25
bb24:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l6, !tbaa !29
  br label %bb26
bb25:
  br label %bb49
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t77 = load ptr, ptr %l6, !tbaa !29
  %t79 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v2, ptr %t77)
  store i64 %t79, ptr %l51
  br label %bb27
bb27:
  %t80 = load i64, ptr %l51, !tbaa !24
  store i64 %t80, ptr %l7, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = icmp slt i64 %t81, 0
  br i1 %t83, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb31
bb29:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/free:Free", ptr %t85, i32 0, i32 1
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store ptr %t91, ptr %l58
  br label %bb30
bb30:
  %t92 = load ptr, ptr %l58, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Body", ptr %t92, i32 0, i32 11
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = icmp eq ptr %t95, null
  store i1 %t97, ptr %l54, !tbaa !21
  br label %bb31
bb31:
  %t99 = load i1, ptr %l54, !tbaa !21
  br i1 %t99, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb36
bb33:
  %t100 = load ptr, ptr %l3, !tbaa !29
  store ptr %t100, ptr %l63, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/free:Free", ptr %t101, i32 0, i32 1
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t103, i64 %t104)
  store ptr %t107, ptr %l67
  br label %bb34
bb34:
  %t108 = load ptr, ptr %l67, !tbaa !29
  %t110 = getelementptr %"compiler/typed:Body", ptr %t108, i32 0, i32 2
  %t111 = load i32, ptr %t110, !tbaa !23
  %t112 = load ptr, ptr %l63, !tbaa !29
  %t114 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s4, ptr %t112, i32 %t111)
  store { i64, ptr } %t114, ptr %l70
  br label %bb35
bb35:
  %t115 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  %t118 = icmp ne i64 %t116, 1
  store i1 %t118, ptr %l62, !tbaa !21
  br label %bb36
bb36:
  %t120 = load i1, ptr %l62, !tbaa !21
  br i1 %t120, label %bb37, label %bb38
bb37:
  %t121 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  store i64 %t121, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t123 = load ptr, ptr %l3, !tbaa !29
  store ptr %t123, ptr %l74, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/free:Free", ptr %t124, i32 0, i32 1
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t126, i64 %t127)
  store ptr %t130, ptr %l78
  br label %bb40
bb40:
  %t131 = load ptr, ptr %l78, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Body", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %t133, !tbaa !23
  %t135 = load ptr, ptr %l74, !tbaa !29
  %t137 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t135, i32 %t134, i64 0)
  store i64 %t137, ptr %l81
  br label %bb41
bb41:
  %t138 = load i64, ptr %l81, !tbaa !24
  store i64 %t138, ptr %l8, !tbaa !24
  %t139 = load i64, ptr %l8, !tbaa !24
  %t141 = icmp slt i64 %t139, 0
  br i1 %t141, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb44
bb43:
  %t143 = load i64, ptr %l8, !tbaa !24
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Call", ptr %t144, i32 0, i32 1
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t152 = icmp sge i64 %t143, %t149
  store i1 %t152, ptr %l84, !tbaa !21
  br label %bb44
bb44:
  %t154 = load i1, ptr %l84, !tbaa !21
  br i1 %t154, label %bb45, label %bb46
bb45:
  %t155 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  store i64 %t155, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t159 = load ptr, ptr %l6, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Call", ptr %t159, i32 0, i32 1
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l94, !tbaa !27
  %t163 = load i64, ptr %l8, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr ptr, ptr %t166, i64 %t163
  %t168 = load ptr, ptr %t167, !tbaa !39
  %t172 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t157, ptr %t158, ptr %t168)
  store i64 %t172, ptr %l97
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s4)
  %t173 = load i64, ptr %l97, !tbaa !24
  store i64 %t173, ptr %rv
  br label %ret
bb49:
  %t174 = load ptr, ptr %l2, !tbaa !29
  store ptr %t174, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t175 = load ptr, ptr %l98, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb50, label %bb51
bb50:
  %t178 = load ptr, ptr %l98, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 18}
  %t181 = icmp eq i64 %t179, 14
  store i1 %t181, ptr %l99, !tbaa !21
  br label %bb51
bb51:
  %t182 = load i1, ptr %l99, !tbaa !21
  br i1 %t182, label %bb52, label %bb53
bb52:
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t185 = getelementptr { i64, [5 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t185, i32 0, i32 2
  %t187 = load ptr, ptr %t186
  store ptr %t187, ptr %l9, !tbaa !29
  br label %bb54
bb53:
  br label %bb71
bb54:
  %t189 = load ptr, ptr %l9, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Try", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = icmp eq ptr %t192, null
  br i1 %t194, label %bb55, label %bb56
bb55:
  %t196 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t196, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t198 = load ptr, ptr %l9, !tbaa !29
  %t200 = getelementptr %"compiler/typed:Try", ptr %t198, i32 0, i32 1
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t203, 0
  store i64 %t205, ptr %l12, !tbaa !24
  br label %bb58
bb58:
  %t207 = load i64, ptr %l11, !tbaa !24
  %t208 = load i64, ptr %l12, !tbaa !24
  %t211 = icmp slt i64 %t207, %t208
  %t213 = xor i1 %t211, true
  br i1 %t213, label %bb59, label %bb60
bb59:
  br label %bb66
bb60:
  br label %bb61
bb61:
  %t215 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t215, ptr %l116, !tbaa !27
  %t216 = load i64, ptr %l11, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr ptr, ptr %t219, i64 %t216
  %t221 = load ptr, ptr %t220, !tbaa !39
  %t225 = getelementptr %"compiler/typed:Clause", ptr %t221, i32 0, i32 4
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  %t230 = icmp sgt i64 %t228, 0
  br i1 %t230, label %bb62, label %bb63
bb62:
  %t232 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t232, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t234 = load i64, ptr %l11, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l11, !tbaa !24
  br label %bb58
bb66:
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l126, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l127, !tbaa !29
  %t240 = load ptr, ptr %l9, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Try", ptr %t240, i32 0, i32 0
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t245 = icmp eq ptr %t243, null
  br i1 %t245, label %bb67, label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_4acb4c8921e8c407_808d59af97a4073)
  unreachable
bb68:
  br label %bb69
bb69:
  %t247 = load ptr, ptr %l9, !tbaa !29
  %t249 = getelementptr %"compiler/typed:Try", ptr %t247, i32 0, i32 0
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t251 = load ptr, ptr %l126, !tbaa !29
  %t252 = load ptr, ptr %l127, !tbaa !29
  %t254 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t251, ptr %t252, ptr %t250)
  store i64 %t254, ptr %l133
  br label %bb70
bb70:
  %t255 = load i64, ptr %l133, !tbaa !24
  store i64 %t255, ptr %rv
  br label %ret
bb71:
  %t256 = load ptr, ptr %l2, !tbaa !29
  store ptr %t256, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t257 = load ptr, ptr %l134, !tbaa !29
  %t258 = icmp ne ptr %t257, null
  br i1 %t258, label %bb72, label %bb73
bb72:
  %t260 = load ptr, ptr %l134, !tbaa !29
  %t261 = load i64, ptr %t260, !range !{i64 0, i64 18}
  %t263 = icmp eq i64 %t261, 17
  store i1 %t263, ptr %l135, !tbaa !21
  br label %bb73
bb73:
  %t264 = load i1, ptr %l135, !tbaa !21
  br i1 %t264, label %bb74, label %bb75
bb74:
  %t265 = load ptr, ptr %l2, !tbaa !29
  %t267 = getelementptr { i64, [5 x i64] }, ptr %t265, i32 0, i32 1
  %t268 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t267, i32 0, i32 2
  %t269 = load ptr, ptr %t268
  store ptr %t269, ptr %l14, !tbaa !29
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l1, !tbaa !29
  %t273 = load ptr, ptr %l14, !tbaa !29
  %t277 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t271, ptr %t272, ptr %t273)
  store i64 %t277, ptr %l143
  br label %bb77
bb77:
  %t278 = load i64, ptr %l143, !tbaa !24
  store i64 %t278, ptr %rv
  br label %ret
bb78:
  %t279 = load ptr, ptr %l2, !tbaa !29
  store ptr %t279, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t280 = load ptr, ptr %l144, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb79, label %bb80
bb79:
  %t283 = load ptr, ptr %l144, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 18}
  %t286 = icmp eq i64 %t284, 9
  store i1 %t286, ptr %l145, !tbaa !21
  br label %bb80
bb80:
  %t287 = load i1, ptr %l145, !tbaa !21
  br i1 %t287, label %bb81, label %bb82
bb81:
  %t288 = load ptr, ptr %l2, !tbaa !29
  %t290 = getelementptr { i64, [5 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t290, i32 0, i32 2
  %t292 = load i32, ptr %t291, !range !{i32 0, i32 52}
  store i32 %t292, ptr %l15
  %t294 = load ptr, ptr %l2, !tbaa !29
  %t296 = getelementptr { i64, [5 x i64] }, ptr %t294, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t296, i32 0, i32 4
  %t298 = load { i64, ptr }, ptr %t297
  store { i64, ptr } %t298, ptr %l16, !tbaa !27
  br label %bb83
bb82:
  br label %bb89
bb83:
  %t300 = load i32, ptr %l15, !range !{i32 0, i32 52}
  %t301 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t304 = call i1 @compiler_2ffree_2eisConversion(ptr %v2, i32 %t300, { i64, ptr } %t301)
  store i1 %t304, ptr %l154
  br label %bb84
bb84:
  %t305 = load i1, ptr %l154, !tbaa !21
  br i1 %t305, label %bb85, label %bb86
bb85:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t308 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t308, ptr %l158, !tbaa !27
  %t309 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr ptr, ptr %t310, i64 0
  %t312 = load ptr, ptr %t311, !tbaa !39
  %t316 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t306, ptr %t307, ptr %t312)
  store i64 %t316, ptr %l160
  br label %bb87
bb86:
  %t317 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t317, ptr %l155, !tbaa !24
  br label %bb88
bb87:
  %t319 = load i64, ptr %l160, !tbaa !24
  store i64 %t319, ptr %l155, !tbaa !24
  br label %bb88
bb88:
  %t320 = load i64, ptr %l155, !tbaa !24
  store i64 %t320, ptr %rv
  br label %ret
bb89:
  br i1 true, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb93
bb92:
  %t321 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t321, ptr %rv
  br label %ret
bb93:
  call void @__olang_check_failed(ptr @olang_loc_d1dd1febe39b41f_df28cb247c1abe4b)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l9 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/free:Free", ptr %t2, i32 0, i32 58
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t4, i64 %a1)
  store ptr %t8, ptr %l7
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t13 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v0, ptr %v1, ptr %t10, ptr %t11, ptr %a2)
  store i64 %t13, ptr %l9
  br label %bb2
bb2:
  %t14 = load i64, ptr %l9, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewriteFeedCalls(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/free:feedCall"
  %l4 = alloca %"compiler/free:feed"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
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
  %l25 = alloca ptr
  %l26 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca %"compiler/free:feedCall"
  %l40 = alloca %"compiler/free:feed"
  %l43 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l66 = alloca i64
  %l75 = alloca { i64, [2 x i64] }
  %l76 = alloca { i64, [2 x i64] }
  %l78 = alloca { i64, [2 x i64] }
  %l80 = alloca i1
  %l85 = alloca ptr
  %l94 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l126 = alloca i64
  %l142 = alloca i64
  %l145 = alloca i64
  %l166 = alloca i64
  %l169 = alloca i1
  %l172 = alloca i1
  %l174 = alloca i64
  %l178 = alloca i1
  %l183 = alloca { i64, ptr }
  %l188 = alloca i64
  %l191 = alloca i1
  %l193 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca { i64, [2 x i64] }
  %l202 = alloca { i64, [2 x i64] }
  %l204 = alloca i1
  %l206 = alloca { i64, ptr }
  %t156 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 75
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l29, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eLen_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l31
  br label %bb2
bb2:
  %t9 = load i64, ptr %l29, !tbaa !24
  %t10 = load i64, ptr %l31, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb94
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call %"compiler/free:feedCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eAt_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/free:feedCall" %t19, ptr %l36
  br label %bb6
bb6:
  %t20 = load %"compiler/free:feedCall", ptr %l36
  store %"compiler/free:feedCall" %t20, ptr %l3
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:Free", ptr %t21, i32 0, i32 73
  %t24 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 4
  %t25 = load i64, ptr %t24, !tbaa !24
  %t28 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t23, i64 %t25)
  store %"compiler/free:feed" %t28, ptr %l40
  br label %bb7
bb7:
  %t29 = load %"compiler/free:feed", ptr %l40
  store %"compiler/free:feed" %t29, ptr %l4
  %t30 = getelementptr %"compiler/free:feed", ptr %l4, i32 0, i32 6
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb15
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/free:Free", ptr %t35, i32 0, i32 22
  %t38 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t37, i64 %t39)
  store i1 %t42, ptr %l47
  br label %bb10
bb10:
  %t43 = load i1, ptr %l47, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/free:Free", ptr %t44, i32 0, i32 53
  %t47 = getelementptr %"compiler/free:feed", ptr %l4, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t46, i64 %t48)
  store i1 %t51, ptr %l52
  br label %bb13
bb12:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb14
bb13:
  %t52 = load i1, ptr %l52, !tbaa !21
  %t53 = xor i1 %t52, true
  store i1 %t53, ptr %l48, !tbaa !21
  br label %bb14
bb14:
  %t55 = load i1, ptr %l48, !tbaa !21
  store i1 %t55, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l43, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  br label %bb93
bb17:
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/free:Free", ptr %t57, i32 0, i32 3
  %t60 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t59, i64 %t61)
  store ptr %t64, ptr %l57
  br label %bb19
bb19:
  %t65 = load ptr, ptr %l57, !tbaa !29
  store ptr %t65, ptr %l5, !tbaa !29
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Plan", ptr %t66, i32 0, i32 5
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l59, !tbaa !27
  %t70 = getelementptr %"compiler/free:feed", ptr %l4, i32 0, i32 6
  %t71 = load i64, ptr %t70, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t71
  %t76 = load i64, ptr %t75, !tbaa !34
  %t78 = icmp ne i64 %t76, 1
  br i1 %t78, label %bb20, label %bb21
bb20:
  br label %bb93
bb21:
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 2
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 3
  %t84 = load i64, ptr %t83, !tbaa !24
  %t88 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t80, i64 %t82, i64 %t84)
  store i64 %t88, ptr %l66
  br label %bb23
bb23:
  %t89 = load i64, ptr %l66, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb24, label %bb25
bb24:
  br label %bb93
bb25:
  br label %bb26
bb26:
  %t94 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 1
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = trunc i64 %t95 to i32
  store i32 %t97, ptr %l7, !tbaa !23
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t101 = load i32, ptr %l7, !tbaa !23
  %t102 = load i64, ptr %l6, !tbaa !24
  %t106 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t100, i32 %t101, i64 %t102)
  store { i64, [2 x i64] } %t106, ptr %l75
  br label %bb27
bb27:
  %t107 = load { i64, [2 x i64] }, ptr %l75
  store { i64, [2 x i64] } %t107, ptr %l8
  %t108 = load { i64, [2 x i64] }, ptr %l8
  store { i64, [2 x i64] } %t108, ptr %l76
  %t109 = getelementptr %"compiler/free:feed", ptr %l4, i32 0, i32 4
  %t110 = load { i64, [2 x i64] }, ptr %t109
  store { i64, [2 x i64] } %t110, ptr %l78
  %t113 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l76, ptr %l78)
  store i1 %t113, ptr %l80
  br label %bb28
bb28:
  %t114 = load i1, ptr %l80, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb29, label %bb30
bb29:
  br label %bb93
bb30:
  br label %bb31
bb31:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 0
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  %t125 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecallAt(ptr %v0, ptr %v0, ptr %t117, i64 %t119, i64 %t121)
  store ptr %t125, ptr %l85
  br label %bb32
bb32:
  %t126 = load ptr, ptr %l85, !tbaa !29
  store ptr %t126, ptr %l9, !tbaa !29
  %t127 = load ptr, ptr %l9, !tbaa !29
  %t129 = icmp eq ptr %t127, null
  br i1 %t129, label %bb33, label %bb34
bb33:
  br label %bb93
bb34:
  br label %bb35
bb35:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 0
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load ptr, ptr %l9, !tbaa !29
  %t135 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 2
  %t136 = load i64, ptr %t135, !tbaa !24
  %t137 = load { i64, [2 x i64] }, ptr %l8
  %t138 = load i64, ptr %l6, !tbaa !24
  %t145 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eorVars(ptr %v0, ptr %v0, ptr %t131, i64 %t133, ptr %t134, i64 %t136, { i64, [2 x i64] } %t137, i64 %t138)
  store i64 %t145, ptr %l94
  br label %bb36
bb36:
  %t146 = load i64, ptr %l94, !tbaa !24
  store i64 %t146, ptr %l10, !tbaa !24
  %t147 = load i64, ptr %l10, !tbaa !24
  %t149 = icmp slt i64 %t147, 0
  br i1 %t149, label %bb37, label %bb38
bb37:
  br label %bb93
bb38:
  br label %bb39
bb39:
  %t151 = getelementptr %"compiler/free:feed", ptr %l4, i32 0, i32 6
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = trunc i64 %t152 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 0
  store i64 4, ptr %t157
  %t159 = insertvalue { i32 } undef, i32 %t154, 0
  %t160 = getelementptr { i64, [2 x i64] }, ptr %t156, i32 0, i32 1
  store { i32 } %t159, ptr %t160
  %t161 = load { i64, [2 x i64] }, ptr %t156
  store { i64, [2 x i64] } %t161, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  store i64 63, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t163 = load i64, ptr %l13, !tbaa !24
  %t164 = load i64, ptr %l12, !tbaa !24
  %t167 = icmp sgt i64 %t163, %t164
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t169 = load i64, ptr %l14, !tbaa !24
  %t171 = icmp sgt i64 %t169, 0
  br i1 %t171, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb45
bb42:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l12, !tbaa !24
  %t177 = sub i64 %t173, %t174
  %t178 = load i64, ptr %l14, !tbaa !24
  %t181 = add i64 %t177, %t178
  %t183 = sub i64 %t181, 1
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = sdiv i64 %t183, %t184
  store i64 %t187, ptr %l107, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb44
bb44:
  %t189 = load i64, ptr %l107, !tbaa !24
  store i64 %t189, ptr %l104, !tbaa !24
  br label %bb45
bb45:
  %t190 = load i64, ptr %l104, !tbaa !24
  store i64 %t190, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb46
bb46:
  %t191 = load i64, ptr %l16, !tbaa !24
  %t192 = load i64, ptr %l15, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb47, label %bb48
bb47:
  br label %bb55
bb48:
  br label %bb49
bb49:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = load i64, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l14, !tbaa !24
  %t204 = mul i64 %t200, %t201
  %t207 = add i64 %t199, %t204
  store i64 %t207, ptr %l17, !tbaa !24
  %t209 = load i64, ptr %l10, !tbaa !24
  %t210 = load i64, ptr %l17, !tbaa !24
  store i64 %t210, ptr %l126, !tbaa !24
  %t211 = load i64, ptr %l126, !tbaa !24
  %t212 = load i64, ptr %l126, !tbaa !24
  %t213 = shl i64 1, %t212
  %t216 = and i64 %t209, %t213
  %t218 = icmp ne i64 %t216, 0
  br i1 %t218, label %bb50, label %bb51
bb50:
  %t220 = load ptr, ptr %l5, !tbaa !29
  %t221 = load i32, ptr %l7, !tbaa !23
  %t222 = load i64, ptr %l17, !tbaa !24
  %t223 = load { i64, [2 x i64] }, ptr %l11
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetPassed(ptr %v0, ptr %t220, i32 %t221, i64 %t222, { i64, [2 x i64] } %t223)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t228 = load i64, ptr %l16, !tbaa !24
  %t230 = add i64 %t228, 1
  store i64 %t230, ptr %l16, !tbaa !24
  br label %bb46
bb55:
  store i64 0, ptr %l18, !tbaa !24
  %t232 = load ptr, ptr %l9, !tbaa !29
  %t234 = getelementptr %"compiler/typed:Call", ptr %t232, i32 0, i32 1
  %t235 = load { i64, ptr }, ptr %t234, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 0
  store i64 %t237, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t239 = load i64, ptr %l19, !tbaa !24
  %t240 = load i64, ptr %l18, !tbaa !24
  %t243 = icmp sgt i64 %t239, %t240
  br i1 %t243, label %bb56, label %bb57
bb56:
  %t245 = load i64, ptr %l20, !tbaa !24
  %t247 = icmp sgt i64 %t245, 0
  br i1 %t247, label %bb58, label %bb59
bb57:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb61
bb58:
  %t249 = load i64, ptr %l19, !tbaa !24
  %t250 = load i64, ptr %l18, !tbaa !24
  %t253 = sub i64 %t249, %t250
  %t254 = load i64, ptr %l20, !tbaa !24
  %t257 = add i64 %t253, %t254
  %t259 = sub i64 %t257, 1
  %t260 = load i64, ptr %l20, !tbaa !24
  %t263 = sdiv i64 %t259, %t260
  store i64 %t263, ptr %l145, !tbaa !24
  br label %bb60
bb59:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb60
bb60:
  %t265 = load i64, ptr %l145, !tbaa !24
  store i64 %t265, ptr %l142, !tbaa !24
  br label %bb61
bb61:
  %t266 = load i64, ptr %l142, !tbaa !24
  store i64 %t266, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb62
bb62:
  %t267 = load i64, ptr %l22, !tbaa !24
  %t268 = load i64, ptr %l21, !tbaa !24
  %t271 = icmp slt i64 %t267, %t268
  %t273 = xor i1 %t271, true
  br i1 %t273, label %bb63, label %bb64
bb63:
  br label %bb92
bb64:
  br label %bb65
bb65:
  %t275 = load i64, ptr %l18, !tbaa !24
  %t276 = load i64, ptr %l22, !tbaa !24
  %t277 = load i64, ptr %l20, !tbaa !24
  %t280 = mul i64 %t276, %t277
  %t283 = add i64 %t275, %t280
  store i64 %t283, ptr %l23, !tbaa !24
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 2
  %t287 = load i64, ptr %t286, !tbaa !24
  %t288 = load i64, ptr %l23, !tbaa !24
  %t292 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %t285, i64 %t287, i64 %t288)
  store i64 %t292, ptr %l166
  br label %bb66
bb66:
  %t293 = load i64, ptr %l166, !tbaa !24
  store i64 %t293, ptr %l24, !tbaa !24
  %t294 = load i64, ptr %l24, !tbaa !24
  %t296 = icmp slt i64 %t294, 0
  br i1 %t296, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l169, !tbaa !21
  br label %bb69
bb68:
  %t298 = load i64, ptr %l24, !tbaa !24
  %t300 = icmp sge i64 %t298, 63
  store i1 %t300, ptr %l169, !tbaa !21
  br label %bb69
bb69:
  %t302 = load i1, ptr %l169, !tbaa !21
  br i1 %t302, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l172, !tbaa !21
  br label %bb72
bb71:
  %t303 = load i64, ptr %l10, !tbaa !24
  %t304 = load i64, ptr %l24, !tbaa !24
  store i64 %t304, ptr %l174, !tbaa !24
  %t305 = load i64, ptr %l174, !tbaa !24
  %t306 = load i64, ptr %l174, !tbaa !24
  %t307 = shl i64 1, %t306
  %t310 = and i64 %t303, %t307
  %t312 = icmp eq i64 %t310, 0
  store i1 %t312, ptr %l172, !tbaa !21
  br label %bb72
bb72:
  %t314 = load i1, ptr %l172, !tbaa !21
  br i1 %t314, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l178, !tbaa !21
  br label %bb75
bb74:
  %t315 = load i64, ptr %l24, !tbaa !24
  %t316 = load i64, ptr %l6, !tbaa !24
  %t319 = icmp eq i64 %t315, %t316
  store i1 %t319, ptr %l178, !tbaa !21
  br label %bb75
bb75:
  %t321 = load i1, ptr %l178, !tbaa !21
  br i1 %t321, label %bb76, label %bb77
bb76:
  br label %bb91
bb77:
  br label %bb78
bb78:
  %t322 = load ptr, ptr %l9, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Call", ptr %t322, i32 0, i32 1
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !27
  store { i64, ptr } %t325, ptr %l183, !tbaa !27
  %t326 = load i64, ptr %l23, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr ptr, ptr %t329, i64 %t326
  %t331 = load ptr, ptr %t330, !tbaa !39
  store ptr %t331, ptr %l25, !tbaa !29
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load ptr, ptr %l25, !tbaa !29
  %t337 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v0, ptr %t333, ptr %t334)
  store i64 %t337, ptr %l188
  br label %bb79
bb79:
  %t338 = load i64, ptr %l188, !tbaa !24
  store i64 %t338, ptr %l26, !tbaa !24
  %t339 = load i64, ptr %l26, !tbaa !24
  %t341 = icmp sge i64 %t339, 0
  br i1 %t341, label %bb80, label %bb81
bb80:
  %t343 = load ptr, ptr %l5, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Plan", ptr %t343, i32 0, i32 5
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  store { i64, ptr } %t346, ptr %l193, !tbaa !27
  %t347 = load i64, ptr %l26, !tbaa !24
  %t349 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t350 = load ptr, ptr %t349, !tbaa !27
  %t351 = getelementptr i64, ptr %t350, i64 %t347
  %t352 = load i64, ptr %t351, !tbaa !34
  %t354 = icmp eq i64 %t352, 1
  store i1 %t354, ptr %l191, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb82
bb82:
  %t356 = load i1, ptr %l191, !tbaa !21
  br i1 %t356, label %bb83, label %bb84
bb83:
  %t357 = load ptr, ptr %l5, !tbaa !29
  %t359 = getelementptr %"compiler/typed:Plan", ptr %t357, i32 0, i32 6
  %t360 = load { i64, ptr }, ptr %t359, !tbaa !27
  store { i64, ptr } %t360, ptr %l198, !tbaa !27
  %t361 = load i64, ptr %l26, !tbaa !24
  %t363 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr { i64, [2 x i64] }, ptr %t364, i64 %t361
  %t366 = load { i64, [2 x i64] }, ptr %t365
  store { i64, [2 x i64] } %t366, ptr %l200
  %t367 = load { i64, [2 x i64] }, ptr %l8
  store { i64, [2 x i64] } %t367, ptr %l202
  %t370 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l200, ptr %l202)
  store i1 %t370, ptr %l204
  br label %bb85
bb84:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/free:feedCall", ptr %l3, i32 0, i32 0
  %t373 = load i64, ptr %t372, !tbaa !24
  %t374 = load ptr, ptr %l25, !tbaa !29
  %t375 = getelementptr %"compiler/free:feed", ptr %l4, i32 0, i32 6
  %t376 = load i64, ptr %t375, !tbaa !24
  %t377 = load { i64, [2 x i64] }, ptr %l8
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eredirect(ptr %v0, ptr %v0, ptr %t371, i64 %t373, ptr %t374, i64 %t376, { i64, [2 x i64] } %t377, i1 false, i1 false)
  br label %bb89
bb85:
  %t383 = load i1, ptr %l204, !tbaa !21
  br i1 %t383, label %bb86, label %bb87
bb86:
  %t384 = load ptr, ptr %l5, !tbaa !29
  %t386 = getelementptr %"compiler/typed:Plan", ptr %t384, i32 0, i32 6
  %t387 = load { i64, ptr }, ptr %t386, !tbaa !27
  store { i64, ptr } %t387, ptr %l206, !tbaa !27
  %t388 = load i64, ptr %l26, !tbaa !24
  %t389 = load { i64, [2 x i64] }, ptr %l11
  %t392 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !27
  %t394 = getelementptr { i64, [2 x i64] }, ptr %t393, i64 %t388
  store { i64, [2 x i64] } %t389, ptr %t394
  br label %bb88
bb87:
  br label %bb88
bb88:
  br label %bb90
bb89:
  br label %bb90
bb90:
  br label %bb91
bb91:
  %t395 = load i64, ptr %l22, !tbaa !24
  %t397 = add i64 %t395, 1
  store i64 %t397, ptr %l22, !tbaa !24
  br label %bb62
bb92:
  br label %bb93
bb93:
  %t399 = load i64, ptr %l2, !tbaa !24
  %t401 = add i64 %t399, 1
  store i64 %t401, ptr %l2, !tbaa !24
  br label %bb1
bb94:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eassignedFresh(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i1
  %l43 = alloca ptr
  %l47 = alloca ptr
  %l50 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:mustW", ptr %t1, i32 0, i32 4
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l15, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/free:mustW", ptr %t53, i32 0, i32 4
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l39
  br label %bb12
bb12:
  %t61 = load i64, ptr %l39, !tbaa !24
  %t63 = icmp eq i64 %t61, %a1
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l43, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/free:mustW", ptr %t66, i32 0, i32 5
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store ptr %t72, ptr %l47
  br label %bb15
bb14:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb17
bb15:
  %t75 = add i64 %a2, 1
  %t76 = load ptr, ptr %l43, !tbaa !29
  %t77 = load ptr, ptr %l47, !tbaa !29
  %t79 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v0, ptr %t76, ptr %t77, i64 %t75)
  store i1 %t79, ptr %l50
  br label %bb16
bb16:
  %t80 = load i1, ptr %l50, !tbaa !21
  %t81 = xor i1 %t80, true
  store i1 %t81, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t83 = load i1, ptr %l42, !tbaa !21
  br i1 %t83, label %bb18, label %bb19
bb18:
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb8
bb22:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3amustW_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l79 = alloca ptr
  %l85 = alloca ptr
  %l86 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t2 = load ptr, ptr %l15, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l15, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l16, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/free:mustW", ptr %t22, i32 0, i32 4
  %t25 = load i32, ptr %l2, !tbaa !23
  %t27 = sext i32 %t25 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t24, i64 %t27)
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/free:mustW", ptr %t30, i32 0, i32 5
  %t33 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb8
bb8:
  br label %bb103
bb9:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t41 = load ptr, ptr %l32, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l32, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 17}
  %t47 = icmp eq i64 %t45, 1
  store i1 %t47, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l33, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t51, i32 0, i32 1
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l4, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l5, !tbaa !29
  br label %bb14
bb13:
  br label %bb29
bb14:
  %t61 = load ptr, ptr %l4, !tbaa !29
  store ptr %t61, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t62 = load ptr, ptr %l40, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load ptr, ptr %l40, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 0
  store i1 %t68, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t69 = load i1, ptr %l41, !tbaa !21
  br i1 %t69, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t72, i32 0, i32 2
  %t74 = load i32, ptr %t73
  store i32 %t74, ptr %l6, !tbaa !23
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/free:mustW", ptr %t76, i32 0, i32 4
  %t79 = load i32, ptr %l6, !tbaa !23
  %t81 = sext i32 %t79 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t78, i64 %t81)
  br label %bb20
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/free:mustW", ptr %t84, i32 0, i32 5
  %t87 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t86, ptr %t87)
  br label %bb21
bb21:
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_18fbdab9dd354c58_c2b73ff02acf68dc)
  unreachable
bb27:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t90, ptr %t91)
  br label %bb28
bb28:
  br label %bb103
bb29:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t95 = load ptr, ptr %l55, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb30, label %bb31
bb30:
  %t98 = load ptr, ptr %l55, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 17}
  %t101 = icmp eq i64 %t99, 2
  store i1 %t101, ptr %l56, !tbaa !21
  br label %bb31
bb31:
  %t102 = load i1, ptr %l56, !tbaa !21
  br i1 %t102, label %bb32, label %bb33
bb32:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [3 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", ptr }, ptr %t105, i32 0, i32 1
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l7, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t109, ptr %t110)
  br label %bb35
bb35:
  br label %bb103
bb36:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t114 = load ptr, ptr %l63, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb37, label %bb38
bb37:
  %t117 = load ptr, ptr %l63, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 17}
  %t120 = icmp eq i64 %t118, 3
  store i1 %t120, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t121 = load i1, ptr %l64, !tbaa !21
  br i1 %t121, label %bb39, label %bb40
bb39:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [3 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", ptr }, ptr %t124, i32 0, i32 1
  %t126 = load ptr, ptr %t125
  store ptr %t126, ptr %l8, !tbaa !29
  br label %bb41
bb40:
  br label %bb51
bb41:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l8, !tbaa !29
  %t131 = getelementptr %"compiler/typed:If", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t128, ptr %t132)
  br label %bb42
bb42:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l8, !tbaa !29
  %t138 = getelementptr %"compiler/typed:If", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t135, ptr %t139)
  br label %bb43
bb43:
  %t142 = load ptr, ptr %l8, !tbaa !29
  %t144 = getelementptr %"compiler/typed:If", ptr %t142, i32 0, i32 2
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = icmp eq ptr %t145, null
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb44, label %bb45
bb44:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l79, !tbaa !29
  %t152 = load ptr, ptr %l8, !tbaa !29
  %t154 = getelementptr %"compiler/typed:If", ptr %t152, i32 0, i32 2
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = icmp eq ptr %t155, null
  br i1 %t157, label %bb46, label %bb47
bb45:
  br label %bb50
bb46:
  call void @__olang_check_failed(ptr @olang_loc_6e5f625591edaca_eb58e2cd01ac77e)
  unreachable
bb47:
  br label %bb48
bb48:
  %t159 = load ptr, ptr %l8, !tbaa !29
  %t161 = getelementptr %"compiler/typed:If", ptr %t159, i32 0, i32 2
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t163 = load ptr, ptr %l79, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t163, ptr %t162)
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb103
bb51:
  %t165 = load ptr, ptr %l1, !tbaa !29
  store ptr %t165, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t166 = load ptr, ptr %l85, !tbaa !29
  %t167 = icmp ne ptr %t166, null
  br i1 %t167, label %bb52, label %bb53
bb52:
  %t169 = load ptr, ptr %l85, !tbaa !29
  %t170 = load i64, ptr %t169, !range !{i64 0, i64 17}
  %t172 = icmp eq i64 %t170, 4
  store i1 %t172, ptr %l86, !tbaa !21
  br label %bb53
bb53:
  %t173 = load i1, ptr %l86, !tbaa !21
  br i1 %t173, label %bb54, label %bb55
bb54:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr { i64, [3 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t176, i32 0, i32 1
  %t178 = load ptr, ptr %t177
  store ptr %t178, ptr %l9, !tbaa !29
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr { i64, [3 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t182, i32 0, i32 2
  %t184 = load ptr, ptr %t183
  store ptr %t184, ptr %l10, !tbaa !29
  br label %bb56
bb55:
  br label %bb62
bb56:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t186, ptr %t187)
  br label %bb57
bb57:
  %t190 = load ptr, ptr %l10, !tbaa !29
  %t192 = icmp eq ptr %t190, null
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb58, label %bb59
bb58:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t196, ptr %t197)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb103
bb62:
  %t200 = load ptr, ptr %l1, !tbaa !29
  store ptr %t200, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t201 = load ptr, ptr %l100, !tbaa !29
  %t202 = icmp ne ptr %t201, null
  br i1 %t202, label %bb63, label %bb64
bb63:
  %t204 = load ptr, ptr %l100, !tbaa !29
  %t205 = load i64, ptr %t204, !range !{i64 0, i64 17}
  %t207 = icmp eq i64 %t205, 6
  store i1 %t207, ptr %l101, !tbaa !21
  br label %bb64
bb64:
  %t208 = load i1, ptr %l101, !tbaa !21
  br i1 %t208, label %bb65, label %bb66
bb65:
  %t209 = load ptr, ptr %l1, !tbaa !29
  %t211 = getelementptr { i64, [3 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", ptr }, ptr %t211, i32 0, i32 1
  %t213 = load ptr, ptr %t212
  store ptr %t213, ptr %l11, !tbaa !29
  br label %bb71
bb66:
  %t215 = load ptr, ptr %l1, !tbaa !29
  store ptr %t215, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t216 = load ptr, ptr %l106, !tbaa !29
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %bb67, label %bb68
bb67:
  %t219 = load ptr, ptr %l106, !tbaa !29
  %t220 = load i64, ptr %t219, !range !{i64 0, i64 17}
  %t222 = icmp eq i64 %t220, 16
  store i1 %t222, ptr %l107, !tbaa !21
  br label %bb68
bb68:
  %t223 = load i1, ptr %l107, !tbaa !21
  br i1 %t223, label %bb69, label %bb70
bb69:
  %t224 = load ptr, ptr %l1, !tbaa !29
  %t226 = getelementptr { i64, [3 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { %"compiler/source:Span", ptr }, ptr %t226, i32 0, i32 1
  %t228 = load ptr, ptr %t227
  store ptr %t228, ptr %l11, !tbaa !29
  br label %bb71
bb70:
  br label %bb77
bb71:
  %t230 = load ptr, ptr %l11, !tbaa !29
  %t232 = icmp eq ptr %t230, null
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb72, label %bb73
bb72:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/free:mustW", ptr %t236, i32 0, i32 6
  %t239 = load ptr, ptr %l11, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t238, ptr %t239)
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t242, ptr %t243)
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb103
bb77:
  %t246 = load ptr, ptr %l1, !tbaa !29
  store ptr %t246, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t247 = load ptr, ptr %l120, !tbaa !29
  %t248 = icmp ne ptr %t247, null
  br i1 %t248, label %bb78, label %bb79
bb78:
  %t250 = load ptr, ptr %l120, !tbaa !29
  %t251 = load i64, ptr %t250, !range !{i64 0, i64 17}
  %t253 = icmp eq i64 %t251, 11
  store i1 %t253, ptr %l121, !tbaa !21
  br label %bb79
bb79:
  %t254 = load i1, ptr %l121, !tbaa !21
  br i1 %t254, label %bb80, label %bb81
bb80:
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t257 = getelementptr { i64, [3 x i64] }, ptr %t255, i32 0, i32 1
  %t258 = getelementptr { %"compiler/source:Span", ptr }, ptr %t257, i32 0, i32 1
  %t259 = load ptr, ptr %t258
  store ptr %t259, ptr %l12, !tbaa !29
  br label %bb82
bb81:
  br label %bb84
bb82:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t261, ptr %t262)
  br label %bb83
bb83:
  br label %bb103
bb84:
  %t265 = load ptr, ptr %l1, !tbaa !29
  store ptr %t265, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t266 = load ptr, ptr %l128, !tbaa !29
  %t267 = icmp ne ptr %t266, null
  br i1 %t267, label %bb85, label %bb86
bb85:
  %t269 = load ptr, ptr %l128, !tbaa !29
  %t270 = load i64, ptr %t269, !range !{i64 0, i64 17}
  %t272 = icmp eq i64 %t270, 12
  store i1 %t272, ptr %l129, !tbaa !21
  br label %bb86
bb86:
  %t273 = load i1, ptr %l129, !tbaa !21
  br i1 %t273, label %bb87, label %bb88
bb87:
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr { i64, [3 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", ptr }, ptr %t276, i32 0, i32 1
  %t278 = load ptr, ptr %t277
  store ptr %t278, ptr %l13, !tbaa !29
  br label %bb89
bb88:
  br label %bb91
bb89:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t280, ptr %t281)
  br label %bb90
bb90:
  br label %bb103
bb91:
  %t284 = load ptr, ptr %l1, !tbaa !29
  store ptr %t284, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t285 = load ptr, ptr %l136, !tbaa !29
  %t286 = icmp ne ptr %t285, null
  br i1 %t286, label %bb92, label %bb93
bb92:
  %t288 = load ptr, ptr %l136, !tbaa !29
  %t289 = load i64, ptr %t288, !range !{i64 0, i64 17}
  %t291 = icmp eq i64 %t289, 13
  store i1 %t291, ptr %l137, !tbaa !21
  br label %bb93
bb93:
  %t292 = load i1, ptr %l137, !tbaa !21
  br i1 %t292, label %bb94, label %bb95
bb94:
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr { i64, [3 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { %"compiler/source:Span", ptr }, ptr %t295, i32 0, i32 1
  %t297 = load ptr, ptr %t296
  store ptr %t297, ptr %l14, !tbaa !29
  br label %bb96
bb95:
  br label %bb98
bb96:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load ptr, ptr %l14, !tbaa !29
  %t302 = getelementptr %"compiler/typed:Join", ptr %t300, i32 0, i32 0
  %t303 = load ptr, ptr %t302, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t299, ptr %t303)
  br label %bb97
bb97:
  br label %bb103
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_6578a1c50e6256f2_162d732cc51ca876)
  unreachable
bb103:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/free:Free", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:walker", ptr %t7, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %t6, i64 %t10)
  store ptr %t13, ptr %l6
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l6, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eheldDrop(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l14 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i64
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l27 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = trunc i64 30 to i32
  %t4 = icmp eq i32 %a1, %t3
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb3
bb2:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp ne i64 %t10, 1
  store i1 %t12, ptr %l14, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l14, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb5:
  %t17 = getelementptr %"compiler/free:walker", ptr %a0, i32 0, i32 54
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l21
  br label %bb6
bb6:
  %t20 = load i64, ptr %l21, !tbaa !24
  %t21 = icmp eq i64 %t20, 0
  store i1 %t21, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l18, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store i64 -1, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t25, ptr %l24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 0
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l3, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  store ptr %t31, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t32 = load ptr, ptr %l26, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l26, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 18}
  %t38 = icmp eq i64 %t36, 3
  store i1 %t38, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l27, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb13, label %bb14
bb13:
  store i64 -1, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr { i64, [5 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 0
  %t47 = load %"compiler/source:Span", ptr %t46
  store %"compiler/source:Span" %t47, ptr %l4
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 1
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l5, !tbaa !23
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l7, !tbaa !29
  %t63 = load ptr, ptr %l7, !tbaa !29
  store ptr %t63, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t64 = load ptr, ptr %l39, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 8}
  %t70 = icmp eq i64 %t68, 0
  store i1 %t70, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t71 = load i1, ptr %l40, !tbaa !21
  %t72 = xor i1 %t71, true
  br i1 %t72, label %bb18, label %bb19
bb18:
  store i64 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t75 = load ptr, ptr %l7, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t77, i32 0, i32 0
  %t79 = load %"compiler/source:Span", ptr %t78
  store %"compiler/source:Span" %t79, ptr %l8
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l9, !tbaa !23
  %t87 = load ptr, ptr %l7, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t89, i32 0, i32 2
  %t91 = load i32, ptr %t90
  %t95 = sext i32 %t91 to i64
  store i64 %t95, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2einOwner(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i1
  %l40 = alloca i1
  %l44 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca i64
  %l50 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca i64
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
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
  store i1 true, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/free:walker", ptr %t8, i32 0, i32 29
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l12, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  store ptr %a1, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t18 = load i64, ptr %l6, !tbaa !24
  store i64 %t18, ptr %l17, !tbaa !24
  %t19 = load ptr, ptr %l5, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t19)
  store i64 %t21, ptr %l19
  br label %bb8
bb8:
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = load i64, ptr %l19, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb35
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t28, i64 %t29)
  store i64 %t32, ptr %l24
  br label %bb12
bb12:
  %t33 = load i64, ptr %l24, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = call i64 @compiler_2ffree_2eoval(i64 %t34)
  store i64 %t36, ptr %l26
  br label %bb13
bb13:
  %t37 = load i64, ptr %l26, !tbaa !24
  store i64 %t37, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = call i64 @compiler_2ffree_2eokind(i64 %t38)
  store i64 %t40, ptr %l28
  br label %bb14
bb14:
  %t41 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t42 = load i64, ptr %l28, !tbaa !24
  %t44 = icmp eq i64 %t42, %t41
  br i1 %t44, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb18
bb16:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t48 = call i64 @compiler_2ffree_2eokind(i64 %t46)
  store i64 %t48, ptr %l33
  br label %bb17
bb17:
  %t49 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t50 = load i64, ptr %l33, !tbaa !24
  %t52 = icmp eq i64 %t50, %t49
  store i1 %t52, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb19, label %bb20
bb19:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t59 = icmp ne i64 %t55, %a2
  store i1 %t59, ptr %l36, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb21
bb21:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/free:walker", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %t65, i64 %t66)
  store i1 %t69, ptr %l44
  br label %bb24
bb23:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb25
bb24:
  %t70 = load i1, ptr %l44, !tbaa !21
  store i1 %t70, ptr %l40, !tbaa !21
  br label %bb25
bb25:
  %t71 = load i1, ptr %l40, !tbaa !21
  br i1 %t71, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/free:walker", ptr %t72, i32 0, i32 0
  %t75 = load ptr, ptr %t74, !tbaa !29
  store ptr %t75, ptr %l46, !tbaa !29
  %t76 = load i64, ptr %l8, !tbaa !24
  store i64 %t76, ptr %l47, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2ffree_2eRInPlace, !tbaa !24
  store i64 %t77, ptr %l48, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t78)
  store ptr %t80, ptr %l50
  br label %bb28
bb27:
  br label %bb33
bb28:
  %t81 = load ptr, ptr %l50, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Body", ptr %t81, i32 0, i32 3
  %t84 = load i64, ptr %t83, !tbaa !24
  store i64 %t84, ptr %l52, !tbaa !24
  %t85 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t85, ptr %l53
  %t86 = ptrtoint ptr %v0 to i64
  store i64 %t86, ptr %l54, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t87, label %bb29, label %bb30
bb29:
  %t89 = call ptr @__olang_region_make(ptr %v0)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l54, !tbaa !24
  br label %bb30
bb30:
  store { i64, ptr } %a4, ptr %l56, !tbaa !27
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l3
  %t96 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s4, ptr %t92, %"compiler/source:Span" %t93)
  store { i64, ptr } %t96, ptr %l59
  br label %bb31
bb31:
  %t97 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t99 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = add i64 %t98, %t101
  %t103 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t105 = add i64 %t102, %t104
  %t106 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = load i64, ptr %l54
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t112)
  call void @olang_textcopy(ptr %t115, ptr %t97, i64 %t98)
  %t116 = getelementptr i8, ptr %t115, i64 %t98
  call void @olang_textcopy(ptr %t116, ptr %t100, i64 %t101)
  %t117 = getelementptr i8, ptr %t116, i64 %t101
  call void @olang_textcopy(ptr %t117, ptr %t103, i64 %t104)
  %t118 = getelementptr i8, ptr %t117, i64 %t104
  call void @olang_textcopy(ptr %t118, ptr %t107, i64 %t108)
  %t119 = getelementptr i8, ptr %t118, i64 %t108
  call void @olang_textcopy(ptr %t119, ptr %t110, i64 %t111)
  %t120 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t115, 1
  %t123 = load i64, ptr %l54
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = extractvalue { i64, ptr } %t121, 0
  %t126 = extractvalue { i64, ptr } %t121, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %t124, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load ptr, ptr %l46, !tbaa !29
  %t132 = load i64, ptr %l47, !tbaa !24
  %t133 = load i64, ptr %l48, !tbaa !24
  %t134 = load i64, ptr %l52, !tbaa !24
  %t135 = load %"compiler/source:Span", ptr %l53
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t131, i64 %t132, i64 %t133, i64 %t134, %"compiler/source:Span" %t135, { i64, ptr } %t130)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t137 = load i64, ptr %l6, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l6, !tbaa !24
  br label %bb7
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2elambdaMade(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i64
  %l16 = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/free:Free", ptr %t4, i32 0, i32 60
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t6, i64 %t9)
  store ptr %t12, ptr %l7
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:walker", ptr %t13, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load ptr, ptr %l7, !tbaa !29
  %t19 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t17, i64 %t16)
  store i64 %t19, ptr %l10
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/free:walker", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/free:Free", ptr %t23, i32 0, i32 38
  %t26 = load i32, ptr %l1, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t25, i64 %t28)
  store i1 %t31, ptr %l16
  br label %bb3
bb3:
  %t32 = load i1, ptr %l16, !tbaa !21
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:walker", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/free:walker", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t36, i64 %t40)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emakeStores(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l20 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i64
  %l39 = alloca i1
  %l48 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Make", ptr %t6, i32 0, i32 0
  %t9 = load i32, ptr %t8, !range !{i32 0, i32 5}
  %t11 = trunc i64 2 to i32
  %t12 = icmp eq i32 %t9, %t11
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 3 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l20, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb3
bb3:
  %t26 = load i1, ptr %l20, !tbaa !21
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l4, !tbaa !29
  store ptr %t27, ptr %l25, !tbaa !29
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t32 = call i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %t28, i32 %a2)
  store i32 %t32, ptr %l28
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l25, !tbaa !29
  %t34 = load i32, ptr %l28, !tbaa !23
  %t35 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t33, i32 %t34, i64 -1)
  store i64 %t35, ptr %l29
  br label %bb8
bb8:
  %t36 = load i64, ptr %l29, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t37, 0
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Make", ptr %t41, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 5}
  %t46 = trunc i64 3 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t51 = getelementptr %"compiler/free:Free", ptr %t49, i32 0, i32 27
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/free:walker", ptr %t52, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  %t58 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t51, i64 %t55)
  store i1 %t58, ptr %l39
  br label %bb14
bb13:
  br label %bb25
bb14:
  %t59 = load i1, ptr %l39, !tbaa !21
  br i1 %t59, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Make", ptr %t60, i32 0, i32 2
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  store i64 %t67, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb21
bb21:
  %t77 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t77, ptr %l48, !tbaa !27
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr ptr, ptr %t81, i64 %t78
  %t83 = load ptr, ptr %t82, !tbaa !39
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l5, !tbaa !24
  %t88 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreOne(ptr %v0, ptr %v1, ptr %t85, i64 %t86, ptr %t83, %"compiler/source:Span" %t88, i1 true)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb18
bb24:
  br label %ret
bb25:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Make", ptr %t97, i32 0, i32 2
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %l12, !tbaa !24
  br label %bb26
bb26:
  %t106 = load i64, ptr %l11, !tbaa !24
  %t107 = load i64, ptr %l12, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t114 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t114, ptr %l65, !tbaa !27
  %t115 = load i64, ptr %l11, !tbaa !24
  %t117 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr ptr, ptr %t118, i64 %t115
  %t120 = load ptr, ptr %t119, !tbaa !39
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l5, !tbaa !24
  %t125 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreOne(ptr %v0, ptr %v1, ptr %t122, i64 %t123, ptr %t120, %"compiler/source:Span" %t125, i1 false)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l11, !tbaa !24
  br label %bb26
bb32:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca i1
  %l37 = alloca i64
  %l40 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb22
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/free:walker", ptr %t31, i32 0, i32 6
  %t34 = load i32, ptr %l3, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t39 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t33, i64 %t36)
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l25
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb12, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l24, !tbaa !24
  store i64 %t44, ptr %l19, !tbaa !24
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t49 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store i64 %t49, ptr %l28
  br label %bb14
bb14:
  %t50 = load i64, ptr %l28, !tbaa !24
  store i64 %t50, ptr %l19, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l19, !tbaa !24
  store i64 %t51, ptr %l12, !tbaa !24
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_f81460935a0747e6_f4792861f5ca2502)
  unreachable
bb21:
  %t52 = load i64, ptr %l12, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb35
bb22:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb23, label %bb24
bb23:
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 17
  store i1 %t60, ptr %l30, !tbaa !21
  br label %bb24
bb24:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb25, label %bb26
bb25:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l4, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t72 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamOf(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  store i64 %t72, ptr %l37
  br label %bb28
bb28:
  %t73 = load i64, ptr %l37, !tbaa !24
  store i64 %t73, ptr %l5, !tbaa !24
  br label %bb35
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t78 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t74, ptr %t75)
  store i64 %t78, ptr %l40
  br label %bb33
bb33:
  %t79 = load i64, ptr %l40, !tbaa !24
  store i64 %t79, ptr %l5, !tbaa !24
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e3a1bae50be73c47_b8cb15515377d683)
  unreachable
bb35:
  %t80 = load i64, ptr %l5, !tbaa !24
  store i64 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoredWhole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l10 = alloca i64
  %l17 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = icmp eq ptr %a2, null
  %t5 = xor i1 %t3, true
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t8, ptr %a1)
  store i64 %t12, ptr %l10
  br label %bb4
bb4:
  %t13 = load i64, ptr %l10, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/free:walker", ptr %t19, i32 0, i32 2
  %t22 = load i1, ptr %t21, !tbaa !21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/free:walker", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 33
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/free:walker", ptr %t32, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t31, i64 %t35)
  store ptr %t38, ptr %l23
  br label %bb10
bb9:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb12
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t42 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t40, i64 %t39)
  store i64 %t42, ptr %l25
  br label %bb11
bb11:
  %t43 = load i64, ptr %l25, !tbaa !24
  %t44 = icmp sgt i64 %t43, 0
  store i1 %t44, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l17, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/free:walker", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/free:Free", ptr %t50, i32 0, i32 40
  store i1 true, ptr %t52, !tbaa !21
  br label %bb15
bb14:
  br label %bb15
bb15:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewritable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %a0)
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
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l11
  br label %bb3
bb3:
  %t16 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t18 = trunc i64 20 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l17
  br label %bb6
bb5:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb7
bb6:
  %t26 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t27 = load i64, ptr %l17, !tbaa !24
  %t29 = and i64 %t27, %t26
  %t31 = icmp ne i64 %t29, 0
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l14, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2ffree_2efindCallStmt(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
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
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l38 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca ptr
  %l61 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca ptr
  %l85 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l99 = alloca ptr
  %l102 = alloca ptr
  %l103 = alloca ptr
  %l104 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i1
  %l120 = alloca ptr
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t16, i64 %t17)
  store ptr %t20, ptr %l21
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l21, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  br label %bb81
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t23 = load ptr, ptr %l22, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l22, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 17}
  %t29 = icmp eq i64 %t27, 1
  store i1 %t29, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l23, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr { i64, [3 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [3 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb19
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t47 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %s2, ptr %t43, i64 %t44)
  store ptr %t47, ptr %l32
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l32, !tbaa !29
  %t49 = icmp eq ptr %t48, null
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  %t57 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t53, i64 %t54)
  store ptr %t57, ptr %l38
  br label %bb16
bb15:
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t59 = load i64, ptr %l1, !tbaa !24
  %t62 = call ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %t58, i64 %t59)
  store ptr %t62, ptr %l41
  br label %bb17
bb16:
  %t63 = load ptr, ptr %l38, !tbaa !29
  store ptr %t63, ptr %l35, !tbaa !29
  br label %bb18
bb17:
  %t64 = load ptr, ptr %l41, !tbaa !29
  store ptr %t64, ptr %l35, !tbaa !29
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l35, !tbaa !29
  store ptr %t65, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s2)
  br label %bb81
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t67 = load ptr, ptr %l42, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l42, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 17}
  %t73 = icmp eq i64 %t71, 2
  store i1 %t73, ptr %l43, !tbaa !21
  br label %bb21
bb21:
  %t74 = load i1, ptr %l43, !tbaa !21
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr { i64, [3 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", ptr }, ptr %t77, i32 0, i32 1
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t81, i64 %t82)
  store ptr %t85, ptr %l50
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l50, !tbaa !29
  store ptr %t86, ptr %l12, !tbaa !29
  br label %bb81
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t88 = load ptr, ptr %l51, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb27, label %bb28
bb27:
  %t91 = load ptr, ptr %l51, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 17}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l52, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l52, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr { i64, [3 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l6, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = call ptr @compiler_2ffree_2efindIf(ptr %v0, ptr %v1, ptr %t102, i64 %t103)
  store ptr %t106, ptr %l59
  br label %bb32
bb32:
  %t107 = load ptr, ptr %l59, !tbaa !29
  store ptr %t107, ptr %l12, !tbaa !29
  br label %bb81
bb33:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t109 = load ptr, ptr %l60, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb34, label %bb35
bb34:
  %t112 = load ptr, ptr %l60, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 17}
  %t115 = icmp eq i64 %t113, 4
  store i1 %t115, ptr %l61, !tbaa !21
  br label %bb35
bb35:
  %t116 = load i1, ptr %l61, !tbaa !21
  br i1 %t116, label %bb36, label %bb37
bb36:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [3 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l7, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr { i64, [3 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l8, !tbaa !29
  br label %bb38
bb37:
  br label %bb48
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t129 = load ptr, ptr %l7, !tbaa !29
  %t130 = load i64, ptr %l1, !tbaa !24
  %t133 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %s5, ptr %t129, i64 %t130)
  store ptr %t133, ptr %l70
  br label %bb39
bb39:
  %t134 = load ptr, ptr %l70, !tbaa !29
  %t135 = icmp eq ptr %t134, null
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb40, label %bb41
bb40:
  %t139 = load ptr, ptr %l7, !tbaa !29
  %t140 = load i64, ptr %l1, !tbaa !24
  %t143 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %t139, i64 %t140)
  store ptr %t143, ptr %l76
  br label %bb42
bb41:
  %t144 = load ptr, ptr %l8, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb43, label %bb44
bb42:
  %t150 = load ptr, ptr %l76, !tbaa !29
  store ptr %t150, ptr %l73, !tbaa !29
  br label %bb47
bb43:
  %t151 = load ptr, ptr %l8, !tbaa !29
  %t152 = load i64, ptr %l1, !tbaa !24
  %t155 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %t151, i64 %t152)
  store ptr %t155, ptr %l83
  br label %bb45
bb44:
  store ptr null, ptr %l80, !tbaa !29
  br label %bb46
bb45:
  %t156 = load ptr, ptr %l83, !tbaa !29
  store ptr %t156, ptr %l80, !tbaa !29
  br label %bb46
bb46:
  %t157 = load ptr, ptr %l80, !tbaa !29
  store ptr %t157, ptr %l73, !tbaa !29
  br label %bb47
bb47:
  %t158 = load ptr, ptr %l73, !tbaa !29
  store ptr %t158, ptr %l12, !tbaa !29
  call void @__olang_scope_close(ptr %s5)
  br label %bb81
bb48:
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t160 = load ptr, ptr %l84, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb49, label %bb50
bb49:
  %t163 = load ptr, ptr %l84, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 17}
  %t166 = icmp eq i64 %t164, 6
  store i1 %t166, ptr %l85, !tbaa !21
  br label %bb50
bb50:
  %t167 = load i1, ptr %l85, !tbaa !21
  br i1 %t167, label %bb51, label %bb52
bb51:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr }, ptr %t170, i32 0, i32 1
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l9, !tbaa !29
  br label %bb57
bb52:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t175 = load ptr, ptr %l90, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb53, label %bb54
bb53:
  %t178 = load ptr, ptr %l90, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 17}
  %t181 = icmp eq i64 %t179, 16
  store i1 %t181, ptr %l91, !tbaa !21
  br label %bb54
bb54:
  %t182 = load i1, ptr %l91, !tbaa !21
  br i1 %t182, label %bb55, label %bb56
bb55:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr { i64, [3 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", ptr }, ptr %t185, i32 0, i32 1
  %t187 = load ptr, ptr %t186
  store ptr %t187, ptr %l9, !tbaa !29
  br label %bb57
bb56:
  br label %bb62
bb57:
  %t189 = load ptr, ptr %l9, !tbaa !29
  %t191 = icmp eq ptr %t189, null
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb58, label %bb59
bb58:
  %t195 = load ptr, ptr %l9, !tbaa !29
  %t196 = load i64, ptr %l1, !tbaa !24
  %t199 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t195, i64 %t196)
  store ptr %t199, ptr %l102
  br label %bb60
bb59:
  store ptr null, ptr %l99, !tbaa !29
  br label %bb61
bb60:
  %t200 = load ptr, ptr %l102, !tbaa !29
  store ptr %t200, ptr %l99, !tbaa !29
  br label %bb61
bb61:
  %t201 = load ptr, ptr %l99, !tbaa !29
  store ptr %t201, ptr %l12, !tbaa !29
  br label %bb81
bb62:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t203 = load ptr, ptr %l103, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb63, label %bb64
bb63:
  %t206 = load ptr, ptr %l103, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 17}
  %t209 = icmp eq i64 %t207, 11
  store i1 %t209, ptr %l104, !tbaa !21
  br label %bb64
bb64:
  %t210 = load i1, ptr %l104, !tbaa !21
  br i1 %t210, label %bb65, label %bb66
bb65:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr }, ptr %t213, i32 0, i32 1
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l10, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t217 = load ptr, ptr %l10, !tbaa !29
  %t218 = load i64, ptr %l1, !tbaa !24
  %t221 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %t217, i64 %t218)
  store ptr %t221, ptr %l111
  br label %bb68
bb68:
  %t222 = load ptr, ptr %l111, !tbaa !29
  store ptr %t222, ptr %l12, !tbaa !29
  br label %bb81
bb69:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l112, !tbaa !29
  store i1 false, ptr %l113, !tbaa !21
  %t224 = load ptr, ptr %l112, !tbaa !29
  %t225 = icmp ne ptr %t224, null
  br i1 %t225, label %bb70, label %bb71
bb70:
  %t227 = load ptr, ptr %l112, !tbaa !29
  %t228 = load i64, ptr %t227, !range !{i64 0, i64 17}
  %t230 = icmp eq i64 %t228, 12
  store i1 %t230, ptr %l113, !tbaa !21
  br label %bb71
bb71:
  %t231 = load i1, ptr %l113, !tbaa !21
  br i1 %t231, label %bb72, label %bb73
bb72:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr { i64, [3 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", ptr }, ptr %t234, i32 0, i32 1
  %t236 = load ptr, ptr %t235
  store ptr %t236, ptr %l11, !tbaa !29
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t238 = load ptr, ptr %l11, !tbaa !29
  %t239 = load i64, ptr %l1, !tbaa !24
  %t242 = call ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %t238, i64 %t239)
  store ptr %t242, ptr %l120
  br label %bb75
bb75:
  %t243 = load ptr, ptr %l120, !tbaa !29
  store ptr %t243, ptr %l12, !tbaa !29
  br label %bb81
bb76:
  br i1 true, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  store ptr null, ptr %l12, !tbaa !29
  br label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_649fc3f56aacc7bc_4edb8d32620c5088)
  unreachable
bb81:
  %t244 = load ptr, ptr %l12, !tbaa !29
  store ptr %t244, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ffree_2eisVar({ i64, [2 x i64] } %a0) #0 {
entry:
  %l1 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [2 x i64] } %a0, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3f15d8a4ec391f6e_384039254c446aaa)
  unreachable
bb9:
  %t6 = load i1, ptr %l1, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ewholeCopySite(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l24 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i1
  %l35 = alloca i64
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
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 4 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l13, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Make", ptr %t34, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l20, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 0
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t43 = call i64 @compiler_2ffree_2ereadLocalOf(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l22
  br label %bb11
bb10:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb12
bb11:
  %t44 = load i64, ptr %l22, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  store i1 %t45, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l18, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Make", ptr %t48, i32 0, i32 4
  %t51 = load i32, ptr %t50, !tbaa !23
  %t53 = sext i32 %t51 to i64
  store i64 %t53, ptr %l24, !tbaa !24
  br label %bb15
bb14:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb15
bb15:
  %t55 = load i64, ptr %l24, !tbaa !24
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb28
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l28, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 18}
  %t63 = icmp eq i64 %t61, 17
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t64 = load i1, ptr %l29, !tbaa !21
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l2, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = call i64 @compiler_2ffree_2ewholeCopySite(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l35
  br label %bb22
bb22:
  %t74 = load i64, ptr %l35, !tbaa !24
  store i64 %t74, ptr %l3, !tbaa !24
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_ab601f37ca7d11ca_d79a21710a30c0d6)
  unreachable
bb28:
  %t75 = load i64, ptr %l3, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_3amustW_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"compiler/free:mustW"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 %a1, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3amustW_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l11
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l13
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3amustW_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l11
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l4
  %t25 = ptrtoint ptr %v1 to i64
  store i64 %t25, ptr %l15, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3amustW_2e3
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v1)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l15
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l17
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3amustW_2e3
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l15
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l5
  %t45 = ptrtoint ptr %v1 to i64
  store i64 %t45, ptr %l19, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3amustW_2e4
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v1)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l19
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l21
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3amustW_2e4
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l19
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t63)
  br label %bb15
bb15:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l6
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l23
  br label %bb16
bb16:
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l7
  %t67 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l24
  br label %bb17
bb17:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t69 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 0
  %t70 = load ptr, ptr %l2, !tbaa !29
  store ptr %t70, ptr %t69, !tbaa !29
  %t71 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 1
  %t72 = load i64, ptr %l3, !tbaa !24
  store i64 %t72, ptr %t71, !tbaa !24
  %t73 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 2
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %t73
  %t75 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 3
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %t75
  %t77 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 4
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %t77
  %t79 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 5
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t79
  %t81 = getelementptr %"compiler/free:mustW", ptr %l25, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %t81
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l25, i64 176, i1 false)
  br label %ret
ret:
  ret void
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

@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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

declare ptr @__olang_region_or(ptr, ptr)
@.d0 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"free: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d1 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" bodies, " }>, align 8
@.d2 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" places; must " }>, align 8
@.d3 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" bodies " }>, align 8
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" ms; may " }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" walks " }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" passes " }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" ms\0A" }>, align 8
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
declare void @__olang_errpay_pop()
@.d8 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"free: hidden let-go in " }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d11 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"free: final " }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" ms, " }>, align 8
@.d13 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" let-goes, " }>, align 8
@.d14 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" stores; decide " }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" ms\0A" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
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

@olang_2esole_2ecompiler_2ffree_3areason_2e3 = weak hidden constant i1 false
@.d17 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"its value is changed in place, by " }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c": '" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@olang_2esole_2ecompiler_2ffree_3amustW_2e2 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2ffree_3amustW_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3amustW_2e4 = weak hidden constant i1 false
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

declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownCode(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2epreludeCode(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ffree_2eMustTop = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandedToC(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_38e68c2f90f7ff92_433845456bb6222e = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_H788cd74f9c006611bc4bb459b5b22001(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_cfa78d5b759fffbc_7789424fbd23b3b0 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_c07c4c0bbb573d1f_6e3b998739460953 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2enoteDtor(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4a2ee03059613aea_a0006d5774bd9126 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i64 @std_2ftime_2eNow()
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eCalleesFirst(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_b4402838d0fec99d_8d63b3fead7ad2c9 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eCalleesOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7774858aec9876f0_864a54e21bf2c67c = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a3e4b8257e528993_6ac514faf6c963df = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewalk(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eimplicit(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emodelled(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2egenKeeps(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2edecide(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eclassifyHolders(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewritePlans(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1c505c1b55d06586_a0a7e4d6315dd1d2 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecallAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eorVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, [2 x i64] } %a4, i64 %a5)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efindStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eLastCopies(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_1a9841d5ac3bc9f7_8d61e2fce1a4aee3 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2efeedBlock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4)
declare %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eLVacate = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edestructs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ec4c329f8a2f93df_8cb0fdf9b7b252db = external constant [0 x i8]
@olang_loc_285dc0af82d31c87_50e1bc6ae6554e83 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisCase(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f9703b3e8b4d3f8c_114f0f1572d2eea8 = external constant [0 x i8]
@olang_loc_c329a7357b4632ae_1972f4ce8b92321a = external constant [0 x i8]
@olang_loc_ce4a56608212b1d3_28564c72fb26107 = external constant [0 x i8]
@olang_loc_8c3ff88e405c7c2b_15d3403d537d031f = external constant [0 x i8]
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estmtsMayRegister(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_637aed21ecd584b9_ebc4f5a84b828bd = external constant [0 x i8]
@olang_loc_683418f7a5c8092_d6a8437e0252bcd6 = external constant [0 x i8]
@olang_loc_edaf755937fbeeee_2c55fc89855df6da = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eMustNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_1d9a56a827ed845f_5cc839dbc781b743 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ffree_2emeet(i64 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_Ha64a825bb0b4fc6c7596ac96329c2853(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efreshLocal(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erefCand(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edtorCand(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandleCand(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayCand(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2enewPlace(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3, i32 %a4, i1 %a5)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_98179ed2ec661f5d_533fcebe8f905861 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2evarsFit(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, [2 x i64] } %a4, i64 %a5)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eSetPassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2, { i64, [2 x i64] } %a3)
@olang_loc_21335a5a6f6a0d23_1fb4d5f27249eebf = external constant [0 x i8]
@olang_loc_80551b5782bfdb3b_907a9dbefd6aabe7 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ehas(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eOPar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2eorig(i64 %a0, i64 %a1)
@G_2ecompiler_2ffree_2eOParC = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@olang_loc_2a5f6fd698855c53_bf46ca1a958c9ea7 = external constant [0 x i8]
@olang_loc_4959d0728bd157ab_d85fd94b6e31a9bf = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_4acb4c8921e8c407_808d59af97a4073 = external constant [0 x i8]
declare i1 @compiler_2ffree_2eisConversion(ptr %v0, i32 %a0, { i64, ptr } %a1)
@olang_loc_d1dd1febe39b41f_df28cb247c1abe4b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eLen_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0)
declare %"compiler/free:feedCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eAt_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_18fbdab9dd354c58_c2b73ff02acf68dc = external constant [0 x i8]
@olang_loc_6e5f625591edaca_eb58e2cd01ac77e = external constant [0 x i8]
@olang_loc_6578a1c50e6256f2_162d732cc51ca876 = external constant [0 x i8]
declare i64 @compiler_2ffree_2eoval(i64 %a0)
declare i64 @compiler_2ffree_2eokind(i64 %a0)
@G_2ecompiler_2ffree_2eOPl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOMov = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eRInPlace = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreOne(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/source:Span" %a3, i1 %a4)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f81460935a0747e6_f4792861f5ca2502 = external constant [0 x i8]
@olang_loc_e3a1bae50be73c47_b8cb15515377d683 = external constant [0 x i8]
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2efindIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2efindCallBlock(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_649fc3f56aacc7bc_4edb8d32620c5088 = external constant [0 x i8]
@olang_loc_3f15d8a4ec391f6e_384039254c446aaa = external constant [0 x i8]
declare i64 @compiler_2ffree_2ereadLocalOf(ptr %v0, ptr %a0)
@olang_loc_ab601f37ca7d11ca_d79a21710a30c0d6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)

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
