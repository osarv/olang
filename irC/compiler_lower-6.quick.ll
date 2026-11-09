source_filename = "compiler_lower-6.quick.ll"
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
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/lower:lowering" = type { ptr, ptr, ptr, %"compiler/mir:Fn", i32, i32, i32, i64, { i64, [4 x i64] }, i32, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i1, { i64, [1 x i64] }, i32, { i64, [1 x i64] }, %"compiler/typed:Plan", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:DropHolding", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/lower:loopCtx" = type { i32, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eT(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:Lowerer", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsParts(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/typed:LocalUses"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i1
  %l21 = alloca i64
  %l24 = alloca i64
  %l31 = alloca %"compiler/typed:LocalUses"
  %l35 = alloca i32
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l81 = alloca i64
  %l88 = alloca i64
  %l92 = alloca i64
  %l95 = alloca i64
  %l115 = alloca i64
  %l118 = alloca i1
  %l119 = alloca ptr
  %l122 = alloca i64
  %l125 = alloca i64
  %l126 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t27 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 11
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb4
bb2:
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l21, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 5
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l21, !tbaa !24
  %t15 = load i64, ptr %l24, !tbaa !24
  %t16 = icmp sge i64 %t14, %t15
  store i1 %t16, ptr %l20, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l20, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:Lowerer", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t27, ptr %v0, ptr %v1, ptr %s0, ptr %t25, ptr %t26)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t27, i64 704, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l31, i64 704, i1 false)
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 5
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t32, i64 %t33)
  store i32 %t36, ptr %l35
  br label %bb9
bb9:
  %t37 = load i32, ptr %l35, !tbaa !23
  %t38 = sext i32 %t37 to i64
  store i64 %t38, ptr %l4, !tbaa !24
  %t40 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 2
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t40, i64 %t41)
  store i1 %t44, ptr %l39
  br label %bb10
bb10:
  %t45 = load i1, ptr %l39, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb14
bb12:
  %t46 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 4
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t46, i64 %t47)
  store i1 %t50, ptr %l43
  br label %bb13
bb13:
  %t51 = load i1, ptr %l43, !tbaa !21
  store i1 %t51, ptr %l40, !tbaa !21
  br label %bb14
bb14:
  %t52 = load i1, ptr %l40, !tbaa !21
  br i1 %t52, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb16:
  %t53 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 5
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t53, i64 %t54)
  store i1 %t57, ptr %l47
  br label %bb17
bb17:
  %t58 = load i1, ptr %l47, !tbaa !21
  store i1 %t58, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t59 = load i1, ptr %l44, !tbaa !21
  br i1 %t59, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb22
bb20:
  %t60 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 7
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t60, i64 %t61)
  store i1 %t64, ptr %l51
  br label %bb21
bb21:
  %t65 = load i1, ptr %l51, !tbaa !21
  store i1 %t65, ptr %l48, !tbaa !21
  br label %bb22
bb22:
  %t66 = load i1, ptr %l48, !tbaa !21
  br i1 %t66, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  store i64 0, ptr %l5, !tbaa !24
  %t68 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 10
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t68)
  store i64 %t70, ptr %l54
  br label %bb26
bb26:
  %t71 = load i64, ptr %l54, !tbaa !24
  store i64 %t71, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l6, !tbaa !24
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb27, label %bb28
bb27:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb32
bb29:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l7, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l61, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb31
bb31:
  %t98 = load i64, ptr %l61, !tbaa !24
  store i64 %t98, ptr %l58, !tbaa !24
  br label %bb32
bb32:
  %t99 = load i64, ptr %l58, !tbaa !24
  store i64 %t99, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb33
bb33:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb34, label %bb35
bb34:
  br label %bb42
bb35:
  br label %bb36
bb36:
  %t108 = load i64, ptr %l5, !tbaa !24
  %t109 = load i64, ptr %l9, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  %t118 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 10
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t118, i64 %t116)
  store i64 %t122, ptr %l81
  br label %bb37
bb37:
  %t123 = load i64, ptr %l4, !tbaa !24
  %t124 = load i64, ptr %l81, !tbaa !24
  %t126 = icmp eq i64 %t124, %t123
  br i1 %t126, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l9, !tbaa !24
  br label %bb33
bb42:
  store i64 0, ptr %l11, !tbaa !24
  %t133 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 12
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t133)
  store i64 %t135, ptr %l88
  br label %bb43
bb43:
  %t136 = load i64, ptr %l88, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t138 = load i64, ptr %l11, !tbaa !24
  %t141 = icmp sgt i64 %t137, %t138
  br i1 %t141, label %bb44, label %bb45
bb44:
  %t143 = load i64, ptr %l13, !tbaa !24
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb49
bb46:
  %t147 = load i64, ptr %l12, !tbaa !24
  %t148 = load i64, ptr %l11, !tbaa !24
  %t151 = sub i64 %t147, %t148
  %t152 = load i64, ptr %l13, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t157 = sub i64 %t155, 1
  %t158 = load i64, ptr %l13, !tbaa !24
  %t161 = sdiv i64 %t157, %t158
  store i64 %t161, ptr %l95, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb48
bb48:
  %t163 = load i64, ptr %l95, !tbaa !24
  store i64 %t163, ptr %l92, !tbaa !24
  br label %bb49
bb49:
  %t164 = load i64, ptr %l92, !tbaa !24
  store i64 %t164, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb50
bb50:
  %t165 = load i64, ptr %l15, !tbaa !24
  %t166 = load i64, ptr %l14, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb51, label %bb52
bb51:
  br label %bb65
bb52:
  br label %bb53
bb53:
  %t173 = load i64, ptr %l11, !tbaa !24
  %t174 = load i64, ptr %l15, !tbaa !24
  %t175 = load i64, ptr %l13, !tbaa !24
  %t178 = mul i64 %t174, %t175
  %t181 = add i64 %t173, %t178
  store i64 %t181, ptr %l16, !tbaa !24
  %t183 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 12
  %t184 = load i64, ptr %l16, !tbaa !24
  %t187 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t183, i64 %t184)
  store i64 %t187, ptr %l115
  br label %bb54
bb54:
  %t188 = load i64, ptr %l4, !tbaa !24
  %t189 = load i64, ptr %l115, !tbaa !24
  %t191 = icmp eq i64 %t189, %t188
  br i1 %t191, label %bb55, label %bb56
bb55:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l119, !tbaa !29
  %t194 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 13
  %t195 = load i64, ptr %l16, !tbaa !24
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t194, i64 %t195)
  store i64 %t198, ptr %l122
  br label %bb57
bb56:
  store i1 false, ptr %l118, !tbaa !21
  br label %bb60
bb57:
  %t199 = getelementptr %"compiler/typed:LocalUses", ptr %l3, i32 0, i32 14
  %t200 = load i64, ptr %l16, !tbaa !24
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t199, i64 %t200)
  store i64 %t203, ptr %l125
  br label %bb58
bb58:
  %t204 = load ptr, ptr %l119, !tbaa !29
  %t205 = load i64, ptr %l122, !tbaa !24
  %t206 = load i64, ptr %l125, !tbaa !24
  %t207 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %t204, i64 %t205, i64 %t206)
  store i1 %t207, ptr %l126
  br label %bb59
bb59:
  %t208 = load i1, ptr %l126, !tbaa !21
  %t209 = xor i1 %t208, true
  store i1 %t209, ptr %l118, !tbaa !21
  br label %bb60
bb60:
  %t211 = load i1, ptr %l118, !tbaa !21
  br i1 %t211, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t213 = load i64, ptr %l15, !tbaa !24
  %t215 = add i64 %t213, 1
  store i64 %t215, ptr %l15, !tbaa !24
  br label %bb50
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eassert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l10 = alloca ptr
  %l17 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l18 = alloca i1
  %l22 = alloca { i64, [4 x i64] }
  %l27 = alloca i32
  %l30 = alloca i32
  %l45 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %t55 = alloca { i64, [8 x i64] }, align 8
  %t71 = alloca { i64, [4 x i64] }, align 8
  %t91 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 10
  store ptr %t6, ptr %l10, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:lowering", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t16 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t22 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t15, i64 %t19)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t22, ptr %l17
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17
  %t25 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t23, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t24)
  store i1 %t25, ptr %l18
  br label %bb2
bb2:
  %t26 = load i1, ptr %l18, !tbaa !21
  br i1 %t26, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t32 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t27, ptr %a2)
  store { i64, [4 x i64] } %t32, ptr %l22
  br label %bb6
bb6:
  %t33 = load { i64, [4 x i64] }, ptr %l22
  store { i64, [4 x i64] } %t33, ptr %l4
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 10
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 3
  %t43 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t41)
  store i32 %t43, ptr %l27
  br label %bb10
bb10:
  %t44 = load i32, ptr %l27, !tbaa !23
  store i32 %t44, ptr %l5, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 3
  %t49 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t47)
  store i32 %t49, ptr %l30
  br label %bb11
bb11:
  %t50 = load i32, ptr %l30, !tbaa !23
  store i32 %t50, ptr %l6, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, [4 x i64] }, ptr %l4
  %t53 = load i32, ptr %l5, !tbaa !23
  %t54 = load i32, ptr %l6, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [8 x i64] }, ptr %t55, i32 0, i32 0
  store i64 2, ptr %t56
  %t58 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t52, 0
  %t60 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t58, i32 %t53, 1
  %t62 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t60, i32 %t54, 2
  %t63 = getelementptr { i64, [8 x i64] }, ptr %t55, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t62, ptr %t63
  %t64 = load { i64, [8 x i64] }, ptr %t55
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t51, { i64, [8 x i64] } %t64)
  br label %bb12
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t67, i32 %t68)
  br label %bb13
bb13:
  store { i64, [4 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 0
  store i64 0, ptr %t72
  %t73 = load { i64, [4 x i64] }, ptr %t71
  store { i64, [4 x i64] } %t73, ptr %l7
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t86 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v2, ptr %t81, ptr %t82)
  store { i64, [4 x i64] } %t86, ptr %l45
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t87 = load { i64, [4 x i64] }, ptr %l45
  store { i64, [4 x i64] } %t87, ptr %l7
  br label %bb17
bb17:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load %"compiler/source:Span", ptr %l1
  %t90 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [8 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [8 x i64] }, ptr %t91, i32 0, i32 0
  store i64 9, ptr %t92
  %t94 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t89, 0
  %t96 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t94, i32 7, 1
  %t98 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t96, { i64, [4 x i64] } %t90, 2
  %t99 = getelementptr { i64, [8 x i64] }, ptr %t91, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t98, ptr %t99
  %t100 = load { i64, [8 x i64] }, ptr %t91
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t88, { i64, [8 x i64] } %t100)
  br label %bb18
bb18:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t103, i32 %t104)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ebangNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l38 = alloca i64
  %l57 = alloca { i64, ptr }
  %l60 = alloca i32
  %l63 = alloca i32
  %l69 = alloca i32
  %l72 = alloca i64
  %l79 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l100 = alloca i64
  %l103 = alloca i64
  %l129 = alloca ptr
  %l130 = alloca ptr
  %l131 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l141 = alloca { i64, [4 x i64] }
  %l147 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t216 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %a1)
  store { i64, ptr } %t10, ptr %l27
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l28
  br label %bb2
bb2:
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t14 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %t14
  store ptr %t14, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load i64, ptr %l8, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb8
bb5:
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l8, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l38, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l38, !tbaa !24
  store i64 %t46, ptr %l35, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l35, !tbaa !24
  store i64 %t47, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb11:
  br label %bb12
bb12:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l11, !tbaa !24
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t67, ptr %l57, !tbaa !27
  %t68 = load i64, ptr %l11, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr i32, ptr %t71, i64 %t68
  %t73 = load i32, ptr %t72, !tbaa !33
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t66, i32 %t73)
  store i32 %t76, ptr %l60
  br label %bb13
bb13:
  %t77 = load i32, ptr %l60, !tbaa !23
  store i32 %t77, ptr %l12, !tbaa !23
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t79 = load i32, ptr %l12, !tbaa !23
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t82, ptr %l63
  br label %bb14
bb14:
  %t83 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t85 = trunc i64 18 to i32
  %t86 = icmp eq i32 %t83, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb39
bb16:
  br label %bb17
bb17:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t91 = load i32, ptr %l12, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l69
  br label %bb18
bb18:
  %t95 = load i32, ptr %l69, !tbaa !23
  store i32 %t95, ptr %l13, !tbaa !23
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t97 = load i32, ptr %l13, !tbaa !23
  %t100 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t96, i32 %t97)
  store i64 %t100, ptr %l72
  br label %bb19
bb19:
  %t101 = load i64, ptr %l72, !tbaa !24
  store i64 %t101, ptr %l14, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lower:lowering", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/lower:Lowerer", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/load:Loader", ptr %t111, i32 0, i32 10
  %t114 = load i64, ptr %l14, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t113, i64 %t114)
  store ptr %t117, ptr %l79
  br label %bb20
bb20:
  %t118 = load ptr, ptr %l79, !tbaa !29
  %t120 = getelementptr %"compiler/load:Module", ptr %t118, i32 0, i32 2
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l14, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/lower:lowering", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/lower:Lowerer", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/load:Loader", ptr %t132, i32 0, i32 12
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = icmp eq i64 %t122, %t135
  %t141 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s2, { i64, ptr } %t121, i1 %t138)
  store { i64, ptr } %t141, ptr %l89
  br label %bb21
bb21:
  %t142 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t142, ptr %l15, !tbaa !27
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/lower:lowering", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/lower:Lowerer", ptr %t146, i32 0, i32 0
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i32, ptr %l13, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s2, ptr %t149, i32 %t150)
  store { i64, ptr } %t153, ptr %l94
  br label %bb22
bb22:
  %t154 = load { i64, ptr }, ptr %l94, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t157 = extractvalue { i64, ptr } %t154, 0
  store i64 %t157, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t159 = load i64, ptr %l18, !tbaa !24
  %t160 = load i64, ptr %l17, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb23, label %bb24
bb23:
  %t165 = load i64, ptr %l19, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb28
bb25:
  %t169 = load i64, ptr %l18, !tbaa !24
  %t170 = load i64, ptr %l17, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l19, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l19, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l103, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb27
bb27:
  %t185 = load i64, ptr %l103, !tbaa !24
  store i64 %t185, ptr %l100, !tbaa !24
  br label %bb28
bb28:
  %t186 = load i64, ptr %l100, !tbaa !24
  store i64 %t186, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t187 = load i64, ptr %l21, !tbaa !24
  %t188 = load i64, ptr %l20, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb31:
  br label %bb32
bb32:
  %t195 = load i64, ptr %l17, !tbaa !24
  %t196 = load i64, ptr %l21, !tbaa !24
  %t197 = load i64, ptr %l19, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  store i64 %t203, ptr %l22, !tbaa !24
  %t205 = load ptr, ptr %l5, !tbaa !29
  %t206 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t207 = load i64, ptr %l11, !tbaa !24
  %t209 = add i64 %t207, 1
  %t211 = shl i64 %t209, 16
  %t212 = load i64, ptr %l22, !tbaa !24
  %t215 = or i64 %t211, %t212
  store { i64, [4 x i64] } zeroinitializer, ptr %t216
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 0
  store i64 2, ptr %t217
  %t219 = insertvalue { i32, i64 } undef, i32 %t206, 0
  %t221 = insertvalue { i32, i64 } %t219, i64 %t215, 1
  %t222 = getelementptr { i64, [4 x i64] }, ptr %t216, i32 0, i32 1
  store { i32, i64 } %t221, ptr %t222
  %t223 = load { i64, [4 x i64] }, ptr %t216
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %s0, ptr %t205, { i64, [4 x i64] } %t223)
  br label %bb33
bb33:
  %t226 = load ptr, ptr %l5, !tbaa !29
  store ptr %t226, ptr %l129, !tbaa !29
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l130, !tbaa !29
  %t228 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t228, ptr %l131, !tbaa !27
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/lower:lowering", ptr %t229, i32 0, i32 0
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t234 = getelementptr %"compiler/lower:Lowerer", ptr %t232, i32 0, i32 0
  %t235 = load ptr, ptr %t234, !tbaa !29
  %t236 = load i32, ptr %l13, !tbaa !23
  %t237 = load i64, ptr %l22, !tbaa !24
  %t241 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %s5, ptr %t235, i32 %t236, i64 %t237)
  store { i64, ptr } %t241, ptr %l137
  br label %bb34
bb34:
  %t242 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = add i64 %t244, %t247
  %t249 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t248)
  call void @olang_textcopy(ptr %t249, ptr %t243, i64 %t244)
  %t250 = getelementptr i8, ptr %t249, i64 %t244
  call void @olang_textcopy(ptr %t250, ptr %t246, i64 %t247)
  %t251 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t249, 1
  %t254 = extractvalue { i64, ptr } %t252, 0
  %t255 = extractvalue { i64, ptr } %t252, 1
  %t256 = mul i64 %t254, 1
  %t257 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t256)
  call void @llvm.memcpy.p0.p0.i64(ptr %t257, ptr %t255, i64 %t256, i1 false)
  %t258 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t257, 1
  %t261 = load ptr, ptr %l130, !tbaa !29
  %t264 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etextData(ptr %v0, ptr %s5, ptr %t261, { i64, ptr } %t259, %"compiler/source:Span" %a2)
  store { i64, [4 x i64] } %t264, ptr %l141
  br label %bb35
bb35:
  %t265 = load ptr, ptr %l129, !tbaa !29
  %t266 = load { i64, [4 x i64] }, ptr %l141
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %s0, ptr %t265, { i64, [4 x i64] } %t266)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb37:
  %t267 = load i64, ptr %l21, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l21, !tbaa !24
  br label %bb29
bb38:
  call void @__olang_scope_close(ptr %s2)
  br label %bb39
bb39:
  %t271 = load i64, ptr %l10, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l10, !tbaa !24
  br label %bb9
bb40:
  %t275 = load ptr, ptr %l5, !tbaa !29
  %t277 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eToArray_3ccompiler_2fmir_3aOperand_3e(ptr %s0, ptr %v1, ptr %t275)
  store { i64, ptr } %t277, ptr %l147
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t278 = load { i64, ptr }, ptr %l147, !tbaa !27
  store { i64, ptr } %t278, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecarries(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca { i64, [4 x i64] }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i64
  %l26 = alloca { i64, [4 x i64] }
  %l29 = alloca { i64, [4 x i64] }
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, [4 x i64] }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t1 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1
  %t2 = getelementptr { i64, [4 x i64] }, ptr %t1, i32 0, i32 0
  store i64 0, ptr %t2
  %t3 = load { i64, [4 x i64] }, ptr %t1
  store { i64, [4 x i64] } %t3, ptr %l4
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ecarrying(ptr %v0, ptr %s1, ptr %t5, i32 %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l12
  br label %bb1
bb1:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t11 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  store ptr %t11, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t13 = load i64, ptr %l6, !tbaa !24
  store i64 %t13, ptr %l14, !tbaa !24
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t14)
  store i64 %t16, ptr %l16
  br label %bb3
bb3:
  %t17 = load i64, ptr %l14, !tbaa !24
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l21
  br label %bb7
bb7:
  %t28 = load i64, ptr %l21, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l3
  %t37 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %t29, { i64, [4 x i64] } %a1, i64 %t28, %"compiler/source:Span" %t32)
  store { i64, [4 x i64] } %t37, ptr %l26
  br label %bb8
bb8:
  %t38 = load { i64, [4 x i64] }, ptr %l26
  store { i64, [4 x i64] } %t38, ptr %l8
  %t39 = load { i64, [4 x i64] }, ptr %l4
  %t41 = extractvalue { i64, [4 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 0
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } %t44, ptr %l29
  br label %bb12
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t48 = load { i64, [4 x i64] }, ptr %l4
  %t49 = load { i64, [4 x i64] }, ptr %l8
  %t50 = mul i64 2, 40
  %t51 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 2, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l36, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t56, i64 0
  store { i64, [4 x i64] } %t48, ptr %t57
  %t59 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t60, i64 1
  store { i64, [4 x i64] } %t49, ptr %t61
  %t62 = load %"compiler/source:Span", ptr %l3
  %t66 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t68 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t46, i32 11, i32 %t47, { i64, ptr } %t66, %"compiler/source:Span" %t62)
  store { i64, [4 x i64] } %t68, ptr %l38
  br label %bb11
bb11:
  %t69 = load { i64, [4 x i64] }, ptr %l38
  store { i64, [4 x i64] } %t69, ptr %l29
  br label %bb12
bb12:
  %t70 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t70, ptr %l4
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l6, !tbaa !24
  br label %bb2
bb14:
  call void @__olang_scope_close(ptr %s1)
  %t75 = load { i64, [4 x i64] }, ptr %l4
  store { i64, [4 x i64] } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ecarrying(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca i32
  %l50 = alloca i32
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
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 2
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t8, i32 %a1)
  store { i64, ptr } %t12, ptr %l14
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb3, label %bb4
bb3:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l23, !tbaa !24
  store i64 %t44, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l20, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l9, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:lowering", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/lower:Lowerer", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  store ptr %t70, ptr %l43, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/lower:lowering", ptr %t71, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t75, ptr %l46, !tbaa !27
  %t76 = load i64, ptr %l9, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i32, ptr %t79, i64 %t76
  %t81 = load i32, ptr %t80, !tbaa !33
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t74, i32 %t81)
  store i32 %t84, ptr %l49
  br label %bb13
bb13:
  %t85 = load ptr, ptr %l43, !tbaa !29
  %t86 = load i32, ptr %l49, !tbaa !23
  %t87 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t87, ptr %l50
  br label %bb14
bb14:
  %t88 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t89 = load i32, ptr %l50, !tbaa !23
  %t91 = icmp ne i32 %t89, %t88
  br i1 %t91, label %bb15, label %bb16
bb15:
  %t93 = load ptr, ptr %lp2
  %t94 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t93, i64 %t94)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l8, !tbaa !24
  br label %bb9
bb20:
  %t101 = load ptr, ptr %lp2
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i32, i64 }
  %l13 = alloca i1
  %l18 = alloca i32
  %l21 = alloca i32
  %l39 = alloca { i32, i64 }
  %l42 = alloca ptr
  %l45 = alloca { i64, [4 x i64] }
  %l49 = alloca i32
  %t28 = alloca { i64, [8 x i64] }, align 8
  %t52 = alloca { i64, [4 x i64] }, align 8
  %t55 = alloca { i64, [8 x i64] }, align 8
  %t85 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 10
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t8 = trunc i64 0 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l13, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 3
  %t16 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t14)
  store i32 %t16, ptr %l18
  br label %bb7
bb7:
  %t17 = load i32, ptr %l18, !tbaa !23
  store i32 %t17, ptr %l6, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 3
  %t22 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t20)
  store i32 %t22, ptr %l21
  br label %bb8
bb8:
  %t23 = load i32, ptr %l21, !tbaa !23
  store i32 %t23, ptr %l7, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l6, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [8 x i64] }, ptr %t28, i32 0, i32 0
  store i64 2, ptr %t29
  %t31 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %a1, 0
  %t33 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t31, i32 %t26, 1
  %t35 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t33, i32 %t27, 2
  %t36 = getelementptr { i64, [8 x i64] }, ptr %t28, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t35, ptr %t36
  %t37 = load { i64, [8 x i64] }, ptr %t28
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t24, { i64, [8 x i64] } %t37)
  br label %bb9
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t40, i32 %t41)
  br label %bb10
bb10:
  %t44 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t46 = trunc i64 1 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l5
  store { i64, [4 x i64] } zeroinitializer, ptr %t52
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 0
  store i64 0, ptr %t53
  %t54 = load { i64, [4 x i64] }, ptr %t52
  store { i64, [8 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [8 x i64] }, ptr %t55, i32 0, i32 0
  store i64 9, ptr %t56
  %t58 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t50, 0
  %t60 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t58, i32 %a3, 1
  %t62 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t60, { i64, [4 x i64] } %t54, 2
  %t63 = getelementptr { i64, [8 x i64] }, ptr %t55, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t62, ptr %t63
  %t64 = load { i64, [8 x i64] }, ptr %t55
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t49, { i64, [8 x i64] } %t64)
  br label %bb13
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lower:lowering", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t74 = call { i32, i64 } @compiler_2flower_2ecompiler_2flower_3aLowerer_2efailure(ptr %v0, ptr %t70, i64 %a4)
  store { i32, i64 } %t74, ptr %l39
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t75 = load { i32, i64 }, ptr %l39
  store { i32, i64 } %t75, ptr %l8
  %t76 = getelementptr { i32, i64 }, ptr %l8, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = getelementptr { i32, i64 }, ptr %l8, i32 0, i32 1
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l42, !tbaa !29
  %t83 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t85
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 0
  store i64 2, ptr %t86
  %t88 = insertvalue { i32, i64 } undef, i32 %t83, 0
  %t90 = insertvalue { i32, i64 } %t88, i64 %t80, 1
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  store { i32, i64 } %t90, ptr %t91
  %t92 = load { i64, [4 x i64] }, ptr %t85
  store { i64, [4 x i64] } %t92, ptr %l45
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 2
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t96, i32 %t77)
  store i32 %t100, ptr %l49
  br label %bb15
bb15:
  %t101 = load %"compiler/source:Span", ptr %l5
  %t102 = load ptr, ptr %l42, !tbaa !29
  %t103 = load { i64, [4 x i64] }, ptr %l45
  %t104 = load i32, ptr %l49, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edispatch(ptr %v0, ptr %t102, { i64, [4 x i64] } %t103, i32 %t104, %"compiler/source:Span" %t101, i1 true)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t106, i32 %t107)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecombine(ptr %v0, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca %"compiler/mir:Lvalue"
  %l10 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca { i64, ptr }
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l19 = alloca %"compiler/mir:Lvalue"
  %l20 = alloca i32
  %l21 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %t6 = alloca { i64, [4 x i64] }, align 8
  %t61 = alloca { i64, [15 x i64] }, align 8
  %t71 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i32 5, ptr %l6
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t2, ptr %l7, !tbaa !23
  %t3 = load i32, ptr %l1, !tbaa !23
  %t5 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t3)
  store %"compiler/mir:Lvalue" %t5, ptr %l9
  br label %bb1
bb1:
  store { i64, [4 x i64] } zeroinitializer, ptr %t6
  %t7 = getelementptr { i64, [4 x i64] }, ptr %t6, i32 0, i32 0
  store i64 1, ptr %t7
  %t8 = load %"compiler/mir:Lvalue", ptr %l9
  %t9 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t8, 0
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t6, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t9, ptr %t10
  %t11 = load { i64, [4 x i64] }, ptr %t6
  store { i64, [4 x i64] } %t11, ptr %l10
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t12, i64 1099511628211)
  store { i64, [4 x i64] } %t14, ptr %l12
  br label %bb2
bb2:
  %t15 = mul i64 2, 40
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 2, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  %t19 = load { i64, [4 x i64] }, ptr %l10
  %t20 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t21, i64 0
  store { i64, [4 x i64] } %t19, ptr %t22
  %t23 = load { i64, [4 x i64] }, ptr %l12
  %t24 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i64 1
  store { i64, [4 x i64] } %t23, ptr %t26
  %t27 = load %"compiler/source:Span", ptr %l3
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t30 = load i32, ptr %l7, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t33 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t28, i32 %t29, i32 %t30, { i64, ptr } %t31, %"compiler/source:Span" %t27)
  store { i64, [4 x i64] } %t33, ptr %l15
  br label %bb3
bb3:
  %t34 = load { i64, [4 x i64] }, ptr %l15
  store { i64, [4 x i64] } %t34, ptr %l4
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l16, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t36, ptr %l17
  %t37 = load i32, ptr %l1, !tbaa !23
  %t39 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t37)
  store %"compiler/mir:Lvalue" %t39, ptr %l19
  br label %bb4
bb4:
  store i32 3, ptr %l20
  %t40 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t40, ptr %l21, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 3
  %t44 = load { i64, [4 x i64] }, ptr %l4
  %t46 = mul i64 2, 40
  %t47 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 2, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l26, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t52, i64 0
  store { i64, [4 x i64] } %t44, ptr %t53
  %t55 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t56, i64 1
  store { i64, [4 x i64] } %a2, ptr %t57
  %t59 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t60 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t43, { i64, ptr } %t59)
  store %"compiler/mir:Range" %t60, ptr %l27
  br label %bb5
bb5:
  store { i64, [15 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [15 x i64] }, ptr %t61, i32 0, i32 0
  store i64 3, ptr %t62
  %t63 = load i32, ptr %l20, !range !{i32 0, i32 52}
  %t64 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t63, 0
  %t65 = load i32, ptr %l21, !tbaa !23
  %t66 = insertvalue { i32, i32, %"compiler/mir:Range" } %t64, i32 %t65, 1
  %t67 = load %"compiler/mir:Range", ptr %l27
  %t68 = insertvalue { i32, i32, %"compiler/mir:Range" } %t66, %"compiler/mir:Range" %t67, 2
  %t69 = getelementptr { i64, [15 x i64] }, ptr %t61, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t68, ptr %t69
  %t70 = load { i64, [15 x i64] }, ptr %t61
  store { i64, [21 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [21 x i64] }, ptr %t71, i32 0, i32 0
  store i64 0, ptr %t72
  %t73 = load %"compiler/source:Span", ptr %l17
  %t74 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t73, 0
  %t75 = load %"compiler/mir:Lvalue", ptr %l19
  %t76 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t74, %"compiler/mir:Lvalue" %t75, 1
  %t78 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t76, { i64, [15 x i64] } %t70, 2
  %t79 = getelementptr { i64, [21 x i64] }, ptr %t71, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t78, ptr %t79
  %t80 = load { i64, [21 x i64] }, ptr %t71
  %t82 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t80, ptr %t82
  %t83 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t83, ptr %t82)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyInPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l8 = alloca i1
  %l12 = alloca i1
  %l24 = alloca i1
  %l36 = alloca { i64, [1 x i64] }
  %l39 = alloca i1
  %l43 = alloca { i64, [1 x i64] }
  %l52 = alloca i1
  %l54 = alloca i1
  %l56 = alloca { i64, ptr }
  %l60 = alloca { i64, [2 x i64] }
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, [2 x i64] }
  %l69 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Promote", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call ptr @compiler_2flower_2ecopyMade(ptr %v1, ptr %v1, ptr %t4)
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l5, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Make", ptr %t12, i32 0, i32 4
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = icmp slt i32 %t15, 0
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lower:lowering", ptr %t20, i32 0, i32 24
  %t23 = load i1, ptr %t22, !tbaa !21
  %t25 = xor i1 %t23, true
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t27 = load i1, ptr %l12, !tbaa !21
  br i1 %t27, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Make", ptr %t29, i32 0, i32 4
  %t32 = load i32, ptr %t31, !tbaa !23
  %t34 = sext i32 %t32 to i64
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/lower:lowering", ptr %t35, i32 0, i32 30
  %t38 = getelementptr %"compiler/typed:Plan", ptr %t37, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp sge i64 %t34, %t41
  br i1 %t44, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb13
bb12:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Promote", ptr %t46, i32 0, i32 1
  %t49 = load i32, ptr %t48, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/lower:lowering", ptr %t52, i32 0, i32 30
  %t55 = getelementptr %"compiler/typed:Plan", ptr %t54, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t61 = icmp sge i64 %t51, %t58
  store i1 %t61, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t63 = load i1, ptr %l24, !tbaa !21
  br i1 %t63, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Promote", ptr %t66, i32 0, i32 1
  %t69 = load i32, ptr %t68, !tbaa !23
  %t72 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t65, i32 %t69)
  store { i64, [1 x i64] } %t72, ptr %l36
  br label %bb17
bb17:
  %t73 = load { i64, [1 x i64] }, ptr %l36
  %t75 = extractvalue { i64, [1 x i64] } %t73, 0
  %t76 = icmp eq i64 %t75, 4
  br i1 %t76, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb21
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Make", ptr %t79, i32 0, i32 4
  %t82 = load i32, ptr %t81, !tbaa !23
  %t85 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t78, i32 %t82)
  store { i64, [1 x i64] } %t85, ptr %l43
  br label %bb20
bb20:
  %t86 = load { i64, [1 x i64] }, ptr %l43
  %t88 = extractvalue { i64, [1 x i64] } %t86, 0
  %t89 = icmp eq i64 %t88, 4
  store i1 %t89, ptr %l39, !tbaa !21
  br label %bb21
bb21:
  %t91 = load i1, ptr %l39, !tbaa !21
  br i1 %t91, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lower:lowering", ptr %t93, i32 0, i32 46
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Make", ptr %t96, i32 0, i32 4
  %t99 = load i32, ptr %t98, !tbaa !23
  %t101 = sext i32 %t99 to i64
  %t104 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t95, i64 %t101)
  store i1 %t104, ptr %l52
  br label %bb25
bb25:
  %t105 = load i1, ptr %l52, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb29
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lower:lowering", ptr %t108, i32 0, i32 30
  %t111 = getelementptr %"compiler/typed:Plan", ptr %t110, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111, !tbaa !27
  store { i64, ptr } %t112, ptr %l56, !tbaa !27
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Make", ptr %t113, i32 0, i32 4
  %t116 = load i32, ptr %t115, !tbaa !23
  %t118 = sext i32 %t116 to i64
  %t120 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr { i64, [2 x i64] }, ptr %t121, i64 %t118
  %t123 = load { i64, [2 x i64] }, ptr %t122
  store { i64, [2 x i64] } %t123, ptr %l60
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/lower:lowering", ptr %t124, i32 0, i32 30
  %t127 = getelementptr %"compiler/typed:Plan", ptr %t126, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l63, !tbaa !27
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Promote", ptr %t129, i32 0, i32 1
  %t132 = load i32, ptr %t131, !tbaa !23
  %t134 = sext i32 %t132 to i64
  %t136 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, [2 x i64] }, ptr %t137, i64 %t134
  %t139 = load { i64, [2 x i64] }, ptr %t138
  store { i64, [2 x i64] } %t139, ptr %l67
  %t142 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l60, ptr %l67)
  store i1 %t142, ptr %l69
  br label %bb28
bb28:
  %t143 = load i1, ptr %l69, !tbaa !21
  store i1 %t143, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t144 = load i1, ptr %l54, !tbaa !21
  store i1 %t144, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyParams(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, [4 x i64] }
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i32
  %l21 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca { i64, [1 x i64] }
  %l33 = alloca { i64, [1 x i64] }
  %l34 = alloca i32
  %l43 = alloca %"compiler/typed:Local"
  %l50 = alloca %"compiler/typed:Local"
  %l60 = alloca ptr
  %l62 = alloca %"compiler/mir:Lvalue"
  %l67 = alloca { i64, [4 x i64] }
  %l68 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l71 = alloca %"compiler/mir:Lvalue"
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t97 = alloca { i64, [21 x i64] }, align 8
  %t113 = alloca { i64, [4 x i64] }, align 8
  %t135 = alloca { i64, [15 x i64] }, align 8
  %t141 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 5
  store ptr %t6, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l13, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l13, !tbaa !24
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t18, i64 %t19)
  store i32 %t22, ptr %l20
  br label %bb6
bb6:
  %t23 = load i32, ptr %l20, !tbaa !23
  store i32 %t23, ptr %l3, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lower:lowering", ptr %t24, i32 0, i32 14
  %t27 = load i32, ptr %l3, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t32 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H1e3bc46345ebb5614acbe688055fe55f(ptr %v0, ptr %t26, i64 %t29)
  %t33 = extractvalue { i32, i32 } %t32, 1
  %t34 = extractvalue { i32, i32 } %t32, 0
  store i32 %t34, ptr %l27
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb8, label %ok.36, !prof !99
ok.36:
  store i32 %t33, ptr %l26
  br label %bb7
bb7:
  %t37 = load i32, ptr %l26, !tbaa !23
  store i32 %t37, ptr %l21, !tbaa !23
  br label %bb10
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb10:
  %t38 = load i32, ptr %l21, !tbaa !23
  store i32 %t38, ptr %l4, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 13
  %t42 = load i32, ptr %l3, !tbaa !23
  %t44 = sext i32 %t42 to i64
  %t47 = call { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %t41, i64 %t44)
  %t48 = extractvalue { i32, { i64, [1 x i64] } } %t47, 1
  %t49 = extractvalue { i32, { i64, [1 x i64] } } %t47, 0
  store i32 %t49, ptr %l34
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb12, label %ok.51, !prof !99
ok.51:
  store { i64, [1 x i64] } %t48, ptr %l33
  br label %bb11
bb11:
  %t52 = load { i64, [1 x i64] }, ptr %l33
  store { i64, [1 x i64] } %t52, ptr %l28
  br label %bb14
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb14:
  %t53 = load { i64, [1 x i64] }, ptr %l28
  store { i64, [1 x i64] } %t53, ptr %l5
  %t54 = load i32, ptr %l3, !tbaa !23
  store i32 %t54, ptr %l6, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/lower:lowering", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Body", ptr %t61, i32 0, i32 7
  %t64 = load i32, ptr %l3, !tbaa !23
  %t66 = sext i32 %t64 to i64
  %t69 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t63, i64 %t66)
  store %"compiler/typed:Local" %t69, ptr %l43
  br label %bb15
bb15:
  %t70 = getelementptr %"compiler/typed:Local", ptr %l43, i32 0, i32 2
  %t71 = load i32, ptr %t70, !tbaa !23
  store i32 %t71, ptr %l7, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lower:lowering", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Body", ptr %t76, i32 0, i32 7
  %t79 = load i32, ptr %l3, !tbaa !23
  %t81 = sext i32 %t79 to i64
  %t84 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t78, i64 %t81)
  store %"compiler/typed:Local" %t84, ptr %l50
  br label %bb16
bb16:
  %t85 = getelementptr %"compiler/typed:Local", ptr %l50, i32 0, i32 1
  %t86 = load %"compiler/source:Span", ptr %t85
  store %"compiler/source:Span" %t86, ptr %l8
  %t88 = load i32, ptr %l4, !tbaa !23
  %t89 = load i32, ptr %l6, !tbaa !23
  %t92 = icmp ne i32 %t88, %t89
  br i1 %t92, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load %"compiler/source:Span", ptr %l8
  %t96 = load i32, ptr %l6, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [21 x i64] }, ptr %t97, i32 0, i32 0
  store i64 1, ptr %t98
  %t100 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t95, 0
  %t102 = insertvalue { %"compiler/source:Span", i32 } %t100, i32 %t96, 1
  %t103 = getelementptr { i64, [21 x i64] }, ptr %t97, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t102, ptr %t103
  %t104 = load { i64, [21 x i64] }, ptr %t97
  %t106 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 176, i64 8)
  store { i64, [21 x i64] } %t104, ptr %t106
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s5, ptr %t94, ptr %t106)
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb20
bb20:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l60, !tbaa !29
  %t110 = load i32, ptr %l4, !tbaa !23
  %t112 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t110)
  store %"compiler/mir:Lvalue" %t112, ptr %l62
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t113
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 0
  store i64 1, ptr %t114
  %t115 = load %"compiler/mir:Lvalue", ptr %l62
  %t116 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t115, 0
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t116, ptr %t117
  %t118 = load { i64, [4 x i64] }, ptr %t113
  %t119 = load i32, ptr %l7, !tbaa !23
  %t120 = load { i64, [1 x i64] }, ptr %l5
  %t121 = load %"compiler/source:Span", ptr %l8
  %t122 = load ptr, ptr %l60, !tbaa !29
  %t127 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %t122, { i64, [4 x i64] } %t118, i32 %t119, { i64, [1 x i64] } %t120, %"compiler/source:Span" %t121, i1 false)
  store { i64, [4 x i64] } %t127, ptr %l67
  br label %bb22
bb22:
  %t128 = load { i64, [4 x i64] }, ptr %l67
  store { i64, [4 x i64] } %t128, ptr %l9
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l68, !tbaa !29
  %t130 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t130, ptr %l69
  %t131 = load i32, ptr %l6, !tbaa !23
  %t133 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t131)
  store %"compiler/mir:Lvalue" %t133, ptr %l71
  br label %bb23
bb23:
  %t134 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [15 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [15 x i64] }, ptr %t135, i32 0, i32 0
  store i64 0, ptr %t136
  %t138 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t134, 0
  %t139 = getelementptr { i64, [15 x i64] }, ptr %t135, i32 0, i32 1
  store { { i64, [4 x i64] } } %t138, ptr %t139
  %t140 = load { i64, [15 x i64] }, ptr %t135
  store { i64, [21 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [21 x i64] }, ptr %t141, i32 0, i32 0
  store i64 0, ptr %t142
  %t143 = load %"compiler/source:Span", ptr %l69
  %t144 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t143, 0
  %t145 = load %"compiler/mir:Lvalue", ptr %l71
  %t146 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t144, %"compiler/mir:Lvalue" %t145, 1
  %t148 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t146, { i64, [15 x i64] } %t140, 2
  %t149 = getelementptr { i64, [21 x i64] }, ptr %t141, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t148, ptr %t149
  %t150 = load { i64, [21 x i64] }, ptr %t141
  %t152 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t150, ptr %t152
  %t153 = load ptr, ptr %l68, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t153, ptr %t152)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t155 = load i64, ptr %l2, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l2, !tbaa !24
  br label %bb1
bb26:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecounts(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i32
  %l22 = alloca ptr
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 2
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lower:lowering", ptr %t23, i32 0, i32 2
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t31 = load i32, ptr %l17, !tbaa !23
  %t32 = icmp eq i32 %t31, 0
  store i1 %t32, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l13, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t39)
  store ptr %t41, ptr %l22
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 2
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t50 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t47, ptr %t45, i32 %t46)
  store i1 %t50, ptr %l26
  br label %bb11
bb11:
  %t51 = load i1, ptr %l26, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederefCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l8 = alloca %"compiler/lower:pl"
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca i32
  %l18 = alloca i32
  %l21 = alloca %"compiler/lower:pl"
  %l22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca %"compiler/lower:pl"
  %l30 = alloca %"compiler/lower:pl"
  %l32 = alloca %"compiler/lower:pl"
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca %"compiler/lower:pl"
  %l44 = alloca %"compiler/lower:pl"
  %l45 = alloca %"compiler/mir:Lvalue"
  %l47 = alloca { i64, ptr }
  %l49 = alloca { i64, [4 x i64] }
  %l53 = alloca i32
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l57 = alloca %"compiler/mir:Lvalue"
  %l65 = alloca ptr
  %l66 = alloca { i64, [4 x i64] }
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca ptr
  %l69 = alloca %"compiler/lower:pl"
  %l71 = alloca %"compiler/lower:pl"
  %l78 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t17 = alloca { i64, [2 x i64] }, align 8
  %t40 = alloca { i64, [1 x i64] }, align 8
  %t67 = alloca { i64, [4 x i64] }, align 8
  %t105 = alloca { i64, [4 x i64] }, align 8
  %t108 = alloca { i64, [15 x i64] }, align 8
  %t120 = alloca { i64, [21 x i64] }, align 8
  %t173 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = load %"compiler/source:Span", ptr %l5
  %t14 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t6, { i64, [4 x i64] } %a1, i32 %t8, %"compiler/source:Span" %t9)
  store i32 %t14, ptr %l18
  br label %bb1
bb1:
  %t15 = load i32, ptr %l18, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 0
  store i64 1, ptr %t18
  %t20 = insertvalue { i32 } undef, i32 %t15, 0
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 1
  store { i32 } %t20, ptr %t21
  %t22 = load { i64, [2 x i64] }, ptr %t17
  %t24 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t22)
  store %"compiler/lower:pl" %t24, ptr %l21
  br label %bb2
bb2:
  %t25 = load %"compiler/lower:pl", ptr %l21
  store %"compiler/lower:pl" %t25, ptr %l8
  %t26 = load ptr, ptr %l6, !tbaa !29
  store ptr %t26, ptr %l22, !tbaa !29
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l25
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = load i32, ptr %l25, !tbaa !23
  %t34 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t34, ptr %l26
  br label %bb4
bb4:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb5, label %bb6
bb5:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l27, !tbaa !29
  %t37 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t37, ptr %l28
  %t39 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l28)
  store %"compiler/lower:pl" %t39, ptr %l30
  br label %bb7
bb6:
  br label %bb9
bb7:
  store { i64, [1 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 0
  store i64 3, ptr %t41
  %t42 = load { i64, [1 x i64] }, ptr %t40
  %t43 = load ptr, ptr %l27, !tbaa !29
  %t44 = load %"compiler/lower:pl", ptr %l30
  %t46 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t43, %"compiler/lower:pl" %t44, { i64, [1 x i64] } %t42)
  store %"compiler/lower:pl" %t46, ptr %l32
  br label %bb8
bb8:
  %t47 = load %"compiler/lower:pl", ptr %l32
  store %"compiler/lower:pl" %t47, ptr %l8
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l6, !tbaa !29
  store ptr %t48, ptr %l33, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l3, !tbaa !23
  %t53 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l36
  br label %bb10
bb10:
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t55 = load i32, ptr %l36, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t56, ptr %l37
  br label %bb11
bb11:
  %t57 = load i32, ptr %l37, !tbaa !23
  store i32 %t57, ptr %l9, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l38, !tbaa !29
  store i32 22, ptr %l39
  %t59 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t59, ptr %l40, !tbaa !23
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l41, !tbaa !29
  %t61 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t61, ptr %l42
  %t63 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l42)
  store %"compiler/lower:pl" %t63, ptr %l44
  br label %bb12
bb12:
  %t64 = load ptr, ptr %l41, !tbaa !29
  %t65 = load %"compiler/lower:pl", ptr %l44
  %t66 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t64, %"compiler/lower:pl" %t65)
  store %"compiler/mir:Lvalue" %t66, ptr %l45
  br label %bb13
bb13:
  store { i64, [4 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 0
  store i64 1, ptr %t68
  %t69 = load %"compiler/mir:Lvalue", ptr %l45
  %t70 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t69, 0
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t70, ptr %t71
  %t72 = load { i64, [4 x i64] }, ptr %t67
  %t73 = mul i64 1, 40
  %t74 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 1, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l47, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t79, i64 0
  store { i64, [4 x i64] } %t72, ptr %t80
  %t81 = load %"compiler/source:Span", ptr %l5
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = load i32, ptr %l39, !range !{i32 0, i32 52}
  %t84 = load i32, ptr %l40, !tbaa !23
  %t85 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t87 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t82, i32 %t83, i32 %t84, { i64, ptr } %t85, %"compiler/source:Span" %t81)
  store { i64, [4 x i64] } %t87, ptr %l49
  br label %bb14
bb14:
  %t88 = load { i64, [4 x i64] }, ptr %l49
  store { i64, [4 x i64] } %t88, ptr %l10
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l3, !tbaa !23
  %t91 = load %"compiler/source:Span", ptr %l5
  %t95 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t89, i32 %t90, %"compiler/source:Span" %t91)
  store i32 %t95, ptr %l53
  br label %bb15
bb15:
  %t96 = load i32, ptr %l53, !tbaa !23
  store i32 %t96, ptr %l11, !tbaa !23
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l54, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t98, ptr %l55
  %t99 = load i32, ptr %l11, !tbaa !23
  %t101 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t99)
  store %"compiler/mir:Lvalue" %t101, ptr %l57
  br label %bb16
bb16:
  %t102 = load { i64, [1 x i64] }, ptr %l4
  %t103 = load i32, ptr %l3, !tbaa !23
  %t104 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t105, i32 0, i32 0
  store i64 0, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t105
  store { i64, [15 x i64] } zeroinitializer, ptr %t108
  %t109 = getelementptr { i64, [15 x i64] }, ptr %t108, i32 0, i32 0
  store i64 8, ptr %t109
  %t111 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t102, 0
  %t113 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t111, i32 %t103, 1
  %t115 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t113, { i64, [4 x i64] } %t104, 2
  %t117 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t115, { i64, [4 x i64] } %t107, 3
  %t118 = getelementptr { i64, [15 x i64] }, ptr %t108, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t117, ptr %t118
  %t119 = load { i64, [15 x i64] }, ptr %t108
  store { i64, [21 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [21 x i64] }, ptr %t120, i32 0, i32 0
  store i64 0, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l55
  %t123 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t122, 0
  %t124 = load %"compiler/mir:Lvalue", ptr %l57
  %t125 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t123, %"compiler/mir:Lvalue" %t124, 1
  %t127 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t125, { i64, [15 x i64] } %t119, 2
  %t128 = getelementptr { i64, [21 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t127, ptr %t128
  %t129 = load { i64, [21 x i64] }, ptr %t120
  %t131 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t129, ptr %t131
  %t132 = load ptr, ptr %l54, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t132, ptr %t131)
  br label %bb17
bb17:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l65, !tbaa !29
  %t135 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t135, ptr %l66
  %t136 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t136, ptr %l67
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l68, !tbaa !29
  %t138 = load %"compiler/lower:pl", ptr %l8
  store %"compiler/lower:pl" %t138, ptr %l69
  %t140 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l69)
  store %"compiler/lower:pl" %t140, ptr %l71
  br label %bb18
bb18:
  %t141 = load i32, ptr %l9, !tbaa !23
  %t142 = load { i64, [1 x i64] }, ptr %l4
  %t143 = load %"compiler/source:Span", ptr %l5
  %t144 = load i32, ptr %l11, !tbaa !23
  %t145 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr null, i32 1
  %t146 = ptrtoint ptr %t145 to i64
  %t147 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t146, i64 8)
  %t148 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 0
  %t149 = load ptr, ptr %l68, !tbaa !29
  store ptr %t149, ptr %t148, !tbaa !28
  %t150 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 1
  %t151 = load %"compiler/lower:pl", ptr %l71
  store %"compiler/lower:pl" %t151, ptr %t150, !tbaa !28
  %t152 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 2
  store i32 %t141, ptr %t152, !tbaa !28
  %t154 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 3
  store { i64, [1 x i64] } %t142, ptr %t154, !tbaa !28
  %t156 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 4
  store %"compiler/source:Span" %t143, ptr %t156, !tbaa !28
  %t158 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 5
  store i32 %t144, ptr %t158, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t160 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 6
  store ptr %v0, ptr %t160, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t161 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %t147, i32 0, i32 7
  store ptr %s0, ptr %t161, !tbaa !28
  %t162 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t163 = insertvalue { ptr, ptr } %t162, ptr %t147, 1
  %t164 = load ptr, ptr %l65, !tbaa !29
  %t165 = load { i64, [4 x i64] }, ptr %l66
  %t166 = load %"compiler/source:Span", ptr %l67
  %t168 = extractvalue { ptr, ptr } %t163, 0
  %t169 = extractvalue { ptr, ptr } %t163, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %s0, ptr %t164, { i64, [4 x i64] } %t165, %"compiler/source:Span" %t166, ptr %t168, ptr %t169)
  br label %bb19
bb19:
  %t170 = load i32, ptr %l11, !tbaa !23
  %t172 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t170)
  store %"compiler/mir:Lvalue" %t172, ptr %l78
  br label %bb20
bb20:
  store { i64, [4 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 0
  store i64 1, ptr %t174
  %t175 = load %"compiler/mir:Lvalue", ptr %l78
  %t176 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t175, 0
  %t177 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t176, ptr %t177
  %t178 = load { i64, [4 x i64] }, ptr %t173
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t178, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/lower:pl"
  %l2 = alloca i32
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { { i64, [7 x i64] }, i32 }
  %l11 = alloca { i64, [7 x i64] }
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca { i64, [4 x i64] }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca { i64, [4 x i64] }
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l47 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca ptr
  %l53 = alloca %"compiler/lower:pl"
  %l55 = alloca %"compiler/lower:pl"
  %l56 = alloca %"compiler/mir:Lvalue"
  %l60 = alloca i32
  %l63 = alloca { i64, [4 x i64] }
  %l68 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l73 = alloca { i64, [4 x i64] }
  %l76 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca i32
  %l83 = alloca i64
  %l84 = alloca i32
  %l87 = alloca i1
  %l88 = alloca ptr
  %l91 = alloca i32
  %l92 = alloca i1
  %l106 = alloca { { i64, [7 x i64] }, i32 }
  %l109 = alloca ptr
  %l112 = alloca i32
  %l113 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l117 = alloca i32
  %l118 = alloca ptr
  %l119 = alloca %"compiler/lower:pl"
  %l121 = alloca %"compiler/lower:pl"
  %l122 = alloca %"compiler/mir:Lvalue"
  %l126 = alloca { i64, [4 x i64] }
  %l129 = alloca { i64, ptr }
  %l131 = alloca i64
  %l133 = alloca i64
  %l135 = alloca i64
  %l142 = alloca i64
  %l143 = alloca i64
  %l144 = alloca { i64, [1 x i64] }
  %l149 = alloca i64
  %l157 = alloca ptr
  %l165 = alloca i64
  %l168 = alloca i64
  %l186 = alloca i64
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l195 = alloca i64
  %l202 = alloca i64
  %l203 = alloca { i64, [2 x i64] }
  %l204 = alloca { i64, [1 x i64] }
  %l209 = alloca i32
  %l211 = alloca ptr
  %l212 = alloca { i64, [7 x i64] }
  %l216 = alloca { i64, ptr }
  %l217 = alloca %"compiler/mir:Range"
  %l221 = alloca %"compiler/mir:Range"
  %l226 = alloca %"compiler/mir:Call"
  %l227 = alloca i32
  %l236 = alloca i32
  %l239 = alloca i1
  %l242 = alloca { i64, ptr }
  %l253 = alloca i1
  %l254 = alloca ptr
  %l255 = alloca ptr
  %l256 = alloca %"compiler/lower:pl"
  %l258 = alloca %"compiler/lower:pl"
  %l261 = alloca %"compiler/lower:pl"
  %l263 = alloca i32
  %l264 = alloca { i64, [1 x i64] }
  %l265 = alloca %"compiler/source:Span"
  %l266 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i32
  %l274 = alloca ptr
  %l275 = alloca %"compiler/lower:pl"
  %l277 = alloca %"compiler/lower:pl"
  %l278 = alloca %"compiler/mir:Lvalue"
  %l281 = alloca { i64, [4 x i64] }
  %l282 = alloca ptr
  %l285 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l287 = alloca { i64, [4 x i64] }
  %l288 = alloca %"compiler/source:Span"
  %l289 = alloca ptr
  %l290 = alloca %"compiler/lower:pl"
  %l292 = alloca %"compiler/lower:pl"
  %l298 = alloca i32
  %l301 = alloca i1
  %l304 = alloca i32
  %l308 = alloca i32
  %l309 = alloca ptr
  %l312 = alloca i32
  %l313 = alloca i64
  %l319 = alloca ptr
  %l320 = alloca ptr
  %l321 = alloca %"compiler/lower:pl"
  %l323 = alloca %"compiler/lower:pl"
  %l324 = alloca ptr
  %l327 = alloca { i64, [4 x i64] }
  %l330 = alloca i32
  %l332 = alloca %"compiler/lower:pl"
  %l333 = alloca i32
  %l334 = alloca { i64, [1 x i64] }
  %l335 = alloca %"compiler/source:Span"
  %l336 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l341 = alloca i32
  %l346 = alloca i32
  %l347 = alloca ptr
  %l348 = alloca i32
  %l349 = alloca i32
  %l350 = alloca ptr
  %l351 = alloca %"compiler/lower:pl"
  %l353 = alloca %"compiler/lower:pl"
  %l354 = alloca %"compiler/mir:Lvalue"
  %l356 = alloca { i64, ptr }
  %l358 = alloca { i64, [4 x i64] }
  %l359 = alloca ptr
  %l360 = alloca { i64, [4 x i64] }
  %l361 = alloca %"compiler/source:Span"
  %l362 = alloca ptr
  %l363 = alloca { i64, [4 x i64] }
  %l364 = alloca %"compiler/source:Span"
  %l365 = alloca %"compiler/lower:pl"
  %l367 = alloca %"compiler/lower:pl"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %t47 = alloca { i64, [15 x i64] }, align 8
  %t147 = alloca { i64, [2 x i64] }, align 8
  %t196 = alloca { i64, [15 x i64] }, align 8
  %t233 = alloca { i64, [2 x i64] }, align 8
  %t257 = alloca i64
  %t281 = alloca { i64, [2 x i64] }, align 8
  %t440 = alloca { i64, [8 x i64] }, align 8
  %t508 = alloca { i64, [1 x i64] }, align 8
  %t552 = alloca { i64, [15 x i64] }, align 8
  %t588 = alloca { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, align 8
  %t671 = alloca { i64, [1 x i64] }, align 8
  %t715 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/lower:pl" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l7, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l39
  br label %bb1
bb1:
  %t11 = load i1, ptr %l39, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb5
bb3:
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l43
  br label %bb4
bb4:
  %t17 = load i1, ptr %l43, !tbaa !21
  %t18 = xor i1 %t17, true
  store i1 %t18, ptr %l40, !tbaa !21
  br label %bb5
bb5:
  %t20 = load i1, ptr %l40, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = xor i1 %a5, true
  br i1 %t23, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l47, !tbaa !29
  %t26 = load ptr, ptr %l7, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t28 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t26, i32 %t27, i64 %t28)
  store i32 %t32, ptr %l51
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l52, !tbaa !29
  %t34 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t34, ptr %l53
  %t36 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l53)
  store %"compiler/lower:pl" %t36, ptr %l55
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l52, !tbaa !29
  %t38 = load %"compiler/lower:pl", ptr %l55
  %t39 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t37, %"compiler/lower:pl" %t38)
  store %"compiler/mir:Lvalue" %t39, ptr %l56
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l7, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t40, i32 %t41, i64 %t42)
  store i32 %t46, ptr %l60
  br label %bb14
bb14:
  store { i64, [15 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [15 x i64] }, ptr %t47, i32 0, i32 0
  store i64 1, ptr %t48
  %t49 = load %"compiler/mir:Lvalue", ptr %l56
  %t50 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t49, 0
  %t51 = load i32, ptr %l60, !tbaa !23
  %t52 = insertvalue { %"compiler/mir:Lvalue", i32 } %t50, i32 %t51, 1
  %t53 = getelementptr { i64, [15 x i64] }, ptr %t47, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t52, ptr %t53
  %t54 = load { i64, [15 x i64] }, ptr %t47
  %t55 = load %"compiler/source:Span", ptr %l4
  %t56 = load ptr, ptr %l47, !tbaa !29
  %t57 = load i32, ptr %l51, !tbaa !23
  %t60 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t56, i32 %t57, { i64, [15 x i64] } %t54, %"compiler/source:Span" %t55)
  store { i64, [4 x i64] } %t60, ptr %l63
  br label %bb15
bb15:
  %t61 = load { i64, [4 x i64] }, ptr %l63
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l2, !tbaa !23
  %t65 = mul i64 1, 40
  %t66 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 1, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t71, i64 0
  store { i64, [4 x i64] } %t61, ptr %t72
  %t73 = load { i64, [1 x i64] }, ptr %l3
  %t74 = mul i64 1, 16
  %t75 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 1, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l70, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr { i64, [1 x i64] }, ptr %t80, i64 0
  store { i64, [1 x i64] } %t73, ptr %t81
  %t82 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t83 = load %"compiler/source:Span", ptr %l4
  %t87 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t91 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %s2, ptr %s2, ptr %t62, i32 6, i32 %t63, { i64, ptr } %t87, { i64, ptr } %t88, i32 %t82, %"compiler/source:Span" %t83)
  store { i64, [4 x i64] } %t91, ptr %l73
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/lower:lowering", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eindex(ptr %v0, ptr %t95)
  br label %bb18
bb18:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/lower:lowering", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/lower:Lowerer", ptr %t100, i32 0, i32 16
  store ptr %t102, ptr %l79, !tbaa !29
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t104 = load i32, ptr %l2, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l82
  br label %bb19
bb19:
  %t108 = load ptr, ptr %l79, !tbaa !29
  %t109 = load i32, ptr %l82, !tbaa !23
  %t110 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t108, i32 %t109)
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l84
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb21, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l83
  br label %bb20
bb20:
  %t115 = load i64, ptr %l83, !tbaa !24
  store i64 %t115, ptr %l76, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l76, !tbaa !24
  br label %bb23
bb23:
  %t116 = load i64, ptr %l76, !tbaa !24
  store i64 %t116, ptr %l9, !tbaa !24
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = icmp sge i64 %t117, 0
  br i1 %t119, label %bb24, label %bb25
bb24:
  %t121 = load ptr, ptr %l7, !tbaa !29
  store ptr %t121, ptr %l88, !tbaa !29
  %t122 = load ptr, ptr %l7, !tbaa !29
  %t123 = load i32, ptr %l2, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l91
  br label %bb26
bb25:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb28
bb26:
  %t127 = load ptr, ptr %l88, !tbaa !29
  %t128 = load i32, ptr %l91, !tbaa !23
  %t129 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t127, i32 %t128)
  store i1 %t129, ptr %l92
  br label %bb27
bb27:
  %t130 = load i1, ptr %l92, !tbaa !21
  store i1 %t130, ptr %l87, !tbaa !21
  br label %bb28
bb28:
  %t131 = load i1, ptr %l87, !tbaa !21
  br i1 %t131, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s3
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/lower:lowering", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lower:lowering", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Body", ptr %t139, i32 0, i32 3
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = trunc i64 %t143 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [2 x i64] }, ptr %t147, i32 0, i32 0
  store i64 0, ptr %t148
  %t150 = insertvalue { i32 } undef, i32 %t145, 0
  %t151 = getelementptr { i64, [2 x i64] }, ptr %t147, i32 0, i32 1
  store { i32 } %t150, ptr %t151
  %t152 = load { i64, [2 x i64] }, ptr %t147
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %t135, i64 %t142, { i64, [2 x i64] } %t152)
  br label %bb31
bb30:
  br label %bb76
bb31:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l9, !tbaa !24
  %t159 = trunc i64 %t157 to i32
  %t163 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %t156, i32 %t159)
  store { { i64, [7 x i64] }, i32 } %t163, ptr %l106
  br label %bb32
bb32:
  %t164 = load { { i64, [7 x i64] }, i32 }, ptr %l106
  store { { i64, [7 x i64] }, i32 } %t164, ptr %l10
  %t165 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l10, i32 0, i32 0
  %t166 = load { i64, [7 x i64] }, ptr %t165
  store { i64, [7 x i64] } %t166, ptr %l11
  %t168 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l10, i32 0, i32 1
  %t169 = load i32, ptr %t168, !tbaa !23
  store i32 %t169, ptr %l12, !tbaa !23
  %t171 = load ptr, ptr %l7, !tbaa !29
  store ptr %t171, ptr %l109, !tbaa !29
  %t172 = load ptr, ptr %l7, !tbaa !29
  %t173 = load i32, ptr %l12, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l112
  br label %bb33
bb33:
  %t177 = load ptr, ptr %l109, !tbaa !29
  %t178 = load i32, ptr %l112, !tbaa !23
  %t179 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t177, i32 %t178)
  store { i64, ptr } %t179, ptr %l113
  br label %bb34
bb34:
  %t180 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t180, ptr %l114, !tbaa !27
  %t181 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i32, ptr %t182, i64 0
  %t184 = load i32, ptr %t183, !tbaa !33
  store i32 %t184, ptr %l13, !tbaa !23
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l116, !tbaa !29
  %t187 = load i32, ptr %l13, !tbaa !23
  store i32 %t187, ptr %l117, !tbaa !23
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l118, !tbaa !29
  %t189 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t189, ptr %l119
  %t191 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s3, ptr %l119)
  store %"compiler/lower:pl" %t191, ptr %l121
  br label %bb35
bb35:
  %t192 = load ptr, ptr %l118, !tbaa !29
  %t193 = load %"compiler/lower:pl", ptr %l121
  %t194 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s3, ptr %t192, %"compiler/lower:pl" %t193)
  store %"compiler/mir:Lvalue" %t194, ptr %l122
  br label %bb36
bb36:
  %t195 = load i32, ptr %l13, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [15 x i64] }, ptr %t196, i32 0, i32 0
  store i64 1, ptr %t197
  %t198 = load %"compiler/mir:Lvalue", ptr %l122
  %t199 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t198, 0
  %t201 = insertvalue { %"compiler/mir:Lvalue", i32 } %t199, i32 %t195, 1
  %t202 = getelementptr { i64, [15 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t201, ptr %t202
  %t203 = load { i64, [15 x i64] }, ptr %t196
  %t204 = load %"compiler/source:Span", ptr %l4
  %t205 = load ptr, ptr %l116, !tbaa !29
  %t206 = load i32, ptr %l117, !tbaa !23
  %t209 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t205, i32 %t206, { i64, [15 x i64] } %t203, %"compiler/source:Span" %t204)
  store { i64, [4 x i64] } %t209, ptr %l126
  br label %bb37
bb37:
  %t210 = load { i64, [4 x i64] }, ptr %l126
  store { i64, [4 x i64] } %t210, ptr %l14
  %t211 = load ptr, ptr %l7, !tbaa !29
  %t212 = load i32, ptr %l12, !tbaa !23
  %t215 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s3, ptr %t211, i32 %t212)
  store { i64, ptr } %t215, ptr %l129
  br label %bb38
bb38:
  %t216 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t216, ptr %l15, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t217, 0
  store i64 %t219, ptr %l131, !tbaa !24
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %v2, ptr %l6)
  store i64 %t221, ptr %l133
  br label %bb39
bb39:
  %t222 = load i64, ptr %l133, !tbaa !24
  %t223 = icmp sgt i64 %t222, 0
  br i1 %t223, label %bb40, label %bb41
bb40:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/lower:lowering", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t229 = load i64, ptr %l9, !tbaa !24
  %t231 = trunc i64 %t229 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t233
  %t234 = getelementptr { i64, [2 x i64] }, ptr %t233, i32 0, i32 0
  store i64 0, ptr %t234
  %t236 = insertvalue { i32 } undef, i32 %t231, 0
  %t237 = getelementptr { i64, [2 x i64] }, ptr %t233, i32 0, i32 1
  store { i32 } %t236, ptr %t237
  %t238 = load { i64, [2 x i64] }, ptr %t233
  %t241 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %t228, { i64, [2 x i64] } %t238)
  store i64 %t241, ptr %l142
  br label %bb42
bb41:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb43
bb42:
  %t242 = load i64, ptr %l142, !tbaa !24
  store i64 %t242, ptr %l135, !tbaa !24
  br label %bb43
bb43:
  %t243 = load i64, ptr %l131, !tbaa !24
  %t244 = load i64, ptr %l135, !tbaa !24
  %t245 = add i64 %t243, %t244
  store i64 %t245, ptr %l143, !tbaa !24
  %t246 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t246, ptr %l144
  %t247 = load i64, ptr %l143, !tbaa !24
  %t248 = icmp sge i64 %t247, 0
  br i1 %t248, label %bb44, label %bb45
bb44:
  %t250 = load i64, ptr %l143, !tbaa !24
  %t251 = icmp sle i64 %t250, 576460752303423487
  br i1 %t251, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_837c5cf490284b9e_5e516fa0cda59852)
  unreachable
bb46:
  %t253 = load i64, ptr %l143, !tbaa !24
  %t254 = mul i64 %t253, 16
  %t255 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t254)
  %t256 = load { i64, [1 x i64] }, ptr %l144
  store i64 0, ptr %t257
  br label %fill.258
fill.258:
  %t261 = load i64, ptr %t257
  %t262 = icmp slt i64 %t261, %t253
  br i1 %t262, label %fillb.259, label %filld.260
fillb.259:
  %t263 = getelementptr { i64, [1 x i64] }, ptr %t255, i64 %t261
  store { i64, [1 x i64] } %t256, ptr %t263
  %t264 = add i64 %t261, 1
  store i64 %t264, ptr %t257
  br label %fill.258
filld.260:
  %t265 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t255, 1
  store { i64, ptr } %t266, ptr %l16, !tbaa !27
  %t269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %v2, ptr %l6)
  store i64 %t269, ptr %l149
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_837c5cf490284b9e_5e516fa0cda59852)
  unreachable
bb48:
  %t270 = load i64, ptr %l149, !tbaa !24
  %t271 = icmp sgt i64 %t270, 0
  br i1 %t271, label %bb49, label %bb50
bb49:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/lower:lowering", ptr %t273, i32 0, i32 0
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t277 = load i64, ptr %l9, !tbaa !24
  %t279 = trunc i64 %t277 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t281
  %t282 = getelementptr { i64, [2 x i64] }, ptr %t281, i32 0, i32 0
  store i64 0, ptr %t282
  %t284 = insertvalue { i32 } undef, i32 %t279, 0
  %t285 = getelementptr { i64, [2 x i64] }, ptr %t281, i32 0, i32 1
  store { i32 } %t284, ptr %t285
  %t286 = load { i64, [2 x i64] }, ptr %t281
  %t289 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eplanOf(ptr %v0, ptr %v0, ptr %t276, { i64, [2 x i64] } %t286)
  store ptr %t289, ptr %l157
  br label %bb51
bb50:
  br label %bb68
bb51:
  %t290 = load ptr, ptr %l157, !tbaa !29
  store ptr %t290, ptr %l17, !tbaa !29
  %t291 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t291, 0
  store i64 %t293, ptr %l18, !tbaa !24
  %t295 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t295, 0
  store i64 %t297, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t299 = load i64, ptr %l19, !tbaa !24
  %t300 = load i64, ptr %l18, !tbaa !24
  %t303 = icmp sgt i64 %t299, %t300
  br i1 %t303, label %bb52, label %bb53
bb52:
  %t305 = load i64, ptr %l20, !tbaa !24
  %t307 = icmp sgt i64 %t305, 0
  br i1 %t307, label %bb54, label %bb55
bb53:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb57
bb54:
  %t309 = load i64, ptr %l19, !tbaa !24
  %t310 = load i64, ptr %l18, !tbaa !24
  %t313 = sub i64 %t309, %t310
  %t314 = load i64, ptr %l20, !tbaa !24
  %t317 = add i64 %t313, %t314
  %t319 = sub i64 %t317, 1
  %t320 = load i64, ptr %l20, !tbaa !24
  %t323 = sdiv i64 %t319, %t320
  store i64 %t323, ptr %l168, !tbaa !24
  br label %bb56
bb55:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb56
bb56:
  %t325 = load i64, ptr %l168, !tbaa !24
  store i64 %t325, ptr %l165, !tbaa !24
  br label %bb57
bb57:
  %t326 = load i64, ptr %l165, !tbaa !24
  store i64 %t326, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb58
bb58:
  %t327 = load i64, ptr %l22, !tbaa !24
  %t328 = load i64, ptr %l21, !tbaa !24
  %t331 = icmp slt i64 %t327, %t328
  %t333 = xor i1 %t331, true
  br i1 %t333, label %bb59, label %bb60
bb59:
  br label %bb67
bb60:
  br label %bb61
bb61:
  %t335 = load i64, ptr %l18, !tbaa !24
  %t336 = load i64, ptr %l22, !tbaa !24
  %t337 = load i64, ptr %l20, !tbaa !24
  %t340 = mul i64 %t336, %t337
  %t343 = add i64 %t335, %t340
  store i64 %t343, ptr %l23, !tbaa !24
  %t345 = load i64, ptr %l23, !tbaa !24
  store i64 %t345, ptr %l186, !tbaa !24
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l187, !tbaa !29
  store ptr %l6, ptr %l188, !tbaa !29
  %t347 = load ptr, ptr %l17, !tbaa !29
  %t349 = getelementptr %"compiler/typed:Plan", ptr %t347, i32 0, i32 15
  %t350 = load i64, ptr %l23, !tbaa !24
  %t351 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t351, 0
  %t356 = sub i64 %t350, %t353
  %t359 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t349, i64 %t356)
  store i64 %t359, ptr %l195
  br label %bb62
bb62:
  %t360 = load ptr, ptr %l17, !tbaa !29
  %t362 = getelementptr %"compiler/typed:Plan", ptr %t360, i32 0, i32 16
  %t363 = load i64, ptr %l23, !tbaa !24
  %t364 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t364, 0
  %t369 = sub i64 %t363, %t366
  %t372 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t362, i64 %t369)
  store i64 %t372, ptr %l202
  br label %bb63
bb63:
  %t373 = load ptr, ptr %l188, !tbaa !29
  %t374 = load i64, ptr %l195, !tbaa !24
  %t375 = load i64, ptr %l202, !tbaa !24
  %t376 = call { i64, [2 x i64] } @compiler_2flower_2edropArgAt(ptr %v2, ptr %t373, i64 %t374, i64 %t375)
  store { i64, [2 x i64] } %t376, ptr %l203
  br label %bb64
bb64:
  %t377 = load ptr, ptr %l187, !tbaa !29
  %t378 = load { i64, [2 x i64] }, ptr %l203
  %t379 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederivedRef(ptr %v0, ptr %t377, { i64, [2 x i64] } %t378)
  store { i64, [1 x i64] } %t379, ptr %l204
  br label %bb65
bb65:
  %t380 = load { i64, [1 x i64] }, ptr %l204
  %t381 = load i64, ptr %l186, !tbaa !24
  %t382 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr { i64, [1 x i64] }, ptr %t383, i64 %t381
  store { i64, [1 x i64] } %t380, ptr %t384
  br label %bb66
bb66:
  %t385 = load i64, ptr %l22, !tbaa !24
  %t387 = add i64 %t385, 1
  store i64 %t387, ptr %l22, !tbaa !24
  br label %bb58
bb67:
  br label %bb68
bb68:
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = getelementptr %"compiler/lower:lowering", ptr %t389, i32 0, i32 3
  %t393 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t391)
  store i32 %t393, ptr %l209
  br label %bb69
bb69:
  %t394 = load i32, ptr %l209, !tbaa !23
  store i32 %t394, ptr %l24, !tbaa !23
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/lower:lowering", ptr %t395, i32 0, i32 3
  store ptr %t397, ptr %l211, !tbaa !29
  %t398 = load { i64, [7 x i64] }, ptr %l11
  store { i64, [7 x i64] } %t398, ptr %l212
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/lower:lowering", ptr %t399, i32 0, i32 3
  %t402 = load { i64, [4 x i64] }, ptr %l14
  %t403 = mul i64 1, 40
  %t404 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t403)
  %t405 = insertvalue { i64, ptr } undef, i64 1, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  store { i64, ptr } %t406, ptr %l216, !tbaa !27
  %t408 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = getelementptr { i64, [4 x i64] }, ptr %t409, i64 0
  store { i64, [4 x i64] } %t402, ptr %t410
  %t412 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t413 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s3, ptr %t401, { i64, ptr } %t412)
  store %"compiler/mir:Range" %t413, ptr %l217
  br label %bb70
bb70:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/lower:lowering", ptr %t414, i32 0, i32 3
  %t417 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t420 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s3, ptr %t416, { i64, ptr } %t417)
  store %"compiler/mir:Range" %t420, ptr %l221
  br label %bb71
bb71:
  %t421 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  %t422 = load i32, ptr %l24, !tbaa !23
  %t423 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t424 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t425 = load { i64, [7 x i64] }, ptr %l212
  %t426 = load %"compiler/mir:Range", ptr %l217
  %t427 = load %"compiler/mir:Range", ptr %l221
  %t432 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s3, { i64, [7 x i64] } %t425, %"compiler/mir:Range" %t426, %"compiler/mir:Range" %t427, %"compiler/mir:Lvalue" %t421, i1 false, i32 %t422, i32 %t423, i32 %t424)
  store %"compiler/mir:Call" %t432, ptr %l226
  br label %bb72
bb72:
  %t433 = load ptr, ptr %l211, !tbaa !29
  %t434 = load %"compiler/mir:Call", ptr %l226
  %t435 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t433, %"compiler/mir:Call" %t434)
  store i32 %t435, ptr %l227
  br label %bb73
bb73:
  %t436 = load i32, ptr %l227, !tbaa !23
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load %"compiler/source:Span", ptr %l4
  store { i64, [8 x i64] } zeroinitializer, ptr %t440
  %t441 = getelementptr { i64, [8 x i64] }, ptr %t440, i32 0, i32 0
  store i64 4, ptr %t441
  %t443 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t438, 0
  %t445 = insertvalue { %"compiler/source:Span", i32 } %t443, i32 %t436, 1
  %t446 = getelementptr { i64, [8 x i64] }, ptr %t440, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t445, ptr %t446
  %t447 = load { i64, [8 x i64] }, ptr %t440
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t437, { i64, [8 x i64] } %t447)
  br label %bb74
bb74:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t450, i32 %t451)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s3)
  br label %bb76
bb76:
  %t454 = load ptr, ptr %l7, !tbaa !29
  %t455 = load i32, ptr %l2, !tbaa !23
  %t458 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t454, i32 %t455)
  store i32 %t458, ptr %l236
  br label %bb77
bb77:
  %t459 = load i32, ptr %l236, !tbaa !23
  store i32 %t459, ptr %l26, !tbaa !23
  %t460 = load ptr, ptr %l7, !tbaa !29
  %t461 = load i32, ptr %l2, !tbaa !23
  %t464 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t460, i32 %t461)
  store i1 %t464, ptr %l239
  br label %bb78
bb78:
  %t465 = load i1, ptr %l239, !tbaa !21
  br i1 %t465, label %bb79, label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s8
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load i32, ptr %l2, !tbaa !23
  %t470 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %s8, ptr %t466, i32 %t467)
  store { i64, ptr } %t470, ptr %l242
  br label %bb81
bb80:
  %t471 = load ptr, ptr %l7, !tbaa !29
  %t472 = load i32, ptr %l2, !tbaa !23
  %t475 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t471, i32 %t472)
  store i1 %t475, ptr %l271
  br label %bb96
bb81:
  %t476 = load { i64, ptr }, ptr %l242, !tbaa !27
  store { i64, ptr } %t476, ptr %l27, !tbaa !27
  %t477 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t477, 0
  %t481 = sub i64 %t479, 1
  store i64 %t481, ptr %l28, !tbaa !24
  br label %bb82
bb82:
  %t483 = load i64, ptr %l28, !tbaa !24
  %t485 = icmp sge i64 %t483, 0
  %t487 = xor i1 %t485, true
  br i1 %t487, label %bb83, label %bb84
bb83:
  br label %bb95
bb84:
  br label %bb85
bb85:
  %t489 = load ptr, ptr %l7, !tbaa !29
  %t490 = load i32, ptr %l2, !tbaa !23
  %t491 = load i64, ptr %l28, !tbaa !24
  %t493 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr i32, ptr %t494, i64 %t491
  %t496 = load i32, ptr %t495, !tbaa !33
  %t500 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %t489, i32 %t490, i32 %t496)
  store i1 %t500, ptr %l253
  br label %bb86
bb86:
  %t501 = load i1, ptr %l253, !tbaa !21
  br i1 %t501, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s11
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l254, !tbaa !29
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l255, !tbaa !29
  %t504 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t504, ptr %l256
  %t506 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s11, ptr %l256)
  store %"compiler/lower:pl" %t506, ptr %l258
  br label %bb89
bb88:
  br label %bb93
bb89:
  %t507 = load i64, ptr %l28, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t508
  %t509 = getelementptr { i64, [1 x i64] }, ptr %t508, i32 0, i32 0
  store i64 0, ptr %t509
  %t511 = insertvalue { i64 } undef, i64 %t507, 0
  %t512 = getelementptr { i64, [1 x i64] }, ptr %t508, i32 0, i32 1
  store { i64 } %t511, ptr %t512
  %t513 = load { i64, [1 x i64] }, ptr %t508
  %t514 = load ptr, ptr %l255, !tbaa !29
  %t515 = load %"compiler/lower:pl", ptr %l258
  %t517 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s11, ptr %s11, ptr %t514, %"compiler/lower:pl" %t515, { i64, [1 x i64] } %t513)
  store %"compiler/lower:pl" %t517, ptr %l261
  br label %bb90
bb90:
  %t518 = load i64, ptr %l28, !tbaa !24
  %t520 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t521 = load ptr, ptr %t520, !tbaa !27
  %t522 = getelementptr i32, ptr %t521, i64 %t518
  %t523 = load i32, ptr %t522, !tbaa !33
  store i32 %t523, ptr %l263, !tbaa !23
  %t524 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t524, ptr %l264
  %t525 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t525, ptr %l265
  %t526 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t526, ptr %l266
  br label %bb91
bb91:
  %t527 = load ptr, ptr %l254, !tbaa !29
  %t528 = load %"compiler/lower:pl", ptr %l261
  %t529 = load i32, ptr %l263, !tbaa !23
  %t530 = load { i64, [1 x i64] }, ptr %l264
  %t531 = load %"compiler/source:Span", ptr %l265
  %t532 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l266
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %s11, ptr %s11, ptr %t527, %"compiler/lower:pl" %t528, i32 %t529, { i64, [1 x i64] } %t530, %"compiler/source:Span" %t531, i1 false, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t532)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s11)
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t533 = load i64, ptr %l28, !tbaa !24
  %t535 = sub i64 %t533, 1
  store i64 %t535, ptr %l28, !tbaa !24
  br label %bb82
bb95:
  call void @__olang_scope_close(ptr %s8)
  br label %bb139
bb96:
  %t537 = load i1, ptr %l271, !tbaa !21
  br i1 %t537, label %bb97, label %bb98
bb97:
  store %olang.scope zeroinitializer, ptr %s14
  %t538 = load ptr, ptr %l0, !tbaa !29
  store ptr %t538, ptr %l272, !tbaa !29
  %t539 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t539, ptr %l273, !tbaa !23
  %t540 = load ptr, ptr %l0, !tbaa !29
  store ptr %t540, ptr %l274, !tbaa !29
  %t541 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t541, ptr %l275
  %t543 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s14, ptr %l275)
  store %"compiler/lower:pl" %t543, ptr %l277
  br label %bb99
bb98:
  %t544 = load ptr, ptr %l7, !tbaa !29
  %t545 = load i32, ptr %l26, !tbaa !23
  %t548 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t544, i32 %t545)
  store i32 %t548, ptr %l298
  br label %bb105
bb99:
  %t549 = load ptr, ptr %l274, !tbaa !29
  %t550 = load %"compiler/lower:pl", ptr %l277
  %t551 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s14, ptr %t549, %"compiler/lower:pl" %t550)
  store %"compiler/mir:Lvalue" %t551, ptr %l278
  br label %bb100
bb100:
  store { i64, [15 x i64] } zeroinitializer, ptr %t552
  %t553 = getelementptr { i64, [15 x i64] }, ptr %t552, i32 0, i32 0
  store i64 5, ptr %t553
  %t554 = load %"compiler/mir:Lvalue", ptr %l278
  %t555 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t554, 0
  %t556 = getelementptr { i64, [15 x i64] }, ptr %t552, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t555, ptr %t556
  %t557 = load { i64, [15 x i64] }, ptr %t552
  %t558 = load %"compiler/source:Span", ptr %l4
  %t559 = load ptr, ptr %l272, !tbaa !29
  %t560 = load i32, ptr %l273, !tbaa !23
  %t563 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t559, i32 %t560, { i64, [15 x i64] } %t557, %"compiler/source:Span" %t558)
  store { i64, [4 x i64] } %t563, ptr %l281
  br label %bb101
bb101:
  %t564 = load { i64, [4 x i64] }, ptr %l281
  store { i64, [4 x i64] } %t564, ptr %l29
  %t565 = load ptr, ptr %l0, !tbaa !29
  store ptr %t565, ptr %l282, !tbaa !29
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load i32, ptr %l2, !tbaa !23
  %t570 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %s14, ptr %t566, i32 %t567)
  store { i64, ptr } %t570, ptr %l285
  br label %bb102
bb102:
  %t571 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 0
  %t573 = extractvalue { i64, ptr } %t571, 1
  %t574 = mul i64 %t572, 4
  %t575 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t574)
  call void @llvm.memcpy.p0.p0.i64(ptr %t575, ptr %t573, i64 %t574, i1 false)
  %t576 = insertvalue { i64, ptr } undef, i64 %t572, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t575, 1
  store { i64, ptr } %t577, ptr %l286, !tbaa !27
  %t578 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t578, ptr %l287
  %t579 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t579, ptr %l288
  %t580 = load ptr, ptr %l0, !tbaa !29
  store ptr %t580, ptr %l289, !tbaa !29
  %t581 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t581, ptr %l290
  %t583 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l290)
  store %"compiler/lower:pl" %t583, ptr %l292
  br label %bb103
bb103:
  %t584 = load { i64, [1 x i64] }, ptr %l3
  %t585 = load %"compiler/source:Span", ptr %l4
  %t586 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr null, i32 1
  %t587 = ptrtoint ptr %t586 to i64
  %t589 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t588, i32 0, i32 0
  %t590 = load ptr, ptr %l289, !tbaa !29
  store ptr %t590, ptr %t589, !tbaa !28
  %t591 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t588, i32 0, i32 1
  %t592 = load %"compiler/lower:pl", ptr %l292
  store %"compiler/lower:pl" %t592, ptr %t591, !tbaa !28
  %t593 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t588, i32 0, i32 2
  store { i64, [1 x i64] } %t584, ptr %t593, !tbaa !28
  %t595 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t588, i32 0, i32 3
  store %"compiler/source:Span" %t585, ptr %t595, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t597 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t588, i32 0, i32 4
  store ptr %v0, ptr %t597, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t598 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %t588, i32 0, i32 5
  store ptr %v1, ptr %t598, !tbaa !28
  %t599 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_1, 0
  %t600 = insertvalue { ptr, ptr } %t599, ptr %t588, 1
  %t601 = load ptr, ptr %l282, !tbaa !29
  %t602 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t603 = load { i64, [4 x i64] }, ptr %l287
  %t604 = load %"compiler/source:Span", ptr %l288
  %t606 = extractvalue { ptr, ptr } %t600, 0
  %t607 = extractvalue { ptr, ptr } %t600, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %s14, ptr %s14, ptr %t601, { i64, ptr } %t602, { i64, [4 x i64] } %t603, %"compiler/source:Span" %t604, ptr %t606, ptr %t607)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s14)
  br label %bb138
bb105:
  %t608 = load i32, ptr %l298, !range !{i32 0, i32 33}
  %t610 = trunc i64 19 to i32
  %t611 = icmp eq i32 %t608, %t610
  br i1 %t611, label %bb106, label %bb107
bb106:
  %t613 = load ptr, ptr %l7, !tbaa !29
  %t614 = load i32, ptr %l26, !tbaa !23
  %t617 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t613, i32 %t614)
  store i32 %t617, ptr %l304
  br label %bb108
bb107:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb109
bb108:
  %t618 = load i32, ptr %l304, !tbaa !23
  %t619 = icmp ne i32 %t618, 0
  store i1 %t619, ptr %l301, !tbaa !21
  br label %bb109
bb109:
  %t621 = load i1, ptr %l301, !tbaa !21
  br i1 %t621, label %bb110, label %bb111
bb110:
  %t622 = load ptr, ptr %l7, !tbaa !29
  %t623 = load i32, ptr %l26, !tbaa !23
  %t626 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t622, i32 %t623)
  store i32 %t626, ptr %l308
  br label %bb112
bb111:
  %t627 = load ptr, ptr %l7, !tbaa !29
  %t628 = load i32, ptr %l26, !tbaa !23
  %t631 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t627, i32 %t628)
  store i32 %t631, ptr %l341
  br label %bb127
bb112:
  %t632 = load i32, ptr %l308, !tbaa !23
  store i32 %t632, ptr %l30, !tbaa !23
  %t633 = load ptr, ptr %l7, !tbaa !29
  store ptr %t633, ptr %l309, !tbaa !29
  %t634 = load ptr, ptr %l7, !tbaa !29
  %t635 = load i32, ptr %l26, !tbaa !23
  %t638 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t634, i32 %t635)
  store i32 %t638, ptr %l312
  br label %bb113
bb113:
  %t639 = load ptr, ptr %l309, !tbaa !29
  %t640 = load i32, ptr %l312, !tbaa !23
  %t641 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t639, i32 %t640)
  store i64 %t641, ptr %l313
  br label %bb114
bb114:
  %t642 = load i64, ptr %l313, !tbaa !24
  %t645 = sub i64 %t642, 1
  store i64 %t645, ptr %l32, !tbaa !24
  br label %bb115
bb115:
  store %olang.scope zeroinitializer, ptr %s18
  %t647 = load i64, ptr %l32, !tbaa !24
  %t649 = icmp sge i64 %t647, 0
  %t651 = xor i1 %t649, true
  br i1 %t651, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s18)
  br label %bb126
bb117:
  br label %bb118
bb118:
  %t653 = load ptr, ptr %l0, !tbaa !29
  store ptr %t653, ptr %l319, !tbaa !29
  %t654 = load ptr, ptr %l0, !tbaa !29
  store ptr %t654, ptr %l320, !tbaa !29
  %t655 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t655, ptr %l321
  %t657 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s18, ptr %l321)
  store %"compiler/lower:pl" %t657, ptr %l323
  br label %bb119
bb119:
  %t658 = load ptr, ptr %l0, !tbaa !29
  store ptr %t658, ptr %l324, !tbaa !29
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t660 = load i64, ptr %l32, !tbaa !24
  %t663 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t659, i64 %t660)
  store { i64, [4 x i64] } %t663, ptr %l327
  br label %bb120
bb120:
  %t664 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t665 = load %"compiler/source:Span", ptr %l4
  %t666 = load ptr, ptr %l324, !tbaa !29
  %t667 = load { i64, [4 x i64] }, ptr %l327
  %t670 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t666, { i64, [4 x i64] } %t667, i32 %t664, %"compiler/source:Span" %t665)
  store i32 %t670, ptr %l330
  br label %bb121
bb121:
  store { i64, [1 x i64] } zeroinitializer, ptr %t671
  %t672 = getelementptr { i64, [1 x i64] }, ptr %t671, i32 0, i32 0
  store i64 1, ptr %t672
  %t673 = load i32, ptr %l330, !tbaa !23
  %t674 = insertvalue { i32 } undef, i32 %t673, 0
  %t675 = getelementptr { i64, [1 x i64] }, ptr %t671, i32 0, i32 1
  store { i32 } %t674, ptr %t675
  %t676 = load { i64, [1 x i64] }, ptr %t671
  %t677 = load ptr, ptr %l320, !tbaa !29
  %t678 = load %"compiler/lower:pl", ptr %l323
  %t680 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s18, ptr %s18, ptr %t677, %"compiler/lower:pl" %t678, { i64, [1 x i64] } %t676)
  store %"compiler/lower:pl" %t680, ptr %l332
  br label %bb122
bb122:
  %t681 = load i32, ptr %l30, !tbaa !23
  store i32 %t681, ptr %l333, !tbaa !23
  %t682 = load { i64, [1 x i64] }, ptr %l3
  store { i64, [1 x i64] } %t682, ptr %l334
  %t683 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t683, ptr %l335
  %t684 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s18, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t684, ptr %l336
  br label %bb123
bb123:
  %t685 = load ptr, ptr %l319, !tbaa !29
  %t686 = load %"compiler/lower:pl", ptr %l332
  %t687 = load i32, ptr %l333, !tbaa !23
  %t688 = load { i64, [1 x i64] }, ptr %l334
  %t689 = load %"compiler/source:Span", ptr %l335
  %t690 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l336
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %s18, ptr %s18, ptr %t685, %"compiler/lower:pl" %t686, i32 %t687, { i64, [1 x i64] } %t688, %"compiler/source:Span" %t689, i1 false, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t690)
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s18)
  br label %bb125
bb125:
  %t691 = load i64, ptr %l32, !tbaa !24
  %t693 = sub i64 %t691, 1
  store i64 %t693, ptr %l32, !tbaa !24
  br label %bb115
bb126:
  br label %bb137
bb127:
  %t695 = load i32, ptr %l341, !range !{i32 0, i32 33}
  %t697 = trunc i64 19 to i32
  %t698 = icmp eq i32 %t695, %t697
  br i1 %t698, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s21
  %t700 = load ptr, ptr %l7, !tbaa !29
  %t701 = load i32, ptr %l26, !tbaa !23
  %t704 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t700, i32 %t701)
  store i32 %t704, ptr %l346
  br label %bb130
bb129:
  br label %bb136
bb130:
  %t705 = load i32, ptr %l346, !tbaa !23
  store i32 %t705, ptr %l33, !tbaa !23
  %t706 = load ptr, ptr %l0, !tbaa !29
  store ptr %t706, ptr %l347, !tbaa !29
  store i32 22, ptr %l348
  %t707 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t707, ptr %l349, !tbaa !23
  %t708 = load ptr, ptr %l0, !tbaa !29
  store ptr %t708, ptr %l350, !tbaa !29
  %t709 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t709, ptr %l351
  %t711 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s21, ptr %l351)
  store %"compiler/lower:pl" %t711, ptr %l353
  br label %bb131
bb131:
  %t712 = load ptr, ptr %l350, !tbaa !29
  %t713 = load %"compiler/lower:pl", ptr %l353
  %t714 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s21, ptr %t712, %"compiler/lower:pl" %t713)
  store %"compiler/mir:Lvalue" %t714, ptr %l354
  br label %bb132
bb132:
  store { i64, [4 x i64] } zeroinitializer, ptr %t715
  %t716 = getelementptr { i64, [4 x i64] }, ptr %t715, i32 0, i32 0
  store i64 1, ptr %t716
  %t717 = load %"compiler/mir:Lvalue", ptr %l354
  %t718 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t717, 0
  %t719 = getelementptr { i64, [4 x i64] }, ptr %t715, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t718, ptr %t719
  %t720 = load { i64, [4 x i64] }, ptr %t715
  %t721 = mul i64 1, 40
  %t722 = call ptr @__olang_scope_alloc_zeroed(ptr %s21, i64 %t721)
  %t723 = insertvalue { i64, ptr } undef, i64 1, 0
  %t724 = insertvalue { i64, ptr } %t723, ptr %t722, 1
  store { i64, ptr } %t724, ptr %l356, !tbaa !27
  %t726 = getelementptr { i64, ptr }, ptr %l356, i32 0, i32 1
  %t727 = load ptr, ptr %t726, !tbaa !27
  %t728 = getelementptr { i64, [4 x i64] }, ptr %t727, i64 0
  store { i64, [4 x i64] } %t720, ptr %t728
  %t729 = load %"compiler/source:Span", ptr %l4
  %t730 = load ptr, ptr %l347, !tbaa !29
  %t731 = load i32, ptr %l348, !range !{i32 0, i32 52}
  %t732 = load i32, ptr %l349, !tbaa !23
  %t733 = load { i64, ptr }, ptr %l356, !tbaa !27
  %t735 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s21, ptr %t730, i32 %t731, i32 %t732, { i64, ptr } %t733, %"compiler/source:Span" %t729)
  store { i64, [4 x i64] } %t735, ptr %l358
  br label %bb133
bb133:
  %t736 = load { i64, [4 x i64] }, ptr %l358
  store { i64, [4 x i64] } %t736, ptr %l34
  %t737 = load ptr, ptr %l0, !tbaa !29
  store ptr %t737, ptr %l359, !tbaa !29
  %t738 = load { i64, [4 x i64] }, ptr %l34
  store { i64, [4 x i64] } %t738, ptr %l360
  %t739 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t739, ptr %l361
  %t740 = load ptr, ptr %l0, !tbaa !29
  store ptr %t740, ptr %l362, !tbaa !29
  %t741 = load { i64, [4 x i64] }, ptr %l34
  store { i64, [4 x i64] } %t741, ptr %l363
  %t742 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t742, ptr %l364
  %t743 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t743, ptr %l365
  %t745 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l365)
  store %"compiler/lower:pl" %t745, ptr %l367
  br label %bb134
bb134:
  %t746 = load i32, ptr %l33, !tbaa !23
  %t747 = load { i64, [1 x i64] }, ptr %l3
  %t748 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr null, i32 1
  %t749 = ptrtoint ptr %t748 to i64
  %t750 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t749, i64 8)
  %t751 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 0
  %t752 = load ptr, ptr %l362, !tbaa !29
  store ptr %t752, ptr %t751, !tbaa !28
  %t753 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 1
  %t754 = load { i64, [4 x i64] }, ptr %l363
  store { i64, [4 x i64] } %t754, ptr %t753, !tbaa !28
  %t755 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 2
  %t756 = load %"compiler/source:Span", ptr %l364
  store %"compiler/source:Span" %t756, ptr %t755, !tbaa !28
  %t757 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 3
  %t758 = load %"compiler/lower:pl", ptr %l367
  store %"compiler/lower:pl" %t758, ptr %t757, !tbaa !28
  %t759 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 4
  store i32 %t746, ptr %t759, !tbaa !28
  %t761 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 5
  store { i64, [1 x i64] } %t747, ptr %t761, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t763 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 6
  store ptr %v0, ptr %t763, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t764 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %t750, i32 0, i32 7
  store ptr %v1, ptr %t764, !tbaa !28
  %t765 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_2, 0
  %t766 = insertvalue { ptr, ptr } %t765, ptr %t750, 1
  %t767 = load ptr, ptr @__olang_prog_scope
  %t768 = load ptr, ptr %l359, !tbaa !29
  %t769 = load { i64, [4 x i64] }, ptr %l360
  %t770 = load %"compiler/source:Span", ptr %l361
  %t772 = extractvalue { ptr, ptr } %t766, 0
  %t773 = extractvalue { ptr, ptr } %t766, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %t767, ptr %t768, { i64, [4 x i64] } %t769, %"compiler/source:Span" %t770, ptr %t772, ptr %t773)
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s21)
  br label %bb136
bb136:
  br label %bb137
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eelem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %lp3 = alloca ptr
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca { i64, [4 x i64] }
  %l8 = alloca i64
  %l13 = alloca %"compiler/lower:pl"
  %l15 = alloca %"compiler/lower:pl"
  %l20 = alloca { i64, [4 x i64] }
  %l26 = alloca i32
  %l31 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca %"compiler/lower:pl"
  %l37 = alloca %"compiler/lower:pl"
  %l38 = alloca %"compiler/mir:Lvalue"
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, [4 x i64] }
  %l47 = alloca { i64, [4 x i64] }
  %l63 = alloca ptr
  %l64 = alloca %"compiler/lower:pl"
  %l66 = alloca %"compiler/lower:pl"
  %l69 = alloca %"compiler/lower:pl"
  %l70 = alloca ptr
  %l71 = alloca %"compiler/lower:pl"
  %l76 = alloca i32
  %l78 = alloca %"compiler/lower:pl"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/lower:pl"
  %t60 = alloca { i64, [4 x i64] }, align 8
  %t133 = alloca { i64, [1 x i64] }, align 8
  %t156 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Elem", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t5)
  store %"compiler/lower:pl" %t9, ptr %l13
  br label %bb1
bb1:
  %t11 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l13)
  store %"compiler/lower:pl" %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t12, ptr %lp3
  %t13 = load %"compiler/lower:pl", ptr %l15
  %t14 = load ptr, ptr %lp3
  store %"compiler/lower:pl" %t13, ptr %t14
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Elem", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t23 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t15, ptr %t19)
  store { i64, [4 x i64] } %t23, ptr %l20
  br label %bb3
bb3:
  %t24 = load { i64, [4 x i64] }, ptr %l20
  store { i64, [4 x i64] } %t24, ptr %l4
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 10
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %lp3
  %t31 = load %"compiler/lower:pl", ptr %t30
  store %"compiler/lower:pl" %t31, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Elem", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t36)
  store i32 %t38, ptr %l26
  br label %bb7
bb7:
  %t39 = load i32, ptr %l26, !tbaa !23
  store i32 %t39, ptr %l5, !tbaa !23
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Elem", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 3}
  %t45 = trunc i64 0 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l31, !tbaa !29
  store i32 22, ptr %l32
  %t51 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t51, ptr %l33, !tbaa !23
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l34, !tbaa !29
  %t53 = load ptr, ptr %lp3
  %t54 = load %"compiler/lower:pl", ptr %t53
  store %"compiler/lower:pl" %t54, ptr %l35
  %t56 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l35)
  store %"compiler/lower:pl" %t56, ptr %l37
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load %"compiler/lower:pl", ptr %l37
  %t59 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s2, ptr %t57, %"compiler/lower:pl" %t58)
  store %"compiler/mir:Lvalue" %t59, ptr %l38
  br label %bb11
bb11:
  store { i64, [4 x i64] } zeroinitializer, ptr %t60
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 0
  store i64 1, ptr %t61
  %t62 = load %"compiler/mir:Lvalue", ptr %l38
  %t63 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t62, 0
  %t64 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t63, ptr %t64
  %t65 = load { i64, [4 x i64] }, ptr %t60
  %t66 = mul i64 1, 40
  %t67 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 1, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l40, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t72, i64 0
  store { i64, [4 x i64] } %t65, ptr %t73
  %t74 = load %"compiler/source:Span", ptr %l2
  %t75 = load ptr, ptr %l31, !tbaa !29
  %t76 = load i32, ptr %l32, !range !{i32 0, i32 52}
  %t77 = load i32, ptr %l33, !tbaa !23
  %t78 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t80 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t75, i32 %t76, i32 %t77, { i64, ptr } %t78, %"compiler/source:Span" %t74)
  store { i64, [4 x i64] } %t80, ptr %l42
  br label %bb12
bb12:
  %t81 = load { i64, [4 x i64] }, ptr %l42
  store { i64, [4 x i64] } %t81, ptr %l6
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load { i64, [4 x i64] }, ptr %l4
  %t84 = load i32, ptr %l5, !tbaa !23
  %t85 = load %"compiler/source:Span", ptr %l2
  %t90 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %t82, { i64, [4 x i64] } %t83, i32 %t84, %"compiler/source:Span" %t85)
  store { i64, [4 x i64] } %t90, ptr %l47
  br label %bb13
bb13:
  %t91 = load { i64, [4 x i64] }, ptr %l47
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = load { i64, [4 x i64] }, ptr %l6
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Elem", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %t97, !range !{i32 0, i32 3}
  %t99 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ebounds(ptr %v0, ptr %t92, { i64, [4 x i64] } %t91, { i64, [4 x i64] } %t94, i1 false, i32 %t98, i32 8, %"compiler/source:Span" %t99)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Elem", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %t108, !range !{i32 0, i32 3}
  %t111 = trunc i64 0 to i32
  %t112 = icmp eq i32 %t109, %t111
  br i1 %t112, label %bb16, label %bb17
bb16:
  %t114 = load { i64, [4 x i64] }, ptr %l4
  %t116 = extractvalue { i64, [4 x i64] } %t114, 0
  %t117 = icmp eq i64 %t116, 2
  br i1 %t117, label %bb18, label %bb19
bb17:
  br label %bb32
bb18:
  %t119 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t120 = getelementptr { i32, i64 }, ptr %t119, i32 0, i32 1
  %t121 = load i64, ptr %t120
  store i64 %t121, ptr %l8, !tbaa !24
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t123 = load i64, ptr %l8, !tbaa !24
  %t125 = icmp sge i64 %t123, 0
  br i1 %t125, label %bb21, label %bb22
bb21:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l63, !tbaa !29
  %t128 = load ptr, ptr %lp3
  %t129 = load %"compiler/lower:pl", ptr %t128
  store %"compiler/lower:pl" %t129, ptr %l64
  %t131 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v2, ptr %l64)
  store %"compiler/lower:pl" %t131, ptr %l66
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t132 = load i64, ptr %l8, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [1 x i64] }, ptr %t133, i32 0, i32 0
  store i64 2, ptr %t134
  %t136 = insertvalue { i64 } undef, i64 %t132, 0
  %t137 = getelementptr { i64, [1 x i64] }, ptr %t133, i32 0, i32 1
  store { i64 } %t136, ptr %t137
  %t138 = load { i64, [1 x i64] }, ptr %t133
  %t139 = load ptr, ptr %l63, !tbaa !29
  %t140 = load %"compiler/lower:pl", ptr %l66
  %t142 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v2, ptr %v2, ptr %t139, %"compiler/lower:pl" %t140, { i64, [1 x i64] } %t138)
  store %"compiler/lower:pl" %t142, ptr %l69
  br label %bb24
bb24:
  %t143 = load %"compiler/lower:pl", ptr %l69
  store %"compiler/lower:pl" %t143, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_ee7cb6b84b4996f0_d216e2901020b0e4)
  unreachable
bb31:
  br label %bb32
bb32:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l70, !tbaa !29
  %t145 = load ptr, ptr %lp3
  %t146 = load %"compiler/lower:pl", ptr %t145
  store %"compiler/lower:pl" %t146, ptr %l71
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load { i64, [4 x i64] }, ptr %l4
  %t149 = load i32, ptr %l5, !tbaa !23
  %t150 = load %"compiler/source:Span", ptr %l2
  %t155 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t147, { i64, [4 x i64] } %t148, i32 %t149, %"compiler/source:Span" %t150)
  store i32 %t155, ptr %l76
  br label %bb33
bb33:
  store { i64, [1 x i64] } zeroinitializer, ptr %t156
  %t157 = getelementptr { i64, [1 x i64] }, ptr %t156, i32 0, i32 0
  store i64 1, ptr %t157
  %t158 = load i32, ptr %l76, !tbaa !23
  %t159 = insertvalue { i32 } undef, i32 %t158, 0
  %t160 = getelementptr { i64, [1 x i64] }, ptr %t156, i32 0, i32 1
  store { i32 } %t159, ptr %t160
  %t161 = load { i64, [1 x i64] }, ptr %t156
  %t162 = load ptr, ptr %l70, !tbaa !29
  %t163 = load %"compiler/lower:pl", ptr %l71
  %t165 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v2, ptr %v2, ptr %t162, %"compiler/lower:pl" %t163, { i64, [1 x i64] } %t161)
  store %"compiler/lower:pl" %t165, ptr %l78
  br label %bb34
bb34:
  %t166 = load %"compiler/lower:pl", ptr %l78
  store %"compiler/lower:pl" %t166, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca i32
  %l8 = alloca ptr
  %l13 = alloca %"compiler/mir:Call"
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 10
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load { i64, [8 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [8 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 4
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { %"compiler/source:Span", i32 }, ptr %t11, i32 0, i32 1
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l2, !tbaa !23
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l8, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 3
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 14
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = sext i32 %t20 to i64
  %t25 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t19, i64 %t22)
  store %"compiler/mir:Call" %t25, ptr %l13
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l8, !tbaa !29
  %t27 = load %"compiler/mir:Call", ptr %l13
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdResult(ptr %v0, ptr %t26, %"compiler/mir:Call" %t27)
  br label %bb8
bb8:
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_73d6eb0a01355de0_3ee3de28efd59654)
  unreachable
bb14:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t31, i32 0, i32 9
  %t34 = load i32, ptr %t33, !tbaa !23
  %t35 = load { i64, [8 x i64] }, ptr %l1
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %t30, i32 %t34, { i64, [8 x i64] } %t35)
  br label %bb15
bb15:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/lower:lowering", ptr %t39, i32 0, i32 10
  store i1 true, ptr %t41, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eepilogue(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %t12 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t1, i64 0)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lower:lowering", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Body", ptr %t7, i32 0, i32 4
  %t10 = load %"compiler/source:Span", ptr %t9
  store { i64, [8 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [8 x i64] }, ptr %t12, i32 0, i32 0
  store i64 5, ptr %t13
  %t15 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t10, 0
  %t17 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t15, { i64, [4 x i64] } %a1, 1
  %t18 = getelementptr { i64, [8 x i64] }, ptr %t12, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t17, ptr %t18
  %t19 = load { i64, [8 x i64] }, ptr %t12
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t3, { i64, [8 x i64] } %t19)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrConvert(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca %"compiler/lower:pl"
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca { i64, [4 x i64] }
  %l34 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca i32
  %l40 = alloca { i64, [4 x i64] }
  %l43 = alloca i32
  %l46 = alloca i32
  %l49 = alloca { i64, [4 x i64] }
  %l52 = alloca i1
  %l58 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/mir:Lvalue"
  %l70 = alloca %"compiler/lower:pl"
  %l71 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca %"compiler/lower:pl"
  %l77 = alloca %"compiler/lower:pl"
  %l79 = alloca %"compiler/lower:pl"
  %l80 = alloca %"compiler/mir:Lvalue"
  %l87 = alloca i1
  %l90 = alloca %"compiler/mir:Lvalue"
  %l92 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca { i64, ptr }
  %l107 = alloca i64
  %l110 = alloca i64
  %l129 = alloca { i64, ptr }
  %l132 = alloca i32
  %l137 = alloca i32
  %l145 = alloca i64
  %l148 = alloca i64
  %l167 = alloca { i64, ptr }
  %l170 = alloca i32
  %l175 = alloca i32
  %l178 = alloca i32
  %l179 = alloca ptr
  %l184 = alloca { i64, [4 x i64] }
  %l190 = alloca ptr
  %l191 = alloca ptr
  %l194 = alloca %"compiler/lower:pl"
  %l200 = alloca i64
  %l202 = alloca %"compiler/lower:pl"
  %l203 = alloca %"compiler/mir:Lvalue"
  %l205 = alloca ptr
  %l206 = alloca %"compiler/source:Span"
  %l207 = alloca ptr
  %l208 = alloca ptr
  %l209 = alloca %"compiler/lower:pl"
  %l211 = alloca %"compiler/lower:pl"
  %l217 = alloca i64
  %l219 = alloca %"compiler/lower:pl"
  %l220 = alloca %"compiler/mir:Lvalue"
  %l234 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t35 = alloca { i64, [15 x i64] }, align 8
  %t76 = alloca { i64, [4 x i64] }, align 8
  %t83 = alloca { i64, [15 x i64] }, align 8
  %t89 = alloca { i64, [21 x i64] }, align 8
  %t104 = alloca { i64, [2 x i64] }, align 8
  %t120 = alloca { i64, [1 x i64] }, align 8
  %t133 = alloca { i64, [15 x i64] }, align 8
  %t139 = alloca { i64, [21 x i64] }, align 8
  %t164 = alloca { i64, [4 x i64] }, align 8
  %t359 = alloca { i64, [8 x i64] }, align 8
  %t378 = alloca { i64, [2 x i64] }, align 8
  %t399 = alloca { i64, [1 x i64] }, align 8
  %t412 = alloca { i64, [4 x i64] }, align 8
  %t439 = alloca { i64, [1 x i64] }, align 8
  %t453 = alloca { i64, [15 x i64] }, align 8
  %t459 = alloca { i64, [21 x i64] }, align 8
  %t492 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = load %"compiler/source:Span", ptr %l4
  %t14 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t6, { i64, [4 x i64] } %a1, i32 %t8, %"compiler/source:Span" %t9)
  store i32 %t14, ptr %l34
  br label %bb1
bb1:
  %t15 = load i32, ptr %l34, !tbaa !23
  store i32 %t15, ptr %l6, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l35, !tbaa !29
  %t17 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t17, ptr %l36, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l6, !tbaa !23
  %t20 = load i32, ptr %l2, !tbaa !23
  %t24 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %t18, i32 %t19, i32 %t20)
  store { i64, [4 x i64] } %t24, ptr %l40
  br label %bb2
bb2:
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l43
  br label %bb3
bb3:
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l46
  br label %bb4
bb4:
  store { i64, [15 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [15 x i64] }, ptr %t35, i32 0, i32 0
  store i64 11, ptr %t36
  %t37 = load { i64, [4 x i64] }, ptr %l40
  %t38 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t37, 0
  %t39 = load i32, ptr %l43, !tbaa !23
  %t40 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t38, i32 %t39, 1
  %t41 = load i32, ptr %l46, !tbaa !23
  %t42 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t40, i32 %t41, 2
  %t43 = getelementptr { i64, [15 x i64] }, ptr %t35, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t42, ptr %t43
  %t44 = load { i64, [15 x i64] }, ptr %t35
  %t45 = load %"compiler/source:Span", ptr %l4
  %t46 = load ptr, ptr %l35, !tbaa !29
  %t47 = load i32, ptr %l36, !tbaa !23
  %t50 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t46, i32 %t47, { i64, [15 x i64] } %t44, %"compiler/source:Span" %t45)
  store { i64, [4 x i64] } %t50, ptr %l49
  br label %bb5
bb5:
  %t51 = load { i64, [4 x i64] }, ptr %l49
  store { i64, [4 x i64] } %t51, ptr %l7
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t53 = load i32, ptr %l3, !tbaa !23
  %t56 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t52, i32 %t53)
  store i1 %t56, ptr %l52
  br label %bb6
bb6:
  %t57 = load i1, ptr %l52, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb7, label %bb8
bb7:
  %t60 = load { i64, [4 x i64] }, ptr %l7
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t60, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l3, !tbaa !23
  %t64 = load %"compiler/source:Span", ptr %l4
  %t68 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t62, i32 %t63, %"compiler/source:Span" %t64)
  store i32 %t68, ptr %l58
  br label %bb10
bb10:
  %t69 = load i32, ptr %l58, !tbaa !23
  store i32 %t69, ptr %l8, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l59, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t71, ptr %l60
  %t72 = load i32, ptr %l8, !tbaa !23
  %t74 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t72)
  store %"compiler/mir:Lvalue" %t74, ptr %l62
  br label %bb11
bb11:
  %t75 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t76
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 0
  store i64 2, ptr %t77
  %t79 = insertvalue { i32, i64 } undef, i32 %t75, 0
  %t80 = insertvalue { i32, i64 } %t79, i64 0, 1
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  store { i32, i64 } %t80, ptr %t81
  %t82 = load { i64, [4 x i64] }, ptr %t76
  store { i64, [15 x i64] } zeroinitializer, ptr %t83
  %t84 = getelementptr { i64, [15 x i64] }, ptr %t83, i32 0, i32 0
  store i64 0, ptr %t84
  %t86 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t82, 0
  %t87 = getelementptr { i64, [15 x i64] }, ptr %t83, i32 0, i32 1
  store { { i64, [4 x i64] } } %t86, ptr %t87
  %t88 = load { i64, [15 x i64] }, ptr %t83
  store { i64, [21 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [21 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t91 = load %"compiler/source:Span", ptr %l60
  %t92 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t91, 0
  %t93 = load %"compiler/mir:Lvalue", ptr %l62
  %t94 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t92, %"compiler/mir:Lvalue" %t93, 1
  %t96 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t94, { i64, [15 x i64] } %t88, 2
  %t97 = getelementptr { i64, [21 x i64] }, ptr %t89, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t96, ptr %t97
  %t98 = load { i64, [21 x i64] }, ptr %t89
  %t100 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t98, ptr %t100
  %t101 = load ptr, ptr %l59, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t101, ptr %t100)
  br label %bb12
bb12:
  %t103 = load i32, ptr %l8, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [2 x i64] }, ptr %t104, i32 0, i32 0
  store i64 1, ptr %t105
  %t107 = insertvalue { i32 } undef, i32 %t103, 0
  %t108 = getelementptr { i64, [2 x i64] }, ptr %t104, i32 0, i32 1
  store { i32 } %t107, ptr %t108
  %t109 = load { i64, [2 x i64] }, ptr %t104
  %t111 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t109)
  store %"compiler/lower:pl" %t111, ptr %l70
  br label %bb13
bb13:
  %t112 = load %"compiler/lower:pl", ptr %l70
  store %"compiler/lower:pl" %t112, ptr %l9
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l71, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t114, ptr %l72
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l73, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l74, !tbaa !29
  %t117 = load %"compiler/lower:pl", ptr %l9
  store %"compiler/lower:pl" %t117, ptr %l75
  %t119 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l75)
  store %"compiler/lower:pl" %t119, ptr %l77
  br label %bb14
bb14:
  store { i64, [1 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [1 x i64] }, ptr %t120, i32 0, i32 0
  store i64 0, ptr %t121
  %t122 = insertvalue { i64 } undef, i64 0, 0
  %t123 = getelementptr { i64, [1 x i64] }, ptr %t120, i32 0, i32 1
  store { i64 } %t122, ptr %t123
  %t124 = load { i64, [1 x i64] }, ptr %t120
  %t125 = load ptr, ptr %l74, !tbaa !29
  %t126 = load %"compiler/lower:pl", ptr %l77
  %t128 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s0, ptr %s0, ptr %t125, %"compiler/lower:pl" %t126, { i64, [1 x i64] } %t124)
  store %"compiler/lower:pl" %t128, ptr %l79
  br label %bb15
bb15:
  %t129 = load ptr, ptr %l73, !tbaa !29
  %t130 = load %"compiler/lower:pl", ptr %l79
  %t131 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s0, ptr %t129, %"compiler/lower:pl" %t130)
  store %"compiler/mir:Lvalue" %t131, ptr %l80
  br label %bb16
bb16:
  %t132 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [15 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [15 x i64] }, ptr %t133, i32 0, i32 0
  store i64 0, ptr %t134
  %t136 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t132, 0
  %t137 = getelementptr { i64, [15 x i64] }, ptr %t133, i32 0, i32 1
  store { { i64, [4 x i64] } } %t136, ptr %t137
  %t138 = load { i64, [15 x i64] }, ptr %t133
  store { i64, [21 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [21 x i64] }, ptr %t139, i32 0, i32 0
  store i64 0, ptr %t140
  %t141 = load %"compiler/source:Span", ptr %l72
  %t142 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t141, 0
  %t143 = load %"compiler/mir:Lvalue", ptr %l80
  %t144 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t142, %"compiler/mir:Lvalue" %t143, 1
  %t146 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t144, { i64, [15 x i64] } %t138, 2
  %t147 = getelementptr { i64, [21 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t146, ptr %t147
  %t148 = load { i64, [21 x i64] }, ptr %t139
  %t150 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t148, ptr %t150
  %t151 = load ptr, ptr %l71, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t151, ptr %t150)
  br label %bb17
bb17:
  %t153 = load ptr, ptr %l5, !tbaa !29
  %t154 = load i32, ptr %l2, !tbaa !23
  %t157 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t153, i32 %t154)
  store i1 %t157, ptr %l87
  br label %bb18
bb18:
  %t158 = load i1, ptr %l87, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb19, label %bb20
bb19:
  %t161 = load i32, ptr %l8, !tbaa !23
  %t163 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t161)
  store %"compiler/mir:Lvalue" %t163, ptr %l90
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t164
  %t165 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 0
  store i64 1, ptr %t165
  %t166 = load %"compiler/mir:Lvalue", ptr %l90
  %t167 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t166, 0
  %t168 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t167, ptr %t168
  %t169 = load { i64, [4 x i64] }, ptr %t164
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t169, ptr %rv
  br label %ret
bb22:
  %t171 = load ptr, ptr %l5, !tbaa !29
  store ptr %t171, ptr %l92, !tbaa !29
  %t172 = load ptr, ptr %l5, !tbaa !29
  %t173 = load i32, ptr %l2, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l95
  br label %bb23
bb23:
  %t177 = load ptr, ptr %l92, !tbaa !29
  %t178 = load i32, ptr %l95, !tbaa !23
  %t179 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t177, i32 %t178)
  store { i64, ptr } %t179, ptr %l96
  br label %bb24
bb24:
  %t180 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t180, ptr %l10, !tbaa !27
  %t181 = load ptr, ptr %l5, !tbaa !29
  store ptr %t181, ptr %l97, !tbaa !29
  %t182 = load ptr, ptr %l5, !tbaa !29
  %t183 = load i32, ptr %l3, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l100
  br label %bb25
bb25:
  %t187 = load ptr, ptr %l97, !tbaa !29
  %t188 = load i32, ptr %l100, !tbaa !23
  %t189 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t187, i32 %t188)
  store { i64, ptr } %t189, ptr %l101
  br label %bb26
bb26:
  %t190 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t190, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t191 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  store i64 %t193, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t195 = load i64, ptr %l13, !tbaa !24
  %t196 = load i64, ptr %l12, !tbaa !24
  %t199 = icmp sgt i64 %t195, %t196
  br i1 %t199, label %bb27, label %bb28
bb27:
  %t201 = load i64, ptr %l14, !tbaa !24
  %t203 = icmp sgt i64 %t201, 0
  br i1 %t203, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb32
bb29:
  %t205 = load i64, ptr %l13, !tbaa !24
  %t206 = load i64, ptr %l12, !tbaa !24
  %t209 = sub i64 %t205, %t206
  %t210 = load i64, ptr %l14, !tbaa !24
  %t213 = add i64 %t209, %t210
  %t215 = sub i64 %t213, 1
  %t216 = load i64, ptr %l14, !tbaa !24
  %t219 = sdiv i64 %t215, %t216
  store i64 %t219, ptr %l110, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb31
bb31:
  %t221 = load i64, ptr %l110, !tbaa !24
  store i64 %t221, ptr %l107, !tbaa !24
  br label %bb32
bb32:
  %t222 = load i64, ptr %l107, !tbaa !24
  store i64 %t222, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb33
bb33:
  %t223 = load i64, ptr %l16, !tbaa !24
  %t224 = load i64, ptr %l15, !tbaa !24
  %t227 = icmp slt i64 %t223, %t224
  %t229 = xor i1 %t227, true
  br i1 %t229, label %bb34, label %bb35
bb34:
  br label %bb75
bb35:
  br label %bb36
bb36:
  %t231 = load i64, ptr %l12, !tbaa !24
  %t232 = load i64, ptr %l16, !tbaa !24
  %t233 = load i64, ptr %l14, !tbaa !24
  %t236 = mul i64 %t232, %t233
  %t239 = add i64 %t231, %t236
  store i64 %t239, ptr %l17, !tbaa !24
  %t241 = load ptr, ptr %l5, !tbaa !29
  %t242 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t242, ptr %l129, !tbaa !27
  %t243 = load i64, ptr %l17, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr i32, ptr %t246, i64 %t243
  %t248 = load i32, ptr %t247, !tbaa !33
  %t251 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t241, i32 %t248)
  store i32 %t251, ptr %l132
  br label %bb37
bb37:
  %t252 = load i32, ptr %l132, !tbaa !23
  store i32 %t252, ptr %l18, !tbaa !23
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/lower:lowering", ptr %t253, i32 0, i32 0
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t258 = getelementptr %"compiler/lower:Lowerer", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t260 = load i32, ptr %l18, !tbaa !23
  %t263 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t259, i32 %t260)
  store i32 %t263, ptr %l137
  br label %bb38
bb38:
  %t264 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t265 = load i32, ptr %l137, !tbaa !23
  %t267 = icmp eq i32 %t265, %t264
  br i1 %t267, label %bb39, label %bb40
bb39:
  br label %bb74
bb40:
  br label %bb41
bb41:
  store i64 0, ptr %l19, !tbaa !24
  %t269 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t269, 0
  store i64 %t271, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t273 = load i64, ptr %l20, !tbaa !24
  %t274 = load i64, ptr %l19, !tbaa !24
  %t277 = icmp sgt i64 %t273, %t274
  br i1 %t277, label %bb42, label %bb43
bb42:
  %t279 = load i64, ptr %l21, !tbaa !24
  %t281 = icmp sgt i64 %t279, 0
  br i1 %t281, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb47
bb44:
  %t283 = load i64, ptr %l20, !tbaa !24
  %t284 = load i64, ptr %l19, !tbaa !24
  %t287 = sub i64 %t283, %t284
  %t288 = load i64, ptr %l21, !tbaa !24
  %t291 = add i64 %t287, %t288
  %t293 = sub i64 %t291, 1
  %t294 = load i64, ptr %l21, !tbaa !24
  %t297 = sdiv i64 %t293, %t294
  store i64 %t297, ptr %l148, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l148, !tbaa !24
  br label %bb46
bb46:
  %t299 = load i64, ptr %l148, !tbaa !24
  store i64 %t299, ptr %l145, !tbaa !24
  br label %bb47
bb47:
  %t300 = load i64, ptr %l145, !tbaa !24
  store i64 %t300, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb48
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t301 = load i64, ptr %l23, !tbaa !24
  %t302 = load i64, ptr %l22, !tbaa !24
  %t305 = icmp slt i64 %t301, %t302
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s7)
  br label %bb73
bb50:
  br label %bb51
bb51:
  %t309 = load i64, ptr %l19, !tbaa !24
  %t310 = load i64, ptr %l23, !tbaa !24
  %t311 = load i64, ptr %l21, !tbaa !24
  %t314 = mul i64 %t310, %t311
  %t317 = add i64 %t309, %t314
  store i64 %t317, ptr %l24, !tbaa !24
  %t319 = load ptr, ptr %l5, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t320, ptr %l167, !tbaa !27
  %t321 = load i64, ptr %l24, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr i32, ptr %t324, i64 %t321
  %t326 = load i32, ptr %t325, !tbaa !33
  %t329 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t319, i32 %t326)
  store i32 %t329, ptr %l170
  br label %bb52
bb52:
  %t330 = load i32, ptr %l18, !tbaa !23
  %t331 = load i32, ptr %l170, !tbaa !23
  %t333 = icmp ne i32 %t331, %t330
  br i1 %t333, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s7)
  br label %bb72
bb54:
  br label %bb55
bb55:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/lower:lowering", ptr %t335, i32 0, i32 3
  %t339 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t337)
  store i32 %t339, ptr %l175
  br label %bb56
bb56:
  %t340 = load i32, ptr %l175, !tbaa !23
  store i32 %t340, ptr %l25, !tbaa !23
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/lower:lowering", ptr %t341, i32 0, i32 3
  %t345 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t343)
  store i32 %t345, ptr %l178
  br label %bb57
bb57:
  %t346 = load i32, ptr %l178, !tbaa !23
  store i32 %t346, ptr %l26, !tbaa !23
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l179, !tbaa !29
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load { i64, [4 x i64] }, ptr %l7
  %t350 = load i64, ptr %l24, !tbaa !24
  %t351 = load %"compiler/source:Span", ptr %l4
  %t356 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %t348, { i64, [4 x i64] } %t349, i64 %t350, %"compiler/source:Span" %t351)
  store { i64, [4 x i64] } %t356, ptr %l184
  br label %bb58
bb58:
  %t357 = load i32, ptr %l25, !tbaa !23
  %t358 = load i32, ptr %l26, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t359
  %t360 = getelementptr { i64, [8 x i64] }, ptr %t359, i32 0, i32 0
  store i64 2, ptr %t360
  %t361 = load { i64, [4 x i64] }, ptr %l184
  %t362 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t361, 0
  %t364 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t362, i32 %t357, 1
  %t366 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t364, i32 %t358, 2
  %t367 = getelementptr { i64, [8 x i64] }, ptr %t359, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t366, ptr %t367
  %t368 = load { i64, [8 x i64] }, ptr %t359
  %t369 = load ptr, ptr %l179, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t369, { i64, [8 x i64] } %t368)
  br label %bb59
bb59:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load i32, ptr %l25, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t371, i32 %t372)
  br label %bb60
bb60:
  %t375 = load ptr, ptr %l0, !tbaa !29
  store ptr %t375, ptr %l190, !tbaa !29
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l191, !tbaa !29
  %t377 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t378
  %t379 = getelementptr { i64, [2 x i64] }, ptr %t378, i32 0, i32 0
  store i64 1, ptr %t379
  %t381 = insertvalue { i32 } undef, i32 %t377, 0
  %t382 = getelementptr { i64, [2 x i64] }, ptr %t378, i32 0, i32 1
  store { i32 } %t381, ptr %t382
  %t383 = load { i64, [2 x i64] }, ptr %t378
  %t385 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s7, { i64, [2 x i64] } %t383)
  store %"compiler/lower:pl" %t385, ptr %l194
  br label %bb61
bb61:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/lower:lowering", ptr %t386, i32 0, i32 0
  %t389 = load ptr, ptr %t388, !tbaa !29
  %t391 = getelementptr %"compiler/lower:Lowerer", ptr %t389, i32 0, i32 0
  %t392 = load ptr, ptr %t391, !tbaa !29
  %t393 = load i32, ptr %l2, !tbaa !23
  %t394 = load i64, ptr %l17, !tbaa !24
  %t398 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t392, i32 %t393, i64 %t394)
  store i64 %t398, ptr %l200
  br label %bb62
bb62:
  store { i64, [1 x i64] } zeroinitializer, ptr %t399
  %t400 = getelementptr { i64, [1 x i64] }, ptr %t399, i32 0, i32 0
  store i64 0, ptr %t400
  %t401 = load i64, ptr %l200, !tbaa !24
  %t402 = insertvalue { i64 } undef, i64 %t401, 0
  %t403 = getelementptr { i64, [1 x i64] }, ptr %t399, i32 0, i32 1
  store { i64 } %t402, ptr %t403
  %t404 = load { i64, [1 x i64] }, ptr %t399
  %t405 = load ptr, ptr %l191, !tbaa !29
  %t406 = load %"compiler/lower:pl", ptr %l194
  %t408 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s7, ptr %s7, ptr %t405, %"compiler/lower:pl" %t406, { i64, [1 x i64] } %t404)
  store %"compiler/lower:pl" %t408, ptr %l202
  br label %bb63
bb63:
  %t409 = load ptr, ptr %l190, !tbaa !29
  %t410 = load %"compiler/lower:pl", ptr %l202
  %t411 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s7, ptr %t409, %"compiler/lower:pl" %t410)
  store %"compiler/mir:Lvalue" %t411, ptr %l203
  br label %bb64
bb64:
  store { i64, [4 x i64] } zeroinitializer, ptr %t412
  %t413 = getelementptr { i64, [4 x i64] }, ptr %t412, i32 0, i32 0
  store i64 1, ptr %t413
  %t414 = load %"compiler/mir:Lvalue", ptr %l203
  %t415 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t414, 0
  %t416 = getelementptr { i64, [4 x i64] }, ptr %t412, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t415, ptr %t416
  %t417 = load { i64, [4 x i64] }, ptr %t412
  store { i64, [4 x i64] } %t417, ptr %l27
  %t419 = load ptr, ptr %l0, !tbaa !29
  store ptr %t419, ptr %l205, !tbaa !29
  %t420 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t420, ptr %l206
  %t421 = load ptr, ptr %l0, !tbaa !29
  store ptr %t421, ptr %l207, !tbaa !29
  %t422 = load ptr, ptr %l0, !tbaa !29
  store ptr %t422, ptr %l208, !tbaa !29
  %t423 = load %"compiler/lower:pl", ptr %l9
  store %"compiler/lower:pl" %t423, ptr %l209
  %t425 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s7, ptr %l209)
  store %"compiler/lower:pl" %t425, ptr %l211
  br label %bb65
bb65:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/lower:lowering", ptr %t426, i32 0, i32 0
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t431 = getelementptr %"compiler/lower:Lowerer", ptr %t429, i32 0, i32 0
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t433 = load i32, ptr %l3, !tbaa !23
  %t434 = load i64, ptr %l24, !tbaa !24
  %t438 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %t432, i32 %t433, i64 %t434)
  store i64 %t438, ptr %l217
  br label %bb66
bb66:
  store { i64, [1 x i64] } zeroinitializer, ptr %t439
  %t440 = getelementptr { i64, [1 x i64] }, ptr %t439, i32 0, i32 0
  store i64 0, ptr %t440
  %t441 = load i64, ptr %l217, !tbaa !24
  %t442 = insertvalue { i64 } undef, i64 %t441, 0
  %t443 = getelementptr { i64, [1 x i64] }, ptr %t439, i32 0, i32 1
  store { i64 } %t442, ptr %t443
  %t444 = load { i64, [1 x i64] }, ptr %t439
  %t445 = load ptr, ptr %l208, !tbaa !29
  %t446 = load %"compiler/lower:pl", ptr %l211
  %t448 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %s7, ptr %s7, ptr %t445, %"compiler/lower:pl" %t446, { i64, [1 x i64] } %t444)
  store %"compiler/lower:pl" %t448, ptr %l219
  br label %bb67
bb67:
  %t449 = load ptr, ptr %l207, !tbaa !29
  %t450 = load %"compiler/lower:pl", ptr %l219
  %t451 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s7, ptr %t449, %"compiler/lower:pl" %t450)
  store %"compiler/mir:Lvalue" %t451, ptr %l220
  br label %bb68
bb68:
  %t452 = load { i64, [4 x i64] }, ptr %l27
  store { i64, [15 x i64] } zeroinitializer, ptr %t453
  %t454 = getelementptr { i64, [15 x i64] }, ptr %t453, i32 0, i32 0
  store i64 0, ptr %t454
  %t456 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t452, 0
  %t457 = getelementptr { i64, [15 x i64] }, ptr %t453, i32 0, i32 1
  store { { i64, [4 x i64] } } %t456, ptr %t457
  %t458 = load { i64, [15 x i64] }, ptr %t453
  store { i64, [21 x i64] } zeroinitializer, ptr %t459
  %t460 = getelementptr { i64, [21 x i64] }, ptr %t459, i32 0, i32 0
  store i64 0, ptr %t460
  %t461 = load %"compiler/source:Span", ptr %l206
  %t462 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t461, 0
  %t463 = load %"compiler/mir:Lvalue", ptr %l220
  %t464 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t462, %"compiler/mir:Lvalue" %t463, 1
  %t466 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t464, { i64, [15 x i64] } %t458, 2
  %t467 = getelementptr { i64, [21 x i64] }, ptr %t459, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t466, ptr %t467
  %t468 = load { i64, [21 x i64] }, ptr %t459
  %t470 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t468, ptr %t470
  %t471 = load ptr, ptr %l205, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t471, ptr %t470)
  br label %bb69
bb69:
  %t473 = load ptr, ptr %l0, !tbaa !29
  %t474 = load i32, ptr %l26, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t473, i32 %t474)
  br label %bb70
bb70:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i32, ptr %l26, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t477, i32 %t478)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s7)
  br label %bb72
bb72:
  %t481 = load i64, ptr %l23, !tbaa !24
  %t483 = add i64 %t481, 1
  store i64 %t483, ptr %l23, !tbaa !24
  br label %bb48
bb73:
  br label %bb74
bb74:
  %t485 = load i64, ptr %l16, !tbaa !24
  %t487 = add i64 %t485, 1
  store i64 %t487, ptr %l16, !tbaa !24
  br label %bb33
bb75:
  %t489 = load i32, ptr %l8, !tbaa !23
  %t491 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t489)
  store %"compiler/mir:Lvalue" %t491, ptr %l234
  br label %bb76
bb76:
  store { i64, [4 x i64] } zeroinitializer, ptr %t492
  %t493 = getelementptr { i64, [4 x i64] }, ptr %t492, i32 0, i32 0
  store i64 1, ptr %t493
  %t494 = load %"compiler/mir:Lvalue", ptr %l234
  %t495 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t494, 0
  %t496 = getelementptr { i64, [4 x i64] }, ptr %t492, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t495, ptr %t496
  %t497 = load { i64, [4 x i64] }, ptr %t492
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t497, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2efeedHome(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i1
  %l33 = alloca i1
  %l35 = alloca { i64, ptr }
  %l39 = alloca i1
  %l42 = alloca i64
  %l51 = alloca i1
  %l54 = alloca { i64, [1 x i64] }
  %l68 = alloca i64
  %l71 = alloca i1
  %l75 = alloca i1
  %l76 = alloca i1
  %l81 = alloca %"compiler/mir:Local"
  %l90 = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 31
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lower:lowering", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/lower:Lowerer", ptr %t11, i32 0, i32 5
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_c6c84cb62ff6f0bd_faa8ffb59ed683b9)
  unreachable
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/lower:Lowerer", ptr %t21, i32 0, i32 5
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lower:lowering", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 0
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t34 = load i32, ptr %l1, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t40 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedSite(ptr %v0, ptr %t24, i64 %t33, i64 %t36)
  store i64 %t40, ptr %l24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l24, !tbaa !24
  store i64 %t41, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = icmp slt i64 %t42, 0
  br i1 %t44, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lower:lowering", ptr %t47, i32 0, i32 30
  %t50 = getelementptr %"compiler/typed:Plan", ptr %t49, i32 0, i32 5
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t56 = icmp sge i64 %t46, %t53
  store i1 %t56, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t58 = load i1, ptr %l27, !tbaa !21
  br i1 %t58, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb13
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t59, i32 0, i32 30
  %t62 = getelementptr %"compiler/typed:Plan", ptr %t61, i32 0, i32 5
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l35, !tbaa !27
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i64, ptr %t67, i64 %t64
  %t69 = load i64, ptr %t68, !tbaa !34
  %t71 = icmp ne i64 %t69, 1
  store i1 %t71, ptr %l33, !tbaa !21
  br label %bb13
bb13:
  %t73 = load i1, ptr %l33, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb17
bb15:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t78 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eregionSite(ptr %v0, ptr %v1, ptr %t74, ptr %a2)
  store i64 %t78, ptr %l42
  br label %bb16
bb16:
  %t79 = load i64, ptr %l3, !tbaa !24
  %t80 = load i64, ptr %l42, !tbaa !24
  %t82 = icmp ne i64 %t80, %t79
  store i1 %t82, ptr %l39, !tbaa !21
  br label %bb17
bb17:
  %t84 = load i1, ptr %l39, !tbaa !21
  br i1 %t84, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lower:lowering", ptr %t85, i32 0, i32 34
  %t88 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t87, i64 %t88, i1 true)
  br label %bb21
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/lower:lowering", ptr %t91, i32 0, i32 32
  %t94 = load i64, ptr %l3, !tbaa !24
  %t97 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_Hf0fb0e232c68e27195d0770621b0035a(ptr %v0, ptr %t93, i64 %t94)
  store i1 %t97, ptr %l51
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l3, !tbaa !24
  %t102 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %t98, i64 %t99)
  store { i64, [1 x i64] } %t102, ptr %l54
  br label %bb23
bb23:
  %t103 = load { i64, [1 x i64] }, ptr %l54
  store { i64, [1 x i64] } %t103, ptr %l4
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/lower:lowering", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/lower:Lowerer", ptr %t107, i32 0, i32 5
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_8eb440d9ad9184d6_9db154232c5d7f92)
  unreachable
bb25:
  br label %bb26
bb26:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/lower:lowering", ptr %t114, i32 0, i32 0
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/lower:Lowerer", ptr %t117, i32 0, i32 5
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/lower:lowering", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Body", ptr %t124, i32 0, i32 0
  %t127 = load i32, ptr %t126, !tbaa !23
  %t129 = sext i32 %t127 to i64
  %t130 = load i32, ptr %l1, !tbaa !23
  %t132 = sext i32 %t130 to i64
  %t136 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedCopy(ptr %v0, ptr %t120, i64 %t129, i64 %t132)
  store i64 %t136, ptr %l68
  br label %bb27
bb27:
  %t137 = load i64, ptr %l68, !tbaa !24
  store i64 %t137, ptr %l5, !tbaa !24
  %t138 = load i64, ptr %l5, !tbaa !24
  %t140 = icmp sge i64 %t138, 0
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/lower:lowering", ptr %t142, i32 0, i32 58
  %t145 = load i64, ptr %l5, !tbaa !24
  %t148 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t144, i64 %t145)
  store i1 %t148, ptr %l75
  br label %bb30
bb29:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb31
bb30:
  %t149 = load i1, ptr %l75, !tbaa !21
  store i1 %t149, ptr %l71, !tbaa !21
  br label %bb31
bb31:
  %t150 = load i1, ptr %l71, !tbaa !21
  br i1 %t150, label %bb32, label %bb33
bb32:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lower:lowering", ptr %t151, i32 0, i32 3
  %t154 = getelementptr %"compiler/mir:Fn", ptr %t153, i32 0, i32 7
  %t155 = load i32, ptr %l1, !tbaa !23
  %t157 = sext i32 %t155 to i64
  %t160 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t154, i64 %t157)
  store %"compiler/mir:Local" %t160, ptr %l81
  br label %bb34
bb33:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb35
bb34:
  %t161 = getelementptr %"compiler/mir:Local", ptr %l81, i32 0, i32 4
  %t162 = load { i64, [1 x i64] }, ptr %t161
  %t164 = extractvalue { i64, [1 x i64] } %t162, 0
  %t165 = icmp eq i64 %t164, 3
  %t167 = xor i1 %t165, true
  store i1 %t167, ptr %l76, !tbaa !21
  br label %bb35
bb35:
  %t169 = load i1, ptr %l76, !tbaa !21
  br i1 %t169, label %bb36, label %bb37
bb36:
  %t170 = load i32, ptr %l1, !tbaa !23
  %t172 = sext i32 %t170 to i64
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/lower:lowering", ptr %t174, i32 0, i32 3
  %t177 = getelementptr %"compiler/mir:Fn", ptr %t176, i32 0, i32 7
  %t181 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v0, ptr %t177, i64 %t172)
  store ptr %t181, ptr %l90
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t182 = load ptr, ptr %l90, !tbaa !29
  %t184 = load { i64, [1 x i64] }, ptr %l4
  %t187 = getelementptr %"compiler/mir:Local", ptr %t182, i32 0, i32 4
  store { i64, [1 x i64] } %t184, ptr %t187
  br label %bb39
bb39:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efnVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca ptr
  %l13 = alloca i1
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca ptr
  %l24 = alloca i1
  %l39 = alloca { i64, [4 x i64] }
  %l40 = alloca ptr
  %l41 = alloca i1
  %l56 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l4, !tbaa !23
  %t18 = load i32, ptr %l2, !tbaa !23
  %t19 = load %"compiler/source:Span", ptr %l3
  %t24 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enamedVal(ptr %v0, ptr %t16, i32 %t17, i32 %t18, %"compiler/source:Span" %t19)
  store { i64, [4 x i64] } %t24, ptr %l22
  br label %bb6
bb6:
  %t25 = load { i64, [4 x i64] }, ptr %l22
  store { i64, [4 x i64] } %t25, ptr %l11
  br label %bb22
bb7:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t27 = load ptr, ptr %l23, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l23, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 3}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l24, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t43, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t49, i32 0, i32 2
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l7, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l5, !tbaa !23
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t56 = load i32, ptr %l7, !tbaa !23
  %t57 = load i32, ptr %l2, !tbaa !23
  %t58 = load %"compiler/source:Span", ptr %l3
  %t65 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2elambda(ptr %v0, ptr %v1, ptr %t53, i32 %t54, { i64, ptr } %t55, i32 %t56, i32 %t57, %"compiler/source:Span" %t58)
  store { i64, [4 x i64] } %t65, ptr %l39
  br label %bb13
bb13:
  %t66 = load { i64, [4 x i64] }, ptr %l39
  store { i64, [4 x i64] } %t66, ptr %l11
  br label %bb22
bb14:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t68 = load ptr, ptr %l40, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l40, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 3}
  %t74 = icmp eq i64 %t72, 2
  store i1 %t74, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t75 = load i1, ptr %l41, !tbaa !21
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { i32, ptr, i32 }, ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79
  store i32 %t80, ptr %l8, !tbaa !23
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { i32, ptr, i32 }, ptr %t84, i32 0, i32 1
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l9, !tbaa !29
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { i32, ptr, i32 }, ptr %t90, i32 0, i32 2
  %t92 = load i32, ptr %t91
  store i32 %t92, ptr %l10, !tbaa !23
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l8, !tbaa !23
  %t96 = load ptr, ptr %l9, !tbaa !29
  %t97 = load i32, ptr %l10, !tbaa !23
  %t98 = load i32, ptr %l2, !tbaa !23
  %t99 = load %"compiler/source:Span", ptr %l3
  %t106 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eadapter(ptr %v0, ptr %v1, ptr %t94, i32 %t95, ptr %t96, i32 %t97, i32 %t98, %"compiler/source:Span" %t99)
  store { i64, [4 x i64] } %t106, ptr %l56
  br label %bb20
bb20:
  %t107 = load { i64, [4 x i64] }, ptr %l56
  store { i64, [4 x i64] } %t107, ptr %l11
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a9ad50b63422a08e_67259be34391ceea)
  unreachable
bb22:
  %t108 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %t3 = alloca { i64, [8 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [8 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [8 x i64] }, ptr %t3, i32 0, i32 0
  store i64 1, ptr %t4
  %t6 = insertvalue { i32 } undef, i32 %a1, 0
  %t7 = getelementptr { i64, [8 x i64] }, ptr %t3, i32 0, i32 1
  store { i32 } %t6, ptr %t7
  %t8 = load { i64, [8 x i64] }, ptr %t3
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %a0, { i64, [8 x i64] } %t8)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ehasStr(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2estrBody(ptr %v0, ptr %a0, i32 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldParts(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i1
  %l23 = alloca i1
  %l29 = alloca i32
  %l35 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca i32
  %l49 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %l3, !tbaa !24
  %t8 = icmp sgt i64 %t6, 16
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t13 = sext i32 %t11 to i64
  %t16 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t10, i64 %t13)
  store i1 %t16, ptr %l23
  br label %bb3
bb3:
  %t17 = load i1, ptr %l23, !tbaa !21
  store i1 %t17, ptr %l19, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l19, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i32, ptr %l1, !tbaa !23
  %t22 = sext i32 %t20 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t19, i64 %t22, i1 true)
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l29
  br label %bb9
bb9:
  %t30 = load i32, ptr %l29, !tbaa !23
  store i32 %t30, ptr %l5, !tbaa !23
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load i32, ptr %l5, !tbaa !23
  %t34 = sext i32 %t32 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t31, i64 %t34, i1 true)
  br label %bb10
bb10:
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l35
  br label %bb11
bb11:
  %t42 = load i32, ptr %l35, !range !{i32 0, i32 33}
  store i32 %t42, ptr %l6
  %t43 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t45 = trunc i64 19 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l38, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t50 = load i32, ptr %l5, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l41
  br label %bb15
bb15:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t55 = load i64, ptr %l3, !tbaa !24
  %t57 = add i64 %t55, 1
  %t58 = load ptr, ptr %l38, !tbaa !29
  %t59 = load i32, ptr %l41, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldParts(ptr %v0, ptr %v1, ptr %t58, i32 %t59, ptr %t54, i64 %t57)
  br label %bb16
bb16:
  br label %bb52
bb17:
  %t62 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t64 = trunc i64 22 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  %t67 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t69 = trunc i64 23 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb35
bb22:
  %t72 = load ptr, ptr %l4, !tbaa !29
  store ptr %t72, ptr %l49, !tbaa !29
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t74 = load i32, ptr %l5, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l52
  br label %bb23
bb23:
  %t78 = load ptr, ptr %l49, !tbaa !29
  %t79 = load i32, ptr %l52, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t78, i32 %t79)
  store { i64, ptr } %t80, ptr %l53
  br label %bb24
bb24:
  %t81 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t81, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb26, label %bb27
bb26:
  br label %bb34
bb27:
  br label %bb28
bb28:
  %t94 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t94, ptr %l60, !tbaa !27
  %t95 = load i64, ptr %l8, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  store i32 %t100, ptr %l10, !tbaa !23
  %t102 = load i32, ptr %l10, !tbaa !23
  %t104 = icmp ne i32 %t102, 0
  br i1 %t104, label %bb29, label %bb30
bb29:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l10, !tbaa !23
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t109 = load i64, ptr %l3, !tbaa !24
  %t111 = add i64 %t109, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldParts(ptr %v0, ptr %v1, ptr %t106, i32 %t107, ptr %t108, i64 %t111)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l8, !tbaa !24
  br label %bb25
bb34:
  br label %bb52
bb35:
  %t120 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t122 = trunc i64 18 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb47
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t125 = load ptr, ptr %l4, !tbaa !29
  %t126 = load i32, ptr %l5, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s9, ptr %t125, i32 %t126)
  store { i64, ptr } %t129, ptr %l76
  br label %bb39
bb39:
  %t130 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  %t132 = extractvalue { i64, ptr } %t130, 1
  %t133 = mul i64 %t131, 4
  %t134 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  store { i64, ptr } %t136, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  store i64 %t140, ptr %l13, !tbaa !24
  br label %bb40
bb40:
  %t142 = load i64, ptr %l12, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb41, label %bb42
bb41:
  br label %bb46
bb42:
  br label %bb43
bb43:
  %t150 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t150, ptr %l84, !tbaa !27
  %t151 = load i64, ptr %l12, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i32, ptr %t154, i64 %t151
  %t156 = load i32, ptr %t155, !tbaa !33
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t161 = load i64, ptr %l3, !tbaa !24
  %t163 = add i64 %t161, 1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eheldParts(ptr %v0, ptr %v1, ptr %t158, i32 %t156, ptr %t160, i64 %t163)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t168 = load i64, ptr %l12, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l12, !tbaa !24
  br label %bb40
bb46:
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_f8c813b846b58ae2_519e51a3f456354e)
  unreachable
bb52:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ehelperCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l16 = alloca i32
  %l21 = alloca i32
  %l30 = alloca i32
  %l38 = alloca i32
  %l40 = alloca ptr
  %l43 = alloca { i64, [7 x i64] }
  %l47 = alloca %"compiler/mir:Range"
  %l51 = alloca %"compiler/mir:Range"
  %l55 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca %"compiler/mir:Lvalue"
  %l65 = alloca %"compiler/mir:Call"
  %l66 = alloca i32
  %l76 = alloca { i64, [4 x i64] }
  %l79 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t25 = alloca { i64, [2 x i64] }, align 8
  %t68 = alloca { i64, [7 x i64] }, align 8
  %t126 = alloca { i64, [8 x i64] }, align 8
  %t146 = alloca { i64, [4 x i64] }, align 8
  %t153 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a5, ptr %l5
  store %"compiler/source:Span" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t6 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %t4, i32 %t5, i32 %t6)
  store i32 %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load i32, ptr %l16, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t17 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t15, i32 %t16, i32 %t17)
  store i32 %t21, ptr %l21
  br label %bb2
bb2:
  %t22 = load i32, ptr %l21, !tbaa !23
  store i32 %t22, ptr %l7, !tbaa !23
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t24 = load i32, ptr %l2, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 0
  store i64 3, ptr %t26
  %t28 = insertvalue { i32, i32 } undef, i32 %t23, 0
  %t30 = insertvalue { i32, i32 } %t28, i32 %t24, 1
  %t31 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  store { i32, i32 } %t30, ptr %t31
  %t32 = load { i64, [2 x i64] }, ptr %t25
  store { i64, [2 x i64] } %t32, ptr %l8
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/lower:lowering", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load { i64, [2 x i64] }, ptr %l8
  call void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %t37, { i64, [2 x i64] } %t38)
  br label %bb3
bb3:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 3
  %t45 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t43)
  store i32 %t45, ptr %l30
  br label %bb4
bb4:
  %t46 = load i32, ptr %l30, !tbaa !23
  store i32 %t46, ptr %l9, !tbaa !23
  %t47 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t47, ptr %l10, !tbaa !23
  %t49 = load i32, ptr %l5, !tbaa !23
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t53 = icmp ne i32 %t49, %t50
  br i1 %t53, label %bb5, label %bb6
bb5:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l5, !tbaa !23
  %t57 = load %"compiler/source:Span", ptr %l6
  %t61 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t55, i32 %t56, %"compiler/source:Span" %t57)
  store i32 %t61, ptr %l38
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t62 = load i32, ptr %l38, !tbaa !23
  store i32 %t62, ptr %l10, !tbaa !23
  br label %bb8
bb8:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/lower:lowering", ptr %t63, i32 0, i32 3
  store ptr %t65, ptr %l40, !tbaa !29
  %t66 = load { i64, [2 x i64] }, ptr %l8
  %t67 = load i32, ptr %l7, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [7 x i64] }, ptr %t68, i32 0, i32 0
  store i64 0, ptr %t69
  %t71 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t66, 0
  %t73 = insertvalue { { i64, [2 x i64] }, i32 } %t71, i32 %t67, 1
  %t74 = getelementptr { i64, [7 x i64] }, ptr %t68, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t73, ptr %t74
  %t75 = load { i64, [7 x i64] }, ptr %t68
  store { i64, [7 x i64] } %t75, ptr %l43
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/lower:lowering", ptr %t76, i32 0, i32 3
  %t82 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %t78, { i64, ptr } %a3)
  store %"compiler/mir:Range" %t82, ptr %l47
  br label %bb9
bb9:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/lower:lowering", ptr %t83, i32 0, i32 3
  %t89 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v2, ptr %t85, { i64, ptr } %a4)
  store %"compiler/mir:Range" %t89, ptr %l51
  br label %bb10
bb10:
  %t90 = load i32, ptr %l10, !tbaa !23
  %t91 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t94 = icmp ne i32 %t90, %t91
  br i1 %t94, label %bb11, label %bb12
bb11:
  %t96 = load i32, ptr %l10, !tbaa !23
  %t98 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t96)
  store %"compiler/mir:Lvalue" %t98, ptr %l57
  br label %bb13
bb12:
  %t99 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  store %"compiler/mir:Lvalue" %t99, ptr %l55
  br label %bb14
bb13:
  %t101 = load %"compiler/mir:Lvalue", ptr %l57
  store %"compiler/mir:Lvalue" %t101, ptr %l55
  br label %bb14
bb14:
  %t102 = load i32, ptr %l10, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t106 = icmp ne i32 %t102, %t103
  %t107 = load i32, ptr %l9, !tbaa !23
  %t108 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t109 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t110 = load { i64, [7 x i64] }, ptr %l43
  %t111 = load %"compiler/mir:Range", ptr %l47
  %t112 = load %"compiler/mir:Range", ptr %l51
  %t113 = load %"compiler/mir:Lvalue", ptr %l55
  %t118 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t110, %"compiler/mir:Range" %t111, %"compiler/mir:Range" %t112, %"compiler/mir:Lvalue" %t113, i1 %t106, i32 %t107, i32 %t108, i32 %t109)
  store %"compiler/mir:Call" %t118, ptr %l65
  br label %bb15
bb15:
  %t119 = load ptr, ptr %l40, !tbaa !29
  %t120 = load %"compiler/mir:Call", ptr %l65
  %t121 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t119, %"compiler/mir:Call" %t120)
  store i32 %t121, ptr %l66
  br label %bb16
bb16:
  %t122 = load i32, ptr %l66, !tbaa !23
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load %"compiler/source:Span", ptr %l6
  store { i64, [8 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [8 x i64] }, ptr %t126, i32 0, i32 0
  store i64 4, ptr %t127
  %t129 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t124, 0
  %t131 = insertvalue { %"compiler/source:Span", i32 } %t129, i32 %t122, 1
  %t132 = getelementptr { i64, [8 x i64] }, ptr %t126, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t131, ptr %t132
  %t133 = load { i64, [8 x i64] }, ptr %t126
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t123, { i64, [8 x i64] } %t133)
  br label %bb17
bb17:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t136, i32 %t137)
  br label %bb18
bb18:
  %t140 = load i32, ptr %l10, !tbaa !23
  %t141 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t144 = icmp eq i32 %t140, %t141
  br i1 %t144, label %bb19, label %bb20
bb19:
  store { i64, [4 x i64] } zeroinitializer, ptr %t146
  %t147 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 0
  store i64 0, ptr %t147
  %t148 = load { i64, [4 x i64] }, ptr %t146
  store { i64, [4 x i64] } %t148, ptr %l76
  br label %bb22
bb20:
  %t150 = load i32, ptr %l10, !tbaa !23
  %t152 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t150)
  store %"compiler/mir:Lvalue" %t152, ptr %l79
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 0
  store i64 1, ptr %t154
  %t155 = load %"compiler/mir:Lvalue", ptr %l79
  %t156 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t155, 0
  %t157 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t156, ptr %t157
  %t158 = load { i64, [4 x i64] }, ptr %t153
  store { i64, [4 x i64] } %t158, ptr %l76
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t160 = load { i64, [4 x i64] }, ptr %l76
  store { i64, [4 x i64] } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eholderOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l7 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lower:lowering", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lower:lowering", ptr %t11, i32 0, i32 15
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l11
  br label %bb4
bb3:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb6
bb4:
  %t18 = load ptr, ptr %l7, !tbaa !29
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t20 = call i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v0, ptr %t18, ptr %t19)
  store i64 %t20, ptr %l12
  br label %bb5
bb5:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l5, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2flower_2ecompiler_2flower_3alowering_2eholds(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l11 = alloca %"compiler/typed:DropHolding"
  %l13 = alloca %"compiler/typed:DropHolding"
  %rv = alloca ptr
  %t22 = alloca %"compiler/typed:DropHolding", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 42
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = ptrtoint ptr %v0 to i64
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e41
  br i1 %t10, label %bb3, label %bb4
bb2:
  br label %bb10
bb3:
  %t12 = call ptr @__olang_region_make(ptr %v0)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/lower:lowering", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = load i64, ptr %l5
  %t24 = inttoptr i64 %t23 to ptr
  call void @compiler_2ftyped_2eDropHolding_2eDropHolds(ptr %t22, ptr %v0, ptr %v0, ptr %t24, ptr %t17, ptr %t21)
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %t22, i64 224, i1 false)
  br label %bb5
bb5:
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e41
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l5
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 6
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t31, i32 0, i32 0
  %t33 = load { i64, ptr }, ptr %t32
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = call ptr @__olang_region_or(ptr %t34, ptr null)
  %t36 = icmp ne ptr %t35, null
  %t37 = select i1 %t36, ptr %t35, ptr null
  %t38 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 5
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr %t37
  %t45 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 4
  %t46 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t45, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46
  %t48 = extractvalue { i64, ptr } %t47, 1
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr null)
  %t50 = icmp ne ptr %t49, null
  %t51 = select i1 %t50, ptr %t49, ptr %t44
  %t52 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 3
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr %t51
  %t59 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 2
  %t60 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t59, i32 0, i32 0
  %t61 = load { i64, ptr }, ptr %t60
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = call ptr @__olang_region_or(ptr %t62, ptr null)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr %t58
  %t66 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 1
  %t67 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t66, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t65
  %t73 = getelementptr %"compiler/typed:DropHolding", ptr %l11, i32 0, i32 0
  %t74 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t73, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = call ptr @__olang_region_or(ptr %t76, ptr null)
  %t78 = icmp ne ptr %t77, null
  %t79 = select i1 %t78, ptr %t77, ptr %t72
  %t80 = icmp eq ptr %t79, %t30
  call void @__olang_region_settle(ptr %t30, i1 %t80)
  br label %bb7
bb7:
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/lower:lowering", ptr %t81, i32 0, i32 41
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %t82, i64 224, i1 false)
  %t83 = load ptr, ptr %l4, !tbaa !29
  %t84 = getelementptr %"compiler/lower:lowering", ptr %t83, i32 0, i32 41
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %l11, i64 224, i1 false)
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2flower_3alowering_2e41
  br i1 %t85, label %bb8, label %bb9
bb8:
  %t87 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 6
  %t88 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t87, i32 0, i32 0
  %t89 = load { i64, ptr }, ptr %t88
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = call ptr @__olang_region_or(ptr %t90, ptr null)
  %t92 = icmp ne ptr %t91, null
  %t93 = select i1 %t92, ptr %t91, ptr null
  %t94 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 5
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t94, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr %t93
  %t101 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 4
  %t102 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t103 = load { i64, ptr }, ptr %t102
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = call ptr @__olang_region_or(ptr %t104, ptr null)
  %t106 = icmp ne ptr %t105, null
  %t107 = select i1 %t106, ptr %t105, ptr %t100
  %t108 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 3
  %t109 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t108, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr %t107
  %t115 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 2
  %t116 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t115, i32 0, i32 0
  %t117 = load { i64, ptr }, ptr %t116
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr %t114
  %t122 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 1
  %t123 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t122, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t121
  %t129 = getelementptr %"compiler/typed:DropHolding", ptr %l13, i32 0, i32 0
  %t130 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t129, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = call ptr @__olang_region_or(ptr %t132, ptr null)
  %t134 = icmp ne ptr %t133, null
  %t135 = select i1 %t134, ptr %t133, ptr %t128
  call void @__olang_region_drop(ptr %t135)
  store %"compiler/typed:DropHolding" zeroinitializer, ptr %l13
  br label %bb9
bb9:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lower:lowering", ptr %t136, i32 0, i32 42
  store i1 true, ptr %t138, !tbaa !21
  br label %bb10
bb10:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/lower:lowering", ptr %t139, i32 0, i32 41
  store ptr %t141, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %a0, i32 %a1, { i64, [15 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l12 = alloca %"compiler/mir:Lvalue"
  %l17 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t15 = alloca { i64, [21 x i64] }, align 8
  %t32 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load %"compiler/source:Span", ptr %l3
  %t7 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %a1, %"compiler/source:Span" %t3)
  store i32 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i32, ptr %l8, !tbaa !23
  store i32 %t8, ptr %l4, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t10, ptr %l10
  %t11 = load i32, ptr %l4, !tbaa !23
  %t13 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t11)
  store %"compiler/mir:Lvalue" %t13, ptr %l12
  br label %bb2
bb2:
  store { i64, [21 x i64] } zeroinitializer, ptr %t15
  %t16 = getelementptr { i64, [21 x i64] }, ptr %t15, i32 0, i32 0
  store i64 0, ptr %t16
  %t17 = load %"compiler/source:Span", ptr %l10
  %t18 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t17, 0
  %t19 = load %"compiler/mir:Lvalue", ptr %l12
  %t20 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t18, %"compiler/mir:Lvalue" %t19, 1
  %t22 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t20, { i64, [15 x i64] } %a2, 2
  %t23 = getelementptr { i64, [21 x i64] }, ptr %t15, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t22, ptr %t23
  %t24 = load { i64, [21 x i64] }, ptr %t15
  %t26 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t24, ptr %t26
  %t27 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t27, ptr %t26)
  br label %bb3
bb3:
  %t29 = load i32, ptr %l4, !tbaa !23
  %t31 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t29)
  store %"compiler/mir:Lvalue" %t31, ptr %l17
  br label %bb4
bb4:
  store { i64, [4 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 0
  store i64 1, ptr %t33
  %t34 = load %"compiler/mir:Lvalue", ptr %l17
  %t35 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t34, 0
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t35, ptr %t36
  %t37 = load { i64, [4 x i64] }, ptr %t32
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 10
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t8, i32 %t9)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t12, i32 %t13)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2emainPayloads(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l22 = alloca i32
  %l26 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l53 = alloca { i64, ptr }
  %l56 = alloca i64
  %l62 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l72 = alloca i32
  %l77 = alloca i32
  %l80 = alloca i1
  %l83 = alloca ptr
  %l87 = alloca i32
  %l90 = alloca { i64, ptr }
  %l95 = alloca i32
  %l98 = alloca i32
  %l99 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l109 = alloca { i64, [4 x i64] }
  %l119 = alloca ptr
  %l120 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l123 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l132 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t209 = alloca { i64, [8 x i64] }, align 8
  %t227 = alloca { i64, [21 x i64] }, align 8
  %t264 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %t10, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t4, i32 %t11)
  store i32 %t14, ptr %l22
  br label %bb1
bb1:
  %t15 = load i32, ptr %l22, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t18 = load %"compiler/source:Span", ptr %l2
  %t22 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ebangNames(ptr %v0, ptr %s0, ptr %t16, i32 %t17, %"compiler/source:Span" %t18)
  store { i64, ptr } %t22, ptr %l26
  br label %bb2
bb2:
  %t23 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  store i64 2, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp sgt i64 %t28, %t29
  br i1 %t32, label %bb3, label %bb4
bb3:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb8
bb5:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sub i64 %t38, %t39
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = add i64 %t42, %t43
  %t48 = sub i64 %t46, 1
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = sdiv i64 %t48, %t49
  store i64 %t52, ptr %l35, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb7
bb7:
  %t54 = load i64, ptr %l35, !tbaa !24
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb8
bb8:
  %t55 = load i64, ptr %l32, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load i64, ptr %l9, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb11:
  br label %bb12
bb12:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t69 = mul i64 %t65, %t66
  %t72 = add i64 %t64, %t69
  store i64 %t72, ptr %l10, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t74, ptr %l53, !tbaa !27
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t78, i64 %t75
  %t80 = load { i64, [4 x i64] }, ptr %t79
  store { i64, [4 x i64] } %t80, ptr %l11
  %t82 = load { i64, [4 x i64] }, ptr %l11
  %t84 = extractvalue { i64, [4 x i64] } %t82, 0
  %t85 = icmp eq i64 %t84, 2
  br i1 %t85, label %bb13, label %bb14
bb13:
  %t87 = getelementptr { i64, [4 x i64] }, ptr %l11, i32 0, i32 1
  %t88 = getelementptr { i32, i64 }, ptr %t87, i32 0, i32 1
  %t89 = load i64, ptr %t88
  store i64 %t89, ptr %l12, !tbaa !24
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t91 = load i64, ptr %l12, !tbaa !24
  store i64 %t91, ptr %l56, !tbaa !24
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_5dc48dc64c6b10e3_ed2bb1ae700828ff)
  unreachable
bb21:
  %t93 = load i64, ptr %l56, !tbaa !24
  store i64 %t93, ptr %l13, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 2
  %t97 = load ptr, ptr %t96, !tbaa !29
  store ptr %t97, ptr %l62, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lower:lowering", ptr %t98, i32 0, i32 2
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load i32, ptr %l3, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t101, i32 %t102)
  store { i64, ptr } %t105, ptr %l66
  br label %bb22
bb22:
  %t106 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t106, ptr %l67, !tbaa !27
  %t107 = load i64, ptr %l13, !tbaa !24
  %t109 = ashr i64 %t107, 16
  %t111 = sub i64 %t109, 1
  %t113 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i32, ptr %t114, i64 %t111
  %t116 = load i32, ptr %t115, !tbaa !33
  %t117 = load ptr, ptr %l62, !tbaa !29
  %t119 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t117, i32 %t116)
  store i32 %t119, ptr %l72
  br label %bb23
bb23:
  %t120 = load i32, ptr %l72, !tbaa !23
  store i32 %t120, ptr %l14, !tbaa !23
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/lower:lowering", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/lower:Lowerer", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load i32, ptr %l14, !tbaa !23
  %t131 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l77
  br label %bb24
bb24:
  %t132 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t133 = load i32, ptr %l77, !tbaa !23
  %t135 = icmp eq i32 %t133, %t132
  br i1 %t135, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb29
bb26:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/lower:lowering", ptr %t137, i32 0, i32 0
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/lower:Lowerer", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  store ptr %t143, ptr %l83, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/lower:lowering", ptr %t144, i32 0, i32 2
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t148 = load i32, ptr %l14, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l87
  br label %bb27
bb27:
  %t152 = load i64, ptr %l13, !tbaa !24
  %t154 = and i64 %t152, 65535
  %t155 = load ptr, ptr %l83, !tbaa !29
  %t156 = load i32, ptr %l87, !tbaa !23
  %t158 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %s2, ptr %t155, i32 %t156, i64 %t154)
  store { i64, ptr } %t158, ptr %l90
  br label %bb28
bb28:
  %t159 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 0
  %t162 = icmp eq i64 %t160, 0
  store i1 %t162, ptr %l80, !tbaa !21
  br label %bb29
bb29:
  %t164 = load i1, ptr %l80, !tbaa !21
  br i1 %t164, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb31:
  br label %bb32
bb32:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/lower:lowering", ptr %t165, i32 0, i32 3
  %t169 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t167)
  store i32 %t169, ptr %l95
  br label %bb33
bb33:
  %t170 = load i32, ptr %l95, !tbaa !23
  store i32 %t170, ptr %l15, !tbaa !23
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/lower:lowering", ptr %t171, i32 0, i32 3
  %t175 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t173)
  store i32 %t175, ptr %l98
  br label %bb34
bb34:
  %t176 = load i32, ptr %l98, !tbaa !23
  store i32 %t176, ptr %l16, !tbaa !23
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l99, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t181 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t181, ptr %l104, !tbaa !27
  %t182 = load i64, ptr %l10, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t185, i64 %t182
  %t187 = load { i64, [4 x i64] }, ptr %t186
  %t188 = mul i64 2, 40
  %t189 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t188)
  %t190 = insertvalue { i64, ptr } undef, i64 2, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  store { i64, ptr } %t191, ptr %l107, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t194, i64 0
  store { i64, [4 x i64] } %a1, ptr %t195
  %t197 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t198, i64 1
  store { i64, [4 x i64] } %t187, ptr %t199
  %t200 = load %"compiler/source:Span", ptr %l2
  %t204 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t206 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s2, ptr %t178, i32 13, i32 %t179, { i64, ptr } %t204, %"compiler/source:Span" %t200)
  store { i64, [4 x i64] } %t206, ptr %l109
  br label %bb35
bb35:
  %t207 = load i32, ptr %l15, !tbaa !23
  %t208 = load i32, ptr %l16, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t209
  %t210 = getelementptr { i64, [8 x i64] }, ptr %t209, i32 0, i32 0
  store i64 2, ptr %t210
  %t211 = load { i64, [4 x i64] }, ptr %l109
  %t212 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t211, 0
  %t214 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t212, i32 %t207, 1
  %t216 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t214, i32 %t208, 2
  %t217 = getelementptr { i64, [8 x i64] }, ptr %t209, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t216, ptr %t217
  %t218 = load { i64, [8 x i64] }, ptr %t209
  %t219 = load ptr, ptr %l99, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t219, { i64, [8 x i64] } %t218)
  br label %bb36
bb36:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t221, i32 %t222)
  br label %bb37
bb37:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l2
  store { i64, [21 x i64] } zeroinitializer, ptr %t227
  %t228 = getelementptr { i64, [21 x i64] }, ptr %t227, i32 0, i32 0
  store i64 11, ptr %t228
  %t230 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t226, 0
  %t231 = getelementptr { i64, [21 x i64] }, ptr %t227, i32 0, i32 1
  store { %"compiler/source:Span" } %t230, ptr %t231
  %t232 = load { i64, [21 x i64] }, ptr %t227
  %t234 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t232, ptr %t234
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t225, ptr %t234)
  br label %bb38
bb38:
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l119, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t238, ptr %l120
  store i32 6, ptr %l121
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t240, ptr %l123, !tbaa !27
  %t241 = load i64, ptr %l10, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr { i64, [4 x i64] }, ptr %t244, i64 %t241
  %t246 = load { i64, [4 x i64] }, ptr %t245
  %t247 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t247, ptr %l126, !tbaa !27
  %t248 = load i64, ptr %l10, !tbaa !24
  %t250 = add i64 %t248, 1
  %t252 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t253, i64 %t250
  %t255 = load { i64, [4 x i64] }, ptr %t254
  %t256 = load i32, ptr %l3, !tbaa !23
  %t257 = load %"compiler/source:Span", ptr %l2
  %t263 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewithPayload(ptr %v0, ptr %t239, { i64, [4 x i64] } %t246, { i64, [4 x i64] } %t255, i32 %t256, %"compiler/source:Span" %t257, i1 true)
  store { i64, [4 x i64] } %t263, ptr %l132
  br label %bb39
bb39:
  store { i64, [8 x i64] } zeroinitializer, ptr %t264
  %t265 = getelementptr { i64, [8 x i64] }, ptr %t264, i32 0, i32 0
  store i64 9, ptr %t265
  %t266 = load %"compiler/source:Span", ptr %l120
  %t267 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t266, 0
  %t268 = load i32, ptr %l121, !range !{i32 0, i32 16}
  %t269 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t267, i32 %t268, 1
  %t270 = load { i64, [4 x i64] }, ptr %l132
  %t271 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t269, { i64, [4 x i64] } %t270, 2
  %t272 = getelementptr { i64, [8 x i64] }, ptr %t264, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t271, ptr %t272
  %t273 = load { i64, [8 x i64] }, ptr %t264
  %t274 = load ptr, ptr %l119, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t274, { i64, [8 x i64] } %t273)
  br label %bb40
bb40:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t276, i32 %t277)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb42:
  %t280 = load i64, ptr %l9, !tbaa !24
  %t282 = add i64 %t280, 1
  store i64 %t282, ptr %l9, !tbaa !24
  br label %bb9
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ematchCopies(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_f71032533cd82c8_29b3308e7cd66624)
  unreachable
bb8:
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Arm", ptr %t43, i32 0, i32 4
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t49 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t47, ptr %t46)
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
  call void @__olang_check_failed(ptr @olang_loc_6cc454f6892da6e7_dc94ff52b1800ff3)
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
  call void @__olang_check_failed(ptr @olang_loc_6cc454f6892da6e7_dc94ff52b1800ff3)
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
  call void @__olang_check_failed(ptr @olang_loc_6cc454f6892da6e7_dc94ff52b1800ff3)
  unreachable
bb29:
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t111 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %t109, ptr %t108)
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

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2emodule(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l43 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/load:Loader", ptr %t10, i32 0, i32 10
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l12
  br label %bb1
bb1:
  %t15 = load i64, ptr %l12, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l19, !tbaa !24
  store i64 %t42, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l16, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  br label %bb17
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l1, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l6, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/lower:Lowerer", ptr %t65, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/load:Loader", ptr %t71, i32 0, i32 10
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t73, i64 %t74)
  store ptr %t77, ptr %l43
  br label %bb12
bb12:
  %t78 = load ptr, ptr %l43, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 4
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/lower:lowering", ptr %t82, i32 0, i32 7
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = icmp eq i64 %t81, %t85
  br i1 %t88, label %bb13, label %bb14
bb13:
  %t90 = load i64, ptr %l6, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t92 = load i64, ptr %l5, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l5, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2emovedViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l22 = alloca i64
  %l25 = alloca i1
  %l30 = alloca i1
  %l38 = alloca { i64, [2 x i64] }
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l74 = alloca i64
  %l79 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca i1
  %l94 = alloca i64
  %l101 = alloca i64
  %l102 = alloca i32
  %l105 = alloca ptr
  %l108 = alloca i32
  %l110 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = trunc i64 %t5 to i32
  %t11 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t4, i32 %t7)
  store i64 %t11, ptr %l22
  br label %bb1
bb1:
  %t12 = load i64, ptr %l22, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sle i64 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb4
bb3:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t21 = and i64 %t17, %t18
  %t23 = icmp ne i64 %t21, 0
  store i1 %t23, ptr %l25, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l25, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb7
bb6:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Call", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = icmp slt i32 %t29, 0
  store i1 %t31, ptr %l30, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l30, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t37 = load i64, ptr %l2, !tbaa !24
  %t41 = call { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScopeAt(ptr %v0, ptr %v1, ptr %t35, ptr %t36, i64 %t37)
  store { i64, [2 x i64] } %t41, ptr %l38
  br label %bb11
bb11:
  %t42 = load { i64, [2 x i64] }, ptr %l38
  store { i64, [2 x i64] } %t42, ptr %l4
  %t43 = load { i64, [2 x i64] }, ptr %l4
  %t45 = extractvalue { i64, [2 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 1
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t52 = getelementptr { i32 }, ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l5, !tbaa !23
  store i64 0, ptr %l6, !tbaa !24
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Call", ptr %t55, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t60, i64 %t61)
  store i64 %t64, ptr %l48
  br label %bb15
bb15:
  %t65 = load i64, ptr %l48, !tbaa !24
  store i64 %t65, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb16, label %bb17
bb16:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb21
bb18:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l55, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l52, !tbaa !24
  br label %bb21
bb21:
  %t93 = load i64, ptr %l52, !tbaa !24
  store i64 %t93, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb22
bb22:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb23, label %bb24
bb23:
  br label %bb44
bb24:
  br label %bb25
bb25:
  %t102 = load i64, ptr %l6, !tbaa !24
  %t103 = load i64, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l11, !tbaa !24
  %t112 = load i64, ptr %l3, !tbaa !24
  %t113 = load i64, ptr %l11, !tbaa !24
  store i64 %t113, ptr %l74, !tbaa !24
  %t114 = load i64, ptr %l74, !tbaa !24
  %t115 = load i64, ptr %l74, !tbaa !24
  %t116 = shl i64 1, %t115
  %t119 = and i64 %t112, %t116
  %t121 = icmp eq i64 %t119, 0
  br i1 %t121, label %bb26, label %bb27
bb26:
  br label %bb43
bb27:
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Call", ptr %t123, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l79, !tbaa !27
  %t127 = load i64, ptr %l11, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr ptr, ptr %t130, i64 %t127
  %t132 = load ptr, ptr %t131, !tbaa !39
  store ptr %t132, ptr %l12, !tbaa !29
  %t134 = load ptr, ptr %l12, !tbaa !29
  store ptr %t134, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t135 = load ptr, ptr %l82, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb29, label %bb30
bb29:
  %t138 = load ptr, ptr %l82, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 18}
  %t141 = icmp eq i64 %t139, 7
  store i1 %t141, ptr %l83, !tbaa !21
  br label %bb30
bb30:
  %t142 = load i1, ptr %l83, !tbaa !21
  %t143 = xor i1 %t142, true
  br i1 %t143, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t146 = load ptr, ptr %l12, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 0
  %t150 = load %"compiler/source:Span", ptr %t149
  store %"compiler/source:Span" %t150, ptr %l13
  %t152 = load ptr, ptr %l12, !tbaa !29
  %t154 = getelementptr { i64, [5 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t154, i32 0, i32 1
  %t156 = load i32, ptr %t155
  store i32 %t156, ptr %l14, !tbaa !23
  %t158 = load ptr, ptr %l12, !tbaa !29
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t160, i32 0, i32 2
  %t162 = load ptr, ptr %t161
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/lower:lowering", ptr %t164, i32 0, i32 58
  %t170 = getelementptr %"compiler/typed:Make", ptr %t162, i32 0, i32 4
  %t171 = load i32, ptr %t170, !tbaa !23
  %t173 = sext i32 %t171 to i64
  %t176 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t166, i64 %t173)
  %t177 = extractvalue { i32, i64 } %t176, 1
  %t178 = extractvalue { i32, i64 } %t176, 0
  store i32 %t178, ptr %l102
  %t179 = icmp ne i32 %t178, 0
  br i1 %t179, label %bb35, label %ok.180, !prof !99
ok.180:
  store i64 %t177, ptr %l101
  br label %bb34
bb34:
  %t181 = load i64, ptr %l101, !tbaa !24
  store i64 %t181, ptr %l94, !tbaa !24
  br label %bb37
bb35:
  br label %bb36
bb36:
  store i1 false, ptr %rv
  br label %ret
bb37:
  %t183 = load i64, ptr %l94, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/lower:lowering", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  store ptr %t187, ptr %l105, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t192 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estorageBlock(ptr %v0, ptr %t188, i64 %t183)
  store i32 %t192, ptr %l108
  br label %bb38
bb38:
  %t193 = load i32, ptr %l5, !tbaa !23
  %t194 = load ptr, ptr %l105, !tbaa !29
  %t195 = load i32, ptr %l108, !tbaa !23
  %t197 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t194, i32 %t195, i32 %t193)
  store i1 %t197, ptr %l110
  br label %bb39
bb39:
  %t198 = load i1, ptr %l110, !tbaa !21
  %t199 = xor i1 %t198, true
  br i1 %t199, label %bb40, label %bb41
bb40:
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t202 = load i64, ptr %l10, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l10, !tbaa !24
  br label %bb22
bb44:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enullScope(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l13 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [1 x i64] }
  %t27 = alloca { i64, [4 x i64] }, align 8
  %t34 = alloca { i64, [15 x i64] }, align 8
  %t40 = alloca { i64, [21 x i64] }, align 8
  %t55 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/lower:lowering", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 4
  %t9 = load %"compiler/source:Span", ptr %t8
  %t13 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t1, i32 %t2, %"compiler/source:Span" %t9)
  store i32 %t13, ptr %l7
  br label %bb1
bb1:
  %t14 = load i32, ptr %l7, !tbaa !23
  store i32 %t14, ptr %l1, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l8, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Body", ptr %t19, i32 0, i32 4
  %t22 = load %"compiler/source:Span", ptr %t21
  store %"compiler/source:Span" %t22, ptr %l11
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t23)
  store %"compiler/mir:Lvalue" %t25, ptr %l13
  br label %bb2
bb2:
  %t26 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t27
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t27, i32 0, i32 0
  store i64 2, ptr %t28
  %t30 = insertvalue { i32, i64 } undef, i32 %t26, 0
  %t31 = insertvalue { i32, i64 } %t30, i64 0, 1
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t27, i32 0, i32 1
  store { i32, i64 } %t31, ptr %t32
  %t33 = load { i64, [4 x i64] }, ptr %t27
  store { i64, [15 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [15 x i64] }, ptr %t34, i32 0, i32 0
  store i64 0, ptr %t35
  %t37 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t33, 0
  %t38 = getelementptr { i64, [15 x i64] }, ptr %t34, i32 0, i32 1
  store { { i64, [4 x i64] } } %t37, ptr %t38
  %t39 = load { i64, [15 x i64] }, ptr %t34
  store { i64, [21 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [21 x i64] }, ptr %t40, i32 0, i32 0
  store i64 0, ptr %t41
  %t42 = load %"compiler/source:Span", ptr %l11
  %t43 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t42, 0
  %t44 = load %"compiler/mir:Lvalue", ptr %l13
  %t45 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t43, %"compiler/mir:Lvalue" %t44, 1
  %t47 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t45, { i64, [15 x i64] } %t39, 2
  %t48 = getelementptr { i64, [21 x i64] }, ptr %t40, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t47, ptr %t48
  %t49 = load { i64, [21 x i64] }, ptr %t40
  %t51 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t49, ptr %t51
  %t52 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t52, ptr %t51)
  br label %bb3
bb3:
  %t54 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [1 x i64] }, ptr %t55, i32 0, i32 0
  store i64 4, ptr %t56
  %t58 = insertvalue { i32 } undef, i32 %t54, 0
  %t59 = getelementptr { i64, [1 x i64] }, ptr %t55, i32 0, i32 1
  store { i32 } %t58, ptr %t59
  %t60 = load { i64, [1 x i64] }, ptr %t55
  call void @__olang_scope_close(ptr %s0)
  store { i64, [1 x i64] } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [1 x i64] }, ptr %rv
  ret { i64, [1 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eownsStorage(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i1
  %l10 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lower:lowering", ptr %t10, i32 0, i32 2
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l10
  br label %bb4
bb4:
  %t18 = load i1, ptr %l10, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l6, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epatch(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i32
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i32
  %s0 = alloca %olang.scope
  %t37 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v1, ptr %l1)
  store i64 %t2, ptr %l7
  br label %bb1
bb1:
  %t3 = load i64, ptr %l7, !tbaa !24
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 10
  store i1 true, ptr %t8, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 3
  %t13 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t11)
  store i32 %t13, ptr %l12
  br label %bb5
bb5:
  %t14 = load i32, ptr %l12, !tbaa !23
  store i32 %t14, ptr %l2, !tbaa !23
  store ptr %l1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l14, !tbaa !24
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %t17)
  store i64 %t19, ptr %l16
  br label %bb7
bb7:
  %t20 = load i64, ptr %l14, !tbaa !24
  %t21 = load i64, ptr %l16, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %t26, i64 %t27)
  store i32 %t30, ptr %l21
  br label %bb11
bb11:
  %t31 = load i32, ptr %l21, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lower:lowering", ptr %t32, i32 0, i32 3
  %t36 = load i32, ptr %l2, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [8 x i64] }, ptr %t37, i32 0, i32 0
  store i64 1, ptr %t38
  %t40 = insertvalue { i32 } undef, i32 %t36, 0
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t37, i32 0, i32 1
  store { i32 } %t40, ptr %t41
  %t42 = load { i64, [8 x i64] }, ptr %t37
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %t34, i32 %t31, { i64, [8 x i64] } %t42)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  br label %bb6
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t50, i32 %t51)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2epopIf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l19 = alloca i32
  %s0 = alloca %olang.scope
  %t32 = alloca { i64, [8 x i64] }, align 8
  %t50 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = load %"compiler/source:Span", ptr %l3
  %t9 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecarries(ptr %v0, ptr %t1, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %t4)
  store { i64, [4 x i64] } %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t10, ptr %l4
  %t11 = load { i64, [4 x i64] }, ptr %l4
  %t13 = extractvalue { i64, [4 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 3
  %t20 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t18)
  store i32 %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load i32, ptr %l16, !tbaa !23
  store i32 %t21, ptr %l5, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lower:lowering", ptr %t22, i32 0, i32 3
  %t26 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t24)
  store i32 %t26, ptr %l19
  br label %bb6
bb6:
  %t27 = load i32, ptr %l19, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load { i64, [4 x i64] }, ptr %l4
  %t30 = load i32, ptr %l5, !tbaa !23
  %t31 = load i32, ptr %l6, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 0
  store i64 2, ptr %t33
  %t35 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t29, 0
  %t37 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t35, i32 %t30, 1
  %t39 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t37, i32 %t31, 2
  %t40 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t39, ptr %t40
  %t41 = load { i64, [8 x i64] }, ptr %t32
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t28, { i64, [8 x i64] } %t41)
  br label %bb7
bb7:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t44, i32 %t45)
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l3
  store { i64, [21 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [21 x i64] }, ptr %t50, i32 0, i32 0
  store i64 13, ptr %t51
  %t53 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t49, 0
  %t54 = getelementptr { i64, [21 x i64] }, ptr %t50, i32 0, i32 1
  store { %"compiler/source:Span" } %t53, ptr %t54
  %t55 = load { i64, [21 x i64] }, ptr %t50
  %t57 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t55, ptr %t57
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t48, ptr %t57)
  br label %bb9
bb9:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t60, i32 %t61)
  br label %bb10
bb10:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t64, i32 %t65)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprimExpr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, i32 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca %"compiler/lower:pl"
  %l17 = alloca { i64, [1 x i64] }
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca { i64, [2 x i64] }
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l32 = alloca i32
  %l33 = alloca { i64, [4 x i64] }
  %l34 = alloca { i64, [4 x i64] }
  %l35 = alloca { i64, [4 x i64] }
  %l37 = alloca { i64, [4 x i64] }
  %l39 = alloca { i64, [4 x i64] }
  %l40 = alloca ptr
  %l41 = alloca { i64, [4 x i64] }
  %l42 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, [1 x i64] }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l49 = alloca i32
  %l50 = alloca i32
  %l51 = alloca { i64, [4 x i64] }
  %l60 = alloca { i64, [4 x i64] }
  %l63 = alloca i1
  %l66 = alloca i1
  %l75 = alloca { i64, [4 x i64] }
  %l79 = alloca { i64, ptr }
  %l82 = alloca { i64, [4 x i64] }
  %l86 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca i32
  %l89 = alloca { i64, [4 x i64] }
  %l90 = alloca { i64, ptr }
  %l92 = alloca i32
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, [4 x i64] }
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, [4 x i64] }
  %l110 = alloca ptr
  %l111 = alloca i32
  %l112 = alloca i32
  %l113 = alloca { i64, [4 x i64] }
  %l114 = alloca { i64, ptr }
  %l116 = alloca i32
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, [4 x i64] }
  %l131 = alloca { i64, ptr }
  %l133 = alloca { i64, [4 x i64] }
  %l137 = alloca { i64, ptr }
  %l140 = alloca { i64, [4 x i64] }
  %l144 = alloca ptr
  %l145 = alloca { i64, [4 x i64] }
  %l146 = alloca { i64, ptr }
  %l148 = alloca i32
  %l154 = alloca { i64, ptr }
  %l157 = alloca { i64, [4 x i64] }
  %l165 = alloca { i64, [4 x i64] }
  %l169 = alloca { i64, ptr }
  %l172 = alloca { i64, [4 x i64] }
  %l176 = alloca ptr
  %l177 = alloca { i64, [4 x i64] }
  %l178 = alloca { i64, ptr }
  %l180 = alloca i32
  %l182 = alloca i32
  %l183 = alloca ptr
  %l184 = alloca ptr
  %l185 = alloca i32
  %l186 = alloca { i64, ptr }
  %l188 = alloca i32
  %l189 = alloca { i64, [4 x i64] }
  %l191 = alloca ptr
  %l192 = alloca { i64, ptr }
  %l194 = alloca i32
  %l195 = alloca i32
  %l200 = alloca { i64, ptr }
  %l202 = alloca ptr
  %l203 = alloca i1
  %l211 = alloca %"compiler/lower:pl"
  %l213 = alloca %"compiler/lower:pl"
  %l219 = alloca { i64, [1 x i64] }
  %l223 = alloca i1
  %l224 = alloca ptr
  %l225 = alloca i1
  %l228 = alloca i1
  %l240 = alloca %"compiler/typed:Local"
  %l249 = alloca { i64, [1 x i64] }
  %l254 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l257 = alloca { i64, ptr }
  %l259 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l261 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l262 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l265 = alloca i1
  %l266 = alloca ptr
  %l267 = alloca i1
  %l271 = alloca { i64, [2 x i64] }
  %l274 = alloca { i64, ptr }
  %l276 = alloca { i64, [2 x i64] }
  %l278 = alloca ptr
  %l279 = alloca %"compiler/lower:pl"
  %l281 = alloca %"compiler/lower:pl"
  %l283 = alloca i32
  %l286 = alloca { i64, [1 x i64] }
  %l288 = alloca { i64, [1 x i64] }
  %l291 = alloca { i64, [1 x i64] }
  %l292 = alloca %"compiler/source:Span"
  %l294 = alloca i64
  %l295 = alloca i1
  %l296 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l298 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l301 = alloca i1
  %l304 = alloca i1
  %l305 = alloca ptr
  %l306 = alloca i1
  %l309 = alloca i1
  %l325 = alloca ptr
  %l328 = alloca i32
  %l329 = alloca ptr
  %l331 = alloca i32
  %l332 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l337 = alloca ptr
  %l339 = alloca i32
  %l341 = alloca i32
  %l342 = alloca ptr
  %l343 = alloca i32
  %l346 = alloca %"compiler/mir:Lvalue"
  %l350 = alloca { i64, [4 x i64] }
  %l351 = alloca ptr
  %l352 = alloca %"compiler/source:Span"
  %l353 = alloca { i64, [1 x i64] }
  %l355 = alloca i32
  %l365 = alloca { i64, ptr }
  %l368 = alloca { i64, [4 x i64] }
  %l370 = alloca { i64, ptr }
  %l373 = alloca { i64, [4 x i64] }
  %l382 = alloca { i64, ptr }
  %l384 = alloca { i64, [4 x i64] }
  %l385 = alloca ptr
  %l386 = alloca { i64, [4 x i64] }
  %l390 = alloca i32
  %l400 = alloca { i64, ptr }
  %l403 = alloca { i64, [4 x i64] }
  %l407 = alloca ptr
  %l408 = alloca i32
  %l409 = alloca i32
  %l410 = alloca { i64, [4 x i64] }
  %l412 = alloca { i64, [4 x i64] }
  %l413 = alloca { i64, ptr }
  %l415 = alloca { i64, [4 x i64] }
  %l416 = alloca ptr
  %l417 = alloca { i64, [4 x i64] }
  %l421 = alloca i32
  %l431 = alloca { i64, ptr }
  %l434 = alloca { i64, [4 x i64] }
  %l438 = alloca ptr
  %l439 = alloca { i64, [4 x i64] }
  %l443 = alloca i32
  %l452 = alloca i1
  %l456 = alloca i1
  %l459 = alloca i1
  %l460 = alloca i1
  %l461 = alloca ptr
  %l462 = alloca { i64, ptr }
  %l464 = alloca i32
  %l466 = alloca i1
  %l468 = alloca { i64, ptr }
  %l470 = alloca ptr
  %l474 = alloca i1
  %l475 = alloca ptr
  %l476 = alloca { i64, ptr }
  %l478 = alloca i32
  %l479 = alloca i32
  %l482 = alloca i1
  %l483 = alloca ptr
  %l484 = alloca ptr
  %l485 = alloca { i64, ptr }
  %l487 = alloca i32
  %l488 = alloca i32
  %l489 = alloca i64
  %l494 = alloca { i64, [4 x i64] }
  %l502 = alloca { i64, ptr }
  %l504 = alloca { i64, [4 x i64] }
  %l507 = alloca i1
  %l511 = alloca i1
  %l514 = alloca i1
  %l515 = alloca { i64, ptr }
  %l517 = alloca ptr
  %l518 = alloca i1
  %l527 = alloca i32
  %l531 = alloca i1
  %l535 = alloca i1
  %l536 = alloca ptr
  %l539 = alloca i32
  %l540 = alloca i1
  %l542 = alloca i1
  %l546 = alloca i1
  %l549 = alloca i64
  %l551 = alloca i1
  %l552 = alloca ptr
  %l555 = alloca i32
  %l556 = alloca i64
  %l558 = alloca i1
  %l565 = alloca { i64, [1 x i64] }
  %l569 = alloca { i64, [4 x i64] }
  %l575 = alloca { i64, [4 x i64] }
  %l581 = alloca { i64, [4 x i64] }
  %l584 = alloca { i64, ptr }
  %l590 = alloca i1
  %l594 = alloca i1
  %l597 = alloca i32
  %l600 = alloca i1
  %l601 = alloca ptr
  %l602 = alloca { i64, ptr }
  %l604 = alloca i32
  %l605 = alloca i32
  %l610 = alloca i1
  %l611 = alloca i1
  %l612 = alloca ptr
  %l613 = alloca { i64, ptr }
  %l615 = alloca i32
  %l616 = alloca i1
  %l617 = alloca ptr
  %l618 = alloca { i64, [4 x i64] }
  %l619 = alloca { i64, ptr }
  %l621 = alloca i32
  %l624 = alloca { i64, [4 x i64] }
  %l625 = alloca ptr
  %l626 = alloca i32
  %l627 = alloca { i64, [4 x i64] }
  %l628 = alloca ptr
  %l629 = alloca { i64, ptr }
  %l631 = alloca i32
  %l632 = alloca i32
  %l635 = alloca i32
  %l638 = alloca { i64, [4 x i64] }
  %l643 = alloca i1
  %l644 = alloca ptr
  %l645 = alloca { i64, [4 x i64] }
  %l646 = alloca { i64, ptr }
  %l648 = alloca i32
  %l649 = alloca i32
  %l650 = alloca %"compiler/source:Span"
  %l652 = alloca { i64, [1 x i64] }
  %l653 = alloca { i64, [4 x i64] }
  %l656 = alloca i1
  %l657 = alloca ptr
  %l658 = alloca ptr
  %l659 = alloca { i64, ptr }
  %l661 = alloca i32
  %l662 = alloca i32
  %l663 = alloca i1
  %l664 = alloca ptr
  %l665 = alloca { i64, [4 x i64] }
  %l666 = alloca { i64, ptr }
  %l668 = alloca i32
  %l671 = alloca { i64, [4 x i64] }
  %l684 = alloca i1
  %l687 = alloca i1
  %l691 = alloca i1
  %l692 = alloca ptr
  %l693 = alloca { i64, ptr }
  %l695 = alloca i32
  %l696 = alloca i1
  %l697 = alloca { i64, ptr }
  %l699 = alloca i32
  %l704 = alloca i32
  %l709 = alloca i32
  %l710 = alloca ptr
  %l713 = alloca %"compiler/lower:pl"
  %l716 = alloca %"compiler/lower:pl"
  %l719 = alloca { i64, [4 x i64] }
  %l722 = alloca { i64, [4 x i64] }
  %l728 = alloca { i64, ptr }
  %l730 = alloca { i64, [4 x i64] }
  %l736 = alloca { i64, [4 x i64] }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t73 = alloca { i64, [4 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t136 = alloca { i64, [4 x i64] }, align 8
  %t157 = alloca { i64, [4 x i64] }, align 8
  %t236 = alloca { i64, [4 x i64] }, align 8
  %t254 = alloca { i64, [4 x i64] }, align 8
  %t279 = alloca { i64, [4 x i64] }, align 8
  %t314 = alloca { i64, [4 x i64] }, align 8
  %t367 = alloca { i64, [4 x i64] }, align 8
  %t411 = alloca { i64, [4 x i64] }, align 8
  %t549 = alloca { i64, [2 x i64] }, align 8
  %t675 = alloca { i64, [4 x i64] }, align 8
  %t700 = alloca { i64, [15 x i64] }, align 8
  %t722 = alloca { i64, [21 x i64] }, align 8
  %t742 = alloca { i64, [4 x i64] }, align 8
  %t778 = alloca { i64, [4 x i64] }, align 8
  %t849 = alloca { i64, [4 x i64] }, align 8
  %t899 = alloca { i64, [4 x i64] }, align 8
  %t924 = alloca { i64, [4 x i64] }, align 8
  %t1048 = alloca { i64, [4 x i64] }, align 8
  %t1244 = alloca { i64, [4 x i64] }, align 8
  %t1350 = alloca { i64, [15 x i64] }, align 8
  %t1536 = alloca { i64, [2 x i64] }, align 8
  %t1545 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t8 = trunc i64 42 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load %"compiler/source:Span", ptr %l5
  %t19 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eanyMake(ptr %v0, ptr %v1, ptr %t11, { i64, ptr } %t12, i32 %t13, %"compiler/source:Span" %t14)
  store { i64, [4 x i64] } %t19, ptr %l60
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, [4 x i64] }, ptr %l60
  store { i64, [4 x i64] } %t20, ptr %rv
  br label %ret
bb4:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t23 = trunc i64 29 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 31
  %t29 = load i1, ptr %t28, !tbaa !21
  store i1 %t29, ptr %l63, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l63, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lower:lowering", ptr %t32, i32 0, i32 37
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l66, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l66, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = load i32, ptr %l4, !tbaa !23
  %t44 = load %"compiler/source:Span", ptr %l5
  %t50 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eretire(ptr %v0, ptr %v1, ptr %t40, i32 %t41, { i64, ptr } %t42, i32 %t43, %"compiler/source:Span" %t44)
  store { i64, [4 x i64] } %t50, ptr %l75
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load { i64, [4 x i64] }, ptr %l75
  store { i64, [4 x i64] } %t51, ptr %rv
  br label %ret
bb14:
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t54 = trunc i64 44 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t58, ptr %l79, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 0
  %t62 = load ptr, ptr %t61, !tbaa !39
  %t66 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t57, ptr %t62)
  store { i64, [4 x i64] } %t66, ptr %l82
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t67 = load { i64, [4 x i64] }, ptr %l82
  store { i64, [4 x i64] } %t67, ptr %l7
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t68, i32 0, i32 10
  %t71 = load i1, ptr %t70, !tbaa !21
  br i1 %t71, label %bb18, label %bb19
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t73
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 0
  store i64 0, ptr %t74
  %t75 = load { i64, [4 x i64] }, ptr %t73
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t75, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l86, !tbaa !29
  %t78 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t78, ptr %l87
  %t79 = load i32, ptr %l4, !tbaa !23
  store i32 %t79, ptr %l88, !tbaa !23
  %t80 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t80, ptr %l89
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t81, ptr %l90, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 1
  %t85 = load ptr, ptr %t84, !tbaa !39
  %t87 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t85)
  store i32 %t87, ptr %l92
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 2, ptr %t89
  %t90 = load i32, ptr %l92, !tbaa !23
  %t91 = insertvalue { i32, i64 } undef, i32 %t90, 0
  %t92 = insertvalue { i32, i64 } %t91, i64 0, 1
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { i32, i64 } %t92, ptr %t93
  %t94 = load { i64, [4 x i64] }, ptr %t88
  %t95 = mul i64 2, 40
  %t96 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 2, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l94, !tbaa !27
  %t99 = load { i64, [4 x i64] }, ptr %l89
  %t100 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr { i64, [4 x i64] }, ptr %t101, i64 0
  store { i64, [4 x i64] } %t99, ptr %t102
  %t104 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t105, i64 1
  store { i64, [4 x i64] } %t94, ptr %t106
  %t107 = load %"compiler/source:Span", ptr %l5
  %t108 = load ptr, ptr %l86, !tbaa !29
  %t109 = load i32, ptr %l87, !range !{i32 0, i32 52}
  %t110 = load i32, ptr %l88, !tbaa !23
  %t111 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t113 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s3, ptr %t108, i32 %t109, i32 %t110, { i64, ptr } %t111, %"compiler/source:Span" %t107)
  store { i64, [4 x i64] } %t113, ptr %l96
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t114 = load { i64, [4 x i64] }, ptr %l96
  store { i64, [4 x i64] } %t114, ptr %rv
  br label %ret
bb23:
  %t115 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t117 = trunc i64 43 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t121, ptr %l100, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr ptr, ptr %t123, i64 0
  %t125 = load ptr, ptr %t124, !tbaa !39
  %t129 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t120, ptr %t125)
  store { i64, [4 x i64] } %t129, ptr %l103
  br label %bb26
bb25:
  br label %bb37
bb26:
  %t130 = load { i64, [4 x i64] }, ptr %l103
  store { i64, [4 x i64] } %t130, ptr %l8
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/lower:lowering", ptr %t131, i32 0, i32 10
  %t134 = load i1, ptr %t133, !tbaa !21
  br i1 %t134, label %bb27, label %bb28
bb27:
  store { i64, [4 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 0
  store i64 0, ptr %t137
  %t138 = load { i64, [4 x i64] }, ptr %t136
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t138, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t140 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t142 = trunc i64 0 to i32
  %t143 = icmp eq i32 %t140, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l110, !tbaa !29
  store i32 44, ptr %l111
  %t148 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t148, ptr %l112, !tbaa !23
  %t149 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } %t149, ptr %l113
  %t150 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t150, ptr %l114, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 1
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t156 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t154)
  store i32 %t156, ptr %l116
  br label %bb32
bb31:
  br label %bb35
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t157
  %t158 = getelementptr { i64, [4 x i64] }, ptr %t157, i32 0, i32 0
  store i64 2, ptr %t158
  %t159 = load i32, ptr %l116, !tbaa !23
  %t160 = insertvalue { i32, i64 } undef, i32 %t159, 0
  %t161 = insertvalue { i32, i64 } %t160, i64 0, 1
  %t162 = getelementptr { i64, [4 x i64] }, ptr %t157, i32 0, i32 1
  store { i32, i64 } %t161, ptr %t162
  %t163 = load { i64, [4 x i64] }, ptr %t157
  %t164 = mul i64 2, 40
  %t165 = call ptr @__olang_scope_alloc_zeroed(ptr %s7, i64 %t164)
  %t166 = insertvalue { i64, ptr } undef, i64 2, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l118, !tbaa !27
  %t168 = load { i64, [4 x i64] }, ptr %l113
  %t169 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t170, i64 0
  store { i64, [4 x i64] } %t168, ptr %t171
  %t173 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t174, i64 1
  store { i64, [4 x i64] } %t163, ptr %t175
  %t176 = load %"compiler/source:Span", ptr %l5
  %t177 = load ptr, ptr %l110, !tbaa !29
  %t178 = load i32, ptr %l111, !range !{i32 0, i32 52}
  %t179 = load i32, ptr %l112, !tbaa !23
  %t180 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t182 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s7, ptr %t177, i32 %t178, i32 %t179, { i64, ptr } %t180, %"compiler/source:Span" %t176)
  store { i64, [4 x i64] } %t182, ptr %l120
  br label %bb33
bb33:
  %t183 = load { i64, [4 x i64] }, ptr %l120
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t187 = load i64, ptr @G_2ecompiler_2flower_2eWrongCase, !tbaa !24
  %t188 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t184, { i64, [4 x i64] } %t183, i32 %t186, i32 10, i64 %t187, %"compiler/source:Span" %t188)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb35
bb35:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t197 = load i32, ptr %l4, !tbaa !23
  %t198 = load { i64, [4 x i64] }, ptr %l8
  %t199 = mul i64 1, 40
  %t200 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t199)
  %t201 = insertvalue { i64, ptr } undef, i64 1, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l131, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t205, i64 0
  store { i64, [4 x i64] } %t198, ptr %t206
  %t207 = load %"compiler/source:Span", ptr %l5
  %t211 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t213 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s5, ptr %t195, i32 %t196, i32 %t197, { i64, ptr } %t211, %"compiler/source:Span" %t207)
  store { i64, [4 x i64] } %t213, ptr %l133
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t214 = load { i64, [4 x i64] }, ptr %l133
  store { i64, [4 x i64] } %t214, ptr %rv
  br label %ret
bb37:
  %t215 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t217 = trunc i64 45 to i32
  %t218 = icmp eq i32 %t215, %t217
  br i1 %t218, label %bb38, label %bb39
bb38:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t221, ptr %l137, !tbaa !27
  %t222 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr ptr, ptr %t223, i64 0
  %t225 = load ptr, ptr %t224, !tbaa !39
  %t229 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t220, ptr %t225)
  store { i64, [4 x i64] } %t229, ptr %l140
  br label %bb40
bb39:
  br label %bb46
bb40:
  %t230 = load { i64, [4 x i64] }, ptr %l140
  store { i64, [4 x i64] } %t230, ptr %l10
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/lower:lowering", ptr %t231, i32 0, i32 10
  %t234 = load i1, ptr %t233, !tbaa !21
  br i1 %t234, label %bb41, label %bb42
bb41:
  store { i64, [4 x i64] } zeroinitializer, ptr %t236
  %t237 = getelementptr { i64, [4 x i64] }, ptr %t236, i32 0, i32 0
  store i64 0, ptr %t237
  %t238 = load { i64, [4 x i64] }, ptr %t236
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t238, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t240 = load ptr, ptr %l0, !tbaa !29
  store ptr %t240, ptr %l144, !tbaa !29
  %t241 = load { i64, [4 x i64] }, ptr %l10
  store { i64, [4 x i64] } %t241, ptr %l145
  %t242 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t242, ptr %l146, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr ptr, ptr %t244, i64 0
  %t246 = load ptr, ptr %t245, !tbaa !39
  %t248 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t246)
  store i32 %t248, ptr %l148
  br label %bb44
bb44:
  %t249 = load %"compiler/source:Span", ptr %l5
  %t250 = load ptr, ptr %l144, !tbaa !29
  %t251 = load { i64, [4 x i64] }, ptr %l145
  %t252 = load i32, ptr %l148, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrPush(ptr %v0, ptr %t250, { i64, [4 x i64] } %t251, i32 %t252, %"compiler/source:Span" %t249)
  br label %bb45
bb45:
  store { i64, [4 x i64] } zeroinitializer, ptr %t254
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t254, i32 0, i32 0
  store i64 0, ptr %t255
  %t256 = load { i64, [4 x i64] }, ptr %t254
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t256, ptr %rv
  br label %ret
bb46:
  %t258 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t260 = trunc i64 46 to i32
  %t261 = icmp eq i32 %t258, %t260
  br i1 %t261, label %bb47, label %bb48
bb47:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t264, ptr %l154, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr ptr, ptr %t266, i64 0
  %t268 = load ptr, ptr %t267, !tbaa !39
  %t272 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t263, ptr %t268)
  store { i64, [4 x i64] } %t272, ptr %l157
  br label %bb49
bb48:
  br label %bb54
bb49:
  %t273 = load { i64, [4 x i64] }, ptr %l157
  store { i64, [4 x i64] } %t273, ptr %l11
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/lower:lowering", ptr %t274, i32 0, i32 10
  %t277 = load i1, ptr %t276, !tbaa !21
  br i1 %t277, label %bb50, label %bb51
bb50:
  store { i64, [4 x i64] } zeroinitializer, ptr %t279
  %t280 = getelementptr { i64, [4 x i64] }, ptr %t279, i32 0, i32 0
  store i64 0, ptr %t280
  %t281 = load { i64, [4 x i64] }, ptr %t279
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t281, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load { i64, [4 x i64] }, ptr %l11
  %t285 = load i32, ptr %l4, !tbaa !23
  %t286 = load %"compiler/source:Span", ptr %l5
  %t291 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCaught(ptr %v0, ptr %t283, { i64, [4 x i64] } %t284, i32 %t285, %"compiler/source:Span" %t286)
  store { i64, [4 x i64] } %t291, ptr %l165
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t292 = load { i64, [4 x i64] }, ptr %l165
  store { i64, [4 x i64] } %t292, ptr %rv
  br label %ret
bb54:
  %t293 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t295 = trunc i64 47 to i32
  %t296 = icmp eq i32 %t293, %t295
  br i1 %t296, label %bb55, label %bb56
bb55:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t299, ptr %l169, !tbaa !27
  %t300 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr ptr, ptr %t301, i64 0
  %t303 = load ptr, ptr %t302, !tbaa !39
  %t307 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t298, ptr %t303)
  store { i64, [4 x i64] } %t307, ptr %l172
  br label %bb57
bb56:
  br label %bb68
bb57:
  %t308 = load { i64, [4 x i64] }, ptr %l172
  store { i64, [4 x i64] } %t308, ptr %l12
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/lower:lowering", ptr %t309, i32 0, i32 10
  %t312 = load i1, ptr %t311, !tbaa !21
  br i1 %t312, label %bb58, label %bb59
bb58:
  store { i64, [4 x i64] } zeroinitializer, ptr %t314
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t314, i32 0, i32 0
  store i64 0, ptr %t315
  %t316 = load { i64, [4 x i64] }, ptr %t314
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t316, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l176, !tbaa !29
  %t319 = load { i64, [4 x i64] }, ptr %l12
  store { i64, [4 x i64] } %t319, ptr %l177
  %t320 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t320, ptr %l178, !tbaa !27
  %t321 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr ptr, ptr %t322, i64 0
  %t324 = load ptr, ptr %t323, !tbaa !39
  %t326 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t324)
  store i32 %t326, ptr %l180
  br label %bb61
bb61:
  %t327 = load %"compiler/source:Span", ptr %l5
  %t328 = load ptr, ptr %l176, !tbaa !29
  %t329 = load { i64, [4 x i64] }, ptr %l177
  %t330 = load i32, ptr %l180, !tbaa !23
  %t332 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t328, { i64, [4 x i64] } %t329, i32 %t330, %"compiler/source:Span" %t327)
  store i32 %t332, ptr %l182
  br label %bb62
bb62:
  %t333 = load i32, ptr %l182, !tbaa !23
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l183, !tbaa !29
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l184, !tbaa !29
  store i32 %t333, ptr %l185, !tbaa !23
  %t337 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t337, ptr %l186, !tbaa !27
  %t338 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr ptr, ptr %t339, i64 0
  %t341 = load ptr, ptr %t340, !tbaa !39
  %t343 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t341)
  store i32 %t343, ptr %l188
  br label %bb63
bb63:
  %t344 = load ptr, ptr %l184, !tbaa !29
  %t345 = load i32, ptr %l185, !tbaa !23
  %t346 = load i32, ptr %l188, !tbaa !23
  %t347 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %t344, i32 %t345, i32 %t346)
  store { i64, [4 x i64] } %t347, ptr %l189
  br label %bb64
bb64:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/lower:lowering", ptr %t348, i32 0, i32 2
  %t351 = load ptr, ptr %t350, !tbaa !29
  store ptr %t351, ptr %l191, !tbaa !29
  %t352 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t352, ptr %l192, !tbaa !27
  %t353 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr ptr, ptr %t354, i64 0
  %t356 = load ptr, ptr %t355, !tbaa !39
  %t358 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t356)
  store i32 %t358, ptr %l194
  br label %bb65
bb65:
  %t359 = load ptr, ptr %l191, !tbaa !29
  %t360 = load i32, ptr %l194, !tbaa !23
  %t361 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t359, i32 %t360)
  store i32 %t361, ptr %l195
  br label %bb66
bb66:
  %t362 = load %"compiler/source:Span", ptr %l5
  %t363 = load ptr, ptr %l183, !tbaa !29
  %t364 = load { i64, [4 x i64] }, ptr %l189
  %t365 = load i32, ptr %l195, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epopIf(ptr %v0, ptr %t363, { i64, [4 x i64] } %t364, i32 %t365, %"compiler/source:Span" %t362)
  br label %bb67
bb67:
  store { i64, [4 x i64] } zeroinitializer, ptr %t367
  %t368 = getelementptr { i64, [4 x i64] }, ptr %t367, i32 0, i32 0
  store i64 0, ptr %t368
  %t369 = load { i64, [4 x i64] }, ptr %t367
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t369, ptr %rv
  br label %ret
bb68:
  %t371 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t373 = trunc i64 30 to i32
  %t374 = icmp eq i32 %t371, %t373
  br i1 %t374, label %bb69, label %bb70
bb69:
  %t376 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t376, ptr %l200, !tbaa !27
  %t377 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !27
  %t379 = getelementptr ptr, ptr %t378, i64 0
  %t380 = load ptr, ptr %t379, !tbaa !39
  store ptr %t380, ptr %l14, !tbaa !29
  %t382 = load ptr, ptr %l14, !tbaa !29
  store ptr %t382, ptr %l202, !tbaa !29
  store i1 false, ptr %l203, !tbaa !21
  %t383 = load ptr, ptr %l202, !tbaa !29
  %t384 = icmp ne ptr %t383, null
  br i1 %t384, label %bb71, label %bb72
bb70:
  br label %bb153
bb71:
  %t386 = load ptr, ptr %l202, !tbaa !29
  %t387 = load i64, ptr %t386, !range !{i64 0, i64 18}
  %t389 = icmp eq i64 %t387, 3
  store i1 %t389, ptr %l203, !tbaa !21
  br label %bb72
bb72:
  %t390 = load i1, ptr %l203, !tbaa !21
  br i1 %t390, label %bb73, label %bb74
bb73:
  %t391 = load ptr, ptr %l14, !tbaa !29
  %t393 = getelementptr { i64, [5 x i64] }, ptr %t391, i32 0, i32 1
  %t394 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t393, i32 0, i32 2
  %t395 = load ptr, ptr %t394
  store ptr %t395, ptr %l15, !tbaa !29
  br label %bb75
bb74:
  br label %bb146
bb75:
  store %olang.scope zeroinitializer, ptr %s15
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load ptr, ptr %l15, !tbaa !29
  %t402 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t397, ptr %t398)
  store %"compiler/lower:pl" %t402, ptr %l211
  br label %bb76
bb76:
  %t404 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s15, ptr %l211)
  store %"compiler/lower:pl" %t404, ptr %l213
  br label %bb77
bb77:
  %t405 = load %"compiler/lower:pl", ptr %l213
  store %"compiler/lower:pl" %t405, ptr %l16
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr %"compiler/lower:lowering", ptr %t406, i32 0, i32 10
  %t409 = load i1, ptr %t408, !tbaa !21
  br i1 %t409, label %bb78, label %bb79
bb78:
  store { i64, [4 x i64] } zeroinitializer, ptr %t411
  %t412 = getelementptr { i64, [4 x i64] }, ptr %t411, i32 0, i32 0
  store i64 0, ptr %t412
  %t413 = load { i64, [4 x i64] }, ptr %t411
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t413, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load ptr, ptr %l15, !tbaa !29
  %t419 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eescapedHome(ptr %v0, ptr %v1, ptr %t415, ptr %t416)
  store { i64, [1 x i64] } %t419, ptr %l219
  br label %bb81
bb81:
  %t420 = load { i64, [1 x i64] }, ptr %l219
  store { i64, [1 x i64] } %t420, ptr %l17
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/lower:lowering", ptr %t421, i32 0, i32 24
  %t424 = load i1, ptr %t423, !tbaa !21
  %t426 = xor i1 %t424, true
  br i1 %t426, label %bb82, label %bb83
bb82:
  %t428 = load ptr, ptr %l15, !tbaa !29
  store ptr %t428, ptr %l224, !tbaa !29
  store i1 false, ptr %l225, !tbaa !21
  %t429 = load ptr, ptr %l224, !tbaa !29
  %t430 = icmp ne ptr %t429, null
  br i1 %t430, label %bb84, label %bb85
bb83:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb86
bb84:
  %t432 = load ptr, ptr %l224, !tbaa !29
  %t433 = load i64, ptr %t432, !range !{i64 0, i64 8}
  %t435 = icmp eq i64 %t433, 0
  store i1 %t435, ptr %l225, !tbaa !21
  br label %bb85
bb85:
  %t436 = load i1, ptr %l225, !tbaa !21
  store i1 %t436, ptr %l223, !tbaa !21
  br label %bb86
bb86:
  %t437 = load i1, ptr %l223, !tbaa !21
  br i1 %t437, label %bb87, label %bb88
bb87:
  %t438 = load ptr, ptr %l15, !tbaa !29
  %t440 = getelementptr { i64, [4 x i64] }, ptr %t438, i32 0, i32 1
  %t441 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t440, i32 0, i32 0
  %t442 = load %"compiler/source:Span", ptr %t441
  store %"compiler/source:Span" %t442, ptr %l18
  %t444 = load ptr, ptr %l15, !tbaa !29
  %t446 = getelementptr { i64, [4 x i64] }, ptr %t444, i32 0, i32 1
  %t447 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t446, i32 0, i32 1
  %t448 = load i32, ptr %t447
  store i32 %t448, ptr %l19, !tbaa !23
  %t450 = load ptr, ptr %l15, !tbaa !29
  %t452 = getelementptr { i64, [4 x i64] }, ptr %t450, i32 0, i32 1
  %t453 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t452, i32 0, i32 2
  %t454 = load i32, ptr %t453
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/lower:lowering", ptr %t456, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !29
  %t461 = getelementptr %"compiler/typed:Body", ptr %t459, i32 0, i32 7
  %t464 = sext i32 %t454 to i64
  %t467 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t461, i64 %t464)
  store %"compiler/typed:Local" %t467, ptr %l240
  br label %bb89
bb88:
  store i1 false, ptr %l228, !tbaa !21
  br label %bb90
bb89:
  %t468 = getelementptr %"compiler/typed:Local", ptr %l240, i32 0, i32 7
  %t469 = load i1, ptr %t468, !tbaa !21
  store i1 %t469, ptr %l228, !tbaa !21
  br label %bb90
bb90:
  %t471 = load i1, ptr %l228, !tbaa !21
  br i1 %t471, label %bb91, label %bb92
bb91:
  %t472 = load ptr, ptr %l15, !tbaa !29
  %t474 = getelementptr { i64, [4 x i64] }, ptr %t472, i32 0, i32 1
  %t475 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t474, i32 0, i32 0
  %t476 = load %"compiler/source:Span", ptr %t475
  store %"compiler/source:Span" %t476, ptr %l21
  %t478 = load ptr, ptr %l15, !tbaa !29
  %t480 = getelementptr { i64, [4 x i64] }, ptr %t478, i32 0, i32 1
  %t481 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t480, i32 0, i32 1
  %t482 = load i32, ptr %t481
  store i32 %t482, ptr %l22, !tbaa !23
  %t484 = load ptr, ptr %l15, !tbaa !29
  %t486 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 1
  %t487 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t486, i32 0, i32 2
  %t488 = load i32, ptr %t487
  store i32 %t488, ptr %l23, !tbaa !23
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %t490)
  store { i64, [1 x i64] } %t492, ptr %l249
  br label %bb93
bb92:
  br label %bb94
bb93:
  %t493 = load { i64, [1 x i64] }, ptr %l249
  store { i64, [1 x i64] } %t493, ptr %l17
  br label %bb94
bb94:
  %t494 = load { i64, [1 x i64] }, ptr %l17
  %t496 = extractvalue { i64, [1 x i64] } %t494, 0
  %t497 = icmp eq i64 %t496, 3
  br i1 %t497, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s18
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t501 = getelementptr %"compiler/lower:lowering", ptr %t499, i32 0, i32 24
  %t502 = load i1, ptr %t501, !tbaa !21
  br i1 %t502, label %bb97, label %bb98
bb96:
  br label %bb139
bb97:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/lower:lowering", ptr %t504, i32 0, i32 30
  %t507 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t507, ptr %l257, !tbaa !27
  %t508 = getelementptr { i64, ptr }, ptr %l257, i32 0, i32 1
  %t509 = load ptr, ptr %t508, !tbaa !27
  %t510 = getelementptr ptr, ptr %t509, i64 0
  %t511 = load ptr, ptr %t510, !tbaa !39
  %t514 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerivedOf(ptr %v0, ptr %v1, ptr %s18, ptr %t506, ptr %t511)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t514, ptr %l259
  br label %bb99
bb98:
  %t515 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s18, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t515, ptr %l262
  br label %bb101
bb99:
  %t517 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %s18, ptr %l259)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t517, ptr %l261
  br label %bb100
bb100:
  %t518 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l261
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t518, ptr %l254
  br label %bb102
bb101:
  %t519 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l262
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t519, ptr %l254
  br label %bb102
bb102:
  %t520 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l254
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t520, ptr %l24
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/lower:lowering", ptr %t521, i32 0, i32 24
  %t524 = load i1, ptr %t523, !tbaa !21
  br i1 %t524, label %bb103, label %bb104
bb103:
  %t526 = load ptr, ptr %l15, !tbaa !29
  store ptr %t526, ptr %l266, !tbaa !29
  store i1 false, ptr %l267, !tbaa !21
  %t527 = load ptr, ptr %l266, !tbaa !29
  %t528 = icmp ne ptr %t527, null
  br i1 %t528, label %bb105, label %bb106
bb104:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb107
bb105:
  %t530 = load ptr, ptr %l266, !tbaa !29
  %t531 = load i64, ptr %t530, !range !{i64 0, i64 8}
  %t533 = icmp eq i64 %t531, 0
  store i1 %t533, ptr %l267, !tbaa !21
  br label %bb106
bb106:
  %t534 = load i1, ptr %l267, !tbaa !21
  %t535 = xor i1 %t534, true
  store i1 %t535, ptr %l265, !tbaa !21
  br label %bb107
bb107:
  %t537 = load i1, ptr %l265, !tbaa !21
  br i1 %t537, label %bb108, label %bb109
bb108:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t540 = getelementptr %"compiler/lower:lowering", ptr %t538, i32 0, i32 30
  %t541 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t541, ptr %l274, !tbaa !27
  %t542 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !27
  %t544 = getelementptr ptr, ptr %t543, i64 0
  %t545 = load ptr, ptr %t544, !tbaa !39
  %t548 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropHomeOf(ptr %v0, ptr %v1, ptr %t540, ptr %t545)
  store { i64, [2 x i64] } %t548, ptr %l276
  br label %bb110
bb109:
  store { i64, [2 x i64] } zeroinitializer, ptr %t549
  %t550 = getelementptr { i64, [2 x i64] }, ptr %t549, i32 0, i32 0
  store i64 0, ptr %t550
  %t551 = load { i64, [2 x i64] }, ptr %t549
  store { i64, [2 x i64] } %t551, ptr %l271
  br label %bb111
bb110:
  %t553 = load { i64, [2 x i64] }, ptr %l276
  store { i64, [2 x i64] } %t553, ptr %l271
  br label %bb111
bb111:
  %t554 = load { i64, [2 x i64] }, ptr %l271
  store { i64, [2 x i64] } %t554, ptr %l25
  %t555 = load ptr, ptr %l0, !tbaa !29
  store ptr %t555, ptr %l278, !tbaa !29
  %t556 = load %"compiler/lower:pl", ptr %l16
  store %"compiler/lower:pl" %t556, ptr %l279
  %t558 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s18, ptr %l279)
  store %"compiler/lower:pl" %t558, ptr %l281
  br label %bb112
bb112:
  %t559 = load ptr, ptr %l15, !tbaa !29
  %t561 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t559)
  store i32 %t561, ptr %l283
  br label %bb113
bb113:
  %t562 = load { i64, [2 x i64] }, ptr %l25
  %t564 = extractvalue { i64, [2 x i64] } %t562, 0
  %t565 = icmp eq i64 %t564, 0
  br i1 %t565, label %bb114, label %bb115
bb114:
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %t567)
  store { i64, [1 x i64] } %t569, ptr %l288
  br label %bb116
bb115:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load { i64, [2 x i64] }, ptr %l25
  %t574 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %t570, { i64, [2 x i64] } %t571)
  store { i64, [1 x i64] } %t574, ptr %l291
  br label %bb117
bb116:
  %t575 = load { i64, [1 x i64] }, ptr %l288
  store { i64, [1 x i64] } %t575, ptr %l286
  br label %bb118
bb117:
  %t576 = load { i64, [1 x i64] }, ptr %l291
  store { i64, [1 x i64] } %t576, ptr %l286
  br label %bb118
bb118:
  %t577 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t577, ptr %l292
  %t579 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %s18, ptr %l24)
  store i64 %t579, ptr %l294
  br label %bb119
bb119:
  %t580 = load i64, ptr %l294, !tbaa !24
  %t581 = icmp sgt i64 %t580, 0
  store i1 %t581, ptr %l295, !tbaa !21
  %t582 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t582, ptr %l296
  %t584 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %s18, ptr %l296)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t584, ptr %l298
  br label %bb120
bb120:
  %t585 = load ptr, ptr %l278, !tbaa !29
  %t586 = load %"compiler/lower:pl", ptr %l281
  %t587 = load i32, ptr %l283, !tbaa !23
  %t588 = load { i64, [1 x i64] }, ptr %l286
  %t589 = load %"compiler/source:Span", ptr %l292
  %t590 = load i1, ptr %l295, !tbaa !21
  %t591 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l298
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %v0, ptr %s18, ptr %s18, ptr %t585, %"compiler/lower:pl" %t586, i32 %t587, { i64, [1 x i64] } %t588, %"compiler/source:Span" %t589, i1 %t590, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t591)
  br label %bb121
bb121:
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t594 = getelementptr %"compiler/lower:lowering", ptr %t592, i32 0, i32 43
  %t595 = load i1, ptr %t594, !tbaa !21
  br i1 %t595, label %bb122, label %bb123
bb122:
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t599 = getelementptr %"compiler/lower:lowering", ptr %t597, i32 0, i32 31
  %t600 = load i1, ptr %t599, !tbaa !21
  store i1 %t600, ptr %l301, !tbaa !21
  br label %bb124
bb123:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb124
bb124:
  %t602 = load i1, ptr %l301, !tbaa !21
  br i1 %t602, label %bb125, label %bb126
bb125:
  %t603 = load ptr, ptr %l15, !tbaa !29
  store ptr %t603, ptr %l305, !tbaa !29
  store i1 false, ptr %l306, !tbaa !21
  %t604 = load ptr, ptr %l305, !tbaa !29
  %t605 = icmp ne ptr %t604, null
  br i1 %t605, label %bb127, label %bb128
bb126:
  store i1 false, ptr %l304, !tbaa !21
  br label %bb129
bb127:
  %t607 = load ptr, ptr %l305, !tbaa !29
  %t608 = load i64, ptr %t607, !range !{i64 0, i64 8}
  %t610 = icmp eq i64 %t608, 0
  store i1 %t610, ptr %l306, !tbaa !21
  br label %bb128
bb128:
  %t611 = load i1, ptr %l306, !tbaa !21
  store i1 %t611, ptr %l304, !tbaa !21
  br label %bb129
bb129:
  %t612 = load i1, ptr %l304, !tbaa !21
  br i1 %t612, label %bb130, label %bb131
bb130:
  %t613 = load ptr, ptr %l15, !tbaa !29
  %t615 = getelementptr { i64, [4 x i64] }, ptr %t613, i32 0, i32 1
  %t616 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t615, i32 0, i32 0
  %t617 = load %"compiler/source:Span", ptr %t616
  store %"compiler/source:Span" %t617, ptr %l26
  %t619 = load ptr, ptr %l15, !tbaa !29
  %t621 = getelementptr { i64, [4 x i64] }, ptr %t619, i32 0, i32 1
  %t622 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t621, i32 0, i32 1
  %t623 = load i32, ptr %t622
  store i32 %t623, ptr %l27, !tbaa !23
  %t625 = load ptr, ptr %l15, !tbaa !29
  %t627 = getelementptr { i64, [4 x i64] }, ptr %t625, i32 0, i32 1
  %t628 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t627, i32 0, i32 2
  %t629 = load i32, ptr %t628
  store i32 %t629, ptr %l28, !tbaa !23
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"compiler/lower:lowering", ptr %t631, i32 0, i32 10
  %t634 = load i1, ptr %t633, !tbaa !21
  %t636 = xor i1 %t634, true
  store i1 %t636, ptr %l309, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l309, !tbaa !21
  br label %bb132
bb132:
  %t638 = load i1, ptr %l309, !tbaa !21
  br i1 %t638, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s19
  %t639 = load ptr, ptr %l15, !tbaa !29
  %t641 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 1
  %t642 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t641, i32 0, i32 0
  %t643 = load %"compiler/source:Span", ptr %t642
  store %"compiler/source:Span" %t643, ptr %l29
  %t645 = load ptr, ptr %l15, !tbaa !29
  %t647 = getelementptr { i64, [4 x i64] }, ptr %t645, i32 0, i32 1
  %t648 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t647, i32 0, i32 1
  %t649 = load i32, ptr %t648
  store i32 %t649, ptr %l30, !tbaa !23
  %t651 = load ptr, ptr %l15, !tbaa !29
  %t653 = getelementptr { i64, [4 x i64] }, ptr %t651, i32 0, i32 1
  %t654 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t653, i32 0, i32 2
  %t655 = load i32, ptr %t654
  %t657 = load ptr, ptr %l0, !tbaa !29
  store ptr %t657, ptr %l325, !tbaa !29
  store i32 %t655, ptr %l328, !tbaa !23
  %t661 = load ptr, ptr %l0, !tbaa !29
  store ptr %t661, ptr %l329, !tbaa !29
  %t662 = load ptr, ptr %l15, !tbaa !29
  %t664 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t662)
  store i32 %t664, ptr %l331
  br label %bb135
bb134:
  br label %bb138
bb135:
  %t665 = load ptr, ptr %l329, !tbaa !29
  %t666 = load i32, ptr %l331, !tbaa !23
  %t667 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2eleafPaths(ptr %v0, ptr %s19, ptr %t665, i32 %t666)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t667, ptr %l332
  br label %bb136
bb136:
  %t668 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l332
  %t669 = call ptr @__olang_scope_alloc_a(ptr %s19, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t668, ptr %t669
  %t670 = load %"compiler/source:Span", ptr %l5
  %t671 = load ptr, ptr %l325, !tbaa !29
  %t672 = load i32, ptr %l328, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %s19, ptr %t671, i32 %t672, ptr %t669, %"compiler/source:Span" %t670)
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s19)
  br label %bb138
bb138:
  store { i64, [4 x i64] } zeroinitializer, ptr %t675
  %t676 = getelementptr { i64, [4 x i64] }, ptr %t675, i32 0, i32 0
  store i64 0, ptr %t676
  %t677 = load { i64, [4 x i64] }, ptr %t675
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t677, ptr %rv
  br label %ret
bb139:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = getelementptr %"compiler/lower:lowering", ptr %t679, i32 0, i32 2
  %t682 = load ptr, ptr %t681, !tbaa !29
  store ptr %t682, ptr %l337, !tbaa !29
  %t683 = load ptr, ptr %l15, !tbaa !29
  %t685 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t683)
  store i32 %t685, ptr %l339
  br label %bb140
bb140:
  %t686 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t687 = load ptr, ptr %l337, !tbaa !29
  %t688 = load i32, ptr %l339, !tbaa !23
  %t690 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t687, i32 %t688, i64 %t686)
  store i32 %t690, ptr %l341
  br label %bb141
bb141:
  %t691 = load i32, ptr %l341, !tbaa !23
  store i32 %t691, ptr %l32, !tbaa !23
  %t692 = load ptr, ptr %l0, !tbaa !29
  store ptr %t692, ptr %l342, !tbaa !29
  %t693 = load i32, ptr %l32, !tbaa !23
  store i32 %t693, ptr %l343, !tbaa !23
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t695 = load %"compiler/lower:pl", ptr %l16
  %t698 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s15, ptr %t694, %"compiler/lower:pl" %t695)
  store %"compiler/mir:Lvalue" %t698, ptr %l346
  br label %bb142
bb142:
  %t699 = load i32, ptr %l32, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t700
  %t701 = getelementptr { i64, [15 x i64] }, ptr %t700, i32 0, i32 0
  store i64 1, ptr %t701
  %t702 = load %"compiler/mir:Lvalue", ptr %l346
  %t703 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t702, 0
  %t705 = insertvalue { %"compiler/mir:Lvalue", i32 } %t703, i32 %t699, 1
  %t706 = getelementptr { i64, [15 x i64] }, ptr %t700, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t705, ptr %t706
  %t707 = load { i64, [15 x i64] }, ptr %t700
  %t708 = load %"compiler/source:Span", ptr %l5
  %t709 = load ptr, ptr %l342, !tbaa !29
  %t710 = load i32, ptr %l343, !tbaa !23
  %t713 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t709, i32 %t710, { i64, [15 x i64] } %t707, %"compiler/source:Span" %t708)
  store { i64, [4 x i64] } %t713, ptr %l350
  br label %bb143
bb143:
  %t714 = load { i64, [4 x i64] }, ptr %l350
  store { i64, [4 x i64] } %t714, ptr %l33
  %t715 = load ptr, ptr %l0, !tbaa !29
  store ptr %t715, ptr %l351, !tbaa !29
  %t716 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t716, ptr %l352
  %t717 = load { i64, [1 x i64] }, ptr %l17
  store { i64, [1 x i64] } %t717, ptr %l353
  %t718 = load ptr, ptr %l15, !tbaa !29
  %t720 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t718)
  store i32 %t720, ptr %l355
  br label %bb144
bb144:
  %t721 = load { i64, [4 x i64] }, ptr %l33
  store { i64, [21 x i64] } zeroinitializer, ptr %t722
  %t723 = getelementptr { i64, [21 x i64] }, ptr %t722, i32 0, i32 0
  store i64 5, ptr %t723
  %t724 = load %"compiler/source:Span", ptr %l352
  %t725 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t724, 0
  %t726 = load { i64, [1 x i64] }, ptr %l353
  %t727 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t725, { i64, [1 x i64] } %t726, 1
  %t728 = load i32, ptr %l355, !tbaa !23
  %t729 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t727, i32 %t728, 2
  %t731 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t729, { i64, [4 x i64] } %t721, 3
  %t732 = getelementptr { i64, [21 x i64] }, ptr %t722, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t731, ptr %t732
  %t733 = load { i64, [21 x i64] }, ptr %t722
  %t735 = call ptr @__olang_scope_alloc_a(ptr %s15, i64 176, i64 8)
  store { i64, [21 x i64] } %t733, ptr %t735
  %t736 = load ptr, ptr %l351, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s15, ptr %t736, ptr %t735)
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s15)
  br label %bb152
bb146:
  br i1 true, label %bb147, label %bb148
bb147:
  br label %bb149
bb148:
  br label %bb151
bb149:
  store %olang.scope zeroinitializer, ptr %s20
  %t738 = load ptr, ptr %l0, !tbaa !29
  %t739 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s20, ptr %t738, %"compiler/source:Span" %t739, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb150
bb150:
  call void @__olang_scope_close(ptr %s20)
  br label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_b3ebf7d55c86e124_fe3d33fa802e84b8)
  unreachable
bb152:
  store { i64, [4 x i64] } zeroinitializer, ptr %t742
  %t743 = getelementptr { i64, [4 x i64] }, ptr %t742, i32 0, i32 0
  store i64 0, ptr %t743
  %t744 = load { i64, [4 x i64] }, ptr %t742
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t744, ptr %rv
  br label %ret
bb153:
  %t746 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t748 = trunc i64 38 to i32
  %t749 = icmp eq i32 %t746, %t748
  br i1 %t749, label %bb154, label %bb155
bb154:
  store %olang.scope zeroinitializer, ptr %s21
  %t751 = load ptr, ptr %l0, !tbaa !29
  %t752 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t752, ptr %l365, !tbaa !27
  %t753 = getelementptr { i64, ptr }, ptr %l365, i32 0, i32 1
  %t754 = load ptr, ptr %t753, !tbaa !27
  %t755 = getelementptr ptr, ptr %t754, i64 0
  %t756 = load ptr, ptr %t755, !tbaa !39
  %t760 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t751, ptr %t756)
  store { i64, [4 x i64] } %t760, ptr %l368
  br label %bb156
bb155:
  br label %bb166
bb156:
  %t761 = load { i64, [4 x i64] }, ptr %l368
  store { i64, [4 x i64] } %t761, ptr %l34
  %t762 = load ptr, ptr %l0, !tbaa !29
  %t763 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t763, ptr %l370, !tbaa !27
  %t764 = getelementptr { i64, ptr }, ptr %l370, i32 0, i32 1
  %t765 = load ptr, ptr %t764, !tbaa !27
  %t766 = getelementptr ptr, ptr %t765, i64 1
  %t767 = load ptr, ptr %t766, !tbaa !39
  %t771 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t762, ptr %t767)
  store { i64, [4 x i64] } %t771, ptr %l373
  br label %bb157
bb157:
  %t772 = load { i64, [4 x i64] }, ptr %l373
  store { i64, [4 x i64] } %t772, ptr %l35
  %t773 = load ptr, ptr %l0, !tbaa !29
  %t775 = getelementptr %"compiler/lower:lowering", ptr %t773, i32 0, i32 10
  %t776 = load i1, ptr %t775, !tbaa !21
  br i1 %t776, label %bb158, label %bb159
bb158:
  store { i64, [4 x i64] } zeroinitializer, ptr %t778
  %t779 = getelementptr { i64, [4 x i64] }, ptr %t778, i32 0, i32 0
  store i64 0, ptr %t779
  %t780 = load { i64, [4 x i64] }, ptr %t778
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t780, ptr %rv
  br label %ret
bb159:
  br label %bb160
bb160:
  %t782 = load ptr, ptr %l0, !tbaa !29
  %t783 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t784 = load { i64, [4 x i64] }, ptr %l34
  %t785 = load { i64, [4 x i64] }, ptr %l35
  %t786 = mul i64 2, 40
  %t787 = call ptr @__olang_scope_alloc_zeroed(ptr %s21, i64 %t786)
  %t788 = insertvalue { i64, ptr } undef, i64 2, 0
  %t789 = insertvalue { i64, ptr } %t788, ptr %t787, 1
  store { i64, ptr } %t789, ptr %l382, !tbaa !27
  %t791 = getelementptr { i64, ptr }, ptr %l382, i32 0, i32 1
  %t792 = load ptr, ptr %t791, !tbaa !27
  %t793 = getelementptr { i64, [4 x i64] }, ptr %t792, i64 0
  store { i64, [4 x i64] } %t784, ptr %t793
  %t795 = getelementptr { i64, ptr }, ptr %l382, i32 0, i32 1
  %t796 = load ptr, ptr %t795, !tbaa !27
  %t797 = getelementptr { i64, [4 x i64] }, ptr %t796, i64 1
  store { i64, [4 x i64] } %t785, ptr %t797
  %t798 = load %"compiler/source:Span", ptr %l5
  %t802 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t804 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s21, ptr %t782, i32 13, i32 %t783, { i64, ptr } %t802, %"compiler/source:Span" %t798)
  store { i64, [4 x i64] } %t804, ptr %l384
  br label %bb161
bb161:
  %t805 = load { i64, [4 x i64] }, ptr %l384
  %t806 = load ptr, ptr %l0, !tbaa !29
  store ptr %t806, ptr %l385, !tbaa !29
  store { i64, [4 x i64] } %t805, ptr %l386
  %t808 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t810 = trunc i64 0 to i32
  %t811 = icmp eq i32 %t808, %t810
  %t813 = xor i1 %t811, true
  br i1 %t813, label %bb162, label %bb163
bb162:
  %t815 = load i32, ptr %l2, !range !{i32 0, i32 3}
  store i32 %t815, ptr %l390
  br label %bb164
bb163:
  store i32 1, ptr %l390
  br label %bb164
bb164:
  %t818 = load i64, ptr @G_2ecompiler_2flower_2eOutOfBounds, !tbaa !24
  %t819 = load %"compiler/source:Span", ptr %l5
  %t820 = load ptr, ptr %l385, !tbaa !29
  %t821 = load { i64, [4 x i64] }, ptr %l386
  %t822 = load i32, ptr %l390, !range !{i32 0, i32 3}
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t820, { i64, [4 x i64] } %t821, i32 %t822, i32 12, i64 %t818, %"compiler/source:Span" %t819)
  br label %bb165
bb165:
  %t826 = load { i64, [4 x i64] }, ptr %l34
  call void @__olang_scope_close(ptr %s21)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t826, ptr %rv
  br label %ret
bb166:
  %t828 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t830 = trunc i64 39 to i32
  %t831 = icmp eq i32 %t828, %t830
  br i1 %t831, label %bb167, label %bb168
bb167:
  store %olang.scope zeroinitializer, ptr %s23
  %t833 = load ptr, ptr %l0, !tbaa !29
  %t834 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t834, ptr %l400, !tbaa !27
  %t835 = getelementptr { i64, ptr }, ptr %l400, i32 0, i32 1
  %t836 = load ptr, ptr %t835, !tbaa !27
  %t837 = getelementptr ptr, ptr %t836, i64 0
  %t838 = load ptr, ptr %t837, !tbaa !39
  %t842 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t833, ptr %t838)
  store { i64, [4 x i64] } %t842, ptr %l403
  br label %bb169
bb168:
  br label %bb179
bb169:
  %t843 = load { i64, [4 x i64] }, ptr %l403
  store { i64, [4 x i64] } %t843, ptr %l37
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t846 = getelementptr %"compiler/lower:lowering", ptr %t844, i32 0, i32 10
  %t847 = load i1, ptr %t846, !tbaa !21
  br i1 %t847, label %bb170, label %bb171
bb170:
  store { i64, [4 x i64] } zeroinitializer, ptr %t849
  %t850 = getelementptr { i64, [4 x i64] }, ptr %t849, i32 0, i32 0
  store i64 0, ptr %t850
  %t851 = load { i64, [4 x i64] }, ptr %t849
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t851, ptr %rv
  br label %ret
bb171:
  br label %bb172
bb172:
  %t853 = load ptr, ptr %l0, !tbaa !29
  store ptr %t853, ptr %l407, !tbaa !29
  store i32 17, ptr %l408
  %t854 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t854, ptr %l409, !tbaa !23
  %t855 = load { i64, [4 x i64] }, ptr %l37
  store { i64, [4 x i64] } %t855, ptr %l410
  %t856 = load ptr, ptr %l0, !tbaa !29
  %t858 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t856, i64 0)
  store { i64, [4 x i64] } %t858, ptr %l412
  br label %bb173
bb173:
  %t859 = mul i64 2, 40
  %t860 = call ptr @__olang_scope_alloc_zeroed(ptr %s23, i64 %t859)
  %t861 = insertvalue { i64, ptr } undef, i64 2, 0
  %t862 = insertvalue { i64, ptr } %t861, ptr %t860, 1
  store { i64, ptr } %t862, ptr %l413, !tbaa !27
  %t863 = load { i64, [4 x i64] }, ptr %l410
  %t864 = getelementptr { i64, ptr }, ptr %l413, i32 0, i32 1
  %t865 = load ptr, ptr %t864, !tbaa !27
  %t866 = getelementptr { i64, [4 x i64] }, ptr %t865, i64 0
  store { i64, [4 x i64] } %t863, ptr %t866
  %t867 = load { i64, [4 x i64] }, ptr %l412
  %t868 = getelementptr { i64, ptr }, ptr %l413, i32 0, i32 1
  %t869 = load ptr, ptr %t868, !tbaa !27
  %t870 = getelementptr { i64, [4 x i64] }, ptr %t869, i64 1
  store { i64, [4 x i64] } %t867, ptr %t870
  %t871 = load %"compiler/source:Span", ptr %l5
  %t872 = load ptr, ptr %l407, !tbaa !29
  %t873 = load i32, ptr %l408, !range !{i32 0, i32 52}
  %t874 = load i32, ptr %l409, !tbaa !23
  %t875 = load { i64, ptr }, ptr %l413, !tbaa !27
  %t877 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s23, ptr %t872, i32 %t873, i32 %t874, { i64, ptr } %t875, %"compiler/source:Span" %t871)
  store { i64, [4 x i64] } %t877, ptr %l415
  br label %bb174
bb174:
  %t878 = load { i64, [4 x i64] }, ptr %l415
  %t879 = load ptr, ptr %l0, !tbaa !29
  store ptr %t879, ptr %l416, !tbaa !29
  store { i64, [4 x i64] } %t878, ptr %l417
  %t881 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t883 = trunc i64 0 to i32
  %t884 = icmp eq i32 %t881, %t883
  %t886 = xor i1 %t884, true
  br i1 %t886, label %bb175, label %bb176
bb175:
  %t888 = load i32, ptr %l2, !range !{i32 0, i32 3}
  store i32 %t888, ptr %l421
  br label %bb177
bb176:
  store i32 2, ptr %l421
  br label %bb177
bb177:
  %t891 = load i64, ptr @G_2ecompiler_2flower_2eEmpty, !tbaa !24
  %t892 = load %"compiler/source:Span", ptr %l5
  %t893 = load ptr, ptr %l416, !tbaa !29
  %t894 = load { i64, [4 x i64] }, ptr %l417
  %t895 = load i32, ptr %l421, !range !{i32 0, i32 3}
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t893, { i64, [4 x i64] } %t894, i32 %t895, i32 9, i64 %t891, %"compiler/source:Span" %t892)
  br label %bb178
bb178:
  store { i64, [4 x i64] } zeroinitializer, ptr %t899
  %t900 = getelementptr { i64, [4 x i64] }, ptr %t899, i32 0, i32 0
  store i64 0, ptr %t900
  %t901 = load { i64, [4 x i64] }, ptr %t899
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t901, ptr %rv
  br label %ret
bb179:
  %t903 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t905 = trunc i64 37 to i32
  %t906 = icmp eq i32 %t903, %t905
  br i1 %t906, label %bb180, label %bb181
bb180:
  %t908 = load ptr, ptr %l0, !tbaa !29
  %t909 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t909, ptr %l431, !tbaa !27
  %t910 = getelementptr { i64, ptr }, ptr %l431, i32 0, i32 1
  %t911 = load ptr, ptr %t910, !tbaa !27
  %t912 = getelementptr ptr, ptr %t911, i64 0
  %t913 = load ptr, ptr %t912, !tbaa !39
  %t917 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t908, ptr %t913)
  store { i64, [4 x i64] } %t917, ptr %l434
  br label %bb182
bb181:
  br label %bb190
bb182:
  %t918 = load { i64, [4 x i64] }, ptr %l434
  store { i64, [4 x i64] } %t918, ptr %l39
  %t919 = load ptr, ptr %l0, !tbaa !29
  %t921 = getelementptr %"compiler/lower:lowering", ptr %t919, i32 0, i32 10
  %t922 = load i1, ptr %t921, !tbaa !21
  br i1 %t922, label %bb183, label %bb184
bb183:
  store { i64, [4 x i64] } zeroinitializer, ptr %t924
  %t925 = getelementptr { i64, [4 x i64] }, ptr %t924, i32 0, i32 0
  store i64 0, ptr %t925
  %t926 = load { i64, [4 x i64] }, ptr %t924
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t926, ptr %rv
  br label %ret
bb184:
  br label %bb185
bb185:
  %t928 = load ptr, ptr %l0, !tbaa !29
  store ptr %t928, ptr %l438, !tbaa !29
  %t929 = load { i64, [4 x i64] }, ptr %l39
  store { i64, [4 x i64] } %t929, ptr %l439
  %t930 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t932 = trunc i64 0 to i32
  %t933 = icmp eq i32 %t930, %t932
  %t935 = xor i1 %t933, true
  br i1 %t935, label %bb186, label %bb187
bb186:
  %t937 = load i32, ptr %l2, !range !{i32 0, i32 3}
  store i32 %t937, ptr %l443
  br label %bb188
bb187:
  store i32 2, ptr %l443
  br label %bb188
bb188:
  %t940 = load i64, ptr @G_2ecompiler_2flower_2eContract, !tbaa !24
  %t941 = load %"compiler/source:Span", ptr %l5
  %t942 = load ptr, ptr %l438, !tbaa !29
  %t943 = load { i64, [4 x i64] }, ptr %l439
  %t944 = load i32, ptr %l443, !range !{i32 0, i32 3}
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2echeck(ptr %v0, ptr %t942, { i64, [4 x i64] } %t943, i32 %t944, i32 7, i64 %t940, %"compiler/source:Span" %t941)
  br label %bb189
bb189:
  %t948 = load { i64, [4 x i64] }, ptr %l39
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t948, ptr %rv
  br label %ret
bb190:
  store ptr null, ptr %l40, !tbaa !29
  %t950 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t952 = trunc i64 20 to i32
  %t953 = icmp eq i32 %t950, %t952
  br i1 %t953, label %bb191, label %bb192
bb191:
  %t955 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t957 = extractvalue { i64, ptr } %t955, 0
  %t959 = icmp eq i64 %t957, 1
  store i1 %t959, ptr %l452, !tbaa !21
  br label %bb193
bb192:
  store i1 false, ptr %l452, !tbaa !21
  br label %bb193
bb193:
  %t961 = load i1, ptr %l452, !tbaa !21
  br i1 %t961, label %bb194, label %bb195
bb194:
  %t962 = load ptr, ptr %l0, !tbaa !29
  %t963 = load i32, ptr %l4, !tbaa !23
  %t966 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t962, i32 %t963)
  store i1 %t966, ptr %l459
  br label %bb196
bb195:
  store i1 false, ptr %l456, !tbaa !21
  br label %bb197
bb196:
  %t967 = load i1, ptr %l459, !tbaa !21
  store i1 %t967, ptr %l456, !tbaa !21
  br label %bb197
bb197:
  %t968 = load i1, ptr %l456, !tbaa !21
  br i1 %t968, label %bb198, label %bb199
bb198:
  %t969 = load ptr, ptr %l0, !tbaa !29
  store ptr %t969, ptr %l461, !tbaa !29
  %t970 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t970, ptr %l462, !tbaa !27
  %t971 = getelementptr { i64, ptr }, ptr %l462, i32 0, i32 1
  %t972 = load ptr, ptr %t971, !tbaa !27
  %t973 = getelementptr ptr, ptr %t972, i64 0
  %t974 = load ptr, ptr %t973, !tbaa !39
  %t976 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t974)
  store i32 %t976, ptr %l464
  br label %bb200
bb199:
  store i1 false, ptr %l460, !tbaa !21
  br label %bb202
bb200:
  %t977 = load i32, ptr %l4, !tbaa !23
  %t978 = load ptr, ptr %l461, !tbaa !29
  %t979 = load i32, ptr %l464, !tbaa !23
  %t981 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2econvertsApart(ptr %v0, ptr %t978, i32 %t979, i32 %t977)
  store i1 %t981, ptr %l466
  br label %bb201
bb201:
  %t982 = load i1, ptr %l466, !tbaa !21
  %t983 = xor i1 %t982, true
  store i1 %t983, ptr %l460, !tbaa !21
  br label %bb202
bb202:
  %t985 = load i1, ptr %l460, !tbaa !21
  br i1 %t985, label %bb203, label %bb204
bb203:
  %t986 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t986, ptr %l468, !tbaa !27
  %t987 = getelementptr { i64, ptr }, ptr %l468, i32 0, i32 1
  %t988 = load ptr, ptr %t987, !tbaa !27
  %t989 = getelementptr ptr, ptr %t988, i64 0
  %t990 = load ptr, ptr %t989, !tbaa !39
  %t992 = call ptr @compiler_2flower_2ederefOf(ptr %v1, ptr %v0, ptr %t990)
  store ptr %t992, ptr %l470
  br label %bb205
bb204:
  br label %bb206
bb205:
  %t993 = load ptr, ptr %l470, !tbaa !29
  store ptr %t993, ptr %l40, !tbaa !29
  br label %bb206
bb206:
  %t994 = load ptr, ptr %l40, !tbaa !29
  %t996 = icmp eq ptr %t994, null
  %t998 = xor i1 %t996, true
  br i1 %t998, label %bb207, label %bb208
bb207:
  %t1000 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1000, ptr %l475, !tbaa !29
  %t1001 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1001, ptr %l476, !tbaa !27
  %t1002 = getelementptr { i64, ptr }, ptr %l476, i32 0, i32 1
  %t1003 = load ptr, ptr %t1002, !tbaa !27
  %t1004 = getelementptr ptr, ptr %t1003, i64 0
  %t1005 = load ptr, ptr %t1004, !tbaa !39
  %t1007 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1005)
  store i32 %t1007, ptr %l478
  br label %bb209
bb208:
  store i1 false, ptr %l474, !tbaa !21
  br label %bb211
bb209:
  %t1008 = load ptr, ptr %l475, !tbaa !29
  %t1009 = load i32, ptr %l478, !tbaa !23
  %t1010 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t1008, i32 %t1009)
  store i32 %t1010, ptr %l479
  br label %bb210
bb210:
  %t1011 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1012 = load i32, ptr %l479, !tbaa !23
  %t1014 = icmp ne i32 %t1012, %t1011
  store i1 %t1014, ptr %l474, !tbaa !21
  br label %bb211
bb211:
  %t1016 = load i1, ptr %l474, !tbaa !21
  br i1 %t1016, label %bb212, label %bb213
bb212:
  %t1017 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1017, ptr %l483, !tbaa !29
  %t1018 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1018, ptr %l484, !tbaa !29
  %t1019 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1019, ptr %l485, !tbaa !27
  %t1020 = getelementptr { i64, ptr }, ptr %l485, i32 0, i32 1
  %t1021 = load ptr, ptr %t1020, !tbaa !27
  %t1022 = getelementptr ptr, ptr %t1021, i64 0
  %t1023 = load ptr, ptr %t1022, !tbaa !39
  %t1025 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1023)
  store i32 %t1025, ptr %l487
  br label %bb214
bb213:
  store i1 false, ptr %l482, !tbaa !21
  br label %bb217
bb214:
  %t1026 = load ptr, ptr %l484, !tbaa !29
  %t1027 = load i32, ptr %l487, !tbaa !23
  %t1028 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t1026, i32 %t1027)
  store i32 %t1028, ptr %l488
  br label %bb215
bb215:
  %t1029 = load ptr, ptr %l483, !tbaa !29
  %t1030 = load i32, ptr %l488, !tbaa !23
  %t1031 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t1029, i32 %t1030)
  store i64 %t1031, ptr %l489
  br label %bb216
bb216:
  %t1032 = load i64, ptr %l489, !tbaa !24
  %t1033 = icmp sge i64 %t1032, 0
  store i1 %t1033, ptr %l482, !tbaa !21
  br label %bb217
bb217:
  %t1035 = load i1, ptr %l482, !tbaa !21
  br i1 %t1035, label %bb218, label %bb219
bb218:
  store %olang.scope zeroinitializer, ptr %s28
  %t1036 = load ptr, ptr %l0, !tbaa !29
  %t1037 = load ptr, ptr %l40, !tbaa !29
  %t1041 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v0, ptr %t1036, ptr %t1037)
  store { i64, [4 x i64] } %t1041, ptr %l494
  br label %bb220
bb219:
  br label %bb225
bb220:
  %t1042 = load { i64, [4 x i64] }, ptr %l494
  store { i64, [4 x i64] } %t1042, ptr %l41
  %t1043 = load ptr, ptr %l0, !tbaa !29
  %t1045 = getelementptr %"compiler/lower:lowering", ptr %t1043, i32 0, i32 10
  %t1046 = load i1, ptr %t1045, !tbaa !21
  br i1 %t1046, label %bb221, label %bb222
bb221:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1048
  %t1049 = getelementptr { i64, [4 x i64] }, ptr %t1048, i32 0, i32 0
  store i64 0, ptr %t1049
  %t1050 = load { i64, [4 x i64] }, ptr %t1048
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t1050, ptr %rv
  br label %ret
bb222:
  br label %bb223
bb223:
  %t1052 = load ptr, ptr %l0, !tbaa !29
  %t1053 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1054 = load i32, ptr %l4, !tbaa !23
  %t1055 = load { i64, [4 x i64] }, ptr %l41
  %t1056 = mul i64 1, 40
  %t1057 = call ptr @__olang_scope_alloc_zeroed(ptr %s28, i64 %t1056)
  %t1058 = insertvalue { i64, ptr } undef, i64 1, 0
  %t1059 = insertvalue { i64, ptr } %t1058, ptr %t1057, 1
  store { i64, ptr } %t1059, ptr %l502, !tbaa !27
  %t1061 = getelementptr { i64, ptr }, ptr %l502, i32 0, i32 1
  %t1062 = load ptr, ptr %t1061, !tbaa !27
  %t1063 = getelementptr { i64, [4 x i64] }, ptr %t1062, i64 0
  store { i64, [4 x i64] } %t1055, ptr %t1063
  %t1064 = load %"compiler/source:Span", ptr %l5
  %t1068 = load { i64, ptr }, ptr %l502, !tbaa !27
  %t1070 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s28, ptr %t1052, i32 %t1053, i32 %t1054, { i64, ptr } %t1068, %"compiler/source:Span" %t1064)
  store { i64, [4 x i64] } %t1070, ptr %l504
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  %t1071 = load { i64, [4 x i64] }, ptr %l504
  store { i64, [4 x i64] } %t1071, ptr %rv
  br label %ret
bb225:
  %t1072 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1074 = trunc i64 20 to i32
  %t1075 = icmp eq i32 %t1072, %t1074
  br i1 %t1075, label %bb226, label %bb227
bb226:
  %t1077 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1079 = extractvalue { i64, ptr } %t1077, 0
  %t1081 = icmp eq i64 %t1079, 1
  store i1 %t1081, ptr %l507, !tbaa !21
  br label %bb228
bb227:
  store i1 false, ptr %l507, !tbaa !21
  br label %bb228
bb228:
  %t1083 = load i1, ptr %l507, !tbaa !21
  br i1 %t1083, label %bb229, label %bb230
bb229:
  %t1084 = load ptr, ptr %l0, !tbaa !29
  %t1085 = load i32, ptr %l4, !tbaa !23
  %t1088 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t1084, i32 %t1085)
  store i1 %t1088, ptr %l514
  br label %bb231
bb230:
  store i1 false, ptr %l511, !tbaa !21
  br label %bb232
bb231:
  %t1089 = load i1, ptr %l514, !tbaa !21
  store i1 %t1089, ptr %l511, !tbaa !21
  br label %bb232
bb232:
  %t1090 = load i1, ptr %l511, !tbaa !21
  br i1 %t1090, label %bb233, label %bb234
bb233:
  %t1091 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1091, ptr %l515, !tbaa !27
  %t1092 = getelementptr { i64, ptr }, ptr %l515, i32 0, i32 1
  %t1093 = load ptr, ptr %t1092, !tbaa !27
  %t1094 = getelementptr ptr, ptr %t1093, i64 0
  %t1095 = load ptr, ptr %t1094, !tbaa !39
  store ptr %t1095, ptr %l42, !tbaa !29
  %t1097 = load ptr, ptr %l42, !tbaa !29
  store ptr %t1097, ptr %l517, !tbaa !29
  store i1 false, ptr %l518, !tbaa !21
  %t1098 = load ptr, ptr %l517, !tbaa !29
  %t1099 = icmp ne ptr %t1098, null
  br i1 %t1099, label %bb235, label %bb236
bb234:
  br label %bb279
bb235:
  %t1101 = load ptr, ptr %l517, !tbaa !29
  %t1102 = load i64, ptr %t1101, !range !{i64 0, i64 18}
  %t1104 = icmp eq i64 %t1102, 7
  store i1 %t1104, ptr %l518, !tbaa !21
  br label %bb236
bb236:
  %t1105 = load i1, ptr %l518, !tbaa !21
  br i1 %t1105, label %bb237, label %bb238
bb237:
  %t1106 = load ptr, ptr %l42, !tbaa !29
  %t1108 = getelementptr { i64, [5 x i64] }, ptr %t1106, i32 0, i32 1
  %t1109 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1108, i32 0, i32 1
  %t1110 = load i32, ptr %t1109
  store i32 %t1110, ptr %l43, !tbaa !23
  %t1112 = load ptr, ptr %l42, !tbaa !29
  %t1114 = getelementptr { i64, [5 x i64] }, ptr %t1112, i32 0, i32 1
  %t1115 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1114, i32 0, i32 2
  %t1116 = load ptr, ptr %t1115
  store ptr %t1116, ptr %l44, !tbaa !29
  br label %bb239
bb238:
  br label %bb273
bb239:
  %t1118 = load ptr, ptr %l0, !tbaa !29
  %t1119 = load i32, ptr %l43, !tbaa !23
  %t1122 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t1118, i32 %t1119)
  store i32 %t1122, ptr %l527
  br label %bb240
bb240:
  %t1123 = load i32, ptr %l527, !tbaa !23
  store i32 %t1123, ptr %l45, !tbaa !23
  %t1124 = load ptr, ptr %l44, !tbaa !29
  %t1126 = getelementptr %"compiler/typed:Make", ptr %t1124, i32 0, i32 0
  %t1127 = load i32, ptr %t1126, !range !{i32 0, i32 5}
  %t1129 = trunc i64 3 to i32
  %t1130 = icmp eq i32 %t1127, %t1129
  br i1 %t1130, label %bb241, label %bb242
bb241:
  store i1 true, ptr %l531, !tbaa !21
  br label %bb243
bb242:
  %t1132 = load ptr, ptr %l44, !tbaa !29
  %t1134 = getelementptr %"compiler/typed:Make", ptr %t1132, i32 0, i32 0
  %t1135 = load i32, ptr %t1134, !range !{i32 0, i32 5}
  %t1137 = trunc i64 2 to i32
  %t1138 = icmp eq i32 %t1135, %t1137
  store i1 %t1138, ptr %l531, !tbaa !21
  br label %bb243
bb243:
  %t1140 = load i1, ptr %l531, !tbaa !21
  br i1 %t1140, label %bb244, label %bb245
bb244:
  %t1141 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1141, ptr %l536, !tbaa !29
  %t1142 = load ptr, ptr %l6, !tbaa !29
  %t1143 = load i32, ptr %l43, !tbaa !23
  %t1146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1142, i32 %t1143)
  store i32 %t1146, ptr %l539
  br label %bb246
bb245:
  store i1 false, ptr %l535, !tbaa !21
  br label %bb248
bb246:
  %t1147 = load ptr, ptr %l536, !tbaa !29
  %t1148 = load i32, ptr %l539, !tbaa !23
  %t1149 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1147, i32 %t1148)
  store i1 %t1149, ptr %l540
  br label %bb247
bb247:
  %t1150 = load i1, ptr %l540, !tbaa !21
  %t1151 = xor i1 %t1150, true
  store i1 %t1151, ptr %l535, !tbaa !21
  br label %bb248
bb248:
  %t1153 = load i1, ptr %l535, !tbaa !21
  br i1 %t1153, label %bb249, label %bb250
bb249:
  %t1154 = load i32, ptr %l45, !tbaa !23
  %t1155 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1158 = icmp ne i32 %t1154, %t1155
  store i1 %t1158, ptr %l542, !tbaa !21
  br label %bb251
bb250:
  store i1 false, ptr %l542, !tbaa !21
  br label %bb251
bb251:
  %t1160 = load i1, ptr %l542, !tbaa !21
  br i1 %t1160, label %bb252, label %bb253
bb252:
  %t1161 = load ptr, ptr %l0, !tbaa !29
  %t1162 = load i32, ptr %l45, !tbaa !23
  %t1165 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t1161, i32 %t1162)
  store i64 %t1165, ptr %l549
  br label %bb254
bb253:
  store i1 false, ptr %l546, !tbaa !21
  br label %bb255
bb254:
  %t1166 = load i64, ptr %l549, !tbaa !24
  %t1167 = icmp sge i64 %t1166, 0
  store i1 %t1167, ptr %l546, !tbaa !21
  br label %bb255
bb255:
  %t1169 = load i1, ptr %l546, !tbaa !21
  br i1 %t1169, label %bb256, label %bb257
bb256:
  %t1170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1170, ptr %l552, !tbaa !29
  %t1171 = load ptr, ptr %l0, !tbaa !29
  %t1172 = load i32, ptr %l4, !tbaa !23
  %t1175 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t1171, i32 %t1172)
  store i32 %t1175, ptr %l555
  br label %bb258
bb257:
  store i1 false, ptr %l551, !tbaa !21
  br label %bb260
bb258:
  %t1176 = load ptr, ptr %l552, !tbaa !29
  %t1177 = load i32, ptr %l555, !tbaa !23
  %t1178 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t1176, i32 %t1177)
  store i64 %t1178, ptr %l556
  br label %bb259
bb259:
  %t1179 = load i64, ptr %l556, !tbaa !24
  %t1180 = icmp slt i64 %t1179, 0
  store i1 %t1180, ptr %l551, !tbaa !21
  br label %bb260
bb260:
  %t1182 = load i1, ptr %l551, !tbaa !21
  br i1 %t1182, label %bb261, label %bb262
bb261:
  %t1183 = load ptr, ptr %l44, !tbaa !29
  %t1185 = getelementptr %"compiler/typed:Make", ptr %t1183, i32 0, i32 4
  %t1186 = load i32, ptr %t1185, !tbaa !23
  %t1188 = icmp sge i32 %t1186, 0
  store i1 %t1188, ptr %l558, !tbaa !21
  br label %bb263
bb262:
  store i1 false, ptr %l558, !tbaa !21
  br label %bb263
bb263:
  %t1190 = load i1, ptr %l558, !tbaa !21
  br i1 %t1190, label %bb264, label %bb265
bb264:
  %t1191 = load ptr, ptr %l0, !tbaa !29
  %t1192 = load ptr, ptr %l44, !tbaa !29
  %t1194 = getelementptr %"compiler/typed:Make", ptr %t1192, i32 0, i32 4
  %t1195 = load i32, ptr %t1194, !tbaa !23
  %t1198 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t1191, i32 %t1195)
  store { i64, [1 x i64] } %t1198, ptr %l565
  br label %bb266
bb265:
  br label %bb272
bb266:
  %t1199 = load { i64, [1 x i64] }, ptr %l565
  store { i64, [1 x i64] } %t1199, ptr %l46
  %t1200 = load ptr, ptr %l44, !tbaa !29
  %t1202 = getelementptr %"compiler/typed:Make", ptr %t1200, i32 0, i32 0
  %t1203 = load i32, ptr %t1202, !range !{i32 0, i32 5}
  %t1205 = trunc i64 3 to i32
  %t1206 = icmp eq i32 %t1203, %t1205
  br i1 %t1206, label %bb267, label %bb268
bb267:
  %t1208 = load ptr, ptr %l0, !tbaa !29
  %t1209 = load ptr, ptr %l44, !tbaa !29
  %t1210 = load i32, ptr %l4, !tbaa !23
  %t1211 = load %"compiler/source:Span", ptr %l5
  %t1212 = load { i64, [1 x i64] }, ptr %l46
  %t1218 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %t1208, ptr %t1209, i32 %t1210, %"compiler/source:Span" %t1211, i1 true, { i64, [1 x i64] } %t1212)
  store { i64, [4 x i64] } %t1218, ptr %l575
  br label %bb269
bb268:
  %t1219 = load ptr, ptr %l0, !tbaa !29
  %t1220 = load ptr, ptr %l44, !tbaa !29
  %t1221 = load i32, ptr %l4, !tbaa !23
  %t1222 = load %"compiler/source:Span", ptr %l5
  %t1223 = load { i64, [1 x i64] }, ptr %l46
  %t1229 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %t1219, ptr %t1220, i32 %t1221, %"compiler/source:Span" %t1222, i1 true, { i64, [1 x i64] } %t1223)
  store { i64, [4 x i64] } %t1229, ptr %l581
  br label %bb270
bb269:
  %t1230 = load { i64, [4 x i64] }, ptr %l575
  store { i64, [4 x i64] } %t1230, ptr %l569
  br label %bb271
bb270:
  %t1231 = load { i64, [4 x i64] }, ptr %l581
  store { i64, [4 x i64] } %t1231, ptr %l569
  br label %bb271
bb271:
  call void @__olang_scope_close(ptr %s0)
  %t1232 = load { i64, [4 x i64] }, ptr %l569
  store { i64, [4 x i64] } %t1232, ptr %rv
  br label %ret
bb272:
  br label %bb278
bb273:
  br i1 true, label %bb274, label %bb275
bb274:
  br label %bb276
bb275:
  br label %bb277
bb276:
  br label %bb278
bb277:
  call void @__olang_check_failed(ptr @olang_loc_fcf54f1de4315015_3c2061767d7aa89)
  unreachable
bb278:
  br label %bb279
bb279:
  %t1233 = load ptr, ptr %l0, !tbaa !29
  %t1234 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1237 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %s0, ptr %t1233, { i64, ptr } %t1234)
  store { i64, ptr } %t1237, ptr %l584
  br label %bb280
bb280:
  %t1238 = load { i64, ptr }, ptr %l584, !tbaa !27
  store { i64, ptr } %t1238, ptr %l47, !tbaa !27
  %t1239 = load ptr, ptr %l0, !tbaa !29
  %t1241 = getelementptr %"compiler/lower:lowering", ptr %t1239, i32 0, i32 10
  %t1242 = load i1, ptr %t1241, !tbaa !21
  br i1 %t1242, label %bb281, label %bb282
bb281:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1244
  %t1245 = getelementptr { i64, [4 x i64] }, ptr %t1244, i32 0, i32 0
  store i64 0, ptr %t1245
  %t1246 = load { i64, [4 x i64] }, ptr %t1244
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t1246, ptr %rv
  br label %ret
bb282:
  br label %bb283
bb283:
  %t1248 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1250 = trunc i64 20 to i32
  %t1251 = icmp eq i32 %t1248, %t1250
  br i1 %t1251, label %bb284, label %bb285
bb284:
  %t1253 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1255 = extractvalue { i64, ptr } %t1253, 0
  %t1257 = icmp eq i64 %t1255, 1
  store i1 %t1257, ptr %l590, !tbaa !21
  br label %bb286
bb285:
  store i1 false, ptr %l590, !tbaa !21
  br label %bb286
bb286:
  %t1259 = load i1, ptr %l590, !tbaa !21
  br i1 %t1259, label %bb287, label %bb288
bb287:
  %t1260 = load ptr, ptr %l6, !tbaa !29
  %t1261 = load i32, ptr %l4, !tbaa !23
  %t1264 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1260, i32 %t1261)
  store i32 %t1264, ptr %l597
  br label %bb289
bb288:
  store i1 false, ptr %l594, !tbaa !21
  br label %bb290
bb289:
  %t1265 = load i32, ptr %l597, !range !{i32 0, i32 33}
  %t1267 = trunc i64 32 to i32
  %t1268 = icmp eq i32 %t1265, %t1267
  store i1 %t1268, ptr %l594, !tbaa !21
  br label %bb290
bb290:
  %t1270 = load i1, ptr %l594, !tbaa !21
  br i1 %t1270, label %bb291, label %bb292
bb291:
  %t1271 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1271, ptr %l601, !tbaa !29
  %t1272 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1272, ptr %l602, !tbaa !27
  %t1273 = getelementptr { i64, ptr }, ptr %l602, i32 0, i32 1
  %t1274 = load ptr, ptr %t1273, !tbaa !27
  %t1275 = getelementptr ptr, ptr %t1274, i64 0
  %t1276 = load ptr, ptr %t1275, !tbaa !39
  %t1278 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1276)
  store i32 %t1278, ptr %l604
  br label %bb293
bb292:
  store i1 false, ptr %l600, !tbaa !21
  br label %bb295
bb293:
  %t1279 = load ptr, ptr %l601, !tbaa !29
  %t1280 = load i32, ptr %l604, !tbaa !23
  %t1281 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1279, i32 %t1280)
  store i32 %t1281, ptr %l605
  br label %bb294
bb294:
  %t1282 = load i32, ptr %l605, !range !{i32 0, i32 33}
  %t1284 = trunc i64 32 to i32
  %t1285 = icmp eq i32 %t1282, %t1284
  store i1 %t1285, ptr %l600, !tbaa !21
  br label %bb295
bb295:
  %t1287 = load i1, ptr %l600, !tbaa !21
  br i1 %t1287, label %bb296, label %bb297
bb296:
  %t1288 = load ptr, ptr %l6, !tbaa !29
  %t1289 = load i32, ptr %l4, !tbaa !23
  %t1292 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t1288, i32 %t1289)
  store i1 %t1292, ptr %l610
  br label %bb298
bb297:
  br label %bb313
bb298:
  %t1293 = load i1, ptr %l610, !tbaa !21
  br i1 %t1293, label %bb299, label %bb300
bb299:
  store i1 true, ptr %l611, !tbaa !21
  br label %bb303
bb300:
  %t1294 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1294, ptr %l612, !tbaa !29
  %t1295 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1295, ptr %l613, !tbaa !27
  %t1296 = getelementptr { i64, ptr }, ptr %l613, i32 0, i32 1
  %t1297 = load ptr, ptr %t1296, !tbaa !27
  %t1298 = getelementptr ptr, ptr %t1297, i64 0
  %t1299 = load ptr, ptr %t1298, !tbaa !39
  %t1301 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1299)
  store i32 %t1301, ptr %l615
  br label %bb301
bb301:
  %t1302 = load ptr, ptr %l612, !tbaa !29
  %t1303 = load i32, ptr %l615, !tbaa !23
  %t1304 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t1302, i32 %t1303)
  store i1 %t1304, ptr %l616
  br label %bb302
bb302:
  %t1305 = load i1, ptr %l616, !tbaa !21
  store i1 %t1305, ptr %l611, !tbaa !21
  br label %bb303
bb303:
  %t1306 = load i1, ptr %l611, !tbaa !21
  br i1 %t1306, label %bb304, label %bb305
bb304:
  %t1307 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1307, ptr %l617, !tbaa !29
  %t1308 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1309 = load ptr, ptr %t1308, !tbaa !27
  %t1310 = getelementptr { i64, [4 x i64] }, ptr %t1309, i64 0
  %t1311 = load { i64, [4 x i64] }, ptr %t1310
  store { i64, [4 x i64] } %t1311, ptr %l618
  %t1312 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1312, ptr %l619, !tbaa !27
  %t1313 = getelementptr { i64, ptr }, ptr %l619, i32 0, i32 1
  %t1314 = load ptr, ptr %t1313, !tbaa !27
  %t1315 = getelementptr ptr, ptr %t1314, i64 0
  %t1316 = load ptr, ptr %t1315, !tbaa !39
  %t1318 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1316)
  store i32 %t1318, ptr %l621
  br label %bb306
bb305:
  br label %bb308
bb306:
  %t1319 = load i32, ptr %l4, !tbaa !23
  %t1320 = load %"compiler/source:Span", ptr %l5
  %t1321 = load ptr, ptr %l617, !tbaa !29
  %t1322 = load { i64, [4 x i64] }, ptr %l618
  %t1323 = load i32, ptr %l621, !tbaa !23
  %t1326 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrConvert(ptr %v0, ptr %t1321, { i64, [4 x i64] } %t1322, i32 %t1323, i32 %t1319, %"compiler/source:Span" %t1320)
  store { i64, [4 x i64] } %t1326, ptr %l624
  br label %bb307
bb307:
  call void @__olang_scope_close(ptr %s0)
  %t1327 = load { i64, [4 x i64] }, ptr %l624
  store { i64, [4 x i64] } %t1327, ptr %rv
  br label %ret
bb308:
  %t1328 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1328, ptr %l625, !tbaa !29
  %t1329 = load i32, ptr %l4, !tbaa !23
  store i32 %t1329, ptr %l626, !tbaa !23
  %t1330 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1331 = load ptr, ptr %t1330, !tbaa !27
  %t1332 = getelementptr { i64, [4 x i64] }, ptr %t1331, i64 0
  %t1333 = load { i64, [4 x i64] }, ptr %t1332
  store { i64, [4 x i64] } %t1333, ptr %l627
  %t1334 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1334, ptr %l628, !tbaa !29
  %t1335 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1335, ptr %l629, !tbaa !27
  %t1336 = getelementptr { i64, ptr }, ptr %l629, i32 0, i32 1
  %t1337 = load ptr, ptr %t1336, !tbaa !27
  %t1338 = getelementptr ptr, ptr %t1337, i64 0
  %t1339 = load ptr, ptr %t1338, !tbaa !39
  %t1341 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1339)
  store i32 %t1341, ptr %l631
  br label %bb309
bb309:
  %t1342 = load ptr, ptr %l628, !tbaa !29
  %t1343 = load i32, ptr %l631, !tbaa !23
  %t1344 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t1342, i32 %t1343)
  store i32 %t1344, ptr %l632
  br label %bb310
bb310:
  %t1345 = load ptr, ptr %l6, !tbaa !29
  %t1346 = load i32, ptr %l4, !tbaa !23
  %t1349 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t1345, i32 %t1346)
  store i32 %t1349, ptr %l635
  br label %bb311
bb311:
  store { i64, [15 x i64] } zeroinitializer, ptr %t1350
  %t1351 = getelementptr { i64, [15 x i64] }, ptr %t1350, i32 0, i32 0
  store i64 11, ptr %t1351
  %t1352 = load { i64, [4 x i64] }, ptr %l627
  %t1353 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t1352, 0
  %t1354 = load i32, ptr %l632, !tbaa !23
  %t1355 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t1353, i32 %t1354, 1
  %t1356 = load i32, ptr %l635, !tbaa !23
  %t1357 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t1355, i32 %t1356, 2
  %t1358 = getelementptr { i64, [15 x i64] }, ptr %t1350, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t1357, ptr %t1358
  %t1359 = load { i64, [15 x i64] }, ptr %t1350
  %t1360 = load %"compiler/source:Span", ptr %l5
  %t1361 = load ptr, ptr %l625, !tbaa !29
  %t1362 = load i32, ptr %l626, !tbaa !23
  %t1365 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t1361, i32 %t1362, { i64, [15 x i64] } %t1359, %"compiler/source:Span" %t1360)
  store { i64, [4 x i64] } %t1365, ptr %l638
  br label %bb312
bb312:
  call void @__olang_scope_close(ptr %s0)
  %t1366 = load { i64, [4 x i64] }, ptr %l638
  store { i64, [4 x i64] } %t1366, ptr %rv
  br label %ret
bb313:
  %t1367 = load ptr, ptr %l0, !tbaa !29
  %t1368 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1369 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1370 = load i32, ptr %l4, !tbaa !23
  %t1375 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %t1367, i32 %t1368, { i64, ptr } %t1369, i32 %t1370)
  store i1 %t1375, ptr %l643
  br label %bb314
bb314:
  %t1376 = load i1, ptr %l643, !tbaa !21
  br i1 %t1376, label %bb315, label %bb316
bb315:
  %t1377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1377, ptr %l644, !tbaa !29
  %t1378 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1379 = load ptr, ptr %t1378, !tbaa !27
  %t1380 = getelementptr { i64, [4 x i64] }, ptr %t1379, i64 0
  %t1381 = load { i64, [4 x i64] }, ptr %t1380
  store { i64, [4 x i64] } %t1381, ptr %l645
  %t1382 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1382, ptr %l646, !tbaa !27
  %t1383 = getelementptr { i64, ptr }, ptr %l646, i32 0, i32 1
  %t1384 = load ptr, ptr %t1383, !tbaa !27
  %t1385 = getelementptr ptr, ptr %t1384, i64 0
  %t1386 = load ptr, ptr %t1385, !tbaa !39
  %t1388 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1386)
  store i32 %t1388, ptr %l648
  br label %bb317
bb316:
  br label %bb320
bb317:
  %t1389 = load i32, ptr %l4, !tbaa !23
  store i32 %t1389, ptr %l649, !tbaa !23
  %t1390 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t1390, ptr %l650
  %t1391 = load ptr, ptr %l0, !tbaa !29
  %t1393 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %t1391)
  store { i64, [1 x i64] } %t1393, ptr %l652
  br label %bb318
bb318:
  %t1394 = load ptr, ptr %l644, !tbaa !29
  %t1395 = load { i64, [4 x i64] }, ptr %l645
  %t1396 = load i32, ptr %l648, !tbaa !23
  %t1397 = load i32, ptr %l649, !tbaa !23
  %t1398 = load %"compiler/source:Span", ptr %l650
  %t1399 = load { i64, [1 x i64] }, ptr %l652
  %t1400 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %t1394, { i64, [4 x i64] } %t1395, i32 %t1396, i32 %t1397, %"compiler/source:Span" %t1398, { i64, [1 x i64] } %t1399)
  store { i64, [4 x i64] } %t1400, ptr %l653
  br label %bb319
bb319:
  call void @__olang_scope_close(ptr %s0)
  %t1401 = load { i64, [4 x i64] }, ptr %l653
  store { i64, [4 x i64] } %t1401, ptr %rv
  br label %ret
bb320:
  %t1402 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1404 = trunc i64 23 to i32
  %t1405 = icmp eq i32 %t1402, %t1404
  br i1 %t1405, label %bb321, label %bb322
bb321:
  %t1407 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1407, ptr %l657, !tbaa !29
  %t1408 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1408, ptr %l658, !tbaa !29
  %t1409 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1409, ptr %l659, !tbaa !27
  %t1410 = getelementptr { i64, ptr }, ptr %l659, i32 0, i32 1
  %t1411 = load ptr, ptr %t1410, !tbaa !27
  %t1412 = getelementptr ptr, ptr %t1411, i64 0
  %t1413 = load ptr, ptr %t1412, !tbaa !39
  %t1415 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1413)
  store i32 %t1415, ptr %l661
  br label %bb323
bb322:
  store i1 false, ptr %l656, !tbaa !21
  br label %bb326
bb323:
  %t1416 = load ptr, ptr %l658, !tbaa !29
  %t1417 = load i32, ptr %l661, !tbaa !23
  %t1418 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1416, i32 %t1417)
  store i32 %t1418, ptr %l662
  br label %bb324
bb324:
  %t1419 = load ptr, ptr %l657, !tbaa !29
  %t1420 = load i32, ptr %l662, !tbaa !23
  %t1421 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1419, i32 %t1420)
  store i1 %t1421, ptr %l663
  br label %bb325
bb325:
  %t1422 = load i1, ptr %l663, !tbaa !21
  store i1 %t1422, ptr %l656, !tbaa !21
  br label %bb326
bb326:
  %t1423 = load i1, ptr %l656, !tbaa !21
  br i1 %t1423, label %bb327, label %bb328
bb327:
  %t1424 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1424, ptr %l664, !tbaa !29
  %t1425 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1426 = load ptr, ptr %t1425, !tbaa !27
  %t1427 = getelementptr { i64, [4 x i64] }, ptr %t1426, i64 0
  %t1428 = load { i64, [4 x i64] }, ptr %t1427
  store { i64, [4 x i64] } %t1428, ptr %l665
  %t1429 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1429, ptr %l666, !tbaa !27
  %t1430 = getelementptr { i64, ptr }, ptr %l666, i32 0, i32 1
  %t1431 = load ptr, ptr %t1430, !tbaa !27
  %t1432 = getelementptr ptr, ptr %t1431, i64 0
  %t1433 = load ptr, ptr %t1432, !tbaa !39
  %t1435 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1433)
  store i32 %t1435, ptr %l668
  br label %bb329
bb328:
  br label %bb331
bb329:
  %t1436 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1437 = load ptr, ptr %t1436, !tbaa !27
  %t1438 = getelementptr { i64, [4 x i64] }, ptr %t1437, i64 1
  %t1439 = load { i64, [4 x i64] }, ptr %t1438
  %t1440 = load %"compiler/source:Span", ptr %l5
  %t1441 = load ptr, ptr %l664, !tbaa !29
  %t1442 = load { i64, [4 x i64] }, ptr %l665
  %t1443 = load i32, ptr %l668, !tbaa !23
  %t1446 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eisCaseRef(ptr %v0, ptr %t1441, { i64, [4 x i64] } %t1442, i32 %t1443, { i64, [4 x i64] } %t1439, %"compiler/source:Span" %t1440)
  store { i64, [4 x i64] } %t1446, ptr %l671
  br label %bb330
bb330:
  call void @__olang_scope_close(ptr %s0)
  %t1447 = load { i64, [4 x i64] }, ptr %l671
  store { i64, [4 x i64] } %t1447, ptr %rv
  br label %ret
bb331:
  %t1448 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t1450 = trunc i64 0 to i32
  %t1451 = icmp eq i32 %t1448, %t1450
  %t1453 = xor i1 %t1451, true
  br i1 %t1453, label %bb332, label %bb333
bb332:
  %t1455 = load ptr, ptr %l0, !tbaa !29
  %t1456 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1457 = load i32, ptr %l2, !range !{i32 0, i32 3}
  %t1458 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t1459 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1460 = load i32, ptr %l4, !tbaa !23
  %t1461 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eprimChecks(ptr %v0, ptr %s0, ptr %v1, ptr %t1455, i32 %t1456, i32 %t1457, { i64, ptr } %t1458, { i64, ptr } %t1459, i32 %t1460, %"compiler/source:Span" %t1461)
  br label %bb334
bb333:
  br label %bb335
bb334:
  br label %bb335
bb335:
  %t1469 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1471 = trunc i64 13 to i32
  %t1472 = icmp eq i32 %t1469, %t1471
  br i1 %t1472, label %bb336, label %bb337
bb336:
  store i1 true, ptr %l684, !tbaa !21
  br label %bb338
bb337:
  %t1474 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1476 = trunc i64 14 to i32
  %t1477 = icmp eq i32 %t1474, %t1476
  store i1 %t1477, ptr %l684, !tbaa !21
  br label %bb338
bb338:
  %t1479 = load i1, ptr %l684, !tbaa !21
  br i1 %t1479, label %bb339, label %bb340
bb339:
  %t1480 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t1482 = extractvalue { i64, ptr } %t1480, 0
  %t1484 = icmp eq i64 %t1482, 2
  store i1 %t1484, ptr %l687, !tbaa !21
  br label %bb341
bb340:
  store i1 false, ptr %l687, !tbaa !21
  br label %bb341
bb341:
  %t1486 = load i1, ptr %l687, !tbaa !21
  br i1 %t1486, label %bb342, label %bb343
bb342:
  %t1487 = load ptr, ptr %l6, !tbaa !29
  store ptr %t1487, ptr %l692, !tbaa !29
  %t1488 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1488, ptr %l693, !tbaa !27
  %t1489 = getelementptr { i64, ptr }, ptr %l693, i32 0, i32 1
  %t1490 = load ptr, ptr %t1489, !tbaa !27
  %t1491 = getelementptr ptr, ptr %t1490, i64 0
  %t1492 = load ptr, ptr %t1491, !tbaa !39
  %t1494 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1492)
  store i32 %t1494, ptr %l695
  br label %bb344
bb343:
  store i1 false, ptr %l691, !tbaa !21
  br label %bb346
bb344:
  %t1495 = load ptr, ptr %l692, !tbaa !29
  %t1496 = load i32, ptr %l695, !tbaa !23
  %t1497 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t1495, i32 %t1496)
  store i1 %t1497, ptr %l696
  br label %bb345
bb345:
  %t1498 = load i1, ptr %l696, !tbaa !21
  store i1 %t1498, ptr %l691, !tbaa !21
  br label %bb346
bb346:
  %t1499 = load i1, ptr %l691, !tbaa !21
  br i1 %t1499, label %bb347, label %bb348
bb347:
  store %olang.scope zeroinitializer, ptr %s40
  %t1500 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t1500, ptr %l697, !tbaa !27
  %t1501 = getelementptr { i64, ptr }, ptr %l697, i32 0, i32 1
  %t1502 = load ptr, ptr %t1501, !tbaa !27
  %t1503 = getelementptr ptr, ptr %t1502, i64 0
  %t1504 = load ptr, ptr %t1503, !tbaa !39
  %t1506 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1504)
  store i32 %t1506, ptr %l699
  br label %bb349
bb348:
  br label %bb359
bb349:
  %t1507 = load i32, ptr %l699, !tbaa !23
  store i32 %t1507, ptr %l48, !tbaa !23
  %t1508 = load ptr, ptr %l0, !tbaa !29
  %t1509 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1510 = load ptr, ptr %t1509, !tbaa !27
  %t1511 = getelementptr { i64, [4 x i64] }, ptr %t1510, i64 0
  %t1512 = load { i64, [4 x i64] }, ptr %t1511
  %t1513 = load i32, ptr %l48, !tbaa !23
  %t1514 = load %"compiler/source:Span", ptr %l5
  %t1519 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t1508, { i64, [4 x i64] } %t1512, i32 %t1513, %"compiler/source:Span" %t1514)
  store i32 %t1519, ptr %l704
  br label %bb350
bb350:
  %t1520 = load i32, ptr %l704, !tbaa !23
  store i32 %t1520, ptr %l49, !tbaa !23
  %t1521 = load ptr, ptr %l0, !tbaa !29
  %t1522 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t1523 = load ptr, ptr %t1522, !tbaa !27
  %t1524 = getelementptr { i64, [4 x i64] }, ptr %t1523, i64 1
  %t1525 = load { i64, [4 x i64] }, ptr %t1524
  %t1526 = load i32, ptr %l48, !tbaa !23
  %t1527 = load %"compiler/source:Span", ptr %l5
  %t1532 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t1521, { i64, [4 x i64] } %t1525, i32 %t1526, %"compiler/source:Span" %t1527)
  store i32 %t1532, ptr %l709
  br label %bb351
bb351:
  %t1533 = load i32, ptr %l709, !tbaa !23
  store i32 %t1533, ptr %l50, !tbaa !23
  %t1534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1534, ptr %l710, !tbaa !29
  %t1535 = load i32, ptr %l49, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t1536
  %t1537 = getelementptr { i64, [2 x i64] }, ptr %t1536, i32 0, i32 0
  store i64 1, ptr %t1537
  %t1539 = insertvalue { i32 } undef, i32 %t1535, 0
  %t1540 = getelementptr { i64, [2 x i64] }, ptr %t1536, i32 0, i32 1
  store { i32 } %t1539, ptr %t1540
  %t1541 = load { i64, [2 x i64] }, ptr %t1536
  %t1543 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s40, { i64, [2 x i64] } %t1541)
  store %"compiler/lower:pl" %t1543, ptr %l713
  br label %bb352
bb352:
  %t1544 = load i32, ptr %l50, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t1545
  %t1546 = getelementptr { i64, [2 x i64] }, ptr %t1545, i32 0, i32 0
  store i64 1, ptr %t1546
  %t1548 = insertvalue { i32 } undef, i32 %t1544, 0
  %t1549 = getelementptr { i64, [2 x i64] }, ptr %t1545, i32 0, i32 1
  store { i32 } %t1548, ptr %t1549
  %t1550 = load { i64, [2 x i64] }, ptr %t1545
  %t1552 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s40, { i64, [2 x i64] } %t1550)
  store %"compiler/lower:pl" %t1552, ptr %l716
  br label %bb353
bb353:
  %t1553 = load i32, ptr %l48, !tbaa !23
  %t1554 = load %"compiler/source:Span", ptr %l5
  %t1555 = load ptr, ptr %l710, !tbaa !29
  %t1556 = load %"compiler/lower:pl", ptr %l713
  %t1557 = load %"compiler/lower:pl", ptr %l716
  %t1560 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %s40, ptr %s40, ptr %t1555, %"compiler/lower:pl" %t1556, %"compiler/lower:pl" %t1557, i32 %t1553, %"compiler/source:Span" %t1554, i1 false)
  store { i64, [4 x i64] } %t1560, ptr %l719
  br label %bb354
bb354:
  %t1561 = load { i64, [4 x i64] }, ptr %l719
  store { i64, [4 x i64] } %t1561, ptr %l51
  %t1562 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1564 = trunc i64 13 to i32
  %t1565 = icmp eq i32 %t1562, %t1564
  br i1 %t1565, label %bb355, label %bb356
bb355:
  %t1567 = load { i64, [4 x i64] }, ptr %l51
  store { i64, [4 x i64] } %t1567, ptr %l722
  br label %bb358
bb356:
  %t1569 = load ptr, ptr %l0, !tbaa !29
  %t1570 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1571 = load { i64, [4 x i64] }, ptr %l51
  %t1572 = mul i64 1, 40
  %t1573 = call ptr @__olang_scope_alloc_zeroed(ptr %s40, i64 %t1572)
  %t1574 = insertvalue { i64, ptr } undef, i64 1, 0
  %t1575 = insertvalue { i64, ptr } %t1574, ptr %t1573, 1
  store { i64, ptr } %t1575, ptr %l728, !tbaa !27
  %t1577 = getelementptr { i64, ptr }, ptr %l728, i32 0, i32 1
  %t1578 = load ptr, ptr %t1577, !tbaa !27
  %t1579 = getelementptr { i64, [4 x i64] }, ptr %t1578, i64 0
  store { i64, [4 x i64] } %t1571, ptr %t1579
  %t1580 = load %"compiler/source:Span", ptr %l5
  %t1584 = load { i64, ptr }, ptr %l728, !tbaa !27
  %t1586 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s40, ptr %t1569, i32 2, i32 %t1570, { i64, ptr } %t1584, %"compiler/source:Span" %t1580)
  store { i64, [4 x i64] } %t1586, ptr %l730
  br label %bb357
bb357:
  %t1587 = load { i64, [4 x i64] }, ptr %l730
  store { i64, [4 x i64] } %t1587, ptr %l722
  br label %bb358
bb358:
  call void @__olang_scope_close(ptr %s40)
  call void @__olang_scope_close(ptr %s0)
  %t1588 = load { i64, [4 x i64] }, ptr %l722
  store { i64, [4 x i64] } %t1588, ptr %rv
  br label %ret
bb359:
  %t1589 = load ptr, ptr %l0, !tbaa !29
  %t1590 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1591 = load i32, ptr %l4, !tbaa !23
  %t1592 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t1593 = load %"compiler/source:Span", ptr %l5
  %t1599 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t1589, i32 %t1590, i32 %t1591, { i64, ptr } %t1592, %"compiler/source:Span" %t1593)
  store { i64, [4 x i64] } %t1599, ptr %l736
  br label %bb360
bb360:
  call void @__olang_scope_close(ptr %s0)
  %t1600 = load { i64, [4 x i64] }, ptr %l736
  store { i64, [4 x i64] } %t1600, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromote(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %l23 = alloca i64
  %l25 = alloca { i64, [4 x i64] }
  %l31 = alloca { i64, [4 x i64] }
  %l32 = alloca i32
  %l34 = alloca i1
  %l39 = alloca { i64, [4 x i64] }
  %l44 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l5, !tbaa !23
  %t12 = load ptr, ptr %l4, !tbaa !29
  store ptr %t12, ptr %l11, !tbaa !29
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l14
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l11, !tbaa !29
  %t19 = load i32, ptr %l14, !tbaa !23
  %t20 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t20, ptr %l15
  br label %bb3
bb3:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t22 = load i32, ptr %l5, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t26 = icmp ne i32 %t22, %t23
  store i1 %t26, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l16, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l5, !tbaa !23
  %t33 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t29, i32 %t30)
  store i64 %t33, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = icmp slt i64 %t34, 0
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  %t41 = load %"compiler/source:Span", ptr %l3
  %t42 = load i32, ptr %l5, !tbaa !23
  %t48 = call { i32, { i64, [4 x i64] } } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedInPlace(ptr %v0, ptr %v1, ptr %t38, ptr %t39, i32 %t40, %"compiler/source:Span" %t41, i32 %t42)
  %t49 = extractvalue { i32, { i64, [4 x i64] } } %t48, 1
  %t50 = extractvalue { i32, { i64, [4 x i64] } } %t48, 0
  store i32 %t50, ptr %l32
  %t51 = icmp ne i32 %t50, 0
  br i1 %t51, label %bb14, label %ok.52, !prof !99
ok.52:
  store { i64, [4 x i64] } %t49, ptr %l31
  br label %bb13
bb12:
  br label %bb18
bb13:
  %t53 = load { i64, [4 x i64] }, ptr %l31
  store { i64, [4 x i64] } %t53, ptr %l25
  br label %bb17
bb14:
  %t54 = load i32, ptr %l32, !tbaa !23
  %t55 = ashr i32 %t54, 16
  %t57 = icmp eq i32 %t55, 1
  store i1 %t57, ptr %l34, !tbaa !21
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load i32, ptr %l2, !tbaa !23
  %t61 = load %"compiler/source:Span", ptr %l3
  %t66 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromoteNew(ptr %v0, ptr %v1, ptr %t58, ptr %t59, i32 %t60, %"compiler/source:Span" %t61)
  store { i64, [4 x i64] } %t66, ptr %l39
  br label %bb16
bb16:
  %t67 = load { i64, [4 x i64] }, ptr %l39
  store { i64, [4 x i64] } %t67, ptr %l25
  br label %bb17
bb17:
  %t68 = load { i64, [4 x i64] }, ptr %l25
  store { i64, [4 x i64] } %t68, ptr %rv
  br label %ret
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t71 = load i32, ptr %l2, !tbaa !23
  %t72 = load %"compiler/source:Span", ptr %l3
  %t77 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromoteNew(ptr %v0, ptr %v1, ptr %t69, ptr %t70, i32 %t71, %"compiler/source:Span" %t72)
  store { i64, [4 x i64] } %t77, ptr %l44
  br label %bb19
bb19:
  %t78 = load { i64, [4 x i64] }, ptr %l44
  store { i64, [4 x i64] } %t78, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l16 = alloca ptr
  %l27 = alloca ptr
  %l31 = alloca { i64, [1 x i64] }
  %l35 = alloca { i64, [4 x i64] }
  %l45 = alloca ptr
  %l46 = alloca { i64, [4 x i64] }
  %l48 = alloca i32
  %l50 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca i32
  %l54 = alloca %"compiler/mir:Lvalue"
  %l58 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t72 = alloca { i64, [4 x i64] }, align 8
  %t94 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Promote", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call ptr @compiler_2flower_2ecopyMade(ptr %v1, ptr %v1, ptr %t6)
  store ptr %t8, ptr %l16
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l16, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_23ead67d8f6e59cb_86ca0369ed971687)
  unreachable
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 28
  %t19 = load i32, ptr %t18, !tbaa !23
  store i32 %t19, ptr %l7, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/lower:lowering", ptr %t21, i32 0, i32 29
  %t24 = load { i64, [1 x i64] }, ptr %t23
  store { i64, [1 x i64] } %t24, ptr %l8
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Make", ptr %t14, i32 0, i32 4
  %t30 = load i32, ptr %t29, !tbaa !23
  %t33 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 28
  store i32 %t30, ptr %t33, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l27, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Promote", ptr %t36, i32 0, i32 1
  %t39 = load i32, ptr %t38, !tbaa !23
  %t42 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %t35, i32 %t39)
  store { i64, [1 x i64] } %t42, ptr %l31
  br label %bb5
bb5:
  %t43 = load { i64, [1 x i64] }, ptr %l31
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 29
  store { i64, [1 x i64] } %t43, ptr %t45
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t51 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store { i64, [4 x i64] } %t51, ptr %l35
  br label %bb6
bb6:
  %t52 = load { i64, [4 x i64] }, ptr %l35
  store { i64, [4 x i64] } %t52, ptr %l9
  %t53 = load i32, ptr %l7, !tbaa !23
  %t55 = load { i64, [1 x i64] }, ptr %l8
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lower:lowering", ptr %t57, i32 0, i32 28
  store i32 %t53, ptr %t61, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 29
  store { i64, [1 x i64] } %t55, ptr %t66
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lower:lowering", ptr %t67, i32 0, i32 10
  %t70 = load i1, ptr %t69, !tbaa !21
  br i1 %t70, label %bb7, label %bb8
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 0
  store i64 0, ptr %t73
  %t74 = load { i64, [4 x i64] }, ptr %t72
  store { i64, [4 x i64] } %t74, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l45, !tbaa !29
  %t77 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [4 x i64] } %t77, ptr %l46
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t78)
  store i32 %t80, ptr %l48
  br label %bb10
bb10:
  %t81 = load %"compiler/source:Span", ptr %l3
  %t82 = load ptr, ptr %l45, !tbaa !29
  %t83 = load { i64, [4 x i64] }, ptr %l46
  %t84 = load i32, ptr %l48, !tbaa !23
  %t86 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t82, { i64, [4 x i64] } %t83, i32 %t84, %"compiler/source:Span" %t81)
  store i32 %t86, ptr %l50
  br label %bb11
bb11:
  %t87 = load i32, ptr %l50, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l51, !tbaa !29
  %t89 = load i32, ptr %l2, !tbaa !23
  store i32 %t89, ptr %l52, !tbaa !23
  %t92 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t87)
  store %"compiler/mir:Lvalue" %t92, ptr %l54
  br label %bb12
bb12:
  %t93 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [15 x i64] }, ptr %t94, i32 0, i32 0
  store i64 1, ptr %t95
  %t96 = load %"compiler/mir:Lvalue", ptr %l54
  %t97 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t96, 0
  %t99 = insertvalue { %"compiler/mir:Lvalue", i32 } %t97, i32 %t93, 1
  %t100 = getelementptr { i64, [15 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t99, ptr %t100
  %t101 = load { i64, [15 x i64] }, ptr %t94
  %t102 = load %"compiler/source:Span", ptr %l3
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = load i32, ptr %l52, !tbaa !23
  %t107 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t103, i32 %t104, { i64, [15 x i64] } %t101, %"compiler/source:Span" %t102)
  store { i64, [4 x i64] } %t107, ptr %l58
  br label %bb13
bb13:
  %t108 = load { i64, [4 x i64] }, ptr %l58
  store { i64, [4 x i64] } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i1
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l46 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  %l58 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l73 = alloca i64
  %l76 = alloca i64
  %l95 = alloca { i64, ptr }
  %l98 = alloca i32
  %l103 = alloca i1
  %l105 = alloca { i64, ptr }
  %l108 = alloca i1
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %l114 = alloca i64
  %l119 = alloca i1
  %l122 = alloca i64
  %l124 = alloca i1
  %l127 = alloca i1
  %l131 = alloca i1
  %l134 = alloca i64
  %l136 = alloca i1
  %l139 = alloca i1
  %l143 = alloca i1
  %l146 = alloca i64
  %l148 = alloca i1
  %l149 = alloca ptr
  %l152 = alloca i1
  %l153 = alloca i32
  %l156 = alloca i32
  %l158 = alloca i1
  %l162 = alloca i1
  %l163 = alloca i1
  %l166 = alloca { i64, ptr }
  %l170 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Call", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t11 = load ptr, ptr %l3, !tbaa !29
  store ptr %t11, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t12 = load ptr, ptr %l21, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l21, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 5}
  %t18 = icmp eq i64 %t16, 0
  store i1 %t18, ptr %l22, !tbaa !21
  br label %bb2
bb2:
  %t19 = load i1, ptr %l22, !tbaa !21
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr { i64, [3 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { i32 }, ptr %t22, i32 0, i32 0
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/lower:Lowerer", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = load i32, ptr %l4, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t32, i64 %t36)
  store ptr %t39, ptr %l33
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l33, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Body", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %t42, !tbaa !23
  store i32 %t43, ptr %l20, !tbaa !23
  br label %bb25
bb7:
  %t45 = load ptr, ptr %l3, !tbaa !29
  store ptr %t45, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t46 = load ptr, ptr %l36, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = load ptr, ptr %l36, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 5}
  %t52 = icmp eq i64 %t50, 1
  store i1 %t52, ptr %l37, !tbaa !21
  br label %bb9
bb9:
  %t53 = load i1, ptr %l37, !tbaa !21
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr { i64, [3 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { i64 }, ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:lowering", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/lower:Lowerer", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t66, i64 %t67)
  store i32 %t70, ptr %l46
  br label %bb13
bb13:
  %t71 = load i32, ptr %l46, !tbaa !23
  store i32 %t71, ptr %l20, !tbaa !23
  br label %bb25
bb14:
  %t72 = load ptr, ptr %l3, !tbaa !29
  store ptr %t72, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t73 = load ptr, ptr %l47, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = load ptr, ptr %l47, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 5}
  %t79 = icmp eq i64 %t77, 4
  store i1 %t79, ptr %l48, !tbaa !21
  br label %bb16
bb16:
  %t80 = load i1, ptr %l48, !tbaa !21
  br i1 %t80, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t81 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t81, ptr %l20, !tbaa !23
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i32 -1, ptr %l20, !tbaa !23
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_79f527557a79a277_798dff7a83c0d4db)
  unreachable
bb25:
  %t83 = load i32, ptr %l20, !tbaa !23
  store i32 %t83, ptr %l6, !tbaa !23
  %t84 = load i32, ptr %l6, !tbaa !23
  %t86 = icmp eq i32 %t84, -1
  br i1 %t86, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t89 = load i32, ptr %l6, !tbaa !23
  %t90 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t93 = icmp ne i32 %t89, %t90
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t95 = load ptr, ptr %l2, !tbaa !29
  store ptr %t95, ptr %l59, !tbaa !29
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load i32, ptr %l6, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l62
  br label %bb31
bb30:
  %t101 = icmp sge i64 0, 0
  br i1 %t101, label %bb33, label %bb34
bb31:
  %t103 = load ptr, ptr %l59, !tbaa !29
  %t104 = load i32, ptr %l62, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t103, i32 %t104)
  store { i64, ptr } %t105, ptr %l63
  br label %bb32
bb32:
  %t106 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t106, ptr %l58, !tbaa !27
  br label %bb37
bb33:
  %t107 = icmp sle i64 0, 2305843009213693951
  br i1 %t107, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_2ec5e8672e3e2115_a2b323ecc8460901)
  unreachable
bb35:
  %t109 = mul i64 0, 4
  %t110 = insertvalue { i64, ptr } undef, i64 0, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t111, ptr %l58, !tbaa !27
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_2ec5e8672e3e2115_a2b323ecc8460901)
  unreachable
bb37:
  %t113 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t113, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Call", ptr %t114, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  store i64 %t119, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t121 = load i64, ptr %l9, !tbaa !24
  %t122 = load i64, ptr %l8, !tbaa !24
  %t125 = icmp sgt i64 %t121, %t122
  br i1 %t125, label %bb38, label %bb39
bb38:
  %t127 = load i64, ptr %l10, !tbaa !24
  %t129 = icmp sgt i64 %t127, 0
  br i1 %t129, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb43
bb40:
  %t131 = load i64, ptr %l9, !tbaa !24
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = sub i64 %t131, %t132
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = add i64 %t135, %t136
  %t141 = sub i64 %t139, 1
  %t142 = load i64, ptr %l10, !tbaa !24
  %t145 = sdiv i64 %t141, %t142
  store i64 %t145, ptr %l76, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb42
bb42:
  %t147 = load i64, ptr %l76, !tbaa !24
  store i64 %t147, ptr %l73, !tbaa !24
  br label %bb43
bb43:
  %t148 = load i64, ptr %l73, !tbaa !24
  store i64 %t148, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb44
bb44:
  %t149 = load i64, ptr %l12, !tbaa !24
  %t150 = load i64, ptr %l11, !tbaa !24
  %t153 = icmp slt i64 %t149, %t150
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb45, label %bb46
bb45:
  br label %bb104
bb46:
  br label %bb47
bb47:
  %t157 = load i64, ptr %l8, !tbaa !24
  %t158 = load i64, ptr %l12, !tbaa !24
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = mul i64 %t158, %t159
  %t165 = add i64 %t157, %t162
  store i64 %t165, ptr %l13, !tbaa !24
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr %"compiler/typed:Call", ptr %t167, i32 0, i32 1
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  store { i64, ptr } %t170, ptr %l95, !tbaa !27
  %t171 = load i64, ptr %l13, !tbaa !24
  %t173 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr ptr, ptr %t174, i64 %t171
  %t176 = load ptr, ptr %t175, !tbaa !39
  %t178 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t176)
  store i32 %t178, ptr %l98
  br label %bb48
bb48:
  %t179 = load i32, ptr %l98, !tbaa !23
  store i32 %t179, ptr %l14, !tbaa !23
  %t180 = load i64, ptr %l13, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t186 = icmp slt i64 %t180, %t183
  br i1 %t186, label %bb49, label %bb50
bb49:
  %t188 = load ptr, ptr %l2, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t189, ptr %l105, !tbaa !27
  %t190 = load i64, ptr %l13, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr i32, ptr %t193, i64 %t190
  %t195 = load i32, ptr %t194, !tbaa !33
  %t198 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t188, i32 %t195)
  store i1 %t198, ptr %l108
  br label %bb51
bb50:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb52
bb51:
  %t199 = load i1, ptr %l108, !tbaa !21
  store i1 %t199, ptr %l103, !tbaa !21
  br label %bb52
bb52:
  %t200 = load i1, ptr %l103, !tbaa !21
  br i1 %t200, label %bb53, label %bb54
bb53:
  %t201 = load ptr, ptr %l2, !tbaa !29
  %t202 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t202, ptr %l111, !tbaa !27
  %t203 = load i64, ptr %l13, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i32, ptr %t206, i64 %t203
  %t208 = load i32, ptr %t207, !tbaa !33
  %t211 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t201, i32 %t208)
  store i64 %t211, ptr %l114
  br label %bb55
bb54:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb56
bb55:
  %t212 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t213 = load i64, ptr %l114, !tbaa !24
  %t215 = and i64 %t213, %t212
  %t217 = icmp ne i64 %t215, 0
  store i1 %t217, ptr %l109, !tbaa !21
  br label %bb56
bb56:
  %t219 = load i1, ptr %l109, !tbaa !21
  store i1 %t219, ptr %l15, !tbaa !21
  %t220 = load i1, ptr %l15, !tbaa !21
  br i1 %t220, label %bb57, label %bb58
bb57:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/lower:lowering", ptr %t222, i32 0, i32 47
  %t226 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t224)
  store i64 %t226, ptr %l122
  br label %bb59
bb58:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb64
bb59:
  %t227 = load i64, ptr %l122, !tbaa !24
  %t228 = icmp eq i64 %t227, 0
  br i1 %t228, label %bb60, label %bb61
bb60:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb63
bb61:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l14, !tbaa !23
  %t234 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %t230, i32 %t231, i64 0)
  store i1 %t234, ptr %l127
  br label %bb62
bb62:
  %t235 = load i1, ptr %l127, !tbaa !21
  store i1 %t235, ptr %l124, !tbaa !21
  br label %bb63
bb63:
  %t236 = load i1, ptr %l124, !tbaa !21
  store i1 %t236, ptr %l119, !tbaa !21
  br label %bb64
bb64:
  %t237 = load i1, ptr %l119, !tbaa !21
  br i1 %t237, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  %t239 = load i1, ptr %l15, !tbaa !21
  %t241 = xor i1 %t239, true
  br i1 %t241, label %bb68, label %bb69
bb68:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/lower:lowering", ptr %t243, i32 0, i32 47
  %t247 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t245)
  store i64 %t247, ptr %l134
  br label %bb70
bb69:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb71
bb70:
  %t248 = load i64, ptr %l134, !tbaa !24
  %t249 = icmp eq i64 %t248, 0
  store i1 %t249, ptr %l131, !tbaa !21
  br label %bb71
bb71:
  %t251 = load i1, ptr %l131, !tbaa !21
  br i1 %t251, label %bb72, label %bb73
bb72:
  %t252 = load ptr, ptr %l2, !tbaa !29
  %t253 = load i32, ptr %l14, !tbaa !23
  %t256 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %t252, i32 %t253)
  store i1 %t256, ptr %l139
  br label %bb74
bb73:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb75
bb74:
  %t257 = load i1, ptr %l139, !tbaa !21
  store i1 %t257, ptr %l136, !tbaa !21
  br label %bb75
bb75:
  %t258 = load i1, ptr %l136, !tbaa !21
  br i1 %t258, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t260 = load i1, ptr %l15, !tbaa !21
  %t262 = xor i1 %t260, true
  br i1 %t262, label %bb79, label %bb80
bb79:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/lower:lowering", ptr %t264, i32 0, i32 47
  %t268 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t266)
  store i64 %t268, ptr %l146
  br label %bb81
bb80:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb82
bb81:
  %t269 = load i64, ptr %l146, !tbaa !24
  %t270 = icmp sgt i64 %t269, 0
  store i1 %t270, ptr %l143, !tbaa !21
  br label %bb82
bb82:
  %t272 = load i1, ptr %l143, !tbaa !21
  br i1 %t272, label %bb83, label %bb84
bb83:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l149, !tbaa !29
  %t274 = load ptr, ptr %l2, !tbaa !29
  %t275 = load i32, ptr %l14, !tbaa !23
  %t278 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t274, i32 %t275)
  store i1 %t278, ptr %l152
  br label %bb85
bb84:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb91
bb85:
  %t279 = load i1, ptr %l152, !tbaa !21
  br i1 %t279, label %bb86, label %bb87
bb86:
  %t280 = load ptr, ptr %l2, !tbaa !29
  %t281 = load i32, ptr %l14, !tbaa !23
  %t284 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t280, i32 %t281)
  store i32 %t284, ptr %l156
  br label %bb88
bb87:
  %t285 = load i32, ptr %l14, !tbaa !23
  store i32 %t285, ptr %l153, !tbaa !23
  br label %bb89
bb88:
  %t287 = load i32, ptr %l156, !tbaa !23
  store i32 %t287, ptr %l153, !tbaa !23
  br label %bb89
bb89:
  %t288 = load ptr, ptr %l149, !tbaa !29
  %t289 = load i32, ptr %l153, !tbaa !23
  %t290 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %t288, i32 %t289, i64 0)
  store i1 %t290, ptr %l158
  br label %bb90
bb90:
  %t291 = load i1, ptr %l158, !tbaa !21
  store i1 %t291, ptr %l148, !tbaa !21
  br label %bb91
bb91:
  %t292 = load i1, ptr %l148, !tbaa !21
  br i1 %t292, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  %t294 = load ptr, ptr %l2, !tbaa !29
  %t295 = load i32, ptr %l14, !tbaa !23
  %t298 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesCode(ptr %v0, ptr %t294, i32 %t295)
  store i1 %t298, ptr %l162
  br label %bb95
bb95:
  %t299 = load i1, ptr %l162, !tbaa !21
  br i1 %t299, label %bb96, label %bb97
bb96:
  store i1 true, ptr %l163, !tbaa !21
  br label %bb99
bb97:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load ptr, ptr %l1, !tbaa !29
  %t303 = getelementptr %"compiler/typed:Call", ptr %t301, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l166, !tbaa !27
  %t305 = load i64, ptr %l13, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr ptr, ptr %t308, i64 %t305
  %t310 = load ptr, ptr %t309, !tbaa !39
  %t314 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %t300, ptr %t310)
  store i1 %t314, ptr %l170
  br label %bb98
bb98:
  %t315 = load i1, ptr %l170, !tbaa !21
  %t316 = xor i1 %t315, true
  store i1 %t316, ptr %l163, !tbaa !21
  br label %bb99
bb99:
  %t318 = load i1, ptr %l163, !tbaa !21
  br i1 %t318, label %bb100, label %bb101
bb100:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb101:
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t320 = load i64, ptr %l12, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l12, !tbaa !24
  br label %bb44
bb104:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, { i64, [4 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i1
  %l7 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l26 = alloca i32
  %l35 = alloca i1
  %l36 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca %"compiler/mir:Lvalue"
  %l45 = alloca ptr
  %l46 = alloca %"compiler/source:Span"
  %l48 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t29 = alloca { i64, [4 x i64] }, align 8
  %t32 = alloca { i64, [8 x i64] }, align 8
  %t87 = alloca { i64, [4 x i64] }, align 8
  %t102 = alloca { i64, [4 x i64] }, align 8
  %t108 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 2
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lower:lowering", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %t14, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t8, i32 %t15)
  store i32 %t18, ptr %l13
  br label %bb1
bb1:
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t20 = load i32, ptr %l13, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t19, i32 %t20)
  store { i64, ptr } %t21, ptr %l14
  br label %bb2
bb2:
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  %t25 = icmp eq i64 %t23, 0
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l1
  store { i64, [4 x i64] } zeroinitializer, ptr %t29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 0
  store i64 0, ptr %t30
  %t31 = load { i64, [4 x i64] }, ptr %t29
  store { i64, [8 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 0
  store i64 9, ptr %t33
  %t35 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t28, 0
  %t37 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t35, i32 3, 1
  %t39 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t37, { i64, [4 x i64] } %t31, 2
  %t40 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t39, ptr %t40
  %t41 = load { i64, [8 x i64] }, ptr %t32
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t27, { i64, [8 x i64] } %t41)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t47 = load %"compiler/source:Span", ptr %l1
  %t52 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t44, { i64, [4 x i64] } %a2, i32 %t46, %"compiler/source:Span" %t47)
  store i32 %t52, ptr %l26
  br label %bb7
bb7:
  %t53 = load i32, ptr %l26, !tbaa !23
  store i32 %t53, ptr %l4, !tbaa !23
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/lower:lowering", ptr %t54, i32 0, i32 23
  %t57 = load i1, ptr %t56, !tbaa !21
  store i1 %t57, ptr %l5, !tbaa !21
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/lower:lowering", ptr %t59, i32 0, i32 23
  store i1 %a3, ptr %t63, !tbaa !21
  %t64 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %t64, i64 0)
  br label %bb8
bb8:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i1, ptr %l5, !tbaa !21
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t66, i32 0, i32 23
  store i1 %t67, ptr %t70, !tbaa !21
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisMain(ptr %v0, ptr %t71)
  store i1 %t73, ptr %l35
  br label %bb9
bb9:
  %t74 = load i1, ptr %l35, !tbaa !21
  br i1 %t74, label %bb10, label %bb11
bb10:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/lower:lowering", ptr %t75, i32 0, i32 10
  %t78 = load i1, ptr %t77, !tbaa !21
  %t80 = xor i1 %t78, true
  store i1 %t80, ptr %l36, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb12
bb12:
  %t82 = load i1, ptr %l36, !tbaa !21
  br i1 %t82, label %bb13, label %bb14
bb13:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l40, !tbaa !29
  %t84 = load i32, ptr %l4, !tbaa !23
  %t86 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t84)
  store %"compiler/mir:Lvalue" %t86, ptr %l42
  br label %bb15
bb14:
  br label %bb17
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 0
  store i64 1, ptr %t88
  %t89 = load %"compiler/mir:Lvalue", ptr %l42
  %t90 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t89, 0
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t90, ptr %t91
  %t92 = load { i64, [4 x i64] }, ptr %t87
  %t93 = load %"compiler/source:Span", ptr %l1
  %t94 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emainPayloads(ptr %v0, ptr %t94, { i64, [4 x i64] } %t92, %"compiler/source:Span" %t93)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l45, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t98, ptr %l46
  %t99 = load i32, ptr %l4, !tbaa !23
  %t101 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t99)
  store %"compiler/mir:Lvalue" %t101, ptr %l48
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 0
  store i64 1, ptr %t103
  %t104 = load %"compiler/mir:Lvalue", ptr %l48
  %t105 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t104, 0
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t105, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t102
  store { i64, [8 x i64] } zeroinitializer, ptr %t108
  %t109 = getelementptr { i64, [8 x i64] }, ptr %t108, i32 0, i32 0
  store i64 7, ptr %t109
  %t110 = load %"compiler/source:Span", ptr %l46
  %t111 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t110, 0
  %t113 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t111, { i64, [4 x i64] } %t107, 1
  %t114 = getelementptr { i64, [8 x i64] }, ptr %t108, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t113, ptr %t114
  %t115 = load { i64, [8 x i64] }, ptr %t108
  %t116 = load ptr, ptr %l45, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t116, { i64, [8 x i64] } %t115)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadOut(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 24
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewValue(ptr %v0, ptr %t8, i32 %a2)
  store i1 %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i1, ptr %l9, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l10, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 8}
  %t22 = icmp eq i64 %t20, 3
  store i1 %t22, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l11, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t25 = load ptr, ptr %l14, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 5
  store i1 %t31, ptr %l15, !tbaa !21
  br label %bb13
bb13:
  %t32 = load i1, ptr %l15, !tbaa !21
  br i1 %t32, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb16, label %bb17
bb16:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 4
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb17
bb17:
  %t41 = load i1, ptr %l19, !tbaa !21
  br i1 %t41, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %s2, ptr %v1, ptr %t42, ptr %t43, ptr null, ptr %t44)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
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
  call void @__olang_check_failed(ptr @olang_loc_ed0da5981c7956e3_375966c562f70de7)
  unreachable
bb27:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flower_2ecompiler_2flower_3alowering_2ereceiverBody(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [2 x i64] }
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l51 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca ptr
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i32
  %l86 = alloca { i64, ptr }
  %l88 = alloca i32
  %l89 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l94 = alloca i32
  %l97 = alloca i32
  %l98 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/lower:lowering", ptr %t6, i32 0, i32 2
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  %t11 = load ptr, ptr %l3, !tbaa !29
  %t13 = getelementptr %"compiler/lower:Lowerer", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l22
  br label %bb1
bb1:
  %t17 = load i64, ptr %l22, !tbaa !24
  store i64 %t17, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l5, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb2, label %bb3
bb2:
  %t24 = load i64, ptr %l7, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb4:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l29, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb6
bb6:
  %t44 = load i64, ptr %l29, !tbaa !24
  store i64 %t44, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l26, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l9, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  br label %bb38
bb10:
  br label %bb11
bb11:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l9, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l10, !tbaa !24
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t67, i64 %t69)
  store ptr %t72, ptr %l51
  br label %bb12
bb12:
  %t73 = load ptr, ptr %l51, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Body", ptr %t73, i32 0, i32 1
  %t76 = load { i64, [2 x i64] }, ptr %t75
  store { i64, [2 x i64] } %t76, ptr %l11
  %t78 = load { i64, [2 x i64] }, ptr %l11
  %t80 = extractvalue { i64, [2 x i64] } %t78, 0
  %t81 = icmp eq i64 %t80, 0
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb16
bb14:
  %t85 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t86 = getelementptr { i64 }, ptr %t85, i32 0, i32 0
  %t87 = load i64, ptr %t86
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t91 = getelementptr %"compiler/lower:Lowerer", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t96 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t92, i64 %t87)
  store i64 %t96, ptr %l62
  br label %bb15
bb15:
  %t98 = load i64, ptr %l62, !tbaa !24
  %t100 = icmp ne i64 %t98, %a2
  store i1 %t100, ptr %l57, !tbaa !21
  br label %bb16
bb16:
  %t102 = load i1, ptr %l57, !tbaa !21
  br i1 %t102, label %bb17, label %bb18
bb17:
  br label %bb37
bb18:
  br label %bb19
bb19:
  %t103 = getelementptr { i64, [2 x i64] }, ptr %l11, i32 0, i32 1
  %t104 = getelementptr { i64 }, ptr %t103, i32 0, i32 0
  %t105 = load i64, ptr %t104
  store i64 %t105, ptr %l13, !tbaa !24
  %t107 = load ptr, ptr %l4, !tbaa !29
  store ptr %t107, ptr %l66, !tbaa !29
  %t108 = load ptr, ptr %l4, !tbaa !29
  store ptr %t108, ptr %l67, !tbaa !29
  %t109 = load ptr, ptr %l3, !tbaa !29
  %t111 = getelementptr %"compiler/lower:Lowerer", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = load i64, ptr %l10, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t112, i64 %t114)
  store ptr %t117, ptr %l72
  br label %bb20
bb20:
  %t118 = load ptr, ptr %l72, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Body", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %t120, !tbaa !23
  %t122 = load ptr, ptr %l67, !tbaa !29
  %t124 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t122, i32 %t121)
  store i32 %t124, ptr %l75
  br label %bb21
bb21:
  %t125 = load ptr, ptr %l66, !tbaa !29
  %t126 = load i32, ptr %l75, !tbaa !23
  %t127 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t125, i32 %t126)
  store { i64, ptr } %t127, ptr %l76
  br label %bb22
bb22:
  %t128 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t128, ptr %l14, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t133 = icmp ne i64 %t131, 1
  br i1 %t133, label %bb23, label %bb24
bb23:
  br label %bb37
bb24:
  br label %bb25
bb25:
  %t135 = load ptr, ptr %l4, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t136, ptr %l81, !tbaa !27
  %t137 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i32, ptr %t138, i64 0
  %t140 = load i32, ptr %t139, !tbaa !33
  %t143 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t135, i32 %t140)
  store i1 %t143, ptr %l83
  br label %bb26
bb26:
  %t144 = load i1, ptr %l83, !tbaa !21
  br i1 %t144, label %bb27, label %bb28
bb27:
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t146, ptr %l86, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i32, ptr %t148, i64 0
  %t150 = load i32, ptr %t149, !tbaa !33
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t145, i32 %t150)
  store i32 %t153, ptr %l88
  br label %bb29
bb28:
  %t154 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t154, ptr %l89, !tbaa !27
  %t155 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 0
  %t158 = load i32, ptr %t157, !tbaa !33
  store i32 %t158, ptr %l84, !tbaa !23
  br label %bb30
bb29:
  %t160 = load i32, ptr %l88, !tbaa !23
  store i32 %t160, ptr %l84, !tbaa !23
  br label %bb30
bb30:
  %t161 = load i32, ptr %l84, !tbaa !23
  %t162 = load ptr, ptr %l4, !tbaa !29
  store ptr %t162, ptr %l91, !tbaa !29
  %t163 = load ptr, ptr %l4, !tbaa !29
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t163, i32 %t161)
  store i32 %t167, ptr %l94
  br label %bb31
bb31:
  %t168 = load ptr, ptr %l4, !tbaa !29
  %t172 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t168, i32 %a1)
  store i32 %t172, ptr %l97
  br label %bb32
bb32:
  %t173 = load ptr, ptr %l91, !tbaa !29
  %t174 = load i32, ptr %l94, !tbaa !23
  %t175 = load i32, ptr %l97, !tbaa !23
  %t176 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t173, i32 %t174, i32 %t175)
  store i1 %t176, ptr %l98
  br label %bb33
bb33:
  %t177 = load i1, ptr %l98, !tbaa !21
  br i1 %t177, label %bb34, label %bb35
bb34:
  %t178 = load i64, ptr %l10, !tbaa !24
  store i64 %t178, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t180 = load i64, ptr %l9, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l9, !tbaa !24
  br label %bb8
bb38:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderAny(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, i1 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca i32
  %l18 = alloca { i64, [7 x i64] }
  %l19 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i32
  %l31 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca i32
  %l40 = alloca %"compiler/mir:Lvalue"
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, [4 x i64] }
  %l49 = alloca i32
  %l52 = alloca i32
  %l68 = alloca { i64, [4 x i64] }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i32
  %l72 = alloca { i64, [4 x i64] }
  %l74 = alloca { i64, [4 x i64] }
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, [4 x i64] }
  %l80 = alloca i32
  %l83 = alloca i32
  %l98 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca i32
  %l101 = alloca { i64, [4 x i64] }
  %l103 = alloca { i64, [4 x i64] }
  %l104 = alloca { i64, ptr }
  %l106 = alloca { i64, [4 x i64] }
  %l107 = alloca ptr
  %l108 = alloca i32
  %l109 = alloca ptr
  %l112 = alloca i32
  %l113 = alloca i32
  %l114 = alloca i32
  %l116 = alloca %"compiler/mir:Lvalue"
  %l117 = alloca { i64, [4 x i64] }
  %l119 = alloca i64
  %l124 = alloca i32
  %l126 = alloca ptr
  %l127 = alloca { i64, [7 x i64] }
  %l129 = alloca ptr
  %l131 = alloca %"compiler/mir:Lvalue"
  %l134 = alloca { i64, ptr }
  %l135 = alloca %"compiler/mir:Range"
  %l139 = alloca { i64, ptr }
  %l140 = alloca %"compiler/mir:Range"
  %l145 = alloca %"compiler/mir:Call"
  %l146 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t37 = alloca { i64, [4 x i64] }, align 8
  %t44 = alloca { i64, [4 x i64] }, align 8
  %t87 = alloca { i64, [8 x i64] }, align 8
  %t163 = alloca { i64, [8 x i64] }, align 8
  %t237 = alloca { i64, [4 x i64] }, align 8
  %t246 = alloca { i64, [7 x i64] }, align 8
  %t273 = alloca { i64, [4 x i64] }, align 8
  %t329 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t9 = load %"compiler/source:Span", ptr %l5
  %t14 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t6, { i64, [4 x i64] } %a2, i32 %t8, %"compiler/source:Span" %t9)
  store i32 %t14, ptr %l27
  br label %bb1
bb1:
  %t15 = load i32, ptr %l27, !tbaa !23
  store i32 %t15, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/lower:lowering", ptr %t16, i32 0, i32 3
  %t20 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t18)
  store i32 %t20, ptr %l30
  br label %bb2
bb2:
  %t21 = load i32, ptr %l30, !tbaa !23
  store i32 %t21, ptr %l8, !tbaa !23
  %t22 = load ptr, ptr %l6, !tbaa !29
  store ptr %t22, ptr %l31, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l34
  br label %bb3
bb3:
  %t28 = load ptr, ptr %l31, !tbaa !29
  %t29 = load i32, ptr %l34, !tbaa !23
  %t30 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t30, ptr %l35
  br label %bb4
bb4:
  %t31 = load i1, ptr %l35, !tbaa !21
  br i1 %t31, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l36, !tbaa !29
  store i32 14, ptr %l37
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t33, ptr %l38, !tbaa !23
  %t34 = load i32, ptr %l7, !tbaa !23
  %t36 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t34)
  store %"compiler/mir:Lvalue" %t36, ptr %l40
  br label %bb7
bb6:
  br label %bb16
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 0
  store i64 1, ptr %t38
  %t39 = load %"compiler/mir:Lvalue", ptr %l40
  %t40 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t39, 0
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t40, ptr %t41
  %t42 = load { i64, [4 x i64] }, ptr %t37
  %t43 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 0
  store i64 2, ptr %t45
  %t47 = insertvalue { i32, i64 } undef, i32 %t43, 0
  %t48 = insertvalue { i32, i64 } %t47, i64 0, 1
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  store { i32, i64 } %t48, ptr %t49
  %t50 = load { i64, [4 x i64] }, ptr %t44
  %t51 = mul i64 2, 40
  %t52 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 2, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l44, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t57, i64 0
  store { i64, [4 x i64] } %t42, ptr %t58
  %t60 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t61, i64 1
  store { i64, [4 x i64] } %t50, ptr %t62
  %t63 = load %"compiler/source:Span", ptr %l5
  %t64 = load ptr, ptr %l36, !tbaa !29
  %t65 = load i32, ptr %l37, !range !{i32 0, i32 52}
  %t66 = load i32, ptr %l38, !tbaa !23
  %t67 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t69 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s1, ptr %t64, i32 %t65, i32 %t66, { i64, ptr } %t67, %"compiler/source:Span" %t63)
  store { i64, [4 x i64] } %t69, ptr %l46
  br label %bb8
bb8:
  %t70 = load { i64, [4 x i64] }, ptr %l46
  store { i64, [4 x i64] } %t70, ptr %l9
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/lower:lowering", ptr %t71, i32 0, i32 3
  %t75 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t73)
  store i32 %t75, ptr %l49
  br label %bb9
bb9:
  %t76 = load i32, ptr %l49, !tbaa !23
  store i32 %t76, ptr %l10, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/lower:lowering", ptr %t77, i32 0, i32 3
  %t81 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t79)
  store i32 %t81, ptr %l52
  br label %bb10
bb10:
  %t82 = load i32, ptr %l52, !tbaa !23
  store i32 %t82, ptr %l11, !tbaa !23
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load { i64, [4 x i64] }, ptr %l9
  %t85 = load i32, ptr %l10, !tbaa !23
  %t86 = load i32, ptr %l11, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t87
  %t88 = getelementptr { i64, [8 x i64] }, ptr %t87, i32 0, i32 0
  store i64 2, ptr %t88
  %t90 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t84, 0
  %t92 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t90, i32 %t85, 1
  %t94 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t92, i32 %t86, 2
  %t95 = getelementptr { i64, [8 x i64] }, ptr %t87, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t94, ptr %t95
  %t96 = load { i64, [8 x i64] }, ptr %t87
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t83, { i64, [8 x i64] } %t96)
  br label %bb11
bb11:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t99, i32 %t100)
  br label %bb12
bb12:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load { i64, [1 x i64] }, ptr %l1
  %t105 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s1, ptr %t103, { i64, [1 x i64] } %t104, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, %"compiler/source:Span" %t105)
  br label %bb13
bb13:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t109, i32 %t110)
  br label %bb14
bb14:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t113, i32 %t114)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb16:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %t117)
  store { i64, [4 x i64] } %t119, ptr %l68
  br label %bb17
bb17:
  %t120 = load { i64, [4 x i64] }, ptr %l68
  store { i64, [4 x i64] } %t120, ptr %l12
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l69, !tbaa !29
  store i32 18, ptr %l70
  %t122 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t122, ptr %l71, !tbaa !23
  %t123 = load { i64, [4 x i64] }, ptr %l12
  store { i64, [4 x i64] } %t123, ptr %l72
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t124, i64 8)
  store { i64, [4 x i64] } %t126, ptr %l74
  br label %bb18
bb18:
  %t127 = mul i64 2, 40
  %t128 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t127)
  %t129 = insertvalue { i64, ptr } undef, i64 2, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  store { i64, ptr } %t130, ptr %l75, !tbaa !27
  %t131 = load { i64, [4 x i64] }, ptr %l72
  %t132 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t133, i64 0
  store { i64, [4 x i64] } %t131, ptr %t134
  %t135 = load { i64, [4 x i64] }, ptr %l74
  %t136 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t137, i64 1
  store { i64, [4 x i64] } %t135, ptr %t138
  %t139 = load %"compiler/source:Span", ptr %l5
  %t140 = load ptr, ptr %l69, !tbaa !29
  %t141 = load i32, ptr %l70, !range !{i32 0, i32 52}
  %t142 = load i32, ptr %l71, !tbaa !23
  %t143 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t145 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t140, i32 %t141, i32 %t142, { i64, ptr } %t143, %"compiler/source:Span" %t139)
  store { i64, [4 x i64] } %t145, ptr %l77
  br label %bb19
bb19:
  %t146 = load { i64, [4 x i64] }, ptr %l77
  store { i64, [4 x i64] } %t146, ptr %l13
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/lower:lowering", ptr %t147, i32 0, i32 3
  %t151 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t149)
  store i32 %t151, ptr %l80
  br label %bb20
bb20:
  %t152 = load i32, ptr %l80, !tbaa !23
  store i32 %t152, ptr %l14, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/lower:lowering", ptr %t153, i32 0, i32 3
  %t157 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t155)
  store i32 %t157, ptr %l83
  br label %bb21
bb21:
  %t158 = load i32, ptr %l83, !tbaa !23
  store i32 %t158, ptr %l15, !tbaa !23
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load { i64, [4 x i64] }, ptr %l13
  %t161 = load i32, ptr %l14, !tbaa !23
  %t162 = load i32, ptr %l15, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t163
  %t164 = getelementptr { i64, [8 x i64] }, ptr %t163, i32 0, i32 0
  store i64 2, ptr %t164
  %t166 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t160, 0
  %t168 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t166, i32 %t161, 1
  %t170 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t168, i32 %t162, 2
  %t171 = getelementptr { i64, [8 x i64] }, ptr %t163, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t170, ptr %t171
  %t172 = load { i64, [8 x i64] }, ptr %t163
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t159, { i64, [8 x i64] } %t172)
  br label %bb22
bb22:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t175, i32 %t176)
  br label %bb23
bb23:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load { i64, [1 x i64] }, ptr %l1
  %t181 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s0, ptr %t179, { i64, [1 x i64] } %t180, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, %"compiler/source:Span" %t181)
  br label %bb24
bb24:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t185, i32 %t186)
  br label %bb25
bb25:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t189, i32 %t190)
  br label %bb26
bb26:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l98, !tbaa !29
  store i32 3, ptr %l99
  %t194 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t194, ptr %l100, !tbaa !23
  %t195 = load { i64, [4 x i64] }, ptr %l12
  store { i64, [4 x i64] } %t195, ptr %l101
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %t196, i64 1)
  store { i64, [4 x i64] } %t198, ptr %l103
  br label %bb27
bb27:
  %t199 = mul i64 2, 40
  %t200 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t199)
  %t201 = insertvalue { i64, ptr } undef, i64 2, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  store { i64, ptr } %t202, ptr %l104, !tbaa !27
  %t203 = load { i64, [4 x i64] }, ptr %l101
  %t204 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr { i64, [4 x i64] }, ptr %t205, i64 0
  store { i64, [4 x i64] } %t203, ptr %t206
  %t207 = load { i64, [4 x i64] }, ptr %l103
  %t208 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t209, i64 1
  store { i64, [4 x i64] } %t207, ptr %t210
  %t211 = load %"compiler/source:Span", ptr %l5
  %t212 = load ptr, ptr %l98, !tbaa !29
  %t213 = load i32, ptr %l99, !range !{i32 0, i32 52}
  %t214 = load i32, ptr %l100, !tbaa !23
  %t215 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t217 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t212, i32 %t213, i32 %t214, { i64, ptr } %t215, %"compiler/source:Span" %t211)
  store { i64, [4 x i64] } %t217, ptr %l106
  br label %bb28
bb28:
  %t218 = load { i64, [4 x i64] }, ptr %l106
  store { i64, [4 x i64] } %t218, ptr %l16
  %t219 = load ptr, ptr %l6, !tbaa !29
  store ptr %t219, ptr %l107, !tbaa !29
  store i32 0, ptr %l108
  %t220 = load ptr, ptr %l6, !tbaa !29
  store ptr %t220, ptr %l109, !tbaa !29
  %t221 = load ptr, ptr %l6, !tbaa !29
  %t222 = load i32, ptr %l3, !tbaa !23
  %t225 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t221, i32 %t222)
  store i32 %t225, ptr %l112
  br label %bb29
bb29:
  %t226 = load ptr, ptr %l109, !tbaa !29
  %t227 = load i32, ptr %l112, !tbaa !23
  %t228 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t228, ptr %l113
  br label %bb30
bb30:
  %t229 = load ptr, ptr %l107, !tbaa !29
  %t230 = load i32, ptr %l108, !range !{i32 0, i32 8}
  %t231 = load i32, ptr %l113, !tbaa !23
  %t232 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t229, i32 %t230, i32 %t231)
  store i32 %t232, ptr %l114
  br label %bb31
bb31:
  %t233 = load i32, ptr %l114, !tbaa !23
  store i32 %t233, ptr %l17, !tbaa !23
  %t234 = load i32, ptr %l7, !tbaa !23
  %t236 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t234)
  store %"compiler/mir:Lvalue" %t236, ptr %l116
  br label %bb32
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 0
  store i64 1, ptr %t238
  %t239 = load %"compiler/mir:Lvalue", ptr %l116
  %t240 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t239, 0
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t240, ptr %t241
  %t242 = load { i64, [4 x i64] }, ptr %t237
  store { i64, [4 x i64] } %t242, ptr %l117
  br i1 %a4, label %bb33, label %bb34
bb33:
  store i64 -1, ptr %l119, !tbaa !24
  br label %bb35
bb34:
  store i64 -2, ptr %l119, !tbaa !24
  br label %bb35
bb35:
  %t245 = load i32, ptr %l17, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t246
  %t247 = getelementptr { i64, [7 x i64] }, ptr %t246, i32 0, i32 0
  store i64 3, ptr %t247
  %t248 = load { i64, [4 x i64] }, ptr %l117
  %t249 = insertvalue { { i64, [4 x i64] }, i64, i32 } undef, { i64, [4 x i64] } %t248, 0
  %t250 = load i64, ptr %l119, !tbaa !24
  %t251 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t249, i64 %t250, 1
  %t253 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t251, i32 %t245, 2
  %t254 = getelementptr { i64, [7 x i64] }, ptr %t246, i32 0, i32 1
  store { { i64, [4 x i64] }, i64, i32 } %t253, ptr %t254
  %t255 = load { i64, [7 x i64] }, ptr %t246
  store { i64, [7 x i64] } %t255, ptr %l18
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/lower:lowering", ptr %t257, i32 0, i32 3
  %t261 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t259)
  store i32 %t261, ptr %l124
  br label %bb36
bb36:
  %t262 = load i32, ptr %l124, !tbaa !23
  store i32 %t262, ptr %l19, !tbaa !23
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/lower:lowering", ptr %t263, i32 0, i32 3
  store ptr %t265, ptr %l126, !tbaa !29
  %t266 = load { i64, [7 x i64] }, ptr %l18
  store { i64, [7 x i64] } %t266, ptr %l127
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/lower:lowering", ptr %t267, i32 0, i32 3
  store ptr %t269, ptr %l129, !tbaa !29
  %t270 = load i32, ptr %l7, !tbaa !23
  %t272 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t270)
  store %"compiler/mir:Lvalue" %t272, ptr %l131
  br label %bb37
bb37:
  store { i64, [4 x i64] } zeroinitializer, ptr %t273
  %t274 = getelementptr { i64, [4 x i64] }, ptr %t273, i32 0, i32 0
  store i64 1, ptr %t274
  %t275 = load %"compiler/mir:Lvalue", ptr %l131
  %t276 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t275, 0
  %t277 = getelementptr { i64, [4 x i64] }, ptr %t273, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t276, ptr %t277
  %t278 = load { i64, [4 x i64] }, ptr %t273
  %t279 = load { i64, [4 x i64] }, ptr %l16
  %t280 = mul i64 2, 40
  %t281 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t280)
  %t282 = insertvalue { i64, ptr } undef, i64 2, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  store { i64, ptr } %t283, ptr %l134, !tbaa !27
  %t285 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr { i64, [4 x i64] }, ptr %t286, i64 0
  store { i64, [4 x i64] } %t278, ptr %t287
  %t289 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr { i64, [4 x i64] }, ptr %t290, i64 1
  store { i64, [4 x i64] } %t279, ptr %t291
  %t292 = load ptr, ptr %l129, !tbaa !29
  %t293 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t294 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s0, ptr %t292, { i64, ptr } %t293)
  store %"compiler/mir:Range" %t294, ptr %l135
  br label %bb38
bb38:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/lower:lowering", ptr %t295, i32 0, i32 3
  %t298 = load { i64, [1 x i64] }, ptr %l1
  %t299 = mul i64 1, 16
  %t300 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t299)
  %t301 = insertvalue { i64, ptr } undef, i64 1, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  store { i64, ptr } %t302, ptr %l139, !tbaa !27
  %t304 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr { i64, [1 x i64] }, ptr %t305, i64 0
  store { i64, [1 x i64] } %t298, ptr %t306
  %t308 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t309 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %s0, ptr %t297, { i64, ptr } %t308)
  store %"compiler/mir:Range" %t309, ptr %l140
  br label %bb39
bb39:
  %t310 = load %"compiler/mir:Lvalue", ptr @G_2ecompiler_2fmir_2eNoPlace
  %t311 = load i32, ptr %l19, !tbaa !23
  %t312 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t313 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t314 = load { i64, [7 x i64] }, ptr %l127
  %t315 = load %"compiler/mir:Range", ptr %l135
  %t316 = load %"compiler/mir:Range", ptr %l140
  %t321 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t314, %"compiler/mir:Range" %t315, %"compiler/mir:Range" %t316, %"compiler/mir:Lvalue" %t310, i1 false, i32 %t311, i32 %t312, i32 %t313)
  store %"compiler/mir:Call" %t321, ptr %l145
  br label %bb40
bb40:
  %t322 = load ptr, ptr %l126, !tbaa !29
  %t323 = load %"compiler/mir:Call", ptr %l145
  %t324 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %t322, %"compiler/mir:Call" %t323)
  store i32 %t324, ptr %l146
  br label %bb41
bb41:
  %t325 = load i32, ptr %l146, !tbaa !23
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load %"compiler/source:Span", ptr %l5
  store { i64, [8 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [8 x i64] }, ptr %t329, i32 0, i32 0
  store i64 4, ptr %t330
  %t332 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t327, 0
  %t334 = insertvalue { %"compiler/source:Span", i32 } %t332, i32 %t325, 1
  %t335 = getelementptr { i64, [8 x i64] }, ptr %t329, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t334, ptr %t335
  %t336 = load { i64, [8 x i64] }, ptr %t329
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t326, { i64, [8 x i64] } %t336)
  br label %bb42
bb42:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t339, i32 %t340)
  br label %bb43
bb43:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t343, i32 %t344)
  br label %bb44
bb44:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t347, i32 %t348)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2erenderMaybeText(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l20 = alloca %"compiler/mir:Lvalue"
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, [4 x i64] }
  %l29 = alloca i32
  %l32 = alloca i32
  %l35 = alloca i32
  %l50 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  %l52 = alloca { i64, [1 x i64] }
  %l53 = alloca i32
  %l55 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t16 = alloca { i64, [4 x i64] }, align 8
  %t23 = alloca { i64, [4 x i64] }, align 8
  %t72 = alloca { i64, [8 x i64] }, align 8
  %t109 = alloca { i64, [4 x i64] }, align 8
  %t115 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l3, !tbaa !23
  %t4 = load %"compiler/source:Span", ptr %l4
  %t9 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t1, { i64, [4 x i64] } %a2, i32 %t3, %"compiler/source:Span" %t4)
  store i32 %t9, ptr %l15
  br label %bb1
bb1:
  %t10 = load i32, ptr %l15, !tbaa !23
  store i32 %t10, ptr %l6, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l16, !tbaa !29
  store i32 19, ptr %l17
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t12, ptr %l18, !tbaa !23
  %t13 = load i32, ptr %l6, !tbaa !23
  %t15 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t13)
  store %"compiler/mir:Lvalue" %t15, ptr %l20
  br label %bb2
bb2:
  store { i64, [4 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 0
  store i64 1, ptr %t17
  %t18 = load %"compiler/mir:Lvalue", ptr %l20
  %t19 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t18, 0
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t19, ptr %t20
  %t21 = load { i64, [4 x i64] }, ptr %t16
  %t22 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 0
  store i64 2, ptr %t24
  %t26 = insertvalue { i32, i64 } undef, i32 %t22, 0
  %t27 = insertvalue { i32, i64 } %t26, i64 -1, 1
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  store { i32, i64 } %t27, ptr %t28
  %t29 = load { i64, [4 x i64] }, ptr %t23
  %t30 = mul i64 2, 40
  %t31 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t30)
  %t32 = insertvalue { i64, ptr } undef, i64 2, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  store { i64, ptr } %t33, ptr %l24, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t36, i64 0
  store { i64, [4 x i64] } %t21, ptr %t37
  %t39 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t40, i64 1
  store { i64, [4 x i64] } %t29, ptr %t41
  %t42 = load %"compiler/source:Span", ptr %l4
  %t43 = load ptr, ptr %l16, !tbaa !29
  %t44 = load i32, ptr %l17, !range !{i32 0, i32 52}
  %t45 = load i32, ptr %l18, !tbaa !23
  %t46 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t48 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s0, ptr %t43, i32 %t44, i32 %t45, { i64, ptr } %t46, %"compiler/source:Span" %t42)
  store { i64, [4 x i64] } %t48, ptr %l26
  br label %bb3
bb3:
  %t49 = load { i64, [4 x i64] }, ptr %l26
  store { i64, [4 x i64] } %t49, ptr %l7
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/lower:lowering", ptr %t50, i32 0, i32 3
  %t54 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t52)
  store i32 %t54, ptr %l29
  br label %bb4
bb4:
  %t55 = load i32, ptr %l29, !tbaa !23
  store i32 %t55, ptr %l8, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 3
  %t60 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t58)
  store i32 %t60, ptr %l32
  br label %bb5
bb5:
  %t61 = load i32, ptr %l32, !tbaa !23
  store i32 %t61, ptr %l9, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 3
  %t66 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t64)
  store i32 %t66, ptr %l35
  br label %bb6
bb6:
  %t67 = load i32, ptr %l35, !tbaa !23
  store i32 %t67, ptr %l10, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load { i64, [4 x i64] }, ptr %l7
  %t70 = load i32, ptr %l8, !tbaa !23
  %t71 = load i32, ptr %l9, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [8 x i64] }, ptr %t72, i32 0, i32 0
  store i64 2, ptr %t73
  %t75 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t69, 0
  %t77 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t75, i32 %t70, 1
  %t79 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t77, i32 %t71, 2
  %t80 = getelementptr { i64, [8 x i64] }, ptr %t72, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t79, ptr %t80
  %t81 = load { i64, [8 x i64] }, ptr %t72
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t68, { i64, [8 x i64] } %t81)
  br label %bb7
bb7:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t84, i32 %t85)
  br label %bb8
bb8:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load { i64, [1 x i64] }, ptr %l1
  %t90 = load %"compiler/source:Span", ptr %l4
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %s0, ptr %t88, { i64, [1 x i64] } %t89, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) }, %"compiler/source:Span" %t90)
  br label %bb9
bb9:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t94, i32 %t95)
  br label %bb10
bb10:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t98, i32 %t99)
  br label %bb11
bb11:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l50, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t103, ptr %l51
  %t104 = load { i64, [1 x i64] }, ptr %l1
  store { i64, [1 x i64] } %t104, ptr %l52
  store i32 %a5, ptr %l53
  %t106 = load i32, ptr %l6, !tbaa !23
  %t108 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t106)
  store %"compiler/mir:Lvalue" %t108, ptr %l55
  br label %bb12
bb12:
  store { i64, [4 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 0
  store i64 1, ptr %t110
  %t111 = load %"compiler/mir:Lvalue", ptr %l55
  %t112 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t111, 0
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t112, ptr %t113
  %t114 = load { i64, [4 x i64] }, ptr %t109
  store { i64, [21 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 0
  store i64 8, ptr %t116
  %t117 = load %"compiler/source:Span", ptr %l51
  %t118 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t117, 0
  %t119 = load { i64, [1 x i64] }, ptr %l52
  %t120 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t118, { i64, [1 x i64] } %t119, 1
  %t121 = load i32, ptr %l53, !range !{i32 0, i32 8}
  %t122 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t120, i32 %t121, 2
  %t124 = insertvalue { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t122, { i64, [4 x i64] } %t114, 3
  %t125 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } } %t124, ptr %t125
  %t126 = load { i64, [21 x i64] }, ptr %t115
  %t128 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t126, ptr %t128
  %t129 = load ptr, ptr %l50, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t129, ptr %t128)
  br label %bb13
bb13:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egoto(ptr %v0, ptr %t131, i32 %t132)
  br label %bb14
bb14:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t135, i32 %t136)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eretView(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/typed:ViewWalk"
  %l8 = alloca i64
  %l10 = alloca i1
  %l11 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i1
  %l22 = alloca %"compiler/typed:ViewWalk"
  %l26 = alloca i64
  %l34 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  %t14 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t4, i32 %t11)
  store i64 %t14, ptr %l8
  br label %bb1
bb1:
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = icmp sle i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l11, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lower:lowering", ptr %t19, i32 0, i32 2
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/lower:lowering", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t22, i32 %t29)
  store i32 %t32, ptr %l17
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t34 = load i32, ptr %l17, !tbaa !23
  %t35 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewValue(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t35, ptr %l18
  br label %bb5
bb5:
  %t36 = load i1, ptr %l18, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t39 = load i1, ptr %l10, !tbaa !21
  br i1 %t39, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call %"compiler/typed:ViewWalk" @compiler_2flower_2ecompiler_2flower_3alowering_2eviewWalk(ptr %v0, ptr %v0, ptr %t41)
  store %"compiler/typed:ViewWalk" %t43, ptr %l22
  br label %bb10
bb10:
  %t44 = load %"compiler/typed:ViewWalk", ptr %l22
  store %"compiler/typed:ViewWalk" %t44, ptr %l2
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t49 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %l2, ptr %t45)
  store i64 %t49, ptr %l26
  br label %bb11
bb11:
  %t50 = load i64, ptr %l26, !tbaa !24
  %t51 = icmp sle i64 %t50, 0
  br i1 %t51, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %v0, ptr %t54, ptr %l2, ptr %t55)
  br label %bb15
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:lowering", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l34, !tbaa !29
  %t64 = load ptr, ptr %l34, !tbaa !29
  %t65 = getelementptr %"compiler/lower:Lowerer", ptr %t64, i32 0, i32 22
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = add i64 %t66, 1
  %t70 = load ptr, ptr %l34, !tbaa !29
  %t71 = getelementptr %"compiler/lower:Lowerer", ptr %t70, i32 0, i32 22
  store i64 %t68, ptr %t71, !tbaa !24
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esettled(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca i1
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l30 = alloca i1
  %l34 = alloca i1
  %l42 = alloca i1
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l64 = alloca i1
  %l66 = alloca i32
  %l80 = alloca i32
  %l82 = alloca { i64, ptr }
  %l87 = alloca i32
  %l91 = alloca i32
  %l93 = alloca ptr
  %l94 = alloca %"compiler/source:Span"
  %l95 = alloca i32
  %l97 = alloca %"compiler/mir:Lvalue"
  %l106 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t195 = alloca { i64, [21 x i64] }, align 8
  %t222 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 10
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb3
bb2:
  %t6 = load { i64, [4 x i64] }, ptr %l3
  %t8 = extractvalue { i64, [4 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  store i1 %t9, ptr %l13, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l13, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lower:lowering", ptr %t12, i32 0, i32 30
  %t15 = getelementptr %"compiler/typed:Plan", ptr %t14, i32 0, i32 5
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l18, !tbaa !27
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 %t17
  %t22 = load i64, ptr %t21, !tbaa !34
  %t24 = icmp ne i64 %t22, 1
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l16, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t27 = load { i64, [4 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t27, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %s0, ptr %t32, i32 %t33)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l26
  br label %bb10
bb10:
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l26)
  store i64 %t38, ptr %l28
  br label %bb11
bb11:
  %t39 = load i64, ptr %l28, !tbaa !24
  %t40 = icmp eq i64 %t39, 0
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/lower:lowering", ptr %t42, i32 0, i32 2
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l4, !tbaa !23
  %t49 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l34
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  %t50 = load i1, ptr %l34, !tbaa !21
  %t51 = xor i1 %t50, true
  store i1 %t51, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t54 = load { i64, [4 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t54, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/lower:Lowerer", ptr %t59, i32 0, i32 5
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/lower:Lowerer", ptr %t71, i32 0, i32 5
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = icmp eq ptr %t74, null
  br i1 %t76, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb25
bb21:
  call void @__olang_check_failed(ptr @olang_loc_6e5c9659237b1c81_709a448b752d08ed)
  unreachable
bb22:
  br label %bb23
bb23:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/lower:lowering", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/lower:Lowerer", ptr %t81, i32 0, i32 5
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/lower:lowering", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t94 = load i64, ptr %l1, !tbaa !24
  %t98 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSplitPath(ptr %v0, ptr %s0, ptr %t84, i64 %t93, i64 %t94)
  store { i64, ptr } %t98, ptr %l55
  br label %bb24
bb24:
  %t99 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l56, !tbaa !24
  %t101 = load i64, ptr %l56, !tbaa !24
  %t102 = mul i64 %t101, 8
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  %t104 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l57, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = load i64, ptr %l56, !tbaa !24
  %t111 = mul i64 %t110, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t107, ptr %t109, i64 %t111, i1 false)
  %t112 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t115 = icmp sgt i64 %t113, 0
  store i1 %t115, ptr %l42, !tbaa !21
  br label %bb25
bb25:
  %t117 = load i1, ptr %l42, !tbaa !21
  br i1 %t117, label %bb26, label %bb27
bb26:
  %t118 = load { i64, [4 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t118, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/lower:lowering", ptr %t120, i32 0, i32 34
  %t123 = load i64, ptr %l1, !tbaa !24
  %t126 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t122, i64 %t123)
  store i1 %t126, ptr %l64
  br label %bb29
bb29:
  %t127 = load i1, ptr %l64, !tbaa !21
  br i1 %t127, label %bb30, label %bb31
bb30:
  %t128 = load { i64, [4 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t128, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t130 = load { i64, [1 x i64] }, ptr %l2
  %t132 = extractvalue { i64, [1 x i64] } %t130, 0
  %t133 = icmp eq i64 %t132, 4
  br i1 %t133, label %bb33, label %bb34
bb33:
  %t135 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t136 = getelementptr { i32 }, ptr %t135, i32 0, i32 0
  %t137 = load i32, ptr %t136
  store i32 %t137, ptr %l6, !tbaa !23
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t139 = load i32, ptr %l6, !tbaa !23
  store i32 %t139, ptr %l66, !tbaa !23
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t141 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t141, ptr %l66, !tbaa !23
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_2d3273b745a0cbd9_9e508b92650f7445)
  unreachable
bb41:
  %t143 = load i32, ptr %l66, !tbaa !23
  store i32 %t143, ptr %l7, !tbaa !23
  %t144 = load i32, ptr %l7, !tbaa !23
  %t145 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t148 = icmp eq i32 %t144, %t145
  br i1 %t148, label %bb42, label %bb43
bb42:
  %t150 = load { i64, [4 x i64] }, ptr %l3
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t150, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load { i64, [4 x i64] }, ptr %l3
  %t154 = load i32, ptr %l4, !tbaa !23
  %t155 = load %"compiler/source:Span", ptr %l5
  %t160 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t152, { i64, [4 x i64] } %t153, i32 %t154, %"compiler/source:Span" %t155)
  store i32 %t160, ptr %l80
  br label %bb45
bb45:
  %t161 = load i32, ptr %l80, !tbaa !23
  store i32 %t161, ptr %l8, !tbaa !23
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/lower:lowering", ptr %t162, i32 0, i32 30
  %t165 = getelementptr %"compiler/typed:Plan", ptr %t164, i32 0, i32 8
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %l82, !tbaa !27
  %t167 = load i64, ptr %l1, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i64, ptr %t170, i64 %t167
  %t172 = load i64, ptr %t171, !tbaa !34
  store i64 %t172, ptr %l9, !tbaa !24
  %t174 = load i64, ptr %l9, !tbaa !24
  %t176 = icmp sge i64 %t174, 0
  br i1 %t176, label %bb46, label %bb47
bb46:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l9, !tbaa !24
  %t180 = load %"compiler/source:Span", ptr %l5
  %t184 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %t178, i64 %t179, i1 true, %"compiler/source:Span" %t180)
  store i32 %t184, ptr %l91
  br label %bb48
bb47:
  %t185 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t185, ptr %l87, !tbaa !23
  br label %bb49
bb48:
  %t187 = load i32, ptr %l91, !tbaa !23
  store i32 %t187, ptr %l87, !tbaa !23
  br label %bb49
bb49:
  %t188 = load i32, ptr %l87, !tbaa !23
  store i32 %t188, ptr %l10, !tbaa !23
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l93, !tbaa !29
  %t190 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t190, ptr %l94
  %t191 = load i32, ptr %l7, !tbaa !23
  store i32 %t191, ptr %l95, !tbaa !23
  %t192 = load i32, ptr %l8, !tbaa !23
  %t194 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t192)
  store %"compiler/mir:Lvalue" %t194, ptr %l97
  br label %bb50
bb50:
  store { i64, [21 x i64] } zeroinitializer, ptr %t195
  %t196 = getelementptr { i64, [21 x i64] }, ptr %t195, i32 0, i32 0
  store i64 7, ptr %t196
  %t197 = load %"compiler/source:Span", ptr %l94
  %t198 = insertvalue { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" } undef, %"compiler/source:Span" %t197, 0
  %t199 = load i32, ptr %l95, !tbaa !23
  %t200 = insertvalue { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" } %t198, i32 %t199, 1
  %t201 = load %"compiler/mir:Lvalue", ptr %l97
  %t202 = insertvalue { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" } %t200, %"compiler/mir:Lvalue" %t201, 2
  %t203 = getelementptr { i64, [21 x i64] }, ptr %t195, i32 0, i32 1
  store { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" } %t202, ptr %t203
  %t204 = load { i64, [21 x i64] }, ptr %t195
  %t206 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t204, ptr %t206
  %t207 = load ptr, ptr %l93, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t207, ptr %t206)
  br label %bb51
bb51:
  %t209 = load i32, ptr %l10, !tbaa !23
  %t210 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t213 = icmp ne i32 %t209, %t210
  br i1 %t213, label %bb52, label %bb53
bb52:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoinAt(ptr %v0, ptr %t215, i32 %t216)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t219 = load i32, ptr %l8, !tbaa !23
  %t221 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t219)
  store %"compiler/mir:Lvalue" %t221, ptr %l106
  br label %bb56
bb56:
  store { i64, [4 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 0
  store i64 1, ptr %t223
  %t224 = load %"compiler/mir:Lvalue", ptr %l106
  %t225 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t224, 0
  %t226 = getelementptr { i64, [4 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t225, ptr %t226
  %t227 = load { i64, [4 x i64] }, ptr %t222
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t227, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2esomeWrites(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l14 = alloca { i64, ptr }
  %l19 = alloca i1
  %l24 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l6, !tbaa !23
  %t23 = load i32, ptr %l6, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t28 = load i32, ptr %l6, !tbaa !23
  %t31 = add i64 %a2, 1
  %t35 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %a0, i32 %t28, i64 %t31)
  store i1 %t35, ptr %l24
  br label %bb7
bb6:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb8
bb7:
  %t36 = load i1, ptr %l24, !tbaa !21
  store i1 %t36, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l19, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2espawn(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca { { i64, [7 x i64] }, i32 }
  %l22 = alloca { i64, [7 x i64] }
  %l23 = alloca i32
  %l24 = alloca %"compiler/mir:Range"
  %l25 = alloca i64
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca { i64, [4 x i64] }
  %l36 = alloca %"compiler/mir:Range"
  %l37 = alloca %"compiler/mir:Range"
  %l42 = alloca i64
  %l50 = alloca %"compiler/lower:level"
  %l53 = alloca i1
  %l60 = alloca %"compiler/lower:level"
  %l71 = alloca ptr
  %l72 = alloca i1
  %l86 = alloca i32
  %l95 = alloca { i64, ptr }
  %l98 = alloca i64
  %l99 = alloca %"compiler/mir:Lvalue"
  %l101 = alloca %"compiler/mir:Range"
  %l102 = alloca %"compiler/mir:Lvalue"
  %l112 = alloca i64
  %l115 = alloca i64
  %l134 = alloca { i64, ptr }
  %l142 = alloca i32
  %l149 = alloca i32
  %l150 = alloca ptr
  %l151 = alloca %"compiler/source:Span"
  %l153 = alloca %"compiler/mir:Lvalue"
  %l159 = alloca i64
  %l161 = alloca %"compiler/mir:Lvalue"
  %l162 = alloca i64
  %l163 = alloca ptr
  %l166 = alloca { i64, ptr }
  %l169 = alloca %"compiler/lower:pl"
  %l171 = alloca %"compiler/lower:pl"
  %l172 = alloca %"compiler/mir:Lvalue"
  %l175 = alloca ptr
  %l176 = alloca i1
  %l187 = alloca { { i64, [7 x i64] }, i32 }
  %l197 = alloca %"compiler/mir:Range"
  %l208 = alloca { i64, [4 x i64] }
  %l214 = alloca i64
  %l215 = alloca %"compiler/mir:TaskClause"
  %l217 = alloca %"compiler/mir:Range"
  %l218 = alloca %"compiler/mir:TaskClause"
  %l228 = alloca i64
  %l231 = alloca i64
  %l250 = alloca { i64, ptr }
  %l261 = alloca { i64, [4 x i64] }
  %l262 = alloca i64
  %l267 = alloca %"compiler/mir:Range"
  %l271 = alloca %"compiler/mir:TaskClause"
  %l279 = alloca ptr
  %l280 = alloca ptr
  %l284 = alloca i32
  %l286 = alloca { i64, ptr }
  %l287 = alloca %"compiler/mir:Range"
  %l290 = alloca i1
  %l291 = alloca %"compiler/mir:Range"
  %l295 = alloca %"compiler/mir:Range"
  %l296 = alloca %"compiler/mir:Range"
  %l298 = alloca ptr
  %l299 = alloca { i64, [7 x i64] }
  %l300 = alloca %"compiler/mir:Range"
  %l301 = alloca ptr
  %l306 = alloca i64
  %l309 = alloca %"compiler/mir:Range"
  %l310 = alloca { i64, ptr }
  %l311 = alloca { i64, ptr }
  %l312 = alloca %"compiler/mir:Range"
  %l315 = alloca %"compiler/source:Span"
  %l317 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %t146 = alloca i64
  %t271 = alloca { i64, [4 x i64] }, align 8
  %t278 = alloca { i64, [15 x i64] }, align 8
  %t284 = alloca { i64, [21 x i64] }, align 8
  %t408 = alloca { i64, [7 x i64] }, align 8
  %t442 = alloca i64
  %t517 = alloca { i64, [4 x i64] }, align 8
  %t664 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  store i32 %t1, ptr %l3, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/lower:lowering", ptr %t3, i32 0, i32 12
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l42
  br label %bb1
bb1:
  %t8 = load i64, ptr %l42, !tbaa !24
  %t9 = sub i64 %t8, 1
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sge i64 %t11, 0
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lower:lowering", ptr %t17, i32 0, i32 12
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/lower:level" %t23, ptr %l50
  br label %bb6
bb6:
  %t24 = getelementptr %"compiler/lower:level", ptr %l50, i32 0, i32 2
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 7}
  %t27 = trunc i64 3 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load i32, ptr %l3, !tbaa !23
  %t31 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t34 = icmp eq i32 %t30, %t31
  store i1 %t34, ptr %l53, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l53, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lower:lowering", ptr %t37, i32 0, i32 12
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t39, i64 %t40)
  store %"compiler/lower:level" %t43, ptr %l60
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t44 = getelementptr %"compiler/lower:level", ptr %l60, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  store i32 %t45, ptr %l3, !tbaa !23
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = sub i64 %t47, 1
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb2
bb15:
  %t51 = load i32, ptr %l3, !tbaa !23
  %t52 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t55 = icmp eq i32 %t51, %t52
  br i1 %t55, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s5, ptr %t57, %"compiler/source:Span" %t58, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Spawn", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  store ptr %t64, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t66 = load ptr, ptr %l5, !tbaa !29
  store ptr %t66, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t67 = load ptr, ptr %l71, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l71, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 14
  store i1 %t73, ptr %l72, !tbaa !21
  br label %bb21
bb21:
  %t74 = load i1, ptr %l72, !tbaa !21
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l7, !tbaa !29
  br label %bb24
bb23:
  br label %bb30
bb24:
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Try", ptr %t81, i32 0, i32 2
  %t84 = load i1, ptr %t83, !tbaa !21
  br i1 %t84, label %bb25, label %bb26
bb25:
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Try", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = icmp eq ptr %t89, null
  br i1 %t91, label %bb27, label %bb28
bb26:
  br label %bb30
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1f89626f934b863_cae48f8c5308207f)
  unreachable
bb28:
  br label %bb29
bb29:
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Try", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l5, !tbaa !29
  store i1 true, ptr %l6, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_bd186c5d6cd7a57b_c31a7bfdd180fca7)
  unreachable
bb35:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l5, !tbaa !29
  %t102 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etaskType(ptr %v0, ptr %v1, ptr %t98, ptr %t99)
  store i32 %t102, ptr %l86
  br label %bb36
bb36:
  %t103 = load i32, ptr %l86, !tbaa !23
  store i32 %t103, ptr %l8, !tbaa !23
  %t104 = load i32, ptr %l8, !tbaa !23
  %t105 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t108 = icmp eq i32 %t104, %t105
  br i1 %t108, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s8
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %s8, ptr %t110, %"compiler/source:Span" %t111, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb40:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/lower:lowering", ptr %t114, i32 0, i32 2
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t118 = load i32, ptr %l8, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t117, i32 %t118)
  store { i64, ptr } %t121, ptr %l95
  br label %bb41
bb41:
  %t122 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t122, ptr %l9, !tbaa !27
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Spawn", ptr %t123, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l98, !tbaa !24
  store %"compiler/mir:Lvalue" zeroinitializer, ptr %l99
  %t129 = load i64, ptr %l98, !tbaa !24
  %t130 = icmp sgt i64 %t129, 0
  br i1 %t130, label %bb42, label %bb43
bb42:
  %t132 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/mir:Range" %t132, ptr %l101
  br label %bb44
bb43:
  %t133 = load i64, ptr %l98, !tbaa !24
  %t134 = icmp sge i64 %t133, 0
  br i1 %t134, label %bb46, label %bb47
bb44:
  %t136 = load %"compiler/mir:Range", ptr %l101
  %t137 = call %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %s0, { i64, [2 x i64] } zeroinitializer, %"compiler/mir:Range" %t136)
  store %"compiler/mir:Lvalue" %t137, ptr %l102
  br label %bb45
bb45:
  %t138 = load %"compiler/mir:Lvalue", ptr %l102
  store %"compiler/mir:Lvalue" %t138, ptr %l99
  br label %bb43
bb46:
  %t139 = load i64, ptr %l98, !tbaa !24
  %t140 = icmp sle i64 %t139, 288230376151711743
  br i1 %t140, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_50381a907c443937_a4d06b271538b33b)
  unreachable
bb48:
  %t142 = load i64, ptr %l98, !tbaa !24
  %t143 = mul i64 %t142, 32
  %t144 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t143)
  %t145 = load %"compiler/mir:Lvalue", ptr %l99
  store i64 0, ptr %t146
  br label %fill.147
fill.147:
  %t150 = load i64, ptr %t146
  %t151 = icmp slt i64 %t150, %t142
  br i1 %t151, label %fillb.148, label %filld.149
fillb.148:
  %t152 = getelementptr %"compiler/mir:Lvalue", ptr %t144, i64 %t150
  store %"compiler/mir:Lvalue" %t145, ptr %t152
  %t153 = add i64 %t150, 1
  store i64 %t153, ptr %t146
  br label %fill.147
filld.149:
  %t154 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t144, 1
  store { i64, ptr } %t155, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Spawn", ptr %t157, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t164 = load i64, ptr %l12, !tbaa !24
  %t165 = load i64, ptr %l11, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_50381a907c443937_a4d06b271538b33b)
  unreachable
bb50:
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb55
bb52:
  %t174 = load i64, ptr %l12, !tbaa !24
  %t175 = load i64, ptr %l11, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l13, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l13, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l115, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb54
bb54:
  %t190 = load i64, ptr %l115, !tbaa !24
  store i64 %t190, ptr %l112, !tbaa !24
  br label %bb55
bb55:
  %t191 = load i64, ptr %l112, !tbaa !24
  store i64 %t191, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb56
bb56:
  %t192 = load i64, ptr %l15, !tbaa !24
  %t193 = load i64, ptr %l14, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb57, label %bb58
bb57:
  br label %bb74
bb58:
  br label %bb59
bb59:
  %t200 = load i64, ptr %l11, !tbaa !24
  %t201 = load i64, ptr %l15, !tbaa !24
  %t202 = load i64, ptr %l13, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  store i64 %t208, ptr %l16, !tbaa !24
  %t210 = load ptr, ptr %l2, !tbaa !29
  %t212 = getelementptr %"compiler/typed:Spawn", ptr %t210, i32 0, i32 0
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  store { i64, ptr } %t213, ptr %l134, !tbaa !27
  %t214 = load i64, ptr %l16, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr ptr, ptr %t217, i64 %t214
  %t219 = load ptr, ptr %t218, !tbaa !39
  %t221 = icmp eq ptr %t219, null
  br i1 %t221, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t223 = load i64, ptr %l16, !tbaa !24
  %t224 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 0
  %t229 = icmp slt i64 %t223, %t226
  br i1 %t229, label %bb62, label %bb63
bb61:
  %t231 = load i64, ptr %l16, !tbaa !24
  store i64 %t231, ptr %l162, !tbaa !24
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l163, !tbaa !29
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load ptr, ptr %l2, !tbaa !29
  %t236 = getelementptr %"compiler/typed:Spawn", ptr %t234, i32 0, i32 0
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !27
  store { i64, ptr } %t237, ptr %l166, !tbaa !27
  %t238 = load i64, ptr %l16, !tbaa !24
  %t240 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr ptr, ptr %t241, i64 %t238
  %t243 = load ptr, ptr %t242, !tbaa !39
  %t246 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t233, ptr %t243)
  store %"compiler/lower:pl" %t246, ptr %l169
  br label %bb69
bb62:
  %t247 = load i64, ptr %l16, !tbaa !24
  %t249 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr i32, ptr %t250, i64 %t247
  %t252 = load i32, ptr %t251, !tbaa !33
  store i32 %t252, ptr %l142, !tbaa !23
  br label %bb64
bb63:
  %t254 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t254, ptr %l142, !tbaa !23
  br label %bb64
bb64:
  %t256 = load i32, ptr %l142, !tbaa !23
  store i32 %t256, ptr %l17, !tbaa !23
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load i32, ptr %l17, !tbaa !23
  %t259 = load %"compiler/source:Span", ptr %l1
  %t263 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t257, i32 %t258, %"compiler/source:Span" %t259)
  store i32 %t263, ptr %l149
  br label %bb65
bb65:
  %t264 = load i32, ptr %l149, !tbaa !23
  store i32 %t264, ptr %l18, !tbaa !23
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l150, !tbaa !29
  %t266 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t266, ptr %l151
  %t267 = load i32, ptr %l18, !tbaa !23
  %t269 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t267)
  store %"compiler/mir:Lvalue" %t269, ptr %l153
  br label %bb66
bb66:
  %t270 = load i32, ptr %l17, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t271
  %t272 = getelementptr { i64, [4 x i64] }, ptr %t271, i32 0, i32 0
  store i64 2, ptr %t272
  %t274 = insertvalue { i32, i64 } undef, i32 %t270, 0
  %t275 = insertvalue { i32, i64 } %t274, i64 0, 1
  %t276 = getelementptr { i64, [4 x i64] }, ptr %t271, i32 0, i32 1
  store { i32, i64 } %t275, ptr %t276
  %t277 = load { i64, [4 x i64] }, ptr %t271
  store { i64, [15 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [15 x i64] }, ptr %t278, i32 0, i32 0
  store i64 0, ptr %t279
  %t281 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t277, 0
  %t282 = getelementptr { i64, [15 x i64] }, ptr %t278, i32 0, i32 1
  store { { i64, [4 x i64] } } %t281, ptr %t282
  %t283 = load { i64, [15 x i64] }, ptr %t278
  store { i64, [21 x i64] } zeroinitializer, ptr %t284
  %t285 = getelementptr { i64, [21 x i64] }, ptr %t284, i32 0, i32 0
  store i64 0, ptr %t285
  %t286 = load %"compiler/source:Span", ptr %l151
  %t287 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t286, 0
  %t288 = load %"compiler/mir:Lvalue", ptr %l153
  %t289 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t287, %"compiler/mir:Lvalue" %t288, 1
  %t291 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t289, { i64, [15 x i64] } %t283, 2
  %t292 = getelementptr { i64, [21 x i64] }, ptr %t284, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t291, ptr %t292
  %t293 = load { i64, [21 x i64] }, ptr %t284
  %t295 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 176, i64 8)
  store { i64, [21 x i64] } %t293, ptr %t295
  %t296 = load ptr, ptr %l150, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s11, ptr %t296, ptr %t295)
  br label %bb67
bb67:
  %t298 = load i64, ptr %l16, !tbaa !24
  store i64 %t298, ptr %l159, !tbaa !24
  %t299 = load i32, ptr %l18, !tbaa !23
  %t301 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t299)
  store %"compiler/mir:Lvalue" %t301, ptr %l161
  br label %bb68
bb68:
  %t302 = load %"compiler/mir:Lvalue", ptr %l161
  %t303 = load i64, ptr %l159, !tbaa !24
  %t304 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr %"compiler/mir:Lvalue", ptr %t305, i64 %t303
  store %"compiler/mir:Lvalue" %t302, ptr %t306
  call void @__olang_scope_close(ptr %s11)
  br label %bb72
bb69:
  %t308 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l169)
  store %"compiler/lower:pl" %t308, ptr %l171
  br label %bb70
bb70:
  %t309 = load ptr, ptr %l163, !tbaa !29
  %t310 = load %"compiler/lower:pl", ptr %l171
  %t311 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v0, ptr %t309, %"compiler/lower:pl" %t310)
  store %"compiler/mir:Lvalue" %t311, ptr %l172
  br label %bb71
bb71:
  %t312 = load %"compiler/mir:Lvalue", ptr %l172
  %t313 = load i64, ptr %l162, !tbaa !24
  %t314 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = getelementptr %"compiler/mir:Lvalue", ptr %t315, i64 %t313
  store %"compiler/mir:Lvalue" %t312, ptr %t316
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t317 = load i64, ptr %l15, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l15, !tbaa !24
  br label %bb56
bb74:
  %t321 = load ptr, ptr %l5, !tbaa !29
  store ptr %t321, ptr %l175, !tbaa !29
  store i1 false, ptr %l176, !tbaa !21
  %t322 = load ptr, ptr %l175, !tbaa !29
  %t323 = icmp ne ptr %t322, null
  br i1 %t323, label %bb75, label %bb76
bb75:
  %t325 = load ptr, ptr %l175, !tbaa !29
  %t326 = load i64, ptr %t325, !range !{i64 0, i64 18}
  %t328 = icmp eq i64 %t326, 6
  store i1 %t328, ptr %l176, !tbaa !21
  br label %bb76
bb76:
  %t329 = load i1, ptr %l176, !tbaa !21
  br i1 %t329, label %bb77, label %bb78
bb77:
  %t330 = load ptr, ptr %l5, !tbaa !29
  %t332 = getelementptr { i64, [5 x i64] }, ptr %t330, i32 0, i32 1
  %t333 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t332, i32 0, i32 0
  %t334 = load %"compiler/source:Span", ptr %t333
  store %"compiler/source:Span" %t334, ptr %l19
  %t336 = load ptr, ptr %l5, !tbaa !29
  %t338 = getelementptr { i64, [5 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t338, i32 0, i32 2
  %t340 = load ptr, ptr %t339
  store ptr %t340, ptr %l20, !tbaa !29
  br label %bb79
bb78:
  br label %bb144
bb79:
  store %olang.scope zeroinitializer, ptr %s14
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l20, !tbaa !29
  %t345 = getelementptr %"compiler/typed:Call", ptr %t343, i32 0, i32 0
  %t346 = load ptr, ptr %t345, !tbaa !29
  %t347 = load %"compiler/source:Span", ptr %l19
  %t351 = call { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %t342, ptr %t346, %"compiler/source:Span" %t347, i32 -1)
  store { { i64, [7 x i64] }, i32 } %t351, ptr %l187
  br label %bb80
bb80:
  %t352 = load { { i64, [7 x i64] }, i32 }, ptr %l187
  store { { i64, [7 x i64] }, i32 } %t352, ptr %l21
  %t353 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l21, i32 0, i32 0
  %t354 = load { i64, [7 x i64] }, ptr %t353
  store { i64, [7 x i64] } %t354, ptr %l22
  %t356 = getelementptr { { i64, [7 x i64] }, i32 }, ptr %l21, i32 0, i32 1
  %t357 = load i32, ptr %t356, !tbaa !23
  store i32 %t357, ptr %l23, !tbaa !23
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/lower:lowering", ptr %t359, i32 0, i32 10
  %t362 = load i1, ptr %t361, !tbaa !21
  br i1 %t362, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb82:
  br label %bb83
bb83:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/lower:lowering", ptr %t364, i32 0, i32 26
  store i1 true, ptr %t366, !tbaa !21
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load ptr, ptr %l20, !tbaa !29
  %t369 = load { i64, [7 x i64] }, ptr %l22
  %t370 = load i32, ptr %l23, !tbaa !23
  %t375 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %t367, ptr %t368, { i64, [7 x i64] } %t369, i32 %t370)
  store %"compiler/mir:Range" %t375, ptr %l197
  br label %bb84
bb84:
  %t376 = load %"compiler/mir:Range", ptr %l197
  store %"compiler/mir:Range" %t376, ptr %l24
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/lower:lowering", ptr %t377, i32 0, i32 10
  %t380 = load i1, ptr %t379, !tbaa !21
  br i1 %t380, label %bb85, label %bb86
bb85:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb86:
  br label %bb87
bb87:
  %t382 = load { i64, [7 x i64] }, ptr %l22
  %t384 = extractvalue { i64, [7 x i64] } %t382, 0
  %t385 = icmp eq i64 %t384, 3
  br i1 %t385, label %bb88, label %bb89
bb88:
  %t387 = getelementptr { i64, [7 x i64] }, ptr %l22, i32 0, i32 1
  %t388 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t387, i32 0, i32 1
  %t389 = load i64, ptr %t388
  store i64 %t389, ptr %l25, !tbaa !24
  %t391 = getelementptr { i64, [7 x i64] }, ptr %l22, i32 0, i32 1
  %t392 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t391, i32 0, i32 2
  %t393 = load i32, ptr %t392
  store i32 %t393, ptr %l26, !tbaa !23
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/lower:lowering", ptr %t395, i32 0, i32 3
  %t398 = getelementptr %"compiler/mir:Fn", ptr %t397, i32 0, i32 11
  %t399 = getelementptr %"compiler/mir:Range", ptr %l24, i32 0, i32 0
  %t400 = load i32, ptr %t399, !tbaa !23
  %t402 = sext i32 %t400 to i64
  %t405 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t398, i64 %t402)
  store { i64, [4 x i64] } %t405, ptr %l208
  br label %bb91
bb91:
  %t406 = load i64, ptr %l25, !tbaa !24
  %t407 = load i32, ptr %l26, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t408
  %t409 = getelementptr { i64, [7 x i64] }, ptr %t408, i32 0, i32 0
  store i64 3, ptr %t409
  %t410 = load { i64, [4 x i64] }, ptr %l208
  %t411 = insertvalue { { i64, [4 x i64] }, i64, i32 } undef, { i64, [4 x i64] } %t410, 0
  %t413 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t411, i64 %t406, 1
  %t415 = insertvalue { { i64, [4 x i64] }, i64, i32 } %t413, i32 %t407, 2
  %t416 = getelementptr { i64, [7 x i64] }, ptr %t408, i32 0, i32 1
  store { { i64, [4 x i64] }, i64, i32 } %t415, ptr %t416
  %t417 = load { i64, [7 x i64] }, ptr %t408
  store { i64, [7 x i64] } %t417, ptr %l22
  br label %bb97
bb92:
  br i1 true, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_400575d530dd6291_b9c64e3b22c571dd)
  unreachable
bb97:
  %t419 = load ptr, ptr %l2, !tbaa !29
  %t421 = getelementptr %"compiler/typed:Spawn", ptr %t419, i32 0, i32 2
  %t422 = load { i64, ptr }, ptr %t421, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t422, 0
  store i64 %t424, ptr %l214, !tbaa !24
  store %"compiler/mir:TaskClause" zeroinitializer, ptr %l215
  %t425 = load i64, ptr %l214, !tbaa !24
  %t426 = icmp sgt i64 %t425, 0
  br i1 %t426, label %bb98, label %bb99
bb98:
  %t428 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s14, i32 0, i32 0)
  store %"compiler/mir:Range" %t428, ptr %l217
  br label %bb100
bb99:
  %t429 = load i64, ptr %l214, !tbaa !24
  %t430 = icmp sge i64 %t429, 0
  br i1 %t430, label %bb102, label %bb103
bb100:
  %t432 = load %"compiler/mir:Range", ptr %l217
  %t433 = call %"compiler/mir:TaskClause" @compiler_2fmir_3aTaskClause_2ector(ptr %s14, %"compiler/mir:Range" %t432, i1 false, { i64, [4 x i64] } zeroinitializer)
  store %"compiler/mir:TaskClause" %t433, ptr %l218
  br label %bb101
bb101:
  %t434 = load %"compiler/mir:TaskClause", ptr %l218
  store %"compiler/mir:TaskClause" %t434, ptr %l215
  br label %bb99
bb102:
  %t435 = load i64, ptr %l214, !tbaa !24
  %t436 = icmp sle i64 %t435, 164703072086692425
  br i1 %t436, label %bb104, label %bb105
bb103:
  call void @__olang_check_failed(ptr @olang_loc_956aeda6c669b3b5_1d6c951e348c7771)
  unreachable
bb104:
  %t438 = load i64, ptr %l214, !tbaa !24
  %t439 = mul i64 %t438, 56
  %t440 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t439)
  %t441 = load %"compiler/mir:TaskClause", ptr %l215
  store i64 0, ptr %t442
  br label %fill.443
fill.443:
  %t446 = load i64, ptr %t442
  %t447 = icmp slt i64 %t446, %t438
  br i1 %t447, label %fillb.444, label %filld.445
fillb.444:
  %t448 = getelementptr %"compiler/mir:TaskClause", ptr %t440, i64 %t446
  store %"compiler/mir:TaskClause" %t441, ptr %t448
  %t449 = add i64 %t446, 1
  store i64 %t449, ptr %t442
  br label %fill.443
filld.445:
  %t450 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t440, 1
  store { i64, ptr } %t451, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t453 = load ptr, ptr %l2, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Spawn", ptr %t453, i32 0, i32 2
  %t456 = load { i64, ptr }, ptr %t455, !tbaa !27
  %t458 = extractvalue { i64, ptr } %t456, 0
  store i64 %t458, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t460 = load i64, ptr %l29, !tbaa !24
  %t461 = load i64, ptr %l28, !tbaa !24
  %t464 = icmp sgt i64 %t460, %t461
  br i1 %t464, label %bb106, label %bb107
bb105:
  call void @__olang_check_failed(ptr @olang_loc_956aeda6c669b3b5_1d6c951e348c7771)
  unreachable
bb106:
  %t466 = load i64, ptr %l30, !tbaa !24
  %t468 = icmp sgt i64 %t466, 0
  br i1 %t468, label %bb108, label %bb109
bb107:
  store i64 0, ptr %l228, !tbaa !24
  br label %bb111
bb108:
  %t470 = load i64, ptr %l29, !tbaa !24
  %t471 = load i64, ptr %l28, !tbaa !24
  %t474 = sub i64 %t470, %t471
  %t475 = load i64, ptr %l30, !tbaa !24
  %t478 = add i64 %t474, %t475
  %t480 = sub i64 %t478, 1
  %t481 = load i64, ptr %l30, !tbaa !24
  %t484 = sdiv i64 %t480, %t481
  store i64 %t484, ptr %l231, !tbaa !24
  br label %bb110
bb109:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb110
bb110:
  %t486 = load i64, ptr %l231, !tbaa !24
  store i64 %t486, ptr %l228, !tbaa !24
  br label %bb111
bb111:
  %t487 = load i64, ptr %l228, !tbaa !24
  store i64 %t487, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb112
bb112:
  store %olang.scope zeroinitializer, ptr %s20
  %t488 = load i64, ptr %l32, !tbaa !24
  %t489 = load i64, ptr %l31, !tbaa !24
  %t492 = icmp slt i64 %t488, %t489
  %t494 = xor i1 %t492, true
  br i1 %t494, label %bb113, label %bb114
bb113:
  call void @__olang_scope_close(ptr %s20)
  br label %bb123
bb114:
  br label %bb115
bb115:
  %t496 = load i64, ptr %l28, !tbaa !24
  %t497 = load i64, ptr %l32, !tbaa !24
  %t498 = load i64, ptr %l30, !tbaa !24
  %t501 = mul i64 %t497, %t498
  %t504 = add i64 %t496, %t501
  store i64 %t504, ptr %l33, !tbaa !24
  %t506 = load ptr, ptr %l2, !tbaa !29
  %t508 = getelementptr %"compiler/typed:Spawn", ptr %t506, i32 0, i32 2
  %t509 = load { i64, ptr }, ptr %t508, !tbaa !27
  store { i64, ptr } %t509, ptr %l250, !tbaa !27
  %t510 = load i64, ptr %l33, !tbaa !24
  %t512 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t513 = load ptr, ptr %t512, !tbaa !27
  %t514 = getelementptr ptr, ptr %t513, i64 %t510
  %t515 = load ptr, ptr %t514, !tbaa !39
  store ptr %t515, ptr %l34, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t517
  %t518 = getelementptr { i64, [4 x i64] }, ptr %t517, i32 0, i32 0
  store i64 0, ptr %t518
  %t519 = load { i64, [4 x i64] }, ptr %t517
  store { i64, [4 x i64] } %t519, ptr %l35
  %t521 = load ptr, ptr %l34, !tbaa !29
  %t523 = getelementptr %"compiler/typed:TaskClause", ptr %t521, i32 0, i32 3
  %t524 = load ptr, ptr %t523, !tbaa !29
  %t526 = icmp eq ptr %t524, null
  %t528 = xor i1 %t526, true
  br i1 %t528, label %bb116, label %bb117
bb116:
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t531 = load ptr, ptr %l34, !tbaa !29
  %t533 = getelementptr %"compiler/typed:TaskClause", ptr %t531, i32 0, i32 3
  %t534 = load ptr, ptr %t533, !tbaa !29
  %t537 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t530, ptr %t534)
  store { i64, [4 x i64] } %t537, ptr %l261
  br label %bb118
bb117:
  br label %bb119
bb118:
  %t538 = load { i64, [4 x i64] }, ptr %l261
  store { i64, [4 x i64] } %t538, ptr %l35
  br label %bb119
bb119:
  %t539 = load i64, ptr %l33, !tbaa !24
  store i64 %t539, ptr %l262, !tbaa !24
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/lower:lowering", ptr %t540, i32 0, i32 3
  %t543 = load ptr, ptr %l34, !tbaa !29
  %t545 = getelementptr %"compiler/typed:TaskClause", ptr %t543, i32 0, i32 1
  %t546 = load { i64, ptr }, ptr %t545, !tbaa !27
  %t549 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddItems(ptr %v0, ptr %v1, ptr %t542, { i64, ptr } %t546)
  store %"compiler/mir:Range" %t549, ptr %l267
  br label %bb120
bb120:
  %t550 = load ptr, ptr %l34, !tbaa !29
  %t552 = getelementptr %"compiler/typed:TaskClause", ptr %t550, i32 0, i32 2
  %t553 = load i1, ptr %t552, !tbaa !21
  %t554 = load { i64, [4 x i64] }, ptr %l35
  %t555 = load %"compiler/mir:Range", ptr %l267
  %t558 = call %"compiler/mir:TaskClause" @compiler_2fmir_3aTaskClause_2ector(ptr %s20, %"compiler/mir:Range" %t555, i1 %t553, { i64, [4 x i64] } %t554)
  store %"compiler/mir:TaskClause" %t558, ptr %l271
  br label %bb121
bb121:
  %t559 = load %"compiler/mir:TaskClause", ptr %l271
  %t560 = load i64, ptr %l262, !tbaa !24
  %t561 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !27
  %t563 = getelementptr %"compiler/mir:TaskClause", ptr %t562, i64 %t560
  store %"compiler/mir:TaskClause" %t559, ptr %t563
  call void @__olang_scope_close(ptr %s20)
  br label %bb122
bb122:
  %t564 = load i64, ptr %l32, !tbaa !24
  %t566 = add i64 %t564, 1
  store i64 %t566, ptr %l32, !tbaa !24
  br label %bb112
bb123:
  %t568 = load ptr, ptr %l0, !tbaa !29
  %t570 = getelementptr %"compiler/lower:lowering", ptr %t568, i32 0, i32 10
  %t571 = load i1, ptr %t570, !tbaa !21
  br i1 %t571, label %bb124, label %bb125
bb124:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb125:
  br label %bb126
bb126:
  %t573 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t573, ptr %l36
  %t575 = load i1, ptr %l6, !tbaa !21
  br i1 %t575, label %bb127, label %bb128
bb127:
  store %olang.scope zeroinitializer, ptr %s24
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t579 = getelementptr %"compiler/lower:lowering", ptr %t577, i32 0, i32 3
  store ptr %t579, ptr %l279, !tbaa !29
  %t580 = load ptr, ptr %l0, !tbaa !29
  store ptr %t580, ptr %l280, !tbaa !29
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t583 = getelementptr %"compiler/lower:lowering", ptr %t581, i32 0, i32 2
  %t584 = load ptr, ptr %t583, !tbaa !29
  %t585 = load i32, ptr %l23, !tbaa !23
  %t588 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t584, i32 %t585)
  store i32 %t588, ptr %l284
  br label %bb129
bb128:
  br label %bb132
bb129:
  %t589 = load %"compiler/source:Span", ptr %l1
  %t590 = load ptr, ptr %l280, !tbaa !29
  %t591 = load i32, ptr %l284, !tbaa !23
  %t593 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ebangNames(ptr %v0, ptr %s24, ptr %t590, i32 %t591, %"compiler/source:Span" %t589)
  store { i64, ptr } %t593, ptr %l286
  br label %bb130
bb130:
  %t594 = load ptr, ptr %l279, !tbaa !29
  %t595 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t596 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %s24, ptr %t594, { i64, ptr } %t595)
  store %"compiler/mir:Range" %t596, ptr %l287
  br label %bb131
bb131:
  %t597 = load %"compiler/mir:Range", ptr %l287
  store %"compiler/mir:Range" %t597, ptr %l36
  call void @__olang_scope_close(ptr %s24)
  br label %bb132
bb132:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t599 = load ptr, ptr %l2, !tbaa !29
  %t602 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueTargets(ptr %v0, ptr %v1, ptr %t598, ptr %t599)
  store i1 %t602, ptr %l290
  br label %bb133
bb133:
  %t603 = load i1, ptr %l290, !tbaa !21
  br i1 %t603, label %bb134, label %bb135
bb134:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load ptr, ptr %l2, !tbaa !29
  %t606 = load ptr, ptr %l5, !tbaa !29
  %t610 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2etargetCopies(ptr %v0, ptr %v1, ptr %v1, ptr %t604, ptr %t605, ptr %t606)
  store %"compiler/mir:Range" %t610, ptr %l295
  br label %bb136
bb135:
  %t611 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s14, i32 0, i32 0)
  store %"compiler/mir:Range" %t611, ptr %l296
  br label %bb137
bb136:
  %t612 = load %"compiler/mir:Range", ptr %l295
  store %"compiler/mir:Range" %t612, ptr %l291
  br label %bb138
bb137:
  %t613 = load %"compiler/mir:Range", ptr %l296
  store %"compiler/mir:Range" %t613, ptr %l291
  br label %bb138
bb138:
  %t614 = load %"compiler/mir:Range", ptr %l291
  store %"compiler/mir:Range" %t614, ptr %l37
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = getelementptr %"compiler/lower:lowering", ptr %t615, i32 0, i32 3
  store ptr %t617, ptr %l298, !tbaa !29
  %t618 = load { i64, [7 x i64] }, ptr %l22
  store { i64, [7 x i64] } %t618, ptr %l299
  %t619 = load %"compiler/mir:Range", ptr %l24
  store %"compiler/mir:Range" %t619, ptr %l300
  %t620 = load ptr, ptr %l0, !tbaa !29
  store ptr %t620, ptr %l301, !tbaa !29
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/lower:lowering", ptr %t621, i32 0, i32 2
  %t624 = load ptr, ptr %t623, !tbaa !29
  %t625 = load { i64, [7 x i64] }, ptr %l22
  %t626 = load i32, ptr %l23, !tbaa !23
  %t630 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t624, { i64, [7 x i64] } %t625, i32 %t626)
  store i64 %t630, ptr %l306
  br label %bb139
bb139:
  %t631 = load ptr, ptr %l20, !tbaa !29
  %t633 = getelementptr %"compiler/typed:Call", ptr %t631, i32 0, i32 2
  %t634 = load i32, ptr %t633, !tbaa !23
  %t635 = load ptr, ptr %l301, !tbaa !29
  %t636 = load i64, ptr %l306, !tbaa !24
  %t638 = call %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %t635, i64 %t636, i32 %t634)
  store %"compiler/mir:Range" %t638, ptr %l309
  br label %bb140
bb140:
  %t639 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t639, ptr %l310, !tbaa !27
  %t640 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t640, ptr %l311, !tbaa !27
  %t641 = load %"compiler/mir:Range", ptr %l36
  store %"compiler/mir:Range" %t641, ptr %l312
  %t642 = load ptr, ptr %l2, !tbaa !29
  %t644 = getelementptr %"compiler/typed:Spawn", ptr %t642, i32 0, i32 1
  %t645 = load ptr, ptr %t644, !tbaa !29
  %t647 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t645)
  store %"compiler/source:Span" %t647, ptr %l315
  br label %bb141
bb141:
  %t648 = load %"compiler/mir:Range", ptr %l37
  %t649 = load ptr, ptr %l298, !tbaa !29
  %t650 = load { i64, [7 x i64] }, ptr %l299
  %t651 = load %"compiler/mir:Range", ptr %l300
  %t652 = load %"compiler/mir:Range", ptr %l309
  %t653 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t654 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t655 = load %"compiler/mir:Range", ptr %l312
  %t656 = load %"compiler/source:Span", ptr %l315
  %t658 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTask(ptr %v0, ptr %s0, ptr %s14, ptr %t649, { i64, [7 x i64] } %t650, %"compiler/mir:Range" %t651, %"compiler/mir:Range" %t652, { i64, ptr } %t653, { i64, ptr } %t654, %"compiler/mir:Range" %t655, %"compiler/source:Span" %t656, %"compiler/mir:Range" %t648)
  store i32 %t658, ptr %l317
  br label %bb142
bb142:
  %t659 = load i32, ptr %l317, !tbaa !23
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t661 = load %"compiler/source:Span", ptr %l1
  %t662 = load i32, ptr %l3, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t664
  %t665 = getelementptr { i64, [21 x i64] }, ptr %t664, i32 0, i32 0
  store i64 10, ptr %t665
  %t667 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t661, 0
  %t669 = insertvalue { %"compiler/source:Span", i32, i32 } %t667, i32 %t662, 1
  %t671 = insertvalue { %"compiler/source:Span", i32, i32 } %t669, i32 %t659, 2
  %t672 = getelementptr { i64, [21 x i64] }, ptr %t664, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t671, ptr %t672
  %t673 = load { i64, [21 x i64] }, ptr %t664
  %t675 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 176, i64 8)
  store { i64, [21 x i64] } %t673, ptr %t675
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s14, ptr %t660, ptr %t675)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s14)
  br label %bb149
bb144:
  br i1 true, label %bb145, label %bb146
bb145:
  br label %bb147
bb146:
  br label %bb148
bb147:
  br label %bb149
bb148:
  call void @__olang_check_failed(ptr @olang_loc_1fe467b856b44017_317567b0cb15d5cb)
  unreachable
bb149:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2esplitCopy(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, { i64, [1 x i64] } %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca i32
  %l12 = alloca i1
  %l15 = alloca i1
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l47 = alloca { i64, [1 x i64] }
  %l51 = alloca { i64, [1 x i64] }
  %l52 = alloca i32
  %l54 = alloca ptr
  %l60 = alloca { i64, [4 x i64] }
  %l63 = alloca i32
  %l64 = alloca ptr
  %l67 = alloca %"compiler/lower:pl"
  %l74 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t41 = alloca { i64, [4 x i64] }, align 8
  %t96 = alloca { i64, [4 x i64] }, align 8
  %t112 = alloca { i64, [4 x i64] }, align 8
  %t121 = alloca { i64, [15 x i64] }, align 8
  %t143 = alloca { i64, [2 x i64] }, align 8
  %t166 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 31
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  store i1 %t10, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l12, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/lower:lowering", ptr %t14, i32 0, i32 30
  %t17 = getelementptr %"compiler/typed:Plan", ptr %t16, i32 0, i32 5
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t23 = icmp sge i64 %t13, %t20
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l15, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lower:lowering", ptr %t26, i32 0, i32 30
  %t29 = getelementptr %"compiler/typed:Plan", ptr %t28, i32 0, i32 5
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l23, !tbaa !27
  %t31 = load i64, ptr %l1, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i64, ptr %t34, i64 %t31
  %t36 = load i64, ptr %t35, !tbaa !34
  %t38 = icmp ne i64 %t36, 1
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l21, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 0
  store i64 0, ptr %t42
  %t43 = load { i64, [4 x i64] }, ptr %t41
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t43, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/lower:lowering", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/lower:Lowerer", ptr %t48, i32 0, i32 5
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_550f196c576c62e9_d6f4b8a7045e85d)
  unreachable
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/lower:lowering", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/lower:Lowerer", ptr %t58, i32 0, i32 5
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lower:lowering", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Body", ptr %t65, i32 0, i32 0
  %t68 = load i32, ptr %t67, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t71 = load i64, ptr %l1, !tbaa !24
  %t75 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSplitPath(ptr %v0, ptr %s0, ptr %t61, i64 %t70, i64 %t71)
  store { i64, ptr } %t75, ptr %l40
  br label %bb16
bb16:
  %t76 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l41, !tbaa !24
  %t78 = load i64, ptr %l41, !tbaa !24
  %t79 = mul i64 %t78, 8
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l42, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l41, !tbaa !24
  %t88 = mul i64 %t87, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %t86, i64 %t88, i1 false)
  %t89 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t89, ptr %l6, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t94 = icmp eq i64 %t92, 0
  br i1 %t94, label %bb17, label %bb18
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t96
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 0
  store i64 0, ptr %t97
  %t98 = load { i64, [4 x i64] }, ptr %t96
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t98, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/lower:lowering", ptr %t100, i32 0, i32 33
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = call { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %t102, i64 %t103)
  %t107 = extractvalue { i32, { i64, [1 x i64] } } %t106, 1
  %t108 = extractvalue { i32, { i64, [1 x i64] } } %t106, 0
  store i32 %t108, ptr %l52
  %t109 = icmp ne i32 %t108, 0
  br i1 %t109, label %bb21, label %ok.110, !prof !99
ok.110:
  store { i64, [1 x i64] } %t107, ptr %l51
  br label %bb20
bb20:
  %t111 = load { i64, [1 x i64] }, ptr %l51
  store { i64, [1 x i64] } %t111, ptr %l47
  br label %bb23
bb21:
  br label %bb22
bb22:
  store { i64, [4 x i64] } zeroinitializer, ptr %t112
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 0
  store i64 0, ptr %t113
  %t114 = load { i64, [4 x i64] }, ptr %t112
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t114, ptr %rv
  br label %ret
bb23:
  %t116 = load { i64, [1 x i64] }, ptr %l47
  store { i64, [1 x i64] } %t116, ptr %l7
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l54, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr %l3, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t121
  %t122 = getelementptr { i64, [15 x i64] }, ptr %t121, i32 0, i32 0
  store i64 0, ptr %t122
  %t124 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %a2, 0
  %t125 = getelementptr { i64, [15 x i64] }, ptr %t121, i32 0, i32 1
  store { { i64, [4 x i64] } } %t124, ptr %t125
  %t126 = load { i64, [15 x i64] }, ptr %t121
  %t127 = load %"compiler/source:Span", ptr %l5
  %t132 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t118, i32 %t119, { i64, [15 x i64] } %t126, %"compiler/source:Span" %t127)
  store { i64, [4 x i64] } %t132, ptr %l60
  br label %bb24
bb24:
  %t133 = load i32, ptr %l3, !tbaa !23
  %t134 = load %"compiler/source:Span", ptr %l5
  %t135 = load ptr, ptr %l54, !tbaa !29
  %t136 = load { i64, [4 x i64] }, ptr %l60
  %t139 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t135, { i64, [4 x i64] } %t136, i32 %t133, %"compiler/source:Span" %t134)
  store i32 %t139, ptr %l63
  br label %bb25
bb25:
  %t140 = load i32, ptr %l63, !tbaa !23
  store i32 %t140, ptr %l8, !tbaa !23
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l64, !tbaa !29
  %t142 = load i32, ptr %l8, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 0
  store i64 1, ptr %t144
  %t146 = insertvalue { i32 } undef, i32 %t142, 0
  %t147 = getelementptr { i64, [2 x i64] }, ptr %t143, i32 0, i32 1
  store { i32 } %t146, ptr %t147
  %t148 = load { i64, [2 x i64] }, ptr %t143
  %t150 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t148)
  store %"compiler/lower:pl" %t150, ptr %l67
  br label %bb26
bb26:
  %t151 = load i32, ptr %l3, !tbaa !23
  %t152 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t154 = load { i64, [1 x i64] }, ptr %l7
  %t155 = load %"compiler/source:Span", ptr %l5
  %t156 = load ptr, ptr %l64, !tbaa !29
  %t157 = load %"compiler/lower:pl", ptr %l67
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2esplitParts(ptr %v0, ptr %s0, ptr %s0, ptr %t156, %"compiler/lower:pl" %t157, i32 %t151, { i64, ptr } %t152, i64 0, { i64, [1 x i64] } %a4, { i64, [1 x i64] } %t154, %"compiler/source:Span" %t155)
  br label %bb27
bb27:
  %t163 = load i32, ptr %l8, !tbaa !23
  %t165 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t163)
  store %"compiler/mir:Lvalue" %t165, ptr %l74
  br label %bb28
bb28:
  store { i64, [4 x i64] } zeroinitializer, ptr %t166
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 0
  store i64 1, ptr %t167
  %t168 = load %"compiler/mir:Lvalue", ptr %l74
  %t169 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t168, 0
  %t170 = getelementptr { i64, [4 x i64] }, ptr %t166, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t169, ptr %t170
  %t171 = load { i64, [4 x i64] }, ptr %t166
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t171, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estackArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, [4 x i64] }
  %l16 = alloca i1
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i32
  %l42 = alloca i32
  %l47 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i32
  %l59 = alloca i32
  %l62 = alloca i1
  %l65 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l74 = alloca i1
  %l82 = alloca i1
  %l84 = alloca { i64, ptr }
  %l95 = alloca i1
  %l102 = alloca { i64, [4 x i64] }
  %l106 = alloca ptr
  %l107 = alloca { i64, [4 x i64] }
  %l108 = alloca i32
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca i32
  %l112 = alloca ptr
  %l113 = alloca i32
  %l115 = alloca %"compiler/mir:Lvalue"
  %l117 = alloca { i64, [15 x i64] }
  %l119 = alloca %"compiler/source:Span"
  %l120 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %t25 = alloca { i64, [4 x i64] }, align 8
  %t94 = alloca { i64, [4 x i64] }, align 8
  %t122 = alloca { i64, [4 x i64] }, align 8
  %t172 = alloca { i64, [4 x i64] }, align 8
  %t189 = alloca { i64, [4 x i64] }, align 8
  %t208 = alloca { i64, [4 x i64] }, align 8
  %t230 = alloca { i64, [15 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 24
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  store i1 %t10, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l16, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb8
bb5:
  %t13 = load ptr, ptr %l1, !tbaa !29
  store ptr %t13, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t14 = load ptr, ptr %l20, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load ptr, ptr %l20, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 18}
  %t20 = icmp eq i64 %t18, 5
  store i1 %t20, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t21 = load i1, ptr %l21, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t24 = load i1, ptr %l19, !tbaa !21
  br i1 %t24, label %bb9, label %bb10
bb9:
  store { i64, [4 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t27 = load { i64, [4 x i64] }, ptr %t25
  store { i64, [4 x i64] } %t27, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 0
  %t33 = load %"compiler/source:Span", ptr %t32
  store %"compiler/source:Span" %t33, ptr %l4
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t37, i32 0, i32 1
  %t39 = load i32, ptr %t38
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [5 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t43, i32 0, i32 2
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l7, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/lower:lowering", ptr %t49, i32 0, i32 2
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l8, !tbaa !29
  store i32 %t39, ptr %l9, !tbaa !23
  %t56 = load ptr, ptr %l8, !tbaa !29
  %t57 = load i32, ptr %l9, !tbaa !23
  %t60 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l38
  br label %bb12
bb12:
  %t61 = load i1, ptr %l38, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t63 = load i32, ptr %l9, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l42
  br label %bb15
bb14:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t67, ptr %l39, !tbaa !23
  br label %bb16
bb15:
  %t69 = load i32, ptr %l42, !tbaa !23
  store i32 %t69, ptr %l39, !tbaa !23
  br label %bb16
bb16:
  %t70 = load i32, ptr %l39, !tbaa !23
  store i32 %t70, ptr %l10, !tbaa !23
  %t71 = load i32, ptr %l10, !tbaa !23
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t75 = icmp eq i32 %t71, %t72
  br i1 %t75, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb21
bb18:
  %t77 = load ptr, ptr %l8, !tbaa !29
  store ptr %t77, ptr %l48, !tbaa !29
  %t78 = load ptr, ptr %l8, !tbaa !29
  %t79 = load i32, ptr %l10, !tbaa !23
  %t82 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t78, i32 %t79)
  store i32 %t82, ptr %l51
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l48, !tbaa !29
  %t84 = load i32, ptr %l51, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t85, ptr %l52
  br label %bb20
bb20:
  %t86 = load i32, ptr %l52, !range !{i32 0, i32 33}
  %t88 = trunc i64 18 to i32
  %t89 = icmp eq i32 %t86, %t88
  %t91 = xor i1 %t89, true
  store i1 %t91, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t93 = load i1, ptr %l47, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  store { i64, [4 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 0
  store i64 0, ptr %t95
  %t96 = load { i64, [4 x i64] }, ptr %t94
  store { i64, [4 x i64] } %t96, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t98 = load ptr, ptr %l8, !tbaa !29
  %t99 = load i32, ptr %l10, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t102, ptr %l59
  br label %bb25
bb25:
  %t103 = load i32, ptr %l59, !range !{i32 0, i32 33}
  %t105 = trunc i64 18 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb26, label %bb27
bb26:
  %t108 = load ptr, ptr %l8, !tbaa !29
  %t109 = load i32, ptr %l10, !tbaa !23
  %t112 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t108, i32 %t109)
  store i1 %t112, ptr %l65
  br label %bb28
bb27:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb29
bb28:
  %t113 = load i1, ptr %l65, !tbaa !21
  store i1 %t113, ptr %l62, !tbaa !21
  br label %bb29
bb29:
  %t114 = load i1, ptr %l62, !tbaa !21
  br i1 %t114, label %bb30, label %bb31
bb30:
  %t115 = load ptr, ptr %l8, !tbaa !29
  %t116 = load i32, ptr %l10, !tbaa !23
  %t119 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l69
  br label %bb32
bb31:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb33
bb32:
  %t120 = load i1, ptr %l69, !tbaa !21
  store i1 %t120, ptr %l66, !tbaa !21
  br label %bb33
bb33:
  %t121 = load i1, ptr %l66, !tbaa !21
  br i1 %t121, label %bb34, label %bb35
bb34:
  store { i64, [4 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t122, i32 0, i32 0
  store i64 0, ptr %t123
  %t124 = load { i64, [4 x i64] }, ptr %t122
  store { i64, [4 x i64] } %t124, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t126 = load ptr, ptr %l7, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Promote", ptr %t126, i32 0, i32 1
  %t129 = load i32, ptr %t128, !tbaa !23
  %t131 = icmp slt i32 %t129, 0
  br i1 %t131, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb39
bb38:
  %t133 = load ptr, ptr %l7, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Promote", ptr %t133, i32 0, i32 1
  %t136 = load i32, ptr %t135, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/lower:lowering", ptr %t139, i32 0, i32 30
  %t142 = getelementptr %"compiler/typed:Plan", ptr %t141, i32 0, i32 0
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t148 = icmp sge i64 %t138, %t145
  store i1 %t148, ptr %l74, !tbaa !21
  br label %bb39
bb39:
  %t150 = load i1, ptr %l74, !tbaa !21
  br i1 %t150, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb42
bb41:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lower:lowering", ptr %t151, i32 0, i32 30
  %t154 = getelementptr %"compiler/typed:Plan", ptr %t153, i32 0, i32 0
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l84, !tbaa !27
  %t156 = load ptr, ptr %l7, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Promote", ptr %t156, i32 0, i32 1
  %t159 = load i32, ptr %t158, !tbaa !23
  %t161 = sext i32 %t159 to i64
  %t163 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr { i64, [2 x i64] }, ptr %t164, i64 %t161
  %t166 = load { i64, [2 x i64] }, ptr %t165
  %t168 = extractvalue { i64, [2 x i64] } %t166, 0
  %t169 = icmp eq i64 %t168, 4
  store i1 %t169, ptr %l82, !tbaa !21
  br label %bb42
bb42:
  %t171 = load i1, ptr %l82, !tbaa !21
  br i1 %t171, label %bb43, label %bb44
bb43:
  store { i64, [4 x i64] } zeroinitializer, ptr %t172
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 0
  store i64 0, ptr %t173
  %t174 = load { i64, [4 x i64] }, ptr %t172
  store { i64, [4 x i64] } %t174, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/lower:lowering", ptr %t176, i32 0, i32 0
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t180 = load i64, ptr %l2, !tbaa !24
  %t185 = call i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %t179, i64 %t180, i64 %a3)
  store i1 %t185, ptr %l95
  br label %bb46
bb46:
  %t186 = load i1, ptr %l95, !tbaa !21
  %t187 = xor i1 %t186, true
  br i1 %t187, label %bb47, label %bb48
bb47:
  store { i64, [4 x i64] } zeroinitializer, ptr %t189
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 0
  store i64 0, ptr %t190
  %t191 = load { i64, [4 x i64] }, ptr %t189
  store { i64, [4 x i64] } %t191, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l7, !tbaa !29
  %t196 = getelementptr %"compiler/typed:Promote", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t201 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t193, ptr %t197)
  store { i64, [4 x i64] } %t201, ptr %l102
  br label %bb50
bb50:
  %t202 = load { i64, [4 x i64] }, ptr %l102
  store { i64, [4 x i64] } %t202, ptr %l11
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/lower:lowering", ptr %t203, i32 0, i32 10
  %t206 = load i1, ptr %t205, !tbaa !21
  br i1 %t206, label %bb51, label %bb52
bb51:
  store { i64, [4 x i64] } zeroinitializer, ptr %t208
  %t209 = getelementptr { i64, [4 x i64] }, ptr %t208, i32 0, i32 0
  store i64 0, ptr %t209
  %t210 = load { i64, [4 x i64] }, ptr %t208
  store { i64, [4 x i64] } %t210, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l106, !tbaa !29
  %t213 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t213, ptr %l107
  %t214 = load i32, ptr %l10, !tbaa !23
  store i32 %t214, ptr %l108, !tbaa !23
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t215)
  store %"compiler/source:Span" %t217, ptr %l110
  br label %bb54
bb54:
  %t218 = load ptr, ptr %l106, !tbaa !29
  %t219 = load { i64, [4 x i64] }, ptr %l107
  %t220 = load i32, ptr %l108, !tbaa !23
  %t221 = load %"compiler/source:Span", ptr %l110
  %t222 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t218, { i64, [4 x i64] } %t219, i32 %t220, %"compiler/source:Span" %t221)
  store i32 %t222, ptr %l111
  br label %bb55
bb55:
  %t223 = load i32, ptr %l111, !tbaa !23
  %t224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t224, ptr %l112, !tbaa !29
  %t225 = load i32, ptr %l9, !tbaa !23
  store i32 %t225, ptr %l113, !tbaa !23
  %t228 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t223)
  store %"compiler/mir:Lvalue" %t228, ptr %l115
  br label %bb56
bb56:
  %t229 = load i32, ptr %l9, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t230
  %t231 = getelementptr { i64, [15 x i64] }, ptr %t230, i32 0, i32 0
  store i64 1, ptr %t231
  %t232 = load %"compiler/mir:Lvalue", ptr %l115
  %t233 = insertvalue { %"compiler/mir:Lvalue", i32 } undef, %"compiler/mir:Lvalue" %t232, 0
  %t235 = insertvalue { %"compiler/mir:Lvalue", i32 } %t233, i32 %t229, 1
  %t236 = getelementptr { i64, [15 x i64] }, ptr %t230, i32 0, i32 1
  store { %"compiler/mir:Lvalue", i32 } %t235, ptr %t236
  %t237 = load { i64, [15 x i64] }, ptr %t230
  store { i64, [15 x i64] } %t237, ptr %l117
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t238)
  store %"compiler/source:Span" %t240, ptr %l119
  br label %bb57
bb57:
  %t241 = load ptr, ptr %l112, !tbaa !29
  %t242 = load i32, ptr %l113, !tbaa !23
  %t243 = load { i64, [15 x i64] }, ptr %l117
  %t244 = load %"compiler/source:Span", ptr %l119
  %t245 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t241, i32 %t242, { i64, [15 x i64] } %t243, %"compiler/source:Span" %t244)
  store { i64, [4 x i64] } %t245, ptr %l120
  br label %bb58
bb58:
  %t246 = load { i64, [4 x i64] }, ptr %l120
  store { i64, [4 x i64] } %t246, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @compiler_2flower_2ecompiler_2flower_3alowering_2estmtIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca %"compiler/lower:pl"
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i1
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca ptr
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca i32
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca { i64, [4 x i64] }
  %l39 = alloca i32
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca { i64, [4 x i64] }
  %l42 = alloca i32
  %l43 = alloca i32
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca { i64, [4 x i64] }
  %l48 = alloca i32
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca ptr
  %l57 = alloca %"compiler/source:Span"
  %l58 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca i1
  %l76 = alloca %"compiler/typed:Local"
  %l88 = alloca %"compiler/typed:Local"
  %l94 = alloca %"compiler/mir:Local"
  %l105 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l110 = alloca %"compiler/mir:Lvalue"
  %l118 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l120 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l122 = alloca i64
  %l126 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca %"compiler/source:Span"
  %l139 = alloca { i64, [1 x i64] }
  %l140 = alloca { i64, [4 x i64] }
  %l145 = alloca i1
  %l146 = alloca i1
  %l151 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i1
  %l159 = alloca i1
  %l163 = alloca i1
  %l168 = alloca i1
  %l173 = alloca i64
  %l176 = alloca { i64, [4 x i64] }
  %l182 = alloca { i64, [4 x i64] }
  %l183 = alloca ptr
  %l184 = alloca { i64, [4 x i64] }
  %l185 = alloca i32
  %l186 = alloca %"compiler/source:Span"
  %l189 = alloca { i64, [1 x i64] }
  %l190 = alloca { i64, [4 x i64] }
  %l195 = alloca %"compiler/mir:Local"
  %l206 = alloca ptr
  %l207 = alloca %"compiler/source:Span"
  %l211 = alloca %"compiler/mir:Lvalue"
  %l216 = alloca ptr
  %l217 = alloca i1
  %l229 = alloca %"compiler/lower:pl"
  %l231 = alloca %"compiler/lower:pl"
  %l233 = alloca ptr
  %l234 = alloca %"compiler/lower:pl"
  %l236 = alloca %"compiler/lower:pl"
  %l237 = alloca ptr
  %l241 = alloca { i64, [4 x i64] }
  %l243 = alloca ptr
  %l245 = alloca i32
  %l247 = alloca { i64, [4 x i64] }
  %l248 = alloca %"compiler/lower:pl"
  %l251 = alloca %"compiler/lower:pl"
  %l252 = alloca i32
  %l258 = alloca ptr
  %l259 = alloca %"compiler/lower:pl"
  %l261 = alloca %"compiler/lower:pl"
  %l264 = alloca ptr
  %l266 = alloca i32
  %l267 = alloca i1
  %l268 = alloca i1
  %l272 = alloca i1
  %l274 = alloca i1
  %l276 = alloca ptr
  %l277 = alloca ptr
  %l279 = alloca i32
  %l280 = alloca i1
  %l281 = alloca ptr
  %l282 = alloca ptr
  %l283 = alloca %"compiler/lower:pl"
  %l285 = alloca %"compiler/lower:pl"
  %l286 = alloca %"compiler/mir:Lvalue"
  %l287 = alloca { i64, [4 x i64] }
  %l289 = alloca i32
  %l290 = alloca i1
  %l291 = alloca %"compiler/source:Span"
  %l294 = alloca { i64, [1 x i64] }
  %l297 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l300 = alloca i64
  %l302 = alloca i1
  %l306 = alloca ptr
  %l308 = alloca i32
  %l310 = alloca i32
  %l311 = alloca ptr
  %l312 = alloca %"compiler/source:Span"
  %l314 = alloca %"compiler/mir:Lvalue"
  %l315 = alloca ptr
  %l316 = alloca %"compiler/lower:pl"
  %l318 = alloca %"compiler/lower:pl"
  %l319 = alloca %"compiler/mir:Lvalue"
  %l324 = alloca ptr
  %l325 = alloca %"compiler/source:Span"
  %l328 = alloca %"compiler/mir:Lvalue"
  %l344 = alloca i1
  %l351 = alloca ptr
  %l352 = alloca i1
  %l362 = alloca ptr
  %l363 = alloca i1
  %l370 = alloca ptr
  %l371 = alloca %"compiler/source:Span"
  %l375 = alloca ptr
  %l376 = alloca i1
  %l386 = alloca ptr
  %l387 = alloca i1
  %l400 = alloca ptr
  %l401 = alloca i1
  %l414 = alloca ptr
  %l415 = alloca i1
  %l425 = alloca ptr
  %l426 = alloca i1
  %l436 = alloca ptr
  %l442 = alloca i32
  %l445 = alloca i64
  %l446 = alloca ptr
  %l447 = alloca %"compiler/source:Span"
  %l450 = alloca { i64, [4 x i64] }
  %l453 = alloca i1
  %l459 = alloca ptr
  %l460 = alloca i1
  %l472 = alloca { i64, [4 x i64] }
  %l476 = alloca ptr
  %l477 = alloca { i64, [4 x i64] }
  %l479 = alloca i32
  %l481 = alloca i32
  %l482 = alloca ptr
  %l483 = alloca i32
  %l484 = alloca ptr
  %l485 = alloca i32
  %l487 = alloca i32
  %l488 = alloca { i64, [4 x i64] }
  %l491 = alloca { i64, [4 x i64] }
  %l498 = alloca { i64, ptr }
  %l500 = alloca { i64, [4 x i64] }
  %l503 = alloca i32
  %l506 = alloca i32
  %l521 = alloca ptr
  %l522 = alloca i32
  %l524 = alloca i32
  %l531 = alloca i1
  %l533 = alloca ptr
  %l539 = alloca i32
  %l540 = alloca { i64, ptr }
  %l543 = alloca ptr
  %l544 = alloca %"compiler/source:Span"
  %l545 = alloca ptr
  %l546 = alloca i32
  %l547 = alloca { i64, [4 x i64] }
  %l548 = alloca i32
  %l554 = alloca i32
  %l557 = alloca { i64, [4 x i64] }
  %l564 = alloca ptr
  %l565 = alloca i1
  %l581 = alloca { i64, [4 x i64] }
  %l584 = alloca i32
  %l595 = alloca ptr
  %l596 = alloca i1
  %l609 = alloca ptr
  %l610 = alloca i1
  %l617 = alloca ptr
  %l618 = alloca i1
  %l629 = alloca ptr
  %l631 = alloca ptr
  %l637 = alloca i1
  %l638 = alloca ptr
  %l641 = alloca i64
  %l643 = alloca i1
  %l645 = alloca ptr
  %l646 = alloca %"compiler/source:Span"
  %l649 = alloca i64
  %l651 = alloca ptr
  %l654 = alloca i64
  %l656 = alloca i1
  %l662 = alloca ptr
  %l663 = alloca i1
  %l673 = alloca ptr
  %l674 = alloca i1
  %l684 = alloca ptr
  %l685 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %t91 = alloca { i64, [21 x i64] }, align 8
  %t110 = alloca { i64, [4 x i64] }, align 8
  %t113 = alloca { i64, [15 x i64] }, align 8
  %t119 = alloca { i64, [21 x i64] }, align 8
  %t306 = alloca { i64, [21 x i64] }, align 8
  %t326 = alloca { i64, [15 x i64] }, align 8
  %t332 = alloca { i64, [21 x i64] }, align 8
  %t544 = alloca { i64, [4 x i64] }, align 8
  %t550 = alloca { i64, [15 x i64] }, align 8
  %t556 = alloca { i64, [21 x i64] }, align 8
  %t578 = alloca { i64, [15 x i64] }, align 8
  %t584 = alloca { i64, [21 x i64] }, align 8
  %t875 = alloca { i64, [4 x i64] }, align 8
  %t969 = alloca { i64, [15 x i64] }, align 8
  %t986 = alloca { i64, [4 x i64] }, align 8
  %t1029 = alloca { i64, [8 x i64] }, align 8
  %t1047 = alloca { i64, [4 x i64] }, align 8
  %t1050 = alloca { i64, [8 x i64] }, align 8
  %t1141 = alloca { i64, [15 x i64] }, align 8
  %t1193 = alloca { i64, [4 x i64] }, align 8
  %t1229 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t2 = load ptr, ptr %l61, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l61, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l62, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l62, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb64
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/lower:lowering", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Body", ptr %t31, i32 0, i32 7
  %t34 = load i32, ptr %l3, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t39 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t33, i64 %t36)
  store %"compiler/typed:Local" %t39, ptr %l76
  br label %bb6
bb6:
  %t40 = getelementptr %"compiler/typed:Local", ptr %l76, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  store i32 %t41, ptr %l5, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ehomeKept(ptr %v0, ptr %t43, i32 %t44)
  br label %bb7
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l3, !tbaa !23
  %t49 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2efeedHome(ptr %v0, ptr %v1, ptr %t47, i32 %t48, ptr %t49)
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/lower:lowering", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Body", ptr %t56, i32 0, i32 7
  %t59 = load i32, ptr %l3, !tbaa !23
  %t61 = sext i32 %t59 to i64
  %t64 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t58, i64 %t61)
  store %"compiler/typed:Local" %t64, ptr %l88
  br label %bb9
bb9:
  %t65 = getelementptr %"compiler/typed:Local", ptr %l88, i32 0, i32 6
  %t66 = load i1, ptr %t65, !tbaa !21
  br i1 %t66, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/lower:lowering", ptr %t68, i32 0, i32 3
  %t71 = getelementptr %"compiler/mir:Fn", ptr %t70, i32 0, i32 7
  %t72 = load i32, ptr %l3, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t77 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t71, i64 %t74)
  store %"compiler/mir:Local" %t77, ptr %l94
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t78 = getelementptr %"compiler/mir:Local", ptr %l94, i32 0, i32 4
  %t79 = load { i64, [1 x i64] }, ptr %t78
  %t81 = extractvalue { i64, [1 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 3
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l2
  %t88 = load i32, ptr %l3, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [21 x i64] }, ptr %t91, i32 0, i32 0
  store i64 1, ptr %t92
  %t94 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t87, 0
  %t96 = insertvalue { %"compiler/source:Span", i32 } %t94, i32 %t88, 1
  %t97 = getelementptr { i64, [21 x i64] }, ptr %t91, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t96, ptr %t97
  %t98 = load { i64, [21 x i64] }, ptr %t91
  %t100 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 176, i64 8)
  store { i64, [21 x i64] } %t98, ptr %t100
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s3, ptr %t86, ptr %t100)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l105, !tbaa !29
  %t104 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t104, ptr %l106
  %t105 = load i32, ptr %l3, !tbaa !23
  %t109 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t105)
  store %"compiler/mir:Lvalue" %t109, ptr %l110
  br label %bb17
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 0
  store i64 0, ptr %t111
  %t112 = load { i64, [4 x i64] }, ptr %t110
  store { i64, [15 x i64] } zeroinitializer, ptr %t113
  %t114 = getelementptr { i64, [15 x i64] }, ptr %t113, i32 0, i32 0
  store i64 0, ptr %t114
  %t116 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t112, 0
  %t117 = getelementptr { i64, [15 x i64] }, ptr %t113, i32 0, i32 1
  store { { i64, [4 x i64] } } %t116, ptr %t117
  %t118 = load { i64, [15 x i64] }, ptr %t113
  store { i64, [21 x i64] } zeroinitializer, ptr %t119
  %t120 = getelementptr { i64, [21 x i64] }, ptr %t119, i32 0, i32 0
  store i64 0, ptr %t120
  %t121 = load %"compiler/source:Span", ptr %l106
  %t122 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t121, 0
  %t123 = load %"compiler/mir:Lvalue", ptr %l110
  %t124 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t122, %"compiler/mir:Lvalue" %t123, 1
  %t126 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t124, { i64, [15 x i64] } %t118, 2
  %t127 = getelementptr { i64, [21 x i64] }, ptr %t119, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t126, ptr %t127
  %t128 = load { i64, [21 x i64] }, ptr %t119
  %t130 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 176, i64 8)
  store { i64, [21 x i64] } %t128, ptr %t130
  %t131 = load ptr, ptr %l105, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s2, ptr %t131, ptr %t130)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb19:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/lower:lowering", ptr %t133, i32 0, i32 39
  store i32 -1, ptr %t135, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lower:lowering", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Body", ptr %t139, i32 0, i32 17
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t141
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l118
  %t144 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s1, ptr %l118)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l120
  br label %bb20
bb20:
  %t145 = load i32, ptr %l3, !tbaa !23
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l120
  %t148 = call i64 @compiler_2flower_2eindexOf(ptr %s1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, i32 %t145)
  store i64 %t148, ptr %l122
  br label %bb21
bb21:
  %t149 = load i64, ptr %l122, !tbaa !24
  %t150 = icmp sge i64 %t149, 0
  br i1 %t150, label %bb22, label %bb23
bb22:
  %t152 = load ptr, ptr %l4, !tbaa !29
  %t155 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t152)
  store ptr %t155, ptr %l126
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t156 = load ptr, ptr %l126, !tbaa !29
  store ptr %t156, ptr %l6, !tbaa !29
  %t157 = load ptr, ptr %l6, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb25, label %bb26
bb25:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l6, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Call", ptr %t164, i32 0, i32 2
  %t167 = load i32, ptr %t166, !tbaa !23
  %t170 = getelementptr %"compiler/lower:lowering", ptr %t163, i32 0, i32 39
  store i32 %t167, ptr %t170, !tbaa !23
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l133, !tbaa !29
  %t172 = load ptr, ptr %l4, !tbaa !29
  store ptr %t172, ptr %l134, !tbaa !29
  %t173 = load i32, ptr %l5, !tbaa !23
  store i32 %t173, ptr %l135, !tbaa !23
  %t174 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t174, ptr %l136
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l3, !tbaa !23
  %t179 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %t175, i32 %t176)
  store { i64, [1 x i64] } %t179, ptr %l139
  br label %bb29
bb29:
  %t180 = load ptr, ptr %l133, !tbaa !29
  %t181 = load ptr, ptr %l134, !tbaa !29
  %t182 = load i32, ptr %l135, !tbaa !23
  %t183 = load %"compiler/source:Span", ptr %l136
  %t184 = load { i64, [1 x i64] }, ptr %l139
  %t185 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efitAt(ptr %v0, ptr %v1, ptr %t180, ptr %t181, i32 %t182, %"compiler/source:Span" %t183, { i64, [1 x i64] } %t184)
  store { i64, [4 x i64] } %t185, ptr %l140
  br label %bb30
bb30:
  %t186 = load { i64, [4 x i64] }, ptr %l140
  store { i64, [4 x i64] } %t186, ptr %l7
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/lower:lowering", ptr %t187, i32 0, i32 39
  store i32 -1, ptr %t189, !tbaa !23
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t192 = load i32, ptr %l5, !tbaa !23
  %t196 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %t190, ptr %t191, i32 %t192)
  store i1 %t196, ptr %l145
  br label %bb31
bb31:
  %t197 = load i1, ptr %l145, !tbaa !21
  br i1 %t197, label %bb32, label %bb33
bb32:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l4, !tbaa !29
  %t201 = load i32, ptr %l5, !tbaa !23
  %t205 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %t198, ptr %t199, i32 %t201)
  store i1 %t205, ptr %l151
  br label %bb34
bb33:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb35
bb34:
  %t206 = load i1, ptr %l151, !tbaa !21
  %t207 = xor i1 %t206, true
  store i1 %t207, ptr %l146, !tbaa !21
  br label %bb35
bb35:
  %t209 = load i1, ptr %l146, !tbaa !21
  br i1 %t209, label %bb36, label %bb37
bb36:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load ptr, ptr %l4, !tbaa !29
  %t212 = load i32, ptr %l5, !tbaa !23
  %t216 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidens(ptr %v0, ptr %v1, ptr %t210, ptr %t211, i32 %t212)
  store i1 %t216, ptr %l157
  br label %bb38
bb37:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb39
bb38:
  %t217 = load i1, ptr %l157, !tbaa !21
  %t218 = xor i1 %t217, true
  store i1 %t218, ptr %l153, !tbaa !21
  br label %bb39
bb39:
  %t220 = load i1, ptr %l153, !tbaa !21
  br i1 %t220, label %bb40, label %bb41
bb40:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/lower:lowering", ptr %t221, i32 0, i32 10
  %t224 = load i1, ptr %t223, !tbaa !21
  %t226 = xor i1 %t224, true
  store i1 %t226, ptr %l159, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb42
bb42:
  %t228 = load i1, ptr %l159, !tbaa !21
  br i1 %t228, label %bb43, label %bb44
bb43:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/lower:lowering", ptr %t229, i32 0, i32 51
  %t232 = load i32, ptr %l3, !tbaa !23
  %t234 = sext i32 %t232 to i64
  %t237 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t231, i64 %t234)
  store i1 %t237, ptr %l168
  br label %bb45
bb44:
  store i1 false, ptr %l163, !tbaa !21
  br label %bb46
bb45:
  %t238 = load i1, ptr %l168, !tbaa !21
  %t239 = xor i1 %t238, true
  store i1 %t239, ptr %l163, !tbaa !21
  br label %bb46
bb46:
  %t241 = load i1, ptr %l163, !tbaa !21
  br i1 %t241, label %bb47, label %bb48
bb47:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i32, ptr %l3, !tbaa !23
  %t244 = load ptr, ptr %l4, !tbaa !29
  %t248 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eslotLen(ptr %v0, ptr %v1, ptr %t242, i32 %t243, ptr %t244)
  store i64 %t248, ptr %l173
  br label %bb49
bb48:
  br label %bb56
bb49:
  %t249 = load i64, ptr %l173, !tbaa !24
  store i64 %t249, ptr %l8, !tbaa !24
  %t250 = load i64, ptr %l8, !tbaa !24
  %t252 = icmp sge i64 %t250, 0
  br i1 %t252, label %bb50, label %bb51
bb50:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load { i64, [4 x i64] }, ptr %l7
  %t256 = load i32, ptr %l5, !tbaa !23
  %t257 = load i64, ptr %l8, !tbaa !24
  %t258 = load %"compiler/source:Span", ptr %l2
  %t264 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eslotCopy(ptr %v0, ptr %t254, { i64, [4 x i64] } %t255, i32 %t256, i64 %t257, %"compiler/source:Span" %t258)
  store { i64, [4 x i64] } %t264, ptr %l182
  br label %bb52
bb51:
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l183, !tbaa !29
  %t266 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [4 x i64] } %t266, ptr %l184
  %t267 = load i32, ptr %l5, !tbaa !23
  store i32 %t267, ptr %l185, !tbaa !23
  %t268 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t268, ptr %l186
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i32, ptr %l3, !tbaa !23
  %t273 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %t269, i32 %t270)
  store { i64, [1 x i64] } %t273, ptr %l189
  br label %bb53
bb52:
  %t274 = load { i64, [4 x i64] }, ptr %l182
  store { i64, [4 x i64] } %t274, ptr %l176
  br label %bb55
bb53:
  %t275 = load ptr, ptr %l183, !tbaa !29
  %t276 = load { i64, [4 x i64] }, ptr %l184
  %t277 = load i32, ptr %l185, !tbaa !23
  %t278 = load %"compiler/source:Span", ptr %l186
  %t279 = load { i64, [1 x i64] }, ptr %l189
  %t280 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %t275, { i64, [4 x i64] } %t276, i32 %t277, %"compiler/source:Span" %t278, { i64, [1 x i64] } %t279, i1 false)
  store { i64, [4 x i64] } %t280, ptr %l190
  br label %bb54
bb54:
  %t281 = load { i64, [4 x i64] }, ptr %l190
  store { i64, [4 x i64] } %t281, ptr %l176
  br label %bb55
bb55:
  %t282 = load { i64, [4 x i64] }, ptr %l176
  store { i64, [4 x i64] } %t282, ptr %l7
  br label %bb56
bb56:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/lower:lowering", ptr %t283, i32 0, i32 3
  %t286 = getelementptr %"compiler/mir:Fn", ptr %t285, i32 0, i32 7
  %t287 = load i32, ptr %l3, !tbaa !23
  %t289 = sext i32 %t287 to i64
  %t292 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t286, i64 %t289)
  store %"compiler/mir:Local" %t292, ptr %l195
  br label %bb57
bb57:
  %t293 = getelementptr %"compiler/mir:Local", ptr %l195, i32 0, i32 4
  %t294 = load { i64, [1 x i64] }, ptr %t293
  %t296 = extractvalue { i64, [1 x i64] } %t294, 0
  %t297 = icmp eq i64 %t296, 3
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s7
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load %"compiler/source:Span", ptr %l2
  %t303 = load i32, ptr %l3, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [21 x i64] }, ptr %t306, i32 0, i32 0
  store i64 1, ptr %t307
  %t309 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t302, 0
  %t311 = insertvalue { %"compiler/source:Span", i32 } %t309, i32 %t303, 1
  %t312 = getelementptr { i64, [21 x i64] }, ptr %t306, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t311, ptr %t312
  %t313 = load { i64, [21 x i64] }, ptr %t306
  %t315 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 176, i64 8)
  store { i64, [21 x i64] } %t313, ptr %t315
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s7, ptr %t301, ptr %t315)
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s7)
  br label %bb61
bb61:
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l206, !tbaa !29
  %t319 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t319, ptr %l207
  %t320 = load i32, ptr %l3, !tbaa !23
  %t324 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t320)
  store %"compiler/mir:Lvalue" %t324, ptr %l211
  br label %bb62
bb62:
  %t325 = load { i64, [4 x i64] }, ptr %l7
  store { i64, [15 x i64] } zeroinitializer, ptr %t326
  %t327 = getelementptr { i64, [15 x i64] }, ptr %t326, i32 0, i32 0
  store i64 0, ptr %t327
  %t329 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t325, 0
  %t330 = getelementptr { i64, [15 x i64] }, ptr %t326, i32 0, i32 1
  store { { i64, [4 x i64] } } %t329, ptr %t330
  %t331 = load { i64, [15 x i64] }, ptr %t326
  store { i64, [21 x i64] } zeroinitializer, ptr %t332
  %t333 = getelementptr { i64, [21 x i64] }, ptr %t332, i32 0, i32 0
  store i64 0, ptr %t333
  %t334 = load %"compiler/source:Span", ptr %l207
  %t335 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t334, 0
  %t336 = load %"compiler/mir:Lvalue", ptr %l211
  %t337 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t335, %"compiler/mir:Lvalue" %t336, 1
  %t339 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t337, { i64, [15 x i64] } %t331, 2
  %t340 = getelementptr { i64, [21 x i64] }, ptr %t332, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t339, ptr %t340
  %t341 = load { i64, [21 x i64] }, ptr %t332
  %t343 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 176, i64 8)
  store { i64, [21 x i64] } %t341, ptr %t343
  %t344 = load ptr, ptr %l206, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s1, ptr %t344, ptr %t343)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s1)
  br label %bb310
bb64:
  %t346 = load ptr, ptr %l1, !tbaa !29
  store ptr %t346, ptr %l216, !tbaa !29
  store i1 false, ptr %l217, !tbaa !21
  %t347 = load ptr, ptr %l216, !tbaa !29
  %t348 = icmp ne ptr %t347, null
  br i1 %t348, label %bb65, label %bb66
bb65:
  %t350 = load ptr, ptr %l216, !tbaa !29
  %t351 = load i64, ptr %t350, !range !{i64 0, i64 17}
  %t353 = icmp eq i64 %t351, 1
  store i1 %t353, ptr %l217, !tbaa !21
  br label %bb66
bb66:
  %t354 = load i1, ptr %l217, !tbaa !21
  br i1 %t354, label %bb67, label %bb68
bb67:
  %t355 = load ptr, ptr %l1, !tbaa !29
  %t357 = getelementptr { i64, [3 x i64] }, ptr %t355, i32 0, i32 1
  %t358 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t357, i32 0, i32 0
  %t359 = load %"compiler/source:Span", ptr %t358
  store %"compiler/source:Span" %t359, ptr %l9
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = getelementptr { i64, [3 x i64] }, ptr %t361, i32 0, i32 1
  %t364 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t363, i32 0, i32 1
  %t365 = load ptr, ptr %t364
  store ptr %t365, ptr %l10, !tbaa !29
  %t367 = load ptr, ptr %l1, !tbaa !29
  %t369 = getelementptr { i64, [3 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t369, i32 0, i32 2
  %t371 = load ptr, ptr %t370
  store ptr %t371, ptr %l11, !tbaa !29
  br label %bb69
bb68:
  br label %bb135
bb69:
  store %olang.scope zeroinitializer, ptr %s8
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load ptr, ptr %l10, !tbaa !29
  %t378 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %s8, ptr %t373, ptr %t374)
  store %"compiler/lower:pl" %t378, ptr %l229
  br label %bb70
bb70:
  %t380 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s8, ptr %l229)
  store %"compiler/lower:pl" %t380, ptr %l231
  br label %bb71
bb71:
  %t381 = load %"compiler/lower:pl", ptr %l231
  store %"compiler/lower:pl" %t381, ptr %l12
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/lower:lowering", ptr %t382, i32 0, i32 20
  store ptr %t384, ptr %l233, !tbaa !29
  %t385 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t385, ptr %l234
  %t387 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s8, ptr %l234)
  store %"compiler/lower:pl" %t387, ptr %l236
  br label %bb72
bb72:
  %t388 = load ptr, ptr %l233, !tbaa !29
  %t389 = load %"compiler/lower:pl", ptr %l236
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ePush_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %s8, ptr %t388, %"compiler/lower:pl" %t389)
  br label %bb73
bb73:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l237, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load ptr, ptr %l11, !tbaa !29
  %t396 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t391, ptr %t392)
  store { i64, [4 x i64] } %t396, ptr %l241
  br label %bb74
bb74:
  %t397 = load ptr, ptr %l11, !tbaa !29
  store ptr %t397, ptr %l243, !tbaa !29
  %t399 = load ptr, ptr %l10, !tbaa !29
  %t401 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t399)
  store i32 %t401, ptr %l245
  br label %bb75
bb75:
  %t402 = load %"compiler/source:Span", ptr %l9
  %t403 = load ptr, ptr %l237, !tbaa !29
  %t404 = load { i64, [4 x i64] }, ptr %l241
  %t405 = load ptr, ptr %l243, !tbaa !29
  %t406 = load i32, ptr %l245, !tbaa !23
  %t408 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efit(ptr %v0, ptr %v1, ptr %t403, { i64, [4 x i64] } %t404, ptr %t405, i32 %t406, %"compiler/source:Span" %t402)
  store { i64, [4 x i64] } %t408, ptr %l247
  br label %bb76
bb76:
  %t409 = load { i64, [4 x i64] }, ptr %l247
  store { i64, [4 x i64] } %t409, ptr %l13
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/lower:lowering", ptr %t410, i32 0, i32 20
  %t414 = call { i32, %"compiler/lower:pl" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ePop_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %s8, ptr %t412)
  %t415 = extractvalue { i32, %"compiler/lower:pl" } %t414, 1
  %t416 = extractvalue { i32, %"compiler/lower:pl" } %t414, 0
  store i32 %t416, ptr %l252
  %t417 = icmp ne i32 %t416, 0
  br i1 %t417, label %bb78, label %ok.418, !prof !99
ok.418:
  store %"compiler/lower:pl" %t415, ptr %l251
  br label %bb77
bb77:
  %t419 = load %"compiler/lower:pl", ptr %l251
  store %"compiler/lower:pl" %t419, ptr %l248
  br label %bb80
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t420 = getelementptr %"compiler/lower:pl", ptr %l12, i32 0, i32 2
  %t421 = load i64, ptr %t420, !tbaa !24
  %t423 = icmp sge i64 %t421, 0
  br i1 %t423, label %bb81, label %bb82
bb81:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/lower:lowering", ptr %t425, i32 0, i32 10
  %t428 = load i1, ptr %t427, !tbaa !21
  %t430 = xor i1 %t428, true
  br i1 %t430, label %bb83, label %bb84
bb82:
  br label %bb88
bb83:
  store %olang.scope zeroinitializer, ptr %s11
  %t432 = load ptr, ptr %l0, !tbaa !29
  store ptr %t432, ptr %l258, !tbaa !29
  %t433 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t433, ptr %l259
  %t435 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s11, ptr %l259)
  store %"compiler/lower:pl" %t435, ptr %l261
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t436 = load { i64, [4 x i64] }, ptr %l13
  %t437 = load %"compiler/source:Span", ptr %l9
  %t438 = load ptr, ptr %l258, !tbaa !29
  %t439 = load %"compiler/lower:pl", ptr %l261
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epackedWrite(ptr %v0, ptr %s11, ptr %t438, %"compiler/lower:pl" %t439, { i64, [4 x i64] } %t436, %"compiler/source:Span" %t437)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s11)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s8)
  br label %ret
bb88:
  %t442 = load ptr, ptr %l0, !tbaa !29
  store ptr %t442, ptr %l264, !tbaa !29
  %t443 = load ptr, ptr %l10, !tbaa !29
  %t445 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t443)
  store i32 %t445, ptr %l266
  br label %bb89
bb89:
  %t446 = load ptr, ptr %l264, !tbaa !29
  %t447 = load i32, ptr %l266, !tbaa !23
  %t448 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t446, i32 %t447)
  store i1 %t448, ptr %l267
  br label %bb90
bb90:
  %t449 = load i1, ptr %l267, !tbaa !21
  br i1 %t449, label %bb91, label %bb92
bb91:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/lower:lowering", ptr %t450, i32 0, i32 10
  %t453 = load i1, ptr %t452, !tbaa !21
  %t455 = xor i1 %t453, true
  store i1 %t455, ptr %l268, !tbaa !21
  br label %bb93
bb92:
  store i1 false, ptr %l268, !tbaa !21
  br label %bb93
bb93:
  %t457 = load i1, ptr %l268, !tbaa !21
  br i1 %t457, label %bb94, label %bb95
bb94:
  %t458 = load ptr, ptr %l10, !tbaa !29
  %t460 = call i1 @compiler_2ftyped_2ePartOf(ptr %v1, ptr %t458)
  store i1 %t460, ptr %l274
  br label %bb96
bb95:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb97
bb96:
  %t461 = load i1, ptr %l274, !tbaa !21
  %t462 = xor i1 %t461, true
  store i1 %t462, ptr %l272, !tbaa !21
  br label %bb97
bb97:
  %t464 = load i1, ptr %l272, !tbaa !21
  br i1 %t464, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s12
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l276, !tbaa !29
  %t466 = load ptr, ptr %l11, !tbaa !29
  store ptr %t466, ptr %l277, !tbaa !29
  %t467 = load ptr, ptr %l10, !tbaa !29
  %t469 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t467)
  store i32 %t469, ptr %l279
  br label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s13
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load ptr, ptr %l10, !tbaa !29
  %t474 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ereleases(ptr %v0, ptr %v1, ptr %s13, ptr %t470, ptr %t471, i1 true)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t474, ptr %l297
  br label %bb107
bb100:
  %t475 = load ptr, ptr %l276, !tbaa !29
  %t476 = load ptr, ptr %l277, !tbaa !29
  %t477 = load i32, ptr %l279, !tbaa !23
  %t478 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %t475, ptr %t476, i32 %t477)
  store i1 %t478, ptr %l280
  br label %bb101
bb101:
  %t479 = load i1, ptr %l280, !tbaa !21
  store i1 %t479, ptr %l14, !tbaa !21
  %t480 = load ptr, ptr %l0, !tbaa !29
  store ptr %t480, ptr %l281, !tbaa !29
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l282, !tbaa !29
  %t482 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t482, ptr %l283
  %t484 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s12, ptr %l283)
  store %"compiler/lower:pl" %t484, ptr %l285
  br label %bb102
bb102:
  %t485 = load ptr, ptr %l282, !tbaa !29
  %t486 = load %"compiler/lower:pl", ptr %l285
  %t487 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s12, ptr %t485, %"compiler/lower:pl" %t486)
  store %"compiler/mir:Lvalue" %t487, ptr %l286
  br label %bb103
bb103:
  %t488 = load { i64, [4 x i64] }, ptr %l13
  store { i64, [4 x i64] } %t488, ptr %l287
  %t489 = load ptr, ptr %l10, !tbaa !29
  %t491 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t489)
  store i32 %t491, ptr %l289
  br label %bb104
bb104:
  %t492 = load i1, ptr %l14, !tbaa !21
  store i1 %t492, ptr %l290, !tbaa !21
  %t493 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t493, ptr %l291
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load ptr, ptr %l10, !tbaa !29
  %t498 = call { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceStorage(ptr %v0, ptr %v1, ptr %t494, ptr %t495)
  store { i64, [1 x i64] } %t498, ptr %l294
  br label %bb105
bb105:
  %t499 = load ptr, ptr %l281, !tbaa !29
  %t500 = load %"compiler/mir:Lvalue", ptr %l286
  %t501 = load { i64, [4 x i64] }, ptr %l287
  %t502 = load i32, ptr %l289, !tbaa !23
  %t503 = load i1, ptr %l290, !tbaa !21
  %t504 = load %"compiler/source:Span", ptr %l291
  %t505 = load { i64, [1 x i64] }, ptr %l294
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2earrayStore(ptr %v0, ptr %t499, %"compiler/mir:Lvalue" %t500, { i64, [4 x i64] } %t501, i32 %t502, i1 %t503, %"compiler/source:Span" %t504, { i64, [1 x i64] } %t505)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s12)
  br label %bb127
bb107:
  %t506 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l297
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t506, ptr %l15
  %t507 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  store i32 %t507, ptr %l16, !tbaa !23
  %t510 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %s13, ptr %l15)
  store i64 %t510, ptr %l300
  br label %bb108
bb108:
  %t511 = load i64, ptr %l300, !tbaa !24
  %t512 = icmp sgt i64 %t511, 0
  br i1 %t512, label %bb109, label %bb110
bb109:
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t516 = getelementptr %"compiler/lower:lowering", ptr %t514, i32 0, i32 10
  %t517 = load i1, ptr %t516, !tbaa !21
  %t519 = xor i1 %t517, true
  store i1 %t519, ptr %l302, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb111
bb111:
  %t521 = load i1, ptr %l302, !tbaa !21
  br i1 %t521, label %bb112, label %bb113
bb112:
  store %olang.scope zeroinitializer, ptr %s14
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l306, !tbaa !29
  %t523 = load ptr, ptr %l10, !tbaa !29
  %t525 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t523)
  store i32 %t525, ptr %l308
  br label %bb114
bb113:
  br label %bb120
bb114:
  %t526 = load %"compiler/source:Span", ptr %l9
  %t527 = load ptr, ptr %l306, !tbaa !29
  %t528 = load i32, ptr %l308, !tbaa !23
  %t530 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t527, i32 %t528, %"compiler/source:Span" %t526)
  store i32 %t530, ptr %l310
  br label %bb115
bb115:
  %t531 = load i32, ptr %l310, !tbaa !23
  store i32 %t531, ptr %l16, !tbaa !23
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l311, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t533, ptr %l312
  %t534 = load i32, ptr %l16, !tbaa !23
  %t536 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t534)
  store %"compiler/mir:Lvalue" %t536, ptr %l314
  br label %bb116
bb116:
  %t537 = load ptr, ptr %l0, !tbaa !29
  store ptr %t537, ptr %l315, !tbaa !29
  %t538 = load %"compiler/lower:pl", ptr %l12
  store %"compiler/lower:pl" %t538, ptr %l316
  %t540 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s14, ptr %l316)
  store %"compiler/lower:pl" %t540, ptr %l318
  br label %bb117
bb117:
  %t541 = load ptr, ptr %l315, !tbaa !29
  %t542 = load %"compiler/lower:pl", ptr %l318
  %t543 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s14, ptr %t541, %"compiler/lower:pl" %t542)
  store %"compiler/mir:Lvalue" %t543, ptr %l319
  br label %bb118
bb118:
  store { i64, [4 x i64] } zeroinitializer, ptr %t544
  %t545 = getelementptr { i64, [4 x i64] }, ptr %t544, i32 0, i32 0
  store i64 1, ptr %t545
  %t546 = load %"compiler/mir:Lvalue", ptr %l319
  %t547 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t546, 0
  %t548 = getelementptr { i64, [4 x i64] }, ptr %t544, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t547, ptr %t548
  %t549 = load { i64, [4 x i64] }, ptr %t544
  store { i64, [15 x i64] } zeroinitializer, ptr %t550
  %t551 = getelementptr { i64, [15 x i64] }, ptr %t550, i32 0, i32 0
  store i64 0, ptr %t551
  %t553 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t549, 0
  %t554 = getelementptr { i64, [15 x i64] }, ptr %t550, i32 0, i32 1
  store { { i64, [4 x i64] } } %t553, ptr %t554
  %t555 = load { i64, [15 x i64] }, ptr %t550
  store { i64, [21 x i64] } zeroinitializer, ptr %t556
  %t557 = getelementptr { i64, [21 x i64] }, ptr %t556, i32 0, i32 0
  store i64 0, ptr %t557
  %t558 = load %"compiler/source:Span", ptr %l312
  %t559 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t558, 0
  %t560 = load %"compiler/mir:Lvalue", ptr %l314
  %t561 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t559, %"compiler/mir:Lvalue" %t560, 1
  %t563 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t561, { i64, [15 x i64] } %t555, 2
  %t564 = getelementptr { i64, [21 x i64] }, ptr %t556, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t563, ptr %t564
  %t565 = load { i64, [21 x i64] }, ptr %t556
  %t567 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 176, i64 8)
  store { i64, [21 x i64] } %t565, ptr %t567
  %t568 = load ptr, ptr %l311, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s14, ptr %t568, ptr %t567)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s14)
  br label %bb120
bb120:
  %t570 = load ptr, ptr %l0, !tbaa !29
  store ptr %t570, ptr %l324, !tbaa !29
  %t571 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t571, ptr %l325
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t573 = load %"compiler/lower:pl", ptr %l12
  %t576 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %s13, ptr %t572, %"compiler/lower:pl" %t573)
  store %"compiler/mir:Lvalue" %t576, ptr %l328
  br label %bb121
bb121:
  %t577 = load { i64, [4 x i64] }, ptr %l13
  store { i64, [15 x i64] } zeroinitializer, ptr %t578
  %t579 = getelementptr { i64, [15 x i64] }, ptr %t578, i32 0, i32 0
  store i64 0, ptr %t579
  %t581 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t577, 0
  %t582 = getelementptr { i64, [15 x i64] }, ptr %t578, i32 0, i32 1
  store { { i64, [4 x i64] } } %t581, ptr %t582
  %t583 = load { i64, [15 x i64] }, ptr %t578
  store { i64, [21 x i64] } zeroinitializer, ptr %t584
  %t585 = getelementptr { i64, [21 x i64] }, ptr %t584, i32 0, i32 0
  store i64 0, ptr %t585
  %t586 = load %"compiler/source:Span", ptr %l325
  %t587 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t586, 0
  %t588 = load %"compiler/mir:Lvalue", ptr %l328
  %t589 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t587, %"compiler/mir:Lvalue" %t588, 1
  %t591 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t589, { i64, [15 x i64] } %t583, 2
  %t592 = getelementptr { i64, [21 x i64] }, ptr %t584, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t591, ptr %t592
  %t593 = load { i64, [21 x i64] }, ptr %t584
  %t595 = call ptr @__olang_scope_alloc_a(ptr %s13, i64 176, i64 8)
  store { i64, [21 x i64] } %t593, ptr %t595
  %t596 = load ptr, ptr %l324, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s13, ptr %t596, ptr %t595)
  br label %bb122
bb122:
  %t598 = load i32, ptr %l16, !tbaa !23
  %t599 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t602 = icmp ne i32 %t598, %t599
  br i1 %t602, label %bb123, label %bb124
bb123:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load i32, ptr %l16, !tbaa !23
  %t606 = load %"compiler/source:Span", ptr %l9
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %s13, ptr %t604, i32 %t605, ptr %l15, %"compiler/source:Span" %t606)
  br label %bb125
bb124:
  br label %bb126
bb125:
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s13)
  br label %bb127
bb127:
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = getelementptr %"compiler/lower:lowering", ptr %t611, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !29
  %t616 = getelementptr %"compiler/typed:Body", ptr %t614, i32 0, i32 1
  %t617 = load { i64, [2 x i64] }, ptr %t616
  %t619 = extractvalue { i64, [2 x i64] } %t617, 0
  %t620 = icmp eq i64 %t619, 6
  br i1 %t620, label %bb128, label %bb129
bb128:
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = getelementptr %"compiler/lower:lowering", ptr %t622, i32 0, i32 10
  %t625 = load i1, ptr %t624, !tbaa !21
  %t627 = xor i1 %t625, true
  store i1 %t627, ptr %l344, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l344, !tbaa !21
  br label %bb130
bb130:
  %t629 = load i1, ptr %l344, !tbaa !21
  br i1 %t629, label %bb131, label %bb132
bb131:
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t631 = load %"compiler/source:Span", ptr %l9
  %t632 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eglobalHeld(ptr %v0, ptr %v1, ptr %t630, %"compiler/source:Span" %t631, ptr %t632)
  br label %bb133
bb132:
  br label %bb134
bb133:
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s8)
  br label %bb310
bb135:
  %t636 = load ptr, ptr %l1, !tbaa !29
  store ptr %t636, ptr %l351, !tbaa !29
  store i1 false, ptr %l352, !tbaa !21
  %t637 = load ptr, ptr %l351, !tbaa !29
  %t638 = icmp ne ptr %t637, null
  br i1 %t638, label %bb136, label %bb137
bb136:
  %t640 = load ptr, ptr %l351, !tbaa !29
  %t641 = load i64, ptr %t640, !range !{i64 0, i64 17}
  %t643 = icmp eq i64 %t641, 2
  store i1 %t643, ptr %l352, !tbaa !21
  br label %bb137
bb137:
  %t644 = load i1, ptr %l352, !tbaa !21
  br i1 %t644, label %bb138, label %bb139
bb138:
  %t645 = load ptr, ptr %l1, !tbaa !29
  %t647 = getelementptr { i64, [3 x i64] }, ptr %t645, i32 0, i32 1
  %t648 = getelementptr { %"compiler/source:Span", ptr }, ptr %t647, i32 0, i32 0
  %t649 = load %"compiler/source:Span", ptr %t648
  store %"compiler/source:Span" %t649, ptr %l17
  %t651 = load ptr, ptr %l1, !tbaa !29
  %t653 = getelementptr { i64, [3 x i64] }, ptr %t651, i32 0, i32 1
  %t654 = getelementptr { %"compiler/source:Span", ptr }, ptr %t653, i32 0, i32 1
  %t655 = load ptr, ptr %t654
  store ptr %t655, ptr %l18, !tbaa !29
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t658 = load %"compiler/source:Span", ptr %l17
  %t659 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eevalStmt(ptr %v0, ptr %v1, ptr %t657, %"compiler/source:Span" %t658, ptr %t659)
  br label %bb141
bb141:
  br label %bb310
bb142:
  %t663 = load ptr, ptr %l1, !tbaa !29
  store ptr %t663, ptr %l362, !tbaa !29
  store i1 false, ptr %l363, !tbaa !21
  %t664 = load ptr, ptr %l362, !tbaa !29
  %t665 = icmp ne ptr %t664, null
  br i1 %t665, label %bb143, label %bb144
bb143:
  %t667 = load ptr, ptr %l362, !tbaa !29
  %t668 = load i64, ptr %t667, !range !{i64 0, i64 17}
  %t670 = icmp eq i64 %t668, 16
  store i1 %t670, ptr %l363, !tbaa !21
  br label %bb144
bb144:
  %t671 = load i1, ptr %l363, !tbaa !21
  br i1 %t671, label %bb145, label %bb146
bb145:
  %t672 = load ptr, ptr %l1, !tbaa !29
  %t674 = getelementptr { i64, [3 x i64] }, ptr %t672, i32 0, i32 1
  %t675 = getelementptr { %"compiler/source:Span", ptr }, ptr %t674, i32 0, i32 0
  %t676 = load %"compiler/source:Span", ptr %t675
  store %"compiler/source:Span" %t676, ptr %l19
  %t678 = load ptr, ptr %l1, !tbaa !29
  %t680 = getelementptr { i64, [3 x i64] }, ptr %t678, i32 0, i32 1
  %t681 = getelementptr { %"compiler/source:Span", ptr }, ptr %t680, i32 0, i32 1
  %t682 = load ptr, ptr %t681
  store ptr %t682, ptr %l20, !tbaa !29
  br label %bb147
bb146:
  br label %bb152
bb147:
  %t684 = load ptr, ptr %l0, !tbaa !29
  store ptr %t684, ptr %l370, !tbaa !29
  %t685 = load %"compiler/source:Span", ptr %l19
  store %"compiler/source:Span" %t685, ptr %l371
  %t686 = load ptr, ptr %l20, !tbaa !29
  %t688 = icmp eq ptr %t686, null
  br i1 %t688, label %bb148, label %bb149
bb148:
  call void @__olang_check_failed(ptr @olang_loc_42786f36b4c45983_851034772d965f17)
  unreachable
bb149:
  br label %bb150
bb150:
  %t690 = load ptr, ptr %l20, !tbaa !29
  %t691 = load ptr, ptr %l370, !tbaa !29
  %t692 = load %"compiler/source:Span", ptr %l371
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2esuspend(ptr %v0, ptr %v1, ptr %t691, %"compiler/source:Span" %t692, ptr %t690)
  br label %bb151
bb151:
  br label %bb310
bb152:
  %t694 = load ptr, ptr %l1, !tbaa !29
  store ptr %t694, ptr %l375, !tbaa !29
  store i1 false, ptr %l376, !tbaa !21
  %t695 = load ptr, ptr %l375, !tbaa !29
  %t696 = icmp ne ptr %t695, null
  br i1 %t696, label %bb153, label %bb154
bb153:
  %t698 = load ptr, ptr %l375, !tbaa !29
  %t699 = load i64, ptr %t698, !range !{i64 0, i64 17}
  %t701 = icmp eq i64 %t699, 3
  store i1 %t701, ptr %l376, !tbaa !21
  br label %bb154
bb154:
  %t702 = load i1, ptr %l376, !tbaa !21
  br i1 %t702, label %bb155, label %bb156
bb155:
  %t703 = load ptr, ptr %l1, !tbaa !29
  %t705 = getelementptr { i64, [3 x i64] }, ptr %t703, i32 0, i32 1
  %t706 = getelementptr { %"compiler/source:Span", ptr }, ptr %t705, i32 0, i32 0
  %t707 = load %"compiler/source:Span", ptr %t706
  store %"compiler/source:Span" %t707, ptr %l21
  %t709 = load ptr, ptr %l1, !tbaa !29
  %t711 = getelementptr { i64, [3 x i64] }, ptr %t709, i32 0, i32 1
  %t712 = getelementptr { %"compiler/source:Span", ptr }, ptr %t711, i32 0, i32 1
  %t713 = load ptr, ptr %t712
  store ptr %t713, ptr %l22, !tbaa !29
  br label %bb157
bb156:
  br label %bb159
bb157:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t716 = load %"compiler/source:Span", ptr %l21
  %t717 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eifStmt(ptr %v0, ptr %v1, ptr %t715, %"compiler/source:Span" %t716, ptr %t717)
  br label %bb158
bb158:
  br label %bb310
bb159:
  %t721 = load ptr, ptr %l1, !tbaa !29
  store ptr %t721, ptr %l386, !tbaa !29
  store i1 false, ptr %l387, !tbaa !21
  %t722 = load ptr, ptr %l386, !tbaa !29
  %t723 = icmp ne ptr %t722, null
  br i1 %t723, label %bb160, label %bb161
bb160:
  %t725 = load ptr, ptr %l386, !tbaa !29
  %t726 = load i64, ptr %t725, !range !{i64 0, i64 17}
  %t728 = icmp eq i64 %t726, 4
  store i1 %t728, ptr %l387, !tbaa !21
  br label %bb161
bb161:
  %t729 = load i1, ptr %l387, !tbaa !21
  br i1 %t729, label %bb162, label %bb163
bb162:
  %t730 = load ptr, ptr %l1, !tbaa !29
  %t732 = getelementptr { i64, [3 x i64] }, ptr %t730, i32 0, i32 1
  %t733 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t732, i32 0, i32 0
  %t734 = load %"compiler/source:Span", ptr %t733
  store %"compiler/source:Span" %t734, ptr %l23
  %t736 = load ptr, ptr %l1, !tbaa !29
  %t738 = getelementptr { i64, [3 x i64] }, ptr %t736, i32 0, i32 1
  %t739 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t738, i32 0, i32 1
  %t740 = load ptr, ptr %t739
  store ptr %t740, ptr %l24, !tbaa !29
  %t742 = load ptr, ptr %l1, !tbaa !29
  %t744 = getelementptr { i64, [3 x i64] }, ptr %t742, i32 0, i32 1
  %t745 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t744, i32 0, i32 2
  %t746 = load ptr, ptr %t745
  store ptr %t746, ptr %l25, !tbaa !29
  br label %bb164
bb163:
  br label %bb166
bb164:
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t749 = load %"compiler/source:Span", ptr %l23
  %t750 = load ptr, ptr %l24, !tbaa !29
  %t751 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %t748, %"compiler/source:Span" %t749, ptr %t750, ptr %t751)
  br label %bb165
bb165:
  br label %bb310
bb166:
  %t756 = load ptr, ptr %l1, !tbaa !29
  store ptr %t756, ptr %l400, !tbaa !29
  store i1 false, ptr %l401, !tbaa !21
  %t757 = load ptr, ptr %l400, !tbaa !29
  %t758 = icmp ne ptr %t757, null
  br i1 %t758, label %bb167, label %bb168
bb167:
  %t760 = load ptr, ptr %l400, !tbaa !29
  %t761 = load i64, ptr %t760, !range !{i64 0, i64 17}
  %t763 = icmp eq i64 %t761, 5
  store i1 %t763, ptr %l401, !tbaa !21
  br label %bb168
bb168:
  %t764 = load i1, ptr %l401, !tbaa !21
  br i1 %t764, label %bb169, label %bb170
bb169:
  %t765 = load ptr, ptr %l1, !tbaa !29
  %t767 = getelementptr { i64, [3 x i64] }, ptr %t765, i32 0, i32 1
  %t768 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t767, i32 0, i32 0
  %t769 = load %"compiler/source:Span", ptr %t768
  store %"compiler/source:Span" %t769, ptr %l26
  %t771 = load ptr, ptr %l1, !tbaa !29
  %t773 = getelementptr { i64, [3 x i64] }, ptr %t771, i32 0, i32 1
  %t774 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t773, i32 0, i32 1
  %t775 = load i32, ptr %t774, !range !{i32 0, i32 2}
  store i32 %t775, ptr %l27
  %t777 = load ptr, ptr %l1, !tbaa !29
  %t779 = getelementptr { i64, [3 x i64] }, ptr %t777, i32 0, i32 1
  %t780 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t779, i32 0, i32 2
  %t781 = load i32, ptr %t780
  store i32 %t781, ptr %l28, !tbaa !23
  br label %bb171
bb170:
  br label %bb173
bb171:
  %t783 = load ptr, ptr %l0, !tbaa !29
  %t784 = load %"compiler/source:Span", ptr %l26
  %t785 = load i32, ptr %l27, !range !{i32 0, i32 2}
  %t786 = load i32, ptr %l28, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejump(ptr %v0, ptr %t783, %"compiler/source:Span" %t784, i32 %t785, i32 %t786)
  br label %bb172
bb172:
  br label %bb310
bb173:
  %t791 = load ptr, ptr %l1, !tbaa !29
  store ptr %t791, ptr %l414, !tbaa !29
  store i1 false, ptr %l415, !tbaa !21
  %t792 = load ptr, ptr %l414, !tbaa !29
  %t793 = icmp ne ptr %t792, null
  br i1 %t793, label %bb174, label %bb175
bb174:
  %t795 = load ptr, ptr %l414, !tbaa !29
  %t796 = load i64, ptr %t795, !range !{i64 0, i64 17}
  %t798 = icmp eq i64 %t796, 6
  store i1 %t798, ptr %l415, !tbaa !21
  br label %bb175
bb175:
  %t799 = load i1, ptr %l415, !tbaa !21
  br i1 %t799, label %bb176, label %bb177
bb176:
  %t800 = load ptr, ptr %l1, !tbaa !29
  %t802 = getelementptr { i64, [3 x i64] }, ptr %t800, i32 0, i32 1
  %t803 = getelementptr { %"compiler/source:Span", ptr }, ptr %t802, i32 0, i32 0
  %t804 = load %"compiler/source:Span", ptr %t803
  store %"compiler/source:Span" %t804, ptr %l29
  %t806 = load ptr, ptr %l1, !tbaa !29
  %t808 = getelementptr { i64, [3 x i64] }, ptr %t806, i32 0, i32 1
  %t809 = getelementptr { %"compiler/source:Span", ptr }, ptr %t808, i32 0, i32 1
  %t810 = load ptr, ptr %t809
  store ptr %t810, ptr %l30, !tbaa !29
  br label %bb178
bb177:
  br label %bb180
bb178:
  %t812 = load ptr, ptr %l0, !tbaa !29
  %t813 = load %"compiler/source:Span", ptr %l29
  %t814 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eret(ptr %v0, ptr %v1, ptr %t812, %"compiler/source:Span" %t813, ptr %t814)
  br label %bb179
bb179:
  br label %bb310
bb180:
  %t818 = load ptr, ptr %l1, !tbaa !29
  store ptr %t818, ptr %l425, !tbaa !29
  store i1 false, ptr %l426, !tbaa !21
  %t819 = load ptr, ptr %l425, !tbaa !29
  %t820 = icmp ne ptr %t819, null
  br i1 %t820, label %bb181, label %bb182
bb181:
  %t822 = load ptr, ptr %l425, !tbaa !29
  %t823 = load i64, ptr %t822, !range !{i64 0, i64 17}
  %t825 = icmp eq i64 %t823, 7
  store i1 %t825, ptr %l426, !tbaa !21
  br label %bb182
bb182:
  %t826 = load i1, ptr %l426, !tbaa !21
  br i1 %t826, label %bb183, label %bb184
bb183:
  %t827 = load ptr, ptr %l1, !tbaa !29
  %t829 = getelementptr { i64, [3 x i64] }, ptr %t827, i32 0, i32 1
  %t830 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t829, i32 0, i32 0
  %t831 = load %"compiler/source:Span", ptr %t830
  store %"compiler/source:Span" %t831, ptr %l31
  %t833 = load ptr, ptr %l1, !tbaa !29
  %t835 = getelementptr { i64, [3 x i64] }, ptr %t833, i32 0, i32 1
  %t836 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t835, i32 0, i32 1
  %t837 = load i32, ptr %t836
  store i32 %t837, ptr %l32, !tbaa !23
  %t839 = load ptr, ptr %l1, !tbaa !29
  %t841 = getelementptr { i64, [3 x i64] }, ptr %t839, i32 0, i32 1
  %t842 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t841, i32 0, i32 2
  %t843 = load i64, ptr %t842
  store i64 %t843, ptr %l33, !tbaa !24
  br label %bb185
bb184:
  br label %bb192
bb185:
  %t845 = load ptr, ptr %l0, !tbaa !29
  %t847 = getelementptr %"compiler/lower:lowering", ptr %t845, i32 0, i32 2
  %t848 = load ptr, ptr %t847, !tbaa !29
  store ptr %t848, ptr %l436, !tbaa !29
  %t849 = load ptr, ptr %l0, !tbaa !29
  %t851 = getelementptr %"compiler/lower:lowering", ptr %t849, i32 0, i32 2
  %t852 = load ptr, ptr %t851, !tbaa !29
  %t853 = load ptr, ptr %l0, !tbaa !29
  %t855 = getelementptr %"compiler/lower:lowering", ptr %t853, i32 0, i32 1
  %t856 = load ptr, ptr %t855, !tbaa !29
  %t858 = getelementptr %"compiler/typed:Body", ptr %t856, i32 0, i32 2
  %t859 = load i32, ptr %t858, !tbaa !23
  %t862 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t852, i32 %t859)
  store i32 %t862, ptr %l442
  br label %bb186
bb186:
  %t863 = load i32, ptr %l32, !tbaa !23
  %t864 = load i64, ptr %l33, !tbaa !24
  %t865 = load ptr, ptr %l436, !tbaa !29
  %t866 = load i32, ptr %l442, !tbaa !23
  %t869 = call i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %t865, i32 %t866, i32 %t863, i64 %t864)
  store i64 %t869, ptr %l445
  br label %bb187
bb187:
  %t870 = load i64, ptr %l445, !tbaa !24
  store i64 %t870, ptr %l34, !tbaa !24
  %t871 = load ptr, ptr %l0, !tbaa !29
  store ptr %t871, ptr %l446, !tbaa !29
  %t872 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t872, ptr %l447
  %t873 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t874 = load i64, ptr %l34, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t875
  %t876 = getelementptr { i64, [4 x i64] }, ptr %t875, i32 0, i32 0
  store i64 2, ptr %t876
  %t878 = insertvalue { i32, i64 } undef, i32 %t873, 0
  %t880 = insertvalue { i32, i64 } %t878, i64 %t874, 1
  %t881 = getelementptr { i64, [4 x i64] }, ptr %t875, i32 0, i32 1
  store { i32, i64 } %t880, ptr %t881
  %t882 = load { i64, [4 x i64] }, ptr %t875
  store { i64, [4 x i64] } %t882, ptr %l450
  %t883 = load ptr, ptr %l0, !tbaa !29
  %t885 = getelementptr %"compiler/lower:lowering", ptr %t883, i32 0, i32 3
  %t886 = getelementptr %"compiler/mir:Fn", ptr %t885, i32 0, i32 25
  %t887 = load i1, ptr %t886, !tbaa !21
  br i1 %t887, label %bb188, label %bb189
bb188:
  %t889 = load i64, ptr %l34, !tbaa !24
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t892 = getelementptr %"compiler/lower:lowering", ptr %t890, i32 0, i32 3
  %t893 = getelementptr %"compiler/mir:Fn", ptr %t892, i32 0, i32 26
  %t894 = load i64, ptr %t893, !tbaa !24
  %t897 = icmp eq i64 %t889, %t894
  store i1 %t897, ptr %l453, !tbaa !21
  br label %bb190
bb189:
  store i1 false, ptr %l453, !tbaa !21
  br label %bb190
bb190:
  %t899 = load i1, ptr %l453, !tbaa !21
  %t900 = xor i1 %t899, true
  %t901 = load ptr, ptr %l446, !tbaa !29
  %t902 = load %"compiler/source:Span", ptr %l447
  %t903 = load { i64, [4 x i64] }, ptr %l450
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %t901, %"compiler/source:Span" %t902, { i64, [4 x i64] } %t903, i1 %t900)
  br label %bb191
bb191:
  br label %bb310
bb192:
  %t905 = load ptr, ptr %l1, !tbaa !29
  store ptr %t905, ptr %l459, !tbaa !29
  store i1 false, ptr %l460, !tbaa !21
  %t906 = load ptr, ptr %l459, !tbaa !29
  %t907 = icmp ne ptr %t906, null
  br i1 %t907, label %bb193, label %bb194
bb193:
  %t909 = load ptr, ptr %l459, !tbaa !29
  %t910 = load i64, ptr %t909, !range !{i64 0, i64 17}
  %t912 = icmp eq i64 %t910, 8
  store i1 %t912, ptr %l460, !tbaa !21
  br label %bb194
bb194:
  %t913 = load i1, ptr %l460, !tbaa !21
  br i1 %t913, label %bb195, label %bb196
bb195:
  %t914 = load ptr, ptr %l1, !tbaa !29
  %t916 = getelementptr { i64, [3 x i64] }, ptr %t914, i32 0, i32 1
  %t917 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t916, i32 0, i32 0
  %t918 = load %"compiler/source:Span", ptr %t917
  store %"compiler/source:Span" %t918, ptr %l35
  %t920 = load ptr, ptr %l1, !tbaa !29
  %t922 = getelementptr { i64, [3 x i64] }, ptr %t920, i32 0, i32 1
  %t923 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t922, i32 0, i32 1
  %t924 = load ptr, ptr %t923
  store ptr %t924, ptr %l36, !tbaa !29
  %t926 = load ptr, ptr %l1, !tbaa !29
  %t928 = getelementptr { i64, [3 x i64] }, ptr %t926, i32 0, i32 1
  %t929 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t928, i32 0, i32 2
  %t930 = load i32, ptr %t929
  store i32 %t930, ptr %l37, !tbaa !23
  br label %bb197
bb196:
  br label %bb231
bb197:
  store %olang.scope zeroinitializer, ptr %s24
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t933 = load ptr, ptr %l36, !tbaa !29
  %t937 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t932, ptr %t933)
  store { i64, [4 x i64] } %t937, ptr %l472
  br label %bb198
bb198:
  %t938 = load { i64, [4 x i64] }, ptr %l472
  store { i64, [4 x i64] } %t938, ptr %l38
  %t939 = load ptr, ptr %l0, !tbaa !29
  %t941 = getelementptr %"compiler/lower:lowering", ptr %t939, i32 0, i32 10
  %t942 = load i1, ptr %t941, !tbaa !21
  %t944 = xor i1 %t942, true
  br i1 %t944, label %bb199, label %bb200
bb199:
  store %olang.scope zeroinitializer, ptr %s25
  %t946 = load ptr, ptr %l0, !tbaa !29
  store ptr %t946, ptr %l476, !tbaa !29
  %t947 = load { i64, [4 x i64] }, ptr %l38
  store { i64, [4 x i64] } %t947, ptr %l477
  %t948 = load ptr, ptr %l36, !tbaa !29
  %t950 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t948)
  store i32 %t950, ptr %l479
  br label %bb201
bb200:
  br label %bb215
bb201:
  %t951 = load %"compiler/source:Span", ptr %l35
  %t952 = load ptr, ptr %l476, !tbaa !29
  %t953 = load { i64, [4 x i64] }, ptr %l477
  %t954 = load i32, ptr %l479, !tbaa !23
  %t956 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t952, { i64, [4 x i64] } %t953, i32 %t954, %"compiler/source:Span" %t951)
  store i32 %t956, ptr %l481
  br label %bb202
bb202:
  %t957 = load i32, ptr %l481, !tbaa !23
  store i32 %t957, ptr %l39, !tbaa !23
  %t958 = load ptr, ptr %l0, !tbaa !29
  store ptr %t958, ptr %l482, !tbaa !29
  %t959 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t959, ptr %l483, !tbaa !23
  %t960 = load ptr, ptr %l0, !tbaa !29
  store ptr %t960, ptr %l484, !tbaa !29
  %t961 = load i32, ptr %l39, !tbaa !23
  store i32 %t961, ptr %l485, !tbaa !23
  %t962 = load ptr, ptr %l36, !tbaa !29
  %t964 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t962)
  store i32 %t964, ptr %l487
  br label %bb203
bb203:
  %t965 = load ptr, ptr %l484, !tbaa !29
  %t966 = load i32, ptr %l485, !tbaa !23
  %t967 = load i32, ptr %l487, !tbaa !23
  %t968 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %t965, i32 %t966, i32 %t967)
  store { i64, [4 x i64] } %t968, ptr %l488
  br label %bb204
bb204:
  store { i64, [15 x i64] } zeroinitializer, ptr %t969
  %t970 = getelementptr { i64, [15 x i64] }, ptr %t969, i32 0, i32 0
  store i64 0, ptr %t970
  %t971 = load { i64, [4 x i64] }, ptr %l488
  %t972 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t971, 0
  %t973 = getelementptr { i64, [15 x i64] }, ptr %t969, i32 0, i32 1
  store { { i64, [4 x i64] } } %t972, ptr %t973
  %t974 = load { i64, [15 x i64] }, ptr %t969
  %t975 = load %"compiler/source:Span", ptr %l35
  %t976 = load ptr, ptr %l482, !tbaa !29
  %t977 = load i32, ptr %l483, !tbaa !23
  %t980 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t976, i32 %t977, { i64, [15 x i64] } %t974, %"compiler/source:Span" %t975)
  store { i64, [4 x i64] } %t980, ptr %l491
  br label %bb205
bb205:
  %t981 = load { i64, [4 x i64] }, ptr %l491
  store { i64, [4 x i64] } %t981, ptr %l40
  %t982 = load ptr, ptr %l0, !tbaa !29
  %t983 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t984 = load { i64, [4 x i64] }, ptr %l40
  %t985 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t986
  %t987 = getelementptr { i64, [4 x i64] }, ptr %t986, i32 0, i32 0
  store i64 2, ptr %t987
  %t989 = insertvalue { i32, i64 } undef, i32 %t985, 0
  %t990 = insertvalue { i32, i64 } %t989, i64 0, 1
  %t991 = getelementptr { i64, [4 x i64] }, ptr %t986, i32 0, i32 1
  store { i32, i64 } %t990, ptr %t991
  %t992 = load { i64, [4 x i64] }, ptr %t986
  %t993 = mul i64 2, 40
  %t994 = call ptr @__olang_scope_alloc_zeroed(ptr %s25, i64 %t993)
  %t995 = insertvalue { i64, ptr } undef, i64 2, 0
  %t996 = insertvalue { i64, ptr } %t995, ptr %t994, 1
  store { i64, ptr } %t996, ptr %l498, !tbaa !27
  %t998 = getelementptr { i64, ptr }, ptr %l498, i32 0, i32 1
  %t999 = load ptr, ptr %t998, !tbaa !27
  %t1000 = getelementptr { i64, [4 x i64] }, ptr %t999, i64 0
  store { i64, [4 x i64] } %t984, ptr %t1000
  %t1002 = getelementptr { i64, ptr }, ptr %l498, i32 0, i32 1
  %t1003 = load ptr, ptr %t1002, !tbaa !27
  %t1004 = getelementptr { i64, [4 x i64] }, ptr %t1003, i64 1
  store { i64, [4 x i64] } %t992, ptr %t1004
  %t1005 = load %"compiler/source:Span", ptr %l35
  %t1009 = load { i64, ptr }, ptr %l498, !tbaa !27
  %t1011 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %s25, ptr %t982, i32 14, i32 %t983, { i64, ptr } %t1009, %"compiler/source:Span" %t1005)
  store { i64, [4 x i64] } %t1011, ptr %l500
  br label %bb206
bb206:
  %t1012 = load { i64, [4 x i64] }, ptr %l500
  store { i64, [4 x i64] } %t1012, ptr %l41
  %t1013 = load ptr, ptr %l0, !tbaa !29
  %t1015 = getelementptr %"compiler/lower:lowering", ptr %t1013, i32 0, i32 3
  %t1017 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t1015)
  store i32 %t1017, ptr %l503
  br label %bb207
bb207:
  %t1018 = load i32, ptr %l503, !tbaa !23
  store i32 %t1018, ptr %l42, !tbaa !23
  %t1019 = load ptr, ptr %l0, !tbaa !29
  %t1021 = getelementptr %"compiler/lower:lowering", ptr %t1019, i32 0, i32 3
  %t1023 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %t1021)
  store i32 %t1023, ptr %l506
  br label %bb208
bb208:
  %t1024 = load i32, ptr %l506, !tbaa !23
  store i32 %t1024, ptr %l43, !tbaa !23
  %t1025 = load ptr, ptr %l0, !tbaa !29
  %t1026 = load { i64, [4 x i64] }, ptr %l41
  %t1027 = load i32, ptr %l42, !tbaa !23
  %t1028 = load i32, ptr %l43, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t1029
  %t1030 = getelementptr { i64, [8 x i64] }, ptr %t1029, i32 0, i32 0
  store i64 2, ptr %t1030
  %t1032 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t1026, 0
  %t1034 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t1032, i32 %t1027, 1
  %t1036 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t1034, i32 %t1028, 2
  %t1037 = getelementptr { i64, [8 x i64] }, ptr %t1029, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t1036, ptr %t1037
  %t1038 = load { i64, [8 x i64] }, ptr %t1029
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t1025, { i64, [8 x i64] } %t1038)
  br label %bb209
bb209:
  %t1041 = load ptr, ptr %l0, !tbaa !29
  %t1042 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t1041, i32 %t1042)
  br label %bb210
bb210:
  %t1045 = load ptr, ptr %l0, !tbaa !29
  %t1046 = load %"compiler/source:Span", ptr %l35
  store { i64, [4 x i64] } zeroinitializer, ptr %t1047
  %t1048 = getelementptr { i64, [4 x i64] }, ptr %t1047, i32 0, i32 0
  store i64 0, ptr %t1048
  %t1049 = load { i64, [4 x i64] }, ptr %t1047
  store { i64, [8 x i64] } zeroinitializer, ptr %t1050
  %t1051 = getelementptr { i64, [8 x i64] }, ptr %t1050, i32 0, i32 0
  store i64 9, ptr %t1051
  %t1053 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t1046, 0
  %t1055 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t1053, i32 5, 1
  %t1057 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t1055, { i64, [4 x i64] } %t1049, 2
  %t1058 = getelementptr { i64, [8 x i64] }, ptr %t1050, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t1057, ptr %t1058
  %t1059 = load { i64, [8 x i64] }, ptr %t1050
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t1045, { i64, [8 x i64] } %t1059)
  br label %bb211
bb211:
  %t1062 = load ptr, ptr %l0, !tbaa !29
  %t1063 = load i32, ptr %l42, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %t1062, i32 %t1063)
  br label %bb212
bb212:
  %t1066 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1066, ptr %l521, !tbaa !29
  %t1067 = load i32, ptr %l39, !tbaa !23
  store i32 %t1067, ptr %l522, !tbaa !23
  %t1068 = load ptr, ptr %l36, !tbaa !29
  %t1070 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1068)
  store i32 %t1070, ptr %l524
  br label %bb213
bb213:
  %t1071 = load { i64, [4 x i64] }, ptr %l40
  %t1072 = load %"compiler/source:Span", ptr %l35
  %t1073 = load ptr, ptr %l521, !tbaa !29
  %t1074 = load i32, ptr %l522, !tbaa !23
  %t1075 = load i32, ptr %l524, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2epushHeld(ptr %v0, ptr %t1073, i32 %t1074, i32 %t1075, { i64, [4 x i64] } %t1071, %"compiler/source:Span" %t1072)
  br label %bb214
bb214:
  %t1078 = load { i64, [4 x i64] }, ptr %l40
  store { i64, [4 x i64] } %t1078, ptr %l38
  call void @__olang_scope_close(ptr %s25)
  br label %bb215
bb215:
  %t1080 = load ptr, ptr %l0, !tbaa !29
  %t1082 = getelementptr %"compiler/lower:lowering", ptr %t1080, i32 0, i32 10
  %t1083 = load i1, ptr %t1082, !tbaa !21
  %t1085 = xor i1 %t1083, true
  br i1 %t1085, label %bb216, label %bb217
bb216:
  %t1087 = load ptr, ptr %l0, !tbaa !29
  %t1089 = getelementptr %"compiler/lower:lowering", ptr %t1087, i32 0, i32 2
  %t1090 = load ptr, ptr %t1089, !tbaa !29
  store ptr %t1090, ptr %l533, !tbaa !29
  %t1091 = load ptr, ptr %l0, !tbaa !29
  %t1093 = getelementptr %"compiler/lower:lowering", ptr %t1091, i32 0, i32 2
  %t1094 = load ptr, ptr %t1093, !tbaa !29
  %t1095 = load ptr, ptr %l0, !tbaa !29
  %t1097 = getelementptr %"compiler/lower:lowering", ptr %t1095, i32 0, i32 1
  %t1098 = load ptr, ptr %t1097, !tbaa !29
  %t1100 = getelementptr %"compiler/typed:Body", ptr %t1098, i32 0, i32 2
  %t1101 = load i32, ptr %t1100, !tbaa !23
  %t1104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1094, i32 %t1101)
  store i32 %t1104, ptr %l539
  br label %bb218
bb217:
  store i1 false, ptr %l531, !tbaa !21
  br label %bb220
bb218:
  %t1105 = load ptr, ptr %l533, !tbaa !29
  %t1106 = load i32, ptr %l539, !tbaa !23
  %t1107 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s24, ptr %t1105, i32 %t1106)
  store { i64, ptr } %t1107, ptr %l540
  br label %bb219
bb219:
  %t1108 = load { i64, ptr }, ptr %l540, !tbaa !27
  %t1109 = extractvalue { i64, ptr } %t1108, 0
  %t1111 = icmp sgt i64 %t1109, 0
  store i1 %t1111, ptr %l531, !tbaa !21
  br label %bb220
bb220:
  %t1113 = load i1, ptr %l531, !tbaa !21
  br i1 %t1113, label %bb221, label %bb222
bb221:
  %t1114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1114, ptr %l543, !tbaa !29
  %t1115 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t1115, ptr %l544
  %t1116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1116, ptr %l545, !tbaa !29
  %t1117 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store i32 %t1117, ptr %l546, !tbaa !23
  %t1118 = load { i64, [4 x i64] }, ptr %l38
  store { i64, [4 x i64] } %t1118, ptr %l547
  %t1119 = load i32, ptr %l37, !tbaa !23
  store i32 %t1119, ptr %l548, !tbaa !23
  %t1120 = load ptr, ptr %l0, !tbaa !29
  %t1122 = getelementptr %"compiler/lower:lowering", ptr %t1120, i32 0, i32 2
  %t1123 = load ptr, ptr %t1122, !tbaa !29
  %t1124 = load ptr, ptr %l0, !tbaa !29
  %t1126 = getelementptr %"compiler/lower:lowering", ptr %t1124, i32 0, i32 1
  %t1127 = load ptr, ptr %t1126, !tbaa !29
  %t1129 = getelementptr %"compiler/typed:Body", ptr %t1127, i32 0, i32 2
  %t1130 = load i32, ptr %t1129, !tbaa !23
  %t1133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1123, i32 %t1130)
  store i32 %t1133, ptr %l554
  br label %bb223
bb222:
  %t1134 = load ptr, ptr %l0, !tbaa !29
  %t1136 = getelementptr %"compiler/lower:lowering", ptr %t1134, i32 0, i32 10
  %t1137 = load i1, ptr %t1136, !tbaa !21
  %t1139 = xor i1 %t1137, true
  br i1 %t1139, label %bb226, label %bb227
bb223:
  store { i64, [15 x i64] } zeroinitializer, ptr %t1141
  %t1142 = getelementptr { i64, [15 x i64] }, ptr %t1141, i32 0, i32 0
  store i64 11, ptr %t1142
  %t1143 = load { i64, [4 x i64] }, ptr %l547
  %t1144 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t1143, 0
  %t1145 = load i32, ptr %l548, !tbaa !23
  %t1146 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t1144, i32 %t1145, 1
  %t1147 = load i32, ptr %l554, !tbaa !23
  %t1148 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t1146, i32 %t1147, 2
  %t1149 = getelementptr { i64, [15 x i64] }, ptr %t1141, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t1148, ptr %t1149
  %t1150 = load { i64, [15 x i64] }, ptr %t1141
  %t1151 = load %"compiler/source:Span", ptr %l35
  %t1152 = load ptr, ptr %l545, !tbaa !29
  %t1153 = load i32, ptr %l546, !tbaa !23
  %t1156 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t1152, i32 %t1153, { i64, [15 x i64] } %t1150, %"compiler/source:Span" %t1151)
  store { i64, [4 x i64] } %t1156, ptr %l557
  br label %bb224
bb224:
  %t1157 = load ptr, ptr %l543, !tbaa !29
  %t1158 = load %"compiler/source:Span", ptr %l544
  %t1159 = load { i64, [4 x i64] }, ptr %l557
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %t1157, %"compiler/source:Span" %t1158, { i64, [4 x i64] } %t1159, i1 true)
  br label %bb225
bb225:
  br label %bb230
bb226:
  %t1160 = load ptr, ptr %l0, !tbaa !29
  %t1161 = load %"compiler/source:Span", ptr %l35
  %t1162 = load { i64, [4 x i64] }, ptr %l38
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eraise(ptr %v0, ptr %t1160, %"compiler/source:Span" %t1161, { i64, [4 x i64] } %t1162, i1 true)
  br label %bb228
bb227:
  br label %bb229
bb228:
  br label %bb229
bb229:
  br label %bb230
bb230:
  call void @__olang_scope_close(ptr %s24)
  br label %bb310
bb231:
  %t1166 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1166, ptr %l564, !tbaa !29
  store i1 false, ptr %l565, !tbaa !21
  %t1167 = load ptr, ptr %l564, !tbaa !29
  %t1168 = icmp ne ptr %t1167, null
  br i1 %t1168, label %bb232, label %bb233
bb232:
  %t1170 = load ptr, ptr %l564, !tbaa !29
  %t1171 = load i64, ptr %t1170, !range !{i64 0, i64 17}
  %t1173 = icmp eq i64 %t1171, 9
  store i1 %t1173, ptr %l565, !tbaa !21
  br label %bb233
bb233:
  %t1174 = load i1, ptr %l565, !tbaa !21
  br i1 %t1174, label %bb234, label %bb235
bb234:
  %t1175 = load ptr, ptr %l1, !tbaa !29
  %t1177 = getelementptr { i64, [3 x i64] }, ptr %t1175, i32 0, i32 1
  %t1178 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1177, i32 0, i32 0
  %t1179 = load %"compiler/source:Span", ptr %t1178
  store %"compiler/source:Span" %t1179, ptr %l44
  %t1181 = load ptr, ptr %l1, !tbaa !29
  %t1183 = getelementptr { i64, [3 x i64] }, ptr %t1181, i32 0, i32 1
  %t1184 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1183, i32 0, i32 1
  %t1185 = load i32, ptr %t1184, !range !{i32 0, i32 2}
  store i32 %t1185, ptr %l45
  %t1187 = load ptr, ptr %l1, !tbaa !29
  %t1189 = getelementptr { i64, [3 x i64] }, ptr %t1187, i32 0, i32 1
  %t1190 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1189, i32 0, i32 2
  %t1191 = load ptr, ptr %t1190
  store ptr %t1191, ptr %l46, !tbaa !29
  br label %bb236
bb235:
  br label %bb248
bb236:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1193
  %t1194 = getelementptr { i64, [4 x i64] }, ptr %t1193, i32 0, i32 0
  store i64 0, ptr %t1194
  %t1195 = load { i64, [4 x i64] }, ptr %t1193
  store { i64, [4 x i64] } %t1195, ptr %l47
  %t1197 = load ptr, ptr %l46, !tbaa !29
  %t1199 = icmp eq ptr %t1197, null
  %t1201 = xor i1 %t1199, true
  br i1 %t1201, label %bb237, label %bb238
bb237:
  %t1203 = load ptr, ptr %l0, !tbaa !29
  %t1204 = load ptr, ptr %l46, !tbaa !29
  %t1208 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %t1203, ptr %t1204)
  store { i64, [4 x i64] } %t1208, ptr %l581
  br label %bb239
bb238:
  br label %bb240
bb239:
  %t1209 = load { i64, [4 x i64] }, ptr %l581
  store { i64, [4 x i64] } %t1209, ptr %l47
  br label %bb240
bb240:
  %t1210 = load i32, ptr %l45, !range !{i32 0, i32 2}
  %t1212 = trunc i64 1 to i32
  %t1213 = icmp eq i32 %t1210, %t1212
  br i1 %t1213, label %bb241, label %bb242
bb241:
  store i32 4, ptr %l584
  br label %bb243
bb242:
  store i32 3, ptr %l584
  br label %bb243
bb243:
  %t1217 = load i32, ptr %l584, !range !{i32 0, i32 16}
  store i32 %t1217, ptr %l48
  %t1218 = load ptr, ptr %l0, !tbaa !29
  %t1220 = getelementptr %"compiler/lower:lowering", ptr %t1218, i32 0, i32 10
  %t1221 = load i1, ptr %t1220, !tbaa !21
  %t1223 = xor i1 %t1221, true
  br i1 %t1223, label %bb244, label %bb245
bb244:
  %t1225 = load ptr, ptr %l0, !tbaa !29
  %t1226 = load %"compiler/source:Span", ptr %l44
  %t1227 = load i32, ptr %l48, !range !{i32 0, i32 16}
  %t1228 = load { i64, [4 x i64] }, ptr %l47
  store { i64, [8 x i64] } zeroinitializer, ptr %t1229
  %t1230 = getelementptr { i64, [8 x i64] }, ptr %t1229, i32 0, i32 0
  store i64 9, ptr %t1230
  %t1232 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } undef, %"compiler/source:Span" %t1226, 0
  %t1234 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t1232, i32 %t1227, 1
  %t1236 = insertvalue { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t1234, { i64, [4 x i64] } %t1228, 2
  %t1237 = getelementptr { i64, [8 x i64] }, ptr %t1229, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, [4 x i64] } } %t1236, ptr %t1237
  %t1238 = load { i64, [8 x i64] }, ptr %t1229
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eend(ptr %v0, ptr %t1225, { i64, [8 x i64] } %t1238)
  br label %bb246
bb245:
  br label %bb247
bb246:
  br label %bb247
bb247:
  br label %bb310
bb248:
  %t1241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1241, ptr %l595, !tbaa !29
  store i1 false, ptr %l596, !tbaa !21
  %t1242 = load ptr, ptr %l595, !tbaa !29
  %t1243 = icmp ne ptr %t1242, null
  br i1 %t1243, label %bb249, label %bb250
bb249:
  %t1245 = load ptr, ptr %l595, !tbaa !29
  %t1246 = load i64, ptr %t1245, !range !{i64 0, i64 17}
  %t1248 = icmp eq i64 %t1246, 10
  store i1 %t1248, ptr %l596, !tbaa !21
  br label %bb250
bb250:
  %t1249 = load i1, ptr %l596, !tbaa !21
  br i1 %t1249, label %bb251, label %bb252
bb251:
  %t1250 = load ptr, ptr %l1, !tbaa !29
  %t1252 = getelementptr { i64, [3 x i64] }, ptr %t1250, i32 0, i32 1
  %t1253 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t1252, i32 0, i32 0
  %t1254 = load %"compiler/source:Span", ptr %t1253
  store %"compiler/source:Span" %t1254, ptr %l49
  %t1256 = load ptr, ptr %l1, !tbaa !29
  %t1258 = getelementptr { i64, [3 x i64] }, ptr %t1256, i32 0, i32 1
  %t1259 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t1258, i32 0, i32 1
  %t1260 = load ptr, ptr %t1259
  store ptr %t1260, ptr %l50, !tbaa !29
  %t1262 = load ptr, ptr %l1, !tbaa !29
  %t1264 = getelementptr { i64, [3 x i64] }, ptr %t1262, i32 0, i32 1
  %t1265 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t1264, i32 0, i32 2
  %t1266 = load ptr, ptr %t1265
  store ptr %t1266, ptr %l51, !tbaa !29
  br label %bb253
bb252:
  br label %bb255
bb253:
  %t1268 = load ptr, ptr %l0, !tbaa !29
  %t1269 = load %"compiler/source:Span", ptr %l49
  %t1270 = load ptr, ptr %l50, !tbaa !29
  %t1271 = load ptr, ptr %l51, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eassert(ptr %v0, ptr %v1, ptr %v1, ptr %t1268, %"compiler/source:Span" %t1269, ptr %t1270, ptr %t1271)
  br label %bb254
bb254:
  br label %bb310
bb255:
  %t1276 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1276, ptr %l609, !tbaa !29
  store i1 false, ptr %l610, !tbaa !21
  %t1277 = load ptr, ptr %l609, !tbaa !29
  %t1278 = icmp ne ptr %t1277, null
  br i1 %t1278, label %bb256, label %bb257
bb256:
  %t1280 = load ptr, ptr %l609, !tbaa !29
  %t1281 = load i64, ptr %t1280, !range !{i64 0, i64 17}
  %t1283 = icmp eq i64 %t1281, 11
  store i1 %t1283, ptr %l610, !tbaa !21
  br label %bb257
bb257:
  %t1284 = load i1, ptr %l610, !tbaa !21
  br i1 %t1284, label %bb258, label %bb259
bb258:
  %t1285 = load ptr, ptr %l1, !tbaa !29
  %t1287 = getelementptr { i64, [3 x i64] }, ptr %t1285, i32 0, i32 1
  %t1288 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1287, i32 0, i32 1
  %t1289 = load ptr, ptr %t1288
  store ptr %t1289, ptr %l52, !tbaa !29
  br label %bb260
bb259:
  br label %bb262
bb260:
  %t1291 = load ptr, ptr %l0, !tbaa !29
  %t1292 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %t1291, ptr %t1292)
  br label %bb261
bb261:
  br label %bb310
bb262:
  %t1295 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1295, ptr %l617, !tbaa !29
  store i1 false, ptr %l618, !tbaa !21
  %t1296 = load ptr, ptr %l617, !tbaa !29
  %t1297 = icmp ne ptr %t1296, null
  br i1 %t1297, label %bb263, label %bb264
bb263:
  %t1299 = load ptr, ptr %l617, !tbaa !29
  %t1300 = load i64, ptr %t1299, !range !{i64 0, i64 17}
  %t1302 = icmp eq i64 %t1300, 12
  store i1 %t1302, ptr %l618, !tbaa !21
  br label %bb264
bb264:
  %t1303 = load i1, ptr %l618, !tbaa !21
  br i1 %t1303, label %bb265, label %bb266
bb265:
  %t1304 = load ptr, ptr %l1, !tbaa !29
  %t1306 = getelementptr { i64, [3 x i64] }, ptr %t1304, i32 0, i32 1
  %t1307 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1306, i32 0, i32 0
  %t1308 = load %"compiler/source:Span", ptr %t1307
  store %"compiler/source:Span" %t1308, ptr %l53
  %t1310 = load ptr, ptr %l1, !tbaa !29
  %t1312 = getelementptr { i64, [3 x i64] }, ptr %t1310, i32 0, i32 1
  %t1313 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1312, i32 0, i32 1
  %t1314 = load ptr, ptr %t1313
  store ptr %t1314, ptr %l54, !tbaa !29
  br label %bb267
bb266:
  br label %bb288
bb267:
  store %olang.scope zeroinitializer, ptr %s34
  %t1316 = load ptr, ptr %l0, !tbaa !29
  %t1318 = getelementptr %"compiler/lower:lowering", ptr %t1316, i32 0, i32 15
  %t1319 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ePush_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %t1318, ptr %t1319)
  br label %bb268
bb268:
  %t1322 = load ptr, ptr %l0, !tbaa !29
  %t1324 = getelementptr %"compiler/lower:lowering", ptr %t1322, i32 0, i32 16
  store ptr %t1324, ptr %l629, !tbaa !29
  %t1325 = load ptr, ptr %l0, !tbaa !29
  %t1327 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %s34, ptr %t1325)
  store ptr %t1327, ptr %l631
  br label %bb269
bb269:
  %t1328 = load ptr, ptr %l631, !tbaa !29
  %t1330 = getelementptr %"compiler/lower:level", ptr %t1328, i32 0, i32 0
  %t1331 = load i32, ptr %t1330, !tbaa !23
  %t1332 = load ptr, ptr %l629, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t1332, i32 %t1331)
  br label %bb270
bb270:
  %t1334 = load ptr, ptr %l0, !tbaa !29
  %t1336 = getelementptr %"compiler/lower:lowering", ptr %t1334, i32 0, i32 0
  %t1337 = load ptr, ptr %t1336, !tbaa !29
  %t1339 = getelementptr %"compiler/lower:Lowerer", ptr %t1337, i32 0, i32 8
  %t1340 = load i1, ptr %t1339, !tbaa !21
  br i1 %t1340, label %bb271, label %bb272
bb271:
  %t1342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1342, ptr %l638, !tbaa !29
  %t1343 = load ptr, ptr %l0, !tbaa !29
  %t1345 = getelementptr %"compiler/lower:lowering", ptr %t1343, i32 0, i32 15
  %t1347 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t1345)
  store i64 %t1347, ptr %l641
  br label %bb273
bb272:
  store i1 false, ptr %l637, !tbaa !21
  br label %bb275
bb273:
  %t1348 = load i64, ptr %l641, !tbaa !24
  %t1349 = sub i64 %t1348, 1
  %t1350 = load ptr, ptr %l638, !tbaa !29
  %t1352 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eonError(ptr %v0, ptr %t1350, i64 %t1349)
  store i1 %t1352, ptr %l643
  br label %bb274
bb274:
  %t1353 = load i1, ptr %l643, !tbaa !21
  %t1354 = xor i1 %t1353, true
  store i1 %t1354, ptr %l637, !tbaa !21
  br label %bb275
bb275:
  %t1356 = load i1, ptr %l637, !tbaa !21
  br i1 %t1356, label %bb276, label %bb277
bb276:
  %t1357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1357, ptr %l645, !tbaa !29
  %t1358 = load %"compiler/source:Span", ptr %l53
  store %"compiler/source:Span" %t1358, ptr %l646
  %t1359 = load ptr, ptr %l0, !tbaa !29
  %t1361 = getelementptr %"compiler/lower:lowering", ptr %t1359, i32 0, i32 15
  %t1363 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t1361)
  store i64 %t1363, ptr %l649
  br label %bb278
bb277:
  br label %bb280
bb278:
  %t1364 = load i64, ptr %l649, !tbaa !24
  %t1365 = sub i64 %t1364, 1
  %t1366 = load ptr, ptr %l645, !tbaa !29
  %t1367 = load %"compiler/source:Span", ptr %l646
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecleanup(ptr %v0, ptr %t1366, %"compiler/source:Span" %t1367, i64 %t1365)
  br label %bb279
bb279:
  br label %bb280
bb280:
  %t1369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1369, ptr %l651, !tbaa !29
  %t1370 = load ptr, ptr %l0, !tbaa !29
  %t1372 = getelementptr %"compiler/lower:lowering", ptr %t1370, i32 0, i32 15
  %t1374 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %t1372)
  store i64 %t1374, ptr %l654
  br label %bb281
bb281:
  %t1375 = load i64, ptr %l654, !tbaa !24
  %t1376 = sub i64 %t1375, 1
  %t1377 = load ptr, ptr %l651, !tbaa !29
  %t1379 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %t1377, i64 %t1376)
  store i1 %t1379, ptr %l656
  br label %bb282
bb282:
  %t1380 = load i1, ptr %l656, !tbaa !21
  br i1 %t1380, label %bb283, label %bb284
bb283:
  %t1381 = load ptr, ptr %l0, !tbaa !29
  %t1382 = load %"compiler/source:Span", ptr %l53
  %t1383 = load ptr, ptr %l54, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardHolder(ptr %v0, ptr %v1, ptr %t1381, %"compiler/source:Span" %t1382, ptr %t1383)
  br label %bb285
bb284:
  br label %bb287
bb285:
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1388 = load %"compiler/source:Span", ptr %l53
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardAgain(ptr %v0, ptr %t1387, %"compiler/source:Span" %t1388)
  br label %bb286
bb286:
  br label %bb287
bb287:
  call void @__olang_scope_close(ptr %s34)
  br label %bb310
bb288:
  %t1391 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1391, ptr %l662, !tbaa !29
  store i1 false, ptr %l663, !tbaa !21
  %t1392 = load ptr, ptr %l662, !tbaa !29
  %t1393 = icmp ne ptr %t1392, null
  br i1 %t1393, label %bb289, label %bb290
bb289:
  %t1395 = load ptr, ptr %l662, !tbaa !29
  %t1396 = load i64, ptr %t1395, !range !{i64 0, i64 17}
  %t1398 = icmp eq i64 %t1396, 13
  store i1 %t1398, ptr %l663, !tbaa !21
  br label %bb290
bb290:
  %t1399 = load i1, ptr %l663, !tbaa !21
  br i1 %t1399, label %bb291, label %bb292
bb291:
  %t1400 = load ptr, ptr %l1, !tbaa !29
  %t1402 = getelementptr { i64, [3 x i64] }, ptr %t1400, i32 0, i32 1
  %t1403 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1402, i32 0, i32 0
  %t1404 = load %"compiler/source:Span", ptr %t1403
  store %"compiler/source:Span" %t1404, ptr %l55
  %t1406 = load ptr, ptr %l1, !tbaa !29
  %t1408 = getelementptr { i64, [3 x i64] }, ptr %t1406, i32 0, i32 1
  %t1409 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1408, i32 0, i32 1
  %t1410 = load ptr, ptr %t1409
  store ptr %t1410, ptr %l56, !tbaa !29
  br label %bb293
bb292:
  br label %bb295
bb293:
  %t1412 = load ptr, ptr %l0, !tbaa !29
  %t1413 = load %"compiler/source:Span", ptr %l55
  %t1414 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoin(ptr %v0, ptr %v1, ptr %t1412, %"compiler/source:Span" %t1413, ptr %t1414)
  br label %bb294
bb294:
  br label %bb310
bb295:
  %t1418 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1418, ptr %l673, !tbaa !29
  store i1 false, ptr %l674, !tbaa !21
  %t1419 = load ptr, ptr %l673, !tbaa !29
  %t1420 = icmp ne ptr %t1419, null
  br i1 %t1420, label %bb296, label %bb297
bb296:
  %t1422 = load ptr, ptr %l673, !tbaa !29
  %t1423 = load i64, ptr %t1422, !range !{i64 0, i64 17}
  %t1425 = icmp eq i64 %t1423, 14
  store i1 %t1425, ptr %l674, !tbaa !21
  br label %bb297
bb297:
  %t1426 = load i1, ptr %l674, !tbaa !21
  br i1 %t1426, label %bb298, label %bb299
bb298:
  %t1427 = load ptr, ptr %l1, !tbaa !29
  %t1429 = getelementptr { i64, [3 x i64] }, ptr %t1427, i32 0, i32 1
  %t1430 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1429, i32 0, i32 0
  %t1431 = load %"compiler/source:Span", ptr %t1430
  store %"compiler/source:Span" %t1431, ptr %l57
  %t1433 = load ptr, ptr %l1, !tbaa !29
  %t1435 = getelementptr { i64, [3 x i64] }, ptr %t1433, i32 0, i32 1
  %t1436 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1435, i32 0, i32 1
  %t1437 = load ptr, ptr %t1436
  store ptr %t1437, ptr %l58, !tbaa !29
  br label %bb300
bb299:
  br label %bb302
bb300:
  %t1439 = load ptr, ptr %l0, !tbaa !29
  %t1440 = load %"compiler/source:Span", ptr %l57
  %t1441 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2espawn(ptr %v0, ptr %v1, ptr %t1439, %"compiler/source:Span" %t1440, ptr %t1441)
  br label %bb301
bb301:
  br label %bb310
bb302:
  %t1445 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1445, ptr %l684, !tbaa !29
  store i1 false, ptr %l685, !tbaa !21
  %t1446 = load ptr, ptr %l684, !tbaa !29
  %t1447 = icmp ne ptr %t1446, null
  br i1 %t1447, label %bb303, label %bb304
bb303:
  %t1449 = load ptr, ptr %l684, !tbaa !29
  %t1450 = load i64, ptr %t1449, !range !{i64 0, i64 17}
  %t1452 = icmp eq i64 %t1450, 15
  store i1 %t1452, ptr %l685, !tbaa !21
  br label %bb304
bb304:
  %t1453 = load i1, ptr %l685, !tbaa !21
  br i1 %t1453, label %bb305, label %bb306
bb305:
  %t1454 = load ptr, ptr %l1, !tbaa !29
  %t1456 = getelementptr { i64, [3 x i64] }, ptr %t1454, i32 0, i32 1
  %t1457 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1456, i32 0, i32 0
  %t1458 = load %"compiler/source:Span", ptr %t1457
  store %"compiler/source:Span" %t1458, ptr %l59
  %t1460 = load ptr, ptr %l1, !tbaa !29
  %t1462 = getelementptr { i64, [3 x i64] }, ptr %t1460, i32 0, i32 1
  %t1463 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1462, i32 0, i32 1
  %t1464 = load ptr, ptr %t1463
  store ptr %t1464, ptr %l60, !tbaa !29
  br label %bb307
bb306:
  br label %bb309
bb307:
  %t1466 = load ptr, ptr %l0, !tbaa !29
  %t1467 = load %"compiler/source:Span", ptr %l59
  %t1468 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eyield(ptr %v0, ptr %v1, ptr %t1466, %"compiler/source:Span" %t1467, ptr %t1468)
  br label %bb308
bb308:
  br label %bb310
bb309:
  call void @__olang_check_failed(ptr @olang_loc_b83add748747331b_82d065ad3b2d6ef)
  unreachable
bb310:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2flower_2ecompiler_2flower_3alowering_2estorageBlock(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [2 x i64] }
  %l9 = alloca { i64, [2 x i64] }
  %l11 = alloca { i64, ptr }
  %l23 = alloca %"compiler/typed:Local"
  %rv = alloca i32
  %t25 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 30
  %t5 = getelementptr %"compiler/typed:Plan", ptr %t4, i32 0, i32 1
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t11 = icmp slt i64 %t1, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 30
  %t16 = getelementptr %"compiler/typed:Plan", ptr %t15, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l11, !tbaa !27
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i64 %t18
  %t23 = load { i64, [2 x i64] }, ptr %t22
  store { i64, [2 x i64] } %t23, ptr %l9
  br label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t25
  store { i64, [2 x i64] } %t27, ptr %l9
  br label %bb3
bb3:
  %t29 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t29, ptr %l2
  %t30 = load { i64, [2 x i64] }, ptr %l2
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 1
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t36 = getelementptr { i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/lower:lowering", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Body", ptr %t44, i32 0, i32 7
  %t47 = load i64, ptr %l1, !tbaa !24
  %t50 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t46, i64 %t47)
  store %"compiler/typed:Local" %t50, ptr %l23
  br label %bb7
bb7:
  %t51 = getelementptr %"compiler/typed:Local", ptr %l23, i32 0, i32 3
  %t52 = load i32, ptr %t51, !tbaa !23
  store i32 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i1
  %l17 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lower:lowering", ptr %a0, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 19 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  %t27 = load i32, ptr %l17, !tbaa !23
  %t28 = icmp eq i32 %t27, 0
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l14, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueTargets(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Spawn", ptr %a1, i32 0, i32 0
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
  br label %bb14
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
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  store ptr %a0, ptr %l21, !tbaa !29
  %t33 = load ptr, ptr %l5, !tbaa !29
  %t35 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t33)
  store i32 %t35, ptr %l23
  br label %bb7
bb6:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb7:
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = load i32, ptr %l23, !tbaa !23
  %t38 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t38, ptr %l24
  br label %bb8
bb8:
  %t39 = load i1, ptr %l24, !tbaa !21
  store i1 %t39, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l20, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l3, !tbaa !24
  br label %bb1
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, { i64, [1 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i64
  %l36 = alloca i32
  %l38 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l45 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i32
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca %"compiler/source:Span"
  %l58 = alloca %"compiler/mir:Lvalue"
  %l70 = alloca i64
  %l73 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca i32
  %l99 = alloca { i64, ptr }
  %l100 = alloca %"compiler/mir:Lvalue"
  %l104 = alloca { i64, [4 x i64] }
  %l111 = alloca { i64, [4 x i64] }
  %l112 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l120 = alloca { i64, ptr }
  %l121 = alloca %"compiler/mir:Lvalue"
  %l129 = alloca %"compiler/mir:Lvalue"
  %l131 = alloca ptr
  %l132 = alloca %"compiler/source:Span"
  %l134 = alloca %"compiler/mir:Lvalue"
  %l142 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l145 = alloca %"compiler/mir:Lvalue"
  %l147 = alloca %"compiler/mir:Lvalue"
  %l152 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, [4 x i64] }
  %t23 = alloca { i64, [4 x i64] }, align 8
  %t88 = alloca { i64, [4 x i64] }, align 8
  %t91 = alloca { i64, [15 x i64] }, align 8
  %t103 = alloca { i64, [21 x i64] }, align 8
  %t171 = alloca { i64, [2 x i64] }, align 8
  %t178 = alloca { i64, [1 x i64] }, align 8
  %t196 = alloca { i64, [4 x i64] }, align 8
  %t202 = alloca { i64, [15 x i64] }, align 8
  %t235 = alloca { i64, [2 x i64] }, align 8
  %t242 = alloca { i64, [1 x i64] }, align 8
  %t261 = alloca { i64, [15 x i64] }, align 8
  %t267 = alloca { i64, [21 x i64] }, align 8
  %t288 = alloca { i64, [4 x i64] }, align 8
  %t303 = alloca { i64, [4 x i64] }, align 8
  %t306 = alloca { i64, [15 x i64] }, align 8
  %t318 = alloca { i64, [21 x i64] }, align 8
  %t341 = alloca { i64, [21 x i64] }, align 8
  %t360 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  store { i64, [1 x i64] } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  %t4 = load %"compiler/source:Span", ptr %l4
  %t9 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %t1, { i64, [4 x i64] } %a1, i32 %t3, %"compiler/source:Span" %t4)
  store i32 %t9, ptr %l24
  br label %bb1
bb1:
  %t10 = load i32, ptr %l24, !tbaa !23
  store i32 %t10, ptr %l6, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l25, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l28
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l25, !tbaa !29
  %t18 = load i32, ptr %l28, !tbaa !23
  %t19 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t19, ptr %l29
  br label %bb3
bb3:
  %t20 = load i64, ptr %l29, !tbaa !24
  store i64 %t20, ptr %l7, !tbaa !24
  %t21 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t22 = load i64, ptr %l7, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 0
  store i64 2, ptr %t24
  %t26 = insertvalue { i32, i64 } undef, i32 %t21, 0
  %t28 = insertvalue { i32, i64 } %t26, i64 %t22, 1
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 1
  store { i32, i64 } %t28, ptr %t29
  %t30 = load { i64, [4 x i64] }, ptr %t23
  store { i64, [4 x i64] } %t30, ptr %l8
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t34 = load %"compiler/source:Span", ptr %l4
  %t38 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %t32, i32 %t33, %"compiler/source:Span" %t34)
  store i32 %t38, ptr %l36
  br label %bb4
bb4:
  %t39 = load i32, ptr %l36, !tbaa !23
  store i32 %t39, ptr %l9, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/lower:lowering", ptr %t40, i32 0, i32 2
  %t43 = load ptr, ptr %t42, !tbaa !29
  store ptr %t43, ptr %l38, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/lower:lowering", ptr %t44, i32 0, i32 2
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l42
  br label %bb5
bb5:
  %t52 = load ptr, ptr %l38, !tbaa !29
  %t53 = load i32, ptr %l42, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l43
  br label %bb6
bb6:
  %t55 = load i32, ptr %l43, !tbaa !23
  store i32 %t55, ptr %l10, !tbaa !23
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/lower:lowering", ptr %t56, i32 0, i32 2
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l45, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lower:lowering", ptr %t60, i32 0, i32 2
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l49
  br label %bb7
bb7:
  %t68 = load ptr, ptr %l45, !tbaa !29
  %t69 = load i32, ptr %l49, !tbaa !23
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t70, ptr %l50
  br label %bb8
bb8:
  %t71 = load i32, ptr %l50, !tbaa !23
  store i32 %t71, ptr %l11, !tbaa !23
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l10, !tbaa !23
  %t74 = load i32, ptr %l11, !tbaa !23
  %t78 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elaidApart(ptr %v0, ptr %t72, i32 %t73, i32 %t74)
  store i1 %t78, ptr %l54
  br label %bb9
bb9:
  %t79 = load i1, ptr %l54, !tbaa !21
  br i1 %t79, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l55, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t81, ptr %l56
  %t82 = load i32, ptr %l9, !tbaa !23
  %t84 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t82)
  store %"compiler/mir:Lvalue" %t84, ptr %l58
  br label %bb12
bb11:
  br label %bb32
bb12:
  %t85 = load { i64, [1 x i64] }, ptr %l5
  %t86 = load i32, ptr %l3, !tbaa !23
  %t87 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 0, ptr %t89
  %t90 = load { i64, [4 x i64] }, ptr %t88
  store { i64, [15 x i64] } zeroinitializer, ptr %t91
  %t92 = getelementptr { i64, [15 x i64] }, ptr %t91, i32 0, i32 0
  store i64 8, ptr %t92
  %t94 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t85, 0
  %t96 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t94, i32 %t86, 1
  %t98 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t96, { i64, [4 x i64] } %t87, 2
  %t100 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t98, { i64, [4 x i64] } %t90, 3
  %t101 = getelementptr { i64, [15 x i64] }, ptr %t91, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t100, ptr %t101
  %t102 = load { i64, [15 x i64] }, ptr %t91
  store { i64, [21 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [21 x i64] }, ptr %t103, i32 0, i32 0
  store i64 0, ptr %t104
  %t105 = load %"compiler/source:Span", ptr %l56
  %t106 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t105, 0
  %t107 = load %"compiler/mir:Lvalue", ptr %l58
  %t108 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t106, %"compiler/mir:Lvalue" %t107, 1
  %t110 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t108, { i64, [15 x i64] } %t102, 2
  %t111 = getelementptr { i64, [21 x i64] }, ptr %t103, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t110, ptr %t111
  %t112 = load { i64, [21 x i64] }, ptr %t103
  %t114 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 176, i64 8)
  store { i64, [21 x i64] } %t112, ptr %t114
  %t115 = load ptr, ptr %l55, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s1, ptr %t115, ptr %t114)
  br label %bb13
bb13:
  store i64 0, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l7, !tbaa !24
  store i64 %t117, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t119 = load i64, ptr %l13, !tbaa !24
  %t120 = load i64, ptr %l12, !tbaa !24
  %t123 = icmp sgt i64 %t119, %t120
  br i1 %t123, label %bb14, label %bb15
bb14:
  %t125 = load i64, ptr %l14, !tbaa !24
  %t127 = icmp sgt i64 %t125, 0
  br i1 %t127, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb19
bb16:
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l12, !tbaa !24
  %t133 = sub i64 %t129, %t130
  %t134 = load i64, ptr %l14, !tbaa !24
  %t137 = add i64 %t133, %t134
  %t139 = sub i64 %t137, 1
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = sdiv i64 %t139, %t140
  store i64 %t143, ptr %l73, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb18
bb18:
  %t145 = load i64, ptr %l73, !tbaa !24
  store i64 %t145, ptr %l70, !tbaa !24
  br label %bb19
bb19:
  %t146 = load i64, ptr %l70, !tbaa !24
  store i64 %t146, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t147 = load i64, ptr %l16, !tbaa !24
  %t148 = load i64, ptr %l15, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb22:
  br label %bb23
bb23:
  %t155 = load i64, ptr %l12, !tbaa !24
  %t156 = load i64, ptr %l16, !tbaa !24
  %t157 = load i64, ptr %l14, !tbaa !24
  %t160 = mul i64 %t156, %t157
  %t163 = add i64 %t155, %t160
  store i64 %t163, ptr %l17, !tbaa !24
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l91, !tbaa !29
  %t166 = load i32, ptr %l10, !tbaa !23
  store i32 %t166, ptr %l92, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/lower:lowering", ptr %t167, i32 0, i32 3
  %t170 = load i32, ptr %l6, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t171
  %t172 = getelementptr { i64, [2 x i64] }, ptr %t171, i32 0, i32 0
  store i64 1, ptr %t172
  %t174 = insertvalue { i32 } undef, i32 %t170, 0
  %t175 = getelementptr { i64, [2 x i64] }, ptr %t171, i32 0, i32 1
  store { i32 } %t174, ptr %t175
  %t176 = load { i64, [2 x i64] }, ptr %t171
  %t177 = load i64, ptr %l17, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [1 x i64] }, ptr %t178, i32 0, i32 0
  store i64 2, ptr %t179
  %t181 = insertvalue { i64 } undef, i64 %t177, 0
  %t182 = getelementptr { i64, [1 x i64] }, ptr %t178, i32 0, i32 1
  store { i64 } %t181, ptr %t182
  %t183 = load { i64, [1 x i64] }, ptr %t178
  %t184 = mul i64 1, 16
  %t185 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t184)
  %t186 = insertvalue { i64, ptr } undef, i64 1, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  store { i64, ptr } %t187, ptr %l99, !tbaa !27
  %t189 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr { i64, [1 x i64] }, ptr %t190, i64 0
  store { i64, [1 x i64] } %t183, ptr %t191
  %t194 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t195 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s3, ptr %t169, { i64, [2 x i64] } %t176, { i64, ptr } %t194)
  store %"compiler/mir:Lvalue" %t195, ptr %l100
  br label %bb24
bb24:
  store { i64, [4 x i64] } zeroinitializer, ptr %t196
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 0
  store i64 1, ptr %t197
  %t198 = load %"compiler/mir:Lvalue", ptr %l100
  %t199 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t198, 0
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t196, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t199, ptr %t200
  %t201 = load { i64, [4 x i64] }, ptr %t196
  store { i64, [15 x i64] } zeroinitializer, ptr %t202
  %t203 = getelementptr { i64, [15 x i64] }, ptr %t202, i32 0, i32 0
  store i64 0, ptr %t203
  %t205 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t201, 0
  %t206 = getelementptr { i64, [15 x i64] }, ptr %t202, i32 0, i32 1
  store { { i64, [4 x i64] } } %t205, ptr %t206
  %t207 = load { i64, [15 x i64] }, ptr %t202
  %t208 = load %"compiler/source:Span", ptr %l4
  %t209 = load ptr, ptr %l91, !tbaa !29
  %t210 = load i32, ptr %l92, !tbaa !23
  %t213 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einto(ptr %v0, ptr %t209, i32 %t210, { i64, [15 x i64] } %t207, %"compiler/source:Span" %t208)
  store { i64, [4 x i64] } %t213, ptr %l104
  br label %bb25
bb25:
  %t214 = load { i64, [4 x i64] }, ptr %l104
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i32, ptr %l10, !tbaa !23
  %t218 = load i32, ptr %l11, !tbaa !23
  %t219 = load %"compiler/source:Span", ptr %l4
  %t220 = load { i64, [1 x i64] }, ptr %l5
  %t227 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewiden(ptr %v0, ptr %t215, { i64, [4 x i64] } %t214, i32 %t217, i32 %t218, %"compiler/source:Span" %t219, { i64, [1 x i64] } %t220)
  store { i64, [4 x i64] } %t227, ptr %l111
  br label %bb26
bb26:
  %t228 = load { i64, [4 x i64] }, ptr %l111
  store { i64, [4 x i64] } %t228, ptr %l19
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l112, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t230, ptr %l113
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/lower:lowering", ptr %t231, i32 0, i32 3
  %t234 = load i32, ptr %l9, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t235
  %t236 = getelementptr { i64, [2 x i64] }, ptr %t235, i32 0, i32 0
  store i64 1, ptr %t236
  %t238 = insertvalue { i32 } undef, i32 %t234, 0
  %t239 = getelementptr { i64, [2 x i64] }, ptr %t235, i32 0, i32 1
  store { i32 } %t238, ptr %t239
  %t240 = load { i64, [2 x i64] }, ptr %t235
  %t241 = load i64, ptr %l17, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t242
  %t243 = getelementptr { i64, [1 x i64] }, ptr %t242, i32 0, i32 0
  store i64 2, ptr %t243
  %t245 = insertvalue { i64 } undef, i64 %t241, 0
  %t246 = getelementptr { i64, [1 x i64] }, ptr %t242, i32 0, i32 1
  store { i64 } %t245, ptr %t246
  %t247 = load { i64, [1 x i64] }, ptr %t242
  %t248 = mul i64 1, 16
  %t249 = call ptr @__olang_scope_alloc_zeroed(ptr %s3, i64 %t248)
  %t250 = insertvalue { i64, ptr } undef, i64 1, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l120, !tbaa !27
  %t253 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr { i64, [1 x i64] }, ptr %t254, i64 0
  store { i64, [1 x i64] } %t247, ptr %t255
  %t258 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t259 = call %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %s3, ptr %t233, { i64, [2 x i64] } %t240, { i64, ptr } %t258)
  store %"compiler/mir:Lvalue" %t259, ptr %l121
  br label %bb27
bb27:
  %t260 = load { i64, [4 x i64] }, ptr %l19
  store { i64, [15 x i64] } zeroinitializer, ptr %t261
  %t262 = getelementptr { i64, [15 x i64] }, ptr %t261, i32 0, i32 0
  store i64 0, ptr %t262
  %t264 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t260, 0
  %t265 = getelementptr { i64, [15 x i64] }, ptr %t261, i32 0, i32 1
  store { { i64, [4 x i64] } } %t264, ptr %t265
  %t266 = load { i64, [15 x i64] }, ptr %t261
  store { i64, [21 x i64] } zeroinitializer, ptr %t267
  %t268 = getelementptr { i64, [21 x i64] }, ptr %t267, i32 0, i32 0
  store i64 0, ptr %t268
  %t269 = load %"compiler/source:Span", ptr %l113
  %t270 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t269, 0
  %t271 = load %"compiler/mir:Lvalue", ptr %l121
  %t272 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t270, %"compiler/mir:Lvalue" %t271, 1
  %t274 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t272, { i64, [15 x i64] } %t266, 2
  %t275 = getelementptr { i64, [21 x i64] }, ptr %t267, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t274, ptr %t275
  %t276 = load { i64, [21 x i64] }, ptr %t267
  %t278 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 176, i64 8)
  store { i64, [21 x i64] } %t276, ptr %t278
  %t279 = load ptr, ptr %l112, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s3, ptr %t279, ptr %t278)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t281 = load i64, ptr %l16, !tbaa !24
  %t283 = add i64 %t281, 1
  store i64 %t283, ptr %l16, !tbaa !24
  br label %bb20
bb30:
  %t285 = load i32, ptr %l9, !tbaa !23
  %t287 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t285)
  store %"compiler/mir:Lvalue" %t287, ptr %l129
  br label %bb31
bb31:
  store { i64, [4 x i64] } zeroinitializer, ptr %t288
  %t289 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 0
  store i64 1, ptr %t289
  %t290 = load %"compiler/mir:Lvalue", ptr %l129
  %t291 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t290, 0
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t291, ptr %t292
  %t293 = load { i64, [4 x i64] }, ptr %t288
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t293, ptr %rv
  br label %ret
bb32:
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l131, !tbaa !29
  %t296 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t296, ptr %l132
  %t297 = load i32, ptr %l9, !tbaa !23
  %t299 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t297)
  store %"compiler/mir:Lvalue" %t299, ptr %l134
  br label %bb33
bb33:
  %t300 = load { i64, [1 x i64] }, ptr %l5
  %t301 = load i32, ptr %l3, !tbaa !23
  %t302 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [4 x i64] } zeroinitializer, ptr %t303
  %t304 = getelementptr { i64, [4 x i64] }, ptr %t303, i32 0, i32 0
  store i64 0, ptr %t304
  %t305 = load { i64, [4 x i64] }, ptr %t303
  store { i64, [15 x i64] } zeroinitializer, ptr %t306
  %t307 = getelementptr { i64, [15 x i64] }, ptr %t306, i32 0, i32 0
  store i64 8, ptr %t307
  %t309 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t300, 0
  %t311 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t309, i32 %t301, 1
  %t313 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t311, { i64, [4 x i64] } %t302, 2
  %t315 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t313, { i64, [4 x i64] } %t305, 3
  %t316 = getelementptr { i64, [15 x i64] }, ptr %t306, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t315, ptr %t316
  %t317 = load { i64, [15 x i64] }, ptr %t306
  store { i64, [21 x i64] } zeroinitializer, ptr %t318
  %t319 = getelementptr { i64, [21 x i64] }, ptr %t318, i32 0, i32 0
  store i64 0, ptr %t319
  %t320 = load %"compiler/source:Span", ptr %l132
  %t321 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t320, 0
  %t322 = load %"compiler/mir:Lvalue", ptr %l134
  %t323 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t321, %"compiler/mir:Lvalue" %t322, 1
  %t325 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t323, { i64, [15 x i64] } %t317, 2
  %t326 = getelementptr { i64, [21 x i64] }, ptr %t318, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t325, ptr %t326
  %t327 = load { i64, [21 x i64] }, ptr %t318
  %t329 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t327, ptr %t329
  %t330 = load ptr, ptr %l131, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t330, ptr %t329)
  br label %bb34
bb34:
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l142, !tbaa !29
  %t333 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t333, ptr %l143
  %t334 = load i32, ptr %l9, !tbaa !23
  %t336 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t334)
  store %"compiler/mir:Lvalue" %t336, ptr %l145
  br label %bb35
bb35:
  %t337 = load i32, ptr %l6, !tbaa !23
  %t339 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t337)
  store %"compiler/mir:Lvalue" %t339, ptr %l147
  br label %bb36
bb36:
  %t340 = load { i64, [4 x i64] }, ptr %l8
  store { i64, [21 x i64] } zeroinitializer, ptr %t341
  %t342 = getelementptr { i64, [21 x i64] }, ptr %t341, i32 0, i32 0
  store i64 9, ptr %t342
  %t343 = load %"compiler/source:Span", ptr %l143
  %t344 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t343, 0
  %t345 = load %"compiler/mir:Lvalue", ptr %l145
  %t346 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t344, %"compiler/mir:Lvalue" %t345, 1
  %t347 = load %"compiler/mir:Lvalue", ptr %l147
  %t348 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t346, %"compiler/mir:Lvalue" %t347, 2
  %t350 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t348, { i64, [4 x i64] } %t340, 3
  %t351 = getelementptr { i64, [21 x i64] }, ptr %t341, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } } %t350, ptr %t351
  %t352 = load { i64, [21 x i64] }, ptr %t341
  %t354 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t352, ptr %t354
  %t355 = load ptr, ptr %l142, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %s0, ptr %t355, ptr %t354)
  br label %bb37
bb37:
  %t357 = load i32, ptr %l9, !tbaa !23
  %t359 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t357)
  store %"compiler/mir:Lvalue" %t359, ptr %l152
  br label %bb38
bb38:
  store { i64, [4 x i64] } zeroinitializer, ptr %t360
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t360, i32 0, i32 0
  store i64 1, ptr %t361
  %t362 = load %"compiler/mir:Lvalue", ptr %l152
  %t363 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t362, 0
  %t364 = getelementptr { i64, [4 x i64] }, ptr %t360, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t363, ptr %t364
  %t365 = load { i64, [4 x i64] }, ptr %t360
  call void @__olang_scope_close(ptr %s0)
  store { i64, [4 x i64] } %t365, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidening(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l9 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i1
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l30 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t8 = trunc i64 20 to i32
  %t9 = icmp eq i32 %a1, %t8
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t15 = icmp eq i64 %t13, 1
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2evalueArray(ptr %v0, ptr %t18, i32 %a3)
  store i1 %t22, ptr %l16
  br label %bb6
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb7
bb6:
  %t23 = load i1, ptr %l16, !tbaa !21
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l4, !tbaa !29
  store ptr %t25, ptr %l18, !tbaa !29
  %t26 = load ptr, ptr %l4, !tbaa !29
  store ptr %t26, ptr %l19, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l20, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 0
  %t31 = load ptr, ptr %t30, !tbaa !39
  %t33 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t31)
  store i32 %t33, ptr %l22
  br label %bb10
bb9:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb13
bb10:
  %t34 = load ptr, ptr %l19, !tbaa !29
  %t35 = load i32, ptr %l22, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l23
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i32, ptr %l23, !tbaa !23
  %t39 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i1, ptr %l24, !tbaa !21
  %t41 = xor i1 %t40, true
  store i1 %t41, ptr %l17, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l17, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t45, ptr %l28, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 0
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t51 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t49)
  store i32 %t51, ptr %l30
  br label %bb16
bb15:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb18
bb16:
  %t52 = load ptr, ptr %l27, !tbaa !29
  %t53 = load i32, ptr %l30, !tbaa !23
  %t54 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l31
  br label %bb17
bb17:
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t56 = load i32, ptr %l31, !tbaa !23
  %t58 = icmp ne i32 %t56, %t55
  store i1 %t58, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t60 = load i1, ptr %l26, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l35, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l36, !tbaa !29
  %t63 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t63, ptr %l37, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 0
  %t67 = load ptr, ptr %t66, !tbaa !39
  %t69 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t67)
  store i32 %t69, ptr %l39
  br label %bb21
bb20:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb24
bb21:
  %t70 = load ptr, ptr %l36, !tbaa !29
  %t71 = load i32, ptr %l39, !tbaa !23
  %t72 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l40
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l35, !tbaa !29
  %t74 = load i32, ptr %l40, !tbaa !23
  %t75 = call i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %t73, i32 %t74)
  store i64 %t75, ptr %l41
  br label %bb23
bb23:
  %t76 = load i64, ptr %l41, !tbaa !24
  %t77 = icmp sge i64 %t76, 0
  store i1 %t77, ptr %l34, !tbaa !21
  br label %bb24
bb24:
  %t79 = load i1, ptr %l34, !tbaa !21
  store i1 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewindowFor(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i64
  %l32 = alloca i1
  %l33 = alloca i1
  %l36 = alloca i1
  %l40 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l54 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 47
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/lower:lowering", ptr %t5, i32 0, i32 50
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t7)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %t9, i32 %t10, i64 0)
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = getelementptr %"compiler/lower:lowering", ptr %t13, i32 0, i32 48
  store i32 %t14, ptr %t17, !tbaa !23
  store i1 true, ptr %l4, !tbaa !21
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call ptr @compiler_2flower_2ecompiler_2flower_3alowering_2emutGlobals(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l18
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l18, !tbaa !29
  store ptr %t21, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l6, !tbaa !24
  store i64 %t22, ptr %l19, !tbaa !24
  %t23 = load ptr, ptr %l5, !tbaa !29
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l21
  br label %bb6
bb6:
  %t26 = load i64, ptr %l19, !tbaa !24
  %t27 = load i64, ptr %l21, !tbaa !24
  %t28 = icmp slt i64 %t26, %t27
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb7, label %bb8
bb7:
  br label %bb20
bb8:
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t32, i64 %t33)
  store i64 %t36, ptr %l26
  br label %bb10
bb10:
  %t37 = load i64, ptr %l26, !tbaa !24
  %t40 = trunc i64 %t37 to i32
  store i32 %t40, ptr %l8, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l8, !tbaa !23
  %t47 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l32
  br label %bb11
bb11:
  %t48 = load i1, ptr %l32, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb15
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l8, !tbaa !23
  %t53 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %t49, i32 %t50, i64 0)
  store i1 %t53, ptr %l36
  br label %bb14
bb14:
  %t54 = load i1, ptr %l36, !tbaa !21
  store i1 %t54, ptr %l33, !tbaa !21
  br label %bb15
bb15:
  %t55 = load i1, ptr %l33, !tbaa !21
  br i1 %t55, label %bb16, label %bb17
bb16:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l6, !tbaa !24
  br label %bb5
bb20:
  %t60 = load i1, ptr %l4, !tbaa !21
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  %t66 = xor i1 %t64, true
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb23
bb23:
  %t68 = load i1, ptr %l40, !tbaa !21
  br i1 %t68, label %bb24, label %bb25
bb24:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t73 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietCall(ptr %v0, ptr %v1, ptr %t69, ptr %t70)
  store i1 %t73, ptr %l46
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t74 = load i1, ptr %l46, !tbaa !21
  store i1 %t74, ptr %l4, !tbaa !21
  br label %bb27
bb27:
  %t75 = load i1, ptr %l4, !tbaa !21
  br i1 %t75, label %bb28, label %bb29
bb28:
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  %t81 = xor i1 %t79, true
  store i1 %t81, ptr %l48, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb30
bb30:
  %t83 = load i1, ptr %l48, !tbaa !21
  br i1 %t83, label %bb31, label %bb32
bb31:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t88 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v2, ptr %t84, ptr %t85)
  store i1 %t88, ptr %l54
  br label %bb33
bb32:
  br label %bb34
bb33:
  %t89 = load i1, ptr %l54, !tbaa !21
  store i1 %t89, ptr %l4, !tbaa !21
  br label %bb34
bb34:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/lower:lowering", ptr %t90, i32 0, i32 47
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t92)
  br label %bb35
bb35:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lower:lowering", ptr %t94, i32 0, i32 50
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t96)
  br label %bb36
bb36:
  %t98 = load i1, ptr %l4, !tbaa !21
  store i1 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewindowQuiet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i1
  %l35 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l61 = alloca i64
  %l66 = alloca { i64, ptr }
  %l69 = alloca i32
  %l70 = alloca ptr
  %l74 = alloca i1
  %l75 = alloca i32
  %l79 = alloca i32
  %l83 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l13, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t5)
  store i64 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i64, ptr %l15, !tbaa !24
  %t9 = trunc i64 %t8 to i32
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t13 = call i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %t11, i32 %t9)
  store i64 %t13, ptr %l18
  br label %bb2
bb2:
  %t14 = load i64, ptr %l18, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sle i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t23 = and i64 %t19, %t20
  %t25 = icmp ne i64 %t23, 0
  store i1 %t25, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l21, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Call", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = sext i32 %t33 to i64
  %t38 = getelementptr %"compiler/lower:lowering", ptr %t29, i32 0, i32 49
  store i64 %t35, ptr %t38, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Call", ptr %t39, i32 0, i32 1
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t48 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t44, i64 %t45)
  store i64 %t48, ptr %l35
  br label %bb9
bb9:
  %t49 = load i64, ptr %l35, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb10, label %bb11
bb10:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb15
bb12:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l42, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb14
bb14:
  %t76 = load i64, ptr %l42, !tbaa !24
  store i64 %t76, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t77 = load i64, ptr %l39, !tbaa !24
  store i64 %t77, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb17, label %bb18
bb17:
  br label %bb34
bb18:
  br label %bb19
bb19:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l10, !tbaa !24
  %t96 = load i64, ptr %l4, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  store i64 %t97, ptr %l61, !tbaa !24
  %t98 = load i64, ptr %l61, !tbaa !24
  %t99 = load i64, ptr %l61, !tbaa !24
  %t100 = shl i64 1, %t99
  %t103 = and i64 %t96, %t100
  %t105 = icmp eq i64 %t103, 0
  br i1 %t105, label %bb20, label %bb21
bb20:
  br label %bb33
bb21:
  br label %bb22
bb22:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Call", ptr %t107, i32 0, i32 1
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l66, !tbaa !27
  %t111 = load i64, ptr %l10, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr ptr, ptr %t114, i64 %t111
  %t116 = load ptr, ptr %t115, !tbaa !39
  %t118 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t116)
  store i32 %t118, ptr %l69
  br label %bb23
bb23:
  %t119 = load i32, ptr %l69, !tbaa !23
  store i32 %t119, ptr %l11, !tbaa !23
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l70, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/lower:lowering", ptr %t121, i32 0, i32 2
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = load i32, ptr %l11, !tbaa !23
  %t128 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t124, i32 %t125)
  store i1 %t128, ptr %l74
  br label %bb24
bb24:
  %t129 = load i1, ptr %l74, !tbaa !21
  br i1 %t129, label %bb25, label %bb26
bb25:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/lower:lowering", ptr %t130, i32 0, i32 2
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t134 = load i32, ptr %l11, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l79
  br label %bb27
bb26:
  %t138 = load i32, ptr %l11, !tbaa !23
  store i32 %t138, ptr %l75, !tbaa !23
  br label %bb28
bb27:
  %t140 = load i32, ptr %l79, !tbaa !23
  store i32 %t140, ptr %l75, !tbaa !23
  br label %bb28
bb28:
  %t143 = load ptr, ptr %l70, !tbaa !29
  %t144 = load i32, ptr %l75, !tbaa !23
  %t147 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewindowFor(ptr %v0, ptr %v2, ptr %v3, ptr %t143, i32 %t144, ptr %a2, ptr %a3)
  store i1 %t147, ptr %l83
  br label %bb29
bb29:
  %t148 = load i1, ptr %l83, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb30, label %bb31
bb30:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lower:lowering", ptr %t151, i32 0, i32 49
  store i64 -1, ptr %t153, !tbaa !24
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t155 = load i64, ptr %l9, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l9, !tbaa !24
  br label %bb16
bb34:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/lower:lowering", ptr %t159, i32 0, i32 49
  store i64 -1, ptr %t161, !tbaa !24
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i1
  %l21 = alloca i64
  %l25 = alloca i1
  %l26 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i1
  %l31 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i32
  %l38 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l59 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l69 = alloca i1
  %l72 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %s6 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lower:lowering", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l4
  %t12 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t14 = trunc i64 21 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb2, label %bb3
bb2:
  br label %bb8
bb3:
  %t17 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t19 = trunc i64 25 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb4, label %bb5
bb4:
  br label %bb8
bb5:
  %t22 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t24 = trunc i64 29 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb57
bb9:
  %t27 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t29 = trunc i64 20 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb24
bb12:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t32, i32 %t33)
  store i64 %t36, ptr %l21
  br label %bb13
bb13:
  %t37 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t38 = load i64, ptr %l21, !tbaa !24
  %t40 = and i64 %t38, %t37
  %t42 = icmp ne i64 %t40, 0
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l29
  br label %bb16
bb15:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb23
bb16:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i32, ptr %l29, !tbaa !23
  %t52 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t52, ptr %l30
  br label %bb17
bb17:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb22
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l32, !tbaa !29
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l35
  br label %bb20
bb20:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = add i64 %t60, 1
  %t63 = load ptr, ptr %l32, !tbaa !29
  %t64 = load i32, ptr %l35, !tbaa !23
  %t66 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %t63, i32 %t64, i64 %t62)
  store i1 %t66, ptr %l38
  br label %bb21
bb21:
  %t67 = load i1, ptr %l38, !tbaa !21
  store i1 %t67, ptr %l31, !tbaa !21
  br label %bb22
bb22:
  %t68 = load i1, ptr %l31, !tbaa !21
  store i1 %t68, ptr %l25, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l25, !tbaa !21
  store i1 %t69, ptr %l10, !tbaa !21
  br label %bb57
bb24:
  %t70 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t72 = trunc i64 19 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l41, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t77 = load i32, ptr %l1, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l44
  br label %bb28
bb28:
  %t81 = load i64, ptr %l2, !tbaa !24
  %t83 = add i64 %t81, 1
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t85 = load i32, ptr %l44, !tbaa !23
  %t87 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %t84, i32 %t85, i64 %t83)
  store i1 %t87, ptr %l47
  br label %bb29
bb29:
  %t88 = load i1, ptr %l47, !tbaa !21
  store i1 %t88, ptr %l10, !tbaa !21
  br label %bb57
bb30:
  %t89 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t91 = trunc i64 22 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  %t94 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t96 = trunc i64 23 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l52, !tbaa !29
  %t100 = load ptr, ptr %l3, !tbaa !29
  store ptr %t100, ptr %l53, !tbaa !29
  %t101 = load ptr, ptr %l3, !tbaa !29
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l56
  br label %bb36
bb36:
  %t106 = load ptr, ptr %l53, !tbaa !29
  %t107 = load i32, ptr %l56, !tbaa !23
  %t108 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t106, i32 %t107)
  store { i64, ptr } %t108, ptr %l57
  br label %bb37
bb37:
  %t109 = load i64, ptr %l2, !tbaa !24
  %t110 = load ptr, ptr %l52, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t113 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2esomeWrites(ptr %v0, ptr %v0, ptr %t110, { i64, ptr } %t111, i64 %t109)
  store i1 %t113, ptr %l59
  br label %bb38
bb38:
  %t114 = load i1, ptr %l59, !tbaa !21
  store i1 %t114, ptr %l10, !tbaa !21
  br label %bb57
bb39:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t117 = trunc i64 24 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l62, !tbaa !29
  %t121 = load ptr, ptr %l3, !tbaa !29
  store ptr %t121, ptr %l63, !tbaa !29
  %t122 = load ptr, ptr %l3, !tbaa !29
  %t123 = load i32, ptr %l1, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l66
  br label %bb43
bb43:
  %t127 = load ptr, ptr %l63, !tbaa !29
  %t128 = load i32, ptr %l66, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t127, i32 %t128)
  store { i64, ptr } %t129, ptr %l67
  br label %bb44
bb44:
  %t130 = load i64, ptr %l2, !tbaa !24
  %t131 = load ptr, ptr %l62, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t134 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2esomeWrites(ptr %v0, ptr %v0, ptr %t131, { i64, ptr } %t132, i64 %t130)
  store i1 %t134, ptr %l69
  br label %bb45
bb45:
  %t135 = load i1, ptr %l69, !tbaa !21
  store i1 %t135, ptr %l10, !tbaa !21
  br label %bb57
bb46:
  %t136 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t138 = trunc i64 18 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb52
bb49:
  store %olang.scope zeroinitializer, ptr %s6
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l72, !tbaa !29
  %t142 = load ptr, ptr %l3, !tbaa !29
  %t143 = load i32, ptr %l1, !tbaa !23
  %t146 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s6, ptr %t142, i32 %t143)
  store { i64, ptr } %t146, ptr %l75
  br label %bb50
bb50:
  %t147 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = mul i64 %t148, 4
  %t151 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load i64, ptr %l2, !tbaa !24
  %t155 = load ptr, ptr %l72, !tbaa !29
  %t158 = call i1 @compiler_2flower_2ecompiler_2flower_3alowering_2esomeWrites(ptr %v0, ptr %s6, ptr %t155, { i64, ptr } %t153, i64 %t154)
  store i1 %t158, ptr %l78
  br label %bb51
bb51:
  %t159 = load i1, ptr %l78, !tbaa !21
  store i1 %t159, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_cacf8819caef52de_446f7e93d271847a)
  unreachable
bb57:
  %t160 = load i1, ptr %l10, !tbaa !21
  store i1 %t160, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2flower_2ederefOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %rv = alloca ptr
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
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  store ptr %t31, ptr %l10, !tbaa !29
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store ptr null, ptr %l10, !tbaa !29
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_eebb62a013643219_b45f662b48cacfad)
  unreachable
bb16:
  %t34 = load ptr, ptr %l10, !tbaa !29
  store ptr %t34, ptr %l3, !tbaa !29
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store ptr null, ptr %l3, !tbaa !29
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_18ba96ebd2acdd48_1f3e7581818ceffc)
  unreachable
bb22:
  %t35 = load ptr, ptr %l3, !tbaa !29
  store ptr %t35, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/lower:loopCtx" @compiler_2flower_3aloopCtx_2ector(ptr %v0, i32 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:loopCtx"
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l2, !tbaa !23
  store i64 %a1, ptr %l3, !tbaa !24
  %t5 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t7 = ptrtoint ptr %v0 to i64
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aloopCtx_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v0)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l10
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %t13, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l12
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aloopCtx_2e3
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l10
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr null
  %t25 = icmp eq ptr %t24, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t25)
  br label %bb5
bb5:
  %t26 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l5
  %t27 = ptrtoint ptr %v0 to i64
  store i64 %t27, ptr %l14, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aloopCtx_2e4
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = call ptr @__olang_region_make(ptr %v0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l14
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %t33, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l16
  br label %bb8
bb8:
  %t35 = load i1, ptr @olang_2esole_2ecompiler_2flower_3aloopCtx_2e4
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load i64, ptr %l14
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = icmp ne ptr %t42, null
  %t44 = select i1 %t43, ptr %t42, ptr null
  %t45 = icmp eq ptr %t44, %t38
  call void @__olang_region_settle(ptr %t38, i1 %t45)
  br label %bb10
bb10:
  %t46 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t47 = load i32, ptr %l2, !tbaa !23
  %t48 = insertvalue %"compiler/lower:loopCtx" undef, i32 %t47, 0
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = insertvalue %"compiler/lower:loopCtx" %t48, i64 %t49, 1
  %t51 = load i32, ptr %l4, !tbaa !23
  %t52 = insertvalue %"compiler/lower:loopCtx" %t50, i32 %t51, 2
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t54 = insertvalue %"compiler/lower:loopCtx" %t52, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, 3
  %t56 = insertvalue %"compiler/lower:loopCtx" %t54, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, 4
  store %"compiler/lower:loopCtx" %t56, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:loopCtx", ptr %rv
  ret %"compiler/lower:loopCtx" %rr
}

define dso_local %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %v0, { i64, [2 x i64] } %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:pl"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [2 x i64] } %a0, ptr %l1
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t5 = load { i64, [2 x i64] }, ptr %l1
  %t6 = insertvalue %"compiler/lower:pl" undef, { i64, [2 x i64] } %t5, 0
  %t8 = insertvalue %"compiler/lower:pl" %t6, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, 1
  %t10 = insertvalue %"compiler/lower:pl" %t8, i64 -1, 2
  %t12 = insertvalue %"compiler/lower:pl" %t10, i32 0, 3
  store %"compiler/lower:pl" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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

define linkonce_odr %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:pl"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:pl"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:pl", ptr %a0
  store %"compiler/lower:pl" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
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
define internal void @olang_lambda_0(ptr %env, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, [4 x i64] }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/lower:pl"
  %l13 = alloca %"compiler/lower:pl"
  %l16 = alloca %"compiler/lower:pl"
  %l18 = alloca %"compiler/lower:pl"
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l29 = alloca %"compiler/lower:pl"
  %l32 = alloca %"compiler/lower:pl"
  %l33 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %t8 = alloca { i64, [1 x i64] }, align 8
  %t18 = alloca { i64, [1 x i64] }, align 8
  %t40 = alloca { i64, [2 x i64] }, align 8
  %t49 = alloca { i64, [1 x i64] }, align 8
  %t63 = alloca { i64, [15 x i64] }, align 8
  %t69 = alloca { i64, [21 x i64] }, align 8
  store i32 %a0, ptr %l0
  %cp0 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/lower:pl", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load i32, ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load { i64, [1 x i64] }, ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load %"compiler/source:Span", ptr %cp4, !tbaa !28
  store %"compiler/source:Span" %cv4, ptr %l5
  %cp5 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 5
  %cv5 = load i32, ptr %cp5, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/lower:pl", i32, { i64, [1 x i64] }, %"compiler/source:Span", i32, ptr, ptr }, ptr %env, i32 0, i32 7
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2, ptr %l9, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l10, !tbaa !29
  store %"compiler/lower:pl" %cv1, ptr %l11
  %t6 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l11)
  store %"compiler/lower:pl" %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [1 x i64] }, ptr %t8, i32 0, i32 0
  store i64 1, ptr %t9
  %t11 = insertvalue { i32 } undef, i32 %t7, 0
  %t12 = getelementptr { i64, [1 x i64] }, ptr %t8, i32 0, i32 1
  store { i32 } %t11, ptr %t12
  %t13 = load { i64, [1 x i64] }, ptr %t8
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t15 = load %"compiler/lower:pl", ptr %l13
  %t17 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t14, %"compiler/lower:pl" %t15, { i64, [1 x i64] } %t13)
  store %"compiler/lower:pl" %t17, ptr %l16
  br label %bb2
bb2:
  store { i64, [1 x i64] } zeroinitializer, ptr %t18
  %t19 = getelementptr { i64, [1 x i64] }, ptr %t18, i32 0, i32 0
  store i64 3, ptr %t19
  %t20 = load { i64, [1 x i64] }, ptr %t18
  %t21 = load ptr, ptr %l9, !tbaa !29
  %t22 = load %"compiler/lower:pl", ptr %l16
  %t24 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t21, %"compiler/lower:pl" %t22, { i64, [1 x i64] } %t20)
  store %"compiler/lower:pl" %t24, ptr %l18
  br label %bb3
bb3:
  %t27 = load %"compiler/source:Span", ptr %l5
  %t28 = load ptr, ptr %l8, !tbaa !29
  %t29 = load %"compiler/lower:pl", ptr %l18
  %t33 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %vc0, ptr %s0, ptr %t28, %"compiler/lower:pl" %t29, i32 %cv2, { i64, [1 x i64] } %cv3, %"compiler/source:Span" %t27, i1 false, i1 false)
  store { i64, [4 x i64] } %t33, ptr %l22
  br label %bb4
bb4:
  %t34 = load { i64, [4 x i64] }, ptr %l22
  store { i64, [4 x i64] } %t34, ptr %l6
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t36, ptr %l24
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l25, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l26, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t40
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 0
  store i64 1, ptr %t41
  %t43 = insertvalue { i32 } undef, i32 %cv5, 0
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 1
  store { i32 } %t43, ptr %t44
  %t45 = load { i64, [2 x i64] }, ptr %t40
  %t47 = call %"compiler/lower:pl" @compiler_2flower_3apl_2ector(ptr %s0, { i64, [2 x i64] } %t45)
  store %"compiler/lower:pl" %t47, ptr %l29
  br label %bb5
bb5:
  %t48 = load i32, ptr %l0, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [1 x i64] }, ptr %t49, i32 0, i32 0
  store i64 1, ptr %t50
  %t52 = insertvalue { i32 } undef, i32 %t48, 0
  %t53 = getelementptr { i64, [1 x i64] }, ptr %t49, i32 0, i32 1
  store { i32 } %t52, ptr %t53
  %t54 = load { i64, [1 x i64] }, ptr %t49
  %t55 = load ptr, ptr %l26, !tbaa !29
  %t56 = load %"compiler/lower:pl", ptr %l29
  %t58 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t55, %"compiler/lower:pl" %t56, { i64, [1 x i64] } %t54)
  store %"compiler/lower:pl" %t58, ptr %l32
  br label %bb6
bb6:
  %t59 = load ptr, ptr %l25, !tbaa !29
  %t60 = load %"compiler/lower:pl", ptr %l32
  %t61 = call %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %vc0, ptr %s0, ptr %t59, %"compiler/lower:pl" %t60)
  store %"compiler/mir:Lvalue" %t61, ptr %l33
  br label %bb7
bb7:
  %t62 = load { i64, [4 x i64] }, ptr %l6
  store { i64, [15 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [15 x i64] }, ptr %t63, i32 0, i32 0
  store i64 0, ptr %t64
  %t66 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t62, 0
  %t67 = getelementptr { i64, [15 x i64] }, ptr %t63, i32 0, i32 1
  store { { i64, [4 x i64] } } %t66, ptr %t67
  %t68 = load { i64, [15 x i64] }, ptr %t63
  store { i64, [21 x i64] } zeroinitializer, ptr %t69
  %t70 = getelementptr { i64, [21 x i64] }, ptr %t69, i32 0, i32 0
  store i64 0, ptr %t70
  %t71 = load %"compiler/source:Span", ptr %l24
  %t72 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t71, 0
  %t73 = load %"compiler/mir:Lvalue", ptr %l33
  %t74 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t72, %"compiler/mir:Lvalue" %t73, 1
  %t76 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t74, { i64, [15 x i64] } %t68, 2
  %t77 = getelementptr { i64, [21 x i64] }, ptr %t69, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t76, ptr %t77
  %t78 = load { i64, [21 x i64] }, ptr %t69
  %t80 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 176, i64 8)
  store { i64, [21 x i64] } %t78, ptr %t80
  %t81 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %vc0, ptr %s0, ptr %t81, ptr %t80)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

declare void @__olang_check_failed(ptr) cold noreturn
define internal void @olang_lambda_1(ptr %env, i64 %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca %"compiler/lower:pl"
  %l25 = alloca %"compiler/lower:pl"
  %l28 = alloca %"compiler/lower:pl"
  %l31 = alloca %"compiler/lower:pl"
  %l33 = alloca i32
  %l34 = alloca { i64, [1 x i64] }
  %l35 = alloca %"compiler/source:Span"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t33 = alloca { i64, [1 x i64] }, align 8
  %t44 = alloca { i64, [1 x i64] }, align 8
  %cp0 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %cp1 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/lower:pl", ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load { i64, [1 x i64] }, ptr %cp2, !tbaa !28
  %cp3 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load %"compiler/source:Span", ptr %cp3, !tbaa !28
  %vq0 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 4
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, %"compiler/lower:pl", { i64, [1 x i64] }, %"compiler/source:Span", ptr, ptr }, ptr %env, i32 0, i32 5
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t4 = getelementptr %"compiler/lower:lowering", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %vc0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l12
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i32, ptr %l12, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %vc0, ptr %s0, ptr %t10, i32 %t11)
  store { i64, ptr } %t12, ptr %l13
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = sub i64 %t16, 1
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb5:
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l20, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l21, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l22, !tbaa !29
  store %"compiler/lower:pl" %cv1, ptr %l23
  %t31 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s2, ptr %l23)
  store %"compiler/lower:pl" %t31, ptr %l25
  br label %bb7
bb7:
  store { i64, [1 x i64] } zeroinitializer, ptr %t33
  %t34 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 0
  store i64 4, ptr %t34
  %t36 = insertvalue { i64 } undef, i64 %a0, 0
  %t37 = getelementptr { i64, [1 x i64] }, ptr %t33, i32 0, i32 1
  store { i64 } %t36, ptr %t37
  %t38 = load { i64, [1 x i64] }, ptr %t33
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load %"compiler/lower:pl", ptr %l25
  %t42 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t39, %"compiler/lower:pl" %t40, { i64, [1 x i64] } %t38)
  store %"compiler/lower:pl" %t42, ptr %l28
  br label %bb8
bb8:
  %t43 = load i64, ptr %l4, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [1 x i64] }, ptr %t44, i32 0, i32 0
  store i64 0, ptr %t45
  %t47 = insertvalue { i64 } undef, i64 %t43, 0
  %t48 = getelementptr { i64, [1 x i64] }, ptr %t44, i32 0, i32 1
  store { i64 } %t47, ptr %t48
  %t49 = load { i64, [1 x i64] }, ptr %t44
  %t50 = load ptr, ptr %l21, !tbaa !29
  %t51 = load %"compiler/lower:pl", ptr %l28
  %t53 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s2, ptr %s2, ptr %t50, %"compiler/lower:pl" %t51, { i64, [1 x i64] } %t49)
  store %"compiler/lower:pl" %t53, ptr %l31
  br label %bb9
bb9:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 %t54
  %t59 = load i32, ptr %t58, !tbaa !33
  store i32 %t59, ptr %l33, !tbaa !23
  store { i64, [1 x i64] } %cv2, ptr %l34
  store %"compiler/source:Span" %cv3, ptr %l35
  %t62 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l36
  br label %bb10
bb10:
  %t63 = load ptr, ptr %l20, !tbaa !29
  %t64 = load %"compiler/lower:pl", ptr %l31
  %t65 = load i32, ptr %l33, !tbaa !23
  %t66 = load { i64, [1 x i64] }, ptr %l34
  %t67 = load %"compiler/source:Span", ptr %l35
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %vc0, ptr %s2, ptr %s2, ptr %t63, %"compiler/lower:pl" %t64, i32 %t65, { i64, [1 x i64] } %t66, %"compiler/source:Span" %t67, i1 false, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t69 = load i64, ptr %l4, !tbaa !24
  %t71 = sub i64 %t69, 1
  store i64 %t71, ptr %l4, !tbaa !24
  br label %bb3
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define internal void @olang_lambda_2(ptr %env, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, [4 x i64] }
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca { i64, [4 x i64] }
  %l16 = alloca %"compiler/mir:Lvalue"
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, [4 x i64] }
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca %"compiler/lower:pl"
  %l30 = alloca %"compiler/lower:pl"
  %l35 = alloca i32
  %l37 = alloca %"compiler/lower:pl"
  %l38 = alloca i32
  %l39 = alloca { i64, [1 x i64] }
  %l40 = alloca %"compiler/source:Span"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %t9 = alloca { i64, [4 x i64] }, align 8
  %t71 = alloca { i64, [1 x i64] }, align 8
  %cp0 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %cp1 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, [4 x i64] }, ptr %cp1, !tbaa !28
  %cp2 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load %"compiler/source:Span", ptr %cp2, !tbaa !28
  store %"compiler/source:Span" %cv2, ptr %l3
  %cp3 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 3
  %cv3 = load %"compiler/lower:pl", ptr %cp3, !tbaa !28
  %cp4 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 4
  %cv4 = load i32, ptr %cp4, !tbaa !28
  %cp5 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 5
  %cv5 = load { i64, [1 x i64] }, ptr %cp5, !tbaa !28
  %vq0 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 6
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { ptr, { i64, [4 x i64] }, %"compiler/source:Span", %"compiler/lower:pl", i32, { i64, [1 x i64] }, ptr, ptr }, ptr %env, i32 0, i32 7
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i32 4, ptr %l9
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t2, ptr %l10, !tbaa !23
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l11, !tbaa !29
  store i32 4, ptr %l12
  %t4 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t4, ptr %l13, !tbaa !23
  store { i64, [4 x i64] } %cv1, ptr %l14
  %t8 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
  store %"compiler/mir:Lvalue" %t8, ptr %l16
  br label %bb1
bb1:
  store { i64, [4 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [4 x i64] }, ptr %t9, i32 0, i32 0
  store i64 1, ptr %t10
  %t11 = load %"compiler/mir:Lvalue", ptr %l16
  %t12 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t11, 0
  %t13 = getelementptr { i64, [4 x i64] }, ptr %t9, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t12, ptr %t13
  %t14 = load { i64, [4 x i64] }, ptr %t9
  %t15 = mul i64 2, 40
  %t16 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 2, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l18, !tbaa !27
  %t19 = load { i64, [4 x i64] }, ptr %l14
  %t20 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t21, i64 0
  store { i64, [4 x i64] } %t19, ptr %t22
  %t24 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i64 1
  store { i64, [4 x i64] } %t14, ptr %t26
  %t27 = load %"compiler/source:Span", ptr %l3
  %t28 = load ptr, ptr %l11, !tbaa !29
  %t29 = load i32, ptr %l12, !range !{i32 0, i32 52}
  %t30 = load i32, ptr %l13, !tbaa !23
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t33 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %vc0, ptr %s0, ptr %t28, i32 %t29, i32 %t30, { i64, ptr } %t31, %"compiler/source:Span" %t27)
  store { i64, [4 x i64] } %t33, ptr %l20
  br label %bb2
bb2:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %vc0, ptr %t34, i64 1)
  store { i64, [4 x i64] } %t36, ptr %l22
  br label %bb3
bb3:
  %t37 = mul i64 2, 40
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 2, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l23, !tbaa !27
  %t41 = load { i64, [4 x i64] }, ptr %l20
  %t42 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t43, i64 0
  store { i64, [4 x i64] } %t41, ptr %t44
  %t45 = load { i64, [4 x i64] }, ptr %l22
  %t46 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t47, i64 1
  store { i64, [4 x i64] } %t45, ptr %t48
  %t49 = load %"compiler/source:Span", ptr %l3
  %t50 = load ptr, ptr %l8, !tbaa !29
  %t51 = load i32, ptr %l9, !range !{i32 0, i32 52}
  %t52 = load i32, ptr %l10, !tbaa !23
  %t53 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t55 = call { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %vc0, ptr %s0, ptr %t50, i32 %t51, i32 %t52, { i64, ptr } %t53, %"compiler/source:Span" %t49)
  store { i64, [4 x i64] } %t55, ptr %l25
  br label %bb4
bb4:
  %t56 = load { i64, [4 x i64] }, ptr %l25
  store { i64, [4 x i64] } %t56, ptr %l4
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %l26, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l27, !tbaa !29
  store %"compiler/lower:pl" %cv3, ptr %l28
  %t61 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %s0, ptr %l28)
  store %"compiler/lower:pl" %t61, ptr %l30
  br label %bb5
bb5:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = load { i64, [4 x i64] }, ptr %l4
  %t64 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t65 = load %"compiler/source:Span", ptr %l3
  %t70 = call i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %vc0, ptr %t62, { i64, [4 x i64] } %t63, i32 %t64, %"compiler/source:Span" %t65)
  store i32 %t70, ptr %l35
  br label %bb6
bb6:
  store { i64, [1 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [1 x i64] }, ptr %t71, i32 0, i32 0
  store i64 1, ptr %t72
  %t73 = load i32, ptr %l35, !tbaa !23
  %t74 = insertvalue { i32 } undef, i32 %t73, 0
  %t75 = getelementptr { i64, [1 x i64] }, ptr %t71, i32 0, i32 1
  store { i32 } %t74, ptr %t75
  %t76 = load { i64, [1 x i64] }, ptr %t71
  %t77 = load ptr, ptr %l27, !tbaa !29
  %t78 = load %"compiler/lower:pl", ptr %l30
  %t80 = call %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %vc0, ptr %s0, ptr %s0, ptr %t77, %"compiler/lower:pl" %t78, { i64, [1 x i64] } %t76)
  store %"compiler/lower:pl" %t80, ptr %l37
  br label %bb7
bb7:
  store i32 %cv4, ptr %l38, !tbaa !23
  store { i64, [1 x i64] } %cv5, ptr %l39
  %t83 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t83, ptr %l40
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l41
  br label %bb8
bb8:
  %t85 = load ptr, ptr %l26, !tbaa !29
  %t86 = load %"compiler/lower:pl", ptr %l37
  %t87 = load i32, ptr %l38, !tbaa !23
  %t88 = load { i64, [1 x i64] }, ptr %l39
  %t89 = load %"compiler/source:Span", ptr %l40
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  call void @compiler_2flower_2ecompiler_2flower_3alowering_2edropAt(ptr %vc0, ptr %s0, ptr %s0, ptr %t85, %"compiler/lower:pl" %t86, i32 %t87, { i64, [1 x i64] } %t88, %"compiler/source:Span" %t89, i1 false, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_2esole_2ecompiler_2flower_3alowering_2e41 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
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

@.d3 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"a drop of no place" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d7 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a spawn outside a join" }>, align 8
@.d8 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a task that is no call" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
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

@olang_2esole_2ecompiler_2flower_3aloopCtx_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flower_3aloopCtx_2e4 = weak hidden constant i1 false
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0) #0 {
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2epreserves(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2estart(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWordName(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etextData(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eToArray_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2etypeIs(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i64 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @compiler_2flower_2ecompiler_2flower_3aLowerer_2efailure(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2edispatch(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2econstI64(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2flower_2ecopyMade(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ebuilt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H1e3bc46345ebb5614acbe688055fe55f(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eownCopyOf(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2elocal(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2ewith(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, { i64, [1 x i64] } %a2)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2flower_2ecompiler_2flower_3alowering_2emk(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eeachIndex(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3c, ptr %a3e)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eindex(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDestructs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eReadDerived(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ebodyCallee(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2eLen_H205a9438cb31641857cd9c1e93810664(ptr %v0, ptr %a0)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eDerivedN(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_837c5cf490284b9e_5e516fa0cda59852 = external constant [0 x i8]
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eplanOf(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2flower_2edropArgAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ederivedRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eNoPlace = available_externally constant <{ [32 x i8] }> <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 32
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2epartsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2ecasesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epayloads(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3, ptr %a4c, ptr %a4e)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/lower:pl" @compiler_2flower_2ecompiler_2flower_3alowering_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2easI64(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ebounds(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, { i64, [4 x i64] } %a2, i1 %a3, i32 %a4, i32 %a5, %"compiler/source:Span" %a6)
@olang_loc_ee7cb6b84b4996f0_d216e2901020b0e4 = external constant [0 x i8]
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eholdResult(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
@olang_loc_73d6eb0a01355de0_3ee3de28efd59654 = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCodeOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_c6c84cb62ff6f0bd_faa8ffb59ed683b9 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedSite(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eregionSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_Hf0fb0e232c68e27195d0770621b0035a(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eregionOf(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8eb440d9ad9184d6_9db154232c5d7f92 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eFeedCopy(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2enamedVal(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2elambda(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, i32 %a4, %"compiler/source:Span" %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eadapter(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3, i32 %a4, %"compiler/source:Span" %a5)
@olang_loc_a9ad50b63422a08e_67259be34391ceea = external constant [0 x i8]
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2estrBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_f8c813b846b58ae2_519e51a3f456354e = external constant [0 x i8]
declare i32 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ehelperTy(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3aLowerer_2eWant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisDrop(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2eDropHolding_2eDropHolds(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5dc48dc64c6b10e3_ed2bb1ae700828ff = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWordFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ewithPayload(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5)
@olang_loc_f71032533cd82c8_29b3308e7cd66624 = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6cc454f6892da6e7_dc94ff52b1800ff3 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare i64 @compiler_2flower_2ecompiler_2flower_3aLowerer_2eViewsOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftyped_2eViewOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
declare { i64, [2 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eresultScopeAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@G_2ecompiler_2ftyped_2eViewBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eanyMake(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eretire(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, %"compiler/source:Span" %a4)
@G_2ecompiler_2flower_2eWrongCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eerrPush(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eerrCaught(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eescapedHome(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2einnermost(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerivedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropHomeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2escopeRef(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2eleafPaths(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereleaseAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
@olang_loc_b3ebf7d55c86e124_fe3d33fa802e84b8 = external constant [0 x i8]
@G_2ecompiler_2flower_2eOutOfBounds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2flower_2eContract = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2econvertsApart(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efill(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, { i64, [1 x i64] } %a5)
@olang_loc_fcf54f1de4315015_3c2061767d7aa89 = external constant [0 x i8]
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2evals(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eisCaseRef(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, { i64, [4 x i64] } %a3, %"compiler/source:Span" %a4)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eprimChecks(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i32 %a5, %"compiler/source:Span" %a6)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eequalAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, %"compiler/lower:pl" %a2, i32 %a3, %"compiler/source:Span" %a4, i1 %a5)
declare { i32, { i64, [4 x i64] } } @compiler_2flower_2ecompiler_2flower_3alowering_2epromotedInPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2epromoteNew(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_23ead67d8f6e59cb_86ca0369ed971687 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_79f527557a79a277_798dff7a83c0d4db = external constant [0 x i8]
@olang_loc_2ec5e8672e3e2115_a2b323ecc8460901 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewritesCover(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesCode(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eisMain(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eviewValue(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ereadPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_ed0da5981c7956e3_375966c562f70de7 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2edepth(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:ViewWalk" @compiler_2flower_2ecompiler_2flower_3alowering_2eviewWalk(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2emarkViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
@olang_loc_6e5c9659237b1c81_709a448b752d08ed = external constant [0 x i8]
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSplitPath(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_2d3273b745a0cbd9_9e508b92650f7445 = external constant [0 x i8]
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2ewhenSole(ptr %v0, ptr %a0, i64 %a1, i1 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0)
declare %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1f89626f934b863_cae48f8c5308207f = external constant [0 x i8]
@olang_loc_bd186c5d6cd7a57b_c31a7bfdd180fca7 = external constant [0 x i8]
declare i32 @compiler_2flower_2ecompiler_2flower_3alowering_2etaskType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %v0, { i64, [2 x i64] } %a0, %"compiler/mir:Range" %a1)
@olang_loc_50381a907c443937_a4d06b271538b33b = external constant [0 x i8]
declare { { i64, [7 x i64] }, i32 } @compiler_2flower_2ecompiler_2flower_3alowering_2ecallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2eargs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [7 x i64] } %a2, i32 %a3)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_400575d530dd6291_b9c64e3b22c571dd = external constant [0 x i8]
declare %"compiler/mir:TaskClause" @compiler_2fmir_3aTaskClause_2ector(ptr %v0, %"compiler/mir:Range" %a0, i1 %a1, { i64, [4 x i64] } %a2)
@olang_loc_956aeda6c669b3b5_1d6c951e348c7771 = external constant [0 x i8]
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2etargetCopies(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare %"compiler/mir:Range" @compiler_2flower_2ecompiler_2flower_3alowering_2epassed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTask(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [7 x i64] } %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Range" %a3, { i64, ptr } %a4, { i64, ptr } %a5, %"compiler/mir:Range" %a6, %"compiler/source:Span" %a7, %"compiler/mir:Range" %a8)
@olang_loc_1fe467b856b44017_317567b0cb15d5cb = external constant [0 x i8]
@olang_loc_550f196c576c62e9_d6f4b8a7045e85d = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2esplitParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, { i64, [1 x i64] } %a5, { i64, [1 x i64] } %a6, %"compiler/source:Span" %a7)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3aLowerer_2ekeepsNoRef(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ehomeKept(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2flower_2eindexOf(ptr %v0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a0, i32 %a1)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2estorageOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efitAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ecopiesArray(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2efits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2ewidens(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i64 @compiler_2flower_2ecompiler_2flower_3alowering_2eslotLen(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eslotCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2earrayCopy(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/source:Span" %a3, { i64, [1 x i64] } %a4, i1 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ePush_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4)
declare { i32, %"compiler/lower:pl" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ePop_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epackedWrite(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, { i64, [4 x i64] } %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2ftyped_2ePartOf(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flower_2ecompiler_2flower_3alowering_2ereleases(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare { i64, [1 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2eplaceStorage(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2earrayStore(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [4 x i64] } %a2, i32 %a3, i1 %a4, %"compiler/source:Span" %a5, { i64, [1 x i64] } %a6)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eglobalHeld(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eevalStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_42786f36b4c45983_851034772d965f17 = external constant [0 x i8]
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2esuspend(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eifStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ejump(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eret(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2epushHeld(ptr %v0, ptr %a0, i32 %a1, i32 %a2, { i64, [4 x i64] } %a3, %"compiler/source:Span" %a4)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ePush_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2etop(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eonError(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecleanup(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardHolder(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eguardAgain(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ejoin(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2eyield(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_b83add748747331b_82d065ad3b2d6ef = external constant [0 x i8]
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2elaidApart(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2ecompiler_2fmir_3aFn_2ePlace(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @compiler_2flower_2ecompiler_2flower_3alowering_2ecoverAdd(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3alowering_2emutGlobals(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2eobjHits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2flower_2ecompiler_2flower_3alowering_2equietPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_cacf8819caef52de_446f7e93d271847a = external constant [0 x i8]
@olang_loc_eebb62a013643219_b45f662b48cacfad = external constant [0 x i8]
@olang_loc_18ba96ebd2acdd48_1f3e7581818ceffc = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [4 x i64] } @compiler_2flower_2ecompiler_2flower_3alowering_2ecopyAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/source:Span" %a4, i1 %a5, i1 %a6)
declare { i64, ptr } @compiler_2flower_2ecompiler_2flower_3alowering_2eitems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)

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
