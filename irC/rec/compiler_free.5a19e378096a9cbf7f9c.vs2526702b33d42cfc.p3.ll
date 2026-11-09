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
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/free:feed" = type { i64, i64, i64, i64, { i64, [2 x i64] }, { i64, [2 x i64] }, i64 }
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/free:retire" = type { i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:store" = type { i64, i64, i64, %"compiler/source:Span", i64, i64, i64, ptr, ptr }
%"compiler/free:reason" = type { i64, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/free:mustW" = type { ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/free:walker" = type { ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/free:orStore" = type { i64, i64, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = icmp eq i64 %t18, %t20
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i64 0, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  br label %bb12
bb12:
  store i64 1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedSite(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca i64
  %l15 = alloca i32
  %l18 = alloca i64
  %l22 = alloca %"compiler/free:feed"
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
  store i64 -1, ptr %l18, !tbaa !24
  br label %bb12
bb11:
  %t37 = getelementptr %"compiler/free:feed", ptr %l22, i32 0, i32 6
  %t38 = load i64, ptr %t37, !tbaa !24
  store i64 %t38, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGuard(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb7
bb5:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/free:Free", ptr %t11, i32 0, i32 22
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l12
  br label %bb6
bb6:
  %t16 = load i64, ptr %l9, !tbaa !24
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = icmp sge i64 %t16, %t17
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l8, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb11
bb9:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:Free", ptr %t21, i32 0, i32 22
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t23, i64 %t24)
  store i1 %t27, ptr %l18
  br label %bb10
bb10:
  %t28 = load i1, ptr %l18, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t31 = load i1, ptr %l14, !tbaa !21
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t32 = load i64, ptr %l2, !tbaa !24
  store i64 %t32, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l2, !tbaa !24
  %t38 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsSole(ptr %v0, ptr %t34, i64 %t35)
  store i1 %t38, ptr %l23
  br label %bb15
bb15:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb18
bb17:
  %t40 = load i64, ptr @G_2ecompiler_2ffree_2eNotSole, !tbaa !24
  store i64 %t40, ptr %l24, !tbaa !24
  br label %bb18
bb18:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 12
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
  %t18 = getelementptr %"compiler/free:Free", ptr %t16, i32 0, i32 12
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

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsSole(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i1
  %l17 = alloca i1
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
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 53
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t14)
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
  br i1 %t21, label %bb8, label %bb9
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/free:Free", ptr %t22, i32 0, i32 53
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t24, i64 %t25)
  store i1 %t28, ptr %l17
  br label %bb10
bb9:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb11
bb10:
  %t29 = load i1, ptr %l17, !tbaa !21
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l13, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eRetirePlaces(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/free:retire"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/free:retire"
  %l26 = alloca %"compiler/free:retire"
  %l30 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca i1
  %l38 = alloca i64
  %l40 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i1
  %l52 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca i1
  %l56 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 78
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %lp3
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/free:Free", ptr %t15, i32 0, i32 14
  store ptr %t17, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t19 = load i64, ptr %l5, !tbaa !24
  store i64 %t19, ptr %l17, !tbaa !24
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eLen_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load i64, ptr %l17, !tbaa !24
  %t24 = load i64, ptr %l19, !tbaa !24
  %t25 = icmp slt i64 %t23, %t24
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = call %"compiler/free:retire" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eAt_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %v0, ptr %t29, i64 %t30)
  store %"compiler/free:retire" %t33, ptr %l24
  br label %bb10
bb10:
  %t35 = call %"compiler/free:retire" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aretire(ptr %s3, ptr %l24)
  store %"compiler/free:retire" %t35, ptr %l26
  br label %bb11
bb11:
  %t36 = load %"compiler/free:retire", ptr %l26
  store %"compiler/free:retire" %t36, ptr %l6
  %t37 = getelementptr %"compiler/free:retire", ptr %l6, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  %t42 = icmp ne i64 %t38, %a1
  br i1 %t42, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb15
bb13:
  %t44 = getelementptr %"compiler/free:retire", ptr %l6, i32 0, i32 1
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l31
  store %"compiler/source:Span" %a2, ptr %l33
  %t49 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fsource_3aSpan(ptr %l31, ptr %l33)
  store i1 %t49, ptr %l35
  br label %bb14
bb14:
  %t50 = load i1, ptr %l35, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb17:
  br label %bb18
bb18:
  %t54 = getelementptr %"compiler/free:retire", ptr %l6, i32 0, i32 2
  store ptr %t54, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t56 = load i64, ptr %l8, !tbaa !24
  store i64 %t56, ptr %l38, !tbaa !24
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s3, ptr %t57)
  store i64 %t59, ptr %l40
  br label %bb20
bb20:
  %t60 = load i64, ptr %l38, !tbaa !24
  %t61 = load i64, ptr %l40, !tbaa !24
  %t62 = icmp slt i64 %t60, %t61
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb21, label %bb22
bb21:
  br label %bb37
bb22:
  br label %bb23
bb23:
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t67 = load i64, ptr %l8, !tbaa !24
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s3, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l45
  br label %bb24
bb24:
  %t71 = load i64, ptr %l45, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = call i64 @compiler_2ffree_2eokind(i64 %t72)
  store i64 %t74, ptr %l47
  br label %bb25
bb25:
  %t75 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t76 = load i64, ptr %l47, !tbaa !24
  %t78 = icmp eq i64 %t76, %t75
  br i1 %t78, label %bb26, label %bb27
bb26:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/free:Free", ptr %t80, i32 0, i32 13
  store ptr %t82, ptr %l52, !tbaa !29
  %t83 = load i64, ptr %l9, !tbaa !24
  %t85 = call i64 @compiler_2ffree_2eoval(i64 %t83)
  store i64 %t85, ptr %l54
  br label %bb28
bb27:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb30
bb28:
  %t86 = load ptr, ptr %l52, !tbaa !29
  %t87 = load i64, ptr %l54, !tbaa !24
  %t88 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t86, i64 %t87)
  store i1 %t88, ptr %l55
  br label %bb29
bb29:
  %t89 = load i1, ptr %l55, !tbaa !21
  store i1 %t89, ptr %l50, !tbaa !21
  br label %bb30
bb30:
  %t90 = load i1, ptr %l50, !tbaa !21
  br i1 %t90, label %bb31, label %bb32
bb31:
  %t91 = load ptr, ptr %lp3
  store ptr %t91, ptr %l56, !tbaa !29
  %t92 = load i64, ptr %l9, !tbaa !24
  %t94 = call i64 @compiler_2ffree_2eoval(i64 %t92)
  store i64 %t94, ptr %l58
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t95 = load ptr, ptr %l56, !tbaa !29
  %t96 = load i64, ptr %l58, !tbaa !24
  %t97 = call i64 @compiler_2ffree_2eaddTo(ptr %v1, ptr %t95, i64 %t96)
  store i64 %t97, ptr %l59
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l8, !tbaa !24
  br label %bb19
bb37:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb38:
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l5, !tbaa !24
  br label %bb5
bb39:
  %t106 = load ptr, ptr %lp3
  %t107 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca ptr
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l27 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:Free", ptr %t7, i32 0, i32 3
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store ptr %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l11, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  %t15 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Plan", ptr %t19, i32 0, i32 5
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr i64, ptr %t26, i64 %t23
  %t28 = load i64, ptr %t27, !tbaa !34
  %t30 = icmp eq i64 %t28, 1
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Plan", ptr %t33, i32 0, i32 6
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l21, !tbaa !27
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i64 %t37
  %t42 = load { i64, [2 x i64] }, ptr %t41
  store { i64, [2 x i64] } %t42, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t50 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %t44, i64 %t45, ptr %t46)
  store { i64, [2 x i64] } %t50, ptr %l27
  br label %bb9
bb9:
  %t51 = load { i64, [2 x i64] }, ptr %l27
  store { i64, [2 x i64] } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecandTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s2 = alloca %olang.scope
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load i64, ptr %l11, !tbaa !24
  %t22 = icmp slt i64 %t21, 0
  br i1 %t22, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s2, ptr %t24, i32 %t25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l15
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4cef24e7d17769b7_e2744f91577a9953)
  unreachable
bb16:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edtorCand(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i32
  %l34 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l40 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca i32
  %l51 = alloca i1
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l70 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i1, ptr %l12, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb6
bb4:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l17
  br label %bb5
bb5:
  %t18 = load i1, ptr %l17, !tbaa !21
  store i1 %t18, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l21
  br label %bb9
bb9:
  %t25 = load i1, ptr %l21, !tbaa !21
  store i1 %t25, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t26 = load i1, ptr %l18, !tbaa !21
  br i1 %t26, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l23, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l26
  br label %bb14
bb14:
  %t34 = load ptr, ptr %l23, !tbaa !29
  %t35 = load i32, ptr %l26, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l27
  br label %bb15
bb15:
  %t37 = load i32, ptr %l27, !tbaa !23
  store i32 %t37, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l30
  br label %bb16
bb16:
  %t43 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t45 = trunc i64 18 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb20
bb18:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t51 = load i32, ptr %l3, !tbaa !23
  %t54 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l37
  br label %bb19
bb19:
  %t55 = load i1, ptr %l37, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l34, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb25
bb22:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l40, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t61 = load i32, ptr %l3, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l43
  br label %bb23
bb23:
  %t65 = load ptr, ptr %l40, !tbaa !29
  %t66 = load i32, ptr %l43, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t67, ptr %l44
  br label %bb24
bb24:
  %t68 = load i32, ptr %l44, !range !{i32 0, i32 6}
  %t70 = trunc i64 0 to i32
  %t71 = icmp eq i32 %t68, %t70
  %t73 = xor i1 %t71, true
  store i1 %t73, ptr %l39, !tbaa !21
  br label %bb25
bb25:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb26, label %bb27
bb26:
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t78 = load i32, ptr %l3, !tbaa !23
  %t81 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t77, i32 %t78)
  store i1 %t81, ptr %l51
  br label %bb29
bb29:
  %t82 = load i1, ptr %l51, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb30, label %bb31
bb30:
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l54, !tbaa !29
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t88 = load i32, ptr %l3, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l57
  br label %bb33
bb33:
  %t92 = load ptr, ptr %l54, !tbaa !29
  %t93 = load i32, ptr %l57, !tbaa !23
  %t94 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t92, i32 %t93)
  store { i64, ptr } %t94, ptr %l58
  br label %bb34
bb34:
  %t95 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t95, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb35
bb35:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb36, label %bb37
bb36:
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t108 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t108, ptr %l65, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i32, ptr %t112, i64 %t109
  %t114 = load i32, ptr %t113, !tbaa !33
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t120 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t116, i32 %t114)
  store i1 %t120, ptr %l70
  br label %bb39
bb39:
  %t121 = load i1, ptr %l70, !tbaa !21
  %t122 = xor i1 %t121, true
  br i1 %t122, label %bb40, label %bb41
bb40:
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t125 = load i64, ptr %l5, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l5, !tbaa !24
  br label %bb35
bb44:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
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
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i64 }, ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb4
bb3:
  br label %bb8
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/free:Free", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/load:Loader", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l17, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/free:Free", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l19, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l23
  br label %bb5
bb5:
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s1, ptr %t44, i64 %t45)
  store ptr %t46, ptr %l24
  br label %bb6
bb6:
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Func", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load ptr, ptr %l17, !tbaa !29
  %t53 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s1, ptr %t51, i32 %t50)
  store { i64, ptr } %t53, ptr %l27
  br label %bb7
bb7:
  %t54 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t55, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l10, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t61, ptr %l10, !tbaa !27
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_947cc6b8bd079717_9e266d1a8b9c5cdb)
  unreachable
bb13:
  %t63 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l31, !tbaa !24
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l32, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l31, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t76, ptr %l10, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eguard(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l6 = alloca i1
  %l7 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 22
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %a1)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb4
bb3:
  store i64 %a2, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t11 = load i64, ptr %l7, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eholderRows(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca %"compiler/free:store"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l49 = alloca i32
  %l53 = alloca %"compiler/free:store"
  %l54 = alloca ptr
  %l55 = alloca i64
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i32
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l82 = alloca ptr
  %l84 = alloca i32
  %l85 = alloca i32
  %l87 = alloca { i64, ptr }
  %l89 = alloca i1
  %l104 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l14
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/free:Free", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/load:Loader", ptr %t9, i32 0, i32 4
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/free:Free", ptr %t14, i32 0, i32 25
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l21
  br label %bb2
bb2:
  %t19 = load i64, ptr %l21, !tbaa !24
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb8
bb5:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l28, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l28, !tbaa !24
  store i64 %t46, ptr %l25, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l25, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb11:
  br label %bb12
bb12:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/free:Free", ptr %t66, i32 0, i32 25
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t68, i64 %t69)
  store i32 %t72, ptr %l49
  br label %bb13
bb13:
  %t73 = load i32, ptr %l49, !tbaa !23
  store i32 %t73, ptr %l9, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/free:Free", ptr %t74, i32 0, i32 26
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t76, i64 %t77)
  store %"compiler/free:store" %t80, ptr %l53
  br label %bb14
bb14:
  %t81 = load %"compiler/free:store", ptr %l53
  store %"compiler/free:store" %t81, ptr %l10
  %t82 = load ptr, ptr %l2, !tbaa !29
  store ptr %t82, ptr %l54, !tbaa !29
  %t83 = getelementptr %"compiler/free:store", ptr %l10, i32 0, i32 2
  %t84 = load i64, ptr %t83, !tbaa !24
  store i64 %t84, ptr %l55, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/free:store", ptr %l10, i32 0, i32 2
  %t87 = load i64, ptr %t86, !tbaa !24
  %t88 = getelementptr %"compiler/free:store", ptr %l10, i32 0, i32 3
  %t89 = getelementptr %"compiler/source:Span", ptr %t88, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t92 = sext i32 %t90 to i64
  %t96 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2elineStart(ptr %v0, ptr %t85, i64 %t87, i64 %t92)
  store i64 %t96, ptr %l60
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l54, !tbaa !29
  %t98 = load i64, ptr %l55, !tbaa !24
  %t99 = load i64, ptr %l60, !tbaa !24
  %t100 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s2, ptr %t97, i64 %t98, i64 %t99)
  store { i64, ptr } %t100, ptr %l61
  br label %bb16
bb16:
  %t101 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t103)
  call void @olang_textcopy(ptr %t104, ptr %t102, i64 %t103)
  %t105 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  store { i64, ptr } %t106, ptr %l11, !tbaa !27
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/free:Free", ptr %t108, i32 0, i32 24
  %t111 = load i32, ptr %l9, !tbaa !23
  %t114 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hdc5ed4f57090b33f7a83fc7b2b1f05b3(ptr %v0, ptr %s2, ptr %t110, i32 %t111)
  %t115 = extractvalue { i32, { i64, ptr } } %t114, 1
  %t116 = extractvalue { i32, { i64, ptr } } %t114, 0
  store i32 %t116, ptr %l68
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb18, label %ok.118, !prof !99
ok.118:
  store { i64, ptr } %t115, ptr %l67
  br label %bb17
bb17:
  %t119 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l69, !tbaa !24
  %t121 = load i64, ptr %l69, !tbaa !24
  %t122 = mul i64 %t121, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t122)
  %t124 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  store { i64, ptr } %t125, ptr %l70, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l69, !tbaa !24
  %t131 = mul i64 %t130, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t127, ptr %t129, i64 %t131, i1 false)
  %t132 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t132, ptr %l63, !tbaa !27
  br label %bb20
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l71, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t133, ptr %l63, !tbaa !27
  br label %bb20
bb20:
  %t135 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l73, !tbaa !24
  %t137 = load i64, ptr %l73, !tbaa !24
  %t138 = mul i64 %t137, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l74, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l73, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  %t148 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t148, ptr %l12, !tbaa !27
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t149)
  store ptr %t151, ptr %l76
  br label %bb21
bb21:
  %t152 = load ptr, ptr %l76, !tbaa !29
  %t154 = getelementptr %"compiler/types:Table", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  store ptr %t155, ptr %l78, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t156)
  store ptr %t158, ptr %l80
  br label %bb22
bb22:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t159)
  store ptr %t161, ptr %l82
  br label %bb23
bb23:
  %t162 = load i32, ptr %l9, !tbaa !23
  %t163 = load ptr, ptr %l82, !tbaa !29
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t163, i32 %t162)
  store i32 %t165, ptr %l84
  br label %bb24
bb24:
  %t166 = load ptr, ptr %l80, !tbaa !29
  %t167 = load i32, ptr %l84, !tbaa !23
  %t168 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t166, i32 %t167)
  store i32 %t168, ptr %l85
  br label %bb25
bb25:
  %t169 = load ptr, ptr %l78, !tbaa !29
  %t170 = call ptr @__olang_scope_of(ptr %t169, ptr null)
  %t171 = ptrtoint ptr %t170 to i64
  %t173 = inttoptr i64 %t171 to ptr
  %t174 = load ptr, ptr %l78, !tbaa !29
  %t175 = load i32, ptr %l85, !tbaa !23
  %t176 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t173, ptr %s2, ptr %t174, i32 %t175)
  store { i64, ptr } %t176, ptr %l87
  br label %bb26
bb26:
  %t177 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t177, ptr %l13, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t180 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t178, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t180, ptr %l89
  br label %bb27
bb27:
  %t181 = load i1, ptr %l89, !tbaa !21
  br i1 %t181, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t182 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t182, 1
  %t186 = extractvalue { i64, ptr } %t182, 0
  %t187 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t191 = extractvalue { i64, ptr } %t183, 1
  %t192 = extractvalue { i64, ptr } %t183, 0
  %t193 = add i64 %t189, %t192
  %t194 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t196)
  call void @olang_textcopy(ptr %t197, ptr %t185, i64 %t186)
  %t198 = getelementptr i8, ptr %t197, i64 %t186
  call void @olang_textcopy(ptr %t198, ptr %t187, i64 %t188)
  %t199 = getelementptr i8, ptr %t198, i64 %t188
  call void @olang_textcopy(ptr %t199, ptr %t191, i64 %t192)
  %t200 = getelementptr i8, ptr %t199, i64 %t192
  call void @olang_textcopy(ptr %t200, ptr %t194, i64 %t195)
  %t201 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t197, 1
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t205 = extractvalue { i64, ptr } %t202, 1
  %t206 = mul i64 %t204, 1
  %t207 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l1, { i64, ptr } %t209)
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb31:
  %t212 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t212, 1
  %t217 = extractvalue { i64, ptr } %t212, 0
  %t218 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t222 = extractvalue { i64, ptr } %t213, 1
  %t223 = extractvalue { i64, ptr } %t213, 0
  %t224 = add i64 %t220, %t223
  %t225 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t227 = add i64 %t224, %t226
  %t229 = extractvalue { i64, ptr } %t214, 1
  %t230 = extractvalue { i64, ptr } %t214, 0
  %t231 = add i64 %t227, %t230
  %t232 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t233 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t234 = add i64 %t231, %t233
  %t235 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t234)
  call void @olang_textcopy(ptr %t235, ptr %t216, i64 %t217)
  %t236 = getelementptr i8, ptr %t235, i64 %t217
  call void @olang_textcopy(ptr %t236, ptr %t218, i64 %t219)
  %t237 = getelementptr i8, ptr %t236, i64 %t219
  call void @olang_textcopy(ptr %t237, ptr %t222, i64 %t223)
  %t238 = getelementptr i8, ptr %t237, i64 %t223
  call void @olang_textcopy(ptr %t238, ptr %t225, i64 %t226)
  %t239 = getelementptr i8, ptr %t238, i64 %t226
  call void @olang_textcopy(ptr %t239, ptr %t229, i64 %t230)
  %t240 = getelementptr i8, ptr %t239, i64 %t230
  call void @olang_textcopy(ptr %t240, ptr %t232, i64 %t233)
  %t241 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t235, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = extractvalue { i64, ptr } %t242, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l1, { i64, ptr } %t249)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb33:
  %t252 = load i64, ptr %l7, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l7, !tbaa !24
  br label %bb9
bb34:
  %t257 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t257, ptr %l104
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t258 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t258, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eimplicit(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 3
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %rv
  br label %ret
bb5:
  %t19 = load { i64, [2 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i64, ptr %t25
  store i64 %t26, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  br label %bb33
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/free:Free", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/free:Free", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t35, i64 %t36)
  store i64 %t39, ptr %l23
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = load i64, ptr %l23, !tbaa !24
  %t42 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store ptr %t42, ptr %l24
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/free:Free", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/load:Loader", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t43, i32 0, i32 2
  %t57 = load i32, ptr %t56, !tbaa !23
  %t60 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t53, i32 %t57)
  store { i64, ptr } %t60, ptr %l31
  br label %bb11
bb11:
  %t61 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t61, ptr %l5, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t62, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t64, ptr %l33
  br label %bb12
bb12:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb16
bb14:
  %t66 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t66, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t68, ptr %l36
  br label %bb15
bb15:
  %t69 = load i1, ptr %l36, !tbaa !21
  store i1 %t69, ptr %l34, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l34, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb20
bb18:
  %t71 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t71, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t73, ptr %l39
  br label %bb19
bb19:
  %t74 = load i1, ptr %l39, !tbaa !21
  store i1 %t74, ptr %l37, !tbaa !21
  br label %bb20
bb20:
  %t75 = load i1, ptr %l37, !tbaa !21
  br i1 %t75, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb24
bb22:
  %t76 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t76, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t78, ptr %l42
  br label %bb23
bb23:
  %t79 = load i1, ptr %l42, !tbaa !21
  store i1 %t79, ptr %l40, !tbaa !21
  br label %bb24
bb24:
  %t80 = load i1, ptr %l40, !tbaa !21
  br i1 %t80, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb28
bb26:
  %t81 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t81, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t83, ptr %l45
  br label %bb27
bb27:
  %t84 = load i1, ptr %l45, !tbaa !21
  store i1 %t84, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t85 = load i1, ptr %l43, !tbaa !21
  br i1 %t85, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb32
bb30:
  %t86 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t88 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t86, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t88, ptr %l48
  br label %bb31
bb31:
  %t89 = load i1, ptr %l48, !tbaa !21
  store i1 %t89, ptr %l46, !tbaa !21
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  %t90 = load i1, ptr %l46, !tbaa !21
  store i1 %t90, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i1 false, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_708b3215abbdbba7_3cea2bd689d53e8b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l18 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i64
  %l32 = alloca %"compiler/free:reason"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 48
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
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
  store i1 true, ptr %l14, !tbaa !21
  br label %bb8
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:Free", ptr %t16, i32 0, i32 48
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l18
  br label %bb7
bb7:
  %t23 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t24 = load i64, ptr %l18, !tbaa !24
  %t26 = icmp ne i64 %t24, %t23
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 48
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t31, i64 %t32, i64 %t33)
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/free:Free", ptr %t37, i32 0, i32 50
  store ptr %t39, ptr %l26, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  store i64 %t40, ptr %l27, !tbaa !24
  %t41 = load i64, ptr %l2, !tbaa !24
  %t49 = call %"compiler/free:reason" @compiler_2ffree_3areason_2ector(ptr %v1, ptr %v0, i64 %t41, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
  store %"compiler/free:reason" %t49, ptr %l32
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = load %"compiler/free:reason", ptr %l32
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eSetAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v0, ptr %t50, i64 %t51, %"compiler/free:reason" %t52)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eownerCand(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i1
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i1
  %l18 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %s0, ptr %t12, i32 %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l11
  br label %bb6
bb6:
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l11)
  store i64 %t18, ptr %l13
  br label %bb7
bb7:
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = icmp sgt i64 %t19, 0
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l18
  br label %bb10
bb9:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb11
bb10:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l15, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ereported(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/free:store"
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/free:store"
  %l23 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l41 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i64
  %l56 = alloca i1
  %l57 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i1
  %l70 = alloca ptr
  %l73 = alloca i1
  %l78 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca i32
  %l91 = alloca i32
  %l96 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca i64
  %l103 = alloca i1
  %l104 = alloca i64
  %l109 = alloca i64
  %l111 = alloca i1
  %l117 = alloca ptr
  %l120 = alloca i1
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i1 false, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 46
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l14
  br label %bb2
bb2:
  %t9 = load i64, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb20
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/free:store" %t19, ptr %l19
  br label %bb6
bb6:
  %t20 = load %"compiler/free:store", ptr %l19
  store %"compiler/free:store" %t20, ptr %l5
  %t21 = getelementptr %"compiler/free:store", ptr %l5, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = icmp eq i64 %t22, %t23
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = getelementptr %"compiler/free:store", ptr %l5, i32 0, i32 6
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp sge i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb8:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb15
bb9:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb11
bb10:
  %t33 = getelementptr %"compiler/free:store", ptr %l5, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t38 = icmp eq i64 %t34, %t35
  store i1 %t38, ptr %l26, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l26, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb13:
  %t41 = getelementptr %"compiler/free:store", ptr %l5, i32 0, i32 4
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = load i64, ptr @G_2ecompiler_2ffree_2eSMove, !tbaa !24
  %t46 = icmp eq i64 %t42, %t43
  store i1 %t46, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t48 = load i1, ptr %l30, !tbaa !21
  store i1 %t48, ptr %l23, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l4, !tbaa !24
  br label %bb1
bb20:
  %t54 = load i1, ptr %l2, !tbaa !21
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisContents(ptr %v0, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l41
  br label %bb24
bb24:
  %t64 = load i1, ptr %l41, !tbaa !21
  br i1 %t64, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %t66, i64 %t67)
  store i1 %t70, ptr %l45
  br label %bb28
bb28:
  %t71 = load i1, ptr %l45, !tbaa !21
  br i1 %t71, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t77 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %t73, i64 %t74)
  store i1 %t77, ptr %l49
  br label %bb32
bb32:
  %t78 = load i1, ptr %l49, !tbaa !21
  br i1 %t78, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/free:Free", ptr %t79, i32 0, i32 69
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t81, i64 %t82)
  store i64 %t85, ptr %l53
  br label %bb35
bb34:
  br label %bb45
bb35:
  %t86 = load i64, ptr %l53, !tbaa !24
  store i64 %t86, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = icmp sge i64 %t87, 0
  br i1 %t89, label %bb36, label %bb37
bb36:
  %t91 = load i64, ptr %l6, !tbaa !24
  store i64 %t91, ptr %l57, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/free:Free", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 10
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l62
  br label %bb38
bb37:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb39
bb38:
  %t103 = load i64, ptr %l57, !tbaa !24
  %t104 = load i64, ptr %l62, !tbaa !24
  %t105 = icmp slt i64 %t103, %t104
  store i1 %t105, ptr %l56, !tbaa !21
  br label %bb39
bb39:
  %t107 = load i1, ptr %l56, !tbaa !21
  br i1 %t107, label %bb40, label %bb41
bb40:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/free:Free", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/load:Loader", ptr %t114, i32 0, i32 10
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t116, i64 %t117)
  store ptr %t120, ptr %l70
  br label %bb42
bb41:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb44
bb42:
  %t121 = load ptr, ptr %l70, !tbaa !29
  %t123 = getelementptr %"compiler/load:Module", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  %t126 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s8, { i64, ptr } %t124, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t126, ptr %l73
  br label %bb43
bb43:
  %t127 = load i1, ptr %l73, !tbaa !21
  %t128 = xor i1 %t127, true
  store i1 %t128, ptr %l64, !tbaa !21
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t130 = load i1, ptr %l64, !tbaa !21
  store i1 %t130, ptr %rv
  br label %ret
bb45:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/free:Free", ptr %t131, i32 0, i32 10
  %t134 = load i64, ptr %l1, !tbaa !24
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l78
  br label %bb46
bb46:
  %t138 = load i64, ptr %l78, !tbaa !24
  %t139 = icmp slt i64 %t138, 0
  br i1 %t139, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t142)
  store ptr %t144, ptr %l82
  br label %bb50
bb50:
  %t145 = load ptr, ptr %l82, !tbaa !29
  store ptr %t145, ptr %l7, !tbaa !29
  %t146 = load ptr, ptr %l7, !tbaa !29
  store ptr %t146, ptr %l83, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/free:Free", ptr %t147, i32 0, i32 9
  %t150 = load i64, ptr %l1, !tbaa !24
  %t153 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t149, i64 %t150)
  store i32 %t153, ptr %l87
  br label %bb51
bb51:
  %t154 = load ptr, ptr %l83, !tbaa !29
  %t155 = load i32, ptr %l87, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t156, ptr %l88
  br label %bb52
bb52:
  %t157 = load i32, ptr %l88, !tbaa !23
  store i32 %t157, ptr %l8, !tbaa !23
  %t158 = load ptr, ptr %l7, !tbaa !29
  %t159 = load i32, ptr %l8, !tbaa !23
  %t162 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l91
  br label %bb53
bb53:
  %t163 = load i32, ptr %l91, !range !{i32 0, i32 33}
  %t165 = trunc i64 18 to i32
  %t166 = icmp eq i32 %t163, %t165
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t171 = load ptr, ptr %l7, !tbaa !29
  store ptr %t171, ptr %l96, !tbaa !29
  %t172 = load ptr, ptr %l7, !tbaa !29
  %t173 = load i32, ptr %l8, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l99
  br label %bb57
bb57:
  %t177 = load ptr, ptr %l96, !tbaa !29
  %t178 = load i32, ptr %l99, !tbaa !23
  %t179 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t177, i32 %t178)
  store i64 %t179, ptr %l100
  br label %bb58
bb58:
  %t180 = load i64, ptr %l100, !tbaa !24
  store i64 %t180, ptr %l9, !tbaa !24
  %t181 = load i64, ptr %l9, !tbaa !24
  %t183 = icmp sge i64 %t181, 0
  br i1 %t183, label %bb59, label %bb60
bb59:
  %t185 = load i64, ptr %l9, !tbaa !24
  store i64 %t185, ptr %l104, !tbaa !24
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/free:Free", ptr %t186, i32 0, i32 0
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t191 = getelementptr %"compiler/generic:Program", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t194 = getelementptr %"compiler/load:Loader", ptr %t192, i32 0, i32 10
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t194)
  store i64 %t196, ptr %l109
  br label %bb61
bb60:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb62
bb61:
  %t197 = load i64, ptr %l104, !tbaa !24
  %t198 = load i64, ptr %l109, !tbaa !24
  %t199 = icmp slt i64 %t197, %t198
  store i1 %t199, ptr %l103, !tbaa !21
  br label %bb62
bb62:
  %t201 = load i1, ptr %l103, !tbaa !21
  br i1 %t201, label %bb63, label %bb64
bb63:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/free:Free", ptr %t202, i32 0, i32 0
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 0
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t210 = getelementptr %"compiler/load:Loader", ptr %t208, i32 0, i32 10
  %t211 = load i64, ptr %l9, !tbaa !24
  %t214 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  store ptr %t214, ptr %l117
  br label %bb65
bb64:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb67
bb65:
  %t215 = load ptr, ptr %l117, !tbaa !29
  %t217 = getelementptr %"compiler/load:Module", ptr %t215, i32 0, i32 2
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t218, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t220, ptr %l120
  br label %bb66
bb66:
  %t221 = load i1, ptr %l120, !tbaa !21
  %t222 = xor i1 %t221, true
  store i1 %t222, ptr %l111, !tbaa !21
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t224 = load i1, ptr %l111, !tbaa !21
  store i1 %t224, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i1
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l48 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca i1
  %l57 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca i1
  %l64 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l83 = alloca i1
  %l91 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l107 = alloca i1
  %l119 = alloca i1
  %l122 = alloca i64
  %l126 = alloca i64
  %l127 = alloca i32
  %l130 = alloca i1
  %l140 = alloca ptr
  %l143 = alloca i32
  %l144 = alloca i32
  %l149 = alloca i1
  %l150 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l165 = alloca i1
  %l168 = alloca i1
  %l174 = alloca ptr
  %l177 = alloca i32
  %l178 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l189 = alloca i1
  %l192 = alloca i1
  %l200 = alloca ptr
  %l201 = alloca i32
  %l203 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l25
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l25, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l28
  br label %bb2
bb2:
  %t10 = load i32, ptr %l28, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l31
  br label %bb3
bb3:
  %t16 = load i32, ptr %l31, !range !{i32 0, i32 33}
  store i32 %t16, ptr %l4
  %t17 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t19 = trunc i64 21 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb6
bb5:
  %t22 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t24 = trunc i64 25 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l34, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l34, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb9
bb8:
  %t28 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t30 = trunc i64 29 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l37, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l37, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb12
bb11:
  %t34 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t36 = trunc i64 0 to i32
  %t37 = icmp eq i32 %t34, %t36
  store i1 %t37, ptr %l40, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l40, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t41 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t43 = trunc i64 20 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb16, label %bb17
bb16:
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l48
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t51 = load i1, ptr %l48, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l50, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l53
  br label %bb22
bb22:
  %t59 = load ptr, ptr %l50, !tbaa !29
  %t60 = load i32, ptr %l53, !tbaa !23
  %t61 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t59, i32 %t60)
  store i1 %t61, ptr %l54
  br label %bb23
bb23:
  %t62 = load i1, ptr %l54, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
bb24:
  %t63 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t65 = trunc i64 19 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb25, label %bb26
bb25:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l57, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i32, ptr %l3, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l60
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t74 = load ptr, ptr %l57, !tbaa !29
  %t75 = load i32, ptr %l60, !tbaa !23
  %t76 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t76, ptr %l61
  br label %bb28
bb28:
  %t77 = load i1, ptr %l61, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
bb29:
  %t78 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t80 = trunc i64 22 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb32
bb31:
  %t83 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t85 = trunc i64 23 to i32
  %t86 = icmp eq i32 %t83, %t85
  store i1 %t86, ptr %l64, !tbaa !21
  br label %bb32
bb32:
  %t88 = load i1, ptr %l64, !tbaa !21
  br i1 %t88, label %bb33, label %bb34
bb33:
  %t89 = load ptr, ptr %l2, !tbaa !29
  store ptr %t89, ptr %l67, !tbaa !29
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t91 = load i32, ptr %l3, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l70
  br label %bb35
bb34:
  br label %bb47
bb35:
  %t95 = load ptr, ptr %l67, !tbaa !29
  %t96 = load i32, ptr %l70, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t95, i32 %t96)
  store { i64, ptr } %t97, ptr %l71
  br label %bb36
bb36:
  %t98 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t98, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l7, !tbaa !24
  br label %bb37
bb37:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb38, label %bb39
bb38:
  br label %bb46
bb39:
  br label %bb40
bb40:
  %t111 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t111, ptr %l78, !tbaa !27
  %t112 = load i64, ptr %l6, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i32, ptr %t115, i64 %t112
  %t117 = load i32, ptr %t116, !tbaa !33
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t123 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t119, i32 %t117)
  store i1 %t123, ptr %l83
  br label %bb41
bb41:
  %t124 = load i1, ptr %l83, !tbaa !21
  %t125 = xor i1 %t124, true
  br i1 %t125, label %bb42, label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t128 = load i64, ptr %l6, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l6, !tbaa !24
  br label %bb37
bb46:
  store i1 true, ptr %rv
  br label %ret
bb47:
  %t133 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t135 = trunc i64 24 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb48, label %bb49
bb48:
  %t138 = load ptr, ptr %l2, !tbaa !29
  store ptr %t138, ptr %l91, !tbaa !29
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t140 = load i32, ptr %l3, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l94
  br label %bb50
bb49:
  br label %bb62
bb50:
  %t144 = load ptr, ptr %l91, !tbaa !29
  %t145 = load i32, ptr %l94, !tbaa !23
  %t146 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t144, i32 %t145)
  store { i64, ptr } %t146, ptr %l95
  br label %bb51
bb51:
  %t147 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t147, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t148 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  store i64 %t150, ptr %l11, !tbaa !24
  br label %bb52
bb52:
  %t152 = load i64, ptr %l10, !tbaa !24
  %t153 = load i64, ptr %l11, !tbaa !24
  %t156 = icmp slt i64 %t152, %t153
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb53, label %bb54
bb53:
  br label %bb61
bb54:
  br label %bb55
bb55:
  %t160 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t160, ptr %l102, !tbaa !27
  %t161 = load i64, ptr %l10, !tbaa !24
  %t163 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i32, ptr %t164, i64 %t161
  %t166 = load i32, ptr %t165, !tbaa !33
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t172 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t168, i32 %t166)
  store i1 %t172, ptr %l107
  br label %bb56
bb56:
  %t173 = load i1, ptr %l107, !tbaa !21
  %t174 = xor i1 %t173, true
  br i1 %t174, label %bb57, label %bb58
bb57:
  store i1 false, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t177 = load i64, ptr %l10, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l10, !tbaa !24
  br label %bb52
bb61:
  store i1 true, ptr %rv
  br label %ret
bb62:
  %t182 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t184 = trunc i64 18 to i32
  %t185 = icmp eq i32 %t182, %t184
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb63, label %bb64
bb63:
  store i1 true, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t191 = load i32, ptr %l3, !tbaa !23
  %t194 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t190, i32 %t191)
  store i1 %t194, ptr %l119
  br label %bb66
bb66:
  %t195 = load i1, ptr %l119, !tbaa !21
  %t196 = xor i1 %t195, true
  br i1 %t196, label %bb67, label %bb68
bb67:
  store i1 false, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/free:Free", ptr %t199, i32 0, i32 18
  %t202 = load i32, ptr %l3, !tbaa !23
  %t205 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t201, i32 %t202)
  %t206 = extractvalue { i32, i64 } %t205, 1
  %t207 = extractvalue { i32, i64 } %t205, 0
  store i32 %t207, ptr %l127
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb71, label %ok.209, !prof !99
ok.209:
  store i64 %t206, ptr %l126
  br label %bb70
bb70:
  %t210 = load i64, ptr %l126, !tbaa !24
  store i64 %t210, ptr %l122, !tbaa !24
  br label %bb73
bb71:
  br label %bb72
bb72:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb73
bb73:
  %t211 = load i64, ptr %l122, !tbaa !24
  store i64 %t211, ptr %l13, !tbaa !24
  %t212 = load i64, ptr %l13, !tbaa !24
  %t214 = icmp eq i64 %t212, 1
  br i1 %t214, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb76
bb75:
  %t216 = load i64, ptr %l13, !tbaa !24
  %t218 = icmp eq i64 %t216, 3
  store i1 %t218, ptr %l130, !tbaa !21
  br label %bb76
bb76:
  %t220 = load i1, ptr %l130, !tbaa !21
  br i1 %t220, label %bb77, label %bb78
bb77:
  store i1 true, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t222 = load i64, ptr %l13, !tbaa !24
  %t224 = icmp eq i64 %t222, 2
  br i1 %t224, label %bb80, label %bb81
bb80:
  store i1 false, ptr %rv
  br label %ret
bb81:
  br label %bb82
bb82:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/free:Free", ptr %t227, i32 0, i32 18
  %t230 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t229, i32 %t230, i64 1)
  br label %bb83
bb83:
  store i1 true, ptr %l14, !tbaa !21
  %t233 = load ptr, ptr %l2, !tbaa !29
  store ptr %t233, ptr %l140, !tbaa !29
  %t234 = load ptr, ptr %l2, !tbaa !29
  %t235 = load i32, ptr %l3, !tbaa !23
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t234, i32 %t235)
  store i32 %t238, ptr %l143
  br label %bb84
bb84:
  %t239 = load ptr, ptr %l140, !tbaa !29
  %t240 = load i32, ptr %l143, !tbaa !23
  %t241 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t241, ptr %l144
  br label %bb85
bb85:
  %t242 = load i32, ptr %l144, !range !{i32 0, i32 6}
  store i32 %t242, ptr %l15
  %t243 = load i32, ptr %l15, !range !{i32 0, i32 6}
  %t245 = trunc i64 0 to i32
  %t246 = icmp eq i32 %t243, %t245
  br i1 %t246, label %bb86, label %bb87
bb86:
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t249 = load i32, ptr %l3, !tbaa !23
  %t252 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t248, i32 %t249)
  store i1 %t252, ptr %l149
  br label %bb88
bb87:
  %t253 = load i32, ptr %l15, !range !{i32 0, i32 6}
  %t255 = trunc i64 1 to i32
  %t256 = icmp eq i32 %t253, %t255
  br i1 %t256, label %bb107, label %bb108
bb88:
  %t258 = load i1, ptr %l149, !tbaa !21
  br i1 %t258, label %bb89, label %bb90
bb89:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb91
bb90:
  br label %bb91
bb91:
  %t259 = load ptr, ptr %l2, !tbaa !29
  store ptr %t259, ptr %l150, !tbaa !29
  %t260 = load ptr, ptr %l2, !tbaa !29
  %t261 = load i32, ptr %l3, !tbaa !23
  %t264 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t260, i32 %t261)
  store i32 %t264, ptr %l153
  br label %bb92
bb92:
  %t265 = load ptr, ptr %l150, !tbaa !29
  %t266 = load i32, ptr %l153, !tbaa !23
  %t267 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t265, i32 %t266)
  store { i64, ptr } %t267, ptr %l154
  br label %bb93
bb93:
  %t268 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t268, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t269 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t269, 0
  store i64 %t271, ptr %l18, !tbaa !24
  br label %bb94
bb94:
  %t273 = load i64, ptr %l17, !tbaa !24
  %t274 = load i64, ptr %l18, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb95, label %bb96
bb95:
  br label %bb106
bb96:
  br label %bb97
bb97:
  %t281 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t281, ptr %l161, !tbaa !27
  %t282 = load i64, ptr %l17, !tbaa !24
  %t284 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !27
  %t286 = getelementptr i32, ptr %t285, i64 %t282
  %t287 = load i32, ptr %t286, !tbaa !33
  store i32 %t287, ptr %l19, !tbaa !23
  %t289 = load i1, ptr %l14, !tbaa !21
  br i1 %t289, label %bb98, label %bb99
bb98:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load i32, ptr %l19, !tbaa !23
  %t295 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t291, i32 %t292)
  store i1 %t295, ptr %l168
  br label %bb100
bb99:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb101
bb100:
  %t296 = load i1, ptr %l168, !tbaa !21
  %t297 = xor i1 %t296, true
  store i1 %t297, ptr %l165, !tbaa !21
  br label %bb101
bb101:
  %t299 = load i1, ptr %l165, !tbaa !21
  br i1 %t299, label %bb102, label %bb103
bb102:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb104
bb103:
  br label %bb104
bb104:
  br label %bb105
bb105:
  %t300 = load i64, ptr %l17, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l17, !tbaa !24
  br label %bb94
bb106:
  br label %bb128
bb107:
  %t304 = load ptr, ptr %l2, !tbaa !29
  store ptr %t304, ptr %l174, !tbaa !29
  %t305 = load ptr, ptr %l2, !tbaa !29
  %t306 = load i32, ptr %l3, !tbaa !23
  %t309 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t305, i32 %t306)
  store i32 %t309, ptr %l177
  br label %bb109
bb108:
  %t310 = load i32, ptr %l15, !range !{i32 0, i32 6}
  %t312 = trunc i64 4 to i32
  %t313 = icmp eq i32 %t310, %t312
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb124, label %bb125
bb109:
  %t317 = load ptr, ptr %l174, !tbaa !29
  %t318 = load i32, ptr %l177, !tbaa !23
  %t319 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t317, i32 %t318)
  store { i64, ptr } %t319, ptr %l178
  br label %bb110
bb110:
  %t320 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t320, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t321 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t321, 0
  store i64 %t323, ptr %l22, !tbaa !24
  br label %bb111
bb111:
  %t325 = load i64, ptr %l21, !tbaa !24
  %t326 = load i64, ptr %l22, !tbaa !24
  %t329 = icmp slt i64 %t325, %t326
  %t331 = xor i1 %t329, true
  br i1 %t331, label %bb112, label %bb113
bb112:
  br label %bb123
bb113:
  br label %bb114
bb114:
  %t333 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t333, ptr %l185, !tbaa !27
  %t334 = load i64, ptr %l21, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr i32, ptr %t337, i64 %t334
  %t339 = load i32, ptr %t338, !tbaa !33
  store i32 %t339, ptr %l23, !tbaa !23
  %t341 = load i1, ptr %l14, !tbaa !21
  br i1 %t341, label %bb115, label %bb116
bb115:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load i32, ptr %l23, !tbaa !23
  %t347 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esafe(ptr %v0, ptr %t343, i32 %t344)
  store i1 %t347, ptr %l192
  br label %bb117
bb116:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb118
bb117:
  %t348 = load i1, ptr %l192, !tbaa !21
  %t349 = xor i1 %t348, true
  store i1 %t349, ptr %l189, !tbaa !21
  br label %bb118
bb118:
  %t351 = load i1, ptr %l189, !tbaa !21
  br i1 %t351, label %bb119, label %bb120
bb119:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb121
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t352 = load i64, ptr %l21, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l21, !tbaa !24
  br label %bb111
bb123:
  br label %bb127
bb124:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb126
bb125:
  br label %bb126
bb126:
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/free:Free", ptr %t356, i32 0, i32 18
  store ptr %t358, ptr %l200, !tbaa !29
  %t359 = load i32, ptr %l3, !tbaa !23
  store i32 %t359, ptr %l201, !tbaa !23
  %t360 = load i1, ptr %l14, !tbaa !21
  br i1 %t360, label %bb129, label %bb130
bb129:
  store i64 3, ptr %l203, !tbaa !24
  br label %bb131
bb130:
  store i64 2, ptr %l203, !tbaa !24
  br label %bb131
bb131:
  %t362 = load ptr, ptr %l200, !tbaa !29
  %t363 = load i32, ptr %l201, !tbaa !23
  %t364 = load i64, ptr %l203, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t362, i32 %t363, i64 %t364)
  br label %bb132
bb132:
  %t365 = load i1, ptr %l14, !tbaa !21
  store i1 %t365, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2escopeName(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/free:letGo"
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/free:letGo"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l37 = alloca i64
  %l39 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca i64
  %l60 = alloca i1
  %l63 = alloca i1
  %l67 = alloca i64
  %l69 = alloca i64
  %l74 = alloca %"compiler/free:letGo"
  %l78 = alloca i1
  %l84 = alloca { i64, ptr }
  %l86 = alloca i1
  %l88 = alloca { i64, ptr }
  %l90 = alloca i64
  %l92 = alloca i64
  %l93 = alloca { i64, ptr }
  %l100 = alloca i1
  %l103 = alloca i1
  %l104 = alloca i1
  %l107 = alloca i1
  %l108 = alloca i1
  %l115 = alloca i64
  %l116 = alloca i64
  %l124 = alloca ptr
  %l126 = alloca ptr
  %l129 = alloca i64
  %l133 = alloca i64
  %l136 = alloca i64
  %l157 = alloca ptr
  %l161 = alloca %"compiler/typed:Local"
  %l163 = alloca { i64, ptr }
  %l165 = alloca i1
  %l169 = alloca i64
  %l171 = alloca i64
  %l176 = alloca i32
  %l184 = alloca ptr
  %l188 = alloca %"compiler/typed:Local"
  %l190 = alloca i32
  %l193 = alloca i1
  %l194 = alloca ptr
  %l197 = alloca i32
  %l198 = alloca i32
  %l201 = alloca i32
  %l207 = alloca ptr
  %l208 = alloca ptr
  %l211 = alloca i32
  %l212 = alloca i32
  %l213 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l221 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %l223 = alloca i64
  %l224 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/free:letGo" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/free:letGo", ptr %l1
  %t5 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %s0, ptr %t1, %"compiler/free:letGo" %t2)
  store { i64, ptr } %t5, ptr %l26
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l29
  br label %bb2
bb2:
  %t12 = load i1, ptr %l29, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t13, ptr %l31, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  store i64 %t15, ptr %l32, !tbaa !24
  %t16 = load i64, ptr %l32, !tbaa !24
  %t17 = mul i64 %t16, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l33, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l32, !tbaa !24
  %t26 = mul i64 %t25, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %t24, i64 %t26, i1 false)
  %t27 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t27, ptr %l31, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t28 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t28, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 10
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l37
  br label %bb6
bb6:
  %t36 = load i64, ptr %l37, !tbaa !24
  %t37 = icmp slt i64 %t36, 0
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t41, ptr %l41
  br label %bb9
bb8:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb10
bb9:
  %t42 = load i1, ptr %l41, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l39, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l39, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l2, !tbaa !24
  %t50 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisNamed(ptr %v0, ptr %t46, i64 %t47)
  store i1 %t50, ptr %l46
  br label %bb13
bb12:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  %t51 = load i1, ptr %l46, !tbaa !21
  %t52 = xor i1 %t51, true
  store i1 %t52, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l43, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t55, ptr %l48, !tbaa !27
  br label %bb18
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/free:letGo", ptr %l1
  %t61 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceName(ptr %v0, ptr %s0, ptr %t57, %"compiler/free:letGo" %t58)
  store { i64, ptr } %t61, ptr %l52
  br label %bb17
bb17:
  %t62 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t62, ptr %l48, !tbaa !27
  br label %bb18
bb18:
  %t63 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l53, !tbaa !24
  %t65 = load i64, ptr %l53, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l54, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l53, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t76, ptr %l4, !tbaa !27
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/free:Free", ptr %t77, i32 0, i32 10
  %t80 = load i64, ptr %l2, !tbaa !24
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t79, i64 %t80)
  store i64 %t83, ptr %l58
  br label %bb19
bb19:
  %t84 = load i64, ptr %l58, !tbaa !24
  %t85 = icmp slt i64 %t84, 0
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l2, !tbaa !24
  %t91 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisNamed(ptr %v0, ptr %t87, i64 %t88)
  store i1 %t91, ptr %l63
  br label %bb22
bb21:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb23
bb22:
  %t92 = load i1, ptr %l63, !tbaa !21
  %t93 = xor i1 %t92, true
  store i1 %t93, ptr %l60, !tbaa !21
  br label %bb23
bb23:
  %t95 = load i1, ptr %l60, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/free:Free", ptr %t96, i32 0, i32 47
  store ptr %t98, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb26
bb25:
  br label %bb48
bb26:
  %t100 = load i64, ptr %l6, !tbaa !24
  store i64 %t100, ptr %l67, !tbaa !24
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t101)
  store i64 %t103, ptr %l69
  br label %bb27
bb27:
  %t104 = load i64, ptr %l67, !tbaa !24
  %t105 = load i64, ptr %l69, !tbaa !24
  %t106 = icmp slt i64 %t104, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb28, label %bb29
bb28:
  br label %bb47
bb29:
  br label %bb30
bb30:
  %t110 = load ptr, ptr %l5, !tbaa !29
  %t111 = load i64, ptr %l6, !tbaa !24
  %t114 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t110, i64 %t111)
  store %"compiler/free:letGo" %t114, ptr %l74
  br label %bb31
bb31:
  %t115 = load %"compiler/free:letGo", ptr %l74
  store %"compiler/free:letGo" %t115, ptr %l7
  %t116 = getelementptr %"compiler/free:letGo", ptr %l7, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = load i64, ptr %l2, !tbaa !24
  %t121 = icmp eq i64 %t117, %t118
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t123 = getelementptr %"compiler/free:letGo", ptr %l7, i32 0, i32 1
  %t124 = load i64, ptr %t123, !tbaa !24
  %t125 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 1
  %t126 = load i64, ptr %t125, !tbaa !24
  %t129 = icmp eq i64 %t124, %t126
  store i1 %t129, ptr %l78, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb34
bb34:
  %t131 = load i1, ptr %l78, !tbaa !21
  br i1 %t131, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s5
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/free:letGo", ptr %l7
  %t136 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %s5, ptr %t132, %"compiler/free:letGo" %t133)
  store { i64, ptr } %t136, ptr %l84
  br label %bb37
bb36:
  br label %bb45
bb37:
  %t137 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t137, ptr %l8, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s5, { i64, ptr } %t138, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t140, ptr %l86
  br label %bb38
bb38:
  %t141 = load i1, ptr %l86, !tbaa !21
  %t142 = xor i1 %t141, true
  br i1 %t142, label %bb39, label %bb40
bb39:
  %t144 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t144, ptr %l88, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l90, !tbaa !24
  %t150 = load i64, ptr %l90, !tbaa !24
  %t151 = icmp eq i64 %t146, %t150
  br i1 %t151, label %bb41, label %bb42
bb40:
  br label %bb44
bb41:
  %t153 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l90, !tbaa !24
  %t158 = mul i64 %t157, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %t156, i64 %t158, i1 false)
  br label %bb43
bb42:
  %t159 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  store i64 %t160, ptr %l92, !tbaa !24
  %t161 = load i64, ptr %l92, !tbaa !24
  %t162 = mul i64 %t161, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t162)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  store { i64, ptr } %t165, ptr %l93, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = load i64, ptr %l92, !tbaa !24
  %t171 = mul i64 %t170, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t167, ptr %t169, i64 %t171, i1 false)
  %t172 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t172, ptr %l4, !tbaa !27
  br label %bb43
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s5)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t173 = load i64, ptr %l6, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l6, !tbaa !24
  br label %bb26
bb47:
  br label %bb48
bb48:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb49
bb49:
  %t177 = load i64, ptr %l9, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t183 = icmp slt i64 %t177, %t180
  br i1 %t183, label %bb50, label %bb51
bb50:
  %t185 = load i64, ptr %l9, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i8, ptr %t188, i64 %t185
  %t190 = load i8, ptr %t189, !tbaa !32
  %t192 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t190)
  store i1 %t192, ptr %l103
  br label %bb52
bb51:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb60
bb52:
  %t193 = load i1, ptr %l103, !tbaa !21
  br i1 %t193, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb56
bb54:
  %t194 = load i64, ptr %l9, !tbaa !24
  %t196 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr i8, ptr %t197, i64 %t194
  %t199 = load i8, ptr %t198, !tbaa !32
  %t201 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t199)
  store i1 %t201, ptr %l107
  br label %bb55
bb55:
  %t202 = load i1, ptr %l107, !tbaa !21
  store i1 %t202, ptr %l104, !tbaa !21
  br label %bb56
bb56:
  %t203 = load i1, ptr %l104, !tbaa !21
  br i1 %t203, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb59
bb58:
  %t204 = load i64, ptr %l9, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i8, ptr %t207, i64 %t204
  %t209 = load i8, ptr %t208, !tbaa !32
  %t211 = icmp eq i8 %t209, 95
  store i1 %t211, ptr %l108, !tbaa !21
  br label %bb59
bb59:
  %t213 = load i1, ptr %l108, !tbaa !21
  store i1 %t213, ptr %l100, !tbaa !21
  br label %bb60
bb60:
  %t214 = load i1, ptr %l100, !tbaa !21
  %t215 = xor i1 %t214, true
  br i1 %t215, label %bb61, label %bb62
bb61:
  br label %bb65
bb62:
  br label %bb63
bb63:
  %t217 = load i64, ptr %l9, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l9, !tbaa !24
  br label %bb64
bb64:
  br label %bb49
bb65:
  %t221 = load i64, ptr %l9, !tbaa !24
  store i64 %t221, ptr %l115, !tbaa !24
  %t222 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  store i64 %t223, ptr %l116, !tbaa !24
  %t224 = icmp sge i64 0, 0
  br i1 %t224, label %bb66, label %bb67
bb66:
  %t226 = load i64, ptr %l115, !tbaa !24
  %t227 = icmp sle i64 0, %t226
  br i1 %t227, label %bb68, label %bb69
bb67:
  call void @__olang_check_failed(ptr @olang_loc_f6dacd44c7154ec0_6b7e2d10b8afc3c)
  unreachable
bb68:
  %t229 = load i64, ptr %l115, !tbaa !24
  %t230 = load i64, ptr %l116, !tbaa !24
  %t231 = icmp sle i64 %t229, %t230
  br i1 %t231, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_f6dacd44c7154ec0_6b7e2d10b8afc3c)
  unreachable
bb70:
  %t233 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = load i64, ptr %l115, !tbaa !24
  %t236 = getelementptr i8, ptr %t234, i64 0
  %t237 = sub i64 %t235, 0
  %t238 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  store { i64, ptr } %t239, ptr %l10, !tbaa !27
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/free:Free", ptr %t241, i32 0, i32 1
  %t244 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 1
  %t245 = load i64, ptr %t244, !tbaa !24
  %t248 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t243, i64 %t245)
  store ptr %t248, ptr %l124
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_f6dacd44c7154ec0_6b7e2d10b8afc3c)
  unreachable
bb72:
  %t249 = load ptr, ptr %l124, !tbaa !29
  store ptr %t249, ptr %l11, !tbaa !29
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t250)
  store ptr %t252, ptr %l126
  br label %bb73
bb73:
  %t253 = load ptr, ptr %l126, !tbaa !29
  store ptr %t253, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  %t254 = load ptr, ptr %l11, !tbaa !29
  %t256 = getelementptr %"compiler/typed:Body", ptr %t254, i32 0, i32 7
  %t258 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t256)
  store i64 %t258, ptr %l129
  br label %bb74
bb74:
  %t259 = load i64, ptr %l129, !tbaa !24
  store i64 %t259, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t260 = load i64, ptr %l14, !tbaa !24
  %t261 = load i64, ptr %l13, !tbaa !24
  %t264 = icmp sgt i64 %t260, %t261
  br i1 %t264, label %bb75, label %bb76
bb75:
  %t266 = load i64, ptr %l15, !tbaa !24
  %t268 = icmp sgt i64 %t266, 0
  br i1 %t268, label %bb77, label %bb78
bb76:
  store i64 0, ptr %l133, !tbaa !24
  br label %bb80
bb77:
  %t270 = load i64, ptr %l14, !tbaa !24
  %t271 = load i64, ptr %l13, !tbaa !24
  %t274 = sub i64 %t270, %t271
  %t275 = load i64, ptr %l15, !tbaa !24
  %t278 = add i64 %t274, %t275
  %t280 = sub i64 %t278, 1
  %t281 = load i64, ptr %l15, !tbaa !24
  %t284 = sdiv i64 %t280, %t281
  store i64 %t284, ptr %l136, !tbaa !24
  br label %bb79
bb78:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb79
bb79:
  %t286 = load i64, ptr %l136, !tbaa !24
  store i64 %t286, ptr %l133, !tbaa !24
  br label %bb80
bb80:
  %t287 = load i64, ptr %l133, !tbaa !24
  store i64 %t287, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb81
bb81:
  store %olang.scope zeroinitializer, ptr %s10
  %t288 = load i64, ptr %l17, !tbaa !24
  %t289 = load i64, ptr %l16, !tbaa !24
  %t292 = icmp slt i64 %t288, %t289
  %t294 = xor i1 %t292, true
  br i1 %t294, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s10)
  br label %bb122
bb83:
  br label %bb84
bb84:
  %t296 = load i64, ptr %l13, !tbaa !24
  %t297 = load i64, ptr %l17, !tbaa !24
  %t298 = load i64, ptr %l15, !tbaa !24
  %t301 = mul i64 %t297, %t298
  %t304 = add i64 %t296, %t301
  store i64 %t304, ptr %l18, !tbaa !24
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/free:Free", ptr %t306, i32 0, i32 0
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = getelementptr %"compiler/generic:Program", ptr %t309, i32 0, i32 0
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = getelementptr %"compiler/load:Loader", ptr %t312, i32 0, i32 3
  %t315 = load ptr, ptr %t314, !tbaa !29
  store ptr %t315, ptr %l157, !tbaa !29
  %t316 = load ptr, ptr %l11, !tbaa !29
  %t318 = getelementptr %"compiler/typed:Body", ptr %t316, i32 0, i32 7
  %t319 = load i64, ptr %l18, !tbaa !24
  %t322 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t318, i64 %t319)
  store %"compiler/typed:Local" %t322, ptr %l161
  br label %bb85
bb85:
  %t323 = getelementptr %"compiler/typed:Local", ptr %l161, i32 0, i32 0
  %t324 = load i32, ptr %t323, !tbaa !23
  %t325 = load ptr, ptr %l157, !tbaa !29
  %t327 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t325, i32 %t324)
  store { i64, ptr } %t327, ptr %l163
  br label %bb86
bb86:
  %t328 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t329 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t331 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t329, { i64, ptr } %t328)
  store i1 %t331, ptr %l165
  br label %bb87
bb87:
  %t332 = load i1, ptr %l165, !tbaa !21
  %t333 = xor i1 %t332, true
  br i1 %t333, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s10)
  br label %bb121
bb89:
  br label %bb90
bb90:
  store i1 false, ptr %l19, !tbaa !21
  %t335 = load ptr, ptr %l11, !tbaa !29
  %t337 = getelementptr %"compiler/typed:Body", ptr %t335, i32 0, i32 5
  store ptr %t337, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb91
bb91:
  %t339 = load i64, ptr %l21, !tbaa !24
  store i64 %t339, ptr %l169, !tbaa !24
  %t340 = load ptr, ptr %l20, !tbaa !29
  %t342 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t340)
  store i64 %t342, ptr %l171
  br label %bb92
bb92:
  %t343 = load i64, ptr %l169, !tbaa !24
  %t344 = load i64, ptr %l171, !tbaa !24
  %t345 = icmp slt i64 %t343, %t344
  %t347 = xor i1 %t345, true
  br i1 %t347, label %bb93, label %bb94
bb93:
  br label %bb101
bb94:
  br label %bb95
bb95:
  %t349 = load ptr, ptr %l20, !tbaa !29
  %t350 = load i64, ptr %l21, !tbaa !24
  %t353 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t349, i64 %t350)
  store i32 %t353, ptr %l176
  br label %bb96
bb96:
  %t354 = load i32, ptr %l176, !tbaa !23
  %t357 = sext i32 %t354 to i64
  %t358 = load i64, ptr %l18, !tbaa !24
  %t361 = icmp eq i64 %t357, %t358
  br i1 %t361, label %bb97, label %bb98
bb97:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb99
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t363 = load i64, ptr %l21, !tbaa !24
  %t365 = add i64 %t363, 1
  store i64 %t365, ptr %l21, !tbaa !24
  br label %bb91
bb101:
  %t367 = load i1, ptr %l19, !tbaa !21
  br i1 %t367, label %bb102, label %bb103
bb102:
  %t369 = load ptr, ptr %l12, !tbaa !29
  store ptr %t369, ptr %l184, !tbaa !29
  %t370 = load ptr, ptr %l11, !tbaa !29
  %t372 = getelementptr %"compiler/typed:Body", ptr %t370, i32 0, i32 7
  %t373 = load i64, ptr %l18, !tbaa !24
  %t376 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t372, i64 %t373)
  store %"compiler/typed:Local" %t376, ptr %l188
  br label %bb104
bb103:
  br label %bb119
bb104:
  %t377 = getelementptr %"compiler/typed:Local", ptr %l188, i32 0, i32 2
  %t378 = load i32, ptr %t377, !tbaa !23
  %t379 = load ptr, ptr %l184, !tbaa !29
  %t381 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t379, i32 %t378)
  store i32 %t381, ptr %l190
  br label %bb105
bb105:
  %t382 = load i32, ptr %l190, !tbaa !23
  store i32 %t382, ptr %l23, !tbaa !23
  %t383 = load ptr, ptr %l12, !tbaa !29
  %t384 = load i32, ptr %l23, !tbaa !23
  %t387 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t383, i32 %t384)
  store i1 %t387, ptr %l193
  br label %bb106
bb106:
  %t388 = load i1, ptr %l193, !tbaa !21
  br i1 %t388, label %bb107, label %bb108
bb107:
  %t389 = load ptr, ptr %l12, !tbaa !29
  store ptr %t389, ptr %l194, !tbaa !29
  %t390 = load ptr, ptr %l12, !tbaa !29
  %t391 = load i32, ptr %l23, !tbaa !23
  %t394 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t390, i32 %t391)
  store i32 %t394, ptr %l197
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t395 = load ptr, ptr %l194, !tbaa !29
  %t396 = load i32, ptr %l197, !tbaa !23
  %t397 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t395, i32 %t396)
  store i32 %t397, ptr %l198
  br label %bb110
bb110:
  %t398 = load i32, ptr %l198, !tbaa !23
  store i32 %t398, ptr %l23, !tbaa !23
  br label %bb111
bb111:
  %t399 = load ptr, ptr %l12, !tbaa !29
  %t400 = load i32, ptr %l23, !tbaa !23
  %t403 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t399, i32 %t400)
  store i32 %t403, ptr %l201
  br label %bb112
bb112:
  %t404 = load i32, ptr %l201, !range !{i32 0, i32 33}
  %t406 = trunc i64 18 to i32
  %t407 = icmp eq i32 %t404, %t406
  br i1 %t407, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s18
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/free:Free", ptr %t409, i32 0, i32 0
  %t412 = load ptr, ptr %t411, !tbaa !29
  %t414 = getelementptr %"compiler/generic:Program", ptr %t412, i32 0, i32 0
  %t415 = load ptr, ptr %t414, !tbaa !29
  %t417 = getelementptr %"compiler/load:Loader", ptr %t415, i32 0, i32 3
  %t418 = load ptr, ptr %t417, !tbaa !29
  store ptr %t418, ptr %l207, !tbaa !29
  %t419 = load ptr, ptr %l12, !tbaa !29
  store ptr %t419, ptr %l208, !tbaa !29
  %t420 = load ptr, ptr %l12, !tbaa !29
  %t421 = load i32, ptr %l23, !tbaa !23
  %t424 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t420, i32 %t421)
  store i32 %t424, ptr %l211
  br label %bb115
bb114:
  br label %bb118
bb115:
  %t425 = load ptr, ptr %l208, !tbaa !29
  %t426 = load i32, ptr %l211, !tbaa !23
  %t427 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t425, i32 %t426)
  store i32 %t427, ptr %l212
  br label %bb116
bb116:
  %t428 = load ptr, ptr %l207, !tbaa !29
  %t429 = load i32, ptr %l212, !tbaa !23
  %t430 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s18, ptr %t428, i32 %t429)
  store { i64, ptr } %t430, ptr %l213
  br label %bb117
bb117:
  %t431 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t432 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t433 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 1
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t436 = add i64 %t432, %t435
  %t437 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t438 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t439 = add i64 %t436, %t438
  %t440 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t439)
  call void @olang_textcopy(ptr %t440, ptr %t431, i64 %t432)
  %t441 = getelementptr i8, ptr %t440, i64 %t432
  call void @olang_textcopy(ptr %t441, ptr %t434, i64 %t435)
  %t442 = getelementptr i8, ptr %t441, i64 %t435
  call void @olang_textcopy(ptr %t442, ptr %t437, i64 %t438)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t440, 1
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t444, ptr %rv
  br label %ret
bb118:
  br label %bb119
bb119:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/free:letGo", ptr %l1, i32 0, i32 1
  %t448 = load i64, ptr %t447, !tbaa !24
  %t451 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s10, ptr %t446, i64 %t448)
  store { i64, ptr } %t451, ptr %l217
  br label %bb120
bb120:
  %t452 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 1
  %t454 = extractvalue { i64, ptr } %t452, 0
  %t455 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t456 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t457 = add i64 %t454, %t456
  %t458 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t457)
  call void @olang_textcopy(ptr %t458, ptr %t453, i64 %t454)
  %t459 = getelementptr i8, ptr %t458, i64 %t454
  call void @olang_textcopy(ptr %t459, ptr %t455, i64 %t456)
  %t460 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t461 = insertvalue { i64, ptr } %t460, ptr %t458, 1
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t461, ptr %rv
  br label %ret
bb121:
  %t463 = load i64, ptr %l17, !tbaa !24
  %t465 = add i64 %t463, 1
  store i64 %t465, ptr %l17, !tbaa !24
  br label %bb81
bb122:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l221, !tbaa !27
  %t467 = load { i64, ptr }, ptr %l221, !tbaa !27
  store { i64, ptr } %t467, ptr %l222, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t469 = extractvalue { i64, ptr } %t468, 0
  store i64 %t469, ptr %l223, !tbaa !24
  %t470 = load i64, ptr %l223, !tbaa !24
  %t471 = mul i64 %t470, 1
  %t472 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t471)
  %t473 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t472, 1
  store { i64, ptr } %t474, ptr %l224, !tbaa !27
  %t475 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !27
  %t477 = getelementptr { i64, ptr }, ptr %l222, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !27
  %t479 = load i64, ptr %l223, !tbaa !24
  %t480 = mul i64 %t479, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t476, ptr %t478, i64 %t480, i1 false)
  %t481 = load { i64, ptr }, ptr %l224, !tbaa !27
  store { i64, ptr } %t481, ptr %l222, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t482 = load { i64, ptr }, ptr %l222, !tbaa !27
  store { i64, ptr } %t482, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
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
  %l14 = alloca ptr
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca i1
  %l37 = alloca { i64, [2 x i64] }
  %l39 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i1
  %l52 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i1
  %l64 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i1
  %l78 = alloca { i64, [2 x i64] }
  %l79 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca ptr
  %l84 = alloca i64
  %l85 = alloca i64
  %l86 = alloca { i64, [2 x i64] }
  %l88 = alloca ptr
  %l89 = alloca i1
  %l97 = alloca { i64, [2 x i64] }
  %l98 = alloca ptr
  %l99 = alloca i1
  %l108 = alloca { i64, [2 x i64] }
  %l109 = alloca ptr
  %l110 = alloca i64
  %l116 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t78 = alloca { i64, [2 x i64] }, align 8
  %t176 = alloca { i64, [2 x i64] }, align 8
  %t245 = alloca { i64, [2 x i64] }, align 8
  %t259 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l14, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l16, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 18}
  %t16 = icmp eq i64 %t14, 5
  store i1 %t16, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l17, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr { i64, [5 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t20, i32 0, i32 2
  %t22 = load ptr, ptr %t21
  store ptr %t22, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Plan", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Promote", ptr %t28, i32 0, i32 1
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t35 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i64 %t33
  %t38 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t38, ptr %l15
  br label %bb65
bb7:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t41 = load ptr, ptr %l28, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb8, label %bb9
bb8:
  %t44 = load ptr, ptr %l28, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 7
  store i1 %t47, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l29, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Make", ptr %t55, i32 0, i32 4
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = icmp sge i32 %t58, 0
  br i1 %t60, label %bb13, label %bb14
bb13:
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Plan", ptr %t62, i32 0, i32 0
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l39, !tbaa !27
  %t66 = load ptr, ptr %l5, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Make", ptr %t66, i32 0, i32 4
  %t69 = load i32, ptr %t68, !tbaa !23
  %t71 = sext i32 %t69 to i64
  %t73 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t74, i64 %t71
  %t76 = load { i64, [2 x i64] }, ptr %t75
  store { i64, [2 x i64] } %t76, ptr %l37
  br label %bb15
bb14:
  store { i64, [2 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [2 x i64] }, ptr %t78, i32 0, i32 0
  store i64 0, ptr %t79
  %t80 = load { i64, [2 x i64] }, ptr %t78
  store { i64, [2 x i64] } %t80, ptr %l37
  br label %bb15
bb15:
  %t82 = load { i64, [2 x i64] }, ptr %l37
  store { i64, [2 x i64] } %t82, ptr %l15
  br label %bb65
bb16:
  %t83 = load ptr, ptr %l2, !tbaa !29
  store ptr %t83, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t84 = load ptr, ptr %l45, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb17, label %bb18
bb17:
  %t87 = load ptr, ptr %l45, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 18}
  %t90 = icmp eq i64 %t88, 16
  store i1 %t90, ptr %l46, !tbaa !21
  br label %bb18
bb18:
  %t91 = load i1, ptr %l46, !tbaa !21
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t94 = getelementptr { i64, [5 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t94, i32 0, i32 2
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l6, !tbaa !29
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = getelementptr %"compiler/typed:Plan", ptr %t98, i32 0, i32 0
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l52, !tbaa !27
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Text", ptr %t102, i32 0, i32 1
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = sext i32 %t105 to i64
  %t109 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, [2 x i64] }, ptr %t110, i64 %t107
  %t112 = load { i64, [2 x i64] }, ptr %t111
  store { i64, [2 x i64] } %t112, ptr %l15
  br label %bb65
bb22:
  %t114 = load ptr, ptr %l2, !tbaa !29
  store ptr %t114, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t115 = load ptr, ptr %l57, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb23, label %bb24
bb23:
  %t118 = load ptr, ptr %l57, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 18}
  %t121 = icmp eq i64 %t119, 8
  store i1 %t121, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t122 = load i1, ptr %l58, !tbaa !21
  br i1 %t122, label %bb25, label %bb26
bb25:
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l7, !tbaa !29
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t129 = load ptr, ptr %l3, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Plan", ptr %t129, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l64, !tbaa !27
  %t133 = load ptr, ptr %l7, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Collect", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %t135, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t140 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t141, i64 %t138
  %t143 = load { i64, [2 x i64] }, ptr %t142
  store { i64, [2 x i64] } %t143, ptr %l15
  br label %bb65
bb28:
  %t145 = load ptr, ptr %l2, !tbaa !29
  store ptr %t145, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t146 = load ptr, ptr %l69, !tbaa !29
  %t147 = icmp ne ptr %t146, null
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t149 = load ptr, ptr %l69, !tbaa !29
  %t150 = load i64, ptr %t149, !range !{i64 0, i64 18}
  %t152 = icmp eq i64 %t150, 6
  store i1 %t152, ptr %l70, !tbaa !21
  br label %bb30
bb30:
  %t153 = load i1, ptr %l70, !tbaa !21
  br i1 %t153, label %bb31, label %bb32
bb31:
  %t154 = load ptr, ptr %l2, !tbaa !29
  %t156 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t156, i32 0, i32 2
  %t158 = load ptr, ptr %t157
  store ptr %t158, ptr %l8, !tbaa !29
  br label %bb33
bb32:
  br label %bb40
bb33:
  %t160 = load ptr, ptr %l8, !tbaa !29
  %t162 = getelementptr %"compiler/typed:Call", ptr %t160, i32 0, i32 2
  %t163 = load i32, ptr %t162, !tbaa !23
  %t165 = icmp sge i32 %t163, 0
  br i1 %t165, label %bb34, label %bb35
bb34:
  %t167 = load ptr, ptr %l3, !tbaa !29
  store ptr %t167, ptr %l79, !tbaa !29
  %t168 = load ptr, ptr %l8, !tbaa !29
  %t170 = getelementptr %"compiler/typed:Call", ptr %t168, i32 0, i32 2
  %t171 = load i32, ptr %t170, !tbaa !23
  store i32 %t171, ptr %l81, !tbaa !23
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l82, !tbaa !29
  %t173 = load ptr, ptr %l8, !tbaa !29
  %t175 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t173)
  store i64 %t175, ptr %l84
  br label %bb36
bb35:
  store { i64, [2 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [2 x i64] }, ptr %t176, i32 0, i32 0
  store i64 0, ptr %t177
  %t178 = load { i64, [2 x i64] }, ptr %t176
  store { i64, [2 x i64] } %t178, ptr %l78
  br label %bb39
bb36:
  %t180 = load ptr, ptr %l82, !tbaa !29
  %t181 = load i64, ptr %l84, !tbaa !24
  %t182 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %t180, i64 %t181)
  store i64 %t182, ptr %l85
  br label %bb37
bb37:
  %t183 = load ptr, ptr %l79, !tbaa !29
  %t184 = load i32, ptr %l81, !tbaa !23
  %t185 = load i64, ptr %l85, !tbaa !24
  %t186 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t183, i32 %t184, i64 %t185)
  store { i64, [2 x i64] } %t186, ptr %l86
  br label %bb38
bb38:
  %t187 = load { i64, [2 x i64] }, ptr %l86
  store { i64, [2 x i64] } %t187, ptr %l78
  br label %bb39
bb39:
  %t188 = load { i64, [2 x i64] }, ptr %l78
  store { i64, [2 x i64] } %t188, ptr %l15
  br label %bb65
bb40:
  %t189 = load ptr, ptr %l2, !tbaa !29
  store ptr %t189, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t190 = load ptr, ptr %l88, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb41, label %bb42
bb41:
  %t193 = load ptr, ptr %l88, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 18}
  %t196 = icmp eq i64 %t194, 17
  store i1 %t196, ptr %l89, !tbaa !21
  br label %bb42
bb42:
  %t197 = load i1, ptr %l89, !tbaa !21
  br i1 %t197, label %bb43, label %bb44
bb43:
  %t198 = load ptr, ptr %l2, !tbaa !29
  %t200 = getelementptr { i64, [5 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t200, i32 0, i32 2
  %t202 = load ptr, ptr %t201
  store ptr %t202, ptr %l9, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i64, ptr %l1, !tbaa !24
  %t206 = load ptr, ptr %l9, !tbaa !29
  %t210 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %t204, i64 %t205, ptr %t206)
  store { i64, [2 x i64] } %t210, ptr %l97
  br label %bb46
bb46:
  %t211 = load { i64, [2 x i64] }, ptr %l97
  store { i64, [2 x i64] } %t211, ptr %l15
  br label %bb65
bb47:
  %t212 = load ptr, ptr %l2, !tbaa !29
  store ptr %t212, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t213 = load ptr, ptr %l98, !tbaa !29
  %t214 = icmp ne ptr %t213, null
  br i1 %t214, label %bb48, label %bb49
bb48:
  %t216 = load ptr, ptr %l98, !tbaa !29
  %t217 = load i64, ptr %t216, !range !{i64 0, i64 18}
  %t219 = icmp eq i64 %t217, 12
  store i1 %t219, ptr %l99, !tbaa !21
  br label %bb49
bb49:
  %t220 = load i1, ptr %l99, !tbaa !21
  br i1 %t220, label %bb50, label %bb51
bb50:
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t223 = getelementptr { i64, [5 x i64] }, ptr %t221, i32 0, i32 1
  %t224 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t223, i32 0, i32 2
  %t225 = load ptr, ptr %t224
  store ptr %t225, ptr %l10, !tbaa !29
  br label %bb52
bb51:
  br label %bb60
bb52:
  %t227 = load ptr, ptr %l10, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Seq", ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !29
  %t232 = icmp eq ptr %t230, null
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb53, label %bb54
bb53:
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l109, !tbaa !29
  %t237 = load i64, ptr %l1, !tbaa !24
  store i64 %t237, ptr %l110, !tbaa !24
  %t238 = load ptr, ptr %l10, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Seq", ptr %t238, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !29
  %t243 = icmp eq ptr %t241, null
  br i1 %t243, label %bb55, label %bb56
bb54:
  store { i64, [2 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [2 x i64] }, ptr %t245, i32 0, i32 0
  store i64 0, ptr %t246
  %t247 = load { i64, [2 x i64] }, ptr %t245
  store { i64, [2 x i64] } %t247, ptr %l108
  br label %bb59
bb55:
  call void @__olang_check_failed(ptr @olang_loc_ebe5ee6b39eee92e_4ec5471030d8b4f2)
  unreachable
bb56:
  br label %bb57
bb57:
  %t249 = load ptr, ptr %l10, !tbaa !29
  %t251 = getelementptr %"compiler/typed:Seq", ptr %t249, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !29
  %t253 = load ptr, ptr %l109, !tbaa !29
  %t254 = load i64, ptr %l110, !tbaa !24
  %t256 = call { i64, [2 x i64] } @compiler_2ffree_2ecompiler_2ffree_3aFree_2esiteScope(ptr %v0, ptr %v1, ptr %t253, i64 %t254, ptr %t252)
  store { i64, [2 x i64] } %t256, ptr %l116
  br label %bb58
bb58:
  %t257 = load { i64, [2 x i64] }, ptr %l116
  store { i64, [2 x i64] } %t257, ptr %l108
  br label %bb59
bb59:
  %t258 = load { i64, [2 x i64] }, ptr %l108
  store { i64, [2 x i64] } %t258, ptr %l15
  br label %bb65
bb60:
  br i1 true, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  store { i64, [2 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [2 x i64] }, ptr %t259, i32 0, i32 0
  store i64 0, ptr %t260
  %t261 = load { i64, [2 x i64] }, ptr %t259
  store { i64, [2 x i64] } %t261, ptr %l15
  br label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_c32ca46bf6d65f0c_9a54b76873cd9ad0)
  unreachable
bb65:
  %t263 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t263, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esourceModule(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
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
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_b4c0d703fa684531_272a8f4f39064c15)
  unreachable
bb25:
  br label %bb26
bb26:
  %t77 = load i64, ptr %l2, !tbaa !24
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2ecallMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l12 = alloca ptr
  %l21 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %a1)
  store i64 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i64, ptr %l4, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/free:mustW", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 1
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l12
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l12, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 11
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l7, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:mustW", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/free:Free", ptr %t32, i32 0, i32 36
  %t35 = load i64, ptr %l2, !tbaa !24
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t34, i64 %t35)
  store i64 %t38, ptr %l21
  br label %bb9
bb9:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i1
  %l46 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca i1
  %l77 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l114 = alloca ptr
  %l124 = alloca ptr
  %l145 = alloca ptr
  %l156 = alloca ptr
  %l157 = alloca i1
  %l166 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l195 = alloca ptr
  %l196 = alloca i1
  %l209 = alloca { i64, ptr }
  %l216 = alloca ptr
  %l217 = alloca i1
  %l226 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t2 = load ptr, ptr %l32, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l32, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l33, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l33, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb20
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Seq", ptr %t16, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t33, ptr %l46, !tbaa !27
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 %t34
  %t39 = load ptr, ptr %t38, !tbaa !39
  %t41 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2estmt(ptr %v0, ptr %v1, ptr %t41, ptr %t39)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l4, !tbaa !24
  br label %bb6
bb12:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Seq", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l57, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Seq", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  br i1 %t64, label %bb15, label %bb16
bb14:
  br label %bb19
bb15:
  call void @__olang_check_failed(ptr @olang_loc_14962ab25e47b4fc_3749941476b1d040)
  unreachable
bb16:
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Seq", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = load ptr, ptr %l57, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t70, ptr %t69)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb134
bb20:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t73 = load ptr, ptr %l63, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb21, label %bb22
bb21:
  %t76 = load ptr, ptr %l63, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 13
  store i1 %t79, ptr %l64, !tbaa !21
  br label %bb22
bb22:
  %t80 = load i1, ptr %l64, !tbaa !21
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb76
bb25:
  %t87 = load ptr, ptr %l7, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Match", ptr %t87, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  store { i64, ptr } %t90, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l10, !tbaa !24
  br label %bb26
bb26:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb27, label %bb28
bb27:
  br label %bb32
bb28:
  br label %bb29
bb29:
  %t104 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t104, ptr %l77, !tbaa !27
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr ptr, ptr %t108, i64 %t105
  %t110 = load ptr, ptr %t109, !tbaa !39
  %t112 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2estmt(ptr %v0, ptr %v1, ptr %t112, ptr %t110)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t116 = load i64, ptr %l9, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l9, !tbaa !24
  br label %bb26
bb32:
  %t120 = load ptr, ptr %l7, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Match", ptr %t120, i32 0, i32 1
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  store i64 %t127, ptr %l14, !tbaa !24
  br label %bb33
bb33:
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb34, label %bb35
bb34:
  br label %bb59
bb35:
  br label %bb36
bb36:
  %t137 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t137, ptr %l92, !tbaa !27
  %t138 = load i64, ptr %l13, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr ptr, ptr %t141, i64 %t138
  %t143 = load ptr, ptr %t142, !tbaa !39
  store ptr %t143, ptr %l15, !tbaa !29
  %t145 = load ptr, ptr %l15, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Arm", ptr %t145, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  store i64 %t152, ptr %l18, !tbaa !24
  br label %bb37
bb37:
  %t154 = load i64, ptr %l17, !tbaa !24
  %t155 = load i64, ptr %l18, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb38, label %bb39
bb38:
  br label %bb43
bb39:
  br label %bb40
bb40:
  %t162 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t162, ptr %l103, !tbaa !27
  %t163 = load i64, ptr %l17, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr ptr, ptr %t166, i64 %t163
  %t168 = load ptr, ptr %t167, !tbaa !39
  %t170 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2ebinds(ptr %v0, ptr %v1, ptr %t170, ptr %t168)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t174 = load i64, ptr %l17, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l17, !tbaa !24
  br label %bb37
bb43:
  %t178 = load ptr, ptr %l15, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Arm", ptr %t178, i32 0, i32 3
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = icmp eq ptr %t181, null
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb44, label %bb45
bb44:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l114, !tbaa !29
  %t188 = load ptr, ptr %l15, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Arm", ptr %t188, i32 0, i32 3
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  br i1 %t193, label %bb46, label %bb47
bb45:
  br label %bb50
bb46:
  call void @__olang_check_failed(ptr @olang_loc_8d35557863f6e46b_2765f8f7d1e0ebdf)
  unreachable
bb47:
  br label %bb48
bb48:
  %t195 = load ptr, ptr %l15, !tbaa !29
  %t197 = getelementptr %"compiler/typed:Arm", ptr %t195, i32 0, i32 3
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load ptr, ptr %l114, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t199, ptr %t198)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t201 = load ptr, ptr %l15, !tbaa !29
  %t203 = getelementptr %"compiler/typed:Arm", ptr %t201, i32 0, i32 4
  %t204 = load ptr, ptr %t203, !tbaa !29
  %t206 = icmp eq ptr %t204, null
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb51, label %bb52
bb51:
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l124, !tbaa !29
  %t211 = load ptr, ptr %l15, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Arm", ptr %t211, i32 0, i32 4
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = icmp eq ptr %t214, null
  br i1 %t216, label %bb53, label %bb54
bb52:
  br label %bb57
bb53:
  call void @__olang_check_failed(ptr @olang_loc_502532e2e95f04ea_fe436d8dc2f78aae)
  unreachable
bb54:
  br label %bb55
bb55:
  %t218 = load ptr, ptr %l15, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Arm", ptr %t218, i32 0, i32 4
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t222 = load ptr, ptr %l124, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t222, ptr %t221)
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t224 = load i64, ptr %l13, !tbaa !24
  %t226 = add i64 %t224, 1
  store i64 %t226, ptr %l13, !tbaa !24
  br label %bb33
bb59:
  %t228 = load ptr, ptr %l7, !tbaa !29
  %t230 = getelementptr %"compiler/typed:Match", ptr %t228, i32 0, i32 2
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t233 = icmp eq ptr %t231, null
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb60, label %bb61
bb60:
  %t237 = load ptr, ptr %l7, !tbaa !29
  %t239 = getelementptr %"compiler/typed:Match", ptr %t237, i32 0, i32 2
  %t240 = load ptr, ptr %t239, !tbaa !29
  %t242 = icmp eq ptr %t240, null
  br i1 %t242, label %bb62, label %bb63
bb61:
  br label %bb75
bb62:
  call void @__olang_check_failed(ptr @olang_loc_ba297c355e3740f1_9975a70d069e6a55)
  unreachable
bb63:
  br label %bb64
bb64:
  %t244 = load ptr, ptr %l7, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Match", ptr %t244, i32 0, i32 2
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Arm", ptr %t247, i32 0, i32 3
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t253 = icmp eq ptr %t251, null
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb65, label %bb66
bb65:
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l145, !tbaa !29
  %t258 = load ptr, ptr %l7, !tbaa !29
  %t260 = getelementptr %"compiler/typed:Match", ptr %t258, i32 0, i32 2
  %t261 = load ptr, ptr %t260, !tbaa !29
  %t263 = icmp eq ptr %t261, null
  br i1 %t263, label %bb67, label %bb68
bb66:
  br label %bb74
bb67:
  call void @__olang_check_failed(ptr @olang_loc_ba297c355e3740f1_9975a70d069e6a55)
  unreachable
bb68:
  br label %bb69
bb69:
  %t265 = load ptr, ptr %l7, !tbaa !29
  %t267 = getelementptr %"compiler/typed:Match", ptr %t265, i32 0, i32 2
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t271 = getelementptr %"compiler/typed:Arm", ptr %t268, i32 0, i32 3
  %t272 = load ptr, ptr %t271, !tbaa !29
  store ptr %t272, ptr %l20, !tbaa !29
  %t274 = load ptr, ptr %l20, !tbaa !29
  %t276 = icmp eq ptr %t274, null
  br i1 %t276, label %bb70, label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_ba297c355e3740f1_9975a70d069e6a55)
  unreachable
bb71:
  br label %bb72
bb72:
  %t278 = load ptr, ptr %l20, !tbaa !29
  %t279 = load ptr, ptr %l145, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t279, ptr %t278)
  br label %bb73
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb134
bb76:
  %t281 = load ptr, ptr %l1, !tbaa !29
  store ptr %t281, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t282 = load ptr, ptr %l156, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb77, label %bb78
bb77:
  %t285 = load ptr, ptr %l156, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 18}
  %t288 = icmp eq i64 %t286, 14
  store i1 %t288, ptr %l157, !tbaa !21
  br label %bb78
bb78:
  %t289 = load i1, ptr %l157, !tbaa !21
  br i1 %t289, label %bb79, label %bb80
bb79:
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t292 = getelementptr { i64, [5 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t292, i32 0, i32 2
  %t294 = load ptr, ptr %t293
  store ptr %t294, ptr %l21, !tbaa !29
  br label %bb81
bb80:
  br label %bb102
bb81:
  %t296 = load ptr, ptr %l21, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Try", ptr %t296, i32 0, i32 0
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = icmp eq ptr %t299, null
  %t303 = xor i1 %t301, true
  br i1 %t303, label %bb82, label %bb83
bb82:
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l166, !tbaa !29
  %t306 = load ptr, ptr %l21, !tbaa !29
  %t308 = getelementptr %"compiler/typed:Try", ptr %t306, i32 0, i32 0
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t311 = icmp eq ptr %t309, null
  br i1 %t311, label %bb84, label %bb85
bb83:
  br label %bb88
bb84:
  call void @__olang_check_failed(ptr @olang_loc_bb85040a6a786cb8_20e886069e3b9c04)
  unreachable
bb85:
  br label %bb86
bb86:
  %t313 = load ptr, ptr %l21, !tbaa !29
  %t315 = getelementptr %"compiler/typed:Try", ptr %t313, i32 0, i32 0
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t317 = load ptr, ptr %l166, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t317, ptr %t316)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t319 = load ptr, ptr %l21, !tbaa !29
  %t321 = getelementptr %"compiler/typed:Try", ptr %t319, i32 0, i32 1
  %t322 = load { i64, ptr }, ptr %t321, !tbaa !27
  store { i64, ptr } %t322, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t324 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t324, 0
  store i64 %t326, ptr %l24, !tbaa !24
  br label %bb89
bb89:
  %t328 = load i64, ptr %l23, !tbaa !24
  %t329 = load i64, ptr %l24, !tbaa !24
  %t332 = icmp slt i64 %t328, %t329
  %t334 = xor i1 %t332, true
  br i1 %t334, label %bb90, label %bb91
bb90:
  br label %bb101
bb91:
  br label %bb92
bb92:
  %t336 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t336, ptr %l180, !tbaa !27
  %t337 = load i64, ptr %l23, !tbaa !24
  %t339 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = getelementptr ptr, ptr %t340, i64 %t337
  %t342 = load ptr, ptr %t341, !tbaa !39
  store ptr %t342, ptr %l25, !tbaa !29
  %t344 = load ptr, ptr %l25, !tbaa !29
  %t346 = getelementptr %"compiler/typed:Clause", ptr %t344, i32 0, i32 3
  %t347 = load ptr, ptr %t346, !tbaa !29
  %t349 = icmp eq ptr %t347, null
  %t351 = xor i1 %t349, true
  br i1 %t351, label %bb93, label %bb94
bb93:
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l187, !tbaa !29
  %t354 = load ptr, ptr %l25, !tbaa !29
  %t356 = getelementptr %"compiler/typed:Clause", ptr %t354, i32 0, i32 3
  %t357 = load ptr, ptr %t356, !tbaa !29
  %t359 = icmp eq ptr %t357, null
  br i1 %t359, label %bb95, label %bb96
bb94:
  br label %bb99
bb95:
  call void @__olang_check_failed(ptr @olang_loc_be187497b97f18d7_9641cb8c9c409d3)
  unreachable
bb96:
  br label %bb97
bb97:
  %t361 = load ptr, ptr %l25, !tbaa !29
  %t363 = getelementptr %"compiler/typed:Clause", ptr %t361, i32 0, i32 3
  %t364 = load ptr, ptr %t363, !tbaa !29
  %t365 = load ptr, ptr %l187, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %t365, ptr %t364)
  br label %bb98
bb98:
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t367 = load i64, ptr %l23, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l23, !tbaa !24
  br label %bb89
bb101:
  br label %bb134
bb102:
  %t371 = load ptr, ptr %l1, !tbaa !29
  store ptr %t371, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t372 = load ptr, ptr %l195, !tbaa !29
  %t373 = icmp ne ptr %t372, null
  br i1 %t373, label %bb103, label %bb104
bb103:
  %t375 = load ptr, ptr %l195, !tbaa !29
  %t376 = load i64, ptr %t375, !range !{i64 0, i64 18}
  %t378 = icmp eq i64 %t376, 6
  store i1 %t378, ptr %l196, !tbaa !21
  br label %bb104
bb104:
  %t379 = load i1, ptr %l196, !tbaa !21
  br i1 %t379, label %bb105, label %bb106
bb105:
  %t380 = load ptr, ptr %l1, !tbaa !29
  %t382 = getelementptr { i64, [5 x i64] }, ptr %t380, i32 0, i32 1
  %t383 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t382, i32 0, i32 2
  %t384 = load ptr, ptr %t383
  store ptr %t384, ptr %l26, !tbaa !29
  br label %bb107
bb106:
  br label %bb115
bb107:
  %t386 = load ptr, ptr %l26, !tbaa !29
  %t388 = getelementptr %"compiler/typed:Call", ptr %t386, i32 0, i32 1
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !27
  store { i64, ptr } %t389, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t391 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t391, 0
  store i64 %t393, ptr %l29, !tbaa !24
  br label %bb108
bb108:
  %t395 = load i64, ptr %l28, !tbaa !24
  %t396 = load i64, ptr %l29, !tbaa !24
  %t399 = icmp slt i64 %t395, %t396
  %t401 = xor i1 %t399, true
  br i1 %t401, label %bb109, label %bb110
bb109:
  br label %bb114
bb110:
  br label %bb111
bb111:
  %t403 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t403, ptr %l209, !tbaa !27
  %t404 = load i64, ptr %l28, !tbaa !24
  %t406 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !27
  %t408 = getelementptr ptr, ptr %t407, i64 %t404
  %t409 = load ptr, ptr %t408, !tbaa !39
  %t411 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t411, ptr %t409)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t415 = load i64, ptr %l28, !tbaa !24
  %t417 = add i64 %t415, 1
  store i64 %t417, ptr %l28, !tbaa !24
  br label %bb108
bb114:
  br label %bb134
bb115:
  %t419 = load ptr, ptr %l1, !tbaa !29
  store ptr %t419, ptr %l216, !tbaa !29
  store i1 false, ptr %l217, !tbaa !21
  %t420 = load ptr, ptr %l216, !tbaa !29
  %t421 = icmp ne ptr %t420, null
  br i1 %t421, label %bb116, label %bb117
bb116:
  %t423 = load ptr, ptr %l216, !tbaa !29
  %t424 = load i64, ptr %t423, !range !{i64 0, i64 18}
  %t426 = icmp eq i64 %t424, 11
  store i1 %t426, ptr %l217, !tbaa !21
  br label %bb117
bb117:
  %t427 = load i1, ptr %l217, !tbaa !21
  br i1 %t427, label %bb118, label %bb119
bb118:
  %t428 = load ptr, ptr %l1, !tbaa !29
  %t430 = getelementptr { i64, [5 x i64] }, ptr %t428, i32 0, i32 1
  %t431 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t430, i32 0, i32 2
  %t432 = load ptr, ptr %t431
  store ptr %t432, ptr %l31, !tbaa !29
  br label %bb120
bb119:
  br label %bb129
bb120:
  %t434 = load ptr, ptr %l31, !tbaa !29
  %t436 = getelementptr %"compiler/typed:Cond", ptr %t434, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !29
  %t439 = icmp eq ptr %t437, null
  %t441 = xor i1 %t439, true
  br i1 %t441, label %bb121, label %bb122
bb121:
  %t443 = load ptr, ptr %l0, !tbaa !29
  store ptr %t443, ptr %l226, !tbaa !29
  %t444 = load ptr, ptr %l31, !tbaa !29
  %t446 = getelementptr %"compiler/typed:Cond", ptr %t444, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !29
  %t449 = icmp eq ptr %t447, null
  br i1 %t449, label %bb123, label %bb124
bb122:
  br label %bb127
bb123:
  call void @__olang_check_failed(ptr @olang_loc_342e0c3fe78e7ee6_419d07e7c20dd892)
  unreachable
bb124:
  br label %bb125
bb125:
  %t451 = load ptr, ptr %l31, !tbaa !29
  %t453 = getelementptr %"compiler/typed:Cond", ptr %t451, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !29
  %t455 = load ptr, ptr %l226, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t455, ptr %t454)
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load ptr, ptr %l31, !tbaa !29
  %t460 = getelementptr %"compiler/typed:Cond", ptr %t458, i32 0, i32 2
  %t461 = load ptr, ptr %t460, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexpr(ptr %v0, ptr %v1, ptr %t457, ptr %t461)
  br label %bb128
bb128:
  br label %bb134
bb129:
  br i1 true, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb134
bb133:
  call void @__olang_check_failed(ptr @olang_loc_d5478abcfcd1a74_537f989617a8cff0)
  unreachable
bb134:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
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
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l26 = alloca i64
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l68 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l106 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l110 = alloca i1
  %l114 = alloca ptr
  %l117 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Block", ptr %t3, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l26, !tbaa !24
  store i64 %t36, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l23, !tbaa !24
  store i64 %t37, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = add i64 %t56, 1
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Block", ptr %t59, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t67 = icmp slt i64 %t58, %t64
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Block", ptr %t69, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l52, !tbaa !27
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = add i64 %t73, 1
  %t77 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 %t75
  %t80 = load ptr, ptr %t79, !tbaa !39
  %t82 = call i1 @compiler_2ffree_2eleaves(ptr %v1, ptr %t80)
  store i1 %t82, ptr %l56
  br label %bb14
bb13:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb15
bb14:
  %t83 = load i1, ptr %l56, !tbaa !21
  store i1 %t83, ptr %l50, !tbaa !21
  br label %bb15
bb15:
  %t84 = load i1, ptr %l50, !tbaa !21
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/free:walker", ptr %t85, i32 0, i32 22
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/free:walker", ptr %t88, i32 0, i32 11
  %t91 = load i64, ptr %t90, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t87, i64 %t91)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/free:walker", ptr %t94, i32 0, i32 2
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb20, label %bb21
bb20:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/free:walker", ptr %t99, i32 0, i32 11
  %t102 = load i64, ptr %t101, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t102)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Block", ptr %t106, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l68, !tbaa !27
  %t110 = load i64, ptr %l8, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr ptr, ptr %t113, i64 %t110
  %t115 = load ptr, ptr %t114, !tbaa !39
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t105, ptr %t115)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l7, !tbaa !24
  br label %bb8
bb26:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecloseAt(ptr %v0, ptr %v1, ptr %t122, ptr %t123)
  br label %bb27
bb27:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/free:walker", ptr %t126, i32 0, i32 2
  %t129 = load i1, ptr %t128, !tbaa !21
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  br label %bb30
bb30:
  store i64 0, ptr %l9, !tbaa !24
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Block", ptr %t133, i32 0, i32 1
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t140 = load i64, ptr %l10, !tbaa !24
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = icmp sgt i64 %t140, %t141
  br i1 %t144, label %bb31, label %bb32
bb31:
  %t146 = load i64, ptr %l11, !tbaa !24
  %t148 = icmp sgt i64 %t146, 0
  br i1 %t148, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb36
bb33:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sub i64 %t150, %t151
  %t155 = load i64, ptr %l11, !tbaa !24
  %t158 = add i64 %t154, %t155
  %t160 = sub i64 %t158, 1
  %t161 = load i64, ptr %l11, !tbaa !24
  %t164 = sdiv i64 %t160, %t161
  store i64 %t164, ptr %l87, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb35
bb35:
  %t166 = load i64, ptr %l87, !tbaa !24
  store i64 %t166, ptr %l84, !tbaa !24
  br label %bb36
bb36:
  %t167 = load i64, ptr %l84, !tbaa !24
  store i64 %t167, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb37
bb37:
  %t168 = load i64, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l12, !tbaa !24
  %t172 = icmp slt i64 %t168, %t169
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb38, label %bb39
bb38:
  br label %bb55
bb39:
  br label %bb40
bb40:
  %t176 = load i64, ptr %l9, !tbaa !24
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t181 = mul i64 %t177, %t178
  %t184 = add i64 %t176, %t181
  store i64 %t184, ptr %l14, !tbaa !24
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr %"compiler/typed:Block", ptr %t186, i32 0, i32 1
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l106, !tbaa !27
  %t190 = load i64, ptr %l14, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  store ptr %t195, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t198 = load ptr, ptr %l109, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb41, label %bb42
bb41:
  %t201 = load ptr, ptr %l109, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 17}
  %t204 = icmp eq i64 %t202, 12
  store i1 %t204, ptr %l110, !tbaa !21
  br label %bb42
bb42:
  %t205 = load i1, ptr %l110, !tbaa !21
  br i1 %t205, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/free:walker", ptr %t206, i32 0, i32 55
  store ptr %t208, ptr %l114, !tbaa !29
  %t209 = load i64, ptr %l14, !tbaa !24
  %t212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l2, i64 %t209)
  store i64 %t212, ptr %l117
  br label %bb46
bb46:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/free:walker", ptr %t213, i32 0, i32 11
  %t216 = load i64, ptr %t215, !tbaa !24
  %t218 = sub i64 %t216, 1
  %t219 = load ptr, ptr %l114, !tbaa !29
  %t220 = load i64, ptr %l117, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t219, i64 %t220, i64 %t218)
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
  call void @__olang_check_failed(ptr @olang_loc_2fa77e012092fd19_7ffe9e1eddadbc5d)
  unreachable
bb53:
  br label %bb54
bb54:
  %t222 = load i64, ptr %l13, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l13, !tbaa !24
  br label %bb37
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i1 %a4, i64 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i1
  %l42 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca i64
  %l51 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i64
  %l64 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l81 = alloca ptr
  %l83 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l92 = alloca i32
  %l94 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l105 = alloca i64
  %l108 = alloca ptr
  %l110 = alloca i64
  %l111 = alloca i64
  %l113 = alloca ptr
  %l115 = alloca i64
  %l116 = alloca %"compiler/source:Span"
  %l118 = alloca i1
  %l120 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i1 %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  store ptr %a1, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l9, !tbaa !24
  store i64 %t8, ptr %l15, !tbaa !24
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l17
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = load i64, ptr %l17, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb71
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = load i64, ptr %l9, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l22
  br label %bb6
bb6:
  %t23 = load i64, ptr %l22, !tbaa !24
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l10, !tbaa !24
  %t26 = call i64 @compiler_2ffree_2eokind(i64 %t24)
  store i64 %t26, ptr %l24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l24, !tbaa !24
  store i64 %t27, ptr %l11, !tbaa !24
  %t28 = load i64, ptr %l11, !tbaa !24
  %t29 = load i64, ptr @G_2ecompiler_2ffree_2eOParC, !tbaa !24
  %t32 = icmp eq i64 %t28, %t29
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/free:walker", ptr %t34, i32 0, i32 2
  %t37 = load i1, ptr %t36, !tbaa !21
  %t39 = xor i1 %t37, true
  store i1 %t39, ptr %l28, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l28, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t42 = load i64, ptr %l10, !tbaa !24
  %t44 = call i64 @compiler_2ffree_2eoval(i64 %t42)
  store i64 %t44, ptr %l34
  br label %bb13
bb12:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb14
bb13:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l34, !tbaa !24
  %t48 = icmp ne i64 %t46, %t45
  store i1 %t48, ptr %l32, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l32, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l7, !tbaa !29
  %t53 = getelementptr %"compiler/free:Free", ptr %t51, i32 0, i32 31
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/free:walker", ptr %t54, i32 0, i32 1
  %t57 = load i64, ptr %t56, !tbaa !24
  %t60 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t53, i64 %t57)
  store ptr %t60, ptr %l42
  br label %bb17
bb16:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb20
bb17:
  %t61 = load i64, ptr %l10, !tbaa !24
  %t63 = call i64 @compiler_2ffree_2eoval(i64 %t61)
  store i64 %t63, ptr %l44
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l42, !tbaa !29
  %t65 = load i64, ptr %l44, !tbaa !24
  %t66 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t64, i64 %t65)
  store i64 %t66, ptr %l45
  br label %bb19
bb19:
  %t67 = load i64, ptr %l45, !tbaa !24
  %t68 = icmp sgt i64 %t67, 0
  store i1 %t68, ptr %l37, !tbaa !21
  br label %bb20
bb20:
  %t70 = load i1, ptr %l37, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l7, !tbaa !29
  %t73 = getelementptr %"compiler/free:Free", ptr %t71, i32 0, i32 40
  store i1 true, ptr %t73, !tbaa !21
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t75 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t78 = icmp eq i64 %t74, %t75
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/free:walker", ptr %t80, i32 0, i32 2
  %t83 = load i1, ptr %t82, !tbaa !21
  %t85 = xor i1 %t83, true
  store i1 %t85, ptr %l51, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t87 = load i1, ptr %l51, !tbaa !21
  br i1 %t87, label %bb27, label %bb28
bb27:
  %t88 = load i64, ptr %l10, !tbaa !24
  %t90 = call i64 @compiler_2ffree_2eoval(i64 %t88)
  store i64 %t90, ptr %l57
  br label %bb29
bb28:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb30
bb29:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t92 = load i64, ptr %l57, !tbaa !24
  %t94 = icmp ne i64 %t92, %t91
  store i1 %t94, ptr %l55, !tbaa !21
  br label %bb30
bb30:
  %t96 = load i1, ptr %l55, !tbaa !21
  br i1 %t96, label %bb31, label %bb32
bb31:
  %t97 = load ptr, ptr %l7, !tbaa !29
  %t99 = getelementptr %"compiler/free:Free", ptr %t97, i32 0, i32 30
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/free:walker", ptr %t100, i32 0, i32 1
  %t103 = load i64, ptr %t102, !tbaa !24
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t99, i64 %t103)
  store ptr %t106, ptr %l64
  br label %bb33
bb32:
  br label %bb52
bb33:
  %t107 = load i64, ptr %l10, !tbaa !24
  %t109 = call i64 @compiler_2ffree_2eoval(i64 %t107)
  store i64 %t109, ptr %l66
  br label %bb34
bb34:
  %t110 = load ptr, ptr %l64, !tbaa !29
  %t111 = load i64, ptr %l66, !tbaa !24
  %t112 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t110, i64 %t111)
  store i64 %t112, ptr %l67
  br label %bb35
bb35:
  %t113 = load i64, ptr %l67, !tbaa !24
  %t114 = icmp sgt i64 %t113, 0
  br i1 %t114, label %bb36, label %bb37
bb36:
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t118 = getelementptr %"compiler/free:Free", ptr %t116, i32 0, i32 40
  store i1 true, ptr %t118, !tbaa !21
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t121 = getelementptr %"compiler/free:Free", ptr %t119, i32 0, i32 79
  %t122 = load i1, ptr %t121, !tbaa !21
  br i1 %t122, label %bb38, label %bb39
bb37:
  br label %bb51
bb38:
  store %olang.scope zeroinitializer, ptr %s6
  %t124 = load ptr, ptr %l7, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/free:walker", ptr %t125, i32 0, i32 1
  %t128 = load i64, ptr %t127, !tbaa !24
  %t131 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s6, ptr %t124, i64 %t128)
  store { i64, ptr } %t131, ptr %l75
  br label %bb40
bb39:
  br label %bb50
bb40:
  %t132 = load i64, ptr %l10, !tbaa !24
  %t134 = call i64 @compiler_2ffree_2eoval(i64 %t132)
  store i64 %t134, ptr %l77
  br label %bb41
bb41:
  %t135 = load ptr, ptr %l7, !tbaa !29
  %t137 = getelementptr %"compiler/free:Free", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/load:Loader", ptr %t141, i32 0, i32 4
  %t144 = load ptr, ptr %t143, !tbaa !29
  store ptr %t144, ptr %l81, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t145)
  store ptr %t147, ptr %l83
  br label %bb42
bb42:
  %t148 = load ptr, ptr %l83, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Body", ptr %t148, i32 0, i32 3
  %t151 = load i64, ptr %t150, !tbaa !24
  %t152 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t153 = load i32, ptr %t152, !tbaa !23
  %t155 = sext i32 %t153 to i64
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t159 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s6, ptr %t156, i64 %t151, i64 %t155)
  store { i64, ptr } %t159, ptr %l88
  br label %bb43
bb43:
  %t160 = load i64, ptr %l5, !tbaa !24
  %t161 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t163 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = load i64, ptr %l77, !tbaa !24
  %t171 = call i64 @__olang_fmt_i64(ptr null, i64 %t170)
  %t172 = add i64 %t169, %t171
  %t173 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t176 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t184 = call i64 @__olang_fmt_i64(ptr null, i64 %t160)
  %t185 = add i64 %t182, %t184
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t188)
  call void @olang_textcopy(ptr %t189, ptr %t161, i64 %t162)
  %t190 = getelementptr i8, ptr %t189, i64 %t162
  call void @olang_textcopy(ptr %t190, ptr %t164, i64 %t165)
  %t191 = getelementptr i8, ptr %t190, i64 %t165
  call void @olang_textcopy(ptr %t191, ptr %t167, i64 %t168)
  %t192 = getelementptr i8, ptr %t191, i64 %t168
  %t193 = call i64 @__olang_fmt_i64(ptr %t192, i64 %t170)
  %t194 = getelementptr i8, ptr %t192, i64 %t171
  call void @olang_textcopy(ptr %t194, ptr %t173, i64 %t174)
  %t195 = getelementptr i8, ptr %t194, i64 %t174
  call void @olang_textcopy(ptr %t195, ptr %t177, i64 %t178)
  %t196 = getelementptr i8, ptr %t195, i64 %t178
  call void @olang_textcopy(ptr %t196, ptr %t180, i64 %t181)
  %t197 = getelementptr i8, ptr %t196, i64 %t181
  %t198 = call i64 @__olang_fmt_i64(ptr %t197, i64 %t160)
  %t199 = getelementptr i8, ptr %t197, i64 %t184
  call void @olang_textcopy(ptr %t199, ptr %t186, i64 %t187)
  %t200 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t189, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t204 = extractvalue { i64, ptr } %t201, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  %t210 = call i32 @std_2fio_2ePrintErr(ptr %s6, { i64, ptr } %t208)
  store i32 %t210, ptr %l92
  %t211 = icmp ne i32 %t210, 0
  br i1 %t211, label %bb45, label %ok.212, !prof !99
ok.212:
  br label %bb44
bb44:
  br label %bb49
bb45:
  %t213 = load i32, ptr %l92, !tbaa !23
  %t214 = ashr i32 %t213, 16
  %t216 = icmp eq i32 %t214, 1
  store i1 %t216, ptr %l94, !tbaa !21
  %t217 = load i32, ptr %l92, !tbaa !23
  %t218 = ashr i32 %t217, 16
  %t220 = icmp eq i32 %t218, 1
  br i1 %t220, label %bb46, label %bb47
bb46:
  call void @__olang_errpay_pop()
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s6)
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t222 = load i64, ptr %l11, !tbaa !24
  %t223 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t226 = icmp eq i64 %t222, %t223
  br i1 %t226, label %bb53, label %bb54
bb53:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/free:walker", ptr %t228, i32 0, i32 2
  %t231 = load i1, ptr %t230, !tbaa !21
  store i1 %t231, ptr %l100, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb55
bb55:
  %t233 = load i1, ptr %l100, !tbaa !21
  br i1 %t233, label %bb56, label %bb57
bb56:
  %t234 = load i64, ptr %l10, !tbaa !24
  %t236 = call i64 @compiler_2ffree_2eoval(i64 %t234)
  store i64 %t236, ptr %l105
  br label %bb58
bb57:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb59
bb58:
  %t238 = load i64, ptr %l105, !tbaa !24
  %t240 = icmp ne i64 %t238, %a6
  store i1 %t240, ptr %l103, !tbaa !21
  br label %bb59
bb59:
  %t242 = load i1, ptr %l103, !tbaa !21
  br i1 %t242, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s9
  %t243 = load ptr, ptr %l7, !tbaa !29
  store ptr %t243, ptr %l108, !tbaa !29
  %t244 = load i64, ptr %l10, !tbaa !24
  %t246 = call i64 @compiler_2ffree_2eoval(i64 %t244)
  store i64 %t246, ptr %l110
  br label %bb62
bb61:
  br label %bb69
bb62:
  %t247 = load i64, ptr @G_2ecompiler_2ffree_2eRStore, !tbaa !24
  store i64 %t247, ptr %l111, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t248)
  store ptr %t250, ptr %l113
  br label %bb63
bb63:
  %t251 = load ptr, ptr %l113, !tbaa !29
  %t253 = getelementptr %"compiler/typed:Body", ptr %t251, i32 0, i32 3
  %t254 = load i64, ptr %t253, !tbaa !24
  store i64 %t254, ptr %l115, !tbaa !24
  %t255 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t255, ptr %l116
  %t256 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t258 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s9, { i64, ptr } %t256, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t258, ptr %l118
  br label %bb64
bb64:
  %t259 = load i1, ptr %l118, !tbaa !21
  %t260 = xor i1 %t259, true
  br i1 %t260, label %bb65, label %bb66
bb65:
  %t262 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t263 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t266 = extractvalue { i64, ptr } %t262, 1
  %t267 = extractvalue { i64, ptr } %t262, 0
  %t268 = add i64 %t264, %t267
  %t269 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t270 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t271 = add i64 %t268, %t270
  %t272 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t271)
  call void @olang_textcopy(ptr %t272, ptr %t263, i64 %t264)
  %t273 = getelementptr i8, ptr %t272, i64 %t264
  call void @olang_textcopy(ptr %t273, ptr %t266, i64 %t267)
  %t274 = getelementptr i8, ptr %t273, i64 %t267
  call void @olang_textcopy(ptr %t274, ptr %t269, i64 %t270)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t272, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l120, !tbaa !27
  br label %bb67
bb66:
  store { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l120, !tbaa !27
  br label %bb67
bb67:
  %t285 = load ptr, ptr %l108, !tbaa !29
  %t286 = load i64, ptr %l110, !tbaa !24
  %t287 = load i64, ptr %l111, !tbaa !24
  %t288 = load i64, ptr %l115, !tbaa !24
  %t289 = load %"compiler/source:Span", ptr %l116
  %t290 = load { i64, ptr }, ptr %l120, !tbaa !27
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t285, i64 %t286, i64 %t287, i64 %t288, %"compiler/source:Span" %t289, { i64, ptr } %t290)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t291 = load i64, ptr %l9, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l9, !tbaa !24
  br label %bb1
bb71:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescapedHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, [2 x i64] }
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i64
  %l15 = alloca i1
  %l19 = alloca %"compiler/typed:Local"
  %l22 = alloca i1
  %l24 = alloca i64
  %l28 = alloca i64
  %l35 = alloca %"compiler/typed:Plan"
  %l37 = alloca %"compiler/typed:Plan"
  %l43 = alloca { i64, ptr }
  %l48 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i32
  %l60 = alloca %"compiler/typed:Local"
  %l65 = alloca i1
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, [2 x i64] }
  %l79 = alloca %"compiler/typed:Local"
  %l80 = alloca i32
  %l82 = alloca { i64, ptr }
  %l84 = alloca i32
  %l86 = alloca i1
  %l92 = alloca ptr
  %l96 = alloca %"compiler/typed:Local"
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %t56 = alloca %"compiler/typed:Plan", align 8
  %t59 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v1, ptr %t5, ptr %a1)
  store i64 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i64, ptr %l12, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb4:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 7
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/typed:Local" %t21, ptr %l19
  br label %bb5
bb5:
  %t22 = getelementptr %"compiler/typed:Local", ptr %l19, i32 0, i32 4
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 7}
  %t25 = trunc i64 6 to i32
  %t26 = icmp eq i32 %t23, %t25
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l15, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb10
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:walker", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l24, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/free:walker", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/free:Free", ptr %t36, i32 0, i32 3
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l28
  br label %bb9
bb9:
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = load i64, ptr %l28, !tbaa !24
  %t43 = icmp sge i64 %t41, %t42
  store i1 %t43, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/free:walker", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/free:Free", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/free:walker", ptr %t52, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t56, ptr %v0, ptr %v0, ptr %t51, i64 %t55)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t56, i64 536, i1 false)
  br label %bb14
bb14:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t59, ptr %v0, ptr %l35)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t59, i64 536, i1 false)
  br label %bb15
bb15:
  %t61 = getelementptr %"compiler/typed:Plan", ptr %l37, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l4, !tbaa !27
  %t64 = load i64, ptr %l3, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t70 = icmp sge i64 %t64, %t67
  br i1 %t70, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t72 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t72, ptr %l43, !tbaa !27
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t76, i64 %t73
  %t78 = load { i64, [2 x i64] }, ptr %t77
  store { i64, [2 x i64] } %t78, ptr %l5
  %t80 = load { i64, [2 x i64] }, ptr %l5
  %t82 = extractvalue { i64, [2 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 5
  br i1 %t83, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb21
bb20:
  %t85 = load { i64, [2 x i64] }, ptr %l5
  %t87 = extractvalue { i64, [2 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 0
  store i1 %t88, ptr %l48, !tbaa !21
  br label %bb21
bb21:
  %t90 = load i1, ptr %l48, !tbaa !21
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb28
bb23:
  %t91 = load { i64, [2 x i64] }, ptr %l5
  %t93 = extractvalue { i64, [2 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 1
  br i1 %t94, label %bb24, label %bb25
bb24:
  %t96 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t97 = getelementptr { i32 }, ptr %t96, i32 0, i32 0
  %t98 = load i32, ptr %t97
  store i32 %t98, ptr %l56, !tbaa !23
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Body", ptr %t101, i32 0, i32 7
  %t104 = load i64, ptr %l3, !tbaa !24
  %t107 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t103, i64 %t104)
  store %"compiler/typed:Local" %t107, ptr %l60
  br label %bb26
bb25:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb27
bb26:
  %t108 = getelementptr %"compiler/typed:Local", ptr %l60, i32 0, i32 3
  %t109 = load i32, ptr %t108, !tbaa !23
  %t110 = load i32, ptr %l56, !tbaa !23
  %t112 = icmp eq i32 %t110, %t109
  store i1 %t112, ptr %l54, !tbaa !21
  br label %bb27
bb27:
  %t114 = load i1, ptr %l54, !tbaa !21
  store i1 %t114, ptr %l51, !tbaa !21
  br label %bb28
bb28:
  %t115 = load i1, ptr %l51, !tbaa !21
  store i1 %t115, ptr %l7, !tbaa !21
  %t116 = load i1, ptr %l7, !tbaa !21
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb29, label %bb30
bb29:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/free:walker", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/free:Free", ptr %t123, i32 0, i32 79
  %t126 = load i1, ptr %t125, !tbaa !21
  store i1 %t126, ptr %l65, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb31
bb31:
  %t128 = load i1, ptr %l65, !tbaa !21
  br i1 %t128, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s3
  %t129 = load i64, ptr %l3, !tbaa !24
  store i64 %t129, ptr %l69, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/free:walker", ptr %t130, i32 0, i32 0
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/free:walker", ptr %t134, i32 0, i32 1
  %t137 = load i64, ptr %t136, !tbaa !24
  %t140 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s3, ptr %t133, i64 %t137)
  store { i64, ptr } %t140, ptr %l74
  br label %bb34
bb33:
  br label %bb43
bb34:
  %t141 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t141, ptr %l75
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Body", ptr %t142, i32 0, i32 7
  %t145 = load i64, ptr %l3, !tbaa !24
  %t148 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t144, i64 %t145)
  store %"compiler/typed:Local" %t148, ptr %l79
  br label %bb35
bb35:
  %t149 = getelementptr %"compiler/typed:Local", ptr %l79, i32 0, i32 3
  %t150 = load i32, ptr %t149, !tbaa !23
  store i32 %t150, ptr %l80, !tbaa !23
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t151 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t151, i64 %t152)
  %t153 = load i64, ptr %l69, !tbaa !24
  %t154 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t155 = call i64 @__olang_fmt_i64(ptr %t154, i64 %t153)
  call void @__olang_sb_add(ptr %s4, i64 %t155)
  %t156 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t156, i64 %t157)
  %t158 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  call void @__olang_sb_put(ptr %s4, ptr %t159, i64 %t160)
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t161, i64 %t162)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aScope(ptr %s4, ptr %l75, i64 0)
  br label %bb36
bb36:
  %t164 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t164, i64 %t165)
  %t166 = load i32, ptr %l80, !tbaa !23
  %t167 = sext i32 %t166 to i64
  %t168 = call ptr @__olang_sb_room(ptr %s4, i64 24)
  %t169 = call i64 @__olang_fmt_i64(ptr %t168, i64 %t167)
  call void @__olang_sb_add(ptr %s4, i64 %t169)
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s4, ptr %t170, i64 %t171)
  %t172 = load ptr, ptr %s4
  %t173 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t174 = load i64, ptr %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t172, i64 %t174)
  %t176 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  store { i64, ptr } %t177, ptr %l82, !tbaa !27
  %t178 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t179 = load ptr, ptr %t178
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %sbgrew.181, label %sbdone.182
sbgrew.181:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.182
sbdone.182:
  %t183 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 0
  %t185 = extractvalue { i64, ptr } %t183, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t191 = call i32 @std_2fio_2ePrintErr(ptr %s3, { i64, ptr } %t189)
  store i32 %t191, ptr %l84
  %t192 = icmp ne i32 %t191, 0
  br i1 %t192, label %bb38, label %ok.193, !prof !99
ok.193:
  br label %bb37
bb37:
  br label %bb42
bb38:
  %t194 = load i32, ptr %l84, !tbaa !23
  %t195 = ashr i32 %t194, 16
  %t197 = icmp eq i32 %t195, 1
  store i1 %t197, ptr %l86, !tbaa !21
  %t198 = load i32, ptr %l84, !tbaa !23
  %t199 = ashr i32 %t198, 16
  %t201 = icmp eq i32 %t199, 1
  br i1 %t201, label %bb39, label %bb40
bb39:
  call void @__olang_errpay_pop()
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t203 = load i1, ptr %l7, !tbaa !21
  %t205 = xor i1 %t203, true
  br i1 %t205, label %bb44, label %bb45
bb44:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/free:walker", ptr %t207, i32 0, i32 0
  %t210 = load ptr, ptr %t209, !tbaa !29
  store ptr %t210, ptr %l92, !tbaa !29
  %t211 = load ptr, ptr %l2, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Body", ptr %t211, i32 0, i32 7
  %t214 = load i64, ptr %l3, !tbaa !24
  %t217 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t213, i64 %t214)
  store %"compiler/typed:Local" %t217, ptr %l96
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t218 = getelementptr %"compiler/typed:Local", ptr %l96, i32 0, i32 2
  %t219 = load i32, ptr %t218, !tbaa !23
  %t220 = load ptr, ptr %l92, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eregister(ptr %v0, ptr %t220, i32 %t219)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i1
  %l27 = alloca i32
  %l28 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca %"compiler/free:leaf"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i64
  %l68 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l72 = alloca i32
  %l73 = alloca { i64, ptr }
  %l74 = alloca i64
  %l75 = alloca i64
  %l77 = alloca i32
  %l78 = alloca ptr
  %l79 = alloca i32
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca ptr
  %l82 = alloca { i64, ptr }
  %l83 = alloca i64
  %l84 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca ptr
  %l93 = alloca i1
  %l100 = alloca i64
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca ptr
  %l110 = alloca i1
  %l115 = alloca i64
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l123 = alloca ptr
  %l124 = alloca i1
  %l131 = alloca i64
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca ptr
  %l141 = alloca i1
  %l149 = alloca ptr
  %l151 = alloca i1
  %l152 = alloca i1
  %l154 = alloca ptr
  %l156 = alloca ptr
  %l158 = alloca i32
  %l159 = alloca i1
  %l161 = alloca ptr
  %l163 = alloca i32
  %l165 = alloca ptr
  %l167 = alloca i32
  %l168 = alloca i64
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l175 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca i1
  %l182 = alloca i64
  %l184 = alloca i64
  %l189 = alloca i64
  %l191 = alloca i64
  %l195 = alloca ptr
  %l197 = alloca i64
  %l198 = alloca i64
  %l200 = alloca ptr
  %l202 = alloca i64
  %l205 = alloca %"compiler/source:Span"
  %l206 = alloca i64
  %l208 = alloca ptr
  %l211 = alloca %"compiler/source:Span"
  %l212 = alloca { i64, ptr }
  %l217 = alloca ptr
  %l222 = alloca i64
  %l223 = alloca i64
  %l227 = alloca i1
  %l231 = alloca i1
  %l232 = alloca i1
  %l238 = alloca %"compiler/typed:Plan"
  %l240 = alloca %"compiler/typed:Plan"
  %l241 = alloca { i64, ptr }
  %l246 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i1
  %l261 = alloca i64
  %l267 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l269 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca ptr
  %l272 = alloca i1
  %l284 = alloca i1
  %l290 = alloca i1
  %l299 = alloca { i64, ptr }
  %l304 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l309 = alloca i64
  %l316 = alloca ptr
  %l322 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l326 = alloca ptr
  %l331 = alloca i64
  %l332 = alloca i64
  %l336 = alloca i64
  %l342 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l344 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l349 = alloca i1
  %l353 = alloca i1
  %l363 = alloca i1
  %l367 = alloca i1
  %l377 = alloca ptr
  %l378 = alloca i1
  %l389 = alloca ptr
  %l395 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l397 = alloca ptr
  %l399 = alloca ptr
  %l403 = alloca i32
  %l404 = alloca i64
  %l406 = alloca ptr
  %l407 = alloca i64
  %l409 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l414 = alloca i64
  %l417 = alloca i64
  %l418 = alloca i32
  %l419 = alloca ptr
  %l422 = alloca ptr
  %l423 = alloca i32
  %l424 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l428 = alloca i64
  %l429 = alloca ptr
  %l434 = alloca i64
  %l435 = alloca i64
  %l436 = alloca ptr
  %l437 = alloca i1
  %l448 = alloca i1
  %l452 = alloca i64
  %l453 = alloca { i64, ptr }
  %l455 = alloca i64
  %l459 = alloca i64
  %l464 = alloca { i64, ptr }
  %l467 = alloca ptr
  %l469 = alloca ptr
  %l473 = alloca %"compiler/typed:Local"
  %l475 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l477 = alloca i64
  %l479 = alloca i64
  %l484 = alloca %"compiler/free:leaf"
  %l486 = alloca %"compiler/free:leaf"
  %l487 = alloca ptr
  %l488 = alloca i64
  %l489 = alloca i64
  %l490 = alloca %"compiler/source:Span"
  %l491 = alloca %"compiler/source:Span"
  %l502 = alloca ptr
  %l503 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l505 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l508 = alloca ptr
  %l510 = alloca i64
  %l511 = alloca %"compiler/source:Span"
  %l512 = alloca i64
  %l514 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l516 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l518 = alloca %"compiler/free:retire"
  %l520 = alloca %"compiler/free:retire"
  %l528 = alloca { i64, ptr }
  %l531 = alloca ptr
  %l534 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l536 = alloca i64
  %l541 = alloca i1
  %l547 = alloca { i64, ptr }
  %l549 = alloca ptr
  %l550 = alloca i1
  %l555 = alloca i64
  %l557 = alloca ptr
  %l559 = alloca ptr
  %l562 = alloca i32
  %l563 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l565 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l570 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l574 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l575 = alloca ptr
  %l576 = alloca i1
  %l584 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l589 = alloca ptr
  %l590 = alloca ptr
  %l596 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l598 = alloca i64
  %l599 = alloca ptr
  %l603 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l605 = alloca i64
  %l606 = alloca ptr
  %l607 = alloca i1
  %l620 = alloca { i64, ptr }
  %l629 = alloca ptr
  %l636 = alloca i64
  %l638 = alloca ptr
  %l644 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l646 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l650 = alloca ptr
  %l653 = alloca ptr
  %l654 = alloca i1
  %l667 = alloca { i64, ptr }
  %l682 = alloca { i64, ptr }
  %l685 = alloca ptr
  %l688 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l690 = alloca i64
  %l697 = alloca ptr
  %l698 = alloca ptr
  %l704 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l706 = alloca i64
  %l707 = alloca ptr
  %l708 = alloca i1
  %l717 = alloca i64
  %l719 = alloca ptr
  %l725 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l727 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l737 = alloca { i64, ptr }
  %l744 = alloca ptr
  %l758 = alloca { i64, ptr }
  %l761 = alloca ptr
  %l764 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l766 = alloca i64
  %l771 = alloca ptr
  %l772 = alloca i1
  %l779 = alloca ptr
  %l780 = alloca i1
  %l801 = alloca { i64, ptr }
  %l804 = alloca ptr
  %l809 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l811 = alloca i64
  %l814 = alloca ptr
  %l818 = alloca i64
  %l819 = alloca i64
  %l820 = alloca ptr
  %l821 = alloca i1
  %l831 = alloca ptr
  %l832 = alloca i1
  %l848 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l854 = alloca i64
  %l855 = alloca ptr
  %l859 = alloca i64
  %l860 = alloca i64
  %l861 = alloca ptr
  %l862 = alloca i1
  %l875 = alloca { i64, ptr }
  %l878 = alloca ptr
  %l879 = alloca i1
  %l886 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l889 = alloca ptr
  %l894 = alloca i64
  %l895 = alloca i64
  %l896 = alloca ptr
  %l897 = alloca i1
  %l902 = alloca i64
  %l906 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l908 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l910 = alloca ptr
  %l912 = alloca i32
  %l913 = alloca i1
  %l915 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s9 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s62 = alloca %olang.scope
  %s69 = alloca %olang.scope
  %s72 = alloca %olang.scope
  %s78 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t434 = alloca %"compiler/typed:Plan", align 8
  %t437 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l88, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l88, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l88
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l90
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l88
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t20, ptr %lp2
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  %t22 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t22
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t24 = load ptr, ptr %l92, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l92, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l93, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l93, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 1
  %t36 = load i32, ptr %t35
  store i32 %t36, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb18
bb10:
  %t44 = ptrtoint ptr %v2 to i64
  store i64 %t44, ptr %l100, !tbaa !24
  %t45 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t47 = call ptr @__olang_region_make(ptr %v2)
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l100, !tbaa !24
  br label %bb12
bb12:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l4, !tbaa !29
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load i64, ptr %l100
  %t53 = inttoptr i64 %t52 to ptr
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereadOf(ptr %v0, ptr %v1, ptr %t53, ptr %t49, ptr %t50, i32 %t51)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l105
  br label %bb13
bb13:
  %t58 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t58, label %bb14, label %bb15
bb14:
  %t60 = load i64, ptr %l100
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = call ptr @__olang_region_or(ptr %t64, ptr null)
  %t66 = icmp ne ptr %t65, null
  %t67 = select i1 %t66, ptr %t65, ptr null
  %t68 = icmp eq ptr %t67, %t61
  call void @__olang_region_settle(ptr %t61, i1 %t68)
  br label %bb15
bb15:
  %t69 = load ptr, ptr %lp2
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l107
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  %t72 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %t72
  %t73 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l107, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  call void @__olang_region_drop(ptr %t80)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l107
  br label %bb17
bb17:
  br label %bb514
bb18:
  %t81 = load ptr, ptr %l1, !tbaa !29
  store ptr %t81, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t82 = load ptr, ptr %l109, !tbaa !29
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %bb19, label %bb20
bb19:
  %t85 = load ptr, ptr %l109, !tbaa !29
  %t86 = load i64, ptr %t85, !range !{i64 0, i64 18}
  %t88 = icmp eq i64 %t86, 3
  store i1 %t88, ptr %l110, !tbaa !21
  br label %bb20
bb20:
  %t89 = load i1, ptr %l110, !tbaa !21
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr { i64, [5 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t92, i32 0, i32 2
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb31
bb23:
  %t96 = ptrtoint ptr %v2 to i64
  store i64 %t96, ptr %l115, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = call ptr @__olang_region_make(ptr %v2)
  %t100 = ptrtoint ptr %t99 to i64
  store i64 %t100, ptr %l115, !tbaa !24
  br label %bb25
bb25:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l5, !tbaa !29
  %t103 = load i64, ptr %l115
  %t104 = inttoptr i64 %t103 to ptr
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eborrowOf(ptr %v0, ptr %v1, ptr %t104, ptr %t101, ptr %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l119
  br label %bb26
bb26:
  %t108 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t110 = load i64, ptr %l115
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119, i32 0, i32 0
  %t113 = load { i64, ptr }, ptr %t112
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = call ptr @__olang_region_or(ptr %t114, ptr null)
  %t116 = icmp ne ptr %t115, null
  %t117 = select i1 %t116, ptr %t115, ptr null
  %t118 = icmp eq ptr %t117, %t111
  call void @__olang_region_settle(ptr %t111, i1 %t118)
  br label %bb28
bb28:
  %t119 = load ptr, ptr %lp2
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l121
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  %t122 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %t122
  %t123 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t123, label %bb29, label %bb30
bb29:
  %t125 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l121, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = icmp ne ptr %t128, null
  %t130 = select i1 %t129, ptr %t128, ptr null
  call void @__olang_region_drop(ptr %t130)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l121
  br label %bb30
bb30:
  br label %bb514
bb31:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t132 = load ptr, ptr %l123, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb32, label %bb33
bb32:
  %t135 = load ptr, ptr %l123, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 18}
  %t138 = icmp eq i64 %t136, 4
  store i1 %t138, ptr %l124, !tbaa !21
  br label %bb33
bb33:
  %t139 = load i1, ptr %l124, !tbaa !21
  br i1 %t139, label %bb34, label %bb35
bb34:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [5 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t142, i32 0, i32 1
  %t144 = load i32, ptr %t143
  store i32 %t144, ptr %l6, !tbaa !23
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l7, !tbaa !29
  br label %bb36
bb35:
  br label %bb44
bb36:
  %t152 = ptrtoint ptr %v2 to i64
  store i64 %t152, ptr %l131, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t153, label %bb37, label %bb38
bb37:
  %t155 = call ptr @__olang_region_make(ptr %v2)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l131, !tbaa !24
  br label %bb38
bb38:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l7, !tbaa !29
  %t159 = load i32, ptr %l6, !tbaa !23
  %t160 = load i64, ptr %l131
  %t161 = inttoptr i64 %t160 to ptr
  %t165 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2etakeOf(ptr %v0, ptr %v1, ptr %t161, ptr %t157, ptr %t158, i32 %t159)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t165, ptr %l136
  br label %bb39
bb39:
  %t166 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t166, label %bb40, label %bb41
bb40:
  %t168 = load i64, ptr %l131
  %t169 = inttoptr i64 %t168 to ptr
  %t170 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136, i32 0, i32 0
  %t171 = load { i64, ptr }, ptr %t170
  %t172 = extractvalue { i64, ptr } %t171, 1
  %t173 = call ptr @__olang_region_or(ptr %t172, ptr null)
  %t174 = icmp ne ptr %t173, null
  %t175 = select i1 %t174, ptr %t173, ptr null
  %t176 = icmp eq ptr %t175, %t169
  call void @__olang_region_settle(ptr %t169, i1 %t176)
  br label %bb41
bb41:
  %t177 = load ptr, ptr %lp2
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t177
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l138
  %t179 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  %t180 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %t180
  %t181 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t181, label %bb42, label %bb43
bb42:
  %t183 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr null
  call void @__olang_region_drop(ptr %t188)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l138
  br label %bb43
bb43:
  br label %bb514
bb44:
  %t189 = load ptr, ptr %l1, !tbaa !29
  store ptr %t189, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t190 = load ptr, ptr %l140, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb45, label %bb46
bb45:
  %t193 = load ptr, ptr %l140, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 18}
  %t196 = icmp eq i64 %t194, 5
  store i1 %t196, ptr %l141, !tbaa !21
  br label %bb46
bb46:
  %t197 = load i1, ptr %l141, !tbaa !21
  br i1 %t197, label %bb47, label %bb48
bb47:
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr { i64, [5 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t200, i32 0, i32 1
  %t202 = load i32, ptr %t201
  store i32 %t202, ptr %l8, !tbaa !23
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr { i64, [5 x i64] }, ptr %t204, i32 0, i32 1
  %t207 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t206, i32 0, i32 2
  %t208 = load ptr, ptr %t207
  store ptr %t208, ptr %l9, !tbaa !29
  br label %bb49
bb48:
  br label %bb114
bb49:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t210)
  store ptr %t212, ptr %l149
  br label %bb50
bb50:
  %t213 = load i32, ptr %l8, !tbaa !23
  %t214 = load ptr, ptr %l149, !tbaa !29
  %t216 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t214, i32 %t213)
  store i1 %t216, ptr %l151
  br label %bb51
bb51:
  %t217 = load i1, ptr %l151, !tbaa !21
  br i1 %t217, label %bb52, label %bb53
bb52:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t218)
  store ptr %t220, ptr %l154
  br label %bb54
bb53:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb58
bb54:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t221)
  store ptr %t223, ptr %l156
  br label %bb55
bb55:
  %t224 = load i32, ptr %l8, !tbaa !23
  %t225 = load ptr, ptr %l156, !tbaa !29
  %t227 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t225, i32 %t224)
  store i32 %t227, ptr %l158
  br label %bb56
bb56:
  %t228 = load ptr, ptr %l154, !tbaa !29
  %t229 = load i32, ptr %l158, !tbaa !23
  %t230 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t228, i32 %t229)
  store i1 %t230, ptr %l159
  br label %bb57
bb57:
  %t231 = load i1, ptr %l159, !tbaa !21
  store i1 %t231, ptr %l152, !tbaa !21
  br label %bb58
bb58:
  %t232 = load i1, ptr %l152, !tbaa !21
  store i1 %t232, ptr %l10, !tbaa !21
  %t233 = load i1, ptr %l10, !tbaa !21
  br i1 %t233, label %bb59, label %bb60
bb59:
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l161, !tbaa !29
  %t236 = load ptr, ptr %l9, !tbaa !29
  %t238 = getelementptr %"compiler/typed:Promote", ptr %t236, i32 0, i32 1
  %t239 = load i32, ptr %t238, !tbaa !23
  store i32 %t239, ptr %l163, !tbaa !23
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t240)
  store ptr %t242, ptr %l165
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t243 = load i32, ptr %l8, !tbaa !23
  %t244 = load ptr, ptr %l165, !tbaa !29
  %t246 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t244, i32 %t243)
  store i32 %t246, ptr %l167
  br label %bb62
bb62:
  %t247 = load ptr, ptr %l161, !tbaa !29
  %t248 = load i32, ptr %l163, !tbaa !23
  %t249 = load i32, ptr %l167, !tbaa !23
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eregisteredAt(ptr %v0, ptr %t247, i32 %t248, i32 %t249)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t250 = ptrtoint ptr %v2 to i64
  store i64 %t250, ptr %l168, !tbaa !24
  %t251 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t251, label %bb65, label %bb66
bb65:
  %t253 = call ptr @__olang_region_make(ptr %v2)
  %t254 = ptrtoint ptr %t253 to i64
  store i64 %t254, ptr %l168, !tbaa !24
  br label %bb66
bb66:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load ptr, ptr %l9, !tbaa !29
  %t258 = getelementptr %"compiler/typed:Promote", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t260 = load i64, ptr %l168
  %t261 = inttoptr i64 %t260 to ptr
  %t264 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t261, ptr %t255, ptr %t259)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l173
  br label %bb67
bb67:
  %t265 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t265, label %bb68, label %bb69
bb68:
  %t267 = load i64, ptr %l168
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173, i32 0, i32 0
  %t270 = load { i64, ptr }, ptr %t269
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = call ptr @__olang_region_or(ptr %t271, ptr null)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr null
  %t275 = icmp eq ptr %t274, %t268
  call void @__olang_region_settle(ptr %t268, i1 %t275)
  br label %bb69
bb69:
  %t276 = load ptr, ptr %lp2
  %t277 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t276
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t277, ptr %l175
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  %t279 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %t279
  %t280 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t280, label %bb70, label %bb71
bb70:
  %t282 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l175, i32 0, i32 0
  %t283 = load { i64, ptr }, ptr %t282
  %t284 = extractvalue { i64, ptr } %t283, 1
  %t285 = call ptr @__olang_region_or(ptr %t284, ptr null)
  %t286 = icmp ne ptr %t285, null
  %t287 = select i1 %t286, ptr %t285, ptr null
  call void @__olang_region_drop(ptr %t287)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l175
  br label %bb71
bb71:
  %t288 = load i1, ptr %l10, !tbaa !21
  br i1 %t288, label %bb72, label %bb73
bb72:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/free:walker", ptr %t290, i32 0, i32 2
  %t293 = load i1, ptr %t292, !tbaa !21
  store i1 %t293, ptr %l178, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb74
bb74:
  %t295 = load i1, ptr %l178, !tbaa !21
  br i1 %t295, label %bb75, label %bb76
bb75:
  %t296 = load ptr, ptr %lp2
  store ptr %t296, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb77
bb76:
  br label %bb97
bb77:
  %t298 = load i64, ptr %l12, !tbaa !24
  store i64 %t298, ptr %l182, !tbaa !24
  %t299 = load ptr, ptr %l11, !tbaa !29
  %t301 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t299)
  store i64 %t301, ptr %l184
  br label %bb78
bb78:
  %t302 = load i64, ptr %l182, !tbaa !24
  %t303 = load i64, ptr %l184, !tbaa !24
  %t304 = icmp slt i64 %t302, %t303
  %t306 = xor i1 %t304, true
  br i1 %t306, label %bb79, label %bb80
bb79:
  br label %bb96
bb80:
  br label %bb81
bb81:
  %t308 = load ptr, ptr %l11, !tbaa !29
  %t309 = load i64, ptr %l12, !tbaa !24
  %t312 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t308, i64 %t309)
  store i64 %t312, ptr %l189
  br label %bb82
bb82:
  %t313 = load i64, ptr %l189, !tbaa !24
  store i64 %t313, ptr %l13, !tbaa !24
  %t314 = load i64, ptr %l13, !tbaa !24
  %t316 = call i64 @compiler_2ffree_2eokind(i64 %t314)
  store i64 %t316, ptr %l191
  br label %bb83
bb83:
  %t317 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t318 = load i64, ptr %l191, !tbaa !24
  %t320 = icmp eq i64 %t318, %t317
  br i1 %t320, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s9
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/free:walker", ptr %t322, i32 0, i32 0
  %t325 = load ptr, ptr %t324, !tbaa !29
  store ptr %t325, ptr %l195, !tbaa !29
  %t326 = load i64, ptr %l13, !tbaa !24
  %t328 = call i64 @compiler_2ffree_2eoval(i64 %t326)
  store i64 %t328, ptr %l197
  br label %bb86
bb85:
  br label %bb94
bb86:
  %t329 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t329, ptr %l198, !tbaa !24
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t330)
  store ptr %t332, ptr %l200
  br label %bb87
bb87:
  %t333 = load ptr, ptr %l200, !tbaa !29
  %t335 = getelementptr %"compiler/typed:Body", ptr %t333, i32 0, i32 3
  %t336 = load i64, ptr %t335, !tbaa !24
  store i64 %t336, ptr %l202, !tbaa !24
  %t337 = load ptr, ptr %l9, !tbaa !29
  %t339 = getelementptr %"compiler/typed:Promote", ptr %t337, i32 0, i32 0
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t342 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t340)
  store %"compiler/source:Span" %t342, ptr %l205
  br label %bb88
bb88:
  %t343 = ptrtoint ptr %v0 to i64
  store i64 %t343, ptr %l206, !tbaa !24
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t344, label %bb89, label %bb90
bb89:
  %t346 = call ptr @__olang_region_make(ptr %v0)
  %t347 = ptrtoint ptr %t346 to i64
  store i64 %t347, ptr %l206, !tbaa !24
  br label %bb90
bb90:
  %t348 = load ptr, ptr %l0, !tbaa !29
  store ptr %t348, ptr %l208, !tbaa !29
  %t349 = load ptr, ptr %l9, !tbaa !29
  %t351 = getelementptr %"compiler/typed:Promote", ptr %t349, i32 0, i32 0
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t352)
  store %"compiler/source:Span" %t354, ptr %l211
  br label %bb91
bb91:
  %t355 = load ptr, ptr %l208, !tbaa !29
  %t356 = load %"compiler/source:Span", ptr %l211
  %t357 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s9, ptr %t355, %"compiler/source:Span" %t356)
  store { i64, ptr } %t357, ptr %l212
  br label %bb92
bb92:
  %t358 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t359 = extractvalue { i64, ptr } { i64 88, ptr getelementptr inbounds (<{ i64, [88 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t360 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t361 = extractvalue { i64, ptr } %t360, 1
  %t362 = extractvalue { i64, ptr } %t360, 0
  %t363 = add i64 %t359, %t362
  %t364 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t366 = add i64 %t363, %t365
  %t367 = load i64, ptr %l206
  %t368 = inttoptr i64 %t367 to ptr
  %t369 = call ptr @__olang_scope_alloc(ptr %t368, i64 %t366)
  call void @olang_textcopy(ptr %t369, ptr %t358, i64 %t359)
  %t370 = getelementptr i8, ptr %t369, i64 %t359
  call void @olang_textcopy(ptr %t370, ptr %t361, i64 %t362)
  %t371 = getelementptr i8, ptr %t370, i64 %t362
  call void @olang_textcopy(ptr %t371, ptr %t364, i64 %t365)
  %t372 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t369, 1
  %t375 = load i64, ptr %l206
  %t376 = inttoptr i64 %t375 to ptr
  %t377 = extractvalue { i64, ptr } %t373, 0
  %t378 = extractvalue { i64, ptr } %t373, 1
  %t379 = mul i64 %t377, 1
  %t380 = call ptr @__olang_scope_alloc(ptr %t376, i64 %t379)
  call void @llvm.memcpy.p0.p0.i64(ptr %t380, ptr %t378, i64 %t379, i1 false)
  %t381 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  %t383 = load ptr, ptr %l195, !tbaa !29
  %t384 = load i64, ptr %l197, !tbaa !24
  %t385 = load i64, ptr %l198, !tbaa !24
  %t386 = load i64, ptr %l202, !tbaa !24
  %t387 = load %"compiler/source:Span", ptr %l205
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t383, i64 %t384, i64 %t385, i64 %t386, %"compiler/source:Span" %t387, { i64, ptr } %t382)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s9)
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t389 = load i64, ptr %l12, !tbaa !24
  %t391 = add i64 %t389, 1
  store i64 %t391, ptr %l12, !tbaa !24
  br label %bb77
bb96:
  br label %bb97
bb97:
  %t393 = load ptr, ptr %lp2
  store ptr %t393, ptr %l217, !tbaa !29
  %t394 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t395 = load ptr, ptr %l9, !tbaa !29
  %t397 = getelementptr %"compiler/typed:Promote", ptr %t395, i32 0, i32 1
  %t398 = load i32, ptr %t397, !tbaa !23
  %t400 = sext i32 %t398 to i64
  %t403 = call i64 @compiler_2ffree_2eorig(i64 %t394, i64 %t400)
  store i64 %t403, ptr %l222
  br label %bb98
bb98:
  %t404 = load ptr, ptr %l217, !tbaa !29
  %t405 = load i64, ptr %l222, !tbaa !24
  %t406 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t404, i64 %t405)
  store i64 %t406, ptr %l223
  br label %bb99
bb99:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/free:walker", ptr %t407, i32 0, i32 2
  %t410 = load i1, ptr %t409, !tbaa !21
  %t412 = xor i1 %t410, true
  br i1 %t412, label %bb100, label %bb101
bb100:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/free:walker", ptr %t414, i32 0, i32 0
  %t417 = load ptr, ptr %t416, !tbaa !29
  %t418 = load i32, ptr %l8, !tbaa !23
  %t421 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edestructs(ptr %v0, ptr %t417, i32 %t418)
  store i1 %t421, ptr %l231
  br label %bb102
bb101:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb103
bb102:
  %t422 = load i1, ptr %l231, !tbaa !21
  store i1 %t422, ptr %l227, !tbaa !21
  br label %bb103
bb103:
  %t423 = load i1, ptr %l227, !tbaa !21
  br i1 %t423, label %bb104, label %bb105
bb104:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"compiler/free:walker", ptr %t424, i32 0, i32 0
  %t427 = load ptr, ptr %t426, !tbaa !29
  %t429 = getelementptr %"compiler/free:Free", ptr %t427, i32 0, i32 3
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/free:walker", ptr %t430, i32 0, i32 1
  %t433 = load i64, ptr %t432, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t434, ptr %v0, ptr %v0, ptr %t429, i64 %t433)
  call void @llvm.memmove.p0.p0.i64(ptr %l238, ptr %t434, i64 536, i1 false)
  br label %bb106
bb105:
  store i1 false, ptr %l232, !tbaa !21
  br label %bb109
bb106:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t437, ptr %v0, ptr %l238)
  call void @llvm.memmove.p0.p0.i64(ptr %l240, ptr %t437, i64 536, i1 false)
  br label %bb107
bb107:
  %t439 = getelementptr %"compiler/typed:Plan", ptr %l240, i32 0, i32 0
  %t440 = load { i64, ptr }, ptr %t439, !tbaa !27
  store { i64, ptr } %t440, ptr %l241, !tbaa !27
  %t441 = load ptr, ptr %l9, !tbaa !29
  %t443 = getelementptr %"compiler/typed:Promote", ptr %t441, i32 0, i32 1
  %t444 = load i32, ptr %t443, !tbaa !23
  %t446 = sext i32 %t444 to i64
  %t448 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !27
  %t450 = getelementptr { i64, [2 x i64] }, ptr %t449, i64 %t446
  %t451 = load { i64, [2 x i64] }, ptr %t450
  %t453 = call i1 @compiler_2ffree_2eisVar({ i64, [2 x i64] } %t451)
  store i1 %t453, ptr %l246
  br label %bb108
bb108:
  %t454 = load i1, ptr %l246, !tbaa !21
  store i1 %t454, ptr %l232, !tbaa !21
  br label %bb109
bb109:
  %t455 = load i1, ptr %l232, !tbaa !21
  br i1 %t455, label %bb110, label %bb111
bb110:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/free:walker", ptr %t456, i32 0, i32 0
  %t459 = load ptr, ptr %t458, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/free:walker", ptr %t460, i32 0, i32 1
  %t463 = load i64, ptr %t462, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t459, i64 %t463)
  br label %bb112
bb111:
  br label %bb113
bb112:
  br label %bb113
bb113:
  br label %bb514
bb114:
  %t466 = load ptr, ptr %l1, !tbaa !29
  store ptr %t466, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t467 = load ptr, ptr %l251, !tbaa !29
  %t468 = icmp ne ptr %t467, null
  br i1 %t468, label %bb115, label %bb116
bb115:
  %t470 = load ptr, ptr %l251, !tbaa !29
  %t471 = load i64, ptr %t470, !range !{i64 0, i64 18}
  %t473 = icmp eq i64 %t471, 6
  store i1 %t473, ptr %l252, !tbaa !21
  br label %bb116
bb116:
  %t474 = load i1, ptr %l252, !tbaa !21
  br i1 %t474, label %bb117, label %bb118
bb117:
  %t475 = load ptr, ptr %l1, !tbaa !29
  %t477 = getelementptr { i64, [5 x i64] }, ptr %t475, i32 0, i32 1
  %t478 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t477, i32 0, i32 0
  %t479 = load %"compiler/source:Span", ptr %t478
  store %"compiler/source:Span" %t479, ptr %l14
  %t481 = load ptr, ptr %l1, !tbaa !29
  %t483 = getelementptr { i64, [5 x i64] }, ptr %t481, i32 0, i32 1
  %t484 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t483, i32 0, i32 1
  %t485 = load i32, ptr %t484
  store i32 %t485, ptr %l15, !tbaa !23
  %t487 = load ptr, ptr %l1, !tbaa !29
  %t489 = getelementptr { i64, [5 x i64] }, ptr %t487, i32 0, i32 1
  %t490 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t489, i32 0, i32 2
  %t491 = load ptr, ptr %t490
  store ptr %t491, ptr %l16, !tbaa !29
  br label %bb119
bb118:
  br label %bb127
bb119:
  %t493 = ptrtoint ptr %v2 to i64
  store i64 %t493, ptr %l261, !tbaa !24
  %t494 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t494, label %bb120, label %bb121
bb120:
  %t496 = call ptr @__olang_region_make(ptr %v2)
  %t497 = ptrtoint ptr %t496 to i64
  store i64 %t497, ptr %l261, !tbaa !24
  br label %bb121
bb121:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load ptr, ptr %l16, !tbaa !29
  %t500 = load i32, ptr %l15, !tbaa !23
  %t501 = load %"compiler/source:Span", ptr %l14
  %t502 = load i64, ptr %l261
  %t503 = inttoptr i64 %t502 to ptr
  %t508 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecall(ptr %v0, ptr %v1, ptr %t503, ptr %t498, ptr %t499, i32 %t500, %"compiler/source:Span" %t501)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t508, ptr %l267
  br label %bb122
bb122:
  %t509 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t509, label %bb123, label %bb124
bb123:
  %t511 = load i64, ptr %l261
  %t512 = inttoptr i64 %t511 to ptr
  %t513 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l267, i32 0, i32 0
  %t514 = load { i64, ptr }, ptr %t513
  %t515 = extractvalue { i64, ptr } %t514, 1
  %t516 = call ptr @__olang_region_or(ptr %t515, ptr null)
  %t517 = icmp ne ptr %t516, null
  %t518 = select i1 %t517, ptr %t516, ptr null
  %t519 = icmp eq ptr %t518, %t512
  call void @__olang_region_settle(ptr %t512, i1 %t519)
  br label %bb124
bb124:
  %t520 = load ptr, ptr %lp2
  %t521 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t520
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t521, ptr %l269
  %t522 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l267
  %t523 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t522, ptr %t523
  %t524 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t524, label %bb125, label %bb126
bb125:
  %t526 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269, i32 0, i32 0
  %t527 = load { i64, ptr }, ptr %t526
  %t528 = extractvalue { i64, ptr } %t527, 1
  %t529 = call ptr @__olang_region_or(ptr %t528, ptr null)
  %t530 = icmp ne ptr %t529, null
  %t531 = select i1 %t530, ptr %t529, ptr null
  call void @__olang_region_drop(ptr %t531)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l269
  br label %bb126
bb126:
  br label %bb514
bb127:
  %t532 = load ptr, ptr %l1, !tbaa !29
  store ptr %t532, ptr %l271, !tbaa !29
  store i1 false, ptr %l272, !tbaa !21
  %t533 = load ptr, ptr %l271, !tbaa !29
  %t534 = icmp ne ptr %t533, null
  br i1 %t534, label %bb128, label %bb129
bb128:
  %t536 = load ptr, ptr %l271, !tbaa !29
  %t537 = load i64, ptr %t536, !range !{i64 0, i64 18}
  %t539 = icmp eq i64 %t537, 7
  store i1 %t539, ptr %l272, !tbaa !21
  br label %bb129
bb129:
  %t540 = load i1, ptr %l272, !tbaa !21
  br i1 %t540, label %bb130, label %bb131
bb130:
  %t541 = load ptr, ptr %l1, !tbaa !29
  %t543 = getelementptr { i64, [5 x i64] }, ptr %t541, i32 0, i32 1
  %t544 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t543, i32 0, i32 0
  %t545 = load %"compiler/source:Span", ptr %t544
  store %"compiler/source:Span" %t545, ptr %l17
  %t547 = load ptr, ptr %l1, !tbaa !29
  %t549 = getelementptr { i64, [5 x i64] }, ptr %t547, i32 0, i32 1
  %t550 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t549, i32 0, i32 1
  %t551 = load i32, ptr %t550
  store i32 %t551, ptr %l18, !tbaa !23
  %t553 = load ptr, ptr %l1, !tbaa !29
  %t555 = getelementptr { i64, [5 x i64] }, ptr %t553, i32 0, i32 1
  %t556 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t555, i32 0, i32 2
  %t557 = load ptr, ptr %t556
  store ptr %t557, ptr %l19, !tbaa !29
  br label %bb132
bb131:
  br label %bb187
bb132:
  %t559 = load ptr, ptr %l19, !tbaa !29
  %t561 = getelementptr %"compiler/typed:Make", ptr %t559, i32 0, i32 0
  %t562 = load i32, ptr %t561, !range !{i32 0, i32 5}
  %t564 = trunc i64 3 to i32
  %t565 = icmp eq i32 %t562, %t564
  br i1 %t565, label %bb133, label %bb134
bb133:
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = getelementptr %"compiler/free:walker", ptr %t567, i32 0, i32 0
  %t570 = load ptr, ptr %t569, !tbaa !29
  %t572 = getelementptr %"compiler/free:Free", ptr %t570, i32 0, i32 27
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/free:walker", ptr %t573, i32 0, i32 1
  %t576 = load i64, ptr %t575, !tbaa !24
  %t579 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t572, i64 %t576)
  store i1 %t579, ptr %l290
  br label %bb135
bb134:
  store i1 false, ptr %l284, !tbaa !21
  br label %bb136
bb135:
  %t580 = load i1, ptr %l290, !tbaa !21
  store i1 %t580, ptr %l284, !tbaa !21
  br label %bb136
bb136:
  %t581 = load i1, ptr %l284, !tbaa !21
  store i1 %t581, ptr %l20, !tbaa !21
  %t582 = load ptr, ptr %l19, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Make", ptr %t582, i32 0, i32 2
  %t585 = load { i64, ptr }, ptr %t584, !tbaa !27
  store { i64, ptr } %t585, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t587 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t589 = extractvalue { i64, ptr } %t587, 0
  store i64 %t589, ptr %l23, !tbaa !24
  br label %bb137
bb137:
  store %olang.scope zeroinitializer, ptr %s16
  %t591 = load i64, ptr %l22, !tbaa !24
  %t592 = load i64, ptr %l23, !tbaa !24
  %t595 = icmp slt i64 %t591, %t592
  %t597 = xor i1 %t595, true
  br i1 %t597, label %bb138, label %bb139
bb138:
  call void @__olang_scope_close(ptr %s16)
  br label %bb147
bb139:
  br label %bb140
bb140:
  %t599 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t599, ptr %l299, !tbaa !27
  %t600 = load i64, ptr %l22, !tbaa !24
  %t602 = getelementptr { i64, ptr }, ptr %l299, i32 0, i32 1
  %t603 = load ptr, ptr %t602, !tbaa !27
  %t604 = getelementptr ptr, ptr %t603, i64 %t600
  %t605 = load ptr, ptr %t604, !tbaa !39
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t611 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s16, ptr %t607, ptr %t605)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t611, ptr %l304
  br label %bb141
bb141:
  %t612 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l304
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t612, ptr %l25
  %t613 = load i1, ptr %l20, !tbaa !21
  %t615 = xor i1 %t613, true
  br i1 %t615, label %bb142, label %bb143
bb142:
  %t617 = load ptr, ptr %lp2
  %t620 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s16, ptr %t617, ptr %l25)
  store i64 %t620, ptr %l309
  br label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s16)
  br label %bb146
bb146:
  %t621 = load i64, ptr %l22, !tbaa !24
  %t623 = add i64 %t621, 1
  store i64 %t623, ptr %l22, !tbaa !24
  br label %bb137
bb147:
  %t625 = load ptr, ptr %l19, !tbaa !29
  %t627 = getelementptr %"compiler/typed:Make", ptr %t625, i32 0, i32 3
  %t628 = load ptr, ptr %t627, !tbaa !29
  %t630 = icmp eq ptr %t628, null
  %t632 = xor i1 %t630, true
  br i1 %t632, label %bb148, label %bb149
bb148:
  store %olang.scope zeroinitializer, ptr %s19
  %t634 = load ptr, ptr %l0, !tbaa !29
  store ptr %t634, ptr %l316, !tbaa !29
  %t635 = load ptr, ptr %l19, !tbaa !29
  %t637 = getelementptr %"compiler/typed:Make", ptr %t635, i32 0, i32 3
  %t638 = load ptr, ptr %t637, !tbaa !29
  %t640 = icmp eq ptr %t638, null
  br i1 %t640, label %bb150, label %bb151
bb149:
  br label %bb154
bb150:
  call void @__olang_check_failed(ptr @olang_loc_dc7e16ca98e3c304_3c9b7555f95fce88)
  unreachable
bb151:
  br label %bb152
bb152:
  %t642 = load ptr, ptr %l19, !tbaa !29
  %t644 = getelementptr %"compiler/typed:Make", ptr %t642, i32 0, i32 3
  %t645 = load ptr, ptr %t644, !tbaa !29
  %t646 = load ptr, ptr %l316, !tbaa !29
  %t648 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s19, ptr %t646, ptr %t645)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t648, ptr %l322
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s19)
  br label %bb154
bb154:
  %t649 = load ptr, ptr %l19, !tbaa !29
  %t651 = getelementptr %"compiler/typed:Make", ptr %t649, i32 0, i32 4
  %t652 = load i32, ptr %t651, !tbaa !23
  %t654 = icmp sge i32 %t652, 0
  br i1 %t654, label %bb155, label %bb156
bb155:
  %t656 = load ptr, ptr %lp2
  store ptr %t656, ptr %l326, !tbaa !29
  %t657 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t658 = load ptr, ptr %l19, !tbaa !29
  %t660 = getelementptr %"compiler/typed:Make", ptr %t658, i32 0, i32 4
  %t661 = load i32, ptr %t660, !tbaa !23
  %t663 = sext i32 %t661 to i64
  %t666 = call i64 @compiler_2ffree_2eorig(i64 %t657, i64 %t663)
  store i64 %t666, ptr %l331
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t667 = load ptr, ptr %l326, !tbaa !29
  %t668 = load i64, ptr %l331, !tbaa !24
  %t669 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t667, i64 %t668)
  store i64 %t669, ptr %l332
  br label %bb158
bb158:
  br label %bb159
bb159:
  %t670 = load ptr, ptr %l19, !tbaa !29
  %t672 = getelementptr %"compiler/typed:Make", ptr %t670, i32 0, i32 0
  %t673 = load i32, ptr %t672, !range !{i32 0, i32 5}
  %t675 = trunc i64 4 to i32
  %t676 = icmp eq i32 %t673, %t675
  br i1 %t676, label %bb160, label %bb161
bb160:
  %t678 = ptrtoint ptr %v2 to i64
  store i64 %t678, ptr %l336, !tbaa !24
  %t679 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t679, label %bb162, label %bb163
bb161:
  br label %bb169
bb162:
  %t681 = call ptr @__olang_region_make(ptr %v2)
  %t682 = ptrtoint ptr %t681 to i64
  store i64 %t682, ptr %l336, !tbaa !24
  br label %bb163
bb163:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = getelementptr %"compiler/free:walker", ptr %t683, i32 0, i32 0
  %t686 = load ptr, ptr %t685, !tbaa !29
  %t687 = load ptr, ptr %lp2
  %t688 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t687
  %t690 = load i64, ptr %l336
  %t691 = inttoptr i64 %t690 to ptr
  %t692 = call ptr @__olang_scope_alloc_a(ptr %t691, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t688, ptr %t692
  %t693 = load i64, ptr %l336
  %t694 = inttoptr i64 %t693 to ptr
  %t695 = load i64, ptr %l336
  %t696 = inttoptr i64 %t695 to ptr
  %t699 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %t694, ptr %t696, ptr %t686, ptr %t692)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t699, ptr %l342
  br label %bb164
bb164:
  %t700 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t700, label %bb165, label %bb166
bb165:
  %t702 = load i64, ptr %l336
  %t703 = inttoptr i64 %t702 to ptr
  %t704 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l342, i32 0, i32 0
  %t705 = load { i64, ptr }, ptr %t704
  %t706 = extractvalue { i64, ptr } %t705, 1
  %t707 = call ptr @__olang_region_or(ptr %t706, ptr null)
  %t708 = icmp ne ptr %t707, null
  %t709 = select i1 %t708, ptr %t707, ptr null
  %t710 = icmp eq ptr %t709, %t703
  call void @__olang_region_settle(ptr %t703, i1 %t710)
  br label %bb166
bb166:
  %t711 = load ptr, ptr %lp2
  %t712 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t711
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t712, ptr %l344
  %t713 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l342
  %t714 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t713, ptr %t714
  %t715 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t715, label %bb167, label %bb168
bb167:
  %t717 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l344, i32 0, i32 0
  %t718 = load { i64, ptr }, ptr %t717
  %t719 = extractvalue { i64, ptr } %t718, 1
  %t720 = call ptr @__olang_region_or(ptr %t719, ptr null)
  %t721 = icmp ne ptr %t720, null
  %t722 = select i1 %t721, ptr %t720, ptr null
  call void @__olang_region_drop(ptr %t722)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l344
  br label %bb168
bb168:
  br label %bb169
bb169:
  %t723 = load ptr, ptr %l19, !tbaa !29
  %t725 = getelementptr %"compiler/typed:Make", ptr %t723, i32 0, i32 0
  %t726 = load i32, ptr %t725, !range !{i32 0, i32 5}
  %t728 = trunc i64 4 to i32
  %t729 = icmp eq i32 %t726, %t728
  br i1 %t729, label %bb170, label %bb171
bb170:
  %t731 = load ptr, ptr %l0, !tbaa !29
  %t733 = getelementptr %"compiler/free:walker", ptr %t731, i32 0, i32 34
  %t734 = load i64, ptr %t733, !tbaa !24
  %t736 = icmp sge i64 %t734, 0
  store i1 %t736, ptr %l349, !tbaa !21
  br label %bb172
bb171:
  store i1 false, ptr %l349, !tbaa !21
  br label %bb172
bb172:
  %t738 = load i1, ptr %l349, !tbaa !21
  br i1 %t738, label %bb173, label %bb174
bb173:
  %t739 = load ptr, ptr %l19, !tbaa !29
  %t741 = getelementptr %"compiler/typed:Make", ptr %t739, i32 0, i32 4
  %t742 = load i32, ptr %t741, !tbaa !23
  %t744 = sext i32 %t742 to i64
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t747 = getelementptr %"compiler/free:walker", ptr %t745, i32 0, i32 34
  %t748 = load i64, ptr %t747, !tbaa !24
  %t751 = icmp eq i64 %t744, %t748
  store i1 %t751, ptr %l353, !tbaa !21
  br label %bb175
bb174:
  store i1 false, ptr %l353, !tbaa !21
  br label %bb175
bb175:
  %t753 = load i1, ptr %l353, !tbaa !21
  store i1 %t753, ptr %l26, !tbaa !21
  %t754 = load ptr, ptr %l19, !tbaa !29
  %t756 = getelementptr %"compiler/typed:Make", ptr %t754, i32 0, i32 0
  %t757 = load i32, ptr %t756, !range !{i32 0, i32 5}
  %t759 = trunc i64 4 to i32
  %t760 = icmp eq i32 %t757, %t759
  br i1 %t760, label %bb176, label %bb177
bb176:
  store i1 true, ptr %l363, !tbaa !21
  br label %bb178
bb177:
  %t762 = load ptr, ptr %l19, !tbaa !29
  %t764 = getelementptr %"compiler/typed:Make", ptr %t762, i32 0, i32 0
  %t765 = load i32, ptr %t764, !range !{i32 0, i32 5}
  %t767 = trunc i64 3 to i32
  %t768 = icmp eq i32 %t765, %t767
  store i1 %t768, ptr %l363, !tbaa !21
  br label %bb178
bb178:
  %t770 = load i1, ptr %l363, !tbaa !21
  br i1 %t770, label %bb179, label %bb180
bb179:
  %t771 = load i1, ptr %l26, !tbaa !21
  %t773 = xor i1 %t771, true
  store i1 %t773, ptr %l367, !tbaa !21
  br label %bb181
bb180:
  store i1 false, ptr %l367, !tbaa !21
  br label %bb181
bb181:
  %t775 = load i1, ptr %l367, !tbaa !21
  br i1 %t775, label %bb182, label %bb183
bb182:
  store %olang.scope zeroinitializer, ptr %s22
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t777 = load i32, ptr %l18, !tbaa !23
  %t778 = load %"compiler/source:Span", ptr %l17
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %s22, ptr %t776, i32 %t777, %"compiler/source:Span" %t778, { i64, ptr } { i64 28, ptr getelementptr inbounds (<{ i64, [28 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb184
bb183:
  br label %bb185
bb184:
  call void @__olang_scope_close(ptr %s22)
  br label %bb185
bb185:
  %t782 = load ptr, ptr %l0, !tbaa !29
  %t783 = load ptr, ptr %l19, !tbaa !29
  %t784 = load i32, ptr %l18, !tbaa !23
  %t785 = load %"compiler/source:Span", ptr %l17
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emakeStores(ptr %v0, ptr %v1, ptr %t782, ptr %t783, i32 %t784, %"compiler/source:Span" %t785)
  br label %bb186
bb186:
  br label %bb514
bb187:
  %t790 = load ptr, ptr %l1, !tbaa !29
  store ptr %t790, ptr %l377, !tbaa !29
  store i1 false, ptr %l378, !tbaa !21
  %t791 = load ptr, ptr %l377, !tbaa !29
  %t792 = icmp ne ptr %t791, null
  br i1 %t792, label %bb188, label %bb189
bb188:
  %t794 = load ptr, ptr %l377, !tbaa !29
  %t795 = load i64, ptr %t794, !range !{i64 0, i64 18}
  %t797 = icmp eq i64 %t795, 8
  store i1 %t797, ptr %l378, !tbaa !21
  br label %bb189
bb189:
  %t798 = load i1, ptr %l378, !tbaa !21
  br i1 %t798, label %bb190, label %bb191
bb190:
  %t799 = load ptr, ptr %l1, !tbaa !29
  %t801 = getelementptr { i64, [5 x i64] }, ptr %t799, i32 0, i32 1
  %t802 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t801, i32 0, i32 1
  %t803 = load i32, ptr %t802
  store i32 %t803, ptr %l27, !tbaa !23
  %t805 = load ptr, ptr %l1, !tbaa !29
  %t807 = getelementptr { i64, [5 x i64] }, ptr %t805, i32 0, i32 1
  %t808 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t807, i32 0, i32 2
  %t809 = load ptr, ptr %t808
  store ptr %t809, ptr %l28, !tbaa !29
  br label %bb192
bb191:
  br label %bb220
bb192:
  %t811 = load ptr, ptr %l28, !tbaa !29
  %t813 = getelementptr %"compiler/typed:Collect", ptr %t811, i32 0, i32 0
  %t814 = load ptr, ptr %t813, !tbaa !29
  %t816 = icmp eq ptr %t814, null
  %t818 = xor i1 %t816, true
  br i1 %t818, label %bb193, label %bb194
bb193:
  store %olang.scope zeroinitializer, ptr %s24
  %t820 = load ptr, ptr %l0, !tbaa !29
  store ptr %t820, ptr %l389, !tbaa !29
  %t821 = load ptr, ptr %l28, !tbaa !29
  %t823 = getelementptr %"compiler/typed:Collect", ptr %t821, i32 0, i32 0
  %t824 = load ptr, ptr %t823, !tbaa !29
  %t826 = icmp eq ptr %t824, null
  br i1 %t826, label %bb195, label %bb196
bb194:
  br label %bb199
bb195:
  call void @__olang_check_failed(ptr @olang_loc_c4f9ad7cc46c30d3_40011a8198a2fca7)
  unreachable
bb196:
  br label %bb197
bb197:
  %t828 = load ptr, ptr %l28, !tbaa !29
  %t830 = getelementptr %"compiler/typed:Collect", ptr %t828, i32 0, i32 0
  %t831 = load ptr, ptr %t830, !tbaa !29
  %t832 = load ptr, ptr %l389, !tbaa !29
  %t834 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s24, ptr %t832, ptr %t831)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t834, ptr %l395
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s24)
  br label %bb199
bb199:
  %t835 = load ptr, ptr %l0, !tbaa !29
  %t837 = getelementptr %"compiler/free:walker", ptr %t835, i32 0, i32 10
  store ptr %t837, ptr %l397, !tbaa !29
  %t838 = load ptr, ptr %l0, !tbaa !29
  %t840 = getelementptr %"compiler/free:walker", ptr %t838, i32 0, i32 0
  %t841 = load ptr, ptr %t840, !tbaa !29
  store ptr %t841, ptr %l399, !tbaa !29
  %t842 = load ptr, ptr %l0, !tbaa !29
  %t844 = getelementptr %"compiler/free:walker", ptr %t842, i32 0, i32 0
  %t845 = load ptr, ptr %t844, !tbaa !29
  %t846 = load i32, ptr %l27, !tbaa !23
  %t849 = call i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %t845, i32 %t846)
  store i32 %t849, ptr %l403
  br label %bb200
bb200:
  %t850 = load ptr, ptr %l399, !tbaa !29
  %t851 = load i32, ptr %l403, !tbaa !23
  %t852 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t850, i32 %t851, i64 -1)
  store i64 %t852, ptr %l404
  br label %bb201
bb201:
  %t853 = load ptr, ptr %l397, !tbaa !29
  %t854 = load i64, ptr %l404, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t853, i64 %t854)
  br label %bb202
bb202:
  %t855 = load ptr, ptr %l0, !tbaa !29
  %t857 = getelementptr %"compiler/free:walker", ptr %t855, i32 0, i32 40
  store ptr %t857, ptr %l406, !tbaa !29
  %t858 = ptrtoint ptr %v0 to i64
  store i64 %t858, ptr %l407, !tbaa !24
  %t859 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t859, label %bb203, label %bb204
bb203:
  %t861 = call ptr @__olang_region_make(ptr %v0)
  %t862 = ptrtoint ptr %t861 to i64
  store i64 %t862, ptr %l407, !tbaa !24
  br label %bb204
bb204:
  %t863 = load i64, ptr %l407
  %t864 = inttoptr i64 %t863 to ptr
  %t865 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t864, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t865, ptr %l409
  br label %bb205
bb205:
  %t866 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l409
  %t867 = load i64, ptr %l407
  %t868 = inttoptr i64 %t867 to ptr
  %t869 = call ptr @__olang_scope_alloc_a(ptr %t868, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t866, ptr %t869
  %t870 = load ptr, ptr %l406, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v0, ptr %t870, ptr %t869)
  br label %bb206
bb206:
  %t872 = load ptr, ptr %l0, !tbaa !29
  %t873 = load ptr, ptr %l28, !tbaa !29
  %t875 = getelementptr %"compiler/typed:Collect", ptr %t873, i32 0, i32 1
  %t876 = load ptr, ptr %t875, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t872, ptr %t876)
  br label %bb207
bb207:
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t881 = getelementptr %"compiler/free:walker", ptr %t879, i32 0, i32 10
  %t883 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t881)
  %t884 = extractvalue { i32, i64 } %t883, 1
  %t885 = extractvalue { i32, i64 } %t883, 0
  store i32 %t885, ptr %l418
  %t886 = icmp ne i32 %t885, 0
  br i1 %t886, label %bb209, label %ok.887, !prof !99
ok.887:
  store i64 %t884, ptr %l417
  br label %bb208
bb208:
  %t888 = load i64, ptr %l417, !tbaa !24
  store i64 %t888, ptr %l414, !tbaa !24
  br label %bb211
bb209:
  br label %bb210
bb210:
  br label %bb211
bb211:
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t891 = getelementptr %"compiler/free:walker", ptr %t889, i32 0, i32 40
  %t893 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H5927ce9e0c48ffa4d9cf1c64f8f12c1b(ptr %v0, ptr %v0, ptr %t891)
  %t894 = extractvalue { i32, ptr } %t893, 1
  %t895 = extractvalue { i32, ptr } %t893, 0
  store i32 %t895, ptr %l423
  %t896 = icmp ne i32 %t895, 0
  br i1 %t896, label %bb213, label %ok.897, !prof !99
ok.897:
  store ptr %t894, ptr %l422
  br label %bb212
bb212:
  %t898 = load ptr, ptr %l422, !tbaa !29
  store ptr %t898, ptr %l419, !tbaa !29
  br label %bb216
bb213:
  br label %bb214
bb214:
  %t899 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t899, ptr %l424
  br label %bb215
bb215:
  %t900 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l424
  %t901 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t900, ptr %t901
  store ptr %t901, ptr %l419, !tbaa !29
  br label %bb216
bb216:
  %t903 = load ptr, ptr %l419, !tbaa !29
  %t904 = load ptr, ptr %lp2
  %t908 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %v0, ptr %t904, ptr %t903)
  store i64 %t908, ptr %l428
  br label %bb217
bb217:
  %t909 = load ptr, ptr %lp2
  store ptr %t909, ptr %l429, !tbaa !29
  %t910 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t911 = load ptr, ptr %l28, !tbaa !29
  %t913 = getelementptr %"compiler/typed:Collect", ptr %t911, i32 0, i32 2
  %t914 = load i32, ptr %t913, !tbaa !23
  %t916 = sext i32 %t914 to i64
  %t919 = call i64 @compiler_2ffree_2eorig(i64 %t910, i64 %t916)
  store i64 %t919, ptr %l434
  br label %bb218
bb218:
  %t920 = load ptr, ptr %l429, !tbaa !29
  %t921 = load i64, ptr %l434, !tbaa !24
  %t922 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t920, i64 %t921)
  store i64 %t922, ptr %l435
  br label %bb219
bb219:
  br label %bb514
bb220:
  %t923 = load ptr, ptr %l1, !tbaa !29
  store ptr %t923, ptr %l436, !tbaa !29
  store i1 false, ptr %l437, !tbaa !21
  %t924 = load ptr, ptr %l436, !tbaa !29
  %t925 = icmp ne ptr %t924, null
  br i1 %t925, label %bb221, label %bb222
bb221:
  %t927 = load ptr, ptr %l436, !tbaa !29
  %t928 = load i64, ptr %t927, !range !{i64 0, i64 18}
  %t930 = icmp eq i64 %t928, 9
  store i1 %t930, ptr %l437, !tbaa !21
  br label %bb222
bb222:
  %t931 = load i1, ptr %l437, !tbaa !21
  br i1 %t931, label %bb223, label %bb224
bb223:
  %t932 = load ptr, ptr %l1, !tbaa !29
  %t934 = getelementptr { i64, [5 x i64] }, ptr %t932, i32 0, i32 1
  %t935 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t934, i32 0, i32 0
  %t936 = load %"compiler/source:Span", ptr %t935
  store %"compiler/source:Span" %t936, ptr %l30
  %t938 = load ptr, ptr %l1, !tbaa !29
  %t940 = getelementptr { i64, [5 x i64] }, ptr %t938, i32 0, i32 1
  %t941 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t940, i32 0, i32 2
  %t942 = load i32, ptr %t941, !range !{i32 0, i32 52}
  store i32 %t942, ptr %l31
  %t944 = load ptr, ptr %l1, !tbaa !29
  %t946 = getelementptr { i64, [5 x i64] }, ptr %t944, i32 0, i32 1
  %t947 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t946, i32 0, i32 4
  %t948 = load { i64, ptr }, ptr %t947
  store { i64, ptr } %t948, ptr %l32, !tbaa !27
  br label %bb225
bb224:
  br label %bb283
bb225:
  %t950 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t952 = trunc i64 29 to i32
  %t953 = icmp eq i32 %t950, %t952
  br i1 %t953, label %bb226, label %bb227
bb226:
  %t955 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t957 = extractvalue { i64, ptr } %t955, 0
  %t959 = icmp eq i64 %t957, 1
  store i1 %t959, ptr %l448, !tbaa !21
  br label %bb228
bb227:
  store i1 false, ptr %l448, !tbaa !21
  br label %bb228
bb228:
  %t961 = load i1, ptr %l448, !tbaa !21
  br i1 %t961, label %bb229, label %bb230
bb229:
  %t962 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t962, ptr %l453, !tbaa !27
  %t963 = getelementptr { i64, ptr }, ptr %l453, i32 0, i32 1
  %t964 = load ptr, ptr %t963, !tbaa !27
  %t965 = getelementptr ptr, ptr %t964, i64 0
  %t966 = load ptr, ptr %t965, !tbaa !39
  %t968 = call i64 @compiler_2ffree_2ereadLocalOf(ptr %v1, ptr %t966)
  store i64 %t968, ptr %l455
  br label %bb231
bb230:
  store i64 -1, ptr %l452, !tbaa !24
  br label %bb232
bb231:
  %t969 = load i64, ptr %l455, !tbaa !24
  store i64 %t969, ptr %l452, !tbaa !24
  br label %bb232
bb232:
  %t970 = load i64, ptr %l452, !tbaa !24
  store i64 %t970, ptr %l33, !tbaa !24
  %t971 = load ptr, ptr %l0, !tbaa !29
  %t972 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t973 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t977 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eheldDrop(ptr %v0, ptr %v1, ptr %t971, i32 %t972, { i64, ptr } %t973)
  store i64 %t977, ptr %l459
  br label %bb233
bb233:
  %t978 = load i64, ptr %l459, !tbaa !24
  store i64 %t978, ptr %l34, !tbaa !24
  %t979 = load i64, ptr %l34, !tbaa !24
  %t981 = icmp sge i64 %t979, 0
  br i1 %t981, label %bb234, label %bb235
bb234:
  %t983 = load ptr, ptr %l0, !tbaa !29
  %t984 = load %"compiler/source:Span", ptr %l30
  %t985 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t985, ptr %l464, !tbaa !27
  %t986 = getelementptr { i64, ptr }, ptr %l464, i32 0, i32 1
  %t987 = load ptr, ptr %t986, !tbaa !27
  %t988 = getelementptr ptr, ptr %t987, i64 0
  %t989 = load ptr, ptr %t988, !tbaa !39
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCalls(ptr %v0, ptr %v1, ptr %t983, %"compiler/source:Span" %t984, ptr %t989)
  br label %bb236
bb235:
  br label %bb251
bb236:
  store %olang.scope zeroinitializer, ptr %s28
  %t993 = load ptr, ptr %l0, !tbaa !29
  %t995 = getelementptr %"compiler/free:walker", ptr %t993, i32 0, i32 0
  %t996 = load ptr, ptr %t995, !tbaa !29
  store ptr %t996, ptr %l467, !tbaa !29
  %t997 = load ptr, ptr %l0, !tbaa !29
  %t999 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t997)
  store ptr %t999, ptr %l469
  br label %bb237
bb237:
  %t1000 = load ptr, ptr %l469, !tbaa !29
  %t1002 = getelementptr %"compiler/typed:Body", ptr %t1000, i32 0, i32 7
  %t1003 = load i64, ptr %l34, !tbaa !24
  %t1006 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t1002, i64 %t1003)
  store %"compiler/typed:Local" %t1006, ptr %l473
  br label %bb238
bb238:
  %t1007 = getelementptr %"compiler/typed:Local", ptr %l473, i32 0, i32 2
  %t1008 = load i32, ptr %t1007, !tbaa !23
  %t1009 = load ptr, ptr %l467, !tbaa !29
  %t1011 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s28, ptr %t1009, i32 %t1008)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1011, ptr %l475
  br label %bb239
bb239:
  %t1012 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l475
  %t1013 = call ptr @__olang_scope_alloc_a(ptr %s28, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1012, ptr %t1013
  store ptr %t1013, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb240
bb240:
  store %olang.scope zeroinitializer, ptr %s29
  %t1015 = load i64, ptr %l36, !tbaa !24
  store i64 %t1015, ptr %l477, !tbaa !24
  %t1016 = load ptr, ptr %l35, !tbaa !29
  %t1018 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s28, ptr %t1016)
  store i64 %t1018, ptr %l479
  br label %bb241
bb241:
  %t1019 = load i64, ptr %l477, !tbaa !24
  %t1020 = load i64, ptr %l479, !tbaa !24
  %t1021 = icmp slt i64 %t1019, %t1020
  %t1023 = xor i1 %t1021, true
  br i1 %t1023, label %bb242, label %bb243
bb242:
  call void @__olang_scope_close(ptr %s29)
  br label %bb250
bb243:
  br label %bb244
bb244:
  %t1025 = load ptr, ptr %l35, !tbaa !29
  %t1026 = load i64, ptr %l36, !tbaa !24
  %t1029 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s28, ptr %s28, ptr %t1025, i64 %t1026)
  store %"compiler/free:leaf" %t1029, ptr %l484
  br label %bb245
bb245:
  %t1031 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s29, ptr %l484)
  store %"compiler/free:leaf" %t1031, ptr %l486
  br label %bb246
bb246:
  %t1032 = load %"compiler/free:leaf", ptr %l486
  store %"compiler/free:leaf" %t1032, ptr %l37
  %t1033 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1033, ptr %l487, !tbaa !29
  %t1034 = getelementptr %"compiler/free:leaf", ptr %l37, i32 0, i32 1
  %t1035 = load i64, ptr %t1034, !tbaa !24
  store i64 %t1035, ptr %l488, !tbaa !24
  %t1036 = load i64, ptr @G_2ecompiler_2ffree_2eLHeld, !tbaa !24
  store i64 %t1036, ptr %l489, !tbaa !24
  %t1037 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t1037, ptr %l490
  %t1038 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s29, i32 0, i32 0)
  store %"compiler/source:Span" %t1038, ptr %l491
  br label %bb247
bb247:
  %t1039 = load ptr, ptr %l487, !tbaa !29
  %t1040 = load i64, ptr %l488, !tbaa !24
  %t1041 = load i64, ptr %l489, !tbaa !24
  %t1042 = load %"compiler/source:Span", ptr %l490
  %t1043 = load %"compiler/source:Span", ptr %l491
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t1039, i64 %t1040, i64 %t1041, %"compiler/source:Span" %t1042, %"compiler/source:Span" %t1043, i64 -1)
  br label %bb248
bb248:
  call void @__olang_scope_close(ptr %s29)
  br label %bb249
bb249:
  %t1044 = load i64, ptr %l36, !tbaa !24
  %t1046 = add i64 %t1044, 1
  store i64 %t1046, ptr %l36, !tbaa !24
  br label %bb240
bb250:
  call void @__olang_scope_close(ptr %s28)
  %t1048 = load ptr, ptr %lp2
  %t1049 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1048
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1049, ptr %rv
  br label %ret
bb251:
  %t1051 = load i64, ptr %l33, !tbaa !24
  %t1053 = icmp sge i64 %t1051, 0
  br i1 %t1053, label %bb252, label %bb253
bb252:
  %t1055 = load ptr, ptr %l0, !tbaa !29
  %t1057 = getelementptr %"compiler/free:walker", ptr %t1055, i32 0, i32 2
  %t1058 = load i1, ptr %t1057, !tbaa !21
  br i1 %t1058, label %bb254, label %bb255
bb253:
  %t1060 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1060, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t1062 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1064 = extractvalue { i64, ptr } %t1062, 0
  store i64 %t1064, ptr %l41, !tbaa !24
  br label %bb267
bb254:
  store %olang.scope zeroinitializer, ptr %s32
  %t1066 = load ptr, ptr %l0, !tbaa !29
  %t1068 = getelementptr %"compiler/free:walker", ptr %t1066, i32 0, i32 3
  %t1069 = load i64, ptr %l33, !tbaa !24
  %t1072 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1068, i64 %t1069)
  store ptr %t1072, ptr %l502
  br label %bb256
bb255:
  br label %bb266
bb256:
  %t1073 = load ptr, ptr %l502, !tbaa !29
  %t1074 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1073
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1074, ptr %l503
  %t1076 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s32, ptr %l503)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1076, ptr %l505
  br label %bb257
bb257:
  %t1077 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l505
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1077, ptr %l38
  %t1078 = load ptr, ptr %l0, !tbaa !29
  %t1080 = getelementptr %"compiler/free:walker", ptr %t1078, i32 0, i32 0
  %t1081 = load ptr, ptr %t1080, !tbaa !29
  %t1083 = getelementptr %"compiler/free:Free", ptr %t1081, i32 0, i32 14
  store ptr %t1083, ptr %l508, !tbaa !29
  %t1084 = load ptr, ptr %l0, !tbaa !29
  %t1086 = getelementptr %"compiler/free:walker", ptr %t1084, i32 0, i32 1
  %t1087 = load i64, ptr %t1086, !tbaa !24
  store i64 %t1087, ptr %l510, !tbaa !24
  %t1088 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t1088, ptr %l511
  %t1089 = ptrtoint ptr %s32 to i64
  store i64 %t1089, ptr %l512, !tbaa !24
  %t1090 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aretire_2e2
  br i1 %t1090, label %bb258, label %bb259
bb258:
  %t1092 = call ptr @__olang_region_make(ptr %s32)
  %t1093 = ptrtoint ptr %t1092 to i64
  store i64 %t1093, ptr %l512, !tbaa !24
  br label %bb259
bb259:
  %t1094 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1094, ptr %l514
  %t1095 = load i64, ptr %l512
  %t1096 = inttoptr i64 %t1095 to ptr
  %t1098 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t1096, ptr %l514)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1098, ptr %l516
  br label %bb260
bb260:
  %t1099 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aretire_2e2
  br i1 %t1099, label %bb261, label %bb262
bb261:
  %t1101 = load i64, ptr %l512
  %t1102 = inttoptr i64 %t1101 to ptr
  %t1103 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l516, i32 0, i32 0
  %t1104 = load { i64, ptr }, ptr %t1103
  %t1105 = extractvalue { i64, ptr } %t1104, 1
  %t1106 = call ptr @__olang_region_or(ptr %t1105, ptr null)
  %t1107 = icmp ne ptr %t1106, null
  %t1108 = select i1 %t1107, ptr %t1106, ptr null
  %t1109 = icmp eq ptr %t1108, %t1102
  call void @__olang_region_settle(ptr %t1102, i1 %t1109)
  br label %bb262
bb262:
  %t1110 = load i64, ptr %l510, !tbaa !24
  %t1111 = load %"compiler/source:Span", ptr %l511
  %t1112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l516
  %t1113 = call %"compiler/free:retire" @compiler_2ffree_3aretire_2ector(ptr %s32, ptr %s32, i64 %t1110, %"compiler/source:Span" %t1111, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1112)
  store %"compiler/free:retire" %t1113, ptr %l518
  br label %bb263
bb263:
  %t1115 = call %"compiler/free:retire" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aretire(ptr %s32, ptr %l518)
  store %"compiler/free:retire" %t1115, ptr %l520
  br label %bb264
bb264:
  %t1116 = load ptr, ptr %l508, !tbaa !29
  %t1117 = load %"compiler/free:retire", ptr %l520
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2ePush_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %s32, ptr %t1116, %"compiler/free:retire" %t1117)
  br label %bb265
bb265:
  call void @__olang_scope_close(ptr %s32)
  br label %bb266
bb266:
  br label %bb275
bb267:
  store %olang.scope zeroinitializer, ptr %s35
  %t1118 = load i64, ptr %l40, !tbaa !24
  %t1119 = load i64, ptr %l41, !tbaa !24
  %t1122 = icmp slt i64 %t1118, %t1119
  %t1124 = xor i1 %t1122, true
  br i1 %t1124, label %bb268, label %bb269
bb268:
  call void @__olang_scope_close(ptr %s35)
  br label %bb274
bb269:
  br label %bb270
bb270:
  %t1126 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t1126, ptr %l528, !tbaa !27
  %t1127 = load i64, ptr %l40, !tbaa !24
  %t1129 = getelementptr { i64, ptr }, ptr %l528, i32 0, i32 1
  %t1130 = load ptr, ptr %t1129, !tbaa !27
  %t1131 = getelementptr ptr, ptr %t1130, i64 %t1127
  %t1132 = load ptr, ptr %t1131, !tbaa !39
  %t1134 = load ptr, ptr %lp2
  store ptr %t1134, ptr %l531, !tbaa !29
  %t1135 = load ptr, ptr %l0, !tbaa !29
  %t1139 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s35, ptr %t1135, ptr %t1132)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1139, ptr %l534
  br label %bb271
bb271:
  %t1140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l534
  %t1141 = call ptr @__olang_scope_alloc_a(ptr %s35, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1140, ptr %t1141
  %t1142 = load ptr, ptr %l531, !tbaa !29
  %t1144 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s35, ptr %t1142, ptr %t1141)
  store i64 %t1144, ptr %l536
  br label %bb272
bb272:
  call void @__olang_scope_close(ptr %s35)
  br label %bb273
bb273:
  %t1145 = load i64, ptr %l40, !tbaa !24
  %t1147 = add i64 %t1145, 1
  store i64 %t1147, ptr %l40, !tbaa !24
  br label %bb267
bb274:
  br label %bb275
bb275:
  %t1149 = load i32, ptr %l31, !range !{i32 0, i32 52}
  %t1151 = trunc i64 30 to i32
  %t1152 = icmp eq i32 %t1149, %t1151
  br i1 %t1152, label %bb276, label %bb277
bb276:
  %t1154 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t1156 = extractvalue { i64, ptr } %t1154, 0
  %t1158 = icmp eq i64 %t1156, 1
  store i1 %t1158, ptr %l541, !tbaa !21
  br label %bb278
bb277:
  store i1 false, ptr %l541, !tbaa !21
  br label %bb278
bb278:
  %t1160 = load i1, ptr %l541, !tbaa !21
  br i1 %t1160, label %bb279, label %bb280
bb279:
  %t1161 = load ptr, ptr %l0, !tbaa !29
  %t1162 = load %"compiler/source:Span", ptr %l30
  %t1163 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1163, ptr %l547, !tbaa !27
  %t1164 = getelementptr { i64, ptr }, ptr %l547, i32 0, i32 1
  %t1165 = load ptr, ptr %t1164, !tbaa !27
  %t1166 = getelementptr ptr, ptr %t1165, i64 0
  %t1167 = load ptr, ptr %t1166, !tbaa !39
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCalls(ptr %v0, ptr %v1, ptr %t1161, %"compiler/source:Span" %t1162, ptr %t1167)
  br label %bb281
bb280:
  br label %bb282
bb281:
  br label %bb282
bb282:
  br label %bb514
bb283:
  %t1171 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1171, ptr %l549, !tbaa !29
  store i1 false, ptr %l550, !tbaa !21
  %t1172 = load ptr, ptr %l549, !tbaa !29
  %t1173 = icmp ne ptr %t1172, null
  br i1 %t1173, label %bb284, label %bb285
bb284:
  %t1175 = load ptr, ptr %l549, !tbaa !29
  %t1176 = load i64, ptr %t1175, !range !{i64 0, i64 18}
  %t1178 = icmp eq i64 %t1176, 10
  store i1 %t1178, ptr %l550, !tbaa !21
  br label %bb285
bb285:
  %t1179 = load i1, ptr %l550, !tbaa !21
  br i1 %t1179, label %bb286, label %bb287
bb286:
  %t1180 = load ptr, ptr %l1, !tbaa !29
  %t1182 = getelementptr { i64, [5 x i64] }, ptr %t1180, i32 0, i32 1
  %t1183 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1182, i32 0, i32 2
  %t1184 = load ptr, ptr %t1183
  store ptr %t1184, ptr %l43, !tbaa !29
  br label %bb288
bb287:
  br label %bb299
bb288:
  store %olang.scope zeroinitializer, ptr %s38
  %t1186 = ptrtoint ptr %v2 to i64
  store i64 %t1186, ptr %l555, !tbaa !24
  %t1187 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1187, label %bb289, label %bb290
bb289:
  %t1189 = call ptr @__olang_region_make(ptr %v2)
  %t1190 = ptrtoint ptr %t1189 to i64
  store i64 %t1190, ptr %l555, !tbaa !24
  br label %bb290
bb290:
  %t1191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1191, ptr %l557, !tbaa !29
  %t1192 = load ptr, ptr %l43, !tbaa !29
  %t1194 = getelementptr %"compiler/typed:Slice", ptr %t1192, i32 0, i32 0
  %t1195 = load ptr, ptr %t1194, !tbaa !29
  store ptr %t1195, ptr %l559, !tbaa !29
  %t1196 = load ptr, ptr %l43, !tbaa !29
  %t1198 = getelementptr %"compiler/typed:Slice", ptr %t1196, i32 0, i32 0
  %t1199 = load ptr, ptr %t1198, !tbaa !29
  %t1201 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1199)
  store i32 %t1201, ptr %l562
  br label %bb291
bb291:
  %t1202 = load i64, ptr %l555
  %t1203 = inttoptr i64 %t1202 to ptr
  %t1204 = load ptr, ptr %l557, !tbaa !29
  %t1205 = load ptr, ptr %l559, !tbaa !29
  %t1206 = load i32, ptr %l562, !tbaa !23
  %t1207 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereadOf(ptr %v0, ptr %v1, ptr %t1203, ptr %t1204, ptr %t1205, i32 %t1206)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1207, ptr %l563
  br label %bb292
bb292:
  %t1208 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1208, label %bb293, label %bb294
bb293:
  %t1210 = load i64, ptr %l555
  %t1211 = inttoptr i64 %t1210 to ptr
  %t1212 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l563, i32 0, i32 0
  %t1213 = load { i64, ptr }, ptr %t1212
  %t1214 = extractvalue { i64, ptr } %t1213, 1
  %t1215 = call ptr @__olang_region_or(ptr %t1214, ptr null)
  %t1216 = icmp ne ptr %t1215, null
  %t1217 = select i1 %t1216, ptr %t1215, ptr null
  %t1218 = icmp eq ptr %t1217, %t1211
  call void @__olang_region_settle(ptr %t1211, i1 %t1218)
  br label %bb294
bb294:
  %t1219 = load ptr, ptr %lp2
  %t1220 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1219
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1220, ptr %l565
  %t1221 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l563
  %t1222 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1221, ptr %t1222
  %t1223 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1223, label %bb295, label %bb296
bb295:
  %t1225 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l565, i32 0, i32 0
  %t1226 = load { i64, ptr }, ptr %t1225
  %t1227 = extractvalue { i64, ptr } %t1226, 1
  %t1228 = call ptr @__olang_region_or(ptr %t1227, ptr null)
  %t1229 = icmp ne ptr %t1228, null
  %t1230 = select i1 %t1229, ptr %t1228, ptr null
  call void @__olang_region_drop(ptr %t1230)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l565
  br label %bb296
bb296:
  %t1231 = load ptr, ptr %l0, !tbaa !29
  %t1232 = load ptr, ptr %l43, !tbaa !29
  %t1234 = getelementptr %"compiler/typed:Slice", ptr %t1232, i32 0, i32 1
  %t1235 = load ptr, ptr %t1234, !tbaa !29
  %t1238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s38, ptr %t1231, ptr %t1235)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1238, ptr %l570
  br label %bb297
bb297:
  %t1239 = load ptr, ptr %l0, !tbaa !29
  %t1240 = load ptr, ptr %l43, !tbaa !29
  %t1242 = getelementptr %"compiler/typed:Slice", ptr %t1240, i32 0, i32 2
  %t1243 = load ptr, ptr %t1242, !tbaa !29
  %t1246 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s38, ptr %t1239, ptr %t1243)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1246, ptr %l574
  br label %bb298
bb298:
  call void @__olang_scope_close(ptr %s38)
  br label %bb514
bb299:
  %t1247 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1247, ptr %l575, !tbaa !29
  store i1 false, ptr %l576, !tbaa !21
  %t1248 = load ptr, ptr %l575, !tbaa !29
  %t1249 = icmp ne ptr %t1248, null
  br i1 %t1249, label %bb300, label %bb301
bb300:
  %t1251 = load ptr, ptr %l575, !tbaa !29
  %t1252 = load i64, ptr %t1251, !range !{i64 0, i64 18}
  %t1254 = icmp eq i64 %t1252, 11
  store i1 %t1254, ptr %l576, !tbaa !21
  br label %bb301
bb301:
  %t1255 = load i1, ptr %l576, !tbaa !21
  br i1 %t1255, label %bb302, label %bb303
bb302:
  %t1256 = load ptr, ptr %l1, !tbaa !29
  %t1258 = getelementptr { i64, [5 x i64] }, ptr %t1256, i32 0, i32 1
  %t1259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1258, i32 0, i32 2
  %t1260 = load ptr, ptr %t1259
  store ptr %t1260, ptr %l44, !tbaa !29
  br label %bb304
bb303:
  br label %bb316
bb304:
  store %olang.scope zeroinitializer, ptr %s39
  %t1262 = load ptr, ptr %l0, !tbaa !29
  %t1263 = load ptr, ptr %l44, !tbaa !29
  %t1265 = getelementptr %"compiler/typed:Cond", ptr %t1263, i32 0, i32 0
  %t1266 = load ptr, ptr %t1265, !tbaa !29
  %t1269 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s39, ptr %t1262, ptr %t1266)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1269, ptr %l584
  br label %bb305
bb305:
  %t1270 = load ptr, ptr %l44, !tbaa !29
  %t1272 = getelementptr %"compiler/typed:Cond", ptr %t1270, i32 0, i32 1
  %t1273 = load ptr, ptr %t1272, !tbaa !29
  %t1275 = icmp eq ptr %t1273, null
  %t1277 = xor i1 %t1275, true
  br i1 %t1277, label %bb306, label %bb307
bb306:
  store %olang.scope zeroinitializer, ptr %s40
  %t1279 = load ptr, ptr %lp2
  store ptr %t1279, ptr %l589, !tbaa !29
  %t1280 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1280, ptr %l590, !tbaa !29
  %t1281 = load ptr, ptr %l44, !tbaa !29
  %t1283 = getelementptr %"compiler/typed:Cond", ptr %t1281, i32 0, i32 1
  %t1284 = load ptr, ptr %t1283, !tbaa !29
  %t1286 = icmp eq ptr %t1284, null
  br i1 %t1286, label %bb308, label %bb309
bb307:
  br label %bb313
bb308:
  call void @__olang_check_failed(ptr @olang_loc_fd3298abbcb5ff92_1a857839cb7bbff6)
  unreachable
bb309:
  br label %bb310
bb310:
  %t1288 = load ptr, ptr %l44, !tbaa !29
  %t1290 = getelementptr %"compiler/typed:Cond", ptr %t1288, i32 0, i32 1
  %t1291 = load ptr, ptr %t1290, !tbaa !29
  %t1292 = load ptr, ptr %l590, !tbaa !29
  %t1294 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s40, ptr %t1292, ptr %t1291)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1294, ptr %l596
  br label %bb311
bb311:
  %t1295 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l596
  %t1296 = call ptr @__olang_scope_alloc_a(ptr %s40, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1295, ptr %t1296
  %t1297 = load ptr, ptr %l589, !tbaa !29
  %t1299 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s40, ptr %t1297, ptr %t1296)
  store i64 %t1299, ptr %l598
  br label %bb312
bb312:
  call void @__olang_scope_close(ptr %s40)
  br label %bb313
bb313:
  %t1300 = load ptr, ptr %lp2
  store ptr %t1300, ptr %l599, !tbaa !29
  %t1301 = load ptr, ptr %l0, !tbaa !29
  %t1302 = load ptr, ptr %l44, !tbaa !29
  %t1304 = getelementptr %"compiler/typed:Cond", ptr %t1302, i32 0, i32 2
  %t1305 = load ptr, ptr %t1304, !tbaa !29
  %t1308 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s39, ptr %t1301, ptr %t1305)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1308, ptr %l603
  br label %bb314
bb314:
  %t1309 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l603
  %t1310 = call ptr @__olang_scope_alloc_a(ptr %s39, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1309, ptr %t1310
  %t1311 = load ptr, ptr %l599, !tbaa !29
  %t1313 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s39, ptr %t1311, ptr %t1310)
  store i64 %t1313, ptr %l605
  br label %bb315
bb315:
  call void @__olang_scope_close(ptr %s39)
  br label %bb514
bb316:
  %t1314 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1314, ptr %l606, !tbaa !29
  store i1 false, ptr %l607, !tbaa !21
  %t1315 = load ptr, ptr %l606, !tbaa !29
  %t1316 = icmp ne ptr %t1315, null
  br i1 %t1316, label %bb317, label %bb318
bb317:
  %t1318 = load ptr, ptr %l606, !tbaa !29
  %t1319 = load i64, ptr %t1318, !range !{i64 0, i64 18}
  %t1321 = icmp eq i64 %t1319, 12
  store i1 %t1321, ptr %l607, !tbaa !21
  br label %bb318
bb318:
  %t1322 = load i1, ptr %l607, !tbaa !21
  br i1 %t1322, label %bb319, label %bb320
bb319:
  %t1323 = load ptr, ptr %l1, !tbaa !29
  %t1325 = getelementptr { i64, [5 x i64] }, ptr %t1323, i32 0, i32 1
  %t1326 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1325, i32 0, i32 2
  %t1327 = load ptr, ptr %t1326
  store ptr %t1327, ptr %l45, !tbaa !29
  br label %bb321
bb320:
  br label %bb348
bb321:
  %t1329 = load ptr, ptr %l45, !tbaa !29
  %t1331 = getelementptr %"compiler/typed:Seq", ptr %t1329, i32 0, i32 0
  %t1332 = load { i64, ptr }, ptr %t1331, !tbaa !27
  store { i64, ptr } %t1332, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t1334 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t1336 = extractvalue { i64, ptr } %t1334, 0
  store i64 %t1336, ptr %l48, !tbaa !24
  br label %bb322
bb322:
  %t1338 = load i64, ptr %l47, !tbaa !24
  %t1339 = load i64, ptr %l48, !tbaa !24
  %t1342 = icmp slt i64 %t1338, %t1339
  %t1344 = xor i1 %t1342, true
  br i1 %t1344, label %bb323, label %bb324
bb323:
  br label %bb328
bb324:
  br label %bb325
bb325:
  %t1346 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t1346, ptr %l620, !tbaa !27
  %t1347 = load i64, ptr %l47, !tbaa !24
  %t1349 = getelementptr { i64, ptr }, ptr %l620, i32 0, i32 1
  %t1350 = load ptr, ptr %t1349, !tbaa !27
  %t1351 = getelementptr ptr, ptr %t1350, i64 %t1347
  %t1352 = load ptr, ptr %t1351, !tbaa !39
  %t1354 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t1354, ptr %t1352)
  br label %bb326
bb326:
  br label %bb327
bb327:
  %t1358 = load i64, ptr %l47, !tbaa !24
  %t1360 = add i64 %t1358, 1
  store i64 %t1360, ptr %l47, !tbaa !24
  br label %bb322
bb328:
  %t1362 = load ptr, ptr %l45, !tbaa !29
  %t1364 = getelementptr %"compiler/typed:Seq", ptr %t1362, i32 0, i32 2
  %t1365 = load i1, ptr %t1364, !tbaa !21
  br i1 %t1365, label %bb329, label %bb330
bb329:
  %t1367 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1367, ptr %l629, !tbaa !29
  %t1368 = load ptr, ptr %l629, !tbaa !29
  %t1369 = getelementptr %"compiler/free:walker", ptr %t1368, i32 0, i32 38
  %t1370 = load i64, ptr %t1369, !tbaa !24
  %t1372 = add i64 %t1370, 1
  %t1374 = load ptr, ptr %l629, !tbaa !29
  %t1375 = getelementptr %"compiler/free:walker", ptr %t1374, i32 0, i32 38
  store i64 %t1372, ptr %t1375, !tbaa !24
  br label %bb331
bb330:
  br label %bb331
bb331:
  %t1376 = load ptr, ptr %l45, !tbaa !29
  %t1378 = getelementptr %"compiler/typed:Seq", ptr %t1376, i32 0, i32 1
  %t1379 = load ptr, ptr %t1378, !tbaa !29
  %t1381 = icmp eq ptr %t1379, null
  %t1383 = xor i1 %t1381, true
  br i1 %t1383, label %bb332, label %bb333
bb332:
  %t1385 = ptrtoint ptr %v2 to i64
  store i64 %t1385, ptr %l636, !tbaa !24
  %t1386 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1386, label %bb334, label %bb335
bb333:
  br label %bb344
bb334:
  %t1388 = call ptr @__olang_region_make(ptr %v2)
  %t1389 = ptrtoint ptr %t1388 to i64
  store i64 %t1389, ptr %l636, !tbaa !24
  br label %bb335
bb335:
  %t1390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1390, ptr %l638, !tbaa !29
  %t1391 = load ptr, ptr %l45, !tbaa !29
  %t1393 = getelementptr %"compiler/typed:Seq", ptr %t1391, i32 0, i32 1
  %t1394 = load ptr, ptr %t1393, !tbaa !29
  %t1396 = icmp eq ptr %t1394, null
  br i1 %t1396, label %bb336, label %bb337
bb336:
  call void @__olang_check_failed(ptr @olang_loc_5a2a443e2f2f03b9_3064adab7524445d)
  unreachable
bb337:
  br label %bb338
bb338:
  %t1398 = load ptr, ptr %l45, !tbaa !29
  %t1400 = getelementptr %"compiler/typed:Seq", ptr %t1398, i32 0, i32 1
  %t1401 = load ptr, ptr %t1400, !tbaa !29
  %t1402 = load i64, ptr %l636
  %t1403 = inttoptr i64 %t1402 to ptr
  %t1404 = load ptr, ptr %l638, !tbaa !29
  %t1406 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t1403, ptr %t1404, ptr %t1401)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1406, ptr %l644
  br label %bb339
bb339:
  %t1407 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1407, label %bb340, label %bb341
bb340:
  %t1409 = load i64, ptr %l636
  %t1410 = inttoptr i64 %t1409 to ptr
  %t1411 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l644, i32 0, i32 0
  %t1412 = load { i64, ptr }, ptr %t1411
  %t1413 = extractvalue { i64, ptr } %t1412, 1
  %t1414 = call ptr @__olang_region_or(ptr %t1413, ptr null)
  %t1415 = icmp ne ptr %t1414, null
  %t1416 = select i1 %t1415, ptr %t1414, ptr null
  %t1417 = icmp eq ptr %t1416, %t1410
  call void @__olang_region_settle(ptr %t1410, i1 %t1417)
  br label %bb341
bb341:
  %t1418 = load ptr, ptr %lp2
  %t1419 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1418
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1419, ptr %l646
  %t1420 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l644
  %t1421 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1420, ptr %t1421
  %t1422 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1422, label %bb342, label %bb343
bb342:
  %t1424 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l646, i32 0, i32 0
  %t1425 = load { i64, ptr }, ptr %t1424
  %t1426 = extractvalue { i64, ptr } %t1425, 1
  %t1427 = call ptr @__olang_region_or(ptr %t1426, ptr null)
  %t1428 = icmp ne ptr %t1427, null
  %t1429 = select i1 %t1428, ptr %t1427, ptr null
  call void @__olang_region_drop(ptr %t1429)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l646
  br label %bb343
bb343:
  br label %bb344
bb344:
  %t1430 = load ptr, ptr %l45, !tbaa !29
  %t1432 = getelementptr %"compiler/typed:Seq", ptr %t1430, i32 0, i32 2
  %t1433 = load i1, ptr %t1432, !tbaa !21
  br i1 %t1433, label %bb345, label %bb346
bb345:
  %t1435 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1435, ptr %l650, !tbaa !29
  %t1436 = load ptr, ptr %l650, !tbaa !29
  %t1437 = getelementptr %"compiler/free:walker", ptr %t1436, i32 0, i32 38
  %t1438 = load i64, ptr %t1437, !tbaa !24
  %t1440 = sub i64 %t1438, 1
  %t1442 = load ptr, ptr %l650, !tbaa !29
  %t1443 = getelementptr %"compiler/free:walker", ptr %t1442, i32 0, i32 38
  store i64 %t1440, ptr %t1443, !tbaa !24
  br label %bb347
bb346:
  br label %bb347
bb347:
  br label %bb514
bb348:
  %t1444 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1444, ptr %l653, !tbaa !29
  store i1 false, ptr %l654, !tbaa !21
  %t1445 = load ptr, ptr %l653, !tbaa !29
  %t1446 = icmp ne ptr %t1445, null
  br i1 %t1446, label %bb349, label %bb350
bb349:
  %t1448 = load ptr, ptr %l653, !tbaa !29
  %t1449 = load i64, ptr %t1448, !range !{i64 0, i64 18}
  %t1451 = icmp eq i64 %t1449, 13
  store i1 %t1451, ptr %l654, !tbaa !21
  br label %bb350
bb350:
  %t1452 = load i1, ptr %l654, !tbaa !21
  br i1 %t1452, label %bb351, label %bb352
bb351:
  %t1453 = load ptr, ptr %l1, !tbaa !29
  %t1455 = getelementptr { i64, [5 x i64] }, ptr %t1453, i32 0, i32 1
  %t1456 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1455, i32 0, i32 2
  %t1457 = load ptr, ptr %t1456
  store ptr %t1457, ptr %l50, !tbaa !29
  br label %bb353
bb352:
  br label %bb377
bb353:
  %t1459 = load ptr, ptr %l50, !tbaa !29
  %t1461 = getelementptr %"compiler/typed:Match", ptr %t1459, i32 0, i32 0
  %t1462 = load { i64, ptr }, ptr %t1461, !tbaa !27
  store { i64, ptr } %t1462, ptr %l51, !tbaa !27
  store i64 0, ptr %l52, !tbaa !24
  %t1464 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t1466 = extractvalue { i64, ptr } %t1464, 0
  store i64 %t1466, ptr %l53, !tbaa !24
  br label %bb354
bb354:
  %t1468 = load i64, ptr %l52, !tbaa !24
  %t1469 = load i64, ptr %l53, !tbaa !24
  %t1472 = icmp slt i64 %t1468, %t1469
  %t1474 = xor i1 %t1472, true
  br i1 %t1474, label %bb355, label %bb356
bb355:
  br label %bb360
bb356:
  br label %bb357
bb357:
  %t1476 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t1476, ptr %l667, !tbaa !27
  %t1477 = load i64, ptr %l52, !tbaa !24
  %t1479 = getelementptr { i64, ptr }, ptr %l667, i32 0, i32 1
  %t1480 = load ptr, ptr %t1479, !tbaa !27
  %t1481 = getelementptr ptr, ptr %t1480, i64 %t1477
  %t1482 = load ptr, ptr %t1481, !tbaa !39
  %t1484 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t1484, ptr %t1482)
  br label %bb358
bb358:
  br label %bb359
bb359:
  %t1488 = load i64, ptr %l52, !tbaa !24
  %t1490 = add i64 %t1488, 1
  store i64 %t1490, ptr %l52, !tbaa !24
  br label %bb354
bb360:
  %t1492 = load ptr, ptr %l50, !tbaa !29
  %t1494 = getelementptr %"compiler/typed:Match", ptr %t1492, i32 0, i32 1
  %t1495 = load { i64, ptr }, ptr %t1494, !tbaa !27
  store { i64, ptr } %t1495, ptr %l55, !tbaa !27
  store i64 0, ptr %l56, !tbaa !24
  %t1497 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t1499 = extractvalue { i64, ptr } %t1497, 0
  store i64 %t1499, ptr %l57, !tbaa !24
  br label %bb361
bb361:
  store %olang.scope zeroinitializer, ptr %s53
  %t1501 = load i64, ptr %l56, !tbaa !24
  %t1502 = load i64, ptr %l57, !tbaa !24
  %t1505 = icmp slt i64 %t1501, %t1502
  %t1507 = xor i1 %t1505, true
  br i1 %t1507, label %bb362, label %bb363
bb362:
  call void @__olang_scope_close(ptr %s53)
  br label %bb368
bb363:
  br label %bb364
bb364:
  %t1509 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t1509, ptr %l682, !tbaa !27
  %t1510 = load i64, ptr %l56, !tbaa !24
  %t1512 = getelementptr { i64, ptr }, ptr %l682, i32 0, i32 1
  %t1513 = load ptr, ptr %t1512, !tbaa !27
  %t1514 = getelementptr ptr, ptr %t1513, i64 %t1510
  %t1515 = load ptr, ptr %t1514, !tbaa !39
  %t1517 = load ptr, ptr %lp2
  store ptr %t1517, ptr %l685, !tbaa !29
  %t1518 = load ptr, ptr %l0, !tbaa !29
  %t1522 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2earm(ptr %v0, ptr %v1, ptr %s53, ptr %t1518, ptr %t1515)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1522, ptr %l688
  br label %bb365
bb365:
  %t1523 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l688
  %t1524 = call ptr @__olang_scope_alloc_a(ptr %s53, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1523, ptr %t1524
  %t1525 = load ptr, ptr %l685, !tbaa !29
  %t1527 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s53, ptr %t1525, ptr %t1524)
  store i64 %t1527, ptr %l690
  br label %bb366
bb366:
  call void @__olang_scope_close(ptr %s53)
  br label %bb367
bb367:
  %t1528 = load i64, ptr %l56, !tbaa !24
  %t1530 = add i64 %t1528, 1
  store i64 %t1530, ptr %l56, !tbaa !24
  br label %bb361
bb368:
  %t1532 = load ptr, ptr %l50, !tbaa !29
  %t1534 = getelementptr %"compiler/typed:Match", ptr %t1532, i32 0, i32 2
  %t1535 = load ptr, ptr %t1534, !tbaa !29
  %t1537 = icmp eq ptr %t1535, null
  %t1539 = xor i1 %t1537, true
  br i1 %t1539, label %bb369, label %bb370
bb369:
  store %olang.scope zeroinitializer, ptr %s55
  %t1541 = load ptr, ptr %lp2
  store ptr %t1541, ptr %l697, !tbaa !29
  %t1542 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1542, ptr %l698, !tbaa !29
  %t1543 = load ptr, ptr %l50, !tbaa !29
  %t1545 = getelementptr %"compiler/typed:Match", ptr %t1543, i32 0, i32 2
  %t1546 = load ptr, ptr %t1545, !tbaa !29
  %t1548 = icmp eq ptr %t1546, null
  br i1 %t1548, label %bb371, label %bb372
bb370:
  br label %bb376
bb371:
  call void @__olang_check_failed(ptr @olang_loc_f2df24d87159f740_3aba0f93d819cd0c)
  unreachable
bb372:
  br label %bb373
bb373:
  %t1550 = load ptr, ptr %l50, !tbaa !29
  %t1552 = getelementptr %"compiler/typed:Match", ptr %t1550, i32 0, i32 2
  %t1553 = load ptr, ptr %t1552, !tbaa !29
  %t1554 = load ptr, ptr %l698, !tbaa !29
  %t1556 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2earm(ptr %v0, ptr %v1, ptr %s55, ptr %t1554, ptr %t1553)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1556, ptr %l704
  br label %bb374
bb374:
  %t1557 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l704
  %t1558 = call ptr @__olang_scope_alloc_a(ptr %s55, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1557, ptr %t1558
  %t1559 = load ptr, ptr %l697, !tbaa !29
  %t1561 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s55, ptr %t1559, ptr %t1558)
  store i64 %t1561, ptr %l706
  br label %bb375
bb375:
  call void @__olang_scope_close(ptr %s55)
  br label %bb376
bb376:
  br label %bb514
bb377:
  %t1562 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1562, ptr %l707, !tbaa !29
  store i1 false, ptr %l708, !tbaa !21
  %t1563 = load ptr, ptr %l707, !tbaa !29
  %t1564 = icmp ne ptr %t1563, null
  br i1 %t1564, label %bb378, label %bb379
bb378:
  %t1566 = load ptr, ptr %l707, !tbaa !29
  %t1567 = load i64, ptr %t1566, !range !{i64 0, i64 18}
  %t1569 = icmp eq i64 %t1567, 14
  store i1 %t1569, ptr %l708, !tbaa !21
  br label %bb379
bb379:
  %t1570 = load i1, ptr %l708, !tbaa !21
  br i1 %t1570, label %bb380, label %bb381
bb380:
  %t1571 = load ptr, ptr %l1, !tbaa !29
  %t1573 = getelementptr { i64, [5 x i64] }, ptr %t1571, i32 0, i32 1
  %t1574 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1573, i32 0, i32 2
  %t1575 = load ptr, ptr %t1574
  store ptr %t1575, ptr %l59, !tbaa !29
  br label %bb382
bb381:
  br label %bb417
bb382:
  %t1577 = load ptr, ptr %l59, !tbaa !29
  %t1579 = getelementptr %"compiler/typed:Try", ptr %t1577, i32 0, i32 0
  %t1580 = load ptr, ptr %t1579, !tbaa !29
  %t1582 = icmp eq ptr %t1580, null
  %t1584 = xor i1 %t1582, true
  br i1 %t1584, label %bb383, label %bb384
bb383:
  %t1586 = ptrtoint ptr %v2 to i64
  store i64 %t1586, ptr %l717, !tbaa !24
  %t1587 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1587, label %bb385, label %bb386
bb384:
  br label %bb395
bb385:
  %t1589 = call ptr @__olang_region_make(ptr %v2)
  %t1590 = ptrtoint ptr %t1589 to i64
  store i64 %t1590, ptr %l717, !tbaa !24
  br label %bb386
bb386:
  %t1591 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1591, ptr %l719, !tbaa !29
  %t1592 = load ptr, ptr %l59, !tbaa !29
  %t1594 = getelementptr %"compiler/typed:Try", ptr %t1592, i32 0, i32 0
  %t1595 = load ptr, ptr %t1594, !tbaa !29
  %t1597 = icmp eq ptr %t1595, null
  br i1 %t1597, label %bb387, label %bb388
bb387:
  call void @__olang_check_failed(ptr @olang_loc_e2fb89bbcc8912df_b34dca3bd4e44f7b)
  unreachable
bb388:
  br label %bb389
bb389:
  %t1599 = load ptr, ptr %l59, !tbaa !29
  %t1601 = getelementptr %"compiler/typed:Try", ptr %t1599, i32 0, i32 0
  %t1602 = load ptr, ptr %t1601, !tbaa !29
  %t1603 = load i64, ptr %l717
  %t1604 = inttoptr i64 %t1603 to ptr
  %t1605 = load ptr, ptr %l719, !tbaa !29
  %t1607 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t1604, ptr %t1605, ptr %t1602)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1607, ptr %l725
  br label %bb390
bb390:
  %t1608 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1608, label %bb391, label %bb392
bb391:
  %t1610 = load i64, ptr %l717
  %t1611 = inttoptr i64 %t1610 to ptr
  %t1612 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l725, i32 0, i32 0
  %t1613 = load { i64, ptr }, ptr %t1612
  %t1614 = extractvalue { i64, ptr } %t1613, 1
  %t1615 = call ptr @__olang_region_or(ptr %t1614, ptr null)
  %t1616 = icmp ne ptr %t1615, null
  %t1617 = select i1 %t1616, ptr %t1615, ptr null
  %t1618 = icmp eq ptr %t1617, %t1611
  call void @__olang_region_settle(ptr %t1611, i1 %t1618)
  br label %bb392
bb392:
  %t1619 = load ptr, ptr %lp2
  %t1620 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1619
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1620, ptr %l727
  %t1621 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l725
  %t1622 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1621, ptr %t1622
  %t1623 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t1623, label %bb393, label %bb394
bb393:
  %t1625 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l727, i32 0, i32 0
  %t1626 = load { i64, ptr }, ptr %t1625
  %t1627 = extractvalue { i64, ptr } %t1626, 1
  %t1628 = call ptr @__olang_region_or(ptr %t1627, ptr null)
  %t1629 = icmp ne ptr %t1628, null
  %t1630 = select i1 %t1629, ptr %t1628, ptr null
  call void @__olang_region_drop(ptr %t1630)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l727
  br label %bb394
bb394:
  br label %bb395
bb395:
  %t1631 = load ptr, ptr %l59, !tbaa !29
  %t1633 = getelementptr %"compiler/typed:Try", ptr %t1631, i32 0, i32 1
  %t1634 = load { i64, ptr }, ptr %t1633, !tbaa !27
  store { i64, ptr } %t1634, ptr %l60, !tbaa !27
  store i64 0, ptr %l61, !tbaa !24
  %t1636 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t1638 = extractvalue { i64, ptr } %t1636, 0
  store i64 %t1638, ptr %l62, !tbaa !24
  br label %bb396
bb396:
  %t1640 = load i64, ptr %l61, !tbaa !24
  %t1641 = load i64, ptr %l62, !tbaa !24
  %t1644 = icmp slt i64 %t1640, %t1641
  %t1646 = xor i1 %t1644, true
  br i1 %t1646, label %bb397, label %bb398
bb397:
  br label %bb416
bb398:
  br label %bb399
bb399:
  %t1648 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t1648, ptr %l737, !tbaa !27
  %t1649 = load i64, ptr %l61, !tbaa !24
  %t1651 = getelementptr { i64, ptr }, ptr %l737, i32 0, i32 1
  %t1652 = load ptr, ptr %t1651, !tbaa !27
  %t1653 = getelementptr ptr, ptr %t1652, i64 %t1649
  %t1654 = load ptr, ptr %t1653, !tbaa !39
  store ptr %t1654, ptr %l63, !tbaa !29
  %t1656 = load ptr, ptr %l63, !tbaa !29
  %t1658 = getelementptr %"compiler/typed:Clause", ptr %t1656, i32 0, i32 3
  %t1659 = load ptr, ptr %t1658, !tbaa !29
  %t1661 = icmp eq ptr %t1659, null
  %t1663 = xor i1 %t1661, true
  br i1 %t1663, label %bb400, label %bb401
bb400:
  %t1665 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1665, ptr %l744, !tbaa !29
  %t1666 = load ptr, ptr %l63, !tbaa !29
  %t1668 = getelementptr %"compiler/typed:Clause", ptr %t1666, i32 0, i32 3
  %t1669 = load ptr, ptr %t1668, !tbaa !29
  %t1671 = icmp eq ptr %t1669, null
  br i1 %t1671, label %bb402, label %bb403
bb401:
  br label %bb406
bb402:
  call void @__olang_check_failed(ptr @olang_loc_b9d8fe51bd9fb1ae_e9263c049ba8f2ba)
  unreachable
bb403:
  br label %bb404
bb404:
  %t1673 = load ptr, ptr %l63, !tbaa !29
  %t1675 = getelementptr %"compiler/typed:Clause", ptr %t1673, i32 0, i32 3
  %t1676 = load ptr, ptr %t1675, !tbaa !29
  %t1677 = load ptr, ptr %l744, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t1677, ptr %t1676)
  br label %bb405
bb405:
  br label %bb406
bb406:
  %t1679 = load ptr, ptr %l63, !tbaa !29
  %t1681 = getelementptr %"compiler/typed:Clause", ptr %t1679, i32 0, i32 4
  %t1682 = load { i64, ptr }, ptr %t1681, !tbaa !27
  store { i64, ptr } %t1682, ptr %l64, !tbaa !27
  store i64 0, ptr %l65, !tbaa !24
  %t1684 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t1686 = extractvalue { i64, ptr } %t1684, 0
  store i64 %t1686, ptr %l66, !tbaa !24
  br label %bb407
bb407:
  store %olang.scope zeroinitializer, ptr %s62
  %t1688 = load i64, ptr %l65, !tbaa !24
  %t1689 = load i64, ptr %l66, !tbaa !24
  %t1692 = icmp slt i64 %t1688, %t1689
  %t1694 = xor i1 %t1692, true
  br i1 %t1694, label %bb408, label %bb409
bb408:
  call void @__olang_scope_close(ptr %s62)
  br label %bb414
bb409:
  br label %bb410
bb410:
  %t1696 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t1696, ptr %l758, !tbaa !27
  %t1697 = load i64, ptr %l65, !tbaa !24
  %t1699 = getelementptr { i64, ptr }, ptr %l758, i32 0, i32 1
  %t1700 = load ptr, ptr %t1699, !tbaa !27
  %t1701 = getelementptr ptr, ptr %t1700, i64 %t1697
  %t1702 = load ptr, ptr %t1701, !tbaa !39
  %t1704 = load ptr, ptr %lp2
  store ptr %t1704, ptr %l761, !tbaa !29
  %t1705 = load ptr, ptr %l0, !tbaa !29
  %t1709 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s62, ptr %t1705, ptr %t1702)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1709, ptr %l764
  br label %bb411
bb411:
  %t1710 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l764
  %t1711 = call ptr @__olang_scope_alloc_a(ptr %s62, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1710, ptr %t1711
  %t1712 = load ptr, ptr %l761, !tbaa !29
  %t1714 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s62, ptr %t1712, ptr %t1711)
  store i64 %t1714, ptr %l766
  br label %bb412
bb412:
  call void @__olang_scope_close(ptr %s62)
  br label %bb413
bb413:
  %t1715 = load i64, ptr %l65, !tbaa !24
  %t1717 = add i64 %t1715, 1
  store i64 %t1717, ptr %l65, !tbaa !24
  br label %bb407
bb414:
  br label %bb415
bb415:
  %t1719 = load i64, ptr %l61, !tbaa !24
  %t1721 = add i64 %t1719, 1
  store i64 %t1721, ptr %l61, !tbaa !24
  br label %bb396
bb416:
  br label %bb514
bb417:
  %t1723 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1723, ptr %l771, !tbaa !29
  store i1 false, ptr %l772, !tbaa !21
  %t1724 = load ptr, ptr %l771, !tbaa !29
  %t1725 = icmp ne ptr %t1724, null
  br i1 %t1725, label %bb418, label %bb419
bb418:
  %t1727 = load ptr, ptr %l771, !tbaa !29
  %t1728 = load i64, ptr %t1727, !range !{i64 0, i64 18}
  %t1730 = icmp eq i64 %t1728, 15
  store i1 %t1730, ptr %l772, !tbaa !21
  br label %bb419
bb419:
  %t1731 = load i1, ptr %l772, !tbaa !21
  br i1 %t1731, label %bb420, label %bb421
bb420:
  %t1732 = load ptr, ptr %l1, !tbaa !29
  %t1734 = getelementptr { i64, [5 x i64] }, ptr %t1732, i32 0, i32 1
  %t1735 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1734, i32 0, i32 0
  %t1736 = load %"compiler/source:Span", ptr %t1735
  store %"compiler/source:Span" %t1736, ptr %l68
  %t1738 = load ptr, ptr %l1, !tbaa !29
  %t1740 = getelementptr { i64, [5 x i64] }, ptr %t1738, i32 0, i32 1
  %t1741 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1740, i32 0, i32 2
  %t1742 = load ptr, ptr %t1741
  store ptr %t1742, ptr %l69, !tbaa !29
  br label %bb422
bb421:
  br label %bb470
bb422:
  %t1744 = load ptr, ptr %l69, !tbaa !29
  store ptr %t1744, ptr %l779, !tbaa !29
  store i1 false, ptr %l780, !tbaa !21
  %t1745 = load ptr, ptr %l779, !tbaa !29
  %t1746 = icmp ne ptr %t1745, null
  br i1 %t1746, label %bb423, label %bb424
bb423:
  %t1748 = load ptr, ptr %l779, !tbaa !29
  %t1749 = load i64, ptr %t1748, !range !{i64 0, i64 3}
  %t1751 = icmp eq i64 %t1749, 1
  store i1 %t1751, ptr %l780, !tbaa !21
  br label %bb424
bb424:
  %t1752 = load i1, ptr %l780, !tbaa !21
  br i1 %t1752, label %bb425, label %bb426
bb425:
  %t1753 = load ptr, ptr %l69, !tbaa !29
  %t1755 = getelementptr { i64, [4 x i64] }, ptr %t1753, i32 0, i32 1
  %t1756 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t1755, i32 0, i32 0
  %t1757 = load i32, ptr %t1756
  store i32 %t1757, ptr %l70, !tbaa !23
  %t1759 = load ptr, ptr %l69, !tbaa !29
  %t1761 = getelementptr { i64, [4 x i64] }, ptr %t1759, i32 0, i32 1
  %t1762 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t1761, i32 0, i32 1
  %t1763 = load { i64, ptr }, ptr %t1762
  store { i64, ptr } %t1763, ptr %l71, !tbaa !27
  %t1765 = load ptr, ptr %l69, !tbaa !29
  %t1767 = getelementptr { i64, [4 x i64] }, ptr %t1765, i32 0, i32 1
  %t1768 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t1767, i32 0, i32 2
  %t1769 = load i32, ptr %t1768
  store i32 %t1769, ptr %l72, !tbaa !23
  br label %bb427
bb426:
  br label %bb442
bb427:
  %t1771 = load ptr, ptr %l0, !tbaa !29
  %t1773 = getelementptr %"compiler/free:walker", ptr %t1771, i32 0, i32 2
  %t1774 = load i1, ptr %t1773, !tbaa !21
  %t1776 = xor i1 %t1774, true
  br i1 %t1776, label %bb428, label %bb429
bb428:
  %t1778 = load ptr, ptr %l0, !tbaa !29
  %t1779 = load i32, ptr %l70, !tbaa !23
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2elambdaMade(ptr %v0, ptr %t1778, i32 %t1779)
  br label %bb430
bb429:
  br label %bb431
bb430:
  br label %bb431
bb431:
  %t1782 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t1782, ptr %l73, !tbaa !27
  store i64 0, ptr %l74, !tbaa !24
  %t1784 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t1786 = extractvalue { i64, ptr } %t1784, 0
  store i64 %t1786, ptr %l75, !tbaa !24
  br label %bb432
bb432:
  store %olang.scope zeroinitializer, ptr %s69
  %t1788 = load i64, ptr %l74, !tbaa !24
  %t1789 = load i64, ptr %l75, !tbaa !24
  %t1792 = icmp slt i64 %t1788, %t1789
  %t1794 = xor i1 %t1792, true
  br i1 %t1794, label %bb433, label %bb434
bb433:
  call void @__olang_scope_close(ptr %s69)
  br label %bb439
bb434:
  br label %bb435
bb435:
  %t1796 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t1796, ptr %l801, !tbaa !27
  %t1797 = load i64, ptr %l74, !tbaa !24
  %t1799 = getelementptr { i64, ptr }, ptr %l801, i32 0, i32 1
  %t1800 = load ptr, ptr %t1799, !tbaa !27
  %t1801 = getelementptr ptr, ptr %t1800, i64 %t1797
  %t1802 = load ptr, ptr %t1801, !tbaa !39
  %t1804 = load ptr, ptr %lp2
  store ptr %t1804, ptr %l804, !tbaa !29
  %t1805 = load ptr, ptr %l0, !tbaa !29
  %t1806 = load %"compiler/source:Span", ptr %l68
  %t1809 = getelementptr %"compiler/typed:Capture", ptr %t1802, i32 0, i32 1
  %t1810 = load ptr, ptr %t1809, !tbaa !29
  %t1814 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecaptured(ptr %v0, ptr %v1, ptr %s69, ptr %t1805, %"compiler/source:Span" %t1806, ptr %t1810)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1814, ptr %l809
  br label %bb436
bb436:
  %t1815 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l809
  %t1816 = call ptr @__olang_scope_alloc_a(ptr %s69, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1815, ptr %t1816
  %t1817 = load ptr, ptr %l804, !tbaa !29
  %t1819 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s69, ptr %t1817, ptr %t1816)
  store i64 %t1819, ptr %l811
  br label %bb437
bb437:
  call void @__olang_scope_close(ptr %s69)
  br label %bb438
bb438:
  %t1820 = load i64, ptr %l74, !tbaa !24
  %t1822 = add i64 %t1820, 1
  store i64 %t1822, ptr %l74, !tbaa !24
  br label %bb432
bb439:
  %t1824 = load ptr, ptr %lp2
  store ptr %t1824, ptr %l814, !tbaa !29
  %t1825 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t1826 = load i32, ptr %l72, !tbaa !23
  %t1828 = sext i32 %t1826 to i64
  %t1831 = call i64 @compiler_2ffree_2eorig(i64 %t1825, i64 %t1828)
  store i64 %t1831, ptr %l818
  br label %bb440
bb440:
  %t1832 = load ptr, ptr %l814, !tbaa !29
  %t1833 = load i64, ptr %l818, !tbaa !24
  %t1834 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t1832, i64 %t1833)
  store i64 %t1834, ptr %l819
  br label %bb441
bb441:
  br label %bb469
bb442:
  %t1835 = load ptr, ptr %l69, !tbaa !29
  store ptr %t1835, ptr %l820, !tbaa !29
  store i1 false, ptr %l821, !tbaa !21
  %t1836 = load ptr, ptr %l820, !tbaa !29
  %t1837 = icmp ne ptr %t1836, null
  br i1 %t1837, label %bb443, label %bb444
bb443:
  %t1839 = load ptr, ptr %l820, !tbaa !29
  %t1840 = load i64, ptr %t1839, !range !{i64 0, i64 3}
  %t1842 = icmp eq i64 %t1840, 0
  store i1 %t1842, ptr %l821, !tbaa !21
  br label %bb444
bb444:
  %t1843 = load i1, ptr %l821, !tbaa !21
  br i1 %t1843, label %bb445, label %bb446
bb445:
  %t1844 = load ptr, ptr %l69, !tbaa !29
  %t1846 = getelementptr { i64, [4 x i64] }, ptr %t1844, i32 0, i32 1
  %t1847 = getelementptr { i32 }, ptr %t1846, i32 0, i32 0
  %t1848 = load i32, ptr %t1847
  store i32 %t1848, ptr %l77, !tbaa !23
  br label %bb447
bb446:
  br label %bb449
bb447:
  %t1850 = load ptr, ptr %l0, !tbaa !29
  %t1852 = getelementptr %"compiler/free:walker", ptr %t1850, i32 0, i32 0
  %t1853 = load ptr, ptr %t1852, !tbaa !29
  %t1855 = getelementptr %"compiler/free:Free", ptr %t1853, i32 0, i32 43
  %t1856 = load i32, ptr %l77, !tbaa !23
  %t1858 = sext i32 %t1856 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t1855, i64 %t1858, i1 true)
  br label %bb448
bb448:
  br label %bb469
bb449:
  %t1861 = load ptr, ptr %l69, !tbaa !29
  store ptr %t1861, ptr %l831, !tbaa !29
  store i1 false, ptr %l832, !tbaa !21
  %t1862 = load ptr, ptr %l831, !tbaa !29
  %t1863 = icmp ne ptr %t1862, null
  br i1 %t1863, label %bb450, label %bb451
bb450:
  %t1865 = load ptr, ptr %l831, !tbaa !29
  %t1866 = load i64, ptr %t1865, !range !{i64 0, i64 3}
  %t1868 = icmp eq i64 %t1866, 2
  store i1 %t1868, ptr %l832, !tbaa !21
  br label %bb451
bb451:
  %t1869 = load i1, ptr %l832, !tbaa !21
  br i1 %t1869, label %bb452, label %bb453
bb452:
  %t1870 = load ptr, ptr %l69, !tbaa !29
  %t1872 = getelementptr { i64, [4 x i64] }, ptr %t1870, i32 0, i32 1
  %t1873 = getelementptr { i32, ptr, i32 }, ptr %t1872, i32 0, i32 1
  %t1874 = load ptr, ptr %t1873
  store ptr %t1874, ptr %l78, !tbaa !29
  %t1876 = load ptr, ptr %l69, !tbaa !29
  %t1878 = getelementptr { i64, [4 x i64] }, ptr %t1876, i32 0, i32 1
  %t1879 = getelementptr { i32, ptr, i32 }, ptr %t1878, i32 0, i32 2
  %t1880 = load i32, ptr %t1879
  store i32 %t1880, ptr %l79, !tbaa !23
  br label %bb454
bb453:
  br label %bb464
bb454:
  store %olang.scope zeroinitializer, ptr %s72
  %t1882 = load ptr, ptr %l0, !tbaa !29
  %t1884 = getelementptr %"compiler/free:walker", ptr %t1882, i32 0, i32 2
  %t1885 = load i1, ptr %t1884, !tbaa !21
  %t1887 = xor i1 %t1885, true
  br i1 %t1887, label %bb455, label %bb456
bb455:
  %t1889 = load ptr, ptr %l0, !tbaa !29
  %t1891 = getelementptr %"compiler/free:walker", ptr %t1889, i32 0, i32 0
  %t1892 = load ptr, ptr %t1891, !tbaa !29
  %t1893 = load ptr, ptr %l0, !tbaa !29
  %t1895 = getelementptr %"compiler/free:walker", ptr %t1893, i32 0, i32 1
  %t1896 = load i64, ptr %t1895, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t1892, i64 %t1896)
  br label %bb457
bb456:
  br label %bb458
bb457:
  br label %bb458
bb458:
  %t1899 = load ptr, ptr %l0, !tbaa !29
  %t1900 = load ptr, ptr %l78, !tbaa !29
  %t1903 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s72, ptr %t1899, ptr %t1900)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1903, ptr %l848
  br label %bb459
bb459:
  %t1904 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l848
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1904, ptr %l80
  %t1905 = load ptr, ptr %l0, !tbaa !29
  %t1906 = load %"compiler/source:Span", ptr %l68
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %s72, ptr %s72, ptr %t1905, ptr %l80, %"compiler/source:Span" %t1906, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, i1 false, i64 -1, i64 -1)
  br label %bb460
bb460:
  %t1910 = load ptr, ptr %lp2
  %t1913 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s72, ptr %t1910, ptr %l80)
  store i64 %t1913, ptr %l854
  br label %bb461
bb461:
  %t1914 = load ptr, ptr %lp2
  store ptr %t1914, ptr %l855, !tbaa !29
  %t1915 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t1916 = load i32, ptr %l79, !tbaa !23
  %t1918 = sext i32 %t1916 to i64
  %t1921 = call i64 @compiler_2ffree_2eorig(i64 %t1915, i64 %t1918)
  store i64 %t1921, ptr %l859
  br label %bb462
bb462:
  %t1922 = load ptr, ptr %l855, !tbaa !29
  %t1923 = load i64, ptr %l859, !tbaa !24
  %t1924 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t1922, i64 %t1923)
  store i64 %t1924, ptr %l860
  br label %bb463
bb463:
  call void @__olang_scope_close(ptr %s72)
  br label %bb469
bb464:
  br i1 true, label %bb465, label %bb466
bb465:
  br label %bb467
bb466:
  br label %bb468
bb467:
  br label %bb469
bb468:
  call void @__olang_check_failed(ptr @olang_loc_67165cb650ae48c_1f30efdb88316bc8)
  unreachable
bb469:
  br label %bb514
bb470:
  %t1925 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1925, ptr %l861, !tbaa !29
  store i1 false, ptr %l862, !tbaa !21
  %t1926 = load ptr, ptr %l861, !tbaa !29
  %t1927 = icmp ne ptr %t1926, null
  br i1 %t1927, label %bb471, label %bb472
bb471:
  %t1929 = load ptr, ptr %l861, !tbaa !29
  %t1930 = load i64, ptr %t1929, !range !{i64 0, i64 18}
  %t1932 = icmp eq i64 %t1930, 16
  store i1 %t1932, ptr %l862, !tbaa !21
  br label %bb472
bb472:
  %t1933 = load i1, ptr %l862, !tbaa !21
  br i1 %t1933, label %bb473, label %bb474
bb473:
  %t1934 = load ptr, ptr %l1, !tbaa !29
  %t1936 = getelementptr { i64, [5 x i64] }, ptr %t1934, i32 0, i32 1
  %t1937 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1936, i32 0, i32 2
  %t1938 = load ptr, ptr %t1937
  store ptr %t1938, ptr %l81, !tbaa !29
  br label %bb475
bb474:
  br label %bb496
bb475:
  %t1940 = load ptr, ptr %l81, !tbaa !29
  %t1942 = getelementptr %"compiler/typed:Text", ptr %t1940, i32 0, i32 0
  %t1943 = load { i64, ptr }, ptr %t1942, !tbaa !27
  store { i64, ptr } %t1943, ptr %l82, !tbaa !27
  store i64 0, ptr %l83, !tbaa !24
  %t1945 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t1947 = extractvalue { i64, ptr } %t1945, 0
  store i64 %t1947, ptr %l84, !tbaa !24
  br label %bb476
bb476:
  %t1949 = load i64, ptr %l83, !tbaa !24
  %t1950 = load i64, ptr %l84, !tbaa !24
  %t1953 = icmp slt i64 %t1949, %t1950
  %t1955 = xor i1 %t1953, true
  br i1 %t1955, label %bb477, label %bb478
bb477:
  br label %bb493
bb478:
  br label %bb479
bb479:
  %t1957 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t1957, ptr %l875, !tbaa !27
  %t1958 = load i64, ptr %l83, !tbaa !24
  %t1960 = getelementptr { i64, ptr }, ptr %l875, i32 0, i32 1
  %t1961 = load ptr, ptr %t1960, !tbaa !27
  %t1962 = getelementptr ptr, ptr %t1961, i64 %t1958
  %t1963 = load ptr, ptr %t1962, !tbaa !39
  store ptr %t1963, ptr %l85, !tbaa !29
  %t1965 = load ptr, ptr %l85, !tbaa !29
  store ptr %t1965, ptr %l878, !tbaa !29
  store i1 false, ptr %l879, !tbaa !21
  %t1966 = load ptr, ptr %l878, !tbaa !29
  %t1967 = icmp ne ptr %t1966, null
  br i1 %t1967, label %bb480, label %bb481
bb480:
  %t1969 = load ptr, ptr %l878, !tbaa !29
  %t1970 = load i64, ptr %t1969, !range !{i64 0, i64 2}
  %t1972 = icmp eq i64 %t1970, 1
  store i1 %t1972, ptr %l879, !tbaa !21
  br label %bb481
bb481:
  %t1973 = load i1, ptr %l879, !tbaa !21
  br i1 %t1973, label %bb482, label %bb483
bb482:
  %t1974 = load ptr, ptr %l85, !tbaa !29
  %t1976 = getelementptr { i64, [2 x i64] }, ptr %t1974, i32 0, i32 1
  %t1977 = getelementptr { ptr }, ptr %t1976, i32 0, i32 0
  %t1978 = load ptr, ptr %t1977
  store ptr %t1978, ptr %l86, !tbaa !29
  br label %bb484
bb483:
  br label %bb486
bb484:
  store %olang.scope zeroinitializer, ptr %s78
  %t1980 = load ptr, ptr %l0, !tbaa !29
  %t1981 = load ptr, ptr %l86, !tbaa !29
  %t1984 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s78, ptr %t1980, ptr %t1981)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1984, ptr %l886
  br label %bb485
bb485:
  call void @__olang_scope_close(ptr %s78)
  br label %bb491
bb486:
  br i1 true, label %bb487, label %bb488
bb487:
  br label %bb489
bb488:
  br label %bb490
bb489:
  br label %bb491
bb490:
  call void @__olang_check_failed(ptr @olang_loc_b6b576316e1b3293_3c9a5af727622297)
  unreachable
bb491:
  br label %bb492
bb492:
  %t1985 = load i64, ptr %l83, !tbaa !24
  %t1987 = add i64 %t1985, 1
  store i64 %t1987, ptr %l83, !tbaa !24
  br label %bb476
bb493:
  %t1989 = load ptr, ptr %lp2
  store ptr %t1989, ptr %l889, !tbaa !29
  %t1990 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t1991 = load ptr, ptr %l81, !tbaa !29
  %t1993 = getelementptr %"compiler/typed:Text", ptr %t1991, i32 0, i32 1
  %t1994 = load i32, ptr %t1993, !tbaa !23
  %t1996 = sext i32 %t1994 to i64
  %t1999 = call i64 @compiler_2ffree_2eorig(i64 %t1990, i64 %t1996)
  store i64 %t1999, ptr %l894
  br label %bb494
bb494:
  %t2000 = load ptr, ptr %l889, !tbaa !29
  %t2001 = load i64, ptr %l894, !tbaa !24
  %t2002 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t2000, i64 %t2001)
  store i64 %t2002, ptr %l895
  br label %bb495
bb495:
  br label %bb514
bb496:
  %t2003 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2003, ptr %l896, !tbaa !29
  store i1 false, ptr %l897, !tbaa !21
  %t2004 = load ptr, ptr %l896, !tbaa !29
  %t2005 = icmp ne ptr %t2004, null
  br i1 %t2005, label %bb497, label %bb498
bb497:
  %t2007 = load ptr, ptr %l896, !tbaa !29
  %t2008 = load i64, ptr %t2007, !range !{i64 0, i64 18}
  %t2010 = icmp eq i64 %t2008, 17
  store i1 %t2010, ptr %l897, !tbaa !21
  br label %bb498
bb498:
  %t2011 = load i1, ptr %l897, !tbaa !21
  br i1 %t2011, label %bb499, label %bb500
bb499:
  %t2012 = load ptr, ptr %l1, !tbaa !29
  %t2014 = getelementptr { i64, [5 x i64] }, ptr %t2012, i32 0, i32 1
  %t2015 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t2014, i32 0, i32 2
  %t2016 = load ptr, ptr %t2015
  store ptr %t2016, ptr %l87, !tbaa !29
  br label %bb501
bb500:
  br label %bb509
bb501:
  %t2018 = ptrtoint ptr %v2 to i64
  store i64 %t2018, ptr %l902, !tbaa !24
  %t2019 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t2019, label %bb502, label %bb503
bb502:
  %t2021 = call ptr @__olang_region_make(ptr %v2)
  %t2022 = ptrtoint ptr %t2021 to i64
  store i64 %t2022, ptr %l902, !tbaa !24
  br label %bb503
bb503:
  %t2023 = load ptr, ptr %l0, !tbaa !29
  %t2024 = load ptr, ptr %l87, !tbaa !29
  %t2025 = load i64, ptr %l902
  %t2026 = inttoptr i64 %t2025 to ptr
  %t2029 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t2026, ptr %t2023, ptr %t2024)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2029, ptr %l906
  br label %bb504
bb504:
  %t2030 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t2030, label %bb505, label %bb506
bb505:
  %t2032 = load i64, ptr %l902
  %t2033 = inttoptr i64 %t2032 to ptr
  %t2034 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l906, i32 0, i32 0
  %t2035 = load { i64, ptr }, ptr %t2034
  %t2036 = extractvalue { i64, ptr } %t2035, 1
  %t2037 = call ptr @__olang_region_or(ptr %t2036, ptr null)
  %t2038 = icmp ne ptr %t2037, null
  %t2039 = select i1 %t2038, ptr %t2037, ptr null
  %t2040 = icmp eq ptr %t2039, %t2033
  call void @__olang_region_settle(ptr %t2033, i1 %t2040)
  br label %bb506
bb506:
  %t2041 = load ptr, ptr %lp2
  %t2042 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2041
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2042, ptr %l908
  %t2043 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l906
  %t2044 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2043, ptr %t2044
  %t2045 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2
  br i1 %t2045, label %bb507, label %bb508
bb507:
  %t2047 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l908, i32 0, i32 0
  %t2048 = load { i64, ptr }, ptr %t2047
  %t2049 = extractvalue { i64, ptr } %t2048, 1
  %t2050 = call ptr @__olang_region_or(ptr %t2049, ptr null)
  %t2051 = icmp ne ptr %t2050, null
  %t2052 = select i1 %t2051, ptr %t2050, ptr null
  call void @__olang_region_drop(ptr %t2052)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l908
  br label %bb508
bb508:
  br label %bb514
bb509:
  br i1 true, label %bb510, label %bb511
bb510:
  br label %bb512
bb511:
  br label %bb513
bb512:
  br label %bb514
bb513:
  call void @__olang_check_failed(ptr @olang_loc_797639ecae530892_5422fc7df8fd29f6)
  unreachable
bb514:
  %t2053 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2053, ptr %l910, !tbaa !29
  %t2054 = load ptr, ptr %l1, !tbaa !29
  %t2056 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t2054)
  store i32 %t2056, ptr %l912
  br label %bb515
bb515:
  %t2057 = load ptr, ptr %l910, !tbaa !29
  %t2058 = load i32, ptr %l912, !tbaa !23
  %t2059 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %t2057, i32 %t2058)
  store i1 %t2059, ptr %l913
  br label %bb516
bb516:
  %t2060 = load i1, ptr %l913, !tbaa !21
  %t2061 = xor i1 %t2060, true
  br i1 %t2061, label %bb517, label %bb518
bb517:
  %t2063 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2063, ptr %l915
  br label %bb519
bb518:
  br label %bb520
bb519:
  %t2064 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l915
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2064, ptr %rv
  br label %ret
bb520:
  %t2065 = load ptr, ptr %lp2
  %t2066 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2065
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2066, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, { i64, ptr } } @compiler_2ffree_2ecompiler_2ffree_3awalker_2efreshSite(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
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
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, { i64, ptr } }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, { i64, ptr } }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca i1
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, { i64, ptr } }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l63 = alloca i1
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, { i64, ptr } }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l78 = alloca i1
  %l84 = alloca i64
  %l87 = alloca i1
  %l91 = alloca { i64, ptr }
  %l93 = alloca { i64, { i64, ptr } }
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l106 = alloca { i64, { i64, ptr } }
  %l107 = alloca { i64, ptr }
  %l108 = alloca i64
  %l109 = alloca { i64, ptr }
  %l113 = alloca i64
  %l119 = alloca { i64, ptr }
  %l121 = alloca { i64, { i64, ptr } }
  %l122 = alloca { i64, ptr }
  %l123 = alloca i64
  %l124 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l133 = alloca { i64, { i64, ptr } }
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l136 = alloca { i64, ptr }
  %l140 = alloca i64
  %l143 = alloca i1
  %l149 = alloca i1
  %l150 = alloca i64
  %l153 = alloca i64
  %l158 = alloca ptr
  %l160 = alloca ptr
  %l164 = alloca i32
  %l166 = alloca %"compiler/typed:Local"
  %l168 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l179 = alloca %"compiler/source:Span"
  %l182 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l184 = alloca ptr
  %l188 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l195 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l202 = alloca { i64, { i64, ptr } }
  %l203 = alloca { i64, ptr }
  %l204 = alloca i64
  %l205 = alloca { i64, ptr }
  %l209 = alloca i1
  %l213 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l221 = alloca { i64, { i64, ptr } }
  %l222 = alloca { i64, ptr }
  %l223 = alloca i64
  %l224 = alloca { i64, ptr }
  %l225 = alloca { i64, ptr }
  %l227 = alloca { i64, { i64, ptr } }
  %l228 = alloca { i64, ptr }
  %l229 = alloca i64
  %l230 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca { i64, { i64, ptr } }
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
  store ptr %t8, ptr %l16
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l16, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t11 = load ptr, ptr %l17, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l17, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 5
  store i1 %t17, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l18, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Promote", ptr %t25, i32 0, i32 1
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = sext i32 %t28 to i64
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t33 = insertvalue { i64, { i64, ptr } } undef, i64 %t30, 0
  %t35 = insertvalue { i64, { i64, ptr } } %t33, { i64, ptr } %t31, 1
  store { i64, { i64, ptr } } %t35, ptr %l28
  %t36 = getelementptr { i64, { i64, ptr } }, ptr %l28, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l29, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l30, !tbaa !24
  %t40 = load i64, ptr %l30, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l31, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l30, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t52 = getelementptr { i64, { i64, ptr } }, ptr %l28, i32 0, i32 1
  store { i64, ptr } %t51, ptr %t52, !tbaa !27
  %t53 = load { i64, { i64, ptr } }, ptr %l28
  store { i64, { i64, ptr } } %t53, ptr %rv
  br label %ret
bb7:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t55 = load ptr, ptr %l32, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb8, label %bb9
bb8:
  %t58 = load ptr, ptr %l32, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 7
  store i1 %t61, ptr %l33, !tbaa !21
  br label %bb9
bb9:
  %t62 = load i1, ptr %l33, !tbaa !21
  br i1 %t62, label %bb10, label %bb11
bb10:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t69 = load ptr, ptr %l5, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Make", ptr %t69, i32 0, i32 4
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t77 = insertvalue { i64, { i64, ptr } } undef, i64 %t74, 0
  %t79 = insertvalue { i64, { i64, ptr } } %t77, { i64, ptr } %t75, 1
  store { i64, { i64, ptr } } %t79, ptr %l43
  %t80 = getelementptr { i64, { i64, ptr } }, ptr %l43, i32 0, i32 1
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l44, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l45, !tbaa !24
  %t84 = load i64, ptr %l45, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l46, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l45, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t96 = getelementptr { i64, { i64, ptr } }, ptr %l43, i32 0, i32 1
  store { i64, ptr } %t95, ptr %t96, !tbaa !27
  %t97 = load { i64, { i64, ptr } }, ptr %l43
  store { i64, { i64, ptr } } %t97, ptr %rv
  br label %ret
bb13:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t99 = load ptr, ptr %l47, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb14, label %bb15
bb14:
  %t102 = load ptr, ptr %l47, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 18}
  %t105 = icmp eq i64 %t103, 16
  store i1 %t105, ptr %l48, !tbaa !21
  br label %bb15
bb15:
  %t106 = load i1, ptr %l48, !tbaa !21
  br i1 %t106, label %bb16, label %bb17
bb16:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [5 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t109, i32 0, i32 2
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Text", ptr %t113, i32 0, i32 1
  %t116 = load i32, ptr %t115, !tbaa !23
  %t118 = sext i32 %t116 to i64
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t121 = insertvalue { i64, { i64, ptr } } undef, i64 %t118, 0
  %t123 = insertvalue { i64, { i64, ptr } } %t121, { i64, ptr } %t119, 1
  store { i64, { i64, ptr } } %t123, ptr %l58
  %t124 = getelementptr { i64, { i64, ptr } }, ptr %l58, i32 0, i32 1
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l59, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 0
  store i64 %t127, ptr %l60, !tbaa !24
  %t128 = load i64, ptr %l60, !tbaa !24
  %t129 = mul i64 %t128, 1
  %t130 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t129)
  %t131 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t130, 1
  store { i64, ptr } %t132, ptr %l61, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l60, !tbaa !24
  %t138 = mul i64 %t137, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %t136, i64 %t138, i1 false)
  %t139 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t140 = getelementptr { i64, { i64, ptr } }, ptr %l58, i32 0, i32 1
  store { i64, ptr } %t139, ptr %t140, !tbaa !27
  %t141 = load { i64, { i64, ptr } }, ptr %l58
  store { i64, { i64, ptr } } %t141, ptr %rv
  br label %ret
bb19:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t143 = load ptr, ptr %l62, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb20, label %bb21
bb20:
  %t146 = load ptr, ptr %l62, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 18}
  %t149 = icmp eq i64 %t147, 8
  store i1 %t149, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t150 = load i1, ptr %l63, !tbaa !21
  br i1 %t150, label %bb22, label %bb23
bb22:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [5 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t153, i32 0, i32 2
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l7, !tbaa !29
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t157 = load ptr, ptr %l7, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Collect", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %t159, !tbaa !23
  %t162 = sext i32 %t160 to i64
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l71, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t165 = insertvalue { i64, { i64, ptr } } undef, i64 %t162, 0
  %t167 = insertvalue { i64, { i64, ptr } } %t165, { i64, ptr } %t163, 1
  store { i64, { i64, ptr } } %t167, ptr %l73
  %t168 = getelementptr { i64, { i64, ptr } }, ptr %l73, i32 0, i32 1
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !27
  store { i64, ptr } %t169, ptr %l74, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  store i64 %t171, ptr %l75, !tbaa !24
  %t172 = load i64, ptr %l75, !tbaa !24
  %t173 = mul i64 %t172, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t173)
  %t175 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l76, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l75, !tbaa !24
  %t182 = mul i64 %t181, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t178, ptr %t180, i64 %t182, i1 false)
  %t183 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t184 = getelementptr { i64, { i64, ptr } }, ptr %l73, i32 0, i32 1
  store { i64, ptr } %t183, ptr %t184, !tbaa !27
  %t185 = load { i64, { i64, ptr } }, ptr %l73
  store { i64, { i64, ptr } } %t185, ptr %rv
  br label %ret
bb25:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t187 = load ptr, ptr %l77, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb26, label %bb27
bb26:
  %t190 = load ptr, ptr %l77, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 18}
  %t193 = icmp eq i64 %t191, 6
  store i1 %t193, ptr %l78, !tbaa !21
  br label %bb27
bb27:
  %t194 = load i1, ptr %l78, !tbaa !21
  br i1 %t194, label %bb28, label %bb29
bb28:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t197, i32 0, i32 2
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l8, !tbaa !29
  br label %bb30
bb29:
  br label %bb78
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t201 = load ptr, ptr %l8, !tbaa !29
  %t203 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t201)
  store i64 %t203, ptr %l84
  br label %bb31
bb31:
  %t204 = load i64, ptr %l84, !tbaa !24
  store i64 %t204, ptr %l9, !tbaa !24
  %t205 = load i64, ptr %l9, !tbaa !24
  %t207 = icmp slt i64 %t205, 0
  br i1 %t207, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb34
bb33:
  %t209 = load ptr, ptr %l8, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Call", ptr %t209, i32 0, i32 2
  %t212 = load i32, ptr %t211, !tbaa !23
  %t214 = icmp slt i32 %t212, 0
  store i1 %t214, ptr %l87, !tbaa !21
  br label %bb34
bb34:
  %t216 = load i1, ptr %l87, !tbaa !21
  br i1 %t216, label %bb35, label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t218 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t220 = insertvalue { i64, { i64, ptr } } %t218, { i64, ptr } %t217, 1
  store { i64, { i64, ptr } } %t220, ptr %l93
  %t221 = getelementptr { i64, { i64, ptr } }, ptr %l93, i32 0, i32 1
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  store { i64, ptr } %t222, ptr %l94, !tbaa !27
  %t223 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  store i64 %t224, ptr %l95, !tbaa !24
  %t225 = load i64, ptr %l95, !tbaa !24
  %t226 = mul i64 %t225, 1
  %t227 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t226)
  %t228 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t227, 1
  store { i64, ptr } %t229, ptr %l96, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = load i64, ptr %l95, !tbaa !24
  %t235 = mul i64 %t234, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t231, ptr %t233, i64 %t235, i1 false)
  %t236 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t237 = getelementptr { i64, { i64, ptr } }, ptr %l93, i32 0, i32 1
  store { i64, ptr } %t236, ptr %t237, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t238 = load { i64, { i64, ptr } }, ptr %l93
  store { i64, { i64, ptr } } %t238, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/free:Free", ptr %t239, i32 0, i32 1
  %t242 = load i64, ptr %l9, !tbaa !24
  %t245 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t241, i64 %t242)
  store ptr %t245, ptr %l100
  br label %bb38
bb38:
  %t246 = load ptr, ptr %l100, !tbaa !29
  store ptr %t246, ptr %l10, !tbaa !29
  %t247 = load ptr, ptr %l10, !tbaa !29
  %t249 = getelementptr %"compiler/typed:Body", ptr %t247, i32 0, i32 11
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t252 = icmp eq ptr %t250, null
  br i1 %t252, label %bb39, label %bb40
bb39:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l104, !tbaa !27
  %t254 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t255 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t257 = insertvalue { i64, { i64, ptr } } %t255, { i64, ptr } %t254, 1
  store { i64, { i64, ptr } } %t257, ptr %l106
  %t258 = getelementptr { i64, { i64, ptr } }, ptr %l106, i32 0, i32 1
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l107, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 0
  store i64 %t261, ptr %l108, !tbaa !24
  %t262 = load i64, ptr %l108, !tbaa !24
  %t263 = mul i64 %t262, 1
  %t264 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t263)
  %t265 = insertvalue { i64, ptr } undef, i64 %t262, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t264, 1
  store { i64, ptr } %t266, ptr %l109, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !27
  %t271 = load i64, ptr %l108, !tbaa !24
  %t272 = mul i64 %t271, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t268, ptr %t270, i64 %t272, i1 false)
  %t273 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t274 = getelementptr { i64, { i64, ptr } }, ptr %l106, i32 0, i32 1
  store { i64, ptr } %t273, ptr %t274, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t275 = load { i64, { i64, ptr } }, ptr %l106
  store { i64, { i64, ptr } } %t275, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t276 = load ptr, ptr %l3, !tbaa !29
  %t277 = load ptr, ptr %l10, !tbaa !29
  %t279 = getelementptr %"compiler/typed:Body", ptr %t277, i32 0, i32 2
  %t280 = load i32, ptr %t279, !tbaa !23
  %t283 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t276, i32 %t280)
  store i64 %t283, ptr %l113
  br label %bb42
bb42:
  %t284 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t285 = load i64, ptr %l113, !tbaa !24
  %t287 = icmp eq i64 %t285, %t284
  br i1 %t287, label %bb43, label %bb44
bb43:
  %t289 = load ptr, ptr %l8, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Call", ptr %t289, i32 0, i32 2
  %t292 = load i32, ptr %t291, !tbaa !23
  %t294 = sext i32 %t292 to i64
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l119, !tbaa !27
  %t295 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t297 = insertvalue { i64, { i64, ptr } } undef, i64 %t294, 0
  %t299 = insertvalue { i64, { i64, ptr } } %t297, { i64, ptr } %t295, 1
  store { i64, { i64, ptr } } %t299, ptr %l121
  %t300 = getelementptr { i64, { i64, ptr } }, ptr %l121, i32 0, i32 1
  %t301 = load { i64, ptr }, ptr %t300, !tbaa !27
  store { i64, ptr } %t301, ptr %l122, !tbaa !27
  %t302 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t302, 0
  store i64 %t303, ptr %l123, !tbaa !24
  %t304 = load i64, ptr %l123, !tbaa !24
  %t305 = mul i64 %t304, 1
  %t306 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t305)
  %t307 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t306, 1
  store { i64, ptr } %t308, ptr %l124, !tbaa !27
  %t309 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = load i64, ptr %l123, !tbaa !24
  %t314 = mul i64 %t313, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t310, ptr %t312, i64 %t314, i1 false)
  %t315 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t316 = getelementptr { i64, { i64, ptr } }, ptr %l121, i32 0, i32 1
  store { i64, ptr } %t315, ptr %t316, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t317 = load { i64, { i64, ptr } }, ptr %l121
  store { i64, { i64, ptr } } %t317, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t318 = load ptr, ptr %l3, !tbaa !29
  %t319 = load ptr, ptr %l10, !tbaa !29
  %t321 = getelementptr %"compiler/typed:Body", ptr %t319, i32 0, i32 2
  %t322 = load i32, ptr %t321, !tbaa !23
  %t325 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s5, ptr %t318, i32 %t322)
  store { i64, ptr } %t325, ptr %l128
  br label %bb46
bb46:
  %t326 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t326, 0
  %t329 = icmp ne i64 %t327, 1
  br i1 %t329, label %bb47, label %bb48
bb47:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l131, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t332 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t334 = insertvalue { i64, { i64, ptr } } %t332, { i64, ptr } %t331, 1
  store { i64, { i64, ptr } } %t334, ptr %l133
  %t335 = getelementptr { i64, { i64, ptr } }, ptr %l133, i32 0, i32 1
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !27
  store { i64, ptr } %t336, ptr %l134, !tbaa !27
  %t337 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t337, 0
  store i64 %t338, ptr %l135, !tbaa !24
  %t339 = load i64, ptr %l135, !tbaa !24
  %t340 = mul i64 %t339, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t340)
  %t342 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  store { i64, ptr } %t343, ptr %l136, !tbaa !27
  %t344 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = load i64, ptr %l135, !tbaa !24
  %t349 = mul i64 %t348, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t345, ptr %t347, i64 %t349, i1 false)
  %t350 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t351 = getelementptr { i64, { i64, ptr } }, ptr %l133, i32 0, i32 1
  store { i64, ptr } %t350, ptr %t351, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t352 = load { i64, { i64, ptr } }, ptr %l133
  store { i64, { i64, ptr } } %t352, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t353 = load ptr, ptr %l3, !tbaa !29
  %t354 = load ptr, ptr %l10, !tbaa !29
  %t356 = getelementptr %"compiler/typed:Body", ptr %t354, i32 0, i32 2
  %t357 = load i32, ptr %t356, !tbaa !23
  %t360 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t353, i32 %t357, i64 0)
  store i64 %t360, ptr %l140
  br label %bb50
bb50:
  %t361 = load i64, ptr %l140, !tbaa !24
  store i64 %t361, ptr %l11, !tbaa !24
  %t362 = load i64, ptr %l11, !tbaa !24
  %t364 = icmp sge i64 %t362, 0
  br i1 %t364, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l143, !tbaa !21
  br label %bb53
bb52:
  %t366 = load i64, ptr %l11, !tbaa !24
  %t367 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t370 = icmp eq i64 %t366, %t367
  store i1 %t370, ptr %l143, !tbaa !21
  br label %bb53
bb53:
  %t372 = load i1, ptr %l143, !tbaa !21
  br i1 %t372, label %bb54, label %bb55
bb54:
  %t373 = load i64, ptr %l11, !tbaa !24
  %t375 = icmp sge i64 %t373, 0
  br i1 %t375, label %bb56, label %bb57
bb55:
  br label %bb72
bb56:
  %t377 = load i64, ptr %l11, !tbaa !24
  store i64 %t377, ptr %l150, !tbaa !24
  %t378 = load ptr, ptr %l10, !tbaa !29
  %t380 = getelementptr %"compiler/typed:Body", ptr %t378, i32 0, i32 5
  %t382 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t380)
  store i64 %t382, ptr %l153
  br label %bb58
bb57:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb59
bb58:
  %t383 = load i64, ptr %l150, !tbaa !24
  %t384 = load i64, ptr %l153, !tbaa !24
  %t385 = icmp slt i64 %t383, %t384
  store i1 %t385, ptr %l149, !tbaa !21
  br label %bb59
bb59:
  %t387 = load i1, ptr %l149, !tbaa !21
  br i1 %t387, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t388 = load ptr, ptr %l2, !tbaa !29
  %t390 = getelementptr %"compiler/free:Free", ptr %t388, i32 0, i32 0
  %t391 = load ptr, ptr %t390, !tbaa !29
  %t393 = getelementptr %"compiler/generic:Program", ptr %t391, i32 0, i32 0
  %t394 = load ptr, ptr %t393, !tbaa !29
  %t396 = getelementptr %"compiler/load:Loader", ptr %t394, i32 0, i32 3
  %t397 = load ptr, ptr %t396, !tbaa !29
  store ptr %t397, ptr %l158, !tbaa !29
  %t398 = load ptr, ptr %l10, !tbaa !29
  %t400 = getelementptr %"compiler/typed:Body", ptr %t398, i32 0, i32 7
  store ptr %t400, ptr %l160, !tbaa !29
  %t401 = load ptr, ptr %l10, !tbaa !29
  %t403 = getelementptr %"compiler/typed:Body", ptr %t401, i32 0, i32 5
  %t404 = load i64, ptr %l11, !tbaa !24
  %t407 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t403, i64 %t404)
  store i32 %t407, ptr %l164
  br label %bb62
bb61:
  br label %bb71
bb62:
  %t408 = load i32, ptr %l164, !tbaa !23
  %t409 = sext i32 %t408 to i64
  %t410 = load ptr, ptr %l160, !tbaa !29
  %t412 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t410, i64 %t409)
  store %"compiler/typed:Local" %t412, ptr %l166
  br label %bb63
bb63:
  %t413 = getelementptr %"compiler/typed:Local", ptr %l166, i32 0, i32 0
  %t414 = load i32, ptr %t413, !tbaa !23
  %t415 = load ptr, ptr %l158, !tbaa !29
  %t417 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t415, i32 %t414)
  store { i64, ptr } %t417, ptr %l168
  br label %bb64
bb64:
  %t418 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t418, ptr %l12, !tbaa !27
  %t419 = load ptr, ptr %l2, !tbaa !29
  %t420 = load i64, ptr %l9, !tbaa !24
  %t423 = getelementptr %"compiler/free:Free", ptr %t419, i32 0, i32 54
  store i64 %t420, ptr %t423, !tbaa !24
  %t424 = load ptr, ptr %l2, !tbaa !29
  %t425 = load ptr, ptr %l10, !tbaa !29
  %t427 = getelementptr %"compiler/typed:Body", ptr %t425, i32 0, i32 3
  %t428 = load i64, ptr %t427, !tbaa !24
  %t431 = getelementptr %"compiler/free:Free", ptr %t424, i32 0, i32 55
  store i64 %t428, ptr %t431, !tbaa !24
  %t432 = load ptr, ptr %l2, !tbaa !29
  store ptr %t432, ptr %l174, !tbaa !29
  %t433 = load ptr, ptr %l10, !tbaa !29
  %t435 = getelementptr %"compiler/typed:Body", ptr %t433, i32 0, i32 4
  %t436 = getelementptr %"compiler/source:Span", ptr %t435, i32 0, i32 0
  %t437 = load i32, ptr %t436, !tbaa !23
  %t438 = load ptr, ptr %l10, !tbaa !29
  %t440 = getelementptr %"compiler/typed:Body", ptr %t438, i32 0, i32 4
  %t441 = getelementptr %"compiler/source:Span", ptr %t440, i32 0, i32 0
  %t442 = load i32, ptr %t441, !tbaa !23
  %t445 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s11, i32 %t437, i32 %t442)
  store %"compiler/source:Span" %t445, ptr %l179
  br label %bb65
bb65:
  %t446 = load %"compiler/source:Span", ptr %l179
  %t447 = load ptr, ptr %l174, !tbaa !29
  %t448 = getelementptr %"compiler/free:Free", ptr %t447, i32 0, i32 56
  store %"compiler/source:Span" %t446, ptr %t448
  %t449 = load ptr, ptr %l2, !tbaa !29
  %t450 = load i64, ptr %l9, !tbaa !24
  %t453 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s11, ptr %t449, i64 %t450)
  store { i64, ptr } %t453, ptr %l182
  br label %bb66
bb66:
  %t454 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t454, ptr %l183, !tbaa !27
  %t455 = load ptr, ptr %l2, !tbaa !29
  store ptr %t455, ptr %l184, !tbaa !29
  %t456 = load ptr, ptr %l3, !tbaa !29
  %t457 = load ptr, ptr %l10, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Body", ptr %t457, i32 0, i32 2
  %t460 = load i32, ptr %t459, !tbaa !23
  %t463 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s11, ptr %t456, i32 %t460)
  store { i64, ptr } %t463, ptr %l188
  br label %bb67
bb67:
  %t464 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr i32, ptr %t465, i64 0
  %t467 = load i32, ptr %t466, !tbaa !33
  %t468 = load ptr, ptr %l184, !tbaa !29
  %t470 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltSpell(ptr %v0, ptr %s11, ptr %t468, i32 %t467)
  store { i64, ptr } %t470, ptr %l190
  br label %bb68
bb68:
  %t471 = load ptr, ptr %l2, !tbaa !29
  store ptr %t471, ptr %l191, !tbaa !29
  %t472 = load ptr, ptr %l3, !tbaa !29
  %t473 = load ptr, ptr %l10, !tbaa !29
  %t475 = getelementptr %"compiler/typed:Body", ptr %t473, i32 0, i32 2
  %t476 = load i32, ptr %t475, !tbaa !23
  %t479 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s11, ptr %t472, i32 %t476)
  store { i64, ptr } %t479, ptr %l195
  br label %bb69
bb69:
  %t480 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !27
  %t482 = getelementptr i32, ptr %t481, i64 0
  %t483 = load i32, ptr %t482, !tbaa !33
  %t484 = load ptr, ptr %l191, !tbaa !29
  %t486 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewhat(ptr %v0, ptr %s11, ptr %t484, i32 %t483)
  store { i64, ptr } %t486, ptr %l197
  br label %bb70
bb70:
  %t487 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t488 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t489 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t489, 1
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t492 = add i64 %t488, %t491
  %t493 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t494 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t495 = add i64 %t492, %t494
  %t496 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t497 = extractvalue { i64, ptr } %t496, 1
  %t498 = extractvalue { i64, ptr } %t496, 0
  %t499 = add i64 %t495, %t498
  %t500 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t501 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t502 = add i64 %t499, %t501
  %t503 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t504 = extractvalue { i64, ptr } %t503, 1
  %t505 = extractvalue { i64, ptr } %t503, 0
  %t506 = add i64 %t502, %t505
  %t507 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t508 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t509 = add i64 %t506, %t508
  %t510 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t510, 1
  %t512 = extractvalue { i64, ptr } %t510, 0
  %t513 = add i64 %t509, %t512
  %t514 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t513)
  call void @olang_textcopy(ptr %t514, ptr %t487, i64 %t488)
  %t515 = getelementptr i8, ptr %t514, i64 %t488
  call void @olang_textcopy(ptr %t515, ptr %t490, i64 %t491)
  %t516 = getelementptr i8, ptr %t515, i64 %t491
  call void @olang_textcopy(ptr %t516, ptr %t493, i64 %t494)
  %t517 = getelementptr i8, ptr %t516, i64 %t494
  call void @olang_textcopy(ptr %t517, ptr %t497, i64 %t498)
  %t518 = getelementptr i8, ptr %t517, i64 %t498
  call void @olang_textcopy(ptr %t518, ptr %t500, i64 %t501)
  %t519 = getelementptr i8, ptr %t518, i64 %t501
  call void @olang_textcopy(ptr %t519, ptr %t504, i64 %t505)
  %t520 = getelementptr i8, ptr %t519, i64 %t505
  call void @olang_textcopy(ptr %t520, ptr %t507, i64 %t508)
  %t521 = getelementptr i8, ptr %t520, i64 %t508
  call void @olang_textcopy(ptr %t521, ptr %t511, i64 %t512)
  %t522 = insertvalue { i64, ptr } undef, i64 %t513, 0
  %t523 = insertvalue { i64, ptr } %t522, ptr %t514, 1
  %t524 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t526 = insertvalue { i64, { i64, ptr } } %t524, { i64, ptr } %t523, 1
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s5)
  store { i64, { i64, ptr } } %t526, ptr %rv
  br label %ret
bb71:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l200, !tbaa !27
  %t528 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t529 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t531 = insertvalue { i64, { i64, ptr } } %t529, { i64, ptr } %t528, 1
  store { i64, { i64, ptr } } %t531, ptr %l202
  %t532 = getelementptr { i64, { i64, ptr } }, ptr %l202, i32 0, i32 1
  %t533 = load { i64, ptr }, ptr %t532, !tbaa !27
  store { i64, ptr } %t533, ptr %l203, !tbaa !27
  %t534 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t535 = extractvalue { i64, ptr } %t534, 0
  store i64 %t535, ptr %l204, !tbaa !24
  %t536 = load i64, ptr %l204, !tbaa !24
  %t537 = mul i64 %t536, 1
  %t538 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t537)
  %t539 = insertvalue { i64, ptr } undef, i64 %t536, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  store { i64, ptr } %t540, ptr %l205, !tbaa !27
  %t541 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = load i64, ptr %l204, !tbaa !24
  %t546 = mul i64 %t545, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t542, ptr %t544, i64 %t546, i1 false)
  %t547 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t548 = getelementptr { i64, { i64, ptr } }, ptr %l202, i32 0, i32 1
  store { i64, ptr } %t547, ptr %t548, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t549 = load { i64, { i64, ptr } }, ptr %l202
  store { i64, { i64, ptr } } %t549, ptr %rv
  br label %ret
bb72:
  %t550 = load ptr, ptr %l2, !tbaa !29
  %t552 = getelementptr %"compiler/free:Free", ptr %t550, i32 0, i32 37
  %t553 = load i64, ptr %l9, !tbaa !24
  %t556 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t552, i64 %t553)
  store i1 %t556, ptr %l209
  br label %bb73
bb73:
  %t557 = load i1, ptr %l209, !tbaa !21
  %t558 = xor i1 %t557, true
  br i1 %t558, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s13
  %t560 = load ptr, ptr %l2, !tbaa !29
  %t561 = load i64, ptr %l9, !tbaa !24
  %t564 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s13, ptr %t560, i64 %t561)
  store { i64, ptr } %t564, ptr %l213
  br label %bb76
bb75:
  br label %bb77
bb76:
  %t565 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t566 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t567 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t567, 1
  %t569 = extractvalue { i64, ptr } %t567, 0
  %t570 = add i64 %t566, %t569
  %t571 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t572 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t573 = add i64 %t570, %t572
  %t574 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t573)
  call void @olang_textcopy(ptr %t574, ptr %t565, i64 %t566)
  %t575 = getelementptr i8, ptr %t574, i64 %t566
  call void @olang_textcopy(ptr %t575, ptr %t568, i64 %t569)
  %t576 = getelementptr i8, ptr %t575, i64 %t569
  call void @olang_textcopy(ptr %t576, ptr %t571, i64 %t572)
  %t577 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t574, 1
  %t579 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t581 = insertvalue { i64, { i64, ptr } } %t579, { i64, ptr } %t578, 1
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s5)
  store { i64, { i64, ptr } } %t581, ptr %rv
  br label %ret
bb77:
  %t583 = load ptr, ptr %l8, !tbaa !29
  %t585 = getelementptr %"compiler/typed:Call", ptr %t583, i32 0, i32 2
  %t586 = load i32, ptr %t585, !tbaa !23
  %t588 = sext i32 %t586 to i64
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l219, !tbaa !27
  %t589 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t591 = insertvalue { i64, { i64, ptr } } undef, i64 %t588, 0
  %t593 = insertvalue { i64, { i64, ptr } } %t591, { i64, ptr } %t589, 1
  store { i64, { i64, ptr } } %t593, ptr %l221
  %t594 = getelementptr { i64, { i64, ptr } }, ptr %l221, i32 0, i32 1
  %t595 = load { i64, ptr }, ptr %t594, !tbaa !27
  store { i64, ptr } %t595, ptr %l222, !tbaa !27
  %t596 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t597 = extractvalue { i64, ptr } %t596, 0
  store i64 %t597, ptr %l223, !tbaa !24
  %t598 = load i64, ptr %l223, !tbaa !24
  %t599 = mul i64 %t598, 1
  %t600 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t599)
  %t601 = insertvalue { i64, ptr } undef, i64 %t598, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t600, 1
  store { i64, ptr } %t602, ptr %l224, !tbaa !27
  %t603 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t604 = load ptr, ptr %t603, !tbaa !27
  %t605 = getelementptr { i64, ptr }, ptr %l222, i32 0, i32 1
  %t606 = load ptr, ptr %t605, !tbaa !27
  %t607 = load i64, ptr %l223, !tbaa !24
  %t608 = mul i64 %t607, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t604, ptr %t606, i64 %t608, i1 false)
  %t609 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t610 = getelementptr { i64, { i64, ptr } }, ptr %l221, i32 0, i32 1
  store { i64, ptr } %t609, ptr %t610, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t611 = load { i64, { i64, ptr } }, ptr %l221
  store { i64, { i64, ptr } } %t611, ptr %rv
  br label %ret
bb78:
  br i1 true, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l225, !tbaa !27
  %t612 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t613 = insertvalue { i64, { i64, ptr } } undef, i64 -1, 0
  %t615 = insertvalue { i64, { i64, ptr } } %t613, { i64, ptr } %t612, 1
  store { i64, { i64, ptr } } %t615, ptr %l227
  %t616 = getelementptr { i64, { i64, ptr } }, ptr %l227, i32 0, i32 1
  %t617 = load { i64, ptr }, ptr %t616, !tbaa !27
  store { i64, ptr } %t617, ptr %l228, !tbaa !27
  %t618 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t619 = extractvalue { i64, ptr } %t618, 0
  store i64 %t619, ptr %l229, !tbaa !24
  %t620 = load i64, ptr %l229, !tbaa !24
  %t621 = mul i64 %t620, 1
  %t622 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t621)
  %t623 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t624 = insertvalue { i64, ptr } %t623, ptr %t622, 1
  store { i64, ptr } %t624, ptr %l230, !tbaa !27
  %t625 = getelementptr { i64, ptr }, ptr %l230, i32 0, i32 1
  %t626 = load ptr, ptr %t625, !tbaa !27
  %t627 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t628 = load ptr, ptr %t627, !tbaa !27
  %t629 = load i64, ptr %l229, !tbaa !24
  %t630 = mul i64 %t629, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t626, ptr %t628, i64 %t630, i1 false)
  %t631 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t632 = getelementptr { i64, { i64, ptr } }, ptr %l227, i32 0, i32 1
  store { i64, ptr } %t631, ptr %t632, !tbaa !27
  %t633 = load { i64, { i64, ptr } }, ptr %l227
  store { i64, { i64, ptr } } %t633, ptr %rv
  br label %ret
bb82:
  call void @__olang_check_failed(ptr @olang_loc_fa71248d89b17b0b_39d265aac120d27f)
  unreachable
ret:
  %rr = load { i64, { i64, ptr } }, ptr %rv
  ret { i64, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eloopAround(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i1
  %l43 = alloca i64
  %l47 = alloca i64
  %l49 = alloca i1
  %l53 = alloca i64
  %l56 = alloca i1
  %l57 = alloca i64
  %l61 = alloca i64
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
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 14
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
  br label %bb29
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
  %t55 = getelementptr %"compiler/free:walker", ptr %t53, i32 0, i32 14
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l39
  br label %bb12
bb12:
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load i64, ptr %l39, !tbaa !24
  %t63 = icmp slt i64 %t61, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load i64, ptr %l1, !tbaa !24
  store i64 %t65, ptr %l43, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/free:walker", ptr %t66, i32 0, i32 15
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l47
  br label %bb15
bb14:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb16
bb15:
  %t73 = load i64, ptr %l43, !tbaa !24
  %t74 = load i64, ptr %l47, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  store i1 %t75, ptr %l42, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l42, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/free:walker", ptr %t78, i32 0, i32 14
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t80, i64 %t81)
  store i64 %t84, ptr %l53
  br label %bb19
bb18:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb20
bb19:
  %t85 = load i64, ptr %l2, !tbaa !24
  %t86 = load i64, ptr %l53, !tbaa !24
  %t88 = icmp slt i64 %t86, %t85
  store i1 %t88, ptr %l49, !tbaa !21
  br label %bb20
bb20:
  %t90 = load i1, ptr %l49, !tbaa !21
  br i1 %t90, label %bb21, label %bb22
bb21:
  %t91 = load i64, ptr %l2, !tbaa !24
  store i64 %t91, ptr %l57, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/free:walker", ptr %t92, i32 0, i32 15
  %t95 = load i64, ptr %l8, !tbaa !24
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l61
  br label %bb23
bb22:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb24
bb23:
  %t99 = load i64, ptr %l57, !tbaa !24
  %t100 = load i64, ptr %l61, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  store i1 %t101, ptr %l56, !tbaa !21
  br label %bb24
bb24:
  %t103 = load i1, ptr %l56, !tbaa !21
  br i1 %t103, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t105 = load i64, ptr %l7, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l7, !tbaa !24
  br label %bb8
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l18 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca i1
  %l29 = alloca i1
  %l37 = alloca ptr
  %l39 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i1
  %l62 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb4:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t12, i32 0, i32 1
  %t15 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t14, i32 0, i32 0
  %t16 = load %"compiler/source:Span", ptr %t15
  store %"compiler/source:Span" %t16, ptr %l3
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t20, i32 0, i32 1
  %t22 = load i32, ptr %t21
  store i32 %t22, ptr %l4, !tbaa !23
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l5, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t30)
  store ptr %t32, ptr %l26
  br label %bb5
bb5:
  %t33 = load i32, ptr %l2, !tbaa !23
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t36 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t34, i32 %t33)
  store i1 %t36, ptr %l28
  br label %bb6
bb6:
  %t37 = load i1, ptr %l28, !tbaa !21
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb12
bb9:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t41, i32 0, i32 0
  %t43 = load %"compiler/source:Span", ptr %t42
  store %"compiler/source:Span" %t43, ptr %l6
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t47, i32 0, i32 1
  %t49 = load i32, ptr %t48
  store i32 %t49, ptr %l7, !tbaa !23
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t53, i32 0, i32 2
  %t55 = load i32, ptr %t54
  store i32 %t55, ptr %l8, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t57)
  store ptr %t59, ptr %l37
  br label %bb10
bb10:
  %t60 = load i32, ptr %l2, !tbaa !23
  %t61 = load ptr, ptr %l37, !tbaa !29
  %t63 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %t61, i32 %t60)
  store i1 %t63, ptr %l39
  br label %bb11
bb11:
  %t64 = load i1, ptr %l39, !tbaa !21
  %t65 = xor i1 %t64, true
  store i1 %t65, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t67 = load i1, ptr %l29, !tbaa !21
  br i1 %t67, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/source:Span", ptr %t72
  store %"compiler/source:Span" %t73, ptr %l9
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t77, i32 0, i32 1
  %t79 = load i32, ptr %t78
  store i32 %t79, ptr %l10, !tbaa !23
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t83, i32 0, i32 2
  %t85 = load i32, ptr %t84
  %t89 = sext i32 %t85 to i64
  store i64 %t89, ptr %l12, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/free:walker", ptr %t91, i32 0, i32 39
  %t94 = load i64, ptr %l12, !tbaa !24
  %t97 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t93, i64 %t94)
  store i1 %t97, ptr %l53
  br label %bb16
bb16:
  %t98 = load i1, ptr %l53, !tbaa !21
  br i1 %t98, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb23
bb18:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/free:walker", ptr %t99, i32 0, i32 38
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = icmp sgt i64 %t102, 0
  br i1 %t104, label %bb19, label %bb20
bb19:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/free:walker", ptr %t106, i32 0, i32 6
  %t109 = load i64, ptr %l12, !tbaa !24
  %t112 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t108, i64 %t109)
  store i1 %t112, ptr %l62
  br label %bb21
bb20:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb22
bb21:
  %t113 = load i1, ptr %l62, !tbaa !21
  store i1 %t113, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t114 = load i1, ptr %l58, !tbaa !21
  store i1 %t114, ptr %l54, !tbaa !21
  br label %bb23
bb23:
  %t115 = load i1, ptr %l54, !tbaa !21
  store i1 %t115, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eorStoreOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l11 = alloca i64
  %l16 = alloca ptr
  %l22 = alloca %"compiler/free:orStore"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ederefRoot(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %t9, ptr %t10)
  store i64 %t13, ptr %l11
  br label %bb5
bb5:
  %t14 = load i64, ptr %l11, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/free:walker", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/free:Free", ptr %t22, i32 0, i32 52
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/free:walker", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t36 = call %"compiler/free:orStore" @compiler_2ffree_3aorStore_2ector(ptr %v2, ptr %v1, ptr %v0, i64 %t28, i64 %t29, ptr %a2, ptr %t31)
  store %"compiler/free:orStore" %t36, ptr %l22
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t38 = load %"compiler/free:orStore", ptr %l22
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2ePush_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v0, ptr %t37, %"compiler/free:orStore" %t38)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %lp13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca ptr
  %lp16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %lp20 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i64
  %l47 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i32
  %l60 = alloca i64
  %l63 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l71 = alloca i64
  %l74 = alloca ptr
  %l77 = alloca i64
  %l78 = alloca i64
  %l82 = alloca i64
  %l85 = alloca ptr
  %l86 = alloca i64
  %l91 = alloca %"compiler/free:feed"
  %l93 = alloca i64
  %l94 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca i1
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca ptr
  %l106 = alloca i1
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l116 = alloca ptr
  %l118 = alloca i32
  %l120 = alloca i64
  %l123 = alloca ptr
  %l126 = alloca i64
  %l127 = alloca i64
  %l129 = alloca ptr
  %l130 = alloca i1
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l142 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca ptr
  %l144 = alloca ptr
  %l147 = alloca i32
  %l148 = alloca i32
  %l149 = alloca i64
  %l152 = alloca ptr
  %l155 = alloca i64
  %l156 = alloca i64
  %l158 = alloca ptr
  %l159 = alloca i1
  %l167 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l168 = alloca ptr
  %l169 = alloca i1
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l177 = alloca ptr
  %l178 = alloca i1
  %l181 = alloca i64
  %l183 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l187 = alloca i64
  %l189 = alloca ptr
  %l192 = alloca i64
  %l194 = alloca ptr
  %l196 = alloca ptr
  %l199 = alloca i64
  %l201 = alloca ptr
  %l202 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l204 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l206 = alloca ptr
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s9 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t7 = load ptr, ptr %l23, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l23, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l24, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l3
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb37
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l4, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t31 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euse(ptr %v0, ptr %t27, i64 %t30, %"compiler/source:Span" %t31)
  br label %bb6
bb6:
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l35
  br label %bb7
bb7:
  %t36 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t36, ptr %lp5
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  %t38 = load ptr, ptr %lp5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %t38
  %t39 = load ptr, ptr %lp5
  store ptr %t39, ptr %l36, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/free:walker", ptr %t40, i32 0, i32 3
  %t43 = load i32, ptr %l4, !tbaa !23
  %t45 = sext i32 %t43 to i64
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t42, i64 %t45)
  store ptr %t48, ptr %l41
  br label %bb8
bb8:
  %t49 = load ptr, ptr %l36, !tbaa !29
  %t50 = load ptr, ptr %l41, !tbaa !29
  %t51 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %v0, ptr %t49, ptr %t50)
  store i64 %t51, ptr %l42
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/free:walker", ptr %t52, i32 0, i32 4
  %t55 = load i32, ptr %l4, !tbaa !23
  %t57 = sext i32 %t55 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t54, i64 %t57, i1 true)
  br label %bb10
bb10:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/free:walker", ptr %t60, i32 0, i32 7
  %t63 = load i32, ptr %l4, !tbaa !23
  %t65 = sext i32 %t63 to i64
  %t68 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t62, i64 %t65)
  %t69 = extractvalue { i32, i64 } %t68, 1
  %t70 = extractvalue { i32, i64 } %t68, 0
  store i32 %t70, ptr %l53
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb12, label %ok.72, !prof !99
ok.72:
  store i64 %t69, ptr %l52
  br label %bb11
bb11:
  %t73 = load i64, ptr %l52, !tbaa !24
  store i64 %t73, ptr %l47, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l47, !tbaa !24
  br label %bb14
bb14:
  %t74 = load i64, ptr %l47, !tbaa !24
  store i64 %t74, ptr %l6, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = icmp sge i64 %t75, 0
  br i1 %t77, label %bb15, label %bb16
bb15:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/free:walker", ptr %t80, i32 0, i32 8
  %t83 = load i32, ptr %t82, !tbaa !23
  %t84 = load i64, ptr %l6, !tbaa !24
  %t88 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t79, i32 %t83, i64 %t84)
  store i64 %t88, ptr %l60
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t89 = load i64, ptr %l60, !tbaa !24
  store i64 %t89, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l7, !tbaa !24
  %t92 = icmp sge i64 %t90, 0
  br i1 %t92, label %bb18, label %bb19
bb18:
  %t94 = load ptr, ptr %lp5
  store ptr %t94, ptr %l63, !tbaa !29
  %t95 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t96 = load i64, ptr %l7, !tbaa !24
  %t99 = call i64 @compiler_2ffree_2eorig(i64 %t95, i64 %t96)
  store i64 %t99, ptr %l66
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t100 = load ptr, ptr %l63, !tbaa !29
  %t101 = load i64, ptr %l66, !tbaa !24
  %t102 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t100, i64 %t101)
  store i64 %t102, ptr %l67
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l4, !tbaa !23
  %t106 = sext i32 %t104 to i64
  %t109 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eownLocal(ptr %v0, ptr %t103, i64 %t106)
  store i64 %t109, ptr %l71
  br label %bb24
bb24:
  %t110 = load i64, ptr %l71, !tbaa !24
  store i64 %t110, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = icmp sge i64 %t111, 0
  br i1 %t113, label %bb25, label %bb26
bb25:
  %t115 = load ptr, ptr %lp5
  store ptr %t115, ptr %l74, !tbaa !29
  %t116 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = call i64 @compiler_2ffree_2eorig(i64 %t116, i64 %t117)
  store i64 %t120, ptr %l77
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t121 = load ptr, ptr %l74, !tbaa !29
  %t122 = load i64, ptr %l77, !tbaa !24
  %t123 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t121, i64 %t122)
  store i64 %t123, ptr %l78
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i32, ptr %l4, !tbaa !23
  %t127 = sext i32 %t125 to i64
  %t130 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeeder(ptr %v0, ptr %t124, i64 %t127)
  store i64 %t130, ptr %l82
  br label %bb30
bb30:
  %t131 = load i64, ptr %l82, !tbaa !24
  store i64 %t131, ptr %l9, !tbaa !24
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb31, label %bb32
bb31:
  %t136 = load ptr, ptr %lp5
  store ptr %t136, ptr %l85, !tbaa !29
  %t137 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  store i64 %t137, ptr %l86, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/free:walker", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/free:Free", ptr %t141, i32 0, i32 73
  %t144 = load i64, ptr %l9, !tbaa !24
  %t147 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t143, i64 %t144)
  store %"compiler/free:feed" %t147, ptr %l91
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t148 = getelementptr %"compiler/free:feed", ptr %l91, i32 0, i32 2
  %t149 = load i64, ptr %t148, !tbaa !24
  %t150 = load i64, ptr %l86, !tbaa !24
  %t152 = call i64 @compiler_2ffree_2eorig(i64 %t150, i64 %t149)
  store i64 %t152, ptr %l93
  br label %bb34
bb34:
  %t153 = load ptr, ptr %l85, !tbaa !29
  %t154 = load i64, ptr %l93, !tbaa !24
  %t155 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t153, i64 %t154)
  store i64 %t155, ptr %l94
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t156 = load ptr, ptr %lp5
  %t157 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %rv
  br label %ret
bb37:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t160 = load ptr, ptr %l96, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb38, label %bb39
bb38:
  %t163 = load ptr, ptr %l96, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 8}
  %t166 = icmp eq i64 %t164, 2
  store i1 %t166, ptr %l97, !tbaa !21
  br label %bb39
bb39:
  %t167 = load i1, ptr %l97, !tbaa !21
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [4 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l10, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l10, !tbaa !29
  %t178 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t174, ptr %t175)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l104
  br label %bb43
bb43:
  %t179 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %rv
  br label %ret
bb44:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t181 = load ptr, ptr %l105, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb45, label %bb46
bb45:
  %t184 = load ptr, ptr %l105, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 8}
  %t187 = icmp eq i64 %t185, 3
  store i1 %t187, ptr %l106, !tbaa !21
  br label %bb46
bb46:
  %t188 = load i1, ptr %l106, !tbaa !21
  br i1 %t188, label %bb47, label %bb48
bb47:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t191, i32 0, i32 2
  %t193 = load ptr, ptr %t192
  store ptr %t193, ptr %l11, !tbaa !29
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t197, i32 0, i32 3
  %t199 = load i64, ptr %t198
  store i64 %t199, ptr %l12, !tbaa !24
  br label %bb49
bb48:
  br label %bb58
bb49:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l11, !tbaa !29
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t201, ptr %t202)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l115
  br label %bb50
bb50:
  %t206 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t206, ptr %lp13
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  %t208 = load ptr, ptr %lp13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, ptr %t208
  %t209 = load ptr, ptr %l2, !tbaa !29
  store ptr %t209, ptr %l116, !tbaa !29
  %t210 = load ptr, ptr %l11, !tbaa !29
  %t212 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t210)
  store i32 %t212, ptr %l118
  br label %bb51
bb51:
  %t213 = load i64, ptr %l12, !tbaa !24
  %t214 = load ptr, ptr %l116, !tbaa !29
  %t215 = load i32, ptr %l118, !tbaa !23
  %t217 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t214, i32 %t215, i64 %t213)
  store i64 %t217, ptr %l120
  br label %bb52
bb52:
  %t218 = load i64, ptr %l120, !tbaa !24
  store i64 %t218, ptr %l14, !tbaa !24
  %t219 = load i64, ptr %l14, !tbaa !24
  %t221 = icmp sge i64 %t219, 0
  br i1 %t221, label %bb53, label %bb54
bb53:
  %t223 = load ptr, ptr %lp13
  store ptr %t223, ptr %l123, !tbaa !29
  %t224 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t225 = load i64, ptr %l14, !tbaa !24
  %t228 = call i64 @compiler_2ffree_2eorig(i64 %t224, i64 %t225)
  store i64 %t228, ptr %l126
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t229 = load ptr, ptr %l123, !tbaa !29
  %t230 = load i64, ptr %l126, !tbaa !24
  %t231 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t229, i64 %t230)
  store i64 %t231, ptr %l127
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t232 = load ptr, ptr %lp13
  %t233 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t232
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %rv
  br label %ret
bb58:
  %t235 = load ptr, ptr %l1, !tbaa !29
  store ptr %t235, ptr %l129, !tbaa !29
  store i1 false, ptr %l130, !tbaa !21
  %t236 = load ptr, ptr %l129, !tbaa !29
  %t237 = icmp ne ptr %t236, null
  br i1 %t237, label %bb59, label %bb60
bb59:
  %t239 = load ptr, ptr %l129, !tbaa !29
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 8}
  %t242 = icmp eq i64 %t240, 4
  store i1 %t242, ptr %l130, !tbaa !21
  br label %bb60
bb60:
  %t243 = load i1, ptr %l130, !tbaa !21
  br i1 %t243, label %bb61, label %bb62
bb61:
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t246 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t246, i32 0, i32 2
  %t248 = load ptr, ptr %t247
  store ptr %t248, ptr %l15, !tbaa !29
  br label %bb63
bb62:
  br label %bb74
bb63:
  store %olang.scope zeroinitializer, ptr %s9
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load ptr, ptr %l15, !tbaa !29
  %t253 = getelementptr %"compiler/typed:Elem", ptr %t251, i32 0, i32 0
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t257 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t250, ptr %t254)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t257, ptr %l138
  br label %bb64
bb64:
  %t258 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t258, ptr %lp16
  %t259 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138
  %t260 = load ptr, ptr %lp16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t259, ptr %t260
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l15, !tbaa !29
  %t264 = getelementptr %"compiler/typed:Elem", ptr %t262, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t268 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s9, ptr %t261, ptr %t265)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l142
  br label %bb65
bb65:
  %t269 = load ptr, ptr %l2, !tbaa !29
  store ptr %t269, ptr %l143, !tbaa !29
  %t270 = load ptr, ptr %l2, !tbaa !29
  store ptr %t270, ptr %l144, !tbaa !29
  %t271 = load ptr, ptr %l15, !tbaa !29
  %t273 = getelementptr %"compiler/typed:Elem", ptr %t271, i32 0, i32 0
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t274)
  store i32 %t276, ptr %l147
  br label %bb66
bb66:
  %t277 = load ptr, ptr %l144, !tbaa !29
  %t278 = load i32, ptr %l147, !tbaa !23
  %t279 = call i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %t277, i32 %t278)
  store i32 %t279, ptr %l148
  br label %bb67
bb67:
  %t280 = load ptr, ptr %l143, !tbaa !29
  %t281 = load i32, ptr %l148, !tbaa !23
  %t282 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t280, i32 %t281, i64 -1)
  store i64 %t282, ptr %l149
  br label %bb68
bb68:
  %t283 = load i64, ptr %l149, !tbaa !24
  store i64 %t283, ptr %l17, !tbaa !24
  %t284 = load i64, ptr %l17, !tbaa !24
  %t286 = icmp sge i64 %t284, 0
  br i1 %t286, label %bb69, label %bb70
bb69:
  %t288 = load ptr, ptr %lp16
  store ptr %t288, ptr %l152, !tbaa !29
  %t289 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t290 = load i64, ptr %l17, !tbaa !24
  %t293 = call i64 @compiler_2ffree_2eorig(i64 %t289, i64 %t290)
  store i64 %t293, ptr %l155
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t294 = load ptr, ptr %l152, !tbaa !29
  %t295 = load i64, ptr %l155, !tbaa !24
  %t296 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t294, i64 %t295)
  store i64 %t296, ptr %l156
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t297 = load ptr, ptr %lp16
  %t298 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t297
  call void @__olang_scope_close(ptr %s9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t298, ptr %rv
  br label %ret
bb74:
  %t300 = load ptr, ptr %l1, !tbaa !29
  store ptr %t300, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t301 = load ptr, ptr %l158, !tbaa !29
  %t302 = icmp ne ptr %t301, null
  br i1 %t302, label %bb75, label %bb76
bb75:
  %t304 = load ptr, ptr %l158, !tbaa !29
  %t305 = load i64, ptr %t304, !range !{i64 0, i64 8}
  %t307 = icmp eq i64 %t305, 5
  store i1 %t307, ptr %l159, !tbaa !21
  br label %bb76
bb76:
  %t308 = load i1, ptr %l159, !tbaa !21
  br i1 %t308, label %bb77, label %bb78
bb77:
  %t309 = load ptr, ptr %l1, !tbaa !29
  %t311 = getelementptr { i64, [4 x i64] }, ptr %t309, i32 0, i32 1
  %t312 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t311, i32 0, i32 2
  %t313 = load ptr, ptr %t312
  store ptr %t313, ptr %l18, !tbaa !29
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load ptr, ptr %l18, !tbaa !29
  %t318 = getelementptr %"compiler/typed:Payload", ptr %t316, i32 0, i32 0
  %t319 = load ptr, ptr %t318, !tbaa !29
  %t322 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v1, ptr %v2, ptr %t315, ptr %t319)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %l167
  br label %bb80
bb80:
  %t323 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l167
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %rv
  br label %ret
bb81:
  %t324 = load ptr, ptr %l1, !tbaa !29
  store ptr %t324, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t325 = load ptr, ptr %l168, !tbaa !29
  %t326 = icmp ne ptr %t325, null
  br i1 %t326, label %bb82, label %bb83
bb82:
  %t328 = load ptr, ptr %l168, !tbaa !29
  %t329 = load i64, ptr %t328, !range !{i64 0, i64 8}
  %t331 = icmp eq i64 %t329, 6
  store i1 %t331, ptr %l169, !tbaa !21
  br label %bb83
bb83:
  %t332 = load i1, ptr %l169, !tbaa !21
  br i1 %t332, label %bb84, label %bb85
bb84:
  %t333 = load ptr, ptr %l1, !tbaa !29
  %t335 = getelementptr { i64, [4 x i64] }, ptr %t333, i32 0, i32 1
  %t336 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t335, i32 0, i32 2
  %t337 = load ptr, ptr %t336
  store ptr %t337, ptr %l19, !tbaa !29
  br label %bb86
bb85:
  br label %bb88
bb86:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load ptr, ptr %l19, !tbaa !29
  %t343 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t339, ptr %t340)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t343, ptr %l176
  br label %bb87
bb87:
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %rv
  br label %ret
bb88:
  %t345 = load ptr, ptr %l1, !tbaa !29
  store ptr %t345, ptr %l177, !tbaa !29
  store i1 false, ptr %l178, !tbaa !21
  %t346 = load ptr, ptr %l177, !tbaa !29
  %t347 = icmp ne ptr %t346, null
  br i1 %t347, label %bb89, label %bb90
bb89:
  %t349 = load ptr, ptr %l177, !tbaa !29
  %t350 = load i64, ptr %t349, !range !{i64 0, i64 8}
  %t352 = icmp eq i64 %t350, 7
  store i1 %t352, ptr %l178, !tbaa !21
  br label %bb90
bb90:
  %t353 = load i1, ptr %l178, !tbaa !21
  br i1 %t353, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb112
bb93:
  %t354 = ptrtoint ptr %v2 to i64
  store i64 %t354, ptr %l181, !tbaa !24
  %t355 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2ereach_2elocal_2e20
  br i1 %t355, label %bb94, label %bb95
bb94:
  %t357 = call ptr @__olang_region_make(ptr %v2)
  %t358 = ptrtoint ptr %t357 to i64
  store i64 %t358, ptr %l181, !tbaa !24
  br label %bb95
bb95:
  %t359 = load i64, ptr %l181
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t360, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t361, ptr %l183
  br label %bb96
bb96:
  %t362 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2ereach_2elocal_2e20
  br i1 %t362, label %bb97, label %bb98
bb97:
  %t364 = load i64, ptr %l181
  %t365 = inttoptr i64 %t364 to ptr
  %t366 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l183, i32 0, i32 0
  %t367 = load { i64, ptr }, ptr %t366
  %t368 = extractvalue { i64, ptr } %t367, 1
  %t369 = call ptr @__olang_region_or(ptr %t368, ptr null)
  %t370 = icmp ne ptr %t369, null
  %t371 = select i1 %t370, ptr %t369, ptr null
  %t372 = icmp eq ptr %t371, %t365
  call void @__olang_region_settle(ptr %t365, i1 %t372)
  br label %bb98
bb98:
  %t373 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t373, ptr %lp20
  %t374 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l183
  %t375 = load ptr, ptr %lp20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %t375
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/free:walker", ptr %t376, i32 0, i32 9
  %t380 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t378)
  store i64 %t380, ptr %l187
  br label %bb99
bb99:
  %t381 = load i64, ptr %l187, !tbaa !24
  %t382 = icmp sgt i64 %t381, 0
  br i1 %t382, label %bb100, label %bb101
bb100:
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l189, !tbaa !29
  %t385 = load ptr, ptr %l189, !tbaa !29
  %t386 = getelementptr %"compiler/free:walker", ptr %t385, i32 0, i32 29
  %t387 = load i64, ptr %t386, !tbaa !24
  %t389 = add i64 %t387, 1
  %t391 = load ptr, ptr %l189, !tbaa !29
  %t392 = getelementptr %"compiler/free:walker", ptr %t391, i32 0, i32 29
  store i64 %t389, ptr %t392, !tbaa !24
  %t393 = ptrtoint ptr %v2 to i64
  store i64 %t393, ptr %l192, !tbaa !24
  %t394 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2ereach_2elocal_2e20
  br i1 %t394, label %bb102, label %bb103
bb101:
  br label %bb111
bb102:
  %t396 = call ptr @__olang_region_make(ptr %v2)
  %t397 = ptrtoint ptr %t396 to i64
  store i64 %t397, ptr %l192, !tbaa !24
  br label %bb103
bb103:
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l194, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/free:walker", ptr %t399, i32 0, i32 9
  store ptr %t401, ptr %l196, !tbaa !29
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t404 = getelementptr %"compiler/free:walker", ptr %t402, i32 0, i32 9
  %t406 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t404)
  store i64 %t406, ptr %l199
  br label %bb104
bb104:
  %t407 = load i64, ptr %l199, !tbaa !24
  %t408 = sub i64 %t407, 1
  %t409 = load ptr, ptr %l196, !tbaa !29
  %t411 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t409, i64 %t408)
  store ptr %t411, ptr %l201
  br label %bb105
bb105:
  %t412 = load i64, ptr %l192
  %t413 = inttoptr i64 %t412 to ptr
  %t414 = load ptr, ptr %l194, !tbaa !29
  %t415 = load ptr, ptr %l201, !tbaa !29
  %t416 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereach(ptr %v0, ptr %v0, ptr %t413, ptr %t414, ptr %t415)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t416, ptr %l202
  br label %bb106
bb106:
  %t417 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2ereach_2elocal_2e20
  br i1 %t417, label %bb107, label %bb108
bb107:
  %t419 = load i64, ptr %l192
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l202, i32 0, i32 0
  %t422 = load { i64, ptr }, ptr %t421
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = call ptr @__olang_region_or(ptr %t423, ptr null)
  %t425 = icmp ne ptr %t424, null
  %t426 = select i1 %t425, ptr %t424, ptr null
  %t427 = icmp eq ptr %t426, %t420
  call void @__olang_region_settle(ptr %t420, i1 %t427)
  br label %bb108
bb108:
  %t428 = load ptr, ptr %lp20
  %t429 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t428
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t429, ptr %l204
  %t430 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l202
  %t431 = load ptr, ptr %lp20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t430, ptr %t431
  %t432 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2ereach_2elocal_2e20
  br i1 %t432, label %bb109, label %bb110
bb109:
  %t434 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204, i32 0, i32 0
  %t435 = load { i64, ptr }, ptr %t434
  %t436 = extractvalue { i64, ptr } %t435, 1
  %t437 = call ptr @__olang_region_or(ptr %t436, ptr null)
  %t438 = icmp ne ptr %t437, null
  %t439 = select i1 %t438, ptr %t437, ptr null
  call void @__olang_region_drop(ptr %t439)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l204
  br label %bb110
bb110:
  %t440 = load ptr, ptr %l0, !tbaa !29
  store ptr %t440, ptr %l206, !tbaa !29
  %t441 = load ptr, ptr %l206, !tbaa !29
  %t442 = getelementptr %"compiler/free:walker", ptr %t441, i32 0, i32 29
  %t443 = load i64, ptr %t442, !tbaa !24
  %t445 = sub i64 %t443, 1
  %t447 = load ptr, ptr %l206, !tbaa !29
  %t448 = getelementptr %"compiler/free:walker", ptr %t447, i32 0, i32 29
  store i64 %t445, ptr %t448, !tbaa !24
  br label %bb111
bb111:
  %t449 = load ptr, ptr %lp20
  %t450 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t449
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t450, ptr %rv
  br label %ret
bb112:
  br i1 true, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t452 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t452, ptr %l210
  br label %bb116
bb116:
  %t453 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t453, ptr %rv
  br label %ret
bb117:
  call void @__olang_check_failed(ptr @olang_loc_bfa96af29dec6ca7_6eacd8161d4b79f3)
  unreachable
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2esameValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ederefRoot(ptr %v2, ptr %v2, ptr %a2)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t14 = call i1 @compiler_2ffree_2ereachedThrough(ptr %v1, ptr %v2, ptr %a1, ptr %t11)
  store i1 %t14, ptr %l11
  br label %bb5
bb5:
  %t15 = load i1, ptr %l11, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreAs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 false, i1 %a6)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreAs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6, i1 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i64
  %l40 = alloca i1
  %l42 = alloca i64
  %l45 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca i64
  %l50 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca %"compiler/source:Span"
  %l55 = alloca i1
  %l57 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca i1
  %l71 = alloca i1
  %l76 = alloca i1
  %l79 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i64
  %l88 = alloca i64
  %l90 = alloca ptr
  %l92 = alloca i64
  %l93 = alloca %"compiler/source:Span"
  %l95 = alloca i1
  %l97 = alloca { i64, ptr }
  %l103 = alloca i64
  %l113 = alloca ptr
  %l118 = alloca i64
  %l122 = alloca i1
  %l127 = alloca ptr
  %l129 = alloca i64
  %l147 = alloca i64
  %l149 = alloca i64
  %l154 = alloca i64
  %l156 = alloca i64
  %l159 = alloca i1
  %l161 = alloca i64
  %l165 = alloca i1
  %l170 = alloca ptr
  %l172 = alloca i64
  %l173 = alloca i64
  %l177 = alloca i64
  %l180 = alloca i1
  %l182 = alloca i64
  %l186 = alloca i1
  %l191 = alloca ptr
  %l193 = alloca i64
  %l194 = alloca i64
  %l202 = alloca { i64, ptr }
  %l204 = alloca i64
  %l208 = alloca ptr
  %l210 = alloca ptr
  %l215 = alloca { i64, ptr }
  %l220 = alloca i32
  %l222 = alloca i1
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l8, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l10, !tbaa !24
  store i64 %t8, ptr %l19, !tbaa !24
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t9)
  store i64 %t11, ptr %l21
  br label %bb2
bb2:
  %t12 = load i64, ptr %l19, !tbaa !24
  %t13 = load i64, ptr %l21, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb30
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l9, !tbaa !29
  %t19 = load i64, ptr %l10, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l26
  br label %bb6
bb6:
  %t23 = load i64, ptr %l26, !tbaa !24
  store i64 %t23, ptr %l11, !tbaa !24
  %t24 = load i64, ptr %l11, !tbaa !24
  %t26 = call i64 @compiler_2ffree_2eokind(i64 %t24)
  store i64 %t26, ptr %l28
  br label %bb7
bb7:
  %t27 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t28 = load i64, ptr %l28, !tbaa !24
  %t30 = icmp eq i64 %t28, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/free:walker", ptr %t32, i32 0, i32 2
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l31, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l31, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load i64, ptr %l11, !tbaa !24
  %t40 = call i64 @compiler_2ffree_2eoval(i64 %t38)
  store i64 %t40, ptr %l36
  br label %bb13
bb12:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb14
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/free:walker", ptr %t41, i32 0, i32 31
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load i64, ptr %l36, !tbaa !24
  %t47 = icmp ne i64 %t45, %t44
  store i1 %t47, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l34, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t50 = load i64, ptr %l11, !tbaa !24
  %t52 = call i64 @compiler_2ffree_2eoval(i64 %t50)
  store i64 %t52, ptr %l42
  br label %bb17
bb16:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb18
bb17:
  %t53 = load i64, ptr %l1, !tbaa !24
  %t54 = load i64, ptr %l42, !tbaa !24
  %t56 = icmp ne i64 %t54, %t53
  store i1 %t56, ptr %l40, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l40, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t59 = load ptr, ptr %l8, !tbaa !29
  store ptr %t59, ptr %l45, !tbaa !29
  %t60 = load i64, ptr %l11, !tbaa !24
  %t62 = call i64 @compiler_2ffree_2eoval(i64 %t60)
  store i64 %t62, ptr %l47
  br label %bb21
bb20:
  br label %bb28
bb21:
  %t63 = load i64, ptr @G_2ecompiler_2ffree_2eRStore, !tbaa !24
  store i64 %t63, ptr %l48, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t64)
  store ptr %t66, ptr %l50
  br label %bb22
bb22:
  %t67 = load ptr, ptr %l50, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Body", ptr %t67, i32 0, i32 3
  %t70 = load i64, ptr %t69, !tbaa !24
  store i64 %t70, ptr %l52, !tbaa !24
  %t71 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t71, ptr %l53
  %t72 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s3, { i64, ptr } %t72, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t74, ptr %l55
  br label %bb23
bb23:
  %t75 = load i1, ptr %l55, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t79 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t82 = extractvalue { i64, ptr } %t78, 1
  %t83 = extractvalue { i64, ptr } %t78, 0
  %t84 = add i64 %t80, %t83
  %t85 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t87 = add i64 %t84, %t86
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  call void @olang_textcopy(ptr %t88, ptr %t79, i64 %t80)
  %t89 = getelementptr i8, ptr %t88, i64 %t80
  call void @olang_textcopy(ptr %t89, ptr %t82, i64 %t83)
  %t90 = getelementptr i8, ptr %t89, i64 %t83
  call void @olang_textcopy(ptr %t90, ptr %t85, i64 %t86)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t88, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = extractvalue { i64, ptr } %t92, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l57, !tbaa !27
  br label %bb26
bb25:
  store { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb26
bb26:
  %t101 = load ptr, ptr %l45, !tbaa !29
  %t102 = load i64, ptr %l47, !tbaa !24
  %t103 = load i64, ptr %l48, !tbaa !24
  %t104 = load i64, ptr %l52, !tbaa !24
  %t105 = load %"compiler/source:Span", ptr %l53
  %t106 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t101, i64 %t102, i64 %t103, i64 %t104, %"compiler/source:Span" %t105, { i64, ptr } %t106)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t107 = load i64, ptr %l10, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l10, !tbaa !24
  br label %bb1
bb30:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/free:walker", ptr %t111, i32 0, i32 2
  %t114 = load i1, ptr %t113, !tbaa !21
  br i1 %t114, label %bb31, label %bb32
bb31:
  %t116 = load ptr, ptr %l3, !tbaa !29
  store ptr %t116, ptr %l66, !tbaa !29
  %t117 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t118 = load i64, ptr %l1, !tbaa !24
  %t121 = call i64 @compiler_2ffree_2eorig(i64 %t117, i64 %t118)
  store i64 %t121, ptr %l69
  br label %bb33
bb32:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb35
bb33:
  %t122 = load ptr, ptr %l66, !tbaa !29
  %t123 = load i64, ptr %l69, !tbaa !24
  %t124 = call i1 @compiler_2ffree_2ehas(ptr %v2, ptr %t122, i64 %t123)
  store i1 %t124, ptr %l70
  br label %bb34
bb34:
  %t125 = load i1, ptr %l70, !tbaa !21
  store i1 %t125, ptr %l65, !tbaa !21
  br label %bb35
bb35:
  %t126 = load i1, ptr %l65, !tbaa !21
  br i1 %t126, label %bb36, label %bb37
bb36:
  %t127 = load i64, ptr %l1, !tbaa !24
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/free:walker", ptr %t128, i32 0, i32 31
  %t131 = load i64, ptr %t130, !tbaa !24
  %t134 = icmp ne i64 %t127, %t131
  store i1 %t134, ptr %l71, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb38
bb38:
  %t136 = load i1, ptr %l71, !tbaa !21
  br i1 %t136, label %bb39, label %bb40
bb39:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l2, !tbaa !29
  %t141 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamOf(ptr %v0, ptr %v1, ptr %t137, ptr %t138)
  store i64 %t141, ptr %l79
  br label %bb41
bb40:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb42
bb41:
  %t142 = load i64, ptr %l79, !tbaa !24
  %t143 = icmp slt i64 %t142, 0
  store i1 %t143, ptr %l76, !tbaa !21
  br label %bb42
bb42:
  %t145 = load i1, ptr %l76, !tbaa !21
  br i1 %t145, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i64, ptr %l1, !tbaa !24
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l4
  %t150 = load i1, ptr %l6, !tbaa !21
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %t146, i64 %t147, ptr %t148, %"compiler/source:Span" %t149, i1 %t150)
  br label %bb45
bb44:
  br label %bb52
bb45:
  %t156 = load ptr, ptr %l8, !tbaa !29
  store ptr %t156, ptr %l86, !tbaa !29
  %t157 = load i64, ptr %l1, !tbaa !24
  store i64 %t157, ptr %l87, !tbaa !24
  %t158 = load i64, ptr @G_2ecompiler_2ffree_2eRStore, !tbaa !24
  store i64 %t158, ptr %l88, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t159)
  store ptr %t161, ptr %l90
  br label %bb46
bb46:
  %t162 = load ptr, ptr %l90, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Body", ptr %t162, i32 0, i32 3
  %t165 = load i64, ptr %t164, !tbaa !24
  store i64 %t165, ptr %l92, !tbaa !24
  %t166 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t166, ptr %l93
  %t167 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s6, { i64, ptr } %t167, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t169, ptr %l95
  br label %bb47
bb47:
  %t170 = load i1, ptr %l95, !tbaa !21
  %t171 = xor i1 %t170, true
  br i1 %t171, label %bb48, label %bb49
bb48:
  %t173 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t174 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t177 = extractvalue { i64, ptr } %t173, 1
  %t178 = extractvalue { i64, ptr } %t173, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t174, i64 %t175)
  %t184 = getelementptr i8, ptr %t183, i64 %t175
  call void @olang_textcopy(ptr %t184, ptr %t177, i64 %t178)
  %t185 = getelementptr i8, ptr %t184, i64 %t178
  call void @olang_textcopy(ptr %t185, ptr %t180, i64 %t181)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t183, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  store { i64, ptr } %t194, ptr %l97, !tbaa !27
  br label %bb50
bb49:
  store { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l97, !tbaa !27
  br label %bb50
bb50:
  %t196 = load ptr, ptr %l86, !tbaa !29
  %t197 = load i64, ptr %l87, !tbaa !24
  %t198 = load i64, ptr %l88, !tbaa !24
  %t199 = load i64, ptr %l92, !tbaa !24
  %t200 = load %"compiler/source:Span", ptr %l93
  %t201 = load { i64, ptr }, ptr %l97, !tbaa !27
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t196, i64 %t197, i64 %t198, i64 %t199, %"compiler/source:Span" %t200, { i64, ptr } %t201)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb52:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l2, !tbaa !29
  %t206 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamOf(ptr %v0, ptr %v1, ptr %t202, ptr %t203)
  store i64 %t206, ptr %l103
  br label %bb53
bb53:
  %t207 = load i64, ptr %l103, !tbaa !24
  store i64 %t207, ptr %l12, !tbaa !24
  %t208 = load i64, ptr %l12, !tbaa !24
  %t210 = icmp sge i64 %t208, 0
  br i1 %t210, label %bb54, label %bb55
bb54:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/free:walker", ptr %t212, i32 0, i32 2
  %t215 = load i1, ptr %t214, !tbaa !21
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb56, label %bb57
bb55:
  br label %bb75
bb56:
  %t219 = load ptr, ptr %l8, !tbaa !29
  %t221 = getelementptr %"compiler/free:Free", ptr %t219, i32 0, i32 29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/free:walker", ptr %t222, i32 0, i32 1
  %t225 = load i64, ptr %t224, !tbaa !24
  %t228 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t221, i64 %t225)
  store ptr %t228, ptr %l113
  br label %bb58
bb57:
  br label %bb71
bb58:
  %t229 = load i64, ptr %l12, !tbaa !24
  %t231 = shl i64 %t229, 32
  %t232 = load i64, ptr %l1, !tbaa !24
  %t235 = or i64 %t231, %t232
  %t236 = load ptr, ptr %l113, !tbaa !29
  %t238 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t236, i64 %t235)
  store i64 %t238, ptr %l118
  br label %bb59
bb59:
  %t239 = load i64, ptr %l118, !tbaa !24
  %t240 = icmp sgt i64 %t239, 0
  br i1 %t240, label %bb60, label %bb61
bb60:
  %t242 = load ptr, ptr %l8, !tbaa !29
  %t244 = getelementptr %"compiler/free:Free", ptr %t242, i32 0, i32 40
  store i1 true, ptr %t244, !tbaa !21
  br label %bb62
bb61:
  br label %bb62
bb62:
  %t245 = load i1, ptr %l6, !tbaa !21
  br i1 %t245, label %bb63, label %bb64
bb63:
  %t247 = load ptr, ptr %l8, !tbaa !29
  %t249 = getelementptr %"compiler/free:Free", ptr %t247, i32 0, i32 32
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/free:walker", ptr %t250, i32 0, i32 1
  %t253 = load i64, ptr %t252, !tbaa !24
  %t256 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t249, i64 %t253)
  store ptr %t256, ptr %l127
  br label %bb65
bb64:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb67
bb65:
  %t257 = load i64, ptr %l12, !tbaa !24
  %t258 = load ptr, ptr %l127, !tbaa !29
  %t260 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t258, i64 %t257)
  store i64 %t260, ptr %l129
  br label %bb66
bb66:
  %t261 = load i64, ptr %l129, !tbaa !24
  %t262 = icmp sgt i64 %t261, 0
  store i1 %t262, ptr %l122, !tbaa !21
  br label %bb67
bb67:
  %t264 = load i1, ptr %l122, !tbaa !21
  br i1 %t264, label %bb68, label %bb69
bb68:
  %t265 = load ptr, ptr %l8, !tbaa !29
  %t267 = getelementptr %"compiler/free:Free", ptr %t265, i32 0, i32 40
  store i1 true, ptr %t267, !tbaa !21
  br label %bb70
bb69:
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/free:walker", ptr %t268, i32 0, i32 51
  %t271 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t270, i64 %t271)
  br label %bb72
bb72:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/free:walker", ptr %t274, i32 0, i32 52
  %t277 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t276, i64 %t277)
  br label %bb73
bb73:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/free:walker", ptr %t280, i32 0, i32 53
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/free:walker", ptr %t283, i32 0, i32 12
  %t286 = load i64, ptr %t285, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t282, i64 %t286)
  br label %bb74
bb74:
  br label %ret
bb75:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/free:walker", ptr %t289, i32 0, i32 2
  %t292 = load i1, ptr %t291, !tbaa !21
  %t294 = xor i1 %t292, true
  br i1 %t294, label %bb76, label %bb77
bb76:
  br i1 %a7, label %bb78, label %bb79
bb77:
  br label %bb130
bb78:
  br label %ret
bb79:
  br label %bb80
bb80:
  %t298 = load ptr, ptr %l3, !tbaa !29
  store ptr %t298, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb81
bb81:
  %t300 = load i64, ptr %l14, !tbaa !24
  store i64 %t300, ptr %l147, !tbaa !24
  %t301 = load ptr, ptr %l13, !tbaa !29
  %t303 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t301)
  store i64 %t303, ptr %l149
  br label %bb82
bb82:
  %t304 = load i64, ptr %l147, !tbaa !24
  %t305 = load i64, ptr %l149, !tbaa !24
  %t306 = icmp slt i64 %t304, %t305
  %t308 = xor i1 %t306, true
  br i1 %t308, label %bb83, label %bb84
bb83:
  br label %bb129
bb84:
  br label %bb85
bb85:
  %t310 = load ptr, ptr %l13, !tbaa !29
  %t311 = load i64, ptr %l14, !tbaa !24
  %t314 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t310, i64 %t311)
  store i64 %t314, ptr %l154
  br label %bb86
bb86:
  %t315 = load i64, ptr %l154, !tbaa !24
  store i64 %t315, ptr %l15, !tbaa !24
  %t316 = load i64, ptr %l15, !tbaa !24
  %t318 = call i64 @compiler_2ffree_2eokind(i64 %t316)
  store i64 %t318, ptr %l156
  br label %bb87
bb87:
  %t319 = load i64, ptr @G_2ecompiler_2ffree_2eOParC, !tbaa !24
  %t320 = load i64, ptr %l156, !tbaa !24
  %t322 = icmp eq i64 %t320, %t319
  br i1 %t322, label %bb88, label %bb89
bb88:
  %t324 = load i64, ptr %l15, !tbaa !24
  %t326 = call i64 @compiler_2ffree_2eoval(i64 %t324)
  store i64 %t326, ptr %l161
  br label %bb90
bb89:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb91
bb90:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/free:walker", ptr %t327, i32 0, i32 30
  %t330 = load i64, ptr %t329, !tbaa !24
  %t331 = load i64, ptr %l161, !tbaa !24
  %t333 = icmp ne i64 %t331, %t330
  store i1 %t333, ptr %l159, !tbaa !21
  br label %bb91
bb91:
  %t335 = load i1, ptr %l159, !tbaa !21
  br i1 %t335, label %bb92, label %bb93
bb92:
  %t336 = load ptr, ptr %l8, !tbaa !29
  %t338 = getelementptr %"compiler/free:Free", ptr %t336, i32 0, i32 31
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/free:walker", ptr %t339, i32 0, i32 1
  %t342 = load i64, ptr %t341, !tbaa !24
  %t345 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t338, i64 %t342)
  store ptr %t345, ptr %l170
  br label %bb94
bb93:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb97
bb94:
  %t346 = load i64, ptr %l15, !tbaa !24
  %t348 = call i64 @compiler_2ffree_2eoval(i64 %t346)
  store i64 %t348, ptr %l172
  br label %bb95
bb95:
  %t349 = load ptr, ptr %l170, !tbaa !29
  %t350 = load i64, ptr %l172, !tbaa !24
  %t351 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t349, i64 %t350)
  store i64 %t351, ptr %l173
  br label %bb96
bb96:
  %t352 = load i64, ptr %l173, !tbaa !24
  %t353 = icmp sgt i64 %t352, 0
  store i1 %t353, ptr %l165, !tbaa !21
  br label %bb97
bb97:
  %t355 = load i1, ptr %l165, !tbaa !21
  br i1 %t355, label %bb98, label %bb99
bb98:
  %t356 = load ptr, ptr %l8, !tbaa !29
  %t358 = getelementptr %"compiler/free:Free", ptr %t356, i32 0, i32 40
  store i1 true, ptr %t358, !tbaa !21
  br label %bb100
bb99:
  br label %bb100
bb100:
  %t359 = load i64, ptr %l15, !tbaa !24
  %t361 = call i64 @compiler_2ffree_2eokind(i64 %t359)
  store i64 %t361, ptr %l177
  br label %bb101
bb101:
  %t362 = load i64, ptr @G_2ecompiler_2ffree_2eOPar, !tbaa !24
  %t363 = load i64, ptr %l177, !tbaa !24
  %t365 = icmp eq i64 %t363, %t362
  br i1 %t365, label %bb102, label %bb103
bb102:
  %t367 = load i64, ptr %l15, !tbaa !24
  %t369 = call i64 @compiler_2ffree_2eoval(i64 %t367)
  store i64 %t369, ptr %l182
  br label %bb104
bb103:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb105
bb104:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t372 = getelementptr %"compiler/free:walker", ptr %t370, i32 0, i32 30
  %t373 = load i64, ptr %t372, !tbaa !24
  %t374 = load i64, ptr %l182, !tbaa !24
  %t376 = icmp ne i64 %t374, %t373
  store i1 %t376, ptr %l180, !tbaa !21
  br label %bb105
bb105:
  %t378 = load i1, ptr %l180, !tbaa !21
  br i1 %t378, label %bb106, label %bb107
bb106:
  %t379 = load ptr, ptr %l8, !tbaa !29
  %t381 = getelementptr %"compiler/free:Free", ptr %t379, i32 0, i32 30
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/free:walker", ptr %t382, i32 0, i32 1
  %t385 = load i64, ptr %t384, !tbaa !24
  %t388 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t381, i64 %t385)
  store ptr %t388, ptr %l191
  br label %bb108
bb107:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb111
bb108:
  %t389 = load i64, ptr %l15, !tbaa !24
  %t391 = call i64 @compiler_2ffree_2eoval(i64 %t389)
  store i64 %t391, ptr %l193
  br label %bb109
bb109:
  %t392 = load ptr, ptr %l191, !tbaa !29
  %t393 = load i64, ptr %l193, !tbaa !24
  %t394 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t392, i64 %t393)
  store i64 %t394, ptr %l194
  br label %bb110
bb110:
  %t395 = load i64, ptr %l194, !tbaa !24
  %t396 = icmp sgt i64 %t395, 0
  store i1 %t396, ptr %l186, !tbaa !21
  br label %bb111
bb111:
  %t398 = load i1, ptr %l186, !tbaa !21
  br i1 %t398, label %bb112, label %bb113
bb112:
  %t399 = load ptr, ptr %l8, !tbaa !29
  %t401 = getelementptr %"compiler/free:Free", ptr %t399, i32 0, i32 40
  store i1 true, ptr %t401, !tbaa !21
  %t402 = load ptr, ptr %l8, !tbaa !29
  %t404 = getelementptr %"compiler/free:Free", ptr %t402, i32 0, i32 79
  %t405 = load i1, ptr %t404, !tbaa !21
  br i1 %t405, label %bb114, label %bb115
bb113:
  br label %bb127
bb114:
  store %olang.scope zeroinitializer, ptr %s18
  %t407 = load ptr, ptr %l8, !tbaa !29
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/free:walker", ptr %t408, i32 0, i32 1
  %t411 = load i64, ptr %t410, !tbaa !24
  %t414 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2efnName(ptr %v0, ptr %s18, ptr %t407, i64 %t411)
  store { i64, ptr } %t414, ptr %l202
  br label %bb116
bb115:
  br label %bb126
bb116:
  %t415 = load i64, ptr %l15, !tbaa !24
  %t417 = call i64 @compiler_2ffree_2eoval(i64 %t415)
  store i64 %t417, ptr %l204
  br label %bb117
bb117:
  %t418 = load ptr, ptr %l8, !tbaa !29
  %t420 = getelementptr %"compiler/free:Free", ptr %t418, i32 0, i32 0
  %t421 = load ptr, ptr %t420, !tbaa !29
  %t423 = getelementptr %"compiler/generic:Program", ptr %t421, i32 0, i32 0
  %t424 = load ptr, ptr %t423, !tbaa !29
  %t426 = getelementptr %"compiler/load:Loader", ptr %t424, i32 0, i32 4
  %t427 = load ptr, ptr %t426, !tbaa !29
  store ptr %t427, ptr %l208, !tbaa !29
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t428)
  store ptr %t430, ptr %l210
  br label %bb118
bb118:
  %t431 = load ptr, ptr %l210, !tbaa !29
  %t433 = getelementptr %"compiler/typed:Body", ptr %t431, i32 0, i32 3
  %t434 = load i64, ptr %t433, !tbaa !24
  %t435 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t436 = load i32, ptr %t435, !tbaa !23
  %t438 = sext i32 %t436 to i64
  %t439 = load ptr, ptr %l208, !tbaa !29
  %t442 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s18, ptr %t439, i64 %t434, i64 %t438)
  store { i64, ptr } %t442, ptr %l215
  br label %bb119
bb119:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/free:walker", ptr %t443, i32 0, i32 30
  %t446 = load i64, ptr %t445, !tbaa !24
  %t447 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t448 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t449 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t449, 1
  %t451 = extractvalue { i64, ptr } %t449, 0
  %t452 = add i64 %t448, %t451
  %t453 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t454 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t455 = add i64 %t452, %t454
  %t456 = load i64, ptr %l204, !tbaa !24
  %t457 = call i64 @__olang_fmt_i64(ptr null, i64 %t456)
  %t458 = add i64 %t455, %t457
  %t459 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t460 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t461 = add i64 %t458, %t460
  %t462 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t463 = extractvalue { i64, ptr } %t462, 1
  %t464 = extractvalue { i64, ptr } %t462, 0
  %t465 = add i64 %t461, %t464
  %t466 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t468 = add i64 %t465, %t467
  %t470 = call i64 @__olang_fmt_i64(ptr null, i64 %t446)
  %t471 = add i64 %t468, %t470
  %t472 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t473 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t474 = add i64 %t471, %t473
  %t475 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t474)
  call void @olang_textcopy(ptr %t475, ptr %t447, i64 %t448)
  %t476 = getelementptr i8, ptr %t475, i64 %t448
  call void @olang_textcopy(ptr %t476, ptr %t450, i64 %t451)
  %t477 = getelementptr i8, ptr %t476, i64 %t451
  call void @olang_textcopy(ptr %t477, ptr %t453, i64 %t454)
  %t478 = getelementptr i8, ptr %t477, i64 %t454
  %t479 = call i64 @__olang_fmt_i64(ptr %t478, i64 %t456)
  %t480 = getelementptr i8, ptr %t478, i64 %t457
  call void @olang_textcopy(ptr %t480, ptr %t459, i64 %t460)
  %t481 = getelementptr i8, ptr %t480, i64 %t460
  call void @olang_textcopy(ptr %t481, ptr %t463, i64 %t464)
  %t482 = getelementptr i8, ptr %t481, i64 %t464
  call void @olang_textcopy(ptr %t482, ptr %t466, i64 %t467)
  %t483 = getelementptr i8, ptr %t482, i64 %t467
  %t484 = call i64 @__olang_fmt_i64(ptr %t483, i64 %t446)
  %t485 = getelementptr i8, ptr %t483, i64 %t470
  call void @olang_textcopy(ptr %t485, ptr %t472, i64 %t473)
  %t486 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t475, 1
  %t489 = extractvalue { i64, ptr } %t487, 0
  %t490 = extractvalue { i64, ptr } %t487, 1
  %t491 = mul i64 %t489, 1
  %t492 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t491)
  call void @llvm.memcpy.p0.p0.i64(ptr %t492, ptr %t490, i64 %t491, i1 false)
  %t493 = insertvalue { i64, ptr } undef, i64 %t489, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t492, 1
  %t496 = call i32 @std_2fio_2ePrintErr(ptr %s18, { i64, ptr } %t494)
  store i32 %t496, ptr %l220
  %t497 = icmp ne i32 %t496, 0
  br i1 %t497, label %bb121, label %ok.498, !prof !99
ok.498:
  br label %bb120
bb120:
  br label %bb125
bb121:
  %t499 = load i32, ptr %l220, !tbaa !23
  %t500 = ashr i32 %t499, 16
  %t502 = icmp eq i32 %t500, 1
  store i1 %t502, ptr %l222, !tbaa !21
  %t503 = load i32, ptr %l220, !tbaa !23
  %t504 = ashr i32 %t503, 16
  %t506 = icmp eq i32 %t504, 1
  br i1 %t506, label %bb122, label %bb123
bb122:
  call void @__olang_errpay_pop()
  br label %bb123
bb123:
  br label %bb124
bb124:
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s18)
  br label %bb126
bb126:
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t508 = load i64, ptr %l14, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l14, !tbaa !24
  br label %bb81
bb129:
  br label %ret
bb130:
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t513 = load i64, ptr %l1, !tbaa !24
  %t514 = load ptr, ptr %l2, !tbaa !29
  %t515 = load %"compiler/source:Span", ptr %l4
  %t516 = load i1, ptr %l6, !tbaa !21
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %t512, i64 %t513, ptr %t514, %"compiler/source:Span" %t515, i1 %t516)
  br label %bb131
bb131:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eusedAfter(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
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
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca i64
  %l36 = alloca i64
  %l40 = alloca i64
  %l47 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l75 = alloca i64
  %l79 = alloca i1
  %l80 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i1
  %l91 = alloca i64
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca i64
  %l103 = alloca i64
  %l107 = alloca i64
  %l109 = alloca i1
  %l113 = alloca i64
  %l117 = alloca i64
  %l127 = alloca i1
  %l128 = alloca i1
  %l130 = alloca i64
  %l133 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 20
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l20
  br label %bb1
bb1:
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l20, !tbaa !24
  %t11 = icmp sgt i64 %t9, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l3, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t16 = load i64, ptr %l5, !tbaa !24
  store i64 %t16, ptr %l25, !tbaa !24
  %t17 = load ptr, ptr %l4, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t17)
  store i64 %t19, ptr %l27
  br label %bb6
bb6:
  %t20 = load i64, ptr %l25, !tbaa !24
  %t21 = load i64, ptr %l27, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  br label %bb17
bb8:
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l4, !tbaa !29
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t26, i64 %t27)
  store i64 %t30, ptr %l32
  br label %bb10
bb10:
  %t31 = load i64, ptr %l32, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/free:walker", ptr %t32, i32 0, i32 25
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t34, i64 %t35)
  store i64 %t38, ptr %l36
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/free:walker", ptr %t39, i32 0, i32 13
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l40
  br label %bb12
bb12:
  %t46 = load i64, ptr %l36, !tbaa !24
  %t47 = load i64, ptr %l40, !tbaa !24
  %t48 = icmp sgt i64 %t46, %t47
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load i64, ptr %l6, !tbaa !24
  store i64 %t50, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb5
bb17:
  store i64 0, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/free:walker", ptr %t56, i32 0, i32 14
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t58)
  store i64 %t60, ptr %l47
  br label %bb18
bb18:
  %t61 = load i64, ptr %l47, !tbaa !24
  store i64 %t61, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = load i64, ptr %l9, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb24
bb21:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l54, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb23
bb23:
  %t88 = load i64, ptr %l54, !tbaa !24
  store i64 %t88, ptr %l51, !tbaa !24
  br label %bb24
bb24:
  %t89 = load i64, ptr %l51, !tbaa !24
  store i64 %t89, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb25
bb25:
  %t90 = load i64, ptr %l11, !tbaa !24
  %t91 = load i64, ptr %l10, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb26, label %bb27
bb26:
  br label %bb59
bb27:
  br label %bb28
bb28:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t99 = load i64, ptr %l11, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l12, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/free:walker", ptr %t108, i32 0, i32 14
  %t111 = load i64, ptr %l12, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l75
  br label %bb29
bb29:
  %t115 = load i64, ptr %l75, !tbaa !24
  store i64 %t115, ptr %l13, !tbaa !24
  %t116 = load i64, ptr %l13, !tbaa !24
  %t117 = load i64, ptr %l2, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  br i1 %t120, label %bb30, label %bb31
bb30:
  %t122 = load i64, ptr %l2, !tbaa !24
  store i64 %t122, ptr %l80, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/free:walker", ptr %t123, i32 0, i32 15
  %t126 = load i64, ptr %l12, !tbaa !24
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t125, i64 %t126)
  store i64 %t129, ptr %l84
  br label %bb32
bb31:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb33
bb32:
  %t130 = load i64, ptr %l80, !tbaa !24
  %t131 = load i64, ptr %l84, !tbaa !24
  %t132 = icmp sle i64 %t130, %t131
  store i1 %t132, ptr %l79, !tbaa !21
  br label %bb33
bb33:
  %t134 = load i1, ptr %l79, !tbaa !21
  %t135 = xor i1 %t134, true
  br i1 %t135, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb37
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/free:walker", ptr %t137, i32 0, i32 20
  %t140 = load i64, ptr %l1, !tbaa !24
  %t143 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t139, i64 %t140)
  store i64 %t143, ptr %l91
  br label %bb36
bb36:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l91, !tbaa !24
  %t147 = icmp sgt i64 %t145, %t144
  store i1 %t147, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t149 = load i1, ptr %l87, !tbaa !21
  br i1 %t149, label %bb38, label %bb39
bb38:
  br label %bb58
bb39:
  br label %bb40
bb40:
  %t150 = load ptr, ptr %l3, !tbaa !29
  store ptr %t150, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  %t152 = load i64, ptr %l15, !tbaa !24
  store i64 %t152, ptr %l95, !tbaa !24
  %t153 = load ptr, ptr %l14, !tbaa !29
  %t155 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t153)
  store i64 %t155, ptr %l97
  br label %bb42
bb42:
  %t156 = load i64, ptr %l95, !tbaa !24
  %t157 = load i64, ptr %l97, !tbaa !24
  %t158 = icmp slt i64 %t156, %t157
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb43, label %bb44
bb43:
  br label %bb57
bb44:
  br label %bb45
bb45:
  %t162 = load ptr, ptr %l14, !tbaa !29
  %t163 = load i64, ptr %l15, !tbaa !24
  %t166 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t162, i64 %t163)
  store i64 %t166, ptr %l102
  br label %bb46
bb46:
  %t167 = load i64, ptr %l102, !tbaa !24
  store i64 %t167, ptr %l16, !tbaa !24
  %t168 = load i64, ptr %l13, !tbaa !24
  store i64 %t168, ptr %l103, !tbaa !24
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/free:walker", ptr %t169, i32 0, i32 25
  %t172 = load i64, ptr %l16, !tbaa !24
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t171, i64 %t172)
  store i64 %t175, ptr %l107
  br label %bb47
bb47:
  %t176 = load i64, ptr %l103, !tbaa !24
  %t177 = load i64, ptr %l107, !tbaa !24
  %t178 = icmp slt i64 %t176, %t177
  br i1 %t178, label %bb48, label %bb49
bb48:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/free:walker", ptr %t180, i32 0, i32 25
  %t183 = load i64, ptr %l16, !tbaa !24
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t182, i64 %t183)
  store i64 %t186, ptr %l113
  br label %bb50
bb49:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb52
bb50:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/free:walker", ptr %t187, i32 0, i32 15
  %t190 = load i64, ptr %l12, !tbaa !24
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t189, i64 %t190)
  store i64 %t193, ptr %l117
  br label %bb51
bb51:
  %t194 = load i64, ptr %l113, !tbaa !24
  %t195 = load i64, ptr %l117, !tbaa !24
  %t196 = icmp sle i64 %t194, %t195
  store i1 %t196, ptr %l109, !tbaa !21
  br label %bb52
bb52:
  %t198 = load i1, ptr %l109, !tbaa !21
  br i1 %t198, label %bb53, label %bb54
bb53:
  %t199 = load i64, ptr %l16, !tbaa !24
  store i64 %t199, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t201 = load i64, ptr %l15, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l15, !tbaa !24
  br label %bb41
bb57:
  br label %bb58
bb58:
  %t205 = load i64, ptr %l11, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l11, !tbaa !24
  br label %bb25
bb59:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/free:walker", ptr %t209, i32 0, i32 27
  %t212 = load i64, ptr %l1, !tbaa !24
  %t215 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t211, i64 %t212)
  store i1 %t215, ptr %l127
  br label %bb60
bb60:
  %t216 = load i1, ptr %l127, !tbaa !21
  br i1 %t216, label %bb61, label %bb62
bb61:
  %t217 = load ptr, ptr %l3, !tbaa !29
  %t219 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t217)
  store i64 %t219, ptr %l130
  br label %bb63
bb62:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb64
bb63:
  %t220 = load i64, ptr %l130, !tbaa !24
  %t221 = icmp sgt i64 %t220, 0
  store i1 %t221, ptr %l128, !tbaa !21
  br label %bb64
bb64:
  %t223 = load i1, ptr %l128, !tbaa !21
  br i1 %t223, label %bb65, label %bb66
bb65:
  %t224 = load ptr, ptr %l3, !tbaa !29
  %t226 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t224, i64 0)
  store i64 %t226, ptr %l133
  br label %bb67
bb66:
  br label %bb68
bb67:
  %t227 = load i64, ptr %l133, !tbaa !24
  store i64 %t227, ptr %rv
  br label %ret
bb68:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewCtor(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/free:leaf"
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i1
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/free:leaf"
  %l34 = alloca %"compiler/free:leaf"
  %l37 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca i64
  %l55 = alloca ptr
  %l62 = alloca %"compiler/free:store"
  %l63 = alloca ptr
  %l64 = alloca i64
  %l65 = alloca i64
  %l67 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca i64
  %l73 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca { i64, ptr }
  %l82 = alloca i64
  %l85 = alloca i64
  %l87 = alloca i1
  %l91 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca i64
  %l97 = alloca i64
  %l99 = alloca i32
  %l100 = alloca ptr
  %l102 = alloca i64
  %l103 = alloca i1
  %l105 = alloca i64
  %l107 = alloca i64
  %l112 = alloca i64
  %l114 = alloca ptr
  %l115 = alloca i64
  %l117 = alloca i64
  %l119 = alloca ptr
  %l121 = alloca i64
  %l122 = alloca %"compiler/source:Span"
  %l124 = alloca i64
  %l128 = alloca i64
  %l134 = alloca %"compiler/free:store"
  %l137 = alloca ptr
  %l138 = alloca i64
  %l139 = alloca i64
  %l141 = alloca ptr
  %l143 = alloca i64
  %l144 = alloca %"compiler/source:Span"
  %l145 = alloca i64
  %l147 = alloca ptr
  %l149 = alloca %"compiler/source:Span"
  %l150 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:walker", ptr %t6, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:walker", ptr %t13, i32 0, i32 29
  %t16 = load i64, ptr %t15, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  store i1 %t18, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l19, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l23
  br label %bb7
bb7:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l6
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t25 = load i64, ptr %l8, !tbaa !24
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = load ptr, ptr %l7, !tbaa !29
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %t26)
  store i64 %t28, ptr %l27
  br label %bb9
bb9:
  %t29 = load i64, ptr %l25, !tbaa !24
  %t30 = load i64, ptr %l27, !tbaa !24
  %t31 = icmp slt i64 %t29, %t30
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb11:
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l7, !tbaa !29
  %t36 = load i64, ptr %l8, !tbaa !24
  %t39 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %v1, ptr %t35, i64 %t36)
  store %"compiler/free:leaf" %t39, ptr %l32
  br label %bb13
bb13:
  %t41 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s3, ptr %l32)
  store %"compiler/free:leaf" %t41, ptr %l34
  br label %bb14
bb14:
  %t42 = load %"compiler/free:leaf", ptr %l34
  store %"compiler/free:leaf" %t42, ptr %l9
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t44 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %t43, i64 %t45)
  store i1 %t48, ptr %l37
  br label %bb15
bb15:
  %t49 = load i1, ptr %l37, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t51)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l5, !tbaa !29
  %t56 = getelementptr %"compiler/free:Free", ptr %t54, i32 0, i32 13
  %t57 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t58 = load i64, ptr %t57, !tbaa !24
  %t61 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t56, i64 %t58)
  store i1 %t61, ptr %l43
  br label %bb20
bb20:
  %t62 = load i1, ptr %l43, !tbaa !21
  br i1 %t62, label %bb21, label %bb22
bb21:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t64 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsOwner(ptr %v0, ptr %t63, i64 %t65)
  store i1 %t68, ptr %l47
  br label %bb23
bb22:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb24
bb23:
  %t69 = load i1, ptr %l47, !tbaa !21
  %t70 = xor i1 %t69, true
  store i1 %t70, ptr %l44, !tbaa !21
  br label %bb24
bb24:
  %t72 = load i1, ptr %l44, !tbaa !21
  br i1 %t72, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t75 = getelementptr %"compiler/free:Free", ptr %t73, i32 0, i32 46
  store ptr %t75, ptr %l50, !tbaa !29
  %t76 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t77 = load i64, ptr %t76, !tbaa !24
  store i64 %t77, ptr %l51, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/free:walker", ptr %t78, i32 0, i32 1
  %t81 = load i64, ptr %t80, !tbaa !24
  store i64 %t81, ptr %l53, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t82)
  store ptr %t84, ptr %l55
  br label %bb27
bb26:
  br label %bb36
bb27:
  %t85 = load ptr, ptr %l55, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Body", ptr %t85, i32 0, i32 3
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load %"compiler/source:Span", ptr %l4
  %t90 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = load i64, ptr %l51, !tbaa !24
  %t94 = load i64, ptr %l53, !tbaa !24
  %t99 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v3, ptr %v0, ptr %v0, i64 %t93, i64 %t94, i64 %t88, %"compiler/source:Span" %t89, i64 %t90, i64 -1, i64 -1, ptr %t91, ptr null)
  store %"compiler/free:store" %t99, ptr %l62
  br label %bb28
bb28:
  %t100 = load ptr, ptr %l50, !tbaa !29
  %t101 = load %"compiler/free:store", ptr %l62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t100, %"compiler/free:store" %t101)
  br label %bb29
bb29:
  %t102 = load ptr, ptr %l5, !tbaa !29
  store ptr %t102, ptr %l63, !tbaa !29
  %t103 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t104 = load i64, ptr %t103, !tbaa !24
  store i64 %t104, ptr %l64, !tbaa !24
  %t105 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t105, ptr %l65, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t106)
  store ptr %t108, ptr %l67
  br label %bb30
bb30:
  %t109 = load ptr, ptr %l67, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Body", ptr %t109, i32 0, i32 3
  %t112 = load i64, ptr %t111, !tbaa !24
  store i64 %t112, ptr %l69, !tbaa !24
  %t113 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t113, ptr %l70
  %t114 = ptrtoint ptr %v0 to i64
  store i64 %t114, ptr %l71, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t117 = call ptr @__olang_region_make(ptr %v0)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l71, !tbaa !24
  br label %bb32
bb32:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l73, !tbaa !29
  %t120 = load ptr, ptr %l3, !tbaa !29
  %t122 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v3, ptr %t120)
  store %"compiler/source:Span" %t122, ptr %l75
  br label %bb33
bb33:
  %t123 = load ptr, ptr %l73, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l75
  %t125 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s5, ptr %t123, %"compiler/source:Span" %t124)
  store { i64, ptr } %t125, ptr %l76
  br label %bb34
bb34:
  %t126 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t127 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t128 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = add i64 %t127, %t130
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t135 = load i64, ptr %l71
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = call ptr @__olang_scope_alloc(ptr %t136, i64 %t134)
  call void @olang_textcopy(ptr %t137, ptr %t126, i64 %t127)
  %t138 = getelementptr i8, ptr %t137, i64 %t127
  call void @olang_textcopy(ptr %t138, ptr %t129, i64 %t130)
  %t139 = getelementptr i8, ptr %t138, i64 %t130
  call void @olang_textcopy(ptr %t139, ptr %t132, i64 %t133)
  %t140 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t137, 1
  %t143 = load i64, ptr %l71
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = extractvalue { i64, ptr } %t141, 0
  %t146 = extractvalue { i64, ptr } %t141, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t151 = load ptr, ptr %l63, !tbaa !29
  %t152 = load i64, ptr %l64, !tbaa !24
  %t153 = load i64, ptr %l65, !tbaa !24
  %t154 = load i64, ptr %l69, !tbaa !24
  %t155 = load %"compiler/source:Span", ptr %l70
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t151, i64 %t152, i64 %t153, i64 %t154, %"compiler/source:Span" %t155, { i64, ptr } %t150)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb37:
  %t157 = load i64, ptr %l8, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l8, !tbaa !24
  br label %bb8
bb38:
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l6)
  store i64 %t162, ptr %l82
  br label %bb39
bb39:
  %t163 = load i64, ptr %l82, !tbaa !24
  %t164 = icmp eq i64 %t163, 0
  br i1 %t164, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb41:
  br label %bb42
bb42:
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l6)
  store i64 %t167, ptr %l85
  br label %bb43
bb43:
  %t168 = load i64, ptr %l85, !tbaa !24
  %t169 = icmp eq i64 %t168, 1
  br i1 %t169, label %bb44, label %bb45
bb44:
  %t171 = load ptr, ptr %l2, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Call", ptr %t171, i32 0, i32 2
  %t174 = load i32, ptr %t173, !tbaa !23
  %t176 = icmp sge i32 %t174, 0
  store i1 %t176, ptr %l87, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb46
bb46:
  %t178 = load i1, ptr %l87, !tbaa !21
  br i1 %t178, label %bb47, label %bb48
bb47:
  %t179 = load ptr, ptr %l5, !tbaa !29
  store ptr %t179, ptr %l92, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/free:walker", ptr %t180, i32 0, i32 1
  %t183 = load i64, ptr %t182, !tbaa !24
  store i64 %t183, ptr %l94, !tbaa !24
  %t184 = load ptr, ptr %l2, !tbaa !29
  %t186 = getelementptr %"compiler/typed:Call", ptr %t184, i32 0, i32 2
  %t187 = load i32, ptr %t186, !tbaa !23
  %t189 = sext i32 %t187 to i64
  store i64 %t189, ptr %l97, !tbaa !24
  %t190 = load ptr, ptr %l3, !tbaa !29
  %t192 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v3, ptr %t190)
  store i32 %t192, ptr %l99
  br label %bb49
bb48:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb52
bb49:
  %t193 = load ptr, ptr %l1, !tbaa !29
  store ptr %t193, ptr %l100, !tbaa !29
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 0)
  store i64 %t195, ptr %l102
  br label %bb50
bb50:
  %t196 = load ptr, ptr %l92, !tbaa !29
  %t197 = load i64, ptr %l94, !tbaa !24
  %t198 = load i64, ptr %l97, !tbaa !24
  %t199 = load i32, ptr %l99, !tbaa !23
  %t200 = load ptr, ptr %l100, !tbaa !29
  %t201 = load i64, ptr %l102, !tbaa !24
  %t202 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitLeaf(ptr %v0, ptr %v1, ptr %t196, i64 %t197, i64 %t198, i32 %t199, ptr %t200, i64 %t201)
  store i1 %t202, ptr %l103
  br label %bb51
bb51:
  %t203 = load i1, ptr %l103, !tbaa !21
  store i1 %t203, ptr %l91, !tbaa !21
  br label %bb52
bb52:
  %t204 = load i1, ptr %l91, !tbaa !21
  store i1 %t204, ptr %l10, !tbaa !21
  store ptr %l6, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb53
bb53:
  %t206 = load i64, ptr %l12, !tbaa !24
  store i64 %t206, ptr %l105, !tbaa !24
  %t207 = load ptr, ptr %l11, !tbaa !29
  %t209 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t207)
  store i64 %t209, ptr %l107
  br label %bb54
bb54:
  %t210 = load i64, ptr %l105, !tbaa !24
  %t211 = load i64, ptr %l107, !tbaa !24
  %t212 = icmp slt i64 %t210, %t211
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb55, label %bb56
bb55:
  br label %bb78
bb56:
  br label %bb57
bb57:
  %t216 = load ptr, ptr %l11, !tbaa !29
  %t217 = load i64, ptr %l12, !tbaa !24
  %t220 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t216, i64 %t217)
  store i64 %t220, ptr %l112
  br label %bb58
bb58:
  %t221 = load i64, ptr %l112, !tbaa !24
  store i64 %t221, ptr %l13, !tbaa !24
  %t222 = load ptr, ptr %l5, !tbaa !29
  %t224 = getelementptr %"compiler/free:Free", ptr %t222, i32 0, i32 46
  store ptr %t224, ptr %l114, !tbaa !29
  %t225 = load i64, ptr %l13, !tbaa !24
  store i64 %t225, ptr %l115, !tbaa !24
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr %"compiler/free:walker", ptr %t226, i32 0, i32 1
  %t229 = load i64, ptr %t228, !tbaa !24
  store i64 %t229, ptr %l117, !tbaa !24
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t230)
  store ptr %t232, ptr %l119
  br label %bb59
bb59:
  %t233 = load ptr, ptr %l119, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Body", ptr %t233, i32 0, i32 3
  %t236 = load i64, ptr %t235, !tbaa !24
  store i64 %t236, ptr %l121, !tbaa !24
  %t237 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t237, ptr %l122
  %t238 = load i1, ptr %l10, !tbaa !21
  br i1 %t238, label %bb60, label %bb61
bb60:
  %t240 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  store i64 %t240, ptr %l124, !tbaa !24
  br label %bb62
bb61:
  %t242 = load i64, ptr @G_2ecompiler_2ffree_2eSFail, !tbaa !24
  store i64 %t242, ptr %l124, !tbaa !24
  br label %bb62
bb62:
  %t244 = load i1, ptr %l10, !tbaa !21
  br i1 %t244, label %bb63, label %bb64
bb63:
  %t246 = load ptr, ptr %l2, !tbaa !29
  %t248 = getelementptr %"compiler/typed:Call", ptr %t246, i32 0, i32 2
  %t249 = load i32, ptr %t248, !tbaa !23
  %t251 = sext i32 %t249 to i64
  store i64 %t251, ptr %l128, !tbaa !24
  br label %bb65
bb64:
  store i64 -1, ptr %l128, !tbaa !24
  br label %bb65
bb65:
  %t253 = load ptr, ptr %l3, !tbaa !29
  %t255 = load i64, ptr %l115, !tbaa !24
  %t256 = load i64, ptr %l117, !tbaa !24
  %t257 = load i64, ptr %l121, !tbaa !24
  %t258 = load %"compiler/source:Span", ptr %l122
  %t259 = load i64, ptr %l124, !tbaa !24
  %t260 = load i64, ptr %l128, !tbaa !24
  %t262 = call %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v3, ptr %v0, ptr %v0, i64 %t255, i64 %t256, i64 %t257, %"compiler/source:Span" %t258, i64 %t259, i64 -1, i64 %t260, ptr %t253, ptr null)
  store %"compiler/free:store" %t262, ptr %l134
  br label %bb66
bb66:
  %t263 = load ptr, ptr %l114, !tbaa !29
  %t264 = load %"compiler/free:store", ptr %l134
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t263, %"compiler/free:store" %t264)
  br label %bb67
bb67:
  %t265 = load i1, ptr %l10, !tbaa !21
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s11
  %t269 = load ptr, ptr %l5, !tbaa !29
  store ptr %t269, ptr %l137, !tbaa !29
  %t270 = load i64, ptr %l13, !tbaa !24
  store i64 %t270, ptr %l138, !tbaa !24
  %t271 = load i64, ptr @G_2ecompiler_2ffree_2eRMade, !tbaa !24
  store i64 %t271, ptr %l139, !tbaa !24
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t272)
  store ptr %t274, ptr %l141
  br label %bb70
bb69:
  br label %bb76
bb70:
  %t275 = load ptr, ptr %l141, !tbaa !29
  %t277 = getelementptr %"compiler/typed:Body", ptr %t275, i32 0, i32 3
  %t278 = load i64, ptr %t277, !tbaa !24
  store i64 %t278, ptr %l143, !tbaa !24
  %t279 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t279, ptr %l144
  %t280 = ptrtoint ptr %v0 to i64
  store i64 %t280, ptr %l145, !tbaa !24
  %t281 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3areason_2e3
  br i1 %t281, label %bb71, label %bb72
bb71:
  %t283 = call ptr @__olang_region_make(ptr %v0)
  %t284 = ptrtoint ptr %t283 to i64
  store i64 %t284, ptr %l145, !tbaa !24
  br label %bb72
bb72:
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l147, !tbaa !29
  %t286 = load ptr, ptr %l3, !tbaa !29
  %t288 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v3, ptr %t286)
  store %"compiler/source:Span" %t288, ptr %l149
  br label %bb73
bb73:
  %t289 = load ptr, ptr %l147, !tbaa !29
  %t290 = load %"compiler/source:Span", ptr %l149
  %t291 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %s11, ptr %t289, %"compiler/source:Span" %t290)
  store { i64, ptr } %t291, ptr %l150
  br label %bb74
bb74:
  %t292 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t293 = extractvalue { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t294 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 1
  %t296 = extractvalue { i64, ptr } %t294, 0
  %t297 = add i64 %t293, %t296
  %t298 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t299 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t300 = add i64 %t297, %t299
  %t301 = load i64, ptr %l145
  %t302 = inttoptr i64 %t301 to ptr
  %t303 = call ptr @__olang_scope_alloc(ptr %t302, i64 %t300)
  call void @olang_textcopy(ptr %t303, ptr %t292, i64 %t293)
  %t304 = getelementptr i8, ptr %t303, i64 %t293
  call void @olang_textcopy(ptr %t304, ptr %t295, i64 %t296)
  %t305 = getelementptr i8, ptr %t304, i64 %t296
  call void @olang_textcopy(ptr %t305, ptr %t298, i64 %t299)
  %t306 = insertvalue { i64, ptr } undef, i64 %t300, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t303, 1
  %t309 = load i64, ptr %l145
  %t310 = inttoptr i64 %t309 to ptr
  %t311 = extractvalue { i64, ptr } %t307, 0
  %t312 = extractvalue { i64, ptr } %t307, 1
  %t313 = mul i64 %t311, 1
  %t314 = call ptr @__olang_scope_alloc(ptr %t310, i64 %t313)
  call void @llvm.memcpy.p0.p0.i64(ptr %t314, ptr %t312, i64 %t313, i1 false)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  %t317 = load ptr, ptr %l137, !tbaa !29
  %t318 = load i64, ptr %l138, !tbaa !24
  %t319 = load i64, ptr %l139, !tbaa !24
  %t320 = load i64, ptr %l143, !tbaa !24
  %t321 = load %"compiler/source:Span", ptr %l144
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v0, ptr %t317, i64 %t318, i64 %t319, i64 %t320, %"compiler/source:Span" %t321, { i64, ptr } %t316)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s11)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t323 = load i64, ptr %l12, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l12, !tbaa !24
  br label %bb53
bb78:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeField(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i1
  %l12 = alloca i1
  %l18 = alloca i64
  %l20 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l34 = alloca ptr
  %l36 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/free:walker", ptr %t11, i32 0, i32 2
  %t14 = load i1, ptr %t13, !tbaa !21
  store i1 %t14, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb8
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:walker", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:walker", ptr %t21, i32 0, i32 8
  %t24 = load i32, ptr %t23, !tbaa !23
  %t29 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t20, i32 %t24, i64 %a1)
  store i64 %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = icmp sge i64 %t30, 0
  store i1 %t31, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l12, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/free:walker", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l22, !tbaa !29
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t38)
  store i32 %t40, ptr %l24
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = load i32, ptr %l24, !tbaa !23
  %t43 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t41, i32 %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l25
  br label %bb12
bb12:
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %l25)
  store i64 %t45, ptr %l27
  br label %bb13
bb13:
  %t46 = load i64, ptr %l27, !tbaa !24
  %t47 = icmp eq i64 %t46, 0
  store i1 %t47, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l20, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/free:walker", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/free:Free", ptr %t53, i32 0, i32 33
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/free:walker", ptr %t56, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  %t62 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t55, i64 %t59)
  store ptr %t62, ptr %l34
  br label %bb18
bb18:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load ptr, ptr %l34, !tbaa !29
  %t66 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t64, i64 %t63)
  store i64 %t66, ptr %l36
  br label %bb19
bb19:
  %t67 = load i64, ptr %l36, !tbaa !24
  %t68 = icmp sgt i64 %t67, 0
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/free:walker", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/free:Free", ptr %t73, i32 0, i32 40
  store i1 true, ptr %t75, !tbaa !21
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca ptr
  %l44 = alloca ptr
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t16, i64 %t17)
  store ptr %t20, ptr %l14
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l14, !tbaa !29
  store ptr %t21, ptr %l5, !tbaa !29
  br label %bb31
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l16, !tbaa !21
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
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %t37, i64 %t38)
  store ptr %t41, ptr %l23
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l23, !tbaa !29
  store ptr %t42, ptr %l5, !tbaa !29
  br label %bb31
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 4
  store i1 %t50, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l25, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb26
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Elem", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = call ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %s3, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l33
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l33, !tbaa !29
  %t67 = icmp eq ptr %t66, null
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Elem", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load i64, ptr %l1, !tbaa !24
  %t78 = call ptr @compiler_2ffree_2efindCallPlace(ptr %v0, ptr %v1, ptr %t74, i64 %t75)
  store ptr %t78, ptr %l40
  br label %bb23
bb22:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Elem", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i64, ptr %l1, !tbaa !24
  %t86 = call ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %t82, i64 %t83)
  store ptr %t86, ptr %l44
  br label %bb24
bb23:
  %t87 = load ptr, ptr %l40, !tbaa !29
  store ptr %t87, ptr %l36, !tbaa !29
  br label %bb25
bb24:
  %t88 = load ptr, ptr %l44, !tbaa !29
  store ptr %t88, ptr %l36, !tbaa !29
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l36, !tbaa !29
  store ptr %t89, ptr %l5, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store ptr null, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_ee9887f5f58478ff_db34cc814b361eab)
  unreachable
bb31:
  %t90 = load ptr, ptr %l5, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ffree_2ehas(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp eq i64 %t18, %a1
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2eoval(i64 %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t2 = shl i64 1, 40
  %t4 = sub i64 %t2, 1
  %t7 = and i64 %a0, %t4
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2epureIndex(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb35
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb23
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb12, label %bb13
bb12:
  %t29 = load ptr, ptr %l15, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 8}
  %t32 = icmp eq i64 %t30, 0
  store i1 %t32, ptr %l16, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_11a48ff1e8d67007_90e1a85549f82d33)
  unreachable
bb22:
  %t34 = load i1, ptr %l14, !tbaa !21
  store i1 %t34, ptr %l3, !tbaa !21
  br label %bb35
bb23:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb24, label %bb25
bb24:
  %t39 = load ptr, ptr %l19, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 17
  store i1 %t42, ptr %l20, !tbaa !21
  br label %bb25
bb25:
  %t43 = load i1, ptr %l20, !tbaa !21
  br i1 %t43, label %bb26, label %bb27
bb26:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call i1 @compiler_2ffree_2epureIndex(ptr %v0, ptr %t50)
  store i1 %t52, ptr %l26
  br label %bb29
bb29:
  %t53 = load i1, ptr %l26, !tbaa !21
  store i1 %t53, ptr %l3, !tbaa !21
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e0188cd4392210a6_c14318bc74dc83b2)
  unreachable
bb35:
  %t54 = load i1, ptr %l3, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2eruns({ i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb7
bb2:
  %t6 = load { i64, [2 x i64] }, ptr %l0
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t11 = load { i64, [2 x i64] }, ptr %l0
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 3
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_9c97567f05482d15_e6d42a2535d66e1)
  unreachable
bb13:
  %t16 = load i1, ptr %l1, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/free:store" @compiler_2ffree_3astore_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, ptr %a8) #0 {
entry:
  %rv = alloca %"compiler/free:store"
  br label %start
start:
  br label %bb0
bb0:
  %t20 = insertvalue %"compiler/free:store" undef, i64 %a0, 0
  %t22 = insertvalue %"compiler/free:store" %t20, i64 %a1, 1
  %t24 = insertvalue %"compiler/free:store" %t22, i64 %a2, 2
  %t26 = insertvalue %"compiler/free:store" %t24, %"compiler/source:Span" %a3, 3
  %t28 = insertvalue %"compiler/free:store" %t26, i64 %a4, 4
  %t30 = insertvalue %"compiler/free:store" %t28, i64 %a5, 5
  %t32 = insertvalue %"compiler/free:store" %t30, i64 %a6, 6
  %t34 = insertvalue %"compiler/free:store" %t32, ptr %a7, 7
  %t36 = insertvalue %"compiler/free:store" %t34, ptr %a8, 8
  store %"compiler/free:store" %t36, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:store", ptr %rv
  ret %"compiler/free:store" %rr
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
define linkonce_odr %"compiler/free:retire" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aretire(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/free:retire"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/free:retire"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/free:retire", ptr %a0
  store %"compiler/free:retire" %t2, ptr %l1
  %t3 = getelementptr %"compiler/free:retire", ptr %l1, i32 0, i32 2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/free:retire", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/free:retire", ptr %l1
  store %"compiler/free:retire" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:retire", ptr %rv
  ret %"compiler/free:retire" %rr
}

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
@.d0 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"the function" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c": memory: " }>, align 8
@.d4 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c" has one holder: every instance stored into an owning place is a new one\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c": memory: " }>, align 8
@.d6 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c" may be held by two owning places at once, so it has no one holder\0A" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d16 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"the program's scope" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"the " }>, align 8
@.d20 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'s scope" }>, align 8
@.d21 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"'s scope" }>, align 8
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"its scope" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"esc " }>, align 8
@.d24 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" par " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d26 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" inside " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_errpay_pop()
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a reference into it is stored here, in '" }>, align 8
@.d30 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"'; store a copy, '$(...)'" }>, align 8
@.d31 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"a reference into it is kept here" }>, align 8
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

@.d32 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"free: escaped holder " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}
declare void @__olang_sb_add(ptr, i64)
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aScope(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 9}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i32 }, ptr %t40, i32 0, i32 0
  %t42 = load i32, ptr %t41
  %t44 = sext i32 %t42 to i64
  %t45 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t44)
  call void @__olang_sb_add(ptr %v0, i64 %t46)
  %t47 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb7:
  %t49 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb8:
  %t51 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb9:
  %t53 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr { i64, [2 x i64] }, ptr %t57, i32 0, i32 1
  %t59 = getelementptr { i64 }, ptr %t58, i32 0, i32 0
  %t60 = load i64, ptr %t59
  %t62 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t63 = call i64 @__olang_fmt_i64(ptr %t62, i64 %t60)
  call void @__olang_sb_add(ptr %v0, i64 %t63)
  %t64 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t64, i64 %t65)
  br label %bb1
bb10:
  %t66 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t66, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 1
  %t72 = getelementptr { i64, i64 }, ptr %t71, i32 0, i32 0
  %t73 = load i64, ptr %t72
  %t75 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t76 = call i64 @__olang_fmt_i64(ptr %t75, i64 %t73)
  call void @__olang_sb_add(ptr %v0, i64 %t76)
  %t77 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr { i64, [2 x i64] }, ptr %t79, i32 0, i32 1
  %t81 = getelementptr { i64, i64 }, ptr %t80, i32 0, i32 1
  %t82 = load i64, ptr %t81
  %t84 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t85 = call i64 @__olang_fmt_i64(ptr %t84, i64 %t82)
  call void @__olang_sb_add(ptr %v0, i64 %t85)
  %t86 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t86, i64 %t87)
  br label %bb1
ret:
  ret void
}

@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_sb_done(ptr)
@olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2eexpr_2elocal_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2ffree_3areason_2e3 = weak hidden constant i1 false
@.d36 = private constant <{ i64, [88 x i8] }> <{ i64 0, [88 x i8] c"a value moved out of it is held where its call lands (O16), where nothing releases it: '" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d38 = private constant <{ i64, [28 x i8] }> <{ i64 0, [28 x i8] c"a copy of a value holding it" }>, align 8
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

@olang_2esole_2ecompiler_2ffree_3aretire_2e2 = weak hidden constant i1 false
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"its new value is built where the old one lives: '" }>, align 8
@.d49 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"' borrows its result from '" }>, align 8
@.d50 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"'; a built result ('" }>, align 8
@.d51 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"') frees the old " }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"its new value is not all new: '" }>, align 8
@.d54 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"' returns storage it was given" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2ereach_2elocal_2e20 = weak hidden constant i1 false
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a reference into it is stored here, in '" }>, align 8
@.d59 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"'; store a copy, '$(...)'" }>, align 8
@.d60 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"a reference into it is stored here; store a copy, '$(...)'" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"a reference into it is stored here, in '" }>, align 8
@.d63 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"'; store a copy, '$(...)'" }>, align 8
@.d64 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"a reference into it is stored here; store a copy, '$(...)'" }>, align 8
@.d65 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"esc-store " }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" par " }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d68 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" within " }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d70 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"its new value is a copy of what a constructor is given: '" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d72 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"its new value is a copy of what a constructor is given, which holds other owners too: '" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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

declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d74 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Scope.Unset" }>, align 8
@.d75 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Scope.Block" }>, align 8
@.d76 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d77 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d78 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.Scope.Var" }>, align 8
@.d79 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.Scope.Program" }>, align 8
@.d80 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.Scope.Region" }>, align 8
@.d81 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Scope.Frame" }>, align 8
@.d82 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Scope.Inert" }>, align 8
@.d83 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Scope.Found" }>, align 8
@.d84 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.Scope.Passed" }>, align 8
@.d85 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eNotSole = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eLen_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %a0)
declare %"compiler/free:retire" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eAt_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eokind(i64 %a0)
@G_2ecompiler_2ffree_2eOPl = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_4cef24e7d17769b7_e2744f91577a9953 = external constant [0 x i8]
declare ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eForeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_947cc6b8bd079717_9e266d1a8b9c5cdb = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2elineStart(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hdc5ed4f57090b33f7a83fc7b2b1f05b3(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_708b3215abbdbba7_3cea2bd689d53e8b = external constant [0 x i8]
@G_2ecompiler_2ffree_2eRNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/free:reason" @compiler_2ffree_3areason_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eSetAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/free:reason" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2ffree_2eSFresh = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSMove = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisContents(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisOwnLocal(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2erecvOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisNamed(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceName(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0)
declare %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_f6dacd44c7154ec0_6b7e2d10b8afc3c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_ebe5ee6b39eee92e_4ec5471030d8b4f2 = external constant [0 x i8]
@olang_loc_c32ca46bf6d65f0c_9a54b76873cd9ad0 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_b4c0d703fa684531_272a8f4f39064c15 = external constant [0 x i8]
@G_2ecompiler_2ffree_2eMustNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2ffree_2ecompiler_2ffree_3amustW_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_14962ab25e47b4fc_3749941476b1d040 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3amustW_2ebinds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8d35557863f6e46b_2765f8f7d1e0ebdf = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3amustW_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_502532e2e95f04ea_fe436d8dc2f78aae = external constant [0 x i8]
@olang_loc_ba297c355e3740f1_9975a70d069e6a55 = external constant [0 x i8]
@olang_loc_bb85040a6a786cb8_20e886069e3b9c04 = external constant [0 x i8]
@olang_loc_be187497b97f18d7_9641cb8c9c409d3 = external constant [0 x i8]
@olang_loc_342e0c3fe78e7ee6_419d07e7c20dd892 = external constant [0 x i8]
@olang_loc_d5478abcfcd1a74_537f989617a8cff0 = external constant [0 x i8]
declare i1 @compiler_2ffree_2eleaves(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecloseAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_2fa77e012092fd19_7ffe9e1eddadbc5d = external constant [0 x i8]
@G_2ecompiler_2ffree_2eOParC = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eOPar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2ffree_2eRStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2eregister(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereadOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eborrowOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2etakeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eregisteredAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ffree_2eOMov = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRMade = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2ffree_2eONew = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ffree_2eorig(i64 %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2edestructs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ffree_2eisVar({ i64, [2 x i64] } %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_dc7e16ca98e3c304_3c9b7555f95fce88 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emakeStores(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_c4f9ad7cc46c30d3_40011a8198a2fca7 = external constant [0 x i8]
declare i32 @compiler_2ffree_2ecompiler_2ffree_3aFree_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H5927ce9e0c48ffa4d9cf1c64f8f12c1b(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ffree_2ereadLocalOf(ptr %v0, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eheldDrop(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2edtorCalls(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0)
declare %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ffree_2eLHeld = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5)
declare %"compiler/free:retire" @compiler_2ffree_3aretire_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2ePush_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:retire" %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
@olang_loc_fd3298abbcb5ff92_1a857839cb7bbff6 = external constant [0 x i8]
@olang_loc_5a2a443e2f2f03b9_3064adab7524445d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2earm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_f2df24d87159f740_3aba0f93d819cd0c = external constant [0 x i8]
@olang_loc_e2fb89bbcc8912df_b34dca3bd4e44f7b = external constant [0 x i8]
@olang_loc_b9d8fe51bd9fb1ae_e9263c049ba8f2ba = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2elambdaMade(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecaptured(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_67165cb650ae48c_1f30efdb88316bc8 = external constant [0 x i8]
@olang_loc_b6b576316e1b3293_3c9a5af727622297 = external constant [0 x i8]
@olang_loc_797639ecae530892_5422fc7df8fd29f6 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltSpell(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_fa71248d89b17b0b_39d265aac120d27f = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ederefRoot(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/free:orStore" @compiler_2ffree_3aorStore_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, ptr %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2ePush_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:orStore" %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euse(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eownLocal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeeder(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_bfa96af29dec6ca7_6eacd8161d4b79f3 = external constant [0 x i8]
declare i1 @compiler_2ffree_2ereachedThrough(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eparamOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/source:Span" %a3, i1 %a4)
@G_2ecompiler_2ffree_2eSFail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:store" %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitLeaf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4, i64 %a5)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ffree_2efindCall(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ee9887f5f58478ff_db34cc814b361eab = external constant [0 x i8]
@olang_loc_11a48ff1e8d67007_90e1a85549f82d33 = external constant [0 x i8]
@olang_loc_e0188cd4392210a6_c14318bc74dc83b2 = external constant [0 x i8]
@olang_loc_9c97567f05482d15_e6d42a2535d66e1 = external constant [0 x i8]

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
